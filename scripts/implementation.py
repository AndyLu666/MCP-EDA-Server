#!/usr/bin/env python3

import argparse
import os
import time


assert 'designs' in os.listdir()
BASE_DIR = os.getcwd()
os.environ['BASE_DIR'] = BASE_DIR

def parse_args():
    arg_parser = argparse.ArgumentParser()
    arg_parser.add_argument('--design', '-d', type=str, help='Name of the design to be synthesized.')
    arg_parser.add_argument('--syn-version', '-s', type=str, default='tmp',
                            help='Name of the synthesis base folder.')
    arg_parser.add_argument('--imp-version', type=str, default='tmp',
                            help='Name of the implementation result folder.')
    arg_parser.add_argument('--tech', '-t', type=str, default='FreePDK45',
                            help='Technology library to be used. (FreePDK45, SkyWater130, etc.)')
    arg_parser.add_argument('--force-override', '-f', action='store_true',
                            help='Force override existing results.')
    arg_parser.add_argument('--caution', '-c', action='store_true',
                            help='Caution mode. Will not run if the implementation dir exists.')
    arg_parser.add_argument('--restore-design', type=str, default=None,
                            help='enc file to restore design from.')
    args = arg_parser.parse_args()
    return args

def parse_top_name(config_file):
    with open(config_file, 'r') as f:
        for l in f:
            if 'TOP_NAME' in l:
                return l.split('"')[1]
    return None

def implementation(design, imp_version, syn_version, library,
                   restore_design=None, force=False, caution=False):
    design_dir = os.path.join('./designs', design)
    implementation_dir = os.path.join(design_dir, library, 'implementation')

    imp_version_dir = os.path.join(implementation_dir, imp_version)
    if os.path.isdir(imp_version_dir):
        if os.path.isfile(os.path.join(imp_version_dir, '_Finished_')) and not force:
            print(f'Implementation in {imp_version_dir} already done. Use --force to re-run.')
            return
        elif os.path.isdir(imp_version_dir) and caution:
            print(f'Implementation dir: {imp_version_dir} already exists, skipped due to caution mode.')
            return
        os.system('rm -rf {}/'.format(imp_version_dir))
    os.makedirs(imp_version_dir, exist_ok=True)

    backend_dir = os.path.join('scripts', library, 'backend')
    backend_scripts = sorted(os.listdir(backend_dir))
    backend_scripts = [os.path.join(BASE_DIR, backend_dir, s) for s in backend_scripts]

    scripts = ['../../../config.tcl',
               os.path.join(BASE_DIR, 'scripts', library, 'tech.tcl')]
    scripts += backend_scripts

    netlist_dir = '../../synthesis/{}/results'.format(syn_version)
    if restore_design is not None:
        restore_path = os.path.join(imp_version_dir, 'pnr_save', restore_design + '.enc.dat')
        restore_top = parse_top_name(os.path.join(design_dir, 'config.tcl'))
        restore_design_cmd = 'restoreDesign {} {}'.format(restore_path, restore_top)
        cmd = 'innovus -batch -execute "set NETLIST_DIR {}; {};"'.format(netlist_dir, restore_design_cmd)
        if restore_design == 'route_opt':
            scripts = ['8_save_design.tcl']
        else:
            raise NotImplementedError
        cmd += '-files "{}"'.format(netlist_dir, ' '.join(scripts))
    else:
        cmd = 'innovus -no_gui -batch -execute "set NETLIST_DIR {}" -files "{}"'.format(netlist_dir, ' '.join(scripts))

    os.system('cd {} && cp ../../../config.tcl . && {} | tee console.log && touch _Done_'.format(imp_version_dir, cmd))

def report_elapsed_time(start):
    dur = time.time() - start
    days = dur // 86400
    dur %= 86400
    hrs = dur // 3600
    dur %= 3600
    mins = dur // 60
    secs = dur % 60
    print(f'Total elapsed time: {days:.0f} days {hrs:.0f} hrs {mins:.0f} mins {secs:.1f} secs')

if __name__ == '__main__':
    start = time.time()
    args = parse_args()
    implementation(args.design, args.imp_version, args.syn_version, args.tech,
                   restore_design=args.restore_design, force=args.force_override)
    report_elapsed_time(start)