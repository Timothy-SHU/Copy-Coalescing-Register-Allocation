; ModuleID = 'globals.c'
source_filename = "globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mgvtbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.padname = type { ptr, ptr, %union.anon.0, i32, i32, i32, i32, i8, i8 }
%union.anon.0 = type { ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], ptr, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.perl_debug_pad = type { [3 x %struct.sv] }

@PL_charclass = dso_local local_unnamed_addr constant [256 x i32] [i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 9461760, i32 9461760, i32 9464832, i32 9495552, i32 1106944, i32 9495552, i32 9495552, i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 9461760, i32 1073152, i32 1073152, i32 1073152, i32 1073152, i32 1199168, i32 1065312, i32 1065312, i32 1065312, i32 1065312, i32 1065312, i32 1065312, i32 1065312, i32 1196384, i32 1196384, i32 1065312, i32 1065312, i32 1065312, i32 1196384, i32 1065312, i32 1065312, i32 152003, i32 152003, i32 152003, i32 152003, i32 152003, i32 152003, i32 152003, i32 152003, i32 152003, i32 152003, i32 1065312, i32 1065312, i32 1065312, i32 1065312, i32 1065312, i32 1065312, i32 1065312, i32 6771669, i32 4412373, i32 4412373, i32 4412373, i32 4412373, i32 6771669, i32 4408277, i32 6767573, i32 6767573, i32 6767573, i32 5194709, i32 4670421, i32 4408277, i32 4670421, i32 4408277, i32 4408277, i32 4408277, i32 4408277, i32 7291861, i32 6767573, i32 4408277, i32 4408277, i32 6767573, i32 4408277, i32 6767573, i32 4408277, i32 1065312, i32 1065312, i32 1065312, i32 1065312, i32 213345, i32 1065312, i32 6771661, i32 4412365, i32 4412365, i32 4412365, i32 4412365, i32 6771661, i32 4408269, i32 6767565, i32 6767565, i32 6767565, i32 5194701, i32 4670413, i32 4408269, i32 4670413, i32 4408269, i32 4408269, i32 4408269, i32 4408269, i32 7291853, i32 6767565, i32 4408269, i32 4408269, i32 6767565, i32 4408269, i32 6767565, i32 4408269, i32 1065312, i32 1065312, i32 1065312, i32 1065312, i32 1073152, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1090560, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1056768, i32 1182784, i32 1048928, i32 1048896, i32 1048896, i32 1048896, i32 1048896, i32 1048896, i32 1048928, i32 320, i32 1048896, i32 197581, i32 1048928, i32 1048896, i32 1048896, i32 1048896, i32 320, i32 1048896, i32 1048896, i32 320, i32 320, i32 320, i32 5178317, i32 1048928, i32 352, i32 320, i32 320, i32 197581, i32 1048928, i32 320, i32 320, i32 320, i32 1048928, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 5178325, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 1048896, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 4391893, i32 5178317, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 5178317, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 1048896, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 4391885, i32 5178317], align 16
@PL_utf8skip = dso_local local_unnamed_addr constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\07\0D", align 16
@PL_warn_uninit = dso_local local_unnamed_addr constant [33 x i8] c"Use of uninitialized value%s%s%s\00", align 16
@PL_warn_uninit_sv = dso_local local_unnamed_addr constant [34 x i8] c"Use of uninitialized value%-p%s%s\00", align 16
@PL_warn_nosemi = dso_local local_unnamed_addr constant [30 x i8] c"Semicolon seems to be missing\00", align 16
@PL_warn_reserved = dso_local local_unnamed_addr constant [57 x i8] c"Unquoted string \22%s\22 may clash with future reserved word\00", align 16
@PL_warn_nl = dso_local local_unnamed_addr constant [47 x i8] c"Unsuccessful %s on filename containing newline\00", align 16
@PL_no_wrongref = dso_local local_unnamed_addr constant [27 x i8] c"Can't use %s ref as %s ref\00", align 16
@PL_no_symref = dso_local local_unnamed_addr constant [64 x i8] c"Can't use string (\22%.32s\22) as %s ref while \22strict refs\22 in use\00", align 16
@PL_no_symref_sv = dso_local local_unnamed_addr constant [66 x i8] c"Can't use string (\22%-32p\22%s) as %s ref while \22strict refs\22 in use\00", align 16
@PL_no_usym = dso_local local_unnamed_addr constant [45 x i8] c"Can't use an undefined value as %s reference\00", align 16
@PL_no_aelem = dso_local local_unnamed_addr constant [66 x i8] c"Modification of non-creatable array value attempted, subscript %d\00", align 16
@PL_no_helem_sv = dso_local local_unnamed_addr constant [68 x i8] c"Modification of non-creatable hash value attempted, subscript \22%-p\22\00", align 16
@PL_no_modify = dso_local local_unnamed_addr constant [44 x i8] c"Modification of a read-only value attempted\00", align 16
@PL_no_mem = dso_local local_unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 16
@PL_no_security = dso_local local_unnamed_addr constant [28 x i8] c"Insecure dependency in %s%s\00", align 16
@PL_no_sock_func = dso_local local_unnamed_addr constant [40 x i8] c"Unsupported socket function \22%s\22 called\00", align 16
@PL_no_dir_func = dso_local local_unnamed_addr constant [43 x i8] c"Unsupported directory function \22%s\22 called\00", align 16
@PL_no_func = dso_local local_unnamed_addr constant [33 x i8] c"The %s function is unimplemented\00", align 16
@PL_no_myglob = dso_local local_unnamed_addr constant [34 x i8] c"\22%s\22 %se %s can't be in a package\00", align 16
@PL_no_localize_ref = dso_local local_unnamed_addr constant [35 x i8] c"Can't localize through a reference\00", align 16
@PL_memory_wrap = dso_local local_unnamed_addr constant [19 x i8] c"panic: memory wrap\00", align 16
@PL_Yes = dso_local local_unnamed_addr constant [2 x i8] c"1\00", align 1
@PL_No = dso_local local_unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_hexdigit = dso_local local_unnamed_addr constant [33 x i8] c"0123456789abcdef0123456789ABCDEF\00", align 16
@PL_sh_path = dso_local local_unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@PL_cshname = dso_local local_unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_revision = dso_local local_unnamed_addr constant i8 5, align 1
@PL_version = dso_local local_unnamed_addr constant i8 22, align 1
@PL_subversion = dso_local local_unnamed_addr constant i8 1, align 1
@PL_uuemap = dso_local local_unnamed_addr constant [65 x i8] c"`!\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\00", align 16
@PL_uudmap = dso_local local_unnamed_addr constant <{ [96 x i8], [160 x i8] }> <{ [96 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?", [160 x i8] zeroinitializer }>, align 16
@PL_bitcount = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16
@.str = private unnamed_addr constant [5 x i8] c"ZERO\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"HUP\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ILL\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"TRAP\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ABRT\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"BUS\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"FPE\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"KILL\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"USR1\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"SEGV\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"USR2\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"PIPE\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"ALRM\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@PL_sig_name = dso_local local_unnamed_addr constant [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr null], align 16
@PL_sig_num = dso_local local_unnamed_addr constant [17 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0], align 16
@PL_fold = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@PL_fold_latin1 = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\D7\F8\F9\FA\FB\FC\FD\FE\DF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\F7\D8\D9\DA\DB\DC\DD\DE\FF", align 16
@PL_latin1_lc = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\D7\F8\F9\FA\FB\FC\FD\FE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@PL_mod_latin1_uc = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\FF\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\FF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\F7\D8\D9\DA\DB\DC\DD\DE\FF", align 16
@PL_fold_locale = dso_local local_unnamed_addr global [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@PL_freq = dso_local local_unnamed_addr constant [256 x i8] c"\01\02T\97\9A\9B\9C\9D\A5\F6\FA\03\9E\07\12\1D(3>IU`kv\81\8C\93\94\95\96\98\99\FF\B6\E0\CD\AE\B0\B4\D9\E9\E8\EC\BB\EB\E4\EA\E2\DE\DB\D3\C3\BC\C1\B9\B8\BF\B7\C9\E5\B5\DC\C2\A2\A3\D0\BA\CA\C8\DA\C6\B3\B2\D6\A6\AA\CF\C7\D1\CE\CC\A0\D4\D8\D7\C0\AF\AD\F3\AC\A1\BE\CB\BD\A4\E6\A7\F8\E3\F4\F2\FF\F1\E7\F0\FD\A9\D2\F5\ED\F9\F7\EF\A8\FC\FB\FE\EE\DF\DD\D5\E1\B1\C5\AB\C4\9F\04\05\06\08\09\0A\0B\0C\0D\0E\0F\10\11\13\14\15\16\17\18\19\1A\1B\1C\1E\1F !\22#$%&')*+,-./012456789:;<=?@ABCDEFGHJKLMNOPQRSVWXYZ[\\]^_abcdefghijlmnopqrstuwxyz{|}~\7F\80\82\83\84\85\86\87\88\89\8A\8B\8D\8E\8F\90\91\92", align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"WHEN\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"GIVEN\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"LOOP_FOR\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"LOOP_PLAIN\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"LOOP_LAZYSV\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"LOOP_LAZYIV\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"FORMAT\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"EVAL\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"SUBST\00", align 1
@PL_block_type = dso_local local_unnamed_addr constant [12 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], align 16
@PL_bincompat_options = dso_local local_unnamed_addr constant [56 x i8] c" PERLIO_LAYERS USE_64_BIT_ALL USE_64_BIT_INT USE_PERLIO\00", align 16
@.str.28 = private unnamed_addr constant [10 x i8] c"CONSTRUCT\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"CHECK\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"RUN\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"DESTRUCT\00", align 1
@PL_phase_names = dso_local local_unnamed_addr constant [7 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], align 16
@.str.35 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"stub\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"pushmark\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"wantarray\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"gvsv\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"gv\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"gelem\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"padsv\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"padav\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"padhv\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"padany\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"pushre\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"rv2gv\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"rv2sv\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"av2arylen\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"rv2cv\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"anoncode\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"refgen\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"srefgen\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"bless\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"backtick\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"rcatline\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"regcmaybe\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"regcreset\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"regcomp\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"qr\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"subst\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"substcont\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"trans\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"transr\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"sassign\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"aassign\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"chop\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"schop\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"chomp\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"schomp\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"study\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"preinc\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"i_preinc\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"predec\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"i_predec\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"postinc\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"i_postinc\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"postdec\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"i_postdec\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"multiply\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"i_multiply\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"divide\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"i_divide\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"modulo\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"i_modulo\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"i_add\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"subtract\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"i_subtract\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"stringify\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"left_shift\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"right_shift\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"i_lt\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"i_gt\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"i_le\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"i_ge\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"i_eq\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"i_ne\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"ncmp\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"i_ncmp\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"sle\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"sge\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"sne\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"scmp\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"bit_and\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"bit_xor\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"bit_or\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"nbit_and\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"nbit_xor\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"nbit_or\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"sbit_and\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"sbit_xor\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"sbit_or\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"negate\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"i_negate\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.139 = private unnamed_addr constant [11 x i8] c"complement\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"ncomplement\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"scomplement\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"smartmatch\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"srand\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"oct\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.156 = private unnamed_addr constant [7 x i8] c"substr\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"rindex\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"sprintf\00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c"formline\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"ord\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"chr\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"crypt\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"ucfirst\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"lcfirst\00", align 1
@.str.167 = private unnamed_addr constant [3 x i8] c"uc\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"lc\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"quotemeta\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"rv2av\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"aelemfast\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"aelemfast_lex\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"aelem\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"aslice\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"kvaslice\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"aeach\00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c"akeys\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"avalues\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"each\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.184 = private unnamed_addr constant [6 x i8] c"rv2hv\00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"helem\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"hslice\00", align 1
@.str.187 = private unnamed_addr constant [9 x i8] c"kvhslice\00", align 1
@.str.188 = private unnamed_addr constant [11 x i8] c"multideref\00", align 1
@.str.189 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"lslice\00", align 1
@.str.195 = private unnamed_addr constant [9 x i8] c"anonlist\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"anonhash\00", align 1
@.str.197 = private unnamed_addr constant [7 x i8] c"splice\00", align 1
@.str.198 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.199 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c"unshift\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.204 = private unnamed_addr constant [10 x i8] c"grepstart\00", align 1
@.str.205 = private unnamed_addr constant [10 x i8] c"grepwhile\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"mapstart\00", align 1
@.str.207 = private unnamed_addr constant [9 x i8] c"mapwhile\00", align 1
@.str.208 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"flip\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"flop\00", align 1
@.str.211 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.212 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.214 = private unnamed_addr constant [4 x i8] c"dor\00", align 1
@.str.215 = private unnamed_addr constant [10 x i8] c"cond_expr\00", align 1
@.str.216 = private unnamed_addr constant [10 x i8] c"andassign\00", align 1
@.str.217 = private unnamed_addr constant [9 x i8] c"orassign\00", align 1
@.str.218 = private unnamed_addr constant [10 x i8] c"dorassign\00", align 1
@.str.219 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.220 = private unnamed_addr constant [9 x i8] c"entersub\00", align 1
@.str.221 = private unnamed_addr constant [9 x i8] c"leavesub\00", align 1
@.str.222 = private unnamed_addr constant [11 x i8] c"leavesublv\00", align 1
@.str.223 = private unnamed_addr constant [7 x i8] c"caller\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.225 = private unnamed_addr constant [4 x i8] c"die\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.227 = private unnamed_addr constant [8 x i8] c"lineseq\00", align 1
@.str.228 = private unnamed_addr constant [10 x i8] c"nextstate\00", align 1
@.str.229 = private unnamed_addr constant [8 x i8] c"dbstate\00", align 1
@.str.230 = private unnamed_addr constant [8 x i8] c"unstack\00", align 1
@.str.231 = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"leave\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.234 = private unnamed_addr constant [10 x i8] c"enteriter\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.236 = private unnamed_addr constant [10 x i8] c"enterloop\00", align 1
@.str.237 = private unnamed_addr constant [10 x i8] c"leaveloop\00", align 1
@.str.238 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.239 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"redo\00", align 1
@.str.242 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.243 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.245 = private unnamed_addr constant [13 x i8] c"method_named\00", align 1
@.str.246 = private unnamed_addr constant [13 x i8] c"method_super\00", align 1
@.str.247 = private unnamed_addr constant [13 x i8] c"method_redir\00", align 1
@.str.248 = private unnamed_addr constant [19 x i8] c"method_redir_super\00", align 1
@.str.249 = private unnamed_addr constant [11 x i8] c"entergiven\00", align 1
@.str.250 = private unnamed_addr constant [11 x i8] c"leavegiven\00", align 1
@.str.251 = private unnamed_addr constant [10 x i8] c"enterwhen\00", align 1
@.str.252 = private unnamed_addr constant [10 x i8] c"leavewhen\00", align 1
@.str.253 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.254 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.255 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.256 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.257 = private unnamed_addr constant [8 x i8] c"pipe_op\00", align 1
@.str.258 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@.str.259 = private unnamed_addr constant [6 x i8] c"umask\00", align 1
@.str.260 = private unnamed_addr constant [8 x i8] c"binmode\00", align 1
@.str.261 = private unnamed_addr constant [4 x i8] c"tie\00", align 1
@.str.262 = private unnamed_addr constant [6 x i8] c"untie\00", align 1
@.str.263 = private unnamed_addr constant [5 x i8] c"tied\00", align 1
@.str.264 = private unnamed_addr constant [8 x i8] c"dbmopen\00", align 1
@.str.265 = private unnamed_addr constant [9 x i8] c"dbmclose\00", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"sselect\00", align 1
@.str.267 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.268 = private unnamed_addr constant [5 x i8] c"getc\00", align 1
@.str.269 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.270 = private unnamed_addr constant [11 x i8] c"enterwrite\00", align 1
@.str.271 = private unnamed_addr constant [11 x i8] c"leavewrite\00", align 1
@.str.272 = private unnamed_addr constant [5 x i8] c"prtf\00", align 1
@.str.273 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.274 = private unnamed_addr constant [4 x i8] c"say\00", align 1
@.str.275 = private unnamed_addr constant [8 x i8] c"sysopen\00", align 1
@.str.276 = private unnamed_addr constant [8 x i8] c"sysseek\00", align 1
@.str.277 = private unnamed_addr constant [8 x i8] c"sysread\00", align 1
@.str.278 = private unnamed_addr constant [9 x i8] c"syswrite\00", align 1
@.str.279 = private unnamed_addr constant [4 x i8] c"eof\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@.str.281 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.282 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.283 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.284 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@.str.285 = private unnamed_addr constant [6 x i8] c"flock\00", align 1
@.str.286 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.287 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str.288 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.289 = private unnamed_addr constant [9 x i8] c"sockpair\00", align 1
@.str.290 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.291 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.292 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.293 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.294 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.295 = private unnamed_addr constant [9 x i8] c"gsockopt\00", align 1
@.str.296 = private unnamed_addr constant [9 x i8] c"ssockopt\00", align 1
@.str.297 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@.str.298 = private unnamed_addr constant [12 x i8] c"getpeername\00", align 1
@.str.299 = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@.str.300 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.301 = private unnamed_addr constant [8 x i8] c"ftrread\00", align 1
@.str.302 = private unnamed_addr constant [9 x i8] c"ftrwrite\00", align 1
@.str.303 = private unnamed_addr constant [8 x i8] c"ftrexec\00", align 1
@.str.304 = private unnamed_addr constant [8 x i8] c"fteread\00", align 1
@.str.305 = private unnamed_addr constant [9 x i8] c"ftewrite\00", align 1
@.str.306 = private unnamed_addr constant [8 x i8] c"fteexec\00", align 1
@.str.307 = private unnamed_addr constant [5 x i8] c"ftis\00", align 1
@.str.308 = private unnamed_addr constant [7 x i8] c"ftsize\00", align 1
@.str.309 = private unnamed_addr constant [8 x i8] c"ftmtime\00", align 1
@.str.310 = private unnamed_addr constant [8 x i8] c"ftatime\00", align 1
@.str.311 = private unnamed_addr constant [8 x i8] c"ftctime\00", align 1
@.str.312 = private unnamed_addr constant [9 x i8] c"ftrowned\00", align 1
@.str.313 = private unnamed_addr constant [9 x i8] c"fteowned\00", align 1
@.str.314 = private unnamed_addr constant [7 x i8] c"ftzero\00", align 1
@.str.315 = private unnamed_addr constant [7 x i8] c"ftsock\00", align 1
@.str.316 = private unnamed_addr constant [6 x i8] c"ftchr\00", align 1
@.str.317 = private unnamed_addr constant [6 x i8] c"ftblk\00", align 1
@.str.318 = private unnamed_addr constant [7 x i8] c"ftfile\00", align 1
@.str.319 = private unnamed_addr constant [6 x i8] c"ftdir\00", align 1
@.str.320 = private unnamed_addr constant [7 x i8] c"ftpipe\00", align 1
@.str.321 = private unnamed_addr constant [7 x i8] c"ftsuid\00", align 1
@.str.322 = private unnamed_addr constant [7 x i8] c"ftsgid\00", align 1
@.str.323 = private unnamed_addr constant [7 x i8] c"ftsvtx\00", align 1
@.str.324 = private unnamed_addr constant [7 x i8] c"ftlink\00", align 1
@.str.325 = private unnamed_addr constant [6 x i8] c"fttty\00", align 1
@.str.326 = private unnamed_addr constant [7 x i8] c"fttext\00", align 1
@.str.327 = private unnamed_addr constant [9 x i8] c"ftbinary\00", align 1
@.str.328 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.329 = private unnamed_addr constant [6 x i8] c"chown\00", align 1
@.str.330 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@.str.331 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.332 = private unnamed_addr constant [6 x i8] c"chmod\00", align 1
@.str.333 = private unnamed_addr constant [6 x i8] c"utime\00", align 1
@.str.334 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.335 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.336 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.337 = private unnamed_addr constant [9 x i8] c"readlink\00", align 1
@.str.338 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.339 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str.340 = private unnamed_addr constant [9 x i8] c"open_dir\00", align 1
@.str.341 = private unnamed_addr constant [8 x i8] c"readdir\00", align 1
@.str.342 = private unnamed_addr constant [8 x i8] c"telldir\00", align 1
@.str.343 = private unnamed_addr constant [8 x i8] c"seekdir\00", align 1
@.str.344 = private unnamed_addr constant [10 x i8] c"rewinddir\00", align 1
@.str.345 = private unnamed_addr constant [9 x i8] c"closedir\00", align 1
@.str.346 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.347 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.348 = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@.str.349 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.350 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.351 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.352 = private unnamed_addr constant [8 x i8] c"getppid\00", align 1
@.str.353 = private unnamed_addr constant [8 x i8] c"getpgrp\00", align 1
@.str.354 = private unnamed_addr constant [8 x i8] c"setpgrp\00", align 1
@.str.355 = private unnamed_addr constant [12 x i8] c"getpriority\00", align 1
@.str.356 = private unnamed_addr constant [12 x i8] c"setpriority\00", align 1
@.str.357 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.358 = private unnamed_addr constant [4 x i8] c"tms\00", align 1
@.str.359 = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@.str.360 = private unnamed_addr constant [7 x i8] c"gmtime\00", align 1
@.str.361 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@.str.362 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.363 = private unnamed_addr constant [7 x i8] c"shmget\00", align 1
@.str.364 = private unnamed_addr constant [7 x i8] c"shmctl\00", align 1
@.str.365 = private unnamed_addr constant [8 x i8] c"shmread\00", align 1
@.str.366 = private unnamed_addr constant [9 x i8] c"shmwrite\00", align 1
@.str.367 = private unnamed_addr constant [7 x i8] c"msgget\00", align 1
@.str.368 = private unnamed_addr constant [7 x i8] c"msgctl\00", align 1
@.str.369 = private unnamed_addr constant [7 x i8] c"msgsnd\00", align 1
@.str.370 = private unnamed_addr constant [7 x i8] c"msgrcv\00", align 1
@.str.371 = private unnamed_addr constant [6 x i8] c"semop\00", align 1
@.str.372 = private unnamed_addr constant [7 x i8] c"semget\00", align 1
@.str.373 = private unnamed_addr constant [7 x i8] c"semctl\00", align 1
@.str.374 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.375 = private unnamed_addr constant [7 x i8] c"dofile\00", align 1
@.str.376 = private unnamed_addr constant [10 x i8] c"hintseval\00", align 1
@.str.377 = private unnamed_addr constant [10 x i8] c"entereval\00", align 1
@.str.378 = private unnamed_addr constant [10 x i8] c"leaveeval\00", align 1
@.str.379 = private unnamed_addr constant [9 x i8] c"entertry\00", align 1
@.str.380 = private unnamed_addr constant [9 x i8] c"leavetry\00", align 1
@.str.381 = private unnamed_addr constant [9 x i8] c"ghbyname\00", align 1
@.str.382 = private unnamed_addr constant [9 x i8] c"ghbyaddr\00", align 1
@.str.383 = private unnamed_addr constant [9 x i8] c"ghostent\00", align 1
@.str.384 = private unnamed_addr constant [9 x i8] c"gnbyname\00", align 1
@.str.385 = private unnamed_addr constant [9 x i8] c"gnbyaddr\00", align 1
@.str.386 = private unnamed_addr constant [8 x i8] c"gnetent\00", align 1
@.str.387 = private unnamed_addr constant [9 x i8] c"gpbyname\00", align 1
@.str.388 = private unnamed_addr constant [11 x i8] c"gpbynumber\00", align 1
@.str.389 = private unnamed_addr constant [10 x i8] c"gprotoent\00", align 1
@.str.390 = private unnamed_addr constant [9 x i8] c"gsbyname\00", align 1
@.str.391 = private unnamed_addr constant [9 x i8] c"gsbyport\00", align 1
@.str.392 = private unnamed_addr constant [9 x i8] c"gservent\00", align 1
@.str.393 = private unnamed_addr constant [9 x i8] c"shostent\00", align 1
@.str.394 = private unnamed_addr constant [8 x i8] c"snetent\00", align 1
@.str.395 = private unnamed_addr constant [10 x i8] c"sprotoent\00", align 1
@.str.396 = private unnamed_addr constant [9 x i8] c"sservent\00", align 1
@.str.397 = private unnamed_addr constant [9 x i8] c"ehostent\00", align 1
@.str.398 = private unnamed_addr constant [8 x i8] c"enetent\00", align 1
@.str.399 = private unnamed_addr constant [10 x i8] c"eprotoent\00", align 1
@.str.400 = private unnamed_addr constant [9 x i8] c"eservent\00", align 1
@.str.401 = private unnamed_addr constant [7 x i8] c"gpwnam\00", align 1
@.str.402 = private unnamed_addr constant [7 x i8] c"gpwuid\00", align 1
@.str.403 = private unnamed_addr constant [7 x i8] c"gpwent\00", align 1
@.str.404 = private unnamed_addr constant [7 x i8] c"spwent\00", align 1
@.str.405 = private unnamed_addr constant [7 x i8] c"epwent\00", align 1
@.str.406 = private unnamed_addr constant [7 x i8] c"ggrnam\00", align 1
@.str.407 = private unnamed_addr constant [7 x i8] c"ggrgid\00", align 1
@.str.408 = private unnamed_addr constant [7 x i8] c"ggrent\00", align 1
@.str.409 = private unnamed_addr constant [7 x i8] c"sgrent\00", align 1
@.str.410 = private unnamed_addr constant [7 x i8] c"egrent\00", align 1
@.str.411 = private unnamed_addr constant [9 x i8] c"getlogin\00", align 1
@.str.412 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@.str.413 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.414 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@.str.415 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@.str.416 = private unnamed_addr constant [6 x i8] c"reach\00", align 1
@.str.417 = private unnamed_addr constant [6 x i8] c"rkeys\00", align 1
@.str.418 = private unnamed_addr constant [8 x i8] c"rvalues\00", align 1
@.str.419 = private unnamed_addr constant [9 x i8] c"coreargs\00", align 1
@.str.420 = private unnamed_addr constant [6 x i8] c"runcv\00", align 1
@.str.421 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@.str.422 = private unnamed_addr constant [6 x i8] c"padcv\00", align 1
@.str.423 = private unnamed_addr constant [8 x i8] c"introcv\00", align 1
@.str.424 = private unnamed_addr constant [8 x i8] c"clonecv\00", align 1
@.str.425 = private unnamed_addr constant [9 x i8] c"padrange\00", align 1
@.str.426 = private unnamed_addr constant [10 x i8] c"refassign\00", align 1
@.str.427 = private unnamed_addr constant [6 x i8] c"lvref\00", align 1
@.str.428 = private unnamed_addr constant [11 x i8] c"lvrefslice\00", align 1
@.str.429 = private unnamed_addr constant [8 x i8] c"lvavref\00", align 1
@.str.430 = private unnamed_addr constant [10 x i8] c"anonconst\00", align 1
@.str.431 = private unnamed_addr constant [6 x i8] c"freed\00", align 1
@PL_op_name = dso_local local_unnamed_addr constant [397 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, ptr @.str.392, ptr @.str.393, ptr @.str.394, ptr @.str.395, ptr @.str.396, ptr @.str.397, ptr @.str.398, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @.str.420, ptr @.str.421, ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @.str.431], align 16
@.str.432 = private unnamed_addr constant [15 x i8] c"null operation\00", align 1
@.str.433 = private unnamed_addr constant [14 x i8] c"constant item\00", align 1
@.str.434 = private unnamed_addr constant [16 x i8] c"scalar variable\00", align 1
@.str.435 = private unnamed_addr constant [11 x i8] c"glob value\00", align 1
@.str.436 = private unnamed_addr constant [10 x i8] c"glob elem\00", align 1
@.str.437 = private unnamed_addr constant [17 x i8] c"private variable\00", align 1
@.str.438 = private unnamed_addr constant [14 x i8] c"private array\00", align 1
@.str.439 = private unnamed_addr constant [13 x i8] c"private hash\00", align 1
@.str.440 = private unnamed_addr constant [14 x i8] c"private value\00", align 1
@.str.441 = private unnamed_addr constant [12 x i8] c"push regexp\00", align 1
@.str.442 = private unnamed_addr constant [17 x i8] c"ref-to-glob cast\00", align 1
@.str.443 = private unnamed_addr constant [19 x i8] c"scalar dereference\00", align 1
@.str.444 = private unnamed_addr constant [13 x i8] c"array length\00", align 1
@.str.445 = private unnamed_addr constant [23 x i8] c"subroutine dereference\00", align 1
@.str.446 = private unnamed_addr constant [21 x i8] c"anonymous subroutine\00", align 1
@.str.447 = private unnamed_addr constant [21 x i8] c"subroutine prototype\00", align 1
@.str.448 = private unnamed_addr constant [22 x i8] c"reference constructor\00", align 1
@.str.449 = private unnamed_addr constant [23 x i8] c"single ref constructor\00", align 1
@.str.450 = private unnamed_addr constant [24 x i8] c"reference-type operator\00", align 1
@.str.451 = private unnamed_addr constant [26 x i8] c"quoted execution (``, qx)\00", align 1
@.str.452 = private unnamed_addr constant [9 x i8] c"<HANDLE>\00", align 1
@.str.453 = private unnamed_addr constant [20 x i8] c"append I/O operator\00", align 1
@.str.454 = private unnamed_addr constant [22 x i8] c"regexp internal guard\00", align 1
@.str.455 = private unnamed_addr constant [22 x i8] c"regexp internal reset\00", align 1
@.str.456 = private unnamed_addr constant [19 x i8] c"regexp compilation\00", align 1
@.str.457 = private unnamed_addr constant [20 x i8] c"pattern match (m//)\00", align 1
@.str.458 = private unnamed_addr constant [21 x i8] c"pattern quote (qr//)\00", align 1
@.str.459 = private unnamed_addr constant [20 x i8] c"substitution (s///)\00", align 1
@.str.460 = private unnamed_addr constant [22 x i8] c"substitution iterator\00", align 1
@.str.461 = private unnamed_addr constant [24 x i8] c"transliteration (tr///)\00", align 1
@.str.462 = private unnamed_addr constant [18 x i8] c"scalar assignment\00", align 1
@.str.463 = private unnamed_addr constant [16 x i8] c"list assignment\00", align 1
@.str.464 = private unnamed_addr constant [12 x i8] c"scalar chop\00", align 1
@.str.465 = private unnamed_addr constant [13 x i8] c"scalar chomp\00", align 1
@.str.466 = private unnamed_addr constant [17 x i8] c"defined operator\00", align 1
@.str.467 = private unnamed_addr constant [15 x i8] c"undef operator\00", align 1
@.str.468 = private unnamed_addr constant [15 x i8] c"match position\00", align 1
@.str.469 = private unnamed_addr constant [18 x i8] c"preincrement (++)\00", align 1
@.str.470 = private unnamed_addr constant [26 x i8] c"integer preincrement (++)\00", align 1
@.str.471 = private unnamed_addr constant [18 x i8] c"predecrement (--)\00", align 1
@.str.472 = private unnamed_addr constant [26 x i8] c"integer predecrement (--)\00", align 1
@.str.473 = private unnamed_addr constant [19 x i8] c"postincrement (++)\00", align 1
@.str.474 = private unnamed_addr constant [27 x i8] c"integer postincrement (++)\00", align 1
@.str.475 = private unnamed_addr constant [19 x i8] c"postdecrement (--)\00", align 1
@.str.476 = private unnamed_addr constant [27 x i8] c"integer postdecrement (--)\00", align 1
@.str.477 = private unnamed_addr constant [20 x i8] c"exponentiation (**)\00", align 1
@.str.478 = private unnamed_addr constant [19 x i8] c"multiplication (*)\00", align 1
@.str.479 = private unnamed_addr constant [27 x i8] c"integer multiplication (*)\00", align 1
@.str.480 = private unnamed_addr constant [13 x i8] c"division (/)\00", align 1
@.str.481 = private unnamed_addr constant [21 x i8] c"integer division (/)\00", align 1
@.str.482 = private unnamed_addr constant [12 x i8] c"modulus (%)\00", align 1
@.str.483 = private unnamed_addr constant [20 x i8] c"integer modulus (%)\00", align 1
@.str.484 = private unnamed_addr constant [11 x i8] c"repeat (x)\00", align 1
@.str.485 = private unnamed_addr constant [13 x i8] c"addition (+)\00", align 1
@.str.486 = private unnamed_addr constant [21 x i8] c"integer addition (+)\00", align 1
@.str.487 = private unnamed_addr constant [16 x i8] c"subtraction (-)\00", align 1
@.str.488 = private unnamed_addr constant [24 x i8] c"integer subtraction (-)\00", align 1
@.str.489 = private unnamed_addr constant [28 x i8] c"concatenation (.) or string\00", align 1
@.str.490 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.491 = private unnamed_addr constant [19 x i8] c"left bitshift (<<)\00", align 1
@.str.492 = private unnamed_addr constant [20 x i8] c"right bitshift (>>)\00", align 1
@.str.493 = private unnamed_addr constant [15 x i8] c"numeric lt (<)\00", align 1
@.str.494 = private unnamed_addr constant [15 x i8] c"integer lt (<)\00", align 1
@.str.495 = private unnamed_addr constant [15 x i8] c"numeric gt (>)\00", align 1
@.str.496 = private unnamed_addr constant [15 x i8] c"integer gt (>)\00", align 1
@.str.497 = private unnamed_addr constant [16 x i8] c"numeric le (<=)\00", align 1
@.str.498 = private unnamed_addr constant [16 x i8] c"integer le (<=)\00", align 1
@.str.499 = private unnamed_addr constant [16 x i8] c"numeric ge (>=)\00", align 1
@.str.500 = private unnamed_addr constant [16 x i8] c"integer ge (>=)\00", align 1
@.str.501 = private unnamed_addr constant [16 x i8] c"numeric eq (==)\00", align 1
@.str.502 = private unnamed_addr constant [16 x i8] c"integer eq (==)\00", align 1
@.str.503 = private unnamed_addr constant [16 x i8] c"numeric ne (!=)\00", align 1
@.str.504 = private unnamed_addr constant [16 x i8] c"integer ne (!=)\00", align 1
@.str.505 = private unnamed_addr constant [25 x i8] c"numeric comparison (<=>)\00", align 1
@.str.506 = private unnamed_addr constant [25 x i8] c"integer comparison (<=>)\00", align 1
@.str.507 = private unnamed_addr constant [10 x i8] c"string lt\00", align 1
@.str.508 = private unnamed_addr constant [10 x i8] c"string gt\00", align 1
@.str.509 = private unnamed_addr constant [10 x i8] c"string le\00", align 1
@.str.510 = private unnamed_addr constant [10 x i8] c"string ge\00", align 1
@.str.511 = private unnamed_addr constant [10 x i8] c"string eq\00", align 1
@.str.512 = private unnamed_addr constant [10 x i8] c"string ne\00", align 1
@.str.513 = private unnamed_addr constant [24 x i8] c"string comparison (cmp)\00", align 1
@.str.514 = private unnamed_addr constant [16 x i8] c"bitwise and (&)\00", align 1
@.str.515 = private unnamed_addr constant [16 x i8] c"bitwise xor (^)\00", align 1
@.str.516 = private unnamed_addr constant [15 x i8] c"bitwise or (|)\00", align 1
@.str.517 = private unnamed_addr constant [24 x i8] c"numeric bitiwse and (&)\00", align 1
@.str.518 = private unnamed_addr constant [24 x i8] c"numeric bitwise xor (^)\00", align 1
@.str.519 = private unnamed_addr constant [23 x i8] c"numeric bitwise or (|)\00", align 1
@.str.520 = private unnamed_addr constant [23 x i8] c"string bitiwse and (&)\00", align 1
@.str.521 = private unnamed_addr constant [23 x i8] c"string bitwise xor (^)\00", align 1
@.str.522 = private unnamed_addr constant [22 x i8] c"string bitwise or (|)\00", align 1
@.str.523 = private unnamed_addr constant [13 x i8] c"negation (-)\00", align 1
@.str.524 = private unnamed_addr constant [21 x i8] c"integer negation (-)\00", align 1
@.str.525 = private unnamed_addr constant [19 x i8] c"1's complement (~)\00", align 1
@.str.526 = private unnamed_addr constant [27 x i8] c"numeric 1's complement (~)\00", align 1
@.str.527 = private unnamed_addr constant [26 x i8] c"string 1's complement (~)\00", align 1
@.str.528 = private unnamed_addr constant [12 x i8] c"smart match\00", align 1
@.str.529 = private unnamed_addr constant [18 x i8] c"array dereference\00", align 1
@.str.530 = private unnamed_addr constant [23 x i8] c"constant array element\00", align 1
@.str.531 = private unnamed_addr constant [31 x i8] c"constant lexical array element\00", align 1
@.str.532 = private unnamed_addr constant [14 x i8] c"array element\00", align 1
@.str.533 = private unnamed_addr constant [12 x i8] c"array slice\00", align 1
@.str.534 = private unnamed_addr constant [24 x i8] c"index/value array slice\00", align 1
@.str.535 = private unnamed_addr constant [14 x i8] c"each on array\00", align 1
@.str.536 = private unnamed_addr constant [14 x i8] c"keys on array\00", align 1
@.str.537 = private unnamed_addr constant [16 x i8] c"values on array\00", align 1
@.str.538 = private unnamed_addr constant [17 x i8] c"hash dereference\00", align 1
@.str.539 = private unnamed_addr constant [13 x i8] c"hash element\00", align 1
@.str.540 = private unnamed_addr constant [11 x i8] c"hash slice\00", align 1
@.str.541 = private unnamed_addr constant [21 x i8] c"key/value hash slice\00", align 1
@.str.542 = private unnamed_addr constant [21 x i8] c"array or hash lookup\00", align 1
@.str.543 = private unnamed_addr constant [15 x i8] c"join or string\00", align 1
@.str.544 = private unnamed_addr constant [11 x i8] c"list slice\00", align 1
@.str.545 = private unnamed_addr constant [21 x i8] c"anonymous array ([])\00", align 1
@.str.546 = private unnamed_addr constant [20 x i8] c"anonymous hash ({})\00", align 1
@.str.547 = private unnamed_addr constant [5 x i8] c"grep\00", align 1
@.str.548 = private unnamed_addr constant [14 x i8] c"grep iterator\00", align 1
@.str.549 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.550 = private unnamed_addr constant [13 x i8] c"map iterator\00", align 1
@.str.551 = private unnamed_addr constant [9 x i8] c"flipflop\00", align 1
@.str.552 = private unnamed_addr constant [16 x i8] c"range (or flip)\00", align 1
@.str.553 = private unnamed_addr constant [16 x i8] c"range (or flop)\00", align 1
@.str.554 = private unnamed_addr constant [17 x i8] c"logical and (&&)\00", align 1
@.str.555 = private unnamed_addr constant [16 x i8] c"logical or (||)\00", align 1
@.str.556 = private unnamed_addr constant [12 x i8] c"logical xor\00", align 1
@.str.557 = private unnamed_addr constant [16 x i8] c"defined or (//)\00", align 1
@.str.558 = private unnamed_addr constant [23 x i8] c"conditional expression\00", align 1
@.str.559 = private unnamed_addr constant [29 x i8] c"logical and assignment (&&=)\00", align 1
@.str.560 = private unnamed_addr constant [28 x i8] c"logical or assignment (||=)\00", align 1
@.str.561 = private unnamed_addr constant [28 x i8] c"defined or assignment (//=)\00", align 1
@.str.562 = private unnamed_addr constant [14 x i8] c"method lookup\00", align 1
@.str.563 = private unnamed_addr constant [17 x i8] c"subroutine entry\00", align 1
@.str.564 = private unnamed_addr constant [16 x i8] c"subroutine exit\00", align 1
@.str.565 = private unnamed_addr constant [25 x i8] c"lvalue subroutine return\00", align 1
@.str.566 = private unnamed_addr constant [13 x i8] c"symbol reset\00", align 1
@.str.567 = private unnamed_addr constant [14 x i8] c"line sequence\00", align 1
@.str.568 = private unnamed_addr constant [15 x i8] c"next statement\00", align 1
@.str.569 = private unnamed_addr constant [21 x i8] c"debug next statement\00", align 1
@.str.570 = private unnamed_addr constant [20 x i8] c"iteration finalizer\00", align 1
@.str.571 = private unnamed_addr constant [12 x i8] c"block entry\00", align 1
@.str.572 = private unnamed_addr constant [11 x i8] c"block exit\00", align 1
@.str.573 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.574 = private unnamed_addr constant [19 x i8] c"foreach loop entry\00", align 1
@.str.575 = private unnamed_addr constant [22 x i8] c"foreach loop iterator\00", align 1
@.str.576 = private unnamed_addr constant [11 x i8] c"loop entry\00", align 1
@.str.577 = private unnamed_addr constant [10 x i8] c"loop exit\00", align 1
@.str.578 = private unnamed_addr constant [23 x i8] c"method with known name\00", align 1
@.str.579 = private unnamed_addr constant [22 x i8] c"super with known name\00", align 1
@.str.580 = private unnamed_addr constant [32 x i8] c"redirect method with known name\00", align 1
@.str.581 = private unnamed_addr constant [38 x i8] c"redirect super method with known name\00", align 1
@.str.582 = private unnamed_addr constant [8 x i8] c"given()\00", align 1
@.str.583 = private unnamed_addr constant [18 x i8] c"leave given block\00", align 1
@.str.584 = private unnamed_addr constant [7 x i8] c"when()\00", align 1
@.str.585 = private unnamed_addr constant [17 x i8] c"leave when block\00", align 1
@.str.586 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.587 = private unnamed_addr constant [19 x i8] c"select system call\00", align 1
@.str.588 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.589 = private unnamed_addr constant [11 x i8] c"write exit\00", align 1
@.str.590 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str.591 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@.str.592 = private unnamed_addr constant [11 x i8] c"getsockopt\00", align 1
@.str.593 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.594 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.595 = private unnamed_addr constant [3 x i8] c"-W\00", align 1
@.str.596 = private unnamed_addr constant [3 x i8] c"-X\00", align 1
@.str.597 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.598 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.599 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.600 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.601 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.602 = private unnamed_addr constant [3 x i8] c"-M\00", align 1
@.str.603 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@.str.604 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.605 = private unnamed_addr constant [3 x i8] c"-O\00", align 1
@.str.606 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.607 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.608 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.609 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.610 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.611 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.612 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.613 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.614 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.615 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str.616 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@.str.617 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.618 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.619 = private unnamed_addr constant [3 x i8] c"-T\00", align 1
@.str.620 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str.621 = private unnamed_addr constant [8 x i8] c"opendir\00", align 1
@.str.622 = private unnamed_addr constant [6 x i8] c"times\00", align 1
@.str.623 = private unnamed_addr constant [10 x i8] c"do \22file\22\00", align 1
@.str.624 = private unnamed_addr constant [11 x i8] c"eval hints\00", align 1
@.str.625 = private unnamed_addr constant [14 x i8] c"eval \22string\22\00", align 1
@.str.626 = private unnamed_addr constant [19 x i8] c"eval \22string\22 exit\00", align 1
@.str.627 = private unnamed_addr constant [13 x i8] c"eval {block}\00", align 1
@.str.628 = private unnamed_addr constant [18 x i8] c"eval {block} exit\00", align 1
@.str.629 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@.str.630 = private unnamed_addr constant [14 x i8] c"gethostbyaddr\00", align 1
@.str.631 = private unnamed_addr constant [11 x i8] c"gethostent\00", align 1
@.str.632 = private unnamed_addr constant [13 x i8] c"getnetbyname\00", align 1
@.str.633 = private unnamed_addr constant [13 x i8] c"getnetbyaddr\00", align 1
@.str.634 = private unnamed_addr constant [10 x i8] c"getnetent\00", align 1
@.str.635 = private unnamed_addr constant [15 x i8] c"getprotobyname\00", align 1
@.str.636 = private unnamed_addr constant [17 x i8] c"getprotobynumber\00", align 1
@.str.637 = private unnamed_addr constant [12 x i8] c"getprotoent\00", align 1
@.str.638 = private unnamed_addr constant [14 x i8] c"getservbyname\00", align 1
@.str.639 = private unnamed_addr constant [14 x i8] c"getservbyport\00", align 1
@.str.640 = private unnamed_addr constant [11 x i8] c"getservent\00", align 1
@.str.641 = private unnamed_addr constant [11 x i8] c"sethostent\00", align 1
@.str.642 = private unnamed_addr constant [10 x i8] c"setnetent\00", align 1
@.str.643 = private unnamed_addr constant [12 x i8] c"setprotoent\00", align 1
@.str.644 = private unnamed_addr constant [11 x i8] c"setservent\00", align 1
@.str.645 = private unnamed_addr constant [11 x i8] c"endhostent\00", align 1
@.str.646 = private unnamed_addr constant [10 x i8] c"endnetent\00", align 1
@.str.647 = private unnamed_addr constant [12 x i8] c"endprotoent\00", align 1
@.str.648 = private unnamed_addr constant [11 x i8] c"endservent\00", align 1
@.str.649 = private unnamed_addr constant [9 x i8] c"getpwnam\00", align 1
@.str.650 = private unnamed_addr constant [9 x i8] c"getpwuid\00", align 1
@.str.651 = private unnamed_addr constant [9 x i8] c"getpwent\00", align 1
@.str.652 = private unnamed_addr constant [9 x i8] c"setpwent\00", align 1
@.str.653 = private unnamed_addr constant [9 x i8] c"endpwent\00", align 1
@.str.654 = private unnamed_addr constant [9 x i8] c"getgrnam\00", align 1
@.str.655 = private unnamed_addr constant [9 x i8] c"getgrgid\00", align 1
@.str.656 = private unnamed_addr constant [9 x i8] c"getgrent\00", align 1
@.str.657 = private unnamed_addr constant [9 x i8] c"setgrent\00", align 1
@.str.658 = private unnamed_addr constant [9 x i8] c"endgrent\00", align 1
@.str.659 = private unnamed_addr constant [24 x i8] c"unknown custom operator\00", align 1
@.str.660 = private unnamed_addr constant [18 x i8] c"each on reference\00", align 1
@.str.661 = private unnamed_addr constant [18 x i8] c"keys on reference\00", align 1
@.str.662 = private unnamed_addr constant [20 x i8] c"values on reference\00", align 1
@.str.663 = private unnamed_addr constant [18 x i8] c"CORE:: subroutine\00", align 1
@.str.664 = private unnamed_addr constant [8 x i8] c"__SUB__\00", align 1
@.str.665 = private unnamed_addr constant [19 x i8] c"private subroutine\00", align 1
@.str.666 = private unnamed_addr constant [26 x i8] c"list of private variables\00", align 1
@.str.667 = private unnamed_addr constant [22 x i8] c"lvalue ref assignment\00", align 1
@.str.668 = private unnamed_addr constant [23 x i8] c"lvalue array reference\00", align 1
@.str.669 = private unnamed_addr constant [19 x i8] c"anonymous constant\00", align 1
@.str.670 = private unnamed_addr constant [9 x i8] c"freed op\00", align 1
@PL_op_desc = dso_local local_unnamed_addr constant [397 x ptr] [ptr @.str.432, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.433, ptr @.str.434, ptr @.str.435, ptr @.str.436, ptr @.str.437, ptr @.str.438, ptr @.str.439, ptr @.str.440, ptr @.str.441, ptr @.str.442, ptr @.str.443, ptr @.str.444, ptr @.str.445, ptr @.str.446, ptr @.str.447, ptr @.str.448, ptr @.str.449, ptr @.str.450, ptr @.str.58, ptr @.str.451, ptr @.str.60, ptr @.str.452, ptr @.str.453, ptr @.str.454, ptr @.str.455, ptr @.str.456, ptr @.str.457, ptr @.str.458, ptr @.str.459, ptr @.str.460, ptr @.str.461, ptr @.str.461, ptr @.str.462, ptr @.str.463, ptr @.str.74, ptr @.str.464, ptr @.str.76, ptr @.str.465, ptr @.str.466, ptr @.str.467, ptr @.str.80, ptr @.str.468, ptr @.str.469, ptr @.str.470, ptr @.str.471, ptr @.str.472, ptr @.str.473, ptr @.str.474, ptr @.str.475, ptr @.str.476, ptr @.str.477, ptr @.str.478, ptr @.str.479, ptr @.str.480, ptr @.str.481, ptr @.str.482, ptr @.str.483, ptr @.str.484, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @.str.489, ptr @.str.490, ptr @.str.491, ptr @.str.492, ptr @.str.493, ptr @.str.494, ptr @.str.495, ptr @.str.496, ptr @.str.497, ptr @.str.498, ptr @.str.499, ptr @.str.500, ptr @.str.501, ptr @.str.502, ptr @.str.503, ptr @.str.504, ptr @.str.505, ptr @.str.506, ptr @.str.507, ptr @.str.508, ptr @.str.509, ptr @.str.510, ptr @.str.511, ptr @.str.512, ptr @.str.513, ptr @.str.514, ptr @.str.515, ptr @.str.516, ptr @.str.517, ptr @.str.518, ptr @.str.519, ptr @.str.520, ptr @.str.521, ptr @.str.522, ptr @.str.523, ptr @.str.524, ptr @.str.138, ptr @.str.525, ptr @.str.526, ptr @.str.527, ptr @.str.528, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.529, ptr @.str.530, ptr @.str.531, ptr @.str.532, ptr @.str.533, ptr @.str.534, ptr @.str.535, ptr @.str.536, ptr @.str.537, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.538, ptr @.str.539, ptr @.str.540, ptr @.str.541, ptr @.str.542, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.543, ptr @.str.193, ptr @.str.544, ptr @.str.545, ptr @.str.546, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.547, ptr @.str.548, ptr @.str.549, ptr @.str.550, ptr @.str.551, ptr @.str.552, ptr @.str.553, ptr @.str.554, ptr @.str.555, ptr @.str.556, ptr @.str.557, ptr @.str.558, ptr @.str.559, ptr @.str.560, ptr @.str.561, ptr @.str.562, ptr @.str.563, ptr @.str.564, ptr @.str.565, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.566, ptr @.str.567, ptr @.str.568, ptr @.str.569, ptr @.str.570, ptr @.str.571, ptr @.str.572, ptr @.str.573, ptr @.str.574, ptr @.str.575, ptr @.str.576, ptr @.str.577, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.578, ptr @.str.579, ptr @.str.580, ptr @.str.581, ptr @.str.582, ptr @.str.583, ptr @.str.584, ptr @.str.585, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.586, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.587, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.588, ptr @.str.589, ptr @.str.590, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.591, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.592, ptr @.str.593, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.594, ptr @.str.595, ptr @.str.596, ptr @.str.597, ptr @.str.598, ptr @.str.599, ptr @.str.600, ptr @.str.601, ptr @.str.602, ptr @.str.603, ptr @.str.604, ptr @.str.605, ptr @.str.606, ptr @.str.607, ptr @.str.608, ptr @.str.609, ptr @.str.610, ptr @.str.611, ptr @.str.612, ptr @.str.613, ptr @.str.614, ptr @.str.615, ptr @.str.616, ptr @.str.617, ptr @.str.618, ptr @.str.619, ptr @.str.620, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.621, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.622, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @.str.374, ptr @.str.623, ptr @.str.624, ptr @.str.625, ptr @.str.626, ptr @.str.627, ptr @.str.628, ptr @.str.629, ptr @.str.630, ptr @.str.631, ptr @.str.632, ptr @.str.633, ptr @.str.634, ptr @.str.635, ptr @.str.636, ptr @.str.637, ptr @.str.638, ptr @.str.639, ptr @.str.640, ptr @.str.641, ptr @.str.642, ptr @.str.643, ptr @.str.644, ptr @.str.645, ptr @.str.646, ptr @.str.647, ptr @.str.648, ptr @.str.649, ptr @.str.650, ptr @.str.651, ptr @.str.652, ptr @.str.653, ptr @.str.654, ptr @.str.655, ptr @.str.656, ptr @.str.657, ptr @.str.658, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @.str.659, ptr @.str.660, ptr @.str.661, ptr @.str.662, ptr @.str.663, ptr @.str.664, ptr @.str.421, ptr @.str.665, ptr @.str.665, ptr @.str.665, ptr @.str.666, ptr @.str.667, ptr @.str.667, ptr @.str.667, ptr @.str.668, ptr @.str.669, ptr @.str.670], align 16
@PL_ppaddr = dso_local local_unnamed_addr global [396 x ptr] [ptr @Perl_pp_null, ptr @Perl_pp_stub, ptr @Perl_pp_null, ptr @Perl_pp_pushmark, ptr @Perl_pp_wantarray, ptr @Perl_pp_const, ptr @Perl_pp_gvsv, ptr @Perl_pp_gv, ptr @Perl_pp_gelem, ptr @Perl_pp_padsv, ptr @Perl_pp_padav, ptr @Perl_pp_padhv, ptr @Perl_unimplemented_op, ptr @Perl_pp_pushre, ptr @Perl_pp_rv2gv, ptr @Perl_pp_rv2sv, ptr @Perl_pp_av2arylen, ptr @Perl_pp_rv2cv, ptr @Perl_pp_anoncode, ptr @Perl_pp_prototype, ptr @Perl_pp_refgen, ptr @Perl_pp_srefgen, ptr @Perl_pp_ref, ptr @Perl_pp_bless, ptr @Perl_pp_backtick, ptr @Perl_pp_glob, ptr @Perl_pp_readline, ptr @Perl_pp_rcatline, ptr @Perl_pp_null, ptr @Perl_pp_regcreset, ptr @Perl_pp_regcomp, ptr @Perl_pp_match, ptr @Perl_pp_qr, ptr @Perl_pp_subst, ptr @Perl_pp_substcont, ptr @Perl_pp_trans, ptr @Perl_pp_trans, ptr @Perl_pp_sassign, ptr @Perl_pp_aassign, ptr @Perl_pp_chop, ptr @Perl_pp_schop, ptr @Perl_pp_chop, ptr @Perl_pp_schop, ptr @Perl_pp_defined, ptr @Perl_pp_undef, ptr @Perl_pp_study, ptr @Perl_pp_pos, ptr @Perl_pp_preinc, ptr @Perl_pp_preinc, ptr @Perl_pp_preinc, ptr @Perl_pp_preinc, ptr @Perl_pp_postinc, ptr @Perl_pp_postinc, ptr @Perl_pp_postinc, ptr @Perl_pp_postinc, ptr @Perl_pp_pow, ptr @Perl_pp_multiply, ptr @Perl_pp_i_multiply, ptr @Perl_pp_divide, ptr @Perl_pp_i_divide, ptr @Perl_pp_modulo, ptr @Perl_pp_i_modulo, ptr @Perl_pp_repeat, ptr @Perl_pp_add, ptr @Perl_pp_i_add, ptr @Perl_pp_subtract, ptr @Perl_pp_i_subtract, ptr @Perl_pp_concat, ptr @Perl_pp_stringify, ptr @Perl_pp_left_shift, ptr @Perl_pp_right_shift, ptr @Perl_pp_lt, ptr @Perl_pp_i_lt, ptr @Perl_pp_gt, ptr @Perl_pp_i_gt, ptr @Perl_pp_le, ptr @Perl_pp_i_le, ptr @Perl_pp_ge, ptr @Perl_pp_i_ge, ptr @Perl_pp_eq, ptr @Perl_pp_i_eq, ptr @Perl_pp_ne, ptr @Perl_pp_i_ne, ptr @Perl_pp_ncmp, ptr @Perl_pp_i_ncmp, ptr @Perl_pp_sle, ptr @Perl_pp_sle, ptr @Perl_pp_sle, ptr @Perl_pp_sle, ptr @Perl_pp_seq, ptr @Perl_pp_sne, ptr @Perl_pp_scmp, ptr @Perl_pp_bit_and, ptr @Perl_pp_bit_or, ptr @Perl_pp_bit_or, ptr @Perl_pp_nbit_and, ptr @Perl_pp_nbit_or, ptr @Perl_pp_nbit_or, ptr @Perl_pp_sbit_and, ptr @Perl_pp_sbit_or, ptr @Perl_pp_sbit_or, ptr @Perl_pp_negate, ptr @Perl_pp_i_negate, ptr @Perl_pp_not, ptr @Perl_pp_complement, ptr @Perl_pp_ncomplement, ptr @Perl_pp_scomplement, ptr @Perl_pp_smartmatch, ptr @Perl_pp_atan2, ptr @Perl_pp_sin, ptr @Perl_pp_sin, ptr @Perl_pp_rand, ptr @Perl_pp_srand, ptr @Perl_pp_sin, ptr @Perl_pp_sin, ptr @Perl_pp_sin, ptr @Perl_pp_int, ptr @Perl_pp_oct, ptr @Perl_pp_oct, ptr @Perl_pp_abs, ptr @Perl_pp_length, ptr @Perl_pp_substr, ptr @Perl_pp_vec, ptr @Perl_pp_index, ptr @Perl_pp_index, ptr @Perl_pp_sprintf, ptr @Perl_pp_formline, ptr @Perl_pp_ord, ptr @Perl_pp_chr, ptr @Perl_pp_crypt, ptr @Perl_pp_ucfirst, ptr @Perl_pp_ucfirst, ptr @Perl_pp_uc, ptr @Perl_pp_lc, ptr @Perl_pp_quotemeta, ptr @Perl_pp_rv2av, ptr @Perl_pp_aelemfast, ptr @Perl_pp_aelemfast, ptr @Perl_pp_aelem, ptr @Perl_pp_aslice, ptr @Perl_pp_kvaslice, ptr @Perl_pp_aeach, ptr @Perl_pp_akeys, ptr @Perl_pp_akeys, ptr @Perl_pp_each, ptr @Perl_do_kv, ptr @Perl_do_kv, ptr @Perl_pp_delete, ptr @Perl_pp_exists, ptr @Perl_pp_rv2av, ptr @Perl_pp_helem, ptr @Perl_pp_hslice, ptr @Perl_pp_kvhslice, ptr @Perl_pp_multideref, ptr @Perl_pp_unpack, ptr @Perl_pp_pack, ptr @Perl_pp_split, ptr @Perl_pp_join, ptr @Perl_pp_list, ptr @Perl_pp_lslice, ptr @Perl_pp_anonlist, ptr @Perl_pp_anonhash, ptr @Perl_pp_splice, ptr @Perl_pp_push, ptr @Perl_pp_shift, ptr @Perl_pp_shift, ptr @Perl_pp_unshift, ptr @Perl_pp_sort, ptr @Perl_pp_reverse, ptr @Perl_pp_grepstart, ptr @Perl_pp_grepwhile, ptr @Perl_pp_grepstart, ptr @Perl_pp_mapwhile, ptr @Perl_pp_range, ptr @Perl_pp_flip, ptr @Perl_pp_flop, ptr @Perl_pp_and, ptr @Perl_pp_or, ptr @Perl_pp_xor, ptr @Perl_pp_defined, ptr @Perl_pp_cond_expr, ptr @Perl_pp_and, ptr @Perl_pp_or, ptr @Perl_pp_defined, ptr @Perl_pp_method, ptr @Perl_pp_entersub, ptr @Perl_pp_leavesub, ptr @Perl_pp_leavesublv, ptr @Perl_pp_caller, ptr @Perl_pp_warn, ptr @Perl_pp_die, ptr @Perl_pp_reset, ptr @Perl_pp_null, ptr @Perl_pp_nextstate, ptr @Perl_pp_dbstate, ptr @Perl_pp_unstack, ptr @Perl_pp_enter, ptr @Perl_pp_leave, ptr @Perl_pp_null, ptr @Perl_pp_enteriter, ptr @Perl_pp_iter, ptr @Perl_pp_enterloop, ptr @Perl_pp_leaveloop, ptr @Perl_pp_return, ptr @Perl_pp_last, ptr @Perl_pp_next, ptr @Perl_pp_redo, ptr @Perl_pp_goto, ptr @Perl_pp_goto, ptr @Perl_pp_exit, ptr @Perl_pp_method_named, ptr @Perl_pp_method_super, ptr @Perl_pp_method_redir, ptr @Perl_pp_method_redir_super, ptr @Perl_pp_entergiven, ptr @Perl_pp_leavegiven, ptr @Perl_pp_enterwhen, ptr @Perl_pp_leavewhen, ptr @Perl_pp_break, ptr @Perl_pp_continue, ptr @Perl_pp_open, ptr @Perl_pp_close, ptr @Perl_pp_pipe_op, ptr @Perl_pp_fileno, ptr @Perl_pp_umask, ptr @Perl_pp_binmode, ptr @Perl_pp_tie, ptr @Perl_pp_untie, ptr @Perl_pp_tied, ptr @Perl_pp_dbmopen, ptr @Perl_pp_untie, ptr @Perl_pp_sselect, ptr @Perl_pp_select, ptr @Perl_pp_getc, ptr @Perl_pp_sysread, ptr @Perl_pp_enterwrite, ptr @Perl_pp_leavewrite, ptr @Perl_pp_prtf, ptr @Perl_pp_print, ptr @Perl_pp_print, ptr @Perl_pp_sysopen, ptr @Perl_pp_sysseek, ptr @Perl_pp_sysread, ptr @Perl_pp_syswrite, ptr @Perl_pp_eof, ptr @Perl_pp_tell, ptr @Perl_pp_sysseek, ptr @Perl_pp_truncate, ptr @Perl_pp_ioctl, ptr @Perl_pp_ioctl, ptr @Perl_pp_flock, ptr @Perl_unimplemented_op, ptr @Perl_unimplemented_op, ptr @Perl_unimplemented_op, ptr @Perl_pp_sockpair, ptr @Perl_unimplemented_op, ptr @Perl_unimplemented_op, ptr @Perl_unimplemented_op, ptr @Perl_unimplemented_op, ptr @Perl_unimplemented_op, ptr @Perl_unimplemented_op, ptr @Perl_unimplemented_op, ptr @Perl_unimplemented_op, ptr @Perl_unimplemented_op, ptr @Perl_pp_stat, ptr @Perl_pp_stat, ptr @Perl_pp_ftrread, ptr @Perl_pp_ftrread, ptr @Perl_pp_ftrread, ptr @Perl_pp_ftrread, ptr @Perl_pp_ftrread, ptr @Perl_pp_ftrread, ptr @Perl_pp_ftis, ptr @Perl_pp_ftis, ptr @Perl_pp_ftis, ptr @Perl_pp_ftis, ptr @Perl_pp_ftis, ptr @Perl_pp_ftrowned, ptr @Perl_pp_ftrowned, ptr @Perl_pp_ftrowned, ptr @Perl_pp_ftrowned, ptr @Perl_pp_ftrowned, ptr @Perl_pp_ftrowned, ptr @Perl_pp_ftrowned, ptr @Perl_pp_ftrowned, ptr @Perl_pp_ftrowned, ptr @Perl_pp_ftrowned, ptr @Perl_pp_ftrowned, ptr @Perl_pp_ftrowned, ptr @Perl_pp_ftlink, ptr @Perl_pp_fttty, ptr @Perl_pp_fttext, ptr @Perl_pp_fttext, ptr @Perl_pp_chdir, ptr @Perl_pp_chown, ptr @Perl_pp_chroot, ptr @Perl_pp_chown, ptr @Perl_pp_chown, ptr @Perl_pp_chown, ptr @Perl_pp_rename, ptr @Perl_pp_link, ptr @Perl_pp_link, ptr @Perl_pp_readlink, ptr @Perl_pp_mkdir, ptr @Perl_pp_rmdir, ptr @Perl_pp_open_dir, ptr @Perl_pp_readdir, ptr @Perl_pp_telldir, ptr @Perl_pp_seekdir, ptr @Perl_pp_rewinddir, ptr @Perl_pp_closedir, ptr @Perl_pp_fork, ptr @Perl_pp_wait, ptr @Perl_pp_waitpid, ptr @Perl_pp_system, ptr @Perl_pp_exec, ptr @Perl_pp_chown, ptr @Perl_pp_getppid, ptr @Perl_pp_getpgrp, ptr @Perl_pp_setpgrp, ptr @Perl_pp_getpriority, ptr @Perl_pp_setpriority, ptr @Perl_pp_time, ptr @Perl_pp_tms, ptr @Perl_pp_gmtime, ptr @Perl_pp_gmtime, ptr @Perl_pp_alarm, ptr @Perl_pp_sleep, ptr @Perl_pp_semget, ptr @Perl_pp_semctl, ptr @Perl_pp_shmwrite, ptr @Perl_pp_shmwrite, ptr @Perl_pp_semget, ptr @Perl_pp_semctl, ptr @Perl_pp_shmwrite, ptr @Perl_pp_shmwrite, ptr @Perl_pp_shmwrite, ptr @Perl_pp_semget, ptr @Perl_pp_semctl, ptr @Perl_pp_require, ptr @Perl_pp_require, ptr @Perl_pp_hintseval, ptr @Perl_pp_entereval, ptr @Perl_pp_leaveeval, ptr @Perl_pp_entertry, ptr @Perl_pp_leavetry, ptr @Perl_pp_ghostent, ptr @Perl_pp_ghostent, ptr @Perl_pp_ghostent, ptr @Perl_pp_gnetent, ptr @Perl_pp_gnetent, ptr @Perl_pp_gnetent, ptr @Perl_pp_gprotoent, ptr @Perl_pp_gprotoent, ptr @Perl_pp_gprotoent, ptr @Perl_pp_gservent, ptr @Perl_pp_gservent, ptr @Perl_pp_gservent, ptr @Perl_pp_shostent, ptr @Perl_pp_shostent, ptr @Perl_pp_shostent, ptr @Perl_pp_shostent, ptr @Perl_pp_ehostent, ptr @Perl_pp_ehostent, ptr @Perl_pp_ehostent, ptr @Perl_pp_ehostent, ptr @Perl_pp_gpwent, ptr @Perl_pp_gpwent, ptr @Perl_pp_gpwent, ptr @Perl_pp_ehostent, ptr @Perl_pp_ehostent, ptr @Perl_pp_ggrent, ptr @Perl_pp_ggrent, ptr @Perl_pp_ggrent, ptr @Perl_pp_ehostent, ptr @Perl_pp_ehostent, ptr @Perl_pp_getlogin, ptr @Perl_pp_syscall, ptr @Perl_pp_lock, ptr @Perl_pp_once, ptr @Perl_unimplemented_op, ptr @Perl_pp_rkeys, ptr @Perl_pp_rkeys, ptr @Perl_pp_rkeys, ptr @Perl_pp_coreargs, ptr @Perl_pp_runcv, ptr @Perl_pp_fc, ptr @Perl_pp_padcv, ptr @Perl_pp_introcv, ptr @Perl_pp_clonecv, ptr @Perl_pp_padrange, ptr @Perl_pp_refassign, ptr @Perl_pp_lvref, ptr @Perl_pp_lvrefslice, ptr @Perl_pp_lvavref, ptr @Perl_pp_anonconst], align 16
@PL_check = dso_local local_unnamed_addr global [396 x ptr] [ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_svconst, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_rvconst, ptr @Perl_ck_rvconst, ptr @Perl_ck_null, ptr @Perl_ck_rvconst, ptr @Perl_ck_anoncode, ptr @Perl_ck_prototype, ptr @Perl_ck_spair, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_backtick, ptr @Perl_ck_glob, ptr @Perl_ck_readline, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_match, ptr @Perl_ck_match, ptr @Perl_ck_match, ptr @Perl_ck_null, ptr @Perl_ck_match, ptr @Perl_ck_match, ptr @Perl_ck_sassign, ptr @Perl_ck_null, ptr @Perl_ck_spair, ptr @Perl_ck_null, ptr @Perl_ck_spair, ptr @Perl_ck_null, ptr @Perl_ck_defined, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_lfun, ptr @Perl_ck_lfun, ptr @Perl_ck_lfun, ptr @Perl_ck_lfun, ptr @Perl_ck_lfun, ptr @Perl_ck_lfun, ptr @Perl_ck_lfun, ptr @Perl_ck_lfun, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_repeat, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_concat, ptr @Perl_ck_stringify, ptr @Perl_ck_bitop, ptr @Perl_ck_bitop, ptr @Perl_ck_cmp, ptr @Perl_ck_cmp, ptr @Perl_ck_cmp, ptr @Perl_ck_cmp, ptr @Perl_ck_cmp, ptr @Perl_ck_cmp, ptr @Perl_ck_cmp, ptr @Perl_ck_cmp, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_bitop, ptr @Perl_ck_bitop, ptr @Perl_ck_bitop, ptr @Perl_ck_bitop, ptr @Perl_ck_bitop, ptr @Perl_ck_bitop, ptr @Perl_ck_bitop, ptr @Perl_ck_bitop, ptr @Perl_ck_bitop, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_bitop, ptr @Perl_ck_bitop, ptr @Perl_ck_bitop, ptr @Perl_ck_smartmatch, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_length, ptr @Perl_ck_substr, ptr @Perl_ck_fun, ptr @Perl_ck_index, ptr @Perl_ck_index, ptr @Perl_ck_lfun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_rvconst, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_each, ptr @Perl_ck_each, ptr @Perl_ck_each, ptr @Perl_ck_each, ptr @Perl_ck_each, ptr @Perl_ck_each, ptr @Perl_ck_delete, ptr @Perl_ck_exists, ptr @Perl_ck_rvconst, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_split, ptr @Perl_ck_join, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_shift, ptr @Perl_ck_shift, ptr @Perl_ck_fun, ptr @Perl_ck_sort, ptr @Perl_ck_fun, ptr @Perl_ck_grep, ptr @Perl_ck_null, ptr @Perl_ck_grep, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_method, ptr @Perl_ck_subr, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_return, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_open, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_select, ptr @Perl_ck_select, ptr @Perl_ck_eof, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_listiob, ptr @Perl_ck_listiob, ptr @Perl_ck_listiob, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_eof, ptr @Perl_ck_tell, ptr @Perl_ck_tell, ptr @Perl_ck_trunc, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_ftst, ptr @Perl_ck_trunc, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_exec, ptr @Perl_ck_exec, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_require, ptr @Perl_ck_fun, ptr @Perl_ck_svconst, ptr @Perl_ck_eval, ptr @Perl_ck_null, ptr @Perl_ck_eval, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_rfun, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_each, ptr @Perl_ck_each, ptr @Perl_ck_each, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_fun, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_refassign, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null, ptr @Perl_ck_null], align 16
@PL_opargs = dso_local local_unnamed_addr constant [396 x i32] [i32 0, i32 0, i32 6916, i32 4, i32 4, i32 1540, i32 1604, i32 1604, i32 70212, i32 68, i32 64, i32 64, i32 64, i32 1344, i32 324, i32 324, i32 260, i32 320, i32 1540, i32 39812, i32 8449, i32 4358, i32 39820, i32 594948, i32 39816, i32 37896, i32 60168, i32 1544, i32 4356, i32 4356, i32 4868, i32 1280, i32 1284, i32 5380, i32 772, i32 6148, i32 6148, i32 4, i32 139784, i32 11021, i32 39820, i32 11037, i32 39836, i32 39812, i32 64260, i32 39812, i32 64396, i32 4452, i32 4420, i32 4452, i32 4420, i32 4396, i32 4364, i32 4396, i32 4364, i32 70174, i32 70206, i32 70174, i32 70206, i32 70174, i32 70206, i32 70174, i32 74251, i32 70206, i32 70174, i32 70206, i32 70174, i32 70174, i32 5150, i32 70174, i32 70174, i32 70182, i32 70150, i32 70182, i32 70150, i32 70182, i32 70150, i32 70182, i32 70150, i32 70182, i32 70150, i32 70182, i32 70150, i32 70190, i32 70158, i32 70150, i32 70150, i32 70150, i32 70150, i32 70150, i32 70150, i32 70158, i32 70158, i32 70158, i32 70158, i32 70174, i32 70174, i32 70174, i32 70158, i32 70158, i32 70158, i32 4398, i32 4366, i32 4358, i32 4366, i32 4382, i32 4382, i32 516, i32 70686, i32 39838, i32 39838, i32 39708, i32 39708, i32 39838, i32 39838, i32 39838, i32 39838, i32 39838, i32 39838, i32 39838, i32 39838, i32 160502796, i32 1119244, i32 9507868, i32 9507868, i32 136207, i32 136197, i32 39838, i32 39838, i32 70686, i32 39822, i32 39822, i32 39822, i32 39822, i32 39822, i32 328, i32 79428, i32 77888, i32 78340, i32 144385, i32 144385, i32 15168, i32 15112, i32 15176, i32 19264, i32 19272, i32 19208, i32 6912, i32 6916, i32 320, i32 82436, i32 148481, i32 148481, i32 3908, i32 595072, i32 136207, i32 1119240, i32 136207, i32 9217, i32 2245120, i32 9221, i32 9221, i32 43594753, i32 144413, i32 47876, i32 47876, i32 144413, i32 185345, i32 9225, i32 152577, i32 776, i32 152577, i32 776, i32 70400, i32 69888, i32 256, i32 768, i32 768, i32 70150, i32 768, i32 768, i32 772, i32 772, i32 772, i32 3648, i32 8513, i32 256, i32 256, i32 39688, i32 9229, i32 9229, i32 39684, i32 1024, i32 2564, i32 2564, i32 4, i32 0, i32 1024, i32 1024, i32 2368, i32 0, i32 2368, i32 512, i32 9217, i32 3332, i32 3332, i32 3332, i32 3396, i32 3332, i32 39684, i32 3648, i32 3648, i32 3648, i32 3648, i32 832, i32 256, i32 832, i32 256, i32 0, i32 0, i32 2712589, i32 60164, i32 418820, i32 27404, i32 39692, i32 615428, i32 2192453, i32 31492, i32 31556, i32 1131524, i32 19204, i32 17896456, i32 58380, i32 60172, i32 152527885, i32 60164, i32 256, i32 189445, i32 189445, i32 189445, i32 152134660, i32 1139716, i32 152527885, i32 160523277, i32 60164, i32 60172, i32 1139716, i32 70660, i32 1139724, i32 1139724, i32 91164, i32 152134669, i32 18310157, i32 17916932, i32 286680068, i32 91140, i32 91140, i32 91140, i32 418828, i32 91148, i32 1139716, i32 17916932, i32 27396, i32 27396, i32 60544, i32 60544, i32 27780, i32 27780, i32 27780, i32 27780, i32 27780, i32 27780, i32 27780, i32 27788, i32 27788, i32 27788, i32 27788, i32 27780, i32 27780, i32 27780, i32 27780, i32 27780, i32 27780, i32 27780, i32 27780, i32 27780, i32 27780, i32 27780, i32 27780, i32 27780, i32 27652, i32 27780, i32 27780, i32 39708, i32 9245, i32 39836, i32 9373, i32 9245, i32 9245, i32 70684, i32 70684, i32 70684, i32 39820, i32 627868, i32 39836, i32 91140, i32 27392, i32 27404, i32 91140, i32 27396, i32 27396, i32 12, i32 28, i32 70684, i32 168989, i32 168989, i32 9245, i32 28, i32 39708, i32 627740, i32 70684, i32 1119260, i32 28, i32 0, i32 39688, i32 39688, i32 39820, i32 39708, i32 1119245, i32 1119245, i32 17896461, i32 17896461, i32 70669, i32 1119245, i32 1119245, i32 286331917, i32 70669, i32 1119245, i32 17896461, i32 39876, i32 4416, i32 1540, i32 39872, i32 4352, i32 832, i32 1024, i32 6912, i32 70656, i32 0, i32 6912, i32 70656, i32 0, i32 6912, i32 5120, i32 0, i32 70656, i32 70656, i32 0, i32 6916, i32 6916, i32 6916, i32 6916, i32 4, i32 4, i32 4, i32 4, i32 6912, i32 6912, i32 0, i32 4, i32 4, i32 6912, i32 6912, i32 0, i32 4, i32 4, i32 12, i32 136205, i32 31492, i32 768, i32 0, i32 6976, i32 6920, i32 6984, i32 1536, i32 4, i32 39822, i32 64, i32 64, i32 64, i32 64, i32 580, i32 2880, i32 1088, i32 2880, i32 324], align 16
@PL_op_private_labels = dso_local local_unnamed_addr constant [518 x i8] c"$MOD\00+1\00-\00<UTF\00>UTF\00AMPER\00AV\00BARE\00BKWARD\00BOOL\00BOOL?\00BYTES\00COMMON\00COMPL\00CONST\00COPHH\00CV\00CV2GV\00DBG\00DEF\00DEL\00DELETE\00DEREF1\00DEREF2\00DESC\00DOLIST\00DREFAV\00DREFHV\00DREFSV\00EARLYCV\00ELEM\00ENTERED\00EXISTS\00FAKE\00FTACCESS\00FTAFTERt\00FTSTACKED\00FTSTACKING\00GREPLEX\00GROWS\00GUESSED\00HAS_HH\00HUSH\00HV\00IDENT\00IMPLIM\00INARGS\00INBIN\00INCR\00INPLACE\00INT\00ITER\00LINENUM\00LV\00LVDEFER\00LVINTRO\00LVSUB\00MARK\00NO()\00NOINIT\00NOVER\00NUM\00OURINTR\00OUTBIN\00OUTCR\00QSORT\00REFC\00REPARSE\00REPL1ST\00REV\00REVERSED\00RTIME\00SHORT\00SLICE\00SLICEWARN\00SQUASH\00STABLE\00STATE\00STRICT\00SUB\00SV\00TARG\00TARGMY\00UNI\00UTF\00", align 16
@PL_op_private_bitfields = dso_local local_unnamed_addr constant [38 x i16] [i16 0, i16 8, i16 -1, i16 0, i16 8, i16 -1, i16 0, i16 8, i16 -1, i16 0, i16 8, i16 -1, i16 0, i16 8, i16 -1, i16 0, i16 8, i16 -1, i16 4, i16 -1, i16 1, i16 137, i16 2, i16 144, i16 3, i16 151, i16 -1, i16 4, i16 -1, i16 0, i16 495, i16 1, i16 26, i16 2, i16 264, i16 3, i16 83, i16 -1], align 16
@PL_op_private_bitdef_ix = dso_local local_unnamed_addr constant [396 x i16] [i16 -1, i16 -1, i16 0, i16 1, i16 3, i16 4, i16 9, i16 11, i16 12, i16 13, i16 16, i16 20, i16 -1, i16 26, i16 28, i16 35, i16 40, i16 42, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 49, i16 50, i16 49, i16 0, i16 -1, i16 0, i16 0, i16 0, i16 26, i16 26, i16 26, i16 55, i16 57, i16 57, i16 65, i16 68, i16 0, i16 0, i16 71, i16 71, i16 0, i16 0, i16 0, i16 40, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 75, i16 73, i16 73, i16 73, i16 73, i16 73, i16 77, i16 73, i16 73, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 73, i16 73, i16 73, i16 12, i16 12, i16 12, i16 0, i16 0, i16 0, i16 0, i16 71, i16 71, i16 12, i16 77, i16 71, i16 71, i16 77, i16 77, i16 71, i16 71, i16 71, i16 71, i16 71, i16 71, i16 71, i16 71, i16 79, i16 82, i16 77, i16 77, i16 49, i16 49, i16 71, i16 71, i16 77, i16 0, i16 0, i16 0, i16 0, i16 0, i16 84, i16 90, i16 90, i16 91, i16 96, i16 99, i16 0, i16 0, i16 0, i16 0, i16 0, i16 40, i16 100, i16 103, i16 105, i16 91, i16 96, i16 99, i16 113, i16 49, i16 49, i16 120, i16 49, i16 122, i16 12, i16 49, i16 49, i16 49, i16 77, i16 0, i16 0, i16 77, i16 124, i16 131, i16 133, i16 133, i16 133, i16 133, i16 0, i16 135, i16 135, i16 0, i16 0, i16 12, i16 0, i16 137, i16 0, i16 0, i16 0, i16 0, i16 139, i16 146, i16 146, i16 148, i16 49, i16 49, i16 49, i16 -1, i16 150, i16 150, i16 -1, i16 -1, i16 151, i16 -1, i16 153, i16 157, i16 -1, i16 158, i16 -1, i16 160, i16 160, i16 160, i16 160, i16 160, i16 49, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 162, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 0, i16 0, i16 49, i16 0, i16 49, i16 49, i16 49, i16 49, i16 49, i16 146, i16 -1, i16 -1, i16 -1, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 77, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 0, i16 0, i16 0, i16 0, i16 167, i16 167, i16 167, i16 167, i16 167, i16 167, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 172, i16 77, i16 77, i16 71, i16 77, i16 77, i16 77, i16 77, i16 77, i16 77, i16 0, i16 77, i16 71, i16 49, i16 0, i16 0, i16 49, i16 0, i16 0, i16 -1, i16 176, i16 77, i16 77, i16 77, i16 77, i16 176, i16 77, i16 77, i16 77, i16 77, i16 176, i16 -1, i16 0, i16 49, i16 0, i16 77, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 0, i16 0, i16 -1, i16 177, i16 146, i16 0, i16 -1, i16 0, i16 49, i16 -1, i16 0, i16 49, i16 -1, i16 0, i16 49, i16 -1, i16 49, i16 49, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 49, i16 0, i16 0, i16 -1, i16 0, i16 40, i16 0, i16 183, i16 3, i16 0, i16 -1, i16 -1, i16 -1, i16 187, i16 189, i16 195, i16 201, i16 202, i16 0], align 16
@PL_op_private_bitdefs = dso_local local_unnamed_addr constant [205 x i16] [i16 3, i16 10716, i16 15321, i16 189, i16 952, i16 5488, i16 15500, i16 14152, i16 11685, i16 10716, i16 12025, i16 5077, i16 103, i16 10716, i16 15320, i16 599, i16 10716, i16 15320, i16 10956, i16 14537, i16 10716, i16 15320, i16 1332, i16 1488, i16 10956, i16 14537, i16 13976, i16 16113, i16 10716, i16 5976, i16 598, i16 10956, i16 11464, i16 15492, i16 3, i16 10716, i16 12024, i16 598, i16 15492, i16 3, i16 10956, i16 3, i16 11324, i16 2968, i16 2292, i16 652, i16 15944, i16 15492, i16 3, i16 303, i16 12508, i16 12280, i16 9396, i16 9200, i16 3, i16 13976, i16 3, i16 3228, i16 7640, i16 2100, i16 16112, i16 14860, i16 8552, i16 484, i16 321, i16 2780, i16 1112, i16 103, i16 1880, i16 10956, i16 103, i16 16112, i16 3, i16 16112, i16 103, i16 4184, i16 103, i16 16112, i16 303, i16 13296, i16 10956, i16 203, i16 10956, i16 103, i16 10716, i16 12024, i16 10956, i16 14536, i16 15492, i16 3, i16 511, i16 10716, i16 10456, i16 598, i16 10956, i16 103, i16 10716, i16 10956, i16 14537, i16 10957, i16 10716, i16 14360, i16 3, i16 15736, i16 3, i16 10716, i16 12024, i16 1332, i16 1488, i16 10956, i16 14536, i16 15492, i16 3, i16 10716, i16 10456, i16 3348, i16 5744, i16 10956, i16 15492, i16 3, i16 8764, i16 12025, i16 10716, i16 7833, i16 15096, i16 12692, i16 4016, i16 9548, i16 13544, i16 9796, i16 11873, i16 9548, i16 3, i16 7364, i16 3, i16 10104, i16 3, i16 10716, i16 3, i16 10716, i16 2968, i16 598, i16 652, i16 15944, i16 15492, i16 8961, i16 12888, i16 3, i16 188, i16 303, i16 8309, i16 10364, i16 12889, i16 10716, i16 12024, i16 3084, i16 13673, i16 13673, i16 10364, i16 103, i16 16476, i16 3, i16 12508, i16 12280, i16 9396, i16 9200, i16 303, i16 6416, i16 7020, i16 6696, i16 6116, i16 3, i16 6416, i16 7020, i16 6696, i16 3, i16 16113, i16 13044, i16 2480, i16 1676, i16 16328, i16 8068, i16 3, i16 11164, i16 24, i16 3780, i16 3553, i16 10716, i16 411, i16 10716, i16 15320, i16 886, i16 9932, i16 5320, i16 103, i16 10716, i16 15320, i16 886, i16 9932, i16 5320, i16 3, i16 10717, i16 10716, i16 15320, i16 3], align 16
@PL_op_private_valid = dso_local local_unnamed_addr constant [396 x i8] c"\FF\00\01\C0\80^\C0 \03\F0\CC\FC\00P\FF\F3\09\EF\00\01\01\01\01\0F\F1\0F\01\00\01\01\01PPPA\FF\FF\C3K\01\01\11\11\01\01\01\09\01\01\01\01\01\01\01\01\13\13\13\13\13\13\13C\13\13\13\13\13\1F\13\13\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\13\13\13\03\03\03\01\01\01\01\11\11\03\1F\11\11\1F\1F\11\11\11\11\11\11\11\11\1F\0B\1F\1F\0F\0F\11\11\1F\01\01\01\01\01\CF\FF\FF\FB\8C\08\01\01\01\01\01\09\C1A\FF\FB\8C\08\FB\0F\0F\C0\0F\C0\03\0F\0F\0F\1F\01\01\1F\7F\09\03\03\03\03\01AA\01\01\03\01\81\01\01\01\01\FFAA\8F\0F\0F\0F\00  \00\00\C0\00\CC\04\00\83\00\81\81\81\81\81\0F\01\01\01\01\01\01\01\01\00\00\FF\0F\0F\0F\0F\0F\0F\01\01\0F\01\0F\0F\0F\0F\0FA\00\00\00\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\1F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\01\01\01\01\1F\1F\1F\1F\1F\1F\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1F\1F\11\1F\1F\1F\1F\1F\1F\01\1F\11\0F\01\01\0F\01\01\00\10\1F\1F\1F\1F\10\1F\1F\1F\1F\10\00\01\0F\01\1F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\01\01\00?A\01\00\01\0F\00\01\0F\00\01\0F\00\0F\0F\00\01\01\01\01\00\00\00\00\01\01\00\00\00\01\01\00\00\00\00\0F\01\01\FF\01\09\01\C3\80\01\00\00\00\FF\FF\FD\80\C1\01", align 16
@PL_tmps_ix = dso_local local_unnamed_addr global i64 -1, align 8
@PL_tmps_floor = dso_local local_unnamed_addr global i64 -1, align 8
@PL_sub_generation = dso_local local_unnamed_addr global i32 1, align 4
@PL_sawalias = dso_local local_unnamed_addr global i8 0, align 1
@PL_hash_rand_bits_enabled = dso_local local_unnamed_addr global i8 1, align 1
@PL_hash_rand_bits = dso_local local_unnamed_addr global i64 0, align 8
@PL_utf8cache = dso_local local_unnamed_addr global i8 1, align 1
@PL_reg_curpm = dso_local local_unnamed_addr global ptr null, align 8
@PL_regmatch_slab = dso_local local_unnamed_addr global ptr null, align 8
@PL_statname = dso_local local_unnamed_addr global ptr null, align 8
@.str.671 = private unnamed_addr constant [4 x i8] c" \0A-\00", align 1
@PL_chopset = dso_local local_unnamed_addr global ptr @.str.671, align 8
@PL_errors = dso_local local_unnamed_addr global ptr null, align 8
@PL_dumpindent = dso_local local_unnamed_addr global i16 4, align 2
@PL_peepp = dso_local local_unnamed_addr global ptr @Perl_peep, align 8
@PL_rpeepp = dso_local local_unnamed_addr global ptr @Perl_rpeep, align 8
@PL_opfreehook = dso_local local_unnamed_addr global ptr null, align 8
@PL_watchaddr = dso_local local_unnamed_addr global ptr null, align 8
@PL_xsubfilename = dso_local local_unnamed_addr global ptr null, align 8
@.str.672 = private unnamed_addr constant [2 x i8] c" \00", align 1
@PL_splitstr = dso_local local_unnamed_addr global ptr @.str.672, align 8
@PL_maxsysfd = dso_local local_unnamed_addr global i32 2, align 4
@PL_sig_pending = dso_local local_unnamed_addr global i32 0, align 4
@PL_op_mask = dso_local local_unnamed_addr global ptr null, align 8
@PL_curcopdb = dso_local local_unnamed_addr global ptr null, align 8
@PL_gensym = dso_local local_unnamed_addr global i32 0, align 4
@PL_cv_has_eval = dso_local local_unnamed_addr global i8 0, align 1
@PL_laststype = dso_local local_unnamed_addr global i16 265, align 2
@PL_laststatval = dso_local local_unnamed_addr global i32 -1, align 4
@PL_exitlistlen = dso_local local_unnamed_addr global i32 0, align 4
@PL_exitlist = dso_local local_unnamed_addr global ptr null, align 8
@PL_profiledata = dso_local local_unnamed_addr global ptr null, align 8
@PL_generation = dso_local local_unnamed_addr global i32 100, align 4
@PL_in_clean_objs = dso_local local_unnamed_addr global i8 0, align 1
@PL_in_clean_all = dso_local local_unnamed_addr global i8 0, align 1
@PL_savebegin = dso_local local_unnamed_addr global i8 0, align 1
@PL_an = dso_local local_unnamed_addr global i32 0, align 4
@PL_breakable_sub_gen = dso_local local_unnamed_addr global i32 0, align 4
@PL_cop_seqmax = dso_local local_unnamed_addr global i32 0, align 4
@PL_evalseq = dso_local local_unnamed_addr global i32 0, align 4
@PL_maxo = dso_local local_unnamed_addr global i32 396, align 4
@PL_runops = dso_local local_unnamed_addr global ptr @Perl_runops_standard, align 8
@PL_phase = dso_local local_unnamed_addr global i32 0, align 4
@PL_in_load_module = dso_local local_unnamed_addr global i8 0, align 1
@PL_perl_destruct_level = dso_local local_unnamed_addr global i8 0, align 1
@PL_beginav_save = dso_local local_unnamed_addr global ptr null, align 8
@PL_perlio = dso_local local_unnamed_addr global ptr null, align 8
@PL_known_layers = dso_local local_unnamed_addr global ptr null, align 8
@PL_def_layerlist = dso_local local_unnamed_addr global ptr null, align 8
@PL_encoding = dso_local local_unnamed_addr global ptr null, align 8
@PL_lex_encoding = dso_local local_unnamed_addr global ptr null, align 8
@PL_checkav_save = dso_local local_unnamed_addr global ptr null, align 8
@PL_unitcheckav_save = dso_local local_unnamed_addr global ptr null, align 8
@PL_clocktick = dso_local local_unnamed_addr global i64 0, align 8
@PL_sharehook = dso_local local_unnamed_addr global ptr @Perl_sv_nosharing, align 8
@PL_lockhook = dso_local local_unnamed_addr global ptr @Perl_sv_nosharing, align 8
@PL_unlockhook = dso_local local_unnamed_addr global ptr @Perl_sv_nounlocking, align 8
@PL_threadhook = dso_local local_unnamed_addr global ptr @Perl_nothreadhook, align 8
@PL_destroyhook = dso_local local_unnamed_addr global ptr @Perl_sv_destroyable, align 8
@PL_signalhook = dso_local local_unnamed_addr global ptr @Perl_despatch_signals, align 8
@PL_isarev = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_foldclosures = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_foldable = dso_local local_unnamed_addr global ptr null, align 8
@PL_scopestack_name = dso_local local_unnamed_addr global ptr null, align 8
@PL_globhook = dso_local local_unnamed_addr global ptr null, align 8
@PL_padlist_generation = dso_local local_unnamed_addr global i32 1, align 4
@PL_curinterp = dso_local local_unnamed_addr global ptr null, align 8
@PL_do_undump = dso_local local_unnamed_addr global i8 0, align 1
@PL_use_safe_putenv = dso_local local_unnamed_addr global i8 1, align 1
@PL_sig_trapped = dso_local local_unnamed_addr global i32 0, align 4
@PL_csighandlerp = dso_local local_unnamed_addr global ptr @Perl_csighandler, align 8
@PL_perlio_fd_refcnt = dso_local local_unnamed_addr global ptr null, align 8
@PL_perlio_fd_refcnt_size = dso_local local_unnamed_addr global i32 0, align 4
@PL_perlio_debug_fd = dso_local local_unnamed_addr global i32 0, align 4
@PL_veto_cleanup = dso_local local_unnamed_addr global i32 0, align 4
@PL_keyword_plugin = dso_local local_unnamed_addr global ptr @Perl_keyword_plugin_standard, align 8
@PL_op_sequence = dso_local local_unnamed_addr global ptr null, align 8
@PL_op_seq = dso_local local_unnamed_addr global i64 0, align 8
@PL_hash_seed_set = dso_local local_unnamed_addr global i8 0, align 1
@PL_runops_std = dso_local local_unnamed_addr constant ptr @Perl_runops_standard, align 8
@PL_runops_dbg = dso_local local_unnamed_addr constant ptr @Perl_runops_debug, align 8
@.str.673 = private unnamed_addr constant [7 x i8] c"arylen\00", align 1
@.str.674 = private unnamed_addr constant [9 x i8] c"arylen_p\00", align 1
@.str.675 = private unnamed_addr constant [8 x i8] c"backref\00", align 1
@.str.676 = private unnamed_addr constant [10 x i8] c"checkcall\00", align 1
@.str.677 = private unnamed_addr constant [9 x i8] c"collxfrm\00", align 1
@.str.678 = private unnamed_addr constant [7 x i8] c"dbline\00", align 1
@.str.679 = private unnamed_addr constant [9 x i8] c"debugvar\00", align 1
@.str.680 = private unnamed_addr constant [8 x i8] c"defelem\00", align 1
@.str.681 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@.str.682 = private unnamed_addr constant [8 x i8] c"envelem\00", align 1
@.str.683 = private unnamed_addr constant [6 x i8] c"hints\00", align 1
@.str.684 = private unnamed_addr constant [10 x i8] c"hintselem\00", align 1
@.str.685 = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@.str.686 = private unnamed_addr constant [8 x i8] c"isaelem\00", align 1
@.str.687 = private unnamed_addr constant [6 x i8] c"mglob\00", align 1
@.str.688 = private unnamed_addr constant [6 x i8] c"nkeys\00", align 1
@.str.689 = private unnamed_addr constant [6 x i8] c"ovrld\00", align 1
@.str.690 = private unnamed_addr constant [9 x i8] c"packelem\00", align 1
@.str.691 = private unnamed_addr constant [8 x i8] c"regdata\00", align 1
@.str.692 = private unnamed_addr constant [9 x i8] c"regdatum\00", align 1
@.str.693 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1
@.str.694 = private unnamed_addr constant [8 x i8] c"sigelem\00", align 1
@.str.695 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@.str.696 = private unnamed_addr constant [6 x i8] c"taint\00", align 1
@.str.697 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.698 = private unnamed_addr constant [5 x i8] c"uvar\00", align 1
@PL_magic_vtable_names = dso_local local_unnamed_addr constant [31 x ptr] [ptr @.str.673, ptr @.str.674, ptr @.str.675, ptr @.str.676, ptr @.str.677, ptr @.str.678, ptr @.str.679, ptr @.str.680, ptr @.str.681, ptr @.str.682, ptr @.str.683, ptr @.str.684, ptr @.str.685, ptr @.str.686, ptr @.str.427, ptr @.str.687, ptr @.str.688, ptr @.str.689, ptr @.str.190, ptr @.str.690, ptr @.str.81, ptr @.str.691, ptr @.str.692, ptr @.str.693, ptr @.str.694, ptr @.str.156, ptr @.str.695, ptr @.str.696, ptr @.str.697, ptr @.str.698, ptr @.str.157], align 16
@PL_magic_vtables = dso_local local_unnamed_addr constant [31 x %struct.mgvtbl] [%struct.mgvtbl { ptr @Perl_magic_getarylen, ptr @Perl_magic_setarylen, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr null, ptr null, ptr @Perl_magic_cleararylen_p, ptr @Perl_magic_freearylen_p, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr null, ptr null, ptr null, ptr @Perl_magic_killbackrefs, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @Perl_magic_copycallchecker, ptr null, ptr null }, %struct.mgvtbl zeroinitializer, %struct.mgvtbl { ptr null, ptr @Perl_magic_setdbline, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr @Perl_magic_getdebugvar, ptr @Perl_magic_setdebugvar, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr @Perl_magic_getdefelem, ptr @Perl_magic_setdefelem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr @Perl_magic_set_all_env, ptr null, ptr @Perl_magic_clear_all_env, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr @Perl_magic_setenv, ptr null, ptr @Perl_magic_clearenv, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr null, ptr null, ptr @Perl_magic_clearhints, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr @Perl_magic_sethint, ptr null, ptr @Perl_magic_clearhint, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr @Perl_magic_setisa, ptr null, ptr @Perl_magic_clearisa, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr @Perl_magic_setisa, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr @Perl_magic_setlvref, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr @Perl_magic_setmglob, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr @Perl_magic_getnkeys, ptr @Perl_magic_setnkeys, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr null, ptr null, ptr null, ptr @Perl_magic_freeovrld, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr null, ptr @Perl_magic_sizepack, ptr @Perl_magic_wipepack, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr @Perl_magic_getpack, ptr @Perl_magic_setpack, ptr null, ptr @Perl_magic_clearpack, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr @Perl_magic_getpos, ptr @Perl_magic_setpos, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr null, ptr @Perl_magic_regdata_cnt, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr @Perl_magic_regdatum_get, ptr @Perl_magic_regdatum_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr @Perl_magic_setregexp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr @Perl_magic_getsig, ptr @Perl_magic_setsig, ptr null, ptr @Perl_magic_clearsig, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr @Perl_magic_getsubstr, ptr @Perl_magic_setsubstr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr @Perl_magic_get, ptr @Perl_magic_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr @Perl_magic_gettaint, ptr @Perl_magic_settaint, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr null, ptr @Perl_magic_setutf8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr @Perl_magic_getuvar, ptr @Perl_magic_setuvar, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.mgvtbl { ptr @Perl_magic_getvec, ptr @Perl_magic_setvec, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], align 16
@PL_magic_data = dso_local local_unnamed_addr constant <{ [127 x i8], [129 x i8] }> <{ [127 x i8] c"Z\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\9F\00\00\00\00\06\00\00\00\94\00\00\00\00\00\00\00\00\00\00\00\9F\00\C2\00\00\00\9F\00\D7\00\15\08\00\00\0A\0C\00\00\1F\00\00\00\92\00\00\1F\00\1D\9F\00\00\00\00\00\0E\83\00\00\00\00\00\11\16\09\D7\CF\0B\0D\00\90\05\00\00\84\13\13\D7\18\9B\00\9E\9C\99\87\00\00\00\00_", [129 x i8] zeroinitializer }>, align 16
@PL_valid_types_IVX = dso_local local_unnamed_addr constant [16 x i8] c"\00\01\00\00\00\01\01\01\00\01\01\00\00\00\00\00", align 16
@PL_valid_types_NVX = dso_local local_unnamed_addr constant [16 x i8] c"\00\00\01\00\00\00\01\01\00\01\01\00\00\00\00\00", align 16
@PL_valid_types_PVX = dso_local local_unnamed_addr constant [16 x i8] c"\00\00\00\01\01\01\01\01\00\01\01\00\00\01\01\01", align 16
@PL_valid_types_RV = dso_local local_unnamed_addr constant [16 x i8] c"\00\01\00\01\00\01\01\01\01\01\01\00\00\00\00\01", align 16
@PL_valid_types_IV_set = dso_local local_unnamed_addr constant [16 x i8] c"\00\01\00\00\00\01\01\01\01\01\01\00\00\00\01\01", align 16
@PL_valid_types_NV_set = dso_local local_unnamed_addr constant [16 x i8] c"\00\00\01\00\00\00\01\01\01\01\01\00\00\00\00\00", align 16
@PL_stack_sp = dso_local local_unnamed_addr global ptr null, align 8
@PL_op = dso_local local_unnamed_addr global ptr null, align 8
@PL_curpad = dso_local local_unnamed_addr global ptr null, align 8
@PL_stack_base = dso_local local_unnamed_addr global ptr null, align 8
@PL_stack_max = dso_local local_unnamed_addr global ptr null, align 8
@PL_savestack = dso_local local_unnamed_addr global ptr null, align 8
@PL_savestack_ix = dso_local local_unnamed_addr global i32 0, align 4
@PL_savestack_max = dso_local local_unnamed_addr global i32 0, align 4
@PL_scopestack = dso_local local_unnamed_addr global ptr null, align 8
@PL_scopestack_ix = dso_local local_unnamed_addr global i32 0, align 4
@PL_scopestack_max = dso_local local_unnamed_addr global i32 0, align 4
@PL_tmps_stack = dso_local local_unnamed_addr global ptr null, align 8
@PL_tmps_max = dso_local local_unnamed_addr global i64 0, align 8
@PL_markstack = dso_local local_unnamed_addr global ptr null, align 8
@PL_markstack_ptr = dso_local local_unnamed_addr global ptr null, align 8
@PL_markstack_max = dso_local local_unnamed_addr global ptr null, align 8
@PL_strtab = dso_local local_unnamed_addr global ptr null, align 8
@PL_multideref_pc = dso_local local_unnamed_addr global ptr null, align 8
@PL_curpm = dso_local local_unnamed_addr global ptr null, align 8
@PL_tainting = dso_local local_unnamed_addr global i8 0, align 1
@PL_tainted = dso_local local_unnamed_addr global i8 0, align 1
@PL_delaymagic = dso_local local_unnamed_addr global i16 0, align 2
@PL_localizing = dso_local local_unnamed_addr global i8 0, align 1
@PL_in_eval = dso_local local_unnamed_addr global i8 0, align 1
@PL_defgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_dowarn = dso_local local_unnamed_addr global i8 0, align 1
@PL_defstash = dso_local local_unnamed_addr global ptr null, align 8
@PL_curstash = dso_local local_unnamed_addr global ptr null, align 8
@PL_curcop = dso_local local_unnamed_addr global ptr null, align 8
@PL_curstack = dso_local local_unnamed_addr global ptr null, align 8
@PL_curstackinfo = dso_local local_unnamed_addr global ptr null, align 8
@PL_mainstack = dso_local local_unnamed_addr global ptr null, align 8
@PL_sv_count = dso_local local_unnamed_addr global i64 0, align 8
@PL_sv_root = dso_local local_unnamed_addr global ptr null, align 8
@PL_sv_arenaroot = dso_local local_unnamed_addr global ptr null, align 8
@PL_regmatch_state = dso_local local_unnamed_addr global ptr null, align 8
@PL_comppad = dso_local local_unnamed_addr global ptr null, align 8
@PL_sv_undef = dso_local local_unnamed_addr global %struct.sv zeroinitializer, align 8
@PL_sv_no = dso_local local_unnamed_addr global %struct.sv zeroinitializer, align 8
@PL_sv_yes = dso_local local_unnamed_addr global %struct.sv zeroinitializer, align 8
@PL_padname_undef = dso_local local_unnamed_addr global %struct.padname zeroinitializer, align 8
@PL_padname_const = dso_local local_unnamed_addr global %struct.padname zeroinitializer, align 8
@PL_Sv = dso_local local_unnamed_addr global ptr null, align 8
@PL_parser = dso_local local_unnamed_addr global ptr null, align 8
@PL_stashcache = dso_local local_unnamed_addr global ptr null, align 8
@PL_na = dso_local local_unnamed_addr global i64 0, align 8
@PL_statbuf = dso_local local_unnamed_addr global %struct.stat zeroinitializer, align 8
@PL_statcache = dso_local local_unnamed_addr global %struct.stat zeroinitializer, align 8
@PL_statgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_rs = dso_local local_unnamed_addr global ptr null, align 8
@PL_last_in_gv = dso_local local_unnamed_addr global ptr null, align 8
@PL_ofsgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_defoutgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_formtarget = dso_local local_unnamed_addr global ptr null, align 8
@PL_bodytarget = dso_local local_unnamed_addr global ptr null, align 8
@PL_toptarget = dso_local local_unnamed_addr global ptr null, align 8
@PL_restartop = dso_local local_unnamed_addr global ptr null, align 8
@PL_restartjmpenv = dso_local local_unnamed_addr global ptr null, align 8
@PL_top_env = dso_local local_unnamed_addr global ptr null, align 8
@PL_start_env = dso_local local_unnamed_addr global %struct.jmpenv zeroinitializer, align 8
@PL_hv_fetch_ent_mh = dso_local local_unnamed_addr global ptr null, align 8
@PL_lastgotoprobe = dso_local local_unnamed_addr global ptr null, align 8
@PL_sortcop = dso_local local_unnamed_addr global ptr null, align 8
@PL_sortstash = dso_local local_unnamed_addr global ptr null, align 8
@PL_firstgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_secondgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_efloatbuf = dso_local local_unnamed_addr global ptr null, align 8
@PL_efloatsize = dso_local local_unnamed_addr global i64 0, align 8
@PL_exit_flags = dso_local local_unnamed_addr global i8 0, align 1
@PL_utf8locale = dso_local local_unnamed_addr global i8 0, align 1
@PL_in_utf8_CTYPE_locale = dso_local local_unnamed_addr global i8 0, align 1
@PL_colors = dso_local local_unnamed_addr global [6 x ptr] zeroinitializer, align 16
@PL_watchok = dso_local local_unnamed_addr global ptr null, align 8
@PL_perldb = dso_local local_unnamed_addr global i32 0, align 4
@PL_signals = dso_local local_unnamed_addr global i32 0, align 4
@PL_reentrant_retint = dso_local local_unnamed_addr global i32 0, align 4
@PL_origargc = dso_local local_unnamed_addr global i32 0, align 4
@PL_origargv = dso_local local_unnamed_addr global ptr null, align 8
@PL_envgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_incgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_hintgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_origfilename = dso_local local_unnamed_addr global ptr null, align 8
@PL_diehook = dso_local local_unnamed_addr global ptr null, align 8
@PL_warnhook = dso_local local_unnamed_addr global ptr null, align 8
@PL_patchlevel = dso_local local_unnamed_addr global ptr null, align 8
@PL_localpatches = dso_local local_unnamed_addr global ptr null, align 8
@PL_minus_c = dso_local local_unnamed_addr global i8 0, align 1
@PL_minus_n = dso_local local_unnamed_addr global i8 0, align 1
@PL_minus_p = dso_local local_unnamed_addr global i8 0, align 1
@PL_minus_l = dso_local local_unnamed_addr global i8 0, align 1
@PL_minus_a = dso_local local_unnamed_addr global i8 0, align 1
@PL_minus_F = dso_local local_unnamed_addr global i8 0, align 1
@PL_doswitches = dso_local local_unnamed_addr global i8 0, align 1
@PL_minus_E = dso_local local_unnamed_addr global i8 0, align 1
@PL_inplace = dso_local local_unnamed_addr global ptr null, align 8
@PL_e_script = dso_local local_unnamed_addr global ptr null, align 8
@PL_basetime = dso_local local_unnamed_addr global i64 0, align 8
@PL_statusvalue = dso_local local_unnamed_addr global i32 0, align 4
@PL_statusvalue_posix = dso_local local_unnamed_addr global i32 0, align 4
@PL_psig_pend = dso_local local_unnamed_addr global ptr null, align 8
@PL_stdingv = dso_local local_unnamed_addr global ptr null, align 8
@PL_stderrgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_argvgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_argvoutgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_argvout_stack = dso_local local_unnamed_addr global ptr null, align 8
@PL_replgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_errgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_DBgv = dso_local local_unnamed_addr global ptr null, align 8
@PL_DBline = dso_local local_unnamed_addr global ptr null, align 8
@PL_DBsub = dso_local local_unnamed_addr global ptr null, align 8
@PL_DBsingle = dso_local local_unnamed_addr global ptr null, align 8
@PL_DBtrace = dso_local local_unnamed_addr global ptr null, align 8
@PL_DBsignal = dso_local local_unnamed_addr global ptr null, align 8
@PL_dbargs = dso_local local_unnamed_addr global ptr null, align 8
@PL_DBcontrol = dso_local local_unnamed_addr global [3 x i64] zeroinitializer, align 16
@PL_debstash = dso_local local_unnamed_addr global ptr null, align 8
@PL_globalstash = dso_local local_unnamed_addr global ptr null, align 8
@PL_curstname = dso_local local_unnamed_addr global ptr null, align 8
@PL_beginav = dso_local local_unnamed_addr global ptr null, align 8
@PL_endav = dso_local local_unnamed_addr global ptr null, align 8
@PL_unitcheckav = dso_local local_unnamed_addr global ptr null, align 8
@PL_checkav = dso_local local_unnamed_addr global ptr null, align 8
@PL_initav = dso_local local_unnamed_addr global ptr null, align 8
@PL_fdpid = dso_local local_unnamed_addr global ptr null, align 8
@PL_main_cv = dso_local local_unnamed_addr global ptr null, align 8
@PL_main_root = dso_local local_unnamed_addr global ptr null, align 8
@PL_main_start = dso_local local_unnamed_addr global ptr null, align 8
@PL_eval_root = dso_local local_unnamed_addr global ptr null, align 8
@PL_eval_start = dso_local local_unnamed_addr global ptr null, align 8
@PL_filemode = dso_local local_unnamed_addr global i32 0, align 4
@PL_lastfd = dso_local local_unnamed_addr global i32 0, align 4
@PL_oldname = dso_local local_unnamed_addr global ptr null, align 8
@PL_Argv = dso_local local_unnamed_addr global ptr null, align 8
@PL_Cmd = dso_local local_unnamed_addr global ptr null, align 8
@PL_preambleav = dso_local local_unnamed_addr global ptr null, align 8
@PL_mess_sv = dso_local local_unnamed_addr global ptr null, align 8
@PL_ors_sv = dso_local local_unnamed_addr global ptr null, align 8
@PL_forkprocess = dso_local local_unnamed_addr global i32 0, align 4
@PL_taint_warn = dso_local local_unnamed_addr global i8 0, align 1
@PL_modcount = dso_local local_unnamed_addr global i32 0, align 4
@PL_modglobal = dso_local local_unnamed_addr global ptr null, align 8
@PL_compiling = dso_local local_unnamed_addr global %struct.cop zeroinitializer, align 8
@PL_compcv = dso_local local_unnamed_addr global ptr null, align 8
@PL_comppad_name = dso_local local_unnamed_addr global ptr null, align 8
@PL_comppad_name_fill = dso_local local_unnamed_addr global i32 0, align 4
@PL_comppad_name_floor = dso_local local_unnamed_addr global i32 0, align 4
@PL_DBcv = dso_local local_unnamed_addr global ptr null, align 8
@PL_unicode = dso_local local_unnamed_addr global i32 0, align 4
@PL_nomemok = dso_local local_unnamed_addr global i8 0, align 1
@PL_delaymagic_uid = dso_local local_unnamed_addr global i32 0, align 4
@PL_delaymagic_euid = dso_local local_unnamed_addr global i32 0, align 4
@PL_delaymagic_gid = dso_local local_unnamed_addr global i32 0, align 4
@PL_delaymagic_egid = dso_local local_unnamed_addr global i32 0, align 4
@PL_origalen = dso_local local_unnamed_addr global i32 0, align 4
@PL_origenviron = dso_local local_unnamed_addr global ptr null, align 8
@PL_osname = dso_local local_unnamed_addr global ptr null, align 8
@PL_sighandlerp = dso_local local_unnamed_addr global ptr null, align 8
@PL_body_roots = dso_local local_unnamed_addr global [16 x ptr] zeroinitializer, align 16
@PL_debug = dso_local local_unnamed_addr global i32 0, align 4
@PL_subname = dso_local local_unnamed_addr global ptr null, align 8
@PL_subline = dso_local local_unnamed_addr global i32 0, align 4
@PL_min_intro_pending = dso_local local_unnamed_addr global i32 0, align 4
@PL_max_intro_pending = dso_local local_unnamed_addr global i32 0, align 4
@PL_padix = dso_local local_unnamed_addr global i32 0, align 4
@PL_constpadix = dso_local local_unnamed_addr global i32 0, align 4
@PL_padix_floor = dso_local local_unnamed_addr global i32 0, align 4
@PL_unsafe = dso_local local_unnamed_addr global i8 0, align 1
@PL_colorset = dso_local local_unnamed_addr global i8 0, align 1
@PL_Latin1 = dso_local local_unnamed_addr global ptr null, align 8
@PL_UpperLatin1 = dso_local local_unnamed_addr global ptr null, align 8
@PL_AboveLatin1 = dso_local local_unnamed_addr global ptr null, align 8
@PL_InBitmap = dso_local local_unnamed_addr global ptr null, align 8
@PL_NonL1NonFinalFold = dso_local local_unnamed_addr global ptr null, align 8
@PL_HasMultiCharFold = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_mark = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_toupper = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_totitle = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_tolower = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_tofold = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_charname_begin = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_charname_continue = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_swash_ptrs = dso_local local_unnamed_addr global [10 x ptr] zeroinitializer, align 16
@PL_Posix_ptrs = dso_local local_unnamed_addr global [16 x ptr] zeroinitializer, align 16
@PL_XPosix_ptrs = dso_local local_unnamed_addr global [16 x ptr] zeroinitializer, align 16
@PL_GCB_invlist = dso_local local_unnamed_addr global ptr null, align 8
@PL_SB_invlist = dso_local local_unnamed_addr global ptr null, align 8
@PL_WB_invlist = dso_local local_unnamed_addr global ptr null, align 8
@PL_last_swash_hv = dso_local local_unnamed_addr global ptr null, align 8
@PL_last_swash_tmps = dso_local local_unnamed_addr global ptr null, align 8
@PL_last_swash_slen = dso_local local_unnamed_addr global i64 0, align 8
@PL_last_swash_key = dso_local local_unnamed_addr global [12 x i8] zeroinitializer, align 1
@PL_last_swash_klen = dso_local local_unnamed_addr global i8 0, align 1
@PL_pad_reset_pending = dso_local local_unnamed_addr global i8 0, align 1
@PL_srand_called = dso_local local_unnamed_addr global i8 0, align 1
@PL_psig_ptr = dso_local local_unnamed_addr global ptr null, align 8
@PL_psig_name = dso_local local_unnamed_addr global ptr null, align 8
@PL_ptr_table = dso_local local_unnamed_addr global ptr null, align 8
@PL_body_arenas = dso_local local_unnamed_addr global ptr null, align 8
@PL_custom_op_names = dso_local local_unnamed_addr global ptr null, align 8
@PL_custom_op_descs = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_idstart = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_idcont = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_xidstart = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_perl_idstart = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_perl_idcont = dso_local local_unnamed_addr global ptr null, align 8
@PL_utf8_xidcont = dso_local local_unnamed_addr global ptr null, align 8
@PL_sort_RealCmp = dso_local local_unnamed_addr global ptr null, align 8
@PL_registered_mros = dso_local local_unnamed_addr global ptr null, align 8
@PL_blockhooks = dso_local local_unnamed_addr global ptr null, align 8
@PL_custom_ops = dso_local local_unnamed_addr global ptr null, align 8
@PL_Xpv = dso_local local_unnamed_addr global ptr null, align 8
@PL_debug_pad = dso_local local_unnamed_addr global %struct.perl_debug_pad zeroinitializer, align 8
@PL_sv_consts = dso_local local_unnamed_addr global [35 x ptr] zeroinitializer, align 16
@PL_random_state = dso_local local_unnamed_addr global i64 0, align 8
@PL_sigfpe_saved = dso_local local_unnamed_addr global ptr null, align 8
@PL_sv_placeholder = dso_local local_unnamed_addr global %struct.sv zeroinitializer, align 8
@PL_hash_seed = dso_local local_unnamed_addr global [8 x i8] zeroinitializer, align 1

; Function Attrs: optsize
declare ptr @Perl_pp_null() #0

; Function Attrs: optsize
declare ptr @Perl_pp_stub() #0

; Function Attrs: optsize
declare ptr @Perl_pp_pushmark() #0

; Function Attrs: optsize
declare ptr @Perl_pp_wantarray() #0

; Function Attrs: optsize
declare ptr @Perl_pp_const() #0

; Function Attrs: optsize
declare ptr @Perl_pp_gvsv() #0

; Function Attrs: optsize
declare ptr @Perl_pp_gv() #0

; Function Attrs: optsize
declare ptr @Perl_pp_gelem() #0

; Function Attrs: optsize
declare ptr @Perl_pp_padsv() #0

; Function Attrs: optsize
declare ptr @Perl_pp_padav() #0

; Function Attrs: optsize
declare ptr @Perl_pp_padhv() #0

; Function Attrs: optsize
declare ptr @Perl_unimplemented_op() #0

; Function Attrs: optsize
declare ptr @Perl_pp_pushre() #0

; Function Attrs: optsize
declare ptr @Perl_pp_rv2gv() #0

; Function Attrs: optsize
declare ptr @Perl_pp_rv2sv() #0

; Function Attrs: optsize
declare ptr @Perl_pp_av2arylen() #0

; Function Attrs: optsize
declare ptr @Perl_pp_rv2cv() #0

; Function Attrs: optsize
declare ptr @Perl_pp_anoncode() #0

; Function Attrs: optsize
declare ptr @Perl_pp_prototype() #0

; Function Attrs: optsize
declare ptr @Perl_pp_refgen() #0

; Function Attrs: optsize
declare ptr @Perl_pp_srefgen() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ref() #0

; Function Attrs: optsize
declare ptr @Perl_pp_bless() #0

; Function Attrs: optsize
declare ptr @Perl_pp_backtick() #0

; Function Attrs: optsize
declare ptr @Perl_pp_glob() #0

; Function Attrs: optsize
declare ptr @Perl_pp_readline() #0

; Function Attrs: optsize
declare ptr @Perl_pp_rcatline() #0

; Function Attrs: optsize
declare ptr @Perl_pp_regcreset() #0

; Function Attrs: optsize
declare ptr @Perl_pp_regcomp() #0

; Function Attrs: optsize
declare ptr @Perl_pp_match() #0

; Function Attrs: optsize
declare ptr @Perl_pp_qr() #0

; Function Attrs: optsize
declare ptr @Perl_pp_subst() #0

; Function Attrs: optsize
declare ptr @Perl_pp_substcont() #0

; Function Attrs: optsize
declare ptr @Perl_pp_trans() #0

; Function Attrs: optsize
declare ptr @Perl_pp_sassign() #0

; Function Attrs: optsize
declare ptr @Perl_pp_aassign() #0

; Function Attrs: optsize
declare ptr @Perl_pp_chop() #0

; Function Attrs: optsize
declare ptr @Perl_pp_schop() #0

; Function Attrs: optsize
declare ptr @Perl_pp_defined() #0

; Function Attrs: optsize
declare ptr @Perl_pp_undef() #0

; Function Attrs: optsize
declare ptr @Perl_pp_study() #0

; Function Attrs: optsize
declare ptr @Perl_pp_pos() #0

; Function Attrs: optsize
declare ptr @Perl_pp_preinc() #0

; Function Attrs: optsize
declare ptr @Perl_pp_postinc() #0

; Function Attrs: optsize
declare ptr @Perl_pp_pow() #0

; Function Attrs: optsize
declare ptr @Perl_pp_multiply() #0

; Function Attrs: optsize
declare ptr @Perl_pp_i_multiply() #0

; Function Attrs: optsize
declare ptr @Perl_pp_divide() #0

; Function Attrs: optsize
declare ptr @Perl_pp_i_divide() #0

; Function Attrs: optsize
declare ptr @Perl_pp_modulo() #0

; Function Attrs: optsize
declare ptr @Perl_pp_i_modulo() #0

; Function Attrs: optsize
declare ptr @Perl_pp_repeat() #0

; Function Attrs: optsize
declare ptr @Perl_pp_add() #0

; Function Attrs: optsize
declare ptr @Perl_pp_i_add() #0

; Function Attrs: optsize
declare ptr @Perl_pp_subtract() #0

; Function Attrs: optsize
declare ptr @Perl_pp_i_subtract() #0

; Function Attrs: optsize
declare ptr @Perl_pp_concat() #0

; Function Attrs: optsize
declare ptr @Perl_pp_stringify() #0

; Function Attrs: optsize
declare ptr @Perl_pp_left_shift() #0

; Function Attrs: optsize
declare ptr @Perl_pp_right_shift() #0

; Function Attrs: optsize
declare ptr @Perl_pp_lt() #0

; Function Attrs: optsize
declare ptr @Perl_pp_i_lt() #0

; Function Attrs: optsize
declare ptr @Perl_pp_gt() #0

; Function Attrs: optsize
declare ptr @Perl_pp_i_gt() #0

; Function Attrs: optsize
declare ptr @Perl_pp_le() #0

; Function Attrs: optsize
declare ptr @Perl_pp_i_le() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ge() #0

; Function Attrs: optsize
declare ptr @Perl_pp_i_ge() #0

; Function Attrs: optsize
declare ptr @Perl_pp_eq() #0

; Function Attrs: optsize
declare ptr @Perl_pp_i_eq() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ne() #0

; Function Attrs: optsize
declare ptr @Perl_pp_i_ne() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ncmp() #0

; Function Attrs: optsize
declare ptr @Perl_pp_i_ncmp() #0

; Function Attrs: optsize
declare ptr @Perl_pp_sle() #0

; Function Attrs: optsize
declare ptr @Perl_pp_seq() #0

; Function Attrs: optsize
declare ptr @Perl_pp_sne() #0

; Function Attrs: optsize
declare ptr @Perl_pp_scmp() #0

; Function Attrs: optsize
declare ptr @Perl_pp_bit_and() #0

; Function Attrs: optsize
declare ptr @Perl_pp_bit_or() #0

; Function Attrs: optsize
declare ptr @Perl_pp_nbit_and() #0

; Function Attrs: optsize
declare ptr @Perl_pp_nbit_or() #0

; Function Attrs: optsize
declare ptr @Perl_pp_sbit_and() #0

; Function Attrs: optsize
declare ptr @Perl_pp_sbit_or() #0

; Function Attrs: optsize
declare ptr @Perl_pp_negate() #0

; Function Attrs: optsize
declare ptr @Perl_pp_i_negate() #0

; Function Attrs: optsize
declare ptr @Perl_pp_not() #0

; Function Attrs: optsize
declare ptr @Perl_pp_complement() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ncomplement() #0

; Function Attrs: optsize
declare ptr @Perl_pp_scomplement() #0

; Function Attrs: optsize
declare ptr @Perl_pp_smartmatch() #0

; Function Attrs: optsize
declare ptr @Perl_pp_atan2() #0

; Function Attrs: optsize
declare ptr @Perl_pp_sin() #0

; Function Attrs: optsize
declare ptr @Perl_pp_rand() #0

; Function Attrs: optsize
declare ptr @Perl_pp_srand() #0

; Function Attrs: optsize
declare ptr @Perl_pp_int() #0

; Function Attrs: optsize
declare ptr @Perl_pp_oct() #0

; Function Attrs: optsize
declare ptr @Perl_pp_abs() #0

; Function Attrs: optsize
declare ptr @Perl_pp_length() #0

; Function Attrs: optsize
declare ptr @Perl_pp_substr() #0

; Function Attrs: optsize
declare ptr @Perl_pp_vec() #0

; Function Attrs: optsize
declare ptr @Perl_pp_index() #0

; Function Attrs: optsize
declare ptr @Perl_pp_sprintf() #0

; Function Attrs: optsize
declare ptr @Perl_pp_formline() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ord() #0

; Function Attrs: optsize
declare ptr @Perl_pp_chr() #0

; Function Attrs: optsize
declare ptr @Perl_pp_crypt() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ucfirst() #0

; Function Attrs: optsize
declare ptr @Perl_pp_uc() #0

; Function Attrs: optsize
declare ptr @Perl_pp_lc() #0

; Function Attrs: optsize
declare ptr @Perl_pp_quotemeta() #0

; Function Attrs: optsize
declare ptr @Perl_pp_rv2av() #0

; Function Attrs: optsize
declare ptr @Perl_pp_aelemfast() #0

; Function Attrs: optsize
declare ptr @Perl_pp_aelem() #0

; Function Attrs: optsize
declare ptr @Perl_pp_aslice() #0

; Function Attrs: optsize
declare ptr @Perl_pp_kvaslice() #0

; Function Attrs: optsize
declare ptr @Perl_pp_aeach() #0

; Function Attrs: optsize
declare ptr @Perl_pp_akeys() #0

; Function Attrs: optsize
declare ptr @Perl_pp_each() #0

; Function Attrs: optsize
declare ptr @Perl_do_kv() #0

; Function Attrs: optsize
declare ptr @Perl_pp_delete() #0

; Function Attrs: optsize
declare ptr @Perl_pp_exists() #0

; Function Attrs: optsize
declare ptr @Perl_pp_helem() #0

; Function Attrs: optsize
declare ptr @Perl_pp_hslice() #0

; Function Attrs: optsize
declare ptr @Perl_pp_kvhslice() #0

; Function Attrs: optsize
declare ptr @Perl_pp_multideref() #0

; Function Attrs: optsize
declare ptr @Perl_pp_unpack() #0

; Function Attrs: optsize
declare ptr @Perl_pp_pack() #0

; Function Attrs: optsize
declare ptr @Perl_pp_split() #0

; Function Attrs: optsize
declare ptr @Perl_pp_join() #0

; Function Attrs: optsize
declare ptr @Perl_pp_list() #0

; Function Attrs: optsize
declare ptr @Perl_pp_lslice() #0

; Function Attrs: optsize
declare ptr @Perl_pp_anonlist() #0

; Function Attrs: optsize
declare ptr @Perl_pp_anonhash() #0

; Function Attrs: optsize
declare ptr @Perl_pp_splice() #0

; Function Attrs: optsize
declare ptr @Perl_pp_push() #0

; Function Attrs: optsize
declare ptr @Perl_pp_shift() #0

; Function Attrs: optsize
declare ptr @Perl_pp_unshift() #0

; Function Attrs: optsize
declare ptr @Perl_pp_sort() #0

; Function Attrs: optsize
declare ptr @Perl_pp_reverse() #0

; Function Attrs: optsize
declare ptr @Perl_pp_grepstart() #0

; Function Attrs: optsize
declare ptr @Perl_pp_grepwhile() #0

; Function Attrs: optsize
declare ptr @Perl_pp_mapwhile() #0

; Function Attrs: optsize
declare ptr @Perl_pp_range() #0

; Function Attrs: optsize
declare ptr @Perl_pp_flip() #0

; Function Attrs: optsize
declare ptr @Perl_pp_flop() #0

; Function Attrs: optsize
declare ptr @Perl_pp_and() #0

; Function Attrs: optsize
declare ptr @Perl_pp_or() #0

; Function Attrs: optsize
declare ptr @Perl_pp_xor() #0

; Function Attrs: optsize
declare ptr @Perl_pp_cond_expr() #0

; Function Attrs: optsize
declare ptr @Perl_pp_method() #0

; Function Attrs: optsize
declare ptr @Perl_pp_entersub() #0

; Function Attrs: optsize
declare ptr @Perl_pp_leavesub() #0

; Function Attrs: optsize
declare ptr @Perl_pp_leavesublv() #0

; Function Attrs: optsize
declare ptr @Perl_pp_caller() #0

; Function Attrs: optsize
declare ptr @Perl_pp_warn() #0

; Function Attrs: optsize
declare ptr @Perl_pp_die() #0

; Function Attrs: optsize
declare ptr @Perl_pp_reset() #0

; Function Attrs: optsize
declare ptr @Perl_pp_nextstate() #0

; Function Attrs: optsize
declare ptr @Perl_pp_dbstate() #0

; Function Attrs: optsize
declare ptr @Perl_pp_unstack() #0

; Function Attrs: optsize
declare ptr @Perl_pp_enter() #0

; Function Attrs: optsize
declare ptr @Perl_pp_leave() #0

; Function Attrs: optsize
declare ptr @Perl_pp_enteriter() #0

; Function Attrs: optsize
declare ptr @Perl_pp_iter() #0

; Function Attrs: optsize
declare ptr @Perl_pp_enterloop() #0

; Function Attrs: optsize
declare ptr @Perl_pp_leaveloop() #0

; Function Attrs: optsize
declare ptr @Perl_pp_return() #0

; Function Attrs: optsize
declare ptr @Perl_pp_last() #0

; Function Attrs: optsize
declare ptr @Perl_pp_next() #0

; Function Attrs: optsize
declare ptr @Perl_pp_redo() #0

; Function Attrs: optsize
declare ptr @Perl_pp_goto() #0

; Function Attrs: optsize
declare ptr @Perl_pp_exit() #0

; Function Attrs: optsize
declare ptr @Perl_pp_method_named() #0

; Function Attrs: optsize
declare ptr @Perl_pp_method_super() #0

; Function Attrs: optsize
declare ptr @Perl_pp_method_redir() #0

; Function Attrs: optsize
declare ptr @Perl_pp_method_redir_super() #0

; Function Attrs: optsize
declare ptr @Perl_pp_entergiven() #0

; Function Attrs: optsize
declare ptr @Perl_pp_leavegiven() #0

; Function Attrs: optsize
declare ptr @Perl_pp_enterwhen() #0

; Function Attrs: optsize
declare ptr @Perl_pp_leavewhen() #0

; Function Attrs: optsize
declare ptr @Perl_pp_break() #0

; Function Attrs: optsize
declare ptr @Perl_pp_continue() #0

; Function Attrs: optsize
declare ptr @Perl_pp_open() #0

; Function Attrs: optsize
declare ptr @Perl_pp_close() #0

; Function Attrs: optsize
declare ptr @Perl_pp_pipe_op() #0

; Function Attrs: optsize
declare ptr @Perl_pp_fileno() #0

; Function Attrs: optsize
declare ptr @Perl_pp_umask() #0

; Function Attrs: optsize
declare ptr @Perl_pp_binmode() #0

; Function Attrs: optsize
declare ptr @Perl_pp_tie() #0

; Function Attrs: optsize
declare ptr @Perl_pp_untie() #0

; Function Attrs: optsize
declare ptr @Perl_pp_tied() #0

; Function Attrs: optsize
declare ptr @Perl_pp_dbmopen() #0

; Function Attrs: optsize
declare ptr @Perl_pp_sselect() #0

; Function Attrs: optsize
declare ptr @Perl_pp_select() #0

; Function Attrs: optsize
declare ptr @Perl_pp_getc() #0

; Function Attrs: optsize
declare ptr @Perl_pp_sysread() #0

; Function Attrs: optsize
declare ptr @Perl_pp_enterwrite() #0

; Function Attrs: optsize
declare ptr @Perl_pp_leavewrite() #0

; Function Attrs: optsize
declare ptr @Perl_pp_prtf() #0

; Function Attrs: optsize
declare ptr @Perl_pp_print() #0

; Function Attrs: optsize
declare ptr @Perl_pp_sysopen() #0

; Function Attrs: optsize
declare ptr @Perl_pp_sysseek() #0

; Function Attrs: optsize
declare ptr @Perl_pp_syswrite() #0

; Function Attrs: optsize
declare ptr @Perl_pp_eof() #0

; Function Attrs: optsize
declare ptr @Perl_pp_tell() #0

; Function Attrs: optsize
declare ptr @Perl_pp_truncate() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ioctl() #0

; Function Attrs: optsize
declare ptr @Perl_pp_flock() #0

; Function Attrs: optsize
declare ptr @Perl_pp_sockpair() #0

; Function Attrs: optsize
declare ptr @Perl_pp_stat() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ftrread() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ftis() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ftrowned() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ftlink() #0

; Function Attrs: optsize
declare ptr @Perl_pp_fttty() #0

; Function Attrs: optsize
declare ptr @Perl_pp_fttext() #0

; Function Attrs: optsize
declare ptr @Perl_pp_chdir() #0

; Function Attrs: optsize
declare ptr @Perl_pp_chown() #0

; Function Attrs: optsize
declare ptr @Perl_pp_chroot() #0

; Function Attrs: optsize
declare ptr @Perl_pp_rename() #0

; Function Attrs: optsize
declare ptr @Perl_pp_link() #0

; Function Attrs: optsize
declare ptr @Perl_pp_readlink() #0

; Function Attrs: optsize
declare ptr @Perl_pp_mkdir() #0

; Function Attrs: optsize
declare ptr @Perl_pp_rmdir() #0

; Function Attrs: optsize
declare ptr @Perl_pp_open_dir() #0

; Function Attrs: optsize
declare ptr @Perl_pp_readdir() #0

; Function Attrs: optsize
declare ptr @Perl_pp_telldir() #0

; Function Attrs: optsize
declare ptr @Perl_pp_seekdir() #0

; Function Attrs: optsize
declare ptr @Perl_pp_rewinddir() #0

; Function Attrs: optsize
declare ptr @Perl_pp_closedir() #0

; Function Attrs: optsize
declare ptr @Perl_pp_fork() #0

; Function Attrs: optsize
declare ptr @Perl_pp_wait() #0

; Function Attrs: optsize
declare ptr @Perl_pp_waitpid() #0

; Function Attrs: optsize
declare ptr @Perl_pp_system() #0

; Function Attrs: optsize
declare ptr @Perl_pp_exec() #0

; Function Attrs: optsize
declare ptr @Perl_pp_getppid() #0

; Function Attrs: optsize
declare ptr @Perl_pp_getpgrp() #0

; Function Attrs: optsize
declare ptr @Perl_pp_setpgrp() #0

; Function Attrs: optsize
declare ptr @Perl_pp_getpriority() #0

; Function Attrs: optsize
declare ptr @Perl_pp_setpriority() #0

; Function Attrs: optsize
declare ptr @Perl_pp_time() #0

; Function Attrs: optsize
declare ptr @Perl_pp_tms() #0

; Function Attrs: optsize
declare ptr @Perl_pp_gmtime() #0

; Function Attrs: optsize
declare ptr @Perl_pp_alarm() #0

; Function Attrs: optsize
declare ptr @Perl_pp_sleep() #0

; Function Attrs: optsize
declare ptr @Perl_pp_semget() #0

; Function Attrs: optsize
declare ptr @Perl_pp_semctl() #0

; Function Attrs: optsize
declare ptr @Perl_pp_shmwrite() #0

; Function Attrs: optsize
declare ptr @Perl_pp_require() #0

; Function Attrs: optsize
declare ptr @Perl_pp_hintseval() #0

; Function Attrs: optsize
declare ptr @Perl_pp_entereval() #0

; Function Attrs: optsize
declare ptr @Perl_pp_leaveeval() #0

; Function Attrs: optsize
declare ptr @Perl_pp_entertry() #0

; Function Attrs: optsize
declare ptr @Perl_pp_leavetry() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ghostent() #0

; Function Attrs: optsize
declare ptr @Perl_pp_gnetent() #0

; Function Attrs: optsize
declare ptr @Perl_pp_gprotoent() #0

; Function Attrs: optsize
declare ptr @Perl_pp_gservent() #0

; Function Attrs: optsize
declare ptr @Perl_pp_shostent() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ehostent() #0

; Function Attrs: optsize
declare ptr @Perl_pp_gpwent() #0

; Function Attrs: optsize
declare ptr @Perl_pp_ggrent() #0

; Function Attrs: optsize
declare ptr @Perl_pp_getlogin() #0

; Function Attrs: optsize
declare ptr @Perl_pp_syscall() #0

; Function Attrs: optsize
declare ptr @Perl_pp_lock() #0

; Function Attrs: optsize
declare ptr @Perl_pp_once() #0

; Function Attrs: optsize
declare ptr @Perl_pp_rkeys() #0

; Function Attrs: optsize
declare ptr @Perl_pp_coreargs() #0

; Function Attrs: optsize
declare ptr @Perl_pp_runcv() #0

; Function Attrs: optsize
declare ptr @Perl_pp_fc() #0

; Function Attrs: optsize
declare ptr @Perl_pp_padcv() #0

; Function Attrs: optsize
declare ptr @Perl_pp_introcv() #0

; Function Attrs: optsize
declare ptr @Perl_pp_clonecv() #0

; Function Attrs: optsize
declare ptr @Perl_pp_padrange() #0

; Function Attrs: optsize
declare ptr @Perl_pp_refassign() #0

; Function Attrs: optsize
declare ptr @Perl_pp_lvref() #0

; Function Attrs: optsize
declare ptr @Perl_pp_lvrefslice() #0

; Function Attrs: optsize
declare ptr @Perl_pp_lvavref() #0

; Function Attrs: optsize
declare ptr @Perl_pp_anonconst() #0

; Function Attrs: optsize
declare ptr @Perl_ck_null(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_fun(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_svconst(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_rvconst(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_anoncode(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_prototype(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_spair(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_backtick(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_glob(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_readline(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_match(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_sassign(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_defined(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_lfun(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_repeat(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_concat(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_stringify(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_bitop(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_cmp(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_smartmatch(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_length(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_substr(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_index(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_each(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_delete(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_exists(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_split(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_join(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_shift(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_sort(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_grep(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_method(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_subr(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_return(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_open(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_select(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_eof(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_listiob(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_tell(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_trunc(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_ftst(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_exec(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_require(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_eval(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_rfun(ptr noundef) #0

; Function Attrs: optsize
declare ptr @Perl_ck_refassign(ptr noundef) #0

; Function Attrs: optsize
declare void @Perl_peep(ptr noundef) #0

; Function Attrs: optsize
declare void @Perl_rpeep(ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_runops_standard() #0

; Function Attrs: optsize
declare void @Perl_sv_nosharing(ptr noundef) #0

; Function Attrs: optsize
declare void @Perl_sv_nounlocking(ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_nothreadhook() #0

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_destroyable(ptr noundef) #0

; Function Attrs: optsize
declare void @Perl_despatch_signals() #0

; Function Attrs: optsize
declare void @Perl_csighandler(i32 noundef) #0

; Function Attrs: optsize
declare i32 @Perl_keyword_plugin_standard(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_runops_debug() #0

; Function Attrs: optsize
declare i32 @Perl_magic_getarylen(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setarylen(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_cleararylen_p(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_freearylen_p(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_killbackrefs(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_copycallchecker(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setdbline(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getdebugvar(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setdebugvar(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getdefelem(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setdefelem(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_set_all_env(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_clear_all_env(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setenv(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_clearenv(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_clearhints(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_sethint(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_clearhint(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setisa(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_clearisa(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setlvref(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setmglob(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getnkeys(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setnkeys(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_freeovrld(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_sizepack(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_wipepack(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getpack(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setpack(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_clearpack(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getpos(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setpos(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_regdata_cnt(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_regdatum_get(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_regdatum_set(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setregexp(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getsig(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setsig(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_clearsig(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getsubstr(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setsubstr(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_get(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_set(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_gettaint(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_settaint(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setutf8(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getuvar(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setuvar(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_getvec(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @Perl_magic_setvec(ptr noundef, ptr noundef) #0

attributes #0 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491971510}
!4 = !{!"MaxCount", i64 4342352624}
!5 = !{!"MaxInternalCount", i64 4342352624}
!6 = !{!"MaxFunctionCount", i64 3033009960}
!7 = !{!"NumCounts", i64 40262}
!8 = !{!"NumFunctions", i64 2170}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 4342352624, i32 1}
!14 = !{i32 100000, i64 3033009960, i32 2}
!15 = !{i32 200000, i64 2317897115, i32 3}
!16 = !{i32 300000, i64 528717179, i32 7}
!17 = !{i32 400000, i64 462639867, i32 16}
!18 = !{i32 500000, i64 457545339, i32 26}
!19 = !{i32 600000, i64 423510107, i32 35}
!20 = !{i32 700000, i64 420555191, i32 45}
!21 = !{i32 800000, i64 220071415, i32 59}
!22 = !{i32 900000, i64 40456743, i32 99}
!23 = !{i32 950000, i64 21523442, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 63, i32 4652}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
