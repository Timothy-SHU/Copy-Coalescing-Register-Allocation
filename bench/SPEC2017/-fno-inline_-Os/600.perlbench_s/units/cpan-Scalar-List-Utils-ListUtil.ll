; ModuleID = 'cpan/Scalar-List-Utils/ListUtil.c'
source_filename = "cpan/Scalar-List-Utils/ListUtil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.mgvtbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon, ptr, %union.anon.0, %union.anon.1, %union.anon.2, ptr, %union.anon.3, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.9, %union._xivu }
%union.anon.9 = type { i64 }
%union._xivu = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu }
%union.anon.10 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.11, %union._xivu, %union._xnvu }
%union.anon.11 = type { i64 }
%union._xnvu = type { double }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.12 }
%union.anon.12 = type { i64 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], ptr, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.context = type { %union.anon.14 }
%union.anon.14 = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block = type { i8, i8, i16, i32, ptr, i32, i32, ptr, %union.anon.15 }
%union.anon.15 = type { %struct.block_sub }
%struct.block_sub = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.padlist = type { i64, ptr, i32, i32 }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.io = type { ptr, i32, i32, %union.anon.21 }
%union.anon.21 = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.cv = type { ptr, i32, i32, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.22, %union._xivu, %union._xnvu }
%union.anon.22 = type { i64 }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.8, %union._xivu, %union._xnvu }
%union.anon.8 = type { i64 }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }

@.str = private unnamed_addr constant [34 x i8] c"cpan/Scalar-List-Utils/ListUtil.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"List::Util::max\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"List::Util::min\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"List::Util::product\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"List::Util::sum\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"List::Util::sum0\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"List::Util::maxstr\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"List::Util::minstr\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"List::Util::reduce\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"&@\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"List::Util::first\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"List::Util::all\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"List::Util::any\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"List::Util::none\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"List::Util::notall\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"List::Util::pairfirst\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"List::Util::pairgrep\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"List::Util::pairmap\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"List::Util::pairs\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"List::Util::pairkeys\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"List::Util::pairvalues\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"List::Util::shuffle\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Scalar::Util::dualvar\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"Scalar::Util::isdual\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Scalar::Util::blessed\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"Scalar::Util::reftype\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Scalar::Util::refaddr\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Scalar::Util::weaken\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"Scalar::Util::unweaken\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"Scalar::Util::isweak\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"Scalar::Util::readonly\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Scalar::Util::tainted\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"Scalar::Util::isvstring\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"Scalar::Util::looks_like_number\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"Scalar::Util::openhandle\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"Sub::Util::set_prototype\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"Sub::Util::set_subname\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"Sub::Util::subname\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"List::Util\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"REAL_MULTICALL\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_op = external global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.44 = private unnamed_addr constant [11 x i8] c"block, ...\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"Not a subroutine reference\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@PL_top_env = external local_unnamed_addr global ptr, align 8
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_markstack = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@PL_curpm = external local_unnamed_addr global ptr, align 8
@PL_comppad = external local_unnamed_addr global ptr, align 8
@PL_runops = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_Sv = external local_unnamed_addr global ptr, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.48 = private unnamed_addr constant [36 x i8] c"Odd number of elements in pairfirst\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"Odd number of elements in pairgrep\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"Odd number of elements in pairmap\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"List::Util::_Pair::\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"Odd number of elements in pairs\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"Odd number of elements in pairkeys\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"Odd number of elements in pairvalues\00", align 1
@PL_srand_called = external local_unnamed_addr global i8, align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"num, str\00", align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"Can't unweaken a nonreference\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"Reference is not weak\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"proto, code\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"set_prototype: not a reference\00", align 1
@.str.61 = private unnamed_addr constant [42 x i8] c"set_prototype: not a subroutine reference\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"name, sub\00", align 1
@PL_no_usym = external constant [0 x i8], align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"a subroutine\00", align 1
@.str.64 = private unnamed_addr constant [64 x i8] c"Can't use string (\22%.32s\22) as %s ref while \22strict refs\22 in use\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"Undefined subroutine %s\00", align 1
@PL_DBsub = external local_unnamed_addr global ptr, align 8
@.str.66 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@subname_vtbl = internal global %struct.mgvtbl zeroinitializer, align 8
@.str.67 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"%s::%s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_List__Util(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_List__Util_min, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #11
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 5
  store i32 1, ptr %5, align 8, !tbaa !42
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_List__Util_min, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #11
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.xpvcv, ptr %7, i64 0, i32 5
  store i32 0, ptr %8, align 8, !tbaa !42
  %9 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_List__Util_sum, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #11
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 5
  store i32 2, ptr %11, align 8, !tbaa !42
  %12 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_List__Util_sum, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #11
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  %14 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 5
  store i32 0, ptr %14, align 8, !tbaa !42
  %15 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_List__Util_sum, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #11
  %16 = load ptr, ptr %15, align 8, !tbaa !36
  %17 = getelementptr inbounds %struct.xpvcv, ptr %16, i64 0, i32 5
  store i32 1, ptr %17, align 8, !tbaa !42
  %18 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_List__Util_minstr, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #11
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = getelementptr inbounds %struct.xpvcv, ptr %19, i64 0, i32 5
  store i32 -1, ptr %20, align 8, !tbaa !42
  %21 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_List__Util_minstr, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #11
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.xpvcv, ptr %22, i64 0, i32 5
  store i32 1, ptr %23, align 8, !tbaa !42
  %24 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_List__Util_reduce, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #11
  %25 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_List__Util_first, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #11
  %26 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_List__Util_any, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #11
  %27 = load ptr, ptr %26, align 8, !tbaa !36
  %28 = getelementptr inbounds %struct.xpvcv, ptr %27, i64 0, i32 5
  store i32 1, ptr %28, align 8, !tbaa !42
  %29 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_List__Util_any, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #11
  %30 = load ptr, ptr %29, align 8, !tbaa !36
  %31 = getelementptr inbounds %struct.xpvcv, ptr %30, i64 0, i32 5
  store i32 2, ptr %31, align 8, !tbaa !42
  %32 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_List__Util_any, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #11
  %33 = load ptr, ptr %32, align 8, !tbaa !36
  %34 = getelementptr inbounds %struct.xpvcv, ptr %33, i64 0, i32 5
  store i32 0, ptr %34, align 8, !tbaa !42
  %35 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.16, ptr noundef nonnull @XS_List__Util_any, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #11
  %36 = load ptr, ptr %35, align 8, !tbaa !36
  %37 = getelementptr inbounds %struct.xpvcv, ptr %36, i64 0, i32 5
  store i32 3, ptr %37, align 8, !tbaa !42
  %38 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.17, ptr noundef nonnull @XS_List__Util_pairfirst, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #11
  %39 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.18, ptr noundef nonnull @XS_List__Util_pairgrep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #11
  %40 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.19, ptr noundef nonnull @XS_List__Util_pairmap, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #11
  %41 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.20, ptr noundef nonnull @XS_List__Util_pairs, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #11
  %42 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.21, ptr noundef nonnull @XS_List__Util_pairkeys, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #11
  %43 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.22, ptr noundef nonnull @XS_List__Util_pairvalues, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #11
  %44 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.23, ptr noundef nonnull @XS_List__Util_shuffle, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #11
  %45 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.24, ptr noundef nonnull @XS_Scalar__Util_dualvar, ptr noundef nonnull @.str, ptr noundef nonnull @.str.25, i32 noundef 0) #11
  %46 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.26, ptr noundef nonnull @XS_Scalar__Util_isdual, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #11
  %47 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.28, ptr noundef nonnull @XS_Scalar__Util_blessed, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #11
  %48 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.29, ptr noundef nonnull @XS_Scalar__Util_reftype, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #11
  %49 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.30, ptr noundef nonnull @XS_Scalar__Util_refaddr, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #11
  %50 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.31, ptr noundef nonnull @XS_Scalar__Util_weaken, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #11
  %51 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.32, ptr noundef nonnull @XS_Scalar__Util_unweaken, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #11
  %52 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.33, ptr noundef nonnull @XS_Scalar__Util_isweak, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #11
  %53 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.34, ptr noundef nonnull @XS_Scalar__Util_readonly, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #11
  %54 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.35, ptr noundef nonnull @XS_Scalar__Util_tainted, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #11
  %55 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.36, ptr noundef nonnull @XS_Scalar__Util_isvstring, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #11
  %56 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.37, ptr noundef nonnull @XS_Scalar__Util_looks_like_number, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #11
  %57 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.38, ptr noundef nonnull @XS_Scalar__Util_openhandle, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #11
  %58 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.39, ptr noundef nonnull @XS_Sub__Util_set_prototype) #11
  %59 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.40, ptr noundef nonnull @XS_Sub__Util_set_subname) #11
  %60 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.41, ptr noundef nonnull @XS_Sub__Util_subname) #11
  %61 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str.42, i32 noundef 10, i32 noundef 1) #11
  %62 = tail call ptr @Perl_hv_common_key_len(ptr noundef %61, ptr noundef nonnull @.str.43, i32 noundef 14, i32 noundef 48, ptr noundef null, i32 noundef 0) #11
  %63 = load ptr, ptr %62, align 8, !tbaa !43
  %64 = getelementptr inbounds %struct.gv, ptr %63, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !44
  %66 = and i32 %65, 255
  %67 = icmp eq i32 %66, 9
  br i1 %67, label %69, label %68, !prof !46

68:                                               ; preds = %1
  tail call void @Perl_gv_init_pvn(ptr noundef nonnull %63, ptr noundef %61, ptr noundef nonnull @.str.42, i64 noundef 10, i32 noundef 2) #11
  br label %69

69:                                               ; preds = %68, %1
  %70 = getelementptr inbounds %struct.gv, ptr %63, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !42
  %72 = load ptr, ptr %71, align 8, !tbaa !43
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %79, !prof !47

74:                                               ; preds = %69
  %75 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %63, i32 noundef 0) #11
  %76 = getelementptr inbounds %struct.gv, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !42
  %78 = load ptr, ptr %77, align 8, !tbaa !43
  br label %79

79:                                               ; preds = %69, %74
  %80 = phi ptr [ %78, %74 ], [ %72, %69 ]
  tail call void @Perl_sv_setsv_flags(ptr noundef %80, ptr noundef nonnull @PL_sv_yes, i32 noundef 2) #11
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_List__Util_min(ptr nocapture noundef readonly %0) #0 !prof !35 !PGOFuncName !48 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !42
  %18 = icmp eq i32 %14, 0
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %6, i64 %19
  br i1 %18, label %21, label %22

21:                                               ; preds = %1
  store ptr @PL_sv_undef, ptr %20, align 8, !tbaa !43
  br label %276

22:                                               ; preds = %1
  %23 = load ptr, ptr %20, align 8, !tbaa !43
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !50
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  %31 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !50
  %33 = and i32 %32, 1048576
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr %30, align 8, !tbaa !52
  %37 = load ptr, ptr %36, align 8, !tbaa !53
  %38 = getelementptr inbounds %struct.hv, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !56
  %40 = and i32 %39, 268435456
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %22, %28, %35
  %43 = and i32 %25, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = and i32 %25, -2147483392
  %47 = icmp eq i32 %46, -2147483392
  %48 = load ptr, ptr %23, align 8, !tbaa !52
  br i1 %47, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.xpvuv, ptr %48, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !42
  %52 = uitofp i64 %51 to double
  br label %66

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.xpviv, ptr %48, i64 0, i32 4
  %55 = load i64, ptr %54, align 8, !tbaa !42
  %56 = sitofp i64 %55 to double
  br label %66

57:                                               ; preds = %42
  %58 = and i32 %25, 2097664
  %59 = icmp eq i32 %58, 512
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load ptr, ptr %23, align 8, !tbaa !52
  %62 = getelementptr inbounds %struct.xpvnv, ptr %61, i64 0, i32 5
  %63 = load double, ptr %62, align 8, !tbaa !42
  br label %66

64:                                               ; preds = %57
  %65 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %23, i32 noundef 2) #11
  br label %66

66:                                               ; preds = %53, %49, %64, %60, %35
  %67 = phi i32 [ 1, %35 ], [ 0, %49 ], [ 0, %53 ], [ 0, %60 ], [ 0, %64 ]
  %68 = phi double [ undef, %35 ], [ %52, %49 ], [ %56, %53 ], [ %63, %60 ], [ %65, %64 ]
  %69 = icmp sgt i32 %14, 1
  br i1 %69, label %70, label %272

70:                                               ; preds = %66
  %71 = icmp eq i32 %17, 0
  %72 = and i64 %13, 4294967295
  br label %73

73:                                               ; preds = %70, %266
  %74 = phi i64 [ 1, %70 ], [ %270, %266 ]
  %75 = phi double [ %68, %70 ], [ %269, %266 ]
  %76 = phi ptr [ %23, %70 ], [ %268, %266 ]
  %77 = phi i32 [ %67, %70 ], [ %267, %266 ]
  %78 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %79 = getelementptr ptr, ptr %78, i64 %74
  %80 = getelementptr ptr, ptr %79, i64 %19
  %81 = load ptr, ptr %80, align 8, !tbaa !43
  %82 = icmp eq i32 %77, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !50
  %86 = and i32 %85, 2048
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %207, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !42
  %91 = getelementptr inbounds %struct.sv, ptr %90, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !50
  %93 = and i32 %92, 1048576
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %207, label %95

95:                                               ; preds = %88
  %96 = load ptr, ptr %90, align 8, !tbaa !52
  %97 = load ptr, ptr %96, align 8, !tbaa !53
  %98 = getelementptr inbounds %struct.hv, ptr %97, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !56
  %100 = and i32 %99, 268435456
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %207, label %102

102:                                              ; preds = %95, %73
  %103 = tail call ptr @Perl_amagic_call(ptr noundef %76, ptr noundef %81, i32 noundef 19, i32 noundef 0) #11
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !50
  br label %207

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.sv, ptr %103, i64 0, i32 2
  %110 = load i32, ptr %109, align 4, !tbaa !50
  %111 = and i32 %110, 2097152
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %103, i32 noundef 2) #11
  br i1 %114, label %162, label %163

115:                                              ; preds = %108
  %116 = and i32 %110, 65280
  %117 = icmp ne i32 %116, 0
  %118 = and i32 %110, 255
  %119 = icmp eq i32 %118, 8
  %120 = or i1 %117, %119
  %121 = and i32 %110, 16777471
  %122 = icmp eq i32 %121, 16777226
  %123 = or i1 %122, %120
  br i1 %123, label %124, label %163

124:                                              ; preds = %115
  %125 = and i32 %110, 1024
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %103, align 8, !tbaa !52
  %129 = icmp eq ptr %128, null
  br i1 %129, label %163, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.xpv, ptr %128, i64 0, i32 2
  %132 = load i64, ptr %131, align 8, !tbaa !58
  %133 = icmp ugt i64 %132, 1
  br i1 %133, label %162, label %134

134:                                              ; preds = %130
  %135 = icmp eq i64 %132, 0
  br i1 %135, label %163, label %136

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.sv, ptr %103, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !42
  %139 = load i8, ptr %138, align 1, !tbaa !42
  %140 = icmp eq i8 %139, 48
  br i1 %140, label %163, label %162

141:                                              ; preds = %124
  %142 = and i32 %110, 768
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %160, label %144

144:                                              ; preds = %141
  %145 = and i32 %110, 256
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %103, align 8, !tbaa !52
  %149 = getelementptr inbounds %struct.xpviv, ptr %148, i64 0, i32 4
  %150 = load i64, ptr %149, align 8, !tbaa !42
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %147, %144
  %153 = and i32 %110, 512
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr %103, align 8, !tbaa !52
  %157 = getelementptr inbounds %struct.xpvnv, ptr %156, i64 0, i32 5
  %158 = load double, ptr %157, align 8, !tbaa !42
  %159 = fcmp une double %158, 0.000000e+00
  br i1 %159, label %162, label %163

160:                                              ; preds = %141
  %161 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %103, i32 noundef 0) #11
  br i1 %161, label %162, label %163

162:                                              ; preds = %160, %155, %147, %136, %130, %113
  br i1 %71, label %164, label %266

163:                                              ; preds = %155, %115, %160, %152, %136, %134, %127, %113
  br i1 %71, label %266, label %164

164:                                              ; preds = %163, %162
  %165 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 2
  %166 = load i32, ptr %165, align 4, !tbaa !50
  %167 = and i32 %166, 2048
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %183, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 3
  %171 = load ptr, ptr %170, align 8, !tbaa !42
  %172 = getelementptr inbounds %struct.sv, ptr %171, i64 0, i32 2
  %173 = load i32, ptr %172, align 4, !tbaa !50
  %174 = and i32 %173, 1048576
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %169
  %177 = load ptr, ptr %171, align 8, !tbaa !52
  %178 = load ptr, ptr %177, align 8, !tbaa !53
  %179 = getelementptr inbounds %struct.hv, ptr %178, i64 0, i32 2
  %180 = load i32, ptr %179, align 4, !tbaa !56
  %181 = and i32 %180, 268435456
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %266

183:                                              ; preds = %164, %169, %176
  %184 = and i32 %166, 256
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %183
  %187 = and i32 %166, -2147483392
  %188 = icmp eq i32 %187, -2147483392
  %189 = load ptr, ptr %81, align 8, !tbaa !52
  br i1 %188, label %190, label %194

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.xpvuv, ptr %189, i64 0, i32 4
  %192 = load i64, ptr %191, align 8, !tbaa !42
  %193 = uitofp i64 %192 to double
  br label %266

194:                                              ; preds = %186
  %195 = getelementptr inbounds %struct.xpviv, ptr %189, i64 0, i32 4
  %196 = load i64, ptr %195, align 8, !tbaa !42
  %197 = sitofp i64 %196 to double
  br label %266

198:                                              ; preds = %183
  %199 = and i32 %166, 2097664
  %200 = icmp eq i32 %199, 512
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load ptr, ptr %81, align 8, !tbaa !52
  %203 = getelementptr inbounds %struct.xpvnv, ptr %202, i64 0, i32 5
  %204 = load double, ptr %203, align 8, !tbaa !42
  br label %266

205:                                              ; preds = %198
  %206 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %81, i32 noundef 2) #11
  br label %266

207:                                              ; preds = %105, %95, %88, %83
  %208 = phi i32 [ %107, %105 ], [ %85, %95 ], [ %85, %88 ], [ %85, %83 ]
  %209 = and i32 %208, 256
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %223, label %211

211:                                              ; preds = %207
  %212 = and i32 %208, -2147483392
  %213 = icmp eq i32 %212, -2147483392
  %214 = load ptr, ptr %81, align 8, !tbaa !52
  br i1 %213, label %215, label %219

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.xpvuv, ptr %214, i64 0, i32 4
  %217 = load i64, ptr %216, align 8, !tbaa !42
  %218 = uitofp i64 %217 to double
  br label %232

219:                                              ; preds = %211
  %220 = getelementptr inbounds %struct.xpviv, ptr %214, i64 0, i32 4
  %221 = load i64, ptr %220, align 8, !tbaa !42
  %222 = sitofp i64 %221 to double
  br label %232

223:                                              ; preds = %207
  %224 = and i32 %208, 2097664
  %225 = icmp eq i32 %224, 512
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load ptr, ptr %81, align 8, !tbaa !52
  %228 = getelementptr inbounds %struct.xpvnv, ptr %227, i64 0, i32 5
  %229 = load double, ptr %228, align 8, !tbaa !42
  br label %232

230:                                              ; preds = %223
  %231 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %81, i32 noundef 2) #11
  br label %232

232:                                              ; preds = %226, %230, %215, %219
  %233 = phi double [ %218, %215 ], [ %222, %219 ], [ %229, %226 ], [ %231, %230 ]
  br i1 %82, label %260, label %234

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.sv, ptr %76, i64 0, i32 2
  %236 = load i32, ptr %235, align 4, !tbaa !50
  %237 = and i32 %236, 256
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %251, label %239

239:                                              ; preds = %234
  %240 = and i32 %236, -2147483392
  %241 = icmp eq i32 %240, -2147483392
  %242 = load ptr, ptr %76, align 8, !tbaa !52
  br i1 %241, label %243, label %247

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.xpvuv, ptr %242, i64 0, i32 4
  %245 = load i64, ptr %244, align 8, !tbaa !42
  %246 = uitofp i64 %245 to double
  br label %260

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.xpviv, ptr %242, i64 0, i32 4
  %249 = load i64, ptr %248, align 8, !tbaa !42
  %250 = sitofp i64 %249 to double
  br label %260

251:                                              ; preds = %234
  %252 = and i32 %236, 2097664
  %253 = icmp eq i32 %252, 512
  br i1 %253, label %254, label %258

254:                                              ; preds = %251
  %255 = load ptr, ptr %76, align 8, !tbaa !52
  %256 = getelementptr inbounds %struct.xpvnv, ptr %255, i64 0, i32 5
  %257 = load double, ptr %256, align 8, !tbaa !42
  br label %260

258:                                              ; preds = %251
  %259 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %76, i32 noundef 2) #11
  br label %260

260:                                              ; preds = %247, %243, %258, %254, %232
  %261 = phi double [ %75, %232 ], [ %246, %243 ], [ %250, %247 ], [ %257, %254 ], [ %259, %258 ]
  %262 = fcmp olt double %233, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %260
  br i1 %71, label %265, label %266

264:                                              ; preds = %260
  br i1 %71, label %266, label %265

265:                                              ; preds = %264, %263
  br label %266

266:                                              ; preds = %263, %264, %265, %194, %190, %205, %201, %162, %163, %176
  %267 = phi i32 [ %77, %162 ], [ 1, %176 ], [ %77, %163 ], [ 0, %201 ], [ 0, %205 ], [ 0, %190 ], [ 0, %194 ], [ 0, %265 ], [ 0, %264 ], [ 0, %263 ]
  %268 = phi ptr [ %76, %162 ], [ %81, %176 ], [ %76, %163 ], [ %81, %201 ], [ %81, %205 ], [ %81, %190 ], [ %81, %194 ], [ %81, %265 ], [ %76, %264 ], [ %76, %263 ]
  %269 = phi double [ %75, %162 ], [ %75, %176 ], [ %75, %163 ], [ %204, %201 ], [ %206, %205 ], [ %193, %190 ], [ %197, %194 ], [ %233, %265 ], [ %261, %264 ], [ %261, %263 ]
  %270 = add nuw nsw i64 %74, 1
  %271 = icmp eq i64 %270, %72
  br i1 %271, label %272, label %73, !llvm.loop !60

272:                                              ; preds = %266, %66
  %273 = phi ptr [ %23, %66 ], [ %268, %266 ]
  %274 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %275 = getelementptr inbounds ptr, ptr %274, i64 %19
  store ptr %273, ptr %275, align 8, !tbaa !43
  br label %276

276:                                              ; preds = %272, %21
  %277 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %278 = getelementptr inbounds ptr, ptr %277, i64 %19
  store ptr %278, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_List__Util_sum(ptr nocapture noundef readonly %0) #0 !prof !35 !PGOFuncName !62 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !42
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %20 = load i8, ptr %19, align 1, !tbaa !63
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load ptr, ptr @PL_curpad, align 8, !tbaa !43
  %25 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !65
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  br label %31

29:                                               ; preds = %1
  %30 = tail call ptr @Perl_sv_newmortal() #11
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %28, %23 ], [ %30, %29 ]
  %33 = icmp eq i32 %17, 2
  %34 = icmp eq i32 %14, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  switch i32 %17, label %50 [
    i32 0, label %36
    i32 1, label %40
    i32 2, label %45
  ]

36:                                               ; preds = %35
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %38 = sext i32 %7 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  store ptr @PL_sv_undef, ptr %39, align 8, !tbaa !43
  br label %386

40:                                               ; preds = %35
  %41 = tail call ptr @Perl_newSViv(i64 noundef 0) #11
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %43 = sext i32 %7 to i64
  %44 = getelementptr inbounds ptr, ptr %42, i64 %43
  store ptr %41, ptr %44, align 8, !tbaa !43
  br label %386

45:                                               ; preds = %35
  %46 = tail call ptr @Perl_newSViv(i64 noundef 1) #11
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %48 = sext i32 %7 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  store ptr %46, ptr %49, align 8, !tbaa !43
  br label %386

50:                                               ; preds = %35, %31
  %51 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %52 = sext i32 %7 to i64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !43
  %55 = tail call fastcc i32 @accum_type(ptr noundef %54) #12, !range !66
  switch i32 %55, label %94 [
    i32 2, label %56
    i32 0, label %57
    i32 1, label %68
  ]

56:                                               ; preds = %50
  tail call void @Perl_sv_setsv_flags(ptr noundef %32, ptr noundef %54, i32 noundef 2) #11
  br label %95

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !50
  %60 = and i32 %59, 2097408
  %61 = icmp eq i32 %60, 256
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load ptr, ptr %54, align 8, !tbaa !52
  %64 = getelementptr inbounds %struct.xpviv, ptr %63, i64 0, i32 4
  %65 = load i64, ptr %64, align 8, !tbaa !42
  br label %95

66:                                               ; preds = %57
  %67 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %54, i32 noundef 2) #11
  br label %95

68:                                               ; preds = %50
  %69 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !50
  %71 = and i32 %70, 256
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %68
  %74 = and i32 %70, -2147483392
  %75 = icmp eq i32 %74, -2147483392
  %76 = load ptr, ptr %54, align 8, !tbaa !52
  br i1 %75, label %77, label %81

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.xpvuv, ptr %76, i64 0, i32 4
  %79 = load i64, ptr %78, align 8, !tbaa !42
  %80 = uitofp i64 %79 to double
  br label %95

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.xpviv, ptr %76, i64 0, i32 4
  %83 = load i64, ptr %82, align 8, !tbaa !42
  %84 = sitofp i64 %83 to double
  br label %95

85:                                               ; preds = %68
  %86 = and i32 %70, 2097664
  %87 = icmp eq i32 %86, 512
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load ptr, ptr %54, align 8, !tbaa !52
  %90 = getelementptr inbounds %struct.xpvnv, ptr %89, i64 0, i32 5
  %91 = load double, ptr %90, align 8, !tbaa !42
  br label %95

92:                                               ; preds = %85
  %93 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %54, i32 noundef 2) #11
  br label %95

94:                                               ; preds = %166, %50
  unreachable

95:                                               ; preds = %81, %77, %92, %88, %62, %66, %56
  %96 = phi ptr [ %32, %56 ], [ null, %66 ], [ null, %62 ], [ null, %88 ], [ null, %92 ], [ null, %77 ], [ null, %81 ]
  %97 = phi double [ 0.000000e+00, %56 ], [ 0.000000e+00, %66 ], [ 0.000000e+00, %62 ], [ %91, %88 ], [ %93, %92 ], [ %80, %77 ], [ %84, %81 ]
  %98 = phi i64 [ 0, %56 ], [ %67, %66 ], [ %65, %62 ], [ 0, %88 ], [ 0, %92 ], [ 0, %77 ], [ 0, %81 ]
  %99 = icmp sgt i32 %14, 1
  br i1 %99, label %100, label %374

100:                                              ; preds = %95
  %101 = select i1 %33, i32 34, i32 30
  %102 = and i64 %13, 4294967295
  br label %103

103:                                              ; preds = %100, %367
  %104 = phi i64 [ 1, %100 ], [ %372, %367 ]
  %105 = phi i64 [ %98, %100 ], [ %371, %367 ]
  %106 = phi double [ %97, %100 ], [ %370, %367 ]
  %107 = phi ptr [ %96, %100 ], [ %369, %367 ]
  %108 = phi i32 [ %55, %100 ], [ %368, %367 ]
  %109 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %110 = getelementptr ptr, ptr %109, i64 %104
  %111 = getelementptr ptr, ptr %110, i64 %52
  %112 = load ptr, ptr %111, align 8, !tbaa !43
  %113 = icmp ult i32 %108, 2
  br i1 %113, label %114, label %141

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.sv, ptr %112, i64 0, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !50
  %117 = and i32 %116, 2048
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %139, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.sv, ptr %112, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !42
  %122 = getelementptr inbounds %struct.sv, ptr %121, i64 0, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !50
  %124 = and i32 %123, 1048576
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %139, label %126

126:                                              ; preds = %119
  %127 = load ptr, ptr %121, align 8, !tbaa !52
  %128 = load ptr, ptr %127, align 8, !tbaa !53
  %129 = getelementptr inbounds %struct.hv, ptr %128, i64 0, i32 2
  %130 = load i32, ptr %129, align 4, !tbaa !56
  %131 = and i32 %130, 268435456
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %126
  %134 = icmp eq ptr %107, null
  %135 = select i1 %134, ptr %32, ptr %107
  %136 = icmp eq i32 %108, 1
  %137 = sitofp i64 %105 to double
  %138 = select i1 %136, double %106, double %137
  tail call void @Perl_sv_setnv(ptr noundef %135, double noundef %138) #11
  br label %141

139:                                              ; preds = %126, %119, %114
  %140 = icmp eq i32 %108, 1
  br i1 %140, label %312, label %253

141:                                              ; preds = %103, %133
  %142 = phi ptr [ %107, %103 ], [ %135, %133 ]
  %143 = getelementptr inbounds %struct.sv, ptr %142, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !50
  %145 = and i32 %144, 2048
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %162, label %147

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.sv, ptr %142, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !42
  %150 = getelementptr inbounds %struct.sv, ptr %149, i64 0, i32 2
  %151 = load i32, ptr %150, align 4, !tbaa !50
  %152 = and i32 %151, 1048576
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %147
  %155 = load ptr, ptr %149, align 8, !tbaa !52
  %156 = load ptr, ptr %155, align 8, !tbaa !53
  %157 = getelementptr inbounds %struct.hv, ptr %156, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !56
  %159 = freeze i32 %158
  %160 = lshr i32 %159, 26
  %161 = and i32 %160, 4
  br label %162

162:                                              ; preds = %154, %141, %147
  %163 = phi i32 [ 0, %147 ], [ 0, %141 ], [ %161, %154 ]
  %164 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %142, ptr noundef %112, i32 noundef %101, i32 noundef %163) #11
  %165 = icmp eq ptr %164, null
  br i1 %165, label %205, label %166

166:                                              ; preds = %162
  %167 = tail call fastcc i32 @accum_type(ptr noundef nonnull %164) #12, !range !66
  switch i32 %167, label %94 [
    i32 2, label %367
    i32 0, label %168
    i32 1, label %179
  ]

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.sv, ptr %164, i64 0, i32 2
  %170 = load i32, ptr %169, align 4, !tbaa !50
  %171 = and i32 %170, 2097408
  %172 = icmp eq i32 %171, 256
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load ptr, ptr %164, align 8, !tbaa !52
  %175 = getelementptr inbounds %struct.xpviv, ptr %174, i64 0, i32 4
  %176 = load i64, ptr %175, align 8, !tbaa !42
  br label %367

177:                                              ; preds = %168
  %178 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %164, i32 noundef 2) #11
  br label %367

179:                                              ; preds = %166
  %180 = getelementptr inbounds %struct.sv, ptr %164, i64 0, i32 2
  %181 = load i32, ptr %180, align 4, !tbaa !50
  %182 = and i32 %181, 256
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %196, label %184

184:                                              ; preds = %179
  %185 = and i32 %181, -2147483392
  %186 = icmp eq i32 %185, -2147483392
  %187 = load ptr, ptr %164, align 8, !tbaa !52
  br i1 %186, label %188, label %192

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.xpvuv, ptr %187, i64 0, i32 4
  %190 = load i64, ptr %189, align 8, !tbaa !42
  %191 = uitofp i64 %190 to double
  br label %367

192:                                              ; preds = %184
  %193 = getelementptr inbounds %struct.xpviv, ptr %187, i64 0, i32 4
  %194 = load i64, ptr %193, align 8, !tbaa !42
  %195 = sitofp i64 %194 to double
  br label %367

196:                                              ; preds = %179
  %197 = and i32 %181, 2097664
  %198 = icmp eq i32 %197, 512
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load ptr, ptr %164, align 8, !tbaa !52
  %201 = getelementptr inbounds %struct.xpvnv, ptr %200, i64 0, i32 5
  %202 = load double, ptr %201, align 8, !tbaa !42
  br label %367

203:                                              ; preds = %196
  %204 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %164, i32 noundef 2) #11
  br label %367

205:                                              ; preds = %162
  %206 = load i32, ptr %143, align 4, !tbaa !50
  %207 = and i32 %206, 2097664
  %208 = icmp eq i32 %207, 512
  br i1 %33, label %209, label %231

209:                                              ; preds = %205
  br i1 %208, label %210, label %214

210:                                              ; preds = %209
  %211 = load ptr, ptr %142, align 8, !tbaa !52
  %212 = getelementptr inbounds %struct.xpvnv, ptr %211, i64 0, i32 5
  %213 = load double, ptr %212, align 8, !tbaa !42
  br label %216

214:                                              ; preds = %209
  %215 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %142, i32 noundef 2) #11
  br label %216

216:                                              ; preds = %214, %210
  %217 = phi double [ %213, %210 ], [ %215, %214 ]
  %218 = getelementptr inbounds %struct.sv, ptr %112, i64 0, i32 2
  %219 = load i32, ptr %218, align 4, !tbaa !50
  %220 = and i32 %219, 2097664
  %221 = icmp eq i32 %220, 512
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load ptr, ptr %112, align 8, !tbaa !52
  %224 = getelementptr inbounds %struct.xpvnv, ptr %223, i64 0, i32 5
  %225 = load double, ptr %224, align 8, !tbaa !42
  br label %228

226:                                              ; preds = %216
  %227 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %112, i32 noundef 2) #11
  br label %228

228:                                              ; preds = %226, %222
  %229 = phi double [ %225, %222 ], [ %227, %226 ]
  %230 = fmul double %217, %229
  br label %367

231:                                              ; preds = %205
  br i1 %208, label %232, label %236

232:                                              ; preds = %231
  %233 = load ptr, ptr %142, align 8, !tbaa !52
  %234 = getelementptr inbounds %struct.xpvnv, ptr %233, i64 0, i32 5
  %235 = load double, ptr %234, align 8, !tbaa !42
  br label %238

236:                                              ; preds = %231
  %237 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %142, i32 noundef 2) #11
  br label %238

238:                                              ; preds = %236, %232
  %239 = phi double [ %235, %232 ], [ %237, %236 ]
  %240 = getelementptr inbounds %struct.sv, ptr %112, i64 0, i32 2
  %241 = load i32, ptr %240, align 4, !tbaa !50
  %242 = and i32 %241, 2097664
  %243 = icmp eq i32 %242, 512
  br i1 %243, label %244, label %248

244:                                              ; preds = %238
  %245 = load ptr, ptr %112, align 8, !tbaa !52
  %246 = getelementptr inbounds %struct.xpvnv, ptr %245, i64 0, i32 5
  %247 = load double, ptr %246, align 8, !tbaa !42
  br label %250

248:                                              ; preds = %238
  %249 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %112, i32 noundef 2) #11
  br label %250

250:                                              ; preds = %248, %244
  %251 = phi double [ %247, %244 ], [ %249, %248 ]
  %252 = fadd double %239, %251
  br label %367

253:                                              ; preds = %139
  %254 = and i32 %116, 768
  %255 = icmp eq i32 %254, 256
  br i1 %33, label %256, label %283

256:                                              ; preds = %253
  br i1 %255, label %257, label %310

257:                                              ; preds = %256
  %258 = and i32 %116, 2097408
  %259 = icmp eq i32 %258, 256
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = load ptr, ptr %112, align 8, !tbaa !52
  %262 = getelementptr inbounds %struct.xpviv, ptr %261, i64 0, i32 4
  %263 = load i64, ptr %262, align 8, !tbaa !42
  br label %266

264:                                              ; preds = %257
  %265 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %112, i32 noundef 2) #11
  br label %266

266:                                              ; preds = %264, %260
  %267 = phi i64 [ %263, %260 ], [ %265, %264 ]
  %268 = sdiv i64 9223372036854775807, %105
  %269 = icmp slt i64 %267, %268
  br i1 %269, label %270, label %310

270:                                              ; preds = %266
  %271 = load i32, ptr %115, align 4, !tbaa !50
  %272 = and i32 %271, 2097408
  %273 = icmp eq i32 %272, 256
  br i1 %273, label %274, label %278

274:                                              ; preds = %270
  %275 = load ptr, ptr %112, align 8, !tbaa !52
  %276 = getelementptr inbounds %struct.xpviv, ptr %275, i64 0, i32 4
  %277 = load i64, ptr %276, align 8, !tbaa !42
  br label %280

278:                                              ; preds = %270
  %279 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %112, i32 noundef 2) #11
  br label %280

280:                                              ; preds = %278, %274
  %281 = phi i64 [ %277, %274 ], [ %279, %278 ]
  %282 = mul nsw i64 %281, %105
  br label %367

283:                                              ; preds = %253
  br i1 %255, label %284, label %310

284:                                              ; preds = %283
  %285 = and i32 %116, 2097408
  %286 = icmp eq i32 %285, 256
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load ptr, ptr %112, align 8, !tbaa !52
  %289 = getelementptr inbounds %struct.xpviv, ptr %288, i64 0, i32 4
  %290 = load i64, ptr %289, align 8, !tbaa !42
  br label %293

291:                                              ; preds = %284
  %292 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %112, i32 noundef 2) #11
  br label %293

293:                                              ; preds = %291, %287
  %294 = phi i64 [ %290, %287 ], [ %292, %291 ]
  %295 = sub nsw i64 9223372036854775807, %105
  %296 = icmp slt i64 %294, %295
  br i1 %296, label %297, label %310

297:                                              ; preds = %293
  %298 = load i32, ptr %115, align 4, !tbaa !50
  %299 = and i32 %298, 2097408
  %300 = icmp eq i32 %299, 256
  br i1 %300, label %301, label %305

301:                                              ; preds = %297
  %302 = load ptr, ptr %112, align 8, !tbaa !52
  %303 = getelementptr inbounds %struct.xpviv, ptr %302, i64 0, i32 4
  %304 = load i64, ptr %303, align 8, !tbaa !42
  br label %307

305:                                              ; preds = %297
  %306 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %112, i32 noundef 2) #11
  br label %307

307:                                              ; preds = %305, %301
  %308 = phi i64 [ %304, %301 ], [ %306, %305 ]
  %309 = add nsw i64 %308, %105
  br label %367

310:                                              ; preds = %283, %293, %256, %266
  %311 = sitofp i64 %105 to double
  br label %312

312:                                              ; preds = %139, %310
  %313 = phi double [ %106, %139 ], [ %311, %310 ]
  %314 = load i32, ptr %115, align 4, !tbaa !50
  %315 = and i32 %314, 256
  %316 = icmp eq i32 %315, 0
  br i1 %33, label %317, label %342

317:                                              ; preds = %312
  br i1 %316, label %330, label %318

318:                                              ; preds = %317
  %319 = and i32 %314, -2147483392
  %320 = icmp eq i32 %319, -2147483392
  %321 = load ptr, ptr %112, align 8, !tbaa !52
  br i1 %320, label %322, label %326

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.xpvuv, ptr %321, i64 0, i32 4
  %324 = load i64, ptr %323, align 8, !tbaa !42
  %325 = uitofp i64 %324 to double
  br label %339

326:                                              ; preds = %318
  %327 = getelementptr inbounds %struct.xpviv, ptr %321, i64 0, i32 4
  %328 = load i64, ptr %327, align 8, !tbaa !42
  %329 = sitofp i64 %328 to double
  br label %339

330:                                              ; preds = %317
  %331 = and i32 %314, 2097664
  %332 = icmp eq i32 %331, 512
  br i1 %332, label %333, label %337

333:                                              ; preds = %330
  %334 = load ptr, ptr %112, align 8, !tbaa !52
  %335 = getelementptr inbounds %struct.xpvnv, ptr %334, i64 0, i32 5
  %336 = load double, ptr %335, align 8, !tbaa !42
  br label %339

337:                                              ; preds = %330
  %338 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %112, i32 noundef 2) #11
  br label %339

339:                                              ; preds = %333, %337, %322, %326
  %340 = phi double [ %325, %322 ], [ %329, %326 ], [ %336, %333 ], [ %338, %337 ]
  %341 = fmul double %313, %340
  br label %367

342:                                              ; preds = %312
  br i1 %316, label %355, label %343

343:                                              ; preds = %342
  %344 = and i32 %314, -2147483392
  %345 = icmp eq i32 %344, -2147483392
  %346 = load ptr, ptr %112, align 8, !tbaa !52
  br i1 %345, label %347, label %351

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.xpvuv, ptr %346, i64 0, i32 4
  %349 = load i64, ptr %348, align 8, !tbaa !42
  %350 = uitofp i64 %349 to double
  br label %364

351:                                              ; preds = %343
  %352 = getelementptr inbounds %struct.xpviv, ptr %346, i64 0, i32 4
  %353 = load i64, ptr %352, align 8, !tbaa !42
  %354 = sitofp i64 %353 to double
  br label %364

355:                                              ; preds = %342
  %356 = and i32 %314, 2097664
  %357 = icmp eq i32 %356, 512
  br i1 %357, label %358, label %362

358:                                              ; preds = %355
  %359 = load ptr, ptr %112, align 8, !tbaa !52
  %360 = getelementptr inbounds %struct.xpvnv, ptr %359, i64 0, i32 5
  %361 = load double, ptr %360, align 8, !tbaa !42
  br label %364

362:                                              ; preds = %355
  %363 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %112, i32 noundef 2) #11
  br label %364

364:                                              ; preds = %358, %362, %347, %351
  %365 = phi double [ %350, %347 ], [ %354, %351 ], [ %361, %358 ], [ %363, %362 ]
  %366 = fadd double %313, %365
  br label %367

367:                                              ; preds = %192, %188, %203, %199, %173, %177, %166, %280, %307, %228, %250, %364, %339
  %368 = phi i32 [ 1, %339 ], [ 1, %364 ], [ 0, %280 ], [ 0, %307 ], [ 1, %228 ], [ 1, %250 ], [ %167, %166 ], [ 0, %177 ], [ 0, %173 ], [ 1, %199 ], [ 1, %203 ], [ 1, %188 ], [ 1, %192 ]
  %369 = phi ptr [ %107, %339 ], [ %107, %364 ], [ %107, %280 ], [ %107, %307 ], [ %142, %228 ], [ %142, %250 ], [ %164, %166 ], [ %142, %177 ], [ %142, %173 ], [ %142, %199 ], [ %142, %203 ], [ %142, %188 ], [ %142, %192 ]
  %370 = phi double [ %341, %339 ], [ %366, %364 ], [ %106, %280 ], [ %106, %307 ], [ %230, %228 ], [ %252, %250 ], [ %106, %166 ], [ %106, %177 ], [ %106, %173 ], [ %202, %199 ], [ %204, %203 ], [ %191, %188 ], [ %195, %192 ]
  %371 = phi i64 [ %105, %339 ], [ %105, %364 ], [ %282, %280 ], [ %309, %307 ], [ %105, %228 ], [ %105, %250 ], [ %105, %166 ], [ %178, %177 ], [ %176, %173 ], [ %105, %199 ], [ %105, %203 ], [ %105, %188 ], [ %105, %192 ]
  %372 = add nuw nsw i64 %104, 1
  %373 = icmp eq i64 %372, %102
  br i1 %373, label %374, label %103, !llvm.loop !67

374:                                              ; preds = %367, %95
  %375 = phi i32 [ %55, %95 ], [ %368, %367 ]
  %376 = phi ptr [ %96, %95 ], [ %369, %367 ]
  %377 = phi double [ %97, %95 ], [ %370, %367 ]
  %378 = phi i64 [ %98, %95 ], [ %371, %367 ]
  %379 = icmp eq ptr %376, null
  %380 = select i1 %379, ptr %32, ptr %376
  switch i32 %375, label %383 [
    i32 1, label %382
    i32 0, label %381
  ]

381:                                              ; preds = %374
  tail call void @Perl_sv_setiv(ptr noundef %380, i64 noundef %378) #11
  br label %383

382:                                              ; preds = %374
  tail call void @Perl_sv_setnv(ptr noundef %380, double noundef %377) #11
  br label %383

383:                                              ; preds = %374, %382, %381
  %384 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %385 = getelementptr inbounds ptr, ptr %384, i64 %52
  store ptr %380, ptr %385, align 8, !tbaa !43
  br label %386

386:                                              ; preds = %36, %40, %45, %383
  %387 = phi i64 [ %38, %36 ], [ %43, %40 ], [ %48, %45 ], [ %52, %383 ]
  %388 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %389 = getelementptr inbounds ptr, ptr %388, i64 %387
  store ptr %389, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_List__Util_minstr(ptr nocapture noundef readonly %0) #0 !prof !35 !PGOFuncName !68 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !42
  %18 = icmp eq i32 %14, 0
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %6, i64 %19
  br i1 %18, label %21, label %22

21:                                               ; preds = %1
  store ptr @PL_sv_undef, ptr %20, align 8, !tbaa !43
  br label %45

22:                                               ; preds = %1
  %23 = load ptr, ptr %20, align 8, !tbaa !43
  %24 = icmp sgt i32 %14, 1
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = and i64 %13, 4294967295
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i64 [ 1, %25 ], [ %37, %27 ]
  %29 = phi ptr [ %23, %25 ], [ %36, %27 ]
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %31 = getelementptr ptr, ptr %30, i64 %28
  %32 = getelementptr ptr, ptr %31, i64 %19
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = tail call i32 @Perl_sv_cmp_flags(ptr noundef %29, ptr noundef %33, i32 noundef 2) #11
  %35 = icmp eq i32 %34, %17
  %36 = select i1 %35, ptr %33, ptr %29
  %37 = add nuw nsw i64 %28, 1
  %38 = icmp eq i64 %37, %26
  br i1 %38, label %39, label %27, !llvm.loop !69

39:                                               ; preds = %27
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %41

41:                                               ; preds = %39, %22
  %42 = phi ptr [ %6, %22 ], [ %40, %39 ]
  %43 = phi ptr [ %23, %22 ], [ %36, %39 ]
  %44 = getelementptr inbounds ptr, ptr %42, i64 %19
  store ptr %43, ptr %44, align 8, !tbaa !43
  br label %45

45:                                               ; preds = %41, %21
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %47 = getelementptr inbounds ptr, ptr %46, i64 %19
  store ptr %47, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_List__Util_reduce(ptr noundef %0) #0 !prof !35 !PGOFuncName !70 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %7 = load i32, ptr %5, align 4, !tbaa !49
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.44) #11
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %8, %1 ]
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = tail call ptr @Perl_sv_newmortal() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %27 = getelementptr inbounds ptr, ptr %26, i64 %22
  %28 = call ptr @Perl_sv_2cv(ptr noundef %24, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #11
  br label %31

31:                                               ; preds = %30, %20
  %32 = icmp slt i32 %16, 2
  br i1 %32, label %322, label %33

33:                                               ; preds = %31
  %34 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef 3) #11
  %35 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef 3) #11
  %36 = getelementptr inbounds %struct.gv, ptr %34, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !42
  call void @Perl_save_sptr(ptr noundef %37) #11
  %38 = getelementptr inbounds %struct.gv, ptr %35, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  call void @Perl_save_sptr(ptr noundef %39) #11
  %40 = load ptr, ptr %36, align 8, !tbaa !42
  store ptr %25, ptr %40, align 8, !tbaa !71
  %41 = getelementptr inbounds ptr, ptr %27, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = icmp eq ptr %25, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %33
  call void @Perl_sv_setsv_flags(ptr noundef %25, ptr noundef %42, i32 noundef 2) #11
  %45 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !50
  %47 = and i32 %46, 4194304
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = call i32 @Perl_mg_set(ptr noundef nonnull %25) #11
  br label %51

51:                                               ; preds = %49, %44, %33
  %52 = load ptr, ptr %28, align 8, !tbaa !36
  %53 = getelementptr inbounds %struct.xpvcv, ptr %52, i64 0, i32 12
  %54 = load i32, ptr %53, align 4, !tbaa !73
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = icmp eq i32 %16, 2
  br i1 %58, label %322, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %61 = and i64 %15, 4294967295
  br label %289

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.xpvcv, ptr %52, i64 0, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !42
  call void @Perl_push_scope() #11
  %65 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %66 = getelementptr inbounds %struct.jmpenv, ptr %65, i64 0, i32 3
  %67 = load i8, ptr %66, align 4, !tbaa !75, !range !78, !noundef !79
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #11
  %68 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !80
  store i64 %68, ptr @PL_tmps_floor, align 8, !tbaa !80
  call void @Perl_save_vptr(ptr noundef nonnull @PL_op) #11
  %69 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %70 = getelementptr inbounds %struct.jmpenv, ptr %69, i64 0, i32 3
  store i8 1, ptr %70, align 4, !tbaa !75
  %71 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %72 = getelementptr inbounds %struct.stackinfo, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !81
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %62
  %76 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #11
  %77 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %78 = getelementptr inbounds %struct.stackinfo, ptr %76, i64 0, i32 2
  store ptr %77, ptr %78, align 8, !tbaa !83
  %79 = getelementptr inbounds %struct.stackinfo, ptr %77, i64 0, i32 3
  store ptr %76, ptr %79, align 8, !tbaa !81
  br label %80

80:                                               ; preds = %75, %62
  %81 = phi ptr [ %73, %62 ], [ %76, %75 ]
  %82 = getelementptr inbounds %struct.stackinfo, ptr %81, i64 0, i32 6
  store i32 3, ptr %82, align 8, !tbaa !84
  %83 = getelementptr inbounds %struct.stackinfo, ptr %81, i64 0, i32 4
  store i32 -1, ptr %83, align 8, !tbaa !85
  %84 = load ptr, ptr %81, align 8, !tbaa !86
  %85 = load ptr, ptr %84, align 8, !tbaa !87
  %86 = getelementptr inbounds %struct.xpvav, ptr %85, i64 0, i32 2
  store i64 0, ptr %86, align 8, !tbaa !89
  %87 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %88 = ptrtoint ptr %87 to i64
  %89 = sub i64 %12, %88
  %90 = ashr exact i64 %89, 3
  %91 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %92 = load ptr, ptr %91, align 8, !tbaa !87
  %93 = getelementptr inbounds %struct.xpvav, ptr %92, i64 0, i32 2
  store i64 %90, ptr %93, align 8, !tbaa !89
  %94 = getelementptr inbounds %struct.av, ptr %84, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !42
  store ptr %95, ptr @PL_stack_base, align 8, !tbaa !43
  %96 = load ptr, ptr %81, align 8, !tbaa !86
  %97 = load ptr, ptr %96, align 8, !tbaa !87
  %98 = getelementptr inbounds %struct.xpvav, ptr %97, i64 0, i32 3
  %99 = load i64, ptr %98, align 8, !tbaa !91
  %100 = getelementptr inbounds ptr, ptr %95, i64 %99
  store ptr %100, ptr @PL_stack_max, align 8, !tbaa !43
  %101 = load ptr, ptr %81, align 8, !tbaa !86
  %102 = load ptr, ptr %101, align 8, !tbaa !87
  %103 = getelementptr inbounds %struct.xpvav, ptr %102, i64 0, i32 2
  %104 = load i64, ptr %103, align 8, !tbaa !89
  %105 = getelementptr inbounds ptr, ptr %95, i64 %104
  store ptr %105, ptr @PL_stack_sp, align 8, !tbaa !43
  %106 = load ptr, ptr %81, align 8, !tbaa !86
  store ptr %106, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %81, ptr @PL_curstackinfo, align 8, !tbaa !43
  %107 = getelementptr inbounds %struct.stackinfo, ptr %81, i64 0, i32 5
  %108 = load i32, ptr %107, align 4, !tbaa !92
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %110, label %111

110:                                              ; preds = %80
  store i32 0, ptr %83, align 8, !tbaa !85
  br label %116

111:                                              ; preds = %80
  %112 = call i32 @Perl_cxinc() #11
  %113 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %114 = getelementptr inbounds %struct.stackinfo, ptr %113, i64 0, i32 4
  store i32 %112, ptr %114, align 8, !tbaa !85
  %115 = sext i32 %112 to i64
  br label %116

116:                                              ; preds = %111, %110
  %117 = phi i64 [ %115, %111 ], [ 0, %110 ]
  %118 = phi ptr [ %113, %111 ], [ %81, %110 ]
  %119 = getelementptr inbounds %struct.stackinfo, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !93
  %121 = getelementptr inbounds %struct.context, ptr %120, i64 %117
  store i8 24, ptr %121, align 8, !tbaa !42
  %122 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %123 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %124 = ptrtoint ptr %122 to i64
  %125 = ptrtoint ptr %123 to i64
  %126 = sub i64 %124, %125
  %127 = lshr exact i64 %126, 3
  %128 = trunc i64 %127 to i32
  %129 = getelementptr inbounds %struct.block, ptr %121, i64 0, i32 3
  store i32 %128, ptr %129, align 4, !tbaa !42
  %130 = load ptr, ptr @PL_curcop, align 8, !tbaa !43
  %131 = getelementptr inbounds %struct.block, ptr %121, i64 0, i32 4
  store ptr %130, ptr %131, align 8, !tbaa !42
  %132 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %133 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %134 = ptrtoint ptr %132 to i64
  %135 = ptrtoint ptr %133 to i64
  %136 = sub i64 %134, %135
  %137 = lshr exact i64 %136, 2
  %138 = trunc i64 %137 to i32
  %139 = getelementptr inbounds %struct.block, ptr %121, i64 0, i32 5
  store i32 %138, ptr %139, align 8, !tbaa !42
  %140 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %141 = getelementptr inbounds %struct.block, ptr %121, i64 0, i32 6
  store i32 %140, ptr %141, align 4, !tbaa !42
  %142 = load ptr, ptr @PL_curpm, align 8, !tbaa !43
  %143 = getelementptr inbounds %struct.block, ptr %121, i64 0, i32 7
  store ptr %142, ptr %143, align 8, !tbaa !42
  %144 = getelementptr inbounds %struct.block, ptr %121, i64 0, i32 1
  store i8 2, ptr %144, align 1, !tbaa !42
  %145 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %146 = getelementptr inbounds %struct.op, ptr %145, i64 0, i32 5
  %147 = load i8, ptr %146, align 2, !tbaa !94
  %148 = and i8 %147, 3
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %116
  %151 = getelementptr inbounds %struct.op, ptr %145, i64 0, i32 6
  %152 = load i8, ptr %151, align 1, !tbaa !63
  %153 = and i8 %152, -127
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %150
  %156 = call i32 @Perl_was_lvalue_sub() #11
  %157 = and i32 %156, 207
  %158 = or disjoint i32 %157, 48
  br label %159

159:                                              ; preds = %155, %150, %116
  %160 = phi i32 [ 177, %116 ], [ %158, %155 ], [ 48, %150 ]
  %161 = getelementptr inbounds %struct.block, ptr %121, i64 0, i32 8
  %162 = getelementptr inbounds %struct.block, ptr %121, i64 0, i32 8, i32 0, i32 1
  store ptr %28, ptr %162, align 8, !tbaa !42
  %163 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %28) #12
  %164 = load i32, ptr %163, align 4, !tbaa !49
  %165 = getelementptr inbounds %struct.block, ptr %121, i64 0, i32 8, i32 0, i32 4
  store i32 %164, ptr %165, align 8, !tbaa !42
  store ptr null, ptr %161, align 8, !tbaa !42
  %166 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %28) #12
  %167 = load i32, ptr %166, align 4, !tbaa !49
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %159
  %170 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %171 = load i32, ptr %170, align 8, !tbaa !95
  %172 = add i32 %171, 2
  store i32 %172, ptr %170, align 8, !tbaa !95
  call void @Perl_save_pushptr(ptr noundef nonnull %28, i32 noundef 11) #11
  br label %173

173:                                              ; preds = %169, %159
  %174 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %175 = getelementptr inbounds %struct.op, ptr %174, i64 0, i32 6
  %176 = load i8, ptr %175, align 1, !tbaa !63
  %177 = zext i8 %176 to i32
  %178 = and i32 %160, %177
  %179 = trunc i32 %178 to i16
  %180 = getelementptr inbounds %struct.block, ptr %121, i64 0, i32 2
  store i16 %179, ptr %180, align 2, !tbaa !42
  %181 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %28) #12
  %182 = load i32, ptr %181, align 4, !tbaa !49
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %181, align 4, !tbaa !49
  %184 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %28) #12
  %185 = load i32, ptr %184, align 4, !tbaa !49
  %186 = icmp sgt i32 %185, 1
  br i1 %186, label %187, label %188

187:                                              ; preds = %173
  call void @Perl_pad_push(ptr noundef %64, i32 noundef %185) #11
  br label %188

188:                                              ; preds = %187, %173
  %189 = load ptr, ptr @PL_comppad, align 8, !tbaa !43
  call void @Perl_save_pushptr(ptr noundef %189, i32 noundef 7) #11
  %190 = getelementptr inbounds %struct.padlist, ptr %64, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !96
  %192 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %28) #12
  %193 = load i32, ptr %192, align 4, !tbaa !49
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds ptr, ptr %191, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !43
  store ptr %196, ptr @PL_comppad, align 8, !tbaa !43
  %197 = getelementptr inbounds %struct.av, ptr %196, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !42
  store ptr %198, ptr @PL_curpad, align 8, !tbaa !43
  %199 = load ptr, ptr %28, align 8, !tbaa !36
  %200 = getelementptr inbounds %struct.xpvcv, ptr %199, i64 0, i32 5
  %201 = load ptr, ptr %200, align 8, !tbaa !42
  %202 = icmp eq i32 %16, 2
  br i1 %202, label %225, label %203

203:                                              ; preds = %188
  %204 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %205 = and i64 %15, 4294967295
  br label %206

206:                                              ; preds = %203, %222
  %207 = phi i64 [ 2, %203 ], [ %223, %222 ]
  %208 = getelementptr inbounds ptr, ptr %27, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !43
  %210 = load ptr, ptr %38, align 8, !tbaa !42
  store ptr %209, ptr %210, align 8, !tbaa !71
  store ptr %201, ptr @PL_op, align 8, !tbaa !43
  %211 = load ptr, ptr @PL_runops, align 8, !tbaa !43
  %212 = call i32 %211() #11
  %213 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %214 = load ptr, ptr %213, align 8, !tbaa !43
  %215 = icmp eq ptr %25, %214
  br i1 %215, label %222, label %216

216:                                              ; preds = %206
  call void @Perl_sv_setsv_flags(ptr noundef %25, ptr noundef %214, i32 noundef 2) #11
  %217 = load i32, ptr %204, align 4, !tbaa !50
  %218 = and i32 %217, 4194304
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %216
  %221 = call i32 @Perl_mg_set(ptr noundef nonnull %25) #11
  br label %222

222:                                              ; preds = %206, %216, %220
  %223 = add nuw nsw i64 %207, 1
  %224 = icmp eq i64 %223, %205
  br i1 %224, label %225, label %206, !llvm.loop !98

225:                                              ; preds = %222, %188
  %226 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %227 = getelementptr inbounds %struct.stackinfo, ptr %226, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !93
  %229 = getelementptr inbounds %struct.stackinfo, ptr %226, i64 0, i32 4
  %230 = load i32, ptr %229, align 8, !tbaa !85
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.context, ptr %228, i64 %231, i32 0, i32 0, i32 11
  %233 = load i32, ptr %232, align 8, !tbaa !42
  %234 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %28) #12
  store i32 %233, ptr %234, align 4, !tbaa !49
  %235 = icmp eq i32 %233, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %225
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %28) #12
  %237 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %238 = getelementptr inbounds %struct.stackinfo, ptr %237, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !93
  br label %240

240:                                              ; preds = %236, %225
  %241 = phi ptr [ %239, %236 ], [ %228, %225 ]
  %242 = phi ptr [ %237, %236 ], [ %226, %225 ]
  %243 = getelementptr inbounds %struct.stackinfo, ptr %242, i64 0, i32 4
  %244 = load i32, ptr %243, align 8, !tbaa !85
  %245 = add nsw i32 %244, -1
  store i32 %245, ptr %243, align 8, !tbaa !85
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds %struct.context, ptr %241, i64 %246
  %248 = getelementptr inbounds %struct.block, ptr %247, i64 0, i32 4
  %249 = load ptr, ptr %248, align 8, !tbaa !42
  store ptr %249, ptr @PL_curcop, align 8, !tbaa !43
  %250 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %251 = getelementptr inbounds %struct.block, ptr %247, i64 0, i32 5
  %252 = load i32, ptr %251, align 8, !tbaa !42
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, ptr %250, i64 %253
  store ptr %254, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %255 = getelementptr inbounds %struct.block, ptr %247, i64 0, i32 6
  %256 = load i32, ptr %255, align 4, !tbaa !42
  store i32 %256, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %257 = getelementptr inbounds %struct.block, ptr %247, i64 0, i32 7
  %258 = load ptr, ptr %257, align 8, !tbaa !42
  store ptr %258, ptr @PL_curpm, align 8, !tbaa !43
  %259 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %260 = getelementptr inbounds %struct.stackinfo, ptr %242, i64 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !83
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %264

263:                                              ; preds = %240
  call void @Perl_croak_popstack() #11
  br label %264

264:                                              ; preds = %240, %263
  %265 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %266 = ptrtoint ptr %259 to i64
  %267 = ptrtoint ptr %265 to i64
  %268 = sub i64 %266, %267
  %269 = ashr exact i64 %268, 3
  %270 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %271 = load ptr, ptr %270, align 8, !tbaa !87
  %272 = getelementptr inbounds %struct.xpvav, ptr %271, i64 0, i32 2
  store i64 %269, ptr %272, align 8, !tbaa !89
  %273 = load ptr, ptr %261, align 8, !tbaa !86
  %274 = getelementptr inbounds %struct.av, ptr %273, i64 0, i32 3
  %275 = load ptr, ptr %274, align 8, !tbaa !42
  store ptr %275, ptr @PL_stack_base, align 8, !tbaa !43
  %276 = load ptr, ptr %261, align 8, !tbaa !86
  %277 = load ptr, ptr %276, align 8, !tbaa !87
  %278 = getelementptr inbounds %struct.xpvav, ptr %277, i64 0, i32 3
  %279 = load i64, ptr %278, align 8, !tbaa !91
  %280 = getelementptr inbounds ptr, ptr %275, i64 %279
  store ptr %280, ptr @PL_stack_max, align 8, !tbaa !43
  %281 = load ptr, ptr %261, align 8, !tbaa !86
  %282 = load ptr, ptr %281, align 8, !tbaa !87
  %283 = getelementptr inbounds %struct.xpvav, ptr %282, i64 0, i32 2
  %284 = load i64, ptr %283, align 8, !tbaa !89
  %285 = getelementptr inbounds ptr, ptr %275, i64 %284
  store ptr %285, ptr @PL_stack_sp, align 8, !tbaa !43
  %286 = load ptr, ptr %261, align 8, !tbaa !86
  store ptr %286, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %261, ptr @PL_curstackinfo, align 8, !tbaa !43
  %287 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %288 = getelementptr inbounds %struct.jmpenv, ptr %287, i64 0, i32 3
  store i8 %67, ptr %288, align 4, !tbaa !75
  call void @Perl_pop_scope() #11
  br label %322

289:                                              ; preds = %59, %319
  %290 = phi i64 [ 2, %59 ], [ %320, %319 ]
  %291 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %292 = getelementptr inbounds ptr, ptr %27, i64 %290
  %293 = load ptr, ptr %292, align 8, !tbaa !43
  %294 = load ptr, ptr %38, align 8, !tbaa !42
  store ptr %293, ptr %294, align 8, !tbaa !71
  %295 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %296 = getelementptr inbounds i32, ptr %295, i64 1
  store ptr %296, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %297 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !43
  %298 = icmp eq ptr %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %289
  %300 = call ptr @Perl_markstack_grow() #11
  br label %301

301:                                              ; preds = %289, %299
  %302 = phi ptr [ %300, %299 ], [ %296, %289 ]
  %303 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %304 = ptrtoint ptr %291 to i64
  %305 = ptrtoint ptr %303 to i64
  %306 = sub i64 %304, %305
  %307 = lshr exact i64 %306, 3
  %308 = trunc i64 %307 to i32
  store i32 %308, ptr %302, align 4, !tbaa !49
  %309 = call i32 @Perl_call_sv(ptr noundef nonnull %28, i32 noundef 2) #11
  %310 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %311 = load ptr, ptr %310, align 8, !tbaa !43
  %312 = icmp eq ptr %25, %311
  br i1 %312, label %319, label %313

313:                                              ; preds = %301
  call void @Perl_sv_setsv_flags(ptr noundef %25, ptr noundef %311, i32 noundef 2) #11
  %314 = load i32, ptr %60, align 4, !tbaa !50
  %315 = and i32 %314, 4194304
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %319, label %317

317:                                              ; preds = %313
  %318 = call i32 @Perl_mg_set(ptr noundef nonnull %25) #11
  br label %319

319:                                              ; preds = %317, %313, %301
  %320 = add nuw nsw i64 %290, 1
  %321 = icmp eq i64 %320, %61
  br i1 %321, label %322, label %289, !llvm.loop !99

322:                                              ; preds = %319, %264, %57, %31
  %323 = phi ptr [ @PL_sv_undef, %31 ], [ %25, %57 ], [ %25, %264 ], [ %25, %319 ]
  %324 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %325 = getelementptr inbounds ptr, ptr %324, i64 %22
  store ptr %323, ptr %325, align 8, !tbaa !43
  %326 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %327 = getelementptr inbounds ptr, ptr %326, i64 %22
  store ptr %327, ptr @PL_stack_sp, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_List__Util_first(ptr noundef %0) #0 !prof !35 !PGOFuncName !100 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %7 = load i32, ptr %5, align 4, !tbaa !49
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.44) #11
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %8, %1 ]
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %25 = call ptr @Perl_sv_2cv(ptr noundef %24, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #11
  br label %28

28:                                               ; preds = %27, %20
  %29 = icmp slt i32 %16, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %479

32:                                               ; preds = %28
  %33 = load ptr, ptr @PL_defgv, align 8, !tbaa !43
  %34 = getelementptr inbounds %struct.gv, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !42
  call void @Perl_save_sptr(ptr noundef %35) #11
  %36 = load ptr, ptr %25, align 8, !tbaa !36
  %37 = getelementptr inbounds %struct.xpvcv, ptr %36, i64 0, i32 12
  %38 = load i32, ptr %37, align 4, !tbaa !73
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = and i64 %15, 4294967295
  br label %387

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.xpvcv, ptr %36, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !42
  call void @Perl_push_scope() #11
  %46 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %47 = getelementptr inbounds %struct.jmpenv, ptr %46, i64 0, i32 3
  %48 = load i8, ptr %47, align 4, !tbaa !75, !range !78, !noundef !79
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #11
  %49 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !80
  store i64 %49, ptr @PL_tmps_floor, align 8, !tbaa !80
  call void @Perl_save_vptr(ptr noundef nonnull @PL_op) #11
  %50 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %51 = getelementptr inbounds %struct.jmpenv, ptr %50, i64 0, i32 3
  store i8 1, ptr %51, align 4, !tbaa !75
  %52 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %53 = getelementptr inbounds %struct.stackinfo, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !81
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %43
  %57 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #11
  %58 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %59 = getelementptr inbounds %struct.stackinfo, ptr %57, i64 0, i32 2
  store ptr %58, ptr %59, align 8, !tbaa !83
  %60 = getelementptr inbounds %struct.stackinfo, ptr %58, i64 0, i32 3
  store ptr %57, ptr %60, align 8, !tbaa !81
  br label %61

61:                                               ; preds = %56, %43
  %62 = phi ptr [ %54, %43 ], [ %57, %56 ]
  %63 = getelementptr inbounds %struct.stackinfo, ptr %62, i64 0, i32 6
  store i32 3, ptr %63, align 8, !tbaa !84
  %64 = getelementptr inbounds %struct.stackinfo, ptr %62, i64 0, i32 4
  store i32 -1, ptr %64, align 8, !tbaa !85
  %65 = load ptr, ptr %62, align 8, !tbaa !86
  %66 = load ptr, ptr %65, align 8, !tbaa !87
  %67 = getelementptr inbounds %struct.xpvav, ptr %66, i64 0, i32 2
  store i64 0, ptr %67, align 8, !tbaa !89
  %68 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %69 = ptrtoint ptr %68 to i64
  %70 = sub i64 %12, %69
  %71 = ashr exact i64 %70, 3
  %72 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %73 = load ptr, ptr %72, align 8, !tbaa !87
  %74 = getelementptr inbounds %struct.xpvav, ptr %73, i64 0, i32 2
  store i64 %71, ptr %74, align 8, !tbaa !89
  %75 = getelementptr inbounds %struct.av, ptr %65, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !42
  store ptr %76, ptr @PL_stack_base, align 8, !tbaa !43
  %77 = load ptr, ptr %62, align 8, !tbaa !86
  %78 = load ptr, ptr %77, align 8, !tbaa !87
  %79 = getelementptr inbounds %struct.xpvav, ptr %78, i64 0, i32 3
  %80 = load i64, ptr %79, align 8, !tbaa !91
  %81 = getelementptr inbounds ptr, ptr %76, i64 %80
  store ptr %81, ptr @PL_stack_max, align 8, !tbaa !43
  %82 = load ptr, ptr %62, align 8, !tbaa !86
  %83 = load ptr, ptr %82, align 8, !tbaa !87
  %84 = getelementptr inbounds %struct.xpvav, ptr %83, i64 0, i32 2
  %85 = load i64, ptr %84, align 8, !tbaa !89
  %86 = getelementptr inbounds ptr, ptr %76, i64 %85
  store ptr %86, ptr @PL_stack_sp, align 8, !tbaa !43
  %87 = load ptr, ptr %62, align 8, !tbaa !86
  store ptr %87, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %62, ptr @PL_curstackinfo, align 8, !tbaa !43
  %88 = getelementptr inbounds %struct.stackinfo, ptr %62, i64 0, i32 5
  %89 = load i32, ptr %88, align 4, !tbaa !92
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %61
  store i32 0, ptr %64, align 8, !tbaa !85
  br label %97

92:                                               ; preds = %61
  %93 = call i32 @Perl_cxinc() #11
  %94 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %95 = getelementptr inbounds %struct.stackinfo, ptr %94, i64 0, i32 4
  store i32 %93, ptr %95, align 8, !tbaa !85
  %96 = sext i32 %93 to i64
  br label %97

97:                                               ; preds = %92, %91
  %98 = phi i64 [ %96, %92 ], [ 0, %91 ]
  %99 = phi ptr [ %94, %92 ], [ %62, %91 ]
  %100 = getelementptr inbounds %struct.stackinfo, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !93
  %102 = getelementptr inbounds %struct.context, ptr %101, i64 %98
  store i8 24, ptr %102, align 8, !tbaa !42
  %103 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %104 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %105 = ptrtoint ptr %103 to i64
  %106 = ptrtoint ptr %104 to i64
  %107 = sub i64 %105, %106
  %108 = lshr exact i64 %107, 3
  %109 = trunc i64 %108 to i32
  %110 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 3
  store i32 %109, ptr %110, align 4, !tbaa !42
  %111 = load ptr, ptr @PL_curcop, align 8, !tbaa !43
  %112 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 4
  store ptr %111, ptr %112, align 8, !tbaa !42
  %113 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %114 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %115 = ptrtoint ptr %113 to i64
  %116 = ptrtoint ptr %114 to i64
  %117 = sub i64 %115, %116
  %118 = lshr exact i64 %117, 2
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 5
  store i32 %119, ptr %120, align 8, !tbaa !42
  %121 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %122 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 6
  store i32 %121, ptr %122, align 4, !tbaa !42
  %123 = load ptr, ptr @PL_curpm, align 8, !tbaa !43
  %124 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 7
  store ptr %123, ptr %124, align 8, !tbaa !42
  %125 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 1
  store i8 2, ptr %125, align 1, !tbaa !42
  %126 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %127 = getelementptr inbounds %struct.op, ptr %126, i64 0, i32 5
  %128 = load i8, ptr %127, align 2, !tbaa !94
  %129 = and i8 %128, 3
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %97
  %132 = getelementptr inbounds %struct.op, ptr %126, i64 0, i32 6
  %133 = load i8, ptr %132, align 1, !tbaa !63
  %134 = and i8 %133, -127
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = call i32 @Perl_was_lvalue_sub() #11
  %138 = and i32 %137, 207
  %139 = or disjoint i32 %138, 48
  br label %140

140:                                              ; preds = %136, %131, %97
  %141 = phi i32 [ 177, %97 ], [ %139, %136 ], [ 48, %131 ]
  %142 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 8
  %143 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 8, i32 0, i32 1
  store ptr %25, ptr %143, align 8, !tbaa !42
  %144 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %25) #12
  %145 = load i32, ptr %144, align 4, !tbaa !49
  %146 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 8, i32 0, i32 4
  store i32 %145, ptr %146, align 8, !tbaa !42
  store ptr null, ptr %142, align 8, !tbaa !42
  %147 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %25) #12
  %148 = load i32, ptr %147, align 4, !tbaa !49
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !95
  %153 = add i32 %152, 2
  store i32 %153, ptr %151, align 8, !tbaa !95
  call void @Perl_save_pushptr(ptr noundef nonnull %25, i32 noundef 11) #11
  br label %154

154:                                              ; preds = %150, %140
  %155 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %156 = getelementptr inbounds %struct.op, ptr %155, i64 0, i32 6
  %157 = load i8, ptr %156, align 1, !tbaa !63
  %158 = zext i8 %157 to i32
  %159 = and i32 %141, %158
  %160 = trunc i32 %159 to i16
  %161 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 2
  store i16 %160, ptr %161, align 2, !tbaa !42
  %162 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %25) #12
  %163 = load i32, ptr %162, align 4, !tbaa !49
  %164 = add nsw i32 %163, 1
  store i32 %164, ptr %162, align 4, !tbaa !49
  %165 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %25) #12
  %166 = load i32, ptr %165, align 4, !tbaa !49
  %167 = icmp sgt i32 %166, 1
  br i1 %167, label %168, label %169

168:                                              ; preds = %154
  call void @Perl_pad_push(ptr noundef %45, i32 noundef %166) #11
  br label %169

169:                                              ; preds = %154, %168
  %170 = load ptr, ptr @PL_comppad, align 8, !tbaa !43
  call void @Perl_save_pushptr(ptr noundef %170, i32 noundef 7) #11
  %171 = getelementptr inbounds %struct.padlist, ptr %45, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !96
  %173 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %25) #12
  %174 = load i32, ptr %173, align 4, !tbaa !49
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds ptr, ptr %172, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !43
  store ptr %177, ptr @PL_comppad, align 8, !tbaa !43
  %178 = getelementptr inbounds %struct.av, ptr %177, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !42
  store ptr %179, ptr @PL_curpad, align 8, !tbaa !43
  %180 = load ptr, ptr %25, align 8, !tbaa !36
  %181 = getelementptr inbounds %struct.xpvcv, ptr %180, i64 0, i32 5
  %182 = load ptr, ptr %181, align 8, !tbaa !42
  %183 = and i64 %15, 4294967295
  br label %184

184:                                              ; preds = %169, %320
  %185 = phi i64 [ 1, %169 ], [ %321, %320 ]
  %186 = getelementptr inbounds ptr, ptr %23, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !43
  %188 = load ptr, ptr @PL_defgv, align 8, !tbaa !43
  %189 = getelementptr inbounds %struct.gv, ptr %188, i64 0, i32 3
  %190 = load ptr, ptr %189, align 8, !tbaa !42
  store ptr %187, ptr %190, align 8, !tbaa !71
  store ptr %182, ptr @PL_op, align 8, !tbaa !43
  %191 = load ptr, ptr @PL_runops, align 8, !tbaa !43
  %192 = call i32 %191() #11
  %193 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %194 = load ptr, ptr %193, align 8, !tbaa !43
  store ptr %194, ptr @PL_Sv, align 8, !tbaa !43
  %195 = icmp eq ptr %194, null
  br i1 %195, label %320, label %196

196:                                              ; preds = %184
  %197 = getelementptr inbounds %struct.sv, ptr %194, i64 0, i32 2
  %198 = load i32, ptr %197, align 4, !tbaa !50
  %199 = and i32 %198, 2097152
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %196
  %202 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %194, i32 noundef 2) #11
  br i1 %202, label %250, label %320

203:                                              ; preds = %196
  %204 = and i32 %198, 65280
  %205 = icmp ne i32 %204, 0
  %206 = and i32 %198, 255
  %207 = icmp eq i32 %206, 8
  %208 = or i1 %205, %207
  %209 = and i32 %198, 16777471
  %210 = icmp eq i32 %209, 16777226
  %211 = or i1 %210, %208
  br i1 %211, label %212, label %320

212:                                              ; preds = %203
  %213 = and i32 %198, 1024
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %229, label %215

215:                                              ; preds = %212
  %216 = load ptr, ptr %194, align 8, !tbaa !52
  %217 = icmp eq ptr %216, null
  br i1 %217, label %320, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.xpv, ptr %216, i64 0, i32 2
  %220 = load i64, ptr %219, align 8, !tbaa !58
  %221 = icmp ugt i64 %220, 1
  br i1 %221, label %250, label %222

222:                                              ; preds = %218
  %223 = icmp eq i64 %220, 0
  br i1 %223, label %320, label %224

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.sv, ptr %194, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !42
  %227 = load i8, ptr %226, align 1, !tbaa !42
  %228 = icmp eq i8 %227, 48
  br i1 %228, label %320, label %250

229:                                              ; preds = %212
  %230 = and i32 %198, 768
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %248, label %232

232:                                              ; preds = %229
  %233 = and i32 %198, 256
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %232
  %236 = load ptr, ptr %194, align 8, !tbaa !52
  %237 = getelementptr inbounds %struct.xpviv, ptr %236, i64 0, i32 4
  %238 = load i64, ptr %237, align 8, !tbaa !42
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %235, %232
  %241 = and i32 %198, 512
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %320, label %243

243:                                              ; preds = %240
  %244 = load ptr, ptr %194, align 8, !tbaa !52
  %245 = getelementptr inbounds %struct.xpvnv, ptr %244, i64 0, i32 5
  %246 = load double, ptr %245, align 8, !tbaa !42
  %247 = fcmp une double %246, 0.000000e+00
  br i1 %247, label %250, label %320

248:                                              ; preds = %229
  %249 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %194, i32 noundef 0) #11
  br i1 %249, label %250, label %320

250:                                              ; preds = %224, %248, %201, %218, %235, %243
  %251 = trunc i64 %185 to i32
  %252 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %253 = getelementptr inbounds %struct.stackinfo, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !93
  %255 = getelementptr inbounds %struct.stackinfo, ptr %252, i64 0, i32 4
  %256 = load i32, ptr %255, align 8, !tbaa !85
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.context, ptr %254, i64 %257, i32 0, i32 0, i32 11
  %259 = load i32, ptr %258, align 8, !tbaa !42
  %260 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %25) #12
  store i32 %259, ptr %260, align 4, !tbaa !49
  %261 = icmp eq i32 %259, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %250
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %25) #12
  %263 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %264 = getelementptr inbounds %struct.stackinfo, ptr %263, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !93
  br label %266

266:                                              ; preds = %262, %250
  %267 = phi ptr [ %265, %262 ], [ %254, %250 ]
  %268 = phi ptr [ %263, %262 ], [ %252, %250 ]
  %269 = getelementptr inbounds %struct.stackinfo, ptr %268, i64 0, i32 4
  %270 = load i32, ptr %269, align 8, !tbaa !85
  %271 = add nsw i32 %270, -1
  store i32 %271, ptr %269, align 8, !tbaa !85
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds %struct.context, ptr %267, i64 %272
  %274 = getelementptr inbounds %struct.block, ptr %273, i64 0, i32 4
  %275 = load ptr, ptr %274, align 8, !tbaa !42
  store ptr %275, ptr @PL_curcop, align 8, !tbaa !43
  %276 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %277 = getelementptr inbounds %struct.block, ptr %273, i64 0, i32 5
  %278 = load i32, ptr %277, align 8, !tbaa !42
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, ptr %276, i64 %279
  store ptr %280, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %281 = getelementptr inbounds %struct.block, ptr %273, i64 0, i32 6
  %282 = load i32, ptr %281, align 4, !tbaa !42
  store i32 %282, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %283 = getelementptr inbounds %struct.block, ptr %273, i64 0, i32 7
  %284 = load ptr, ptr %283, align 8, !tbaa !42
  store ptr %284, ptr @PL_curpm, align 8, !tbaa !43
  %285 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %286 = getelementptr inbounds %struct.stackinfo, ptr %268, i64 0, i32 2
  %287 = load ptr, ptr %286, align 8, !tbaa !83
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %290

289:                                              ; preds = %266
  call void @Perl_croak_popstack() #11
  br label %290

290:                                              ; preds = %289, %266
  %291 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %292 = ptrtoint ptr %285 to i64
  %293 = ptrtoint ptr %291 to i64
  %294 = sub i64 %292, %293
  %295 = ashr exact i64 %294, 3
  %296 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %297 = load ptr, ptr %296, align 8, !tbaa !87
  %298 = getelementptr inbounds %struct.xpvav, ptr %297, i64 0, i32 2
  store i64 %295, ptr %298, align 8, !tbaa !89
  %299 = load ptr, ptr %287, align 8, !tbaa !86
  %300 = getelementptr inbounds %struct.av, ptr %299, i64 0, i32 3
  %301 = load ptr, ptr %300, align 8, !tbaa !42
  store ptr %301, ptr @PL_stack_base, align 8, !tbaa !43
  %302 = load ptr, ptr %287, align 8, !tbaa !86
  %303 = load ptr, ptr %302, align 8, !tbaa !87
  %304 = getelementptr inbounds %struct.xpvav, ptr %303, i64 0, i32 3
  %305 = load i64, ptr %304, align 8, !tbaa !91
  %306 = getelementptr inbounds ptr, ptr %301, i64 %305
  store ptr %306, ptr @PL_stack_max, align 8, !tbaa !43
  %307 = load ptr, ptr %287, align 8, !tbaa !86
  %308 = load ptr, ptr %307, align 8, !tbaa !87
  %309 = getelementptr inbounds %struct.xpvav, ptr %308, i64 0, i32 2
  %310 = load i64, ptr %309, align 8, !tbaa !89
  %311 = getelementptr inbounds ptr, ptr %301, i64 %310
  store ptr %311, ptr @PL_stack_sp, align 8, !tbaa !43
  %312 = load ptr, ptr %287, align 8, !tbaa !86
  store ptr %312, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %287, ptr @PL_curstackinfo, align 8, !tbaa !43
  %313 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %314 = getelementptr inbounds %struct.jmpenv, ptr %313, i64 0, i32 3
  store i8 %48, ptr %314, align 4, !tbaa !75
  call void @Perl_pop_scope() #11
  %315 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %316 = add nsw i32 %9, %251
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds ptr, ptr %315, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !43
  br label %479

320:                                              ; preds = %243, %224, %248, %201, %203, %215, %222, %240, %184
  %321 = add nuw nsw i64 %185, 1
  %322 = icmp eq i64 %321, %183
  br i1 %322, label %323, label %184, !llvm.loop !101

323:                                              ; preds = %320
  %324 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %325 = getelementptr inbounds %struct.stackinfo, ptr %324, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !93
  %327 = getelementptr inbounds %struct.stackinfo, ptr %324, i64 0, i32 4
  %328 = load i32, ptr %327, align 8, !tbaa !85
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.context, ptr %326, i64 %329, i32 0, i32 0, i32 11
  %331 = load i32, ptr %330, align 8, !tbaa !42
  %332 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %25) #12
  store i32 %331, ptr %332, align 4, !tbaa !49
  %333 = icmp eq i32 %331, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %323
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %25) #12
  %335 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %336 = getelementptr inbounds %struct.stackinfo, ptr %335, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !93
  br label %338

338:                                              ; preds = %334, %323
  %339 = phi ptr [ %337, %334 ], [ %326, %323 ]
  %340 = phi ptr [ %335, %334 ], [ %324, %323 ]
  %341 = getelementptr inbounds %struct.stackinfo, ptr %340, i64 0, i32 4
  %342 = load i32, ptr %341, align 8, !tbaa !85
  %343 = add nsw i32 %342, -1
  store i32 %343, ptr %341, align 8, !tbaa !85
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds %struct.context, ptr %339, i64 %344
  %346 = getelementptr inbounds %struct.block, ptr %345, i64 0, i32 4
  %347 = load ptr, ptr %346, align 8, !tbaa !42
  store ptr %347, ptr @PL_curcop, align 8, !tbaa !43
  %348 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %349 = getelementptr inbounds %struct.block, ptr %345, i64 0, i32 5
  %350 = load i32, ptr %349, align 8, !tbaa !42
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, ptr %348, i64 %351
  store ptr %352, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %353 = getelementptr inbounds %struct.block, ptr %345, i64 0, i32 6
  %354 = load i32, ptr %353, align 4, !tbaa !42
  store i32 %354, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %355 = getelementptr inbounds %struct.block, ptr %345, i64 0, i32 7
  %356 = load ptr, ptr %355, align 8, !tbaa !42
  store ptr %356, ptr @PL_curpm, align 8, !tbaa !43
  %357 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %358 = getelementptr inbounds %struct.stackinfo, ptr %340, i64 0, i32 2
  %359 = load ptr, ptr %358, align 8, !tbaa !83
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %362

361:                                              ; preds = %338
  call void @Perl_croak_popstack() #11
  br label %362

362:                                              ; preds = %361, %338
  %363 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %364 = ptrtoint ptr %357 to i64
  %365 = ptrtoint ptr %363 to i64
  %366 = sub i64 %364, %365
  %367 = ashr exact i64 %366, 3
  %368 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %369 = load ptr, ptr %368, align 8, !tbaa !87
  %370 = getelementptr inbounds %struct.xpvav, ptr %369, i64 0, i32 2
  store i64 %367, ptr %370, align 8, !tbaa !89
  %371 = load ptr, ptr %359, align 8, !tbaa !86
  %372 = getelementptr inbounds %struct.av, ptr %371, i64 0, i32 3
  %373 = load ptr, ptr %372, align 8, !tbaa !42
  store ptr %373, ptr @PL_stack_base, align 8, !tbaa !43
  %374 = load ptr, ptr %359, align 8, !tbaa !86
  %375 = load ptr, ptr %374, align 8, !tbaa !87
  %376 = getelementptr inbounds %struct.xpvav, ptr %375, i64 0, i32 3
  %377 = load i64, ptr %376, align 8, !tbaa !91
  %378 = getelementptr inbounds ptr, ptr %373, i64 %377
  store ptr %378, ptr @PL_stack_max, align 8, !tbaa !43
  %379 = load ptr, ptr %359, align 8, !tbaa !86
  %380 = load ptr, ptr %379, align 8, !tbaa !87
  %381 = getelementptr inbounds %struct.xpvav, ptr %380, i64 0, i32 2
  %382 = load i64, ptr %381, align 8, !tbaa !89
  %383 = getelementptr inbounds ptr, ptr %373, i64 %382
  store ptr %383, ptr @PL_stack_sp, align 8, !tbaa !43
  %384 = load ptr, ptr %359, align 8, !tbaa !86
  store ptr %384, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %359, ptr @PL_curstackinfo, align 8, !tbaa !43
  %385 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %386 = getelementptr inbounds %struct.jmpenv, ptr %385, i64 0, i32 3
  store i8 %48, ptr %386, align 4, !tbaa !75
  call void @Perl_pop_scope() #11
  br label %477

387:                                              ; preds = %41, %474
  %388 = phi i64 [ 1, %41 ], [ %475, %474 ]
  %389 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %390 = getelementptr inbounds ptr, ptr %23, i64 %388
  %391 = load ptr, ptr %390, align 8, !tbaa !43
  %392 = load ptr, ptr @PL_defgv, align 8, !tbaa !43
  %393 = getelementptr inbounds %struct.gv, ptr %392, i64 0, i32 3
  %394 = load ptr, ptr %393, align 8, !tbaa !42
  store ptr %391, ptr %394, align 8, !tbaa !71
  %395 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %396 = getelementptr inbounds i32, ptr %395, i64 1
  store ptr %396, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %397 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !43
  %398 = icmp eq ptr %396, %397
  br i1 %398, label %399, label %401

399:                                              ; preds = %387
  %400 = call ptr @Perl_markstack_grow() #11
  br label %401

401:                                              ; preds = %387, %399
  %402 = phi ptr [ %400, %399 ], [ %396, %387 ]
  %403 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %404 = ptrtoint ptr %389 to i64
  %405 = ptrtoint ptr %403 to i64
  %406 = sub i64 %404, %405
  %407 = lshr exact i64 %406, 3
  %408 = trunc i64 %407 to i32
  store i32 %408, ptr %402, align 4, !tbaa !49
  %409 = call i32 @Perl_call_sv(ptr noundef nonnull %25, i32 noundef 2) #11
  %410 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %411 = load ptr, ptr %410, align 8, !tbaa !43
  store ptr %411, ptr @PL_Sv, align 8, !tbaa !43
  %412 = icmp eq ptr %411, null
  br i1 %412, label %474, label %413

413:                                              ; preds = %401
  %414 = getelementptr inbounds %struct.sv, ptr %411, i64 0, i32 2
  %415 = load i32, ptr %414, align 4, !tbaa !50
  %416 = and i32 %415, 2097152
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %420, label %418

418:                                              ; preds = %413
  %419 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %411, i32 noundef 2) #11
  br i1 %419, label %467, label %474

420:                                              ; preds = %413
  %421 = and i32 %415, 65280
  %422 = icmp ne i32 %421, 0
  %423 = and i32 %415, 255
  %424 = icmp eq i32 %423, 8
  %425 = or i1 %422, %424
  %426 = and i32 %415, 16777471
  %427 = icmp eq i32 %426, 16777226
  %428 = or i1 %427, %425
  br i1 %428, label %429, label %474

429:                                              ; preds = %420
  %430 = and i32 %415, 1024
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %446, label %432

432:                                              ; preds = %429
  %433 = load ptr, ptr %411, align 8, !tbaa !52
  %434 = icmp eq ptr %433, null
  br i1 %434, label %474, label %435

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.xpv, ptr %433, i64 0, i32 2
  %437 = load i64, ptr %436, align 8, !tbaa !58
  %438 = icmp ugt i64 %437, 1
  br i1 %438, label %467, label %439

439:                                              ; preds = %435
  %440 = icmp eq i64 %437, 0
  br i1 %440, label %474, label %441

441:                                              ; preds = %439
  %442 = getelementptr inbounds %struct.sv, ptr %411, i64 0, i32 3
  %443 = load ptr, ptr %442, align 8, !tbaa !42
  %444 = load i8, ptr %443, align 1, !tbaa !42
  %445 = icmp eq i8 %444, 48
  br i1 %445, label %474, label %467

446:                                              ; preds = %429
  %447 = and i32 %415, 768
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %465, label %449

449:                                              ; preds = %446
  %450 = and i32 %415, 256
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %457, label %452

452:                                              ; preds = %449
  %453 = load ptr, ptr %411, align 8, !tbaa !52
  %454 = getelementptr inbounds %struct.xpviv, ptr %453, i64 0, i32 4
  %455 = load i64, ptr %454, align 8, !tbaa !42
  %456 = icmp eq i64 %455, 0
  br i1 %456, label %457, label %467

457:                                              ; preds = %452, %449
  %458 = and i32 %415, 512
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %474, label %460

460:                                              ; preds = %457
  %461 = load ptr, ptr %411, align 8, !tbaa !52
  %462 = getelementptr inbounds %struct.xpvnv, ptr %461, i64 0, i32 5
  %463 = load double, ptr %462, align 8, !tbaa !42
  %464 = fcmp une double %463, 0.000000e+00
  br i1 %464, label %467, label %474

465:                                              ; preds = %446
  %466 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %411, i32 noundef 0) #11
  br i1 %466, label %467, label %474

467:                                              ; preds = %441, %465, %418, %435, %452, %460
  %468 = trunc i64 %388 to i32
  %469 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %470 = add nsw i32 %9, %468
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds ptr, ptr %469, i64 %471
  %473 = load ptr, ptr %472, align 8, !tbaa !43
  br label %479

474:                                              ; preds = %460, %441, %465, %418, %420, %432, %439, %457, %401
  %475 = add nuw nsw i64 %388, 1
  %476 = icmp eq i64 %475, %42
  br i1 %476, label %477, label %387, !llvm.loop !102

477:                                              ; preds = %474, %362
  %478 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %479

479:                                              ; preds = %290, %467, %477, %30
  %480 = phi ptr [ %315, %290 ], [ %469, %467 ], [ %478, %477 ], [ %31, %30 ]
  %481 = phi ptr [ %319, %290 ], [ %473, %467 ], [ @PL_sv_undef, %477 ], [ @PL_sv_undef, %30 ]
  %482 = getelementptr inbounds ptr, ptr %480, i64 %22
  store ptr %481, ptr %482, align 8, !tbaa !43
  %483 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %484 = getelementptr inbounds ptr, ptr %483, i64 %22
  store ptr %484, ptr @PL_stack_sp, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_List__Util_any(ptr noundef %0) #0 !prof !35 !PGOFuncName !103 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %7 = load i32, ptr %5, align 4, !tbaa !49
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = load ptr, ptr %0, align 8, !tbaa !36
  %18 = getelementptr inbounds %struct.xpvcv, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !42
  %20 = icmp slt i32 %16, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.44) #11
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi ptr [ %22, %21 ], [ %8, %1 ]
  %25 = shl i64 %14, 29
  %26 = ashr i64 %25, 32
  %27 = sub nsw i64 0, %26
  %28 = getelementptr inbounds ptr, ptr %4, i64 %27
  %29 = sext i32 %9 to i64
  %30 = getelementptr inbounds ptr, ptr %24, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = and i32 %19, 2
  %33 = icmp eq i32 %32, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %34 = call ptr @Perl_sv_2cv(ptr noundef %31, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #11
  br label %37

37:                                               ; preds = %36, %23
  %38 = load ptr, ptr @PL_defgv, align 8, !tbaa !43
  %39 = getelementptr inbounds %struct.gv, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !42
  call void @Perl_save_sptr(ptr noundef %40) #11
  %41 = load ptr, ptr %34, align 8, !tbaa !36
  %42 = getelementptr inbounds %struct.xpvcv, ptr %41, i64 0, i32 12
  %43 = load i32, ptr %42, align 4, !tbaa !73
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = icmp sgt i32 %16, 1
  br i1 %47, label %48, label %495

48:                                               ; preds = %46
  %49 = and i32 %19, 1
  %50 = icmp eq i32 %49, 0
  %51 = and i64 %15, 4294967295
  br label %403

52:                                               ; preds = %37
  %53 = getelementptr inbounds %struct.xpvcv, ptr %41, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  call void @Perl_push_scope() #11
  %55 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %56 = getelementptr inbounds %struct.jmpenv, ptr %55, i64 0, i32 3
  %57 = load i8, ptr %56, align 4, !tbaa !75, !range !78, !noundef !79
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #11
  %58 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !80
  store i64 %58, ptr @PL_tmps_floor, align 8, !tbaa !80
  call void @Perl_save_vptr(ptr noundef nonnull @PL_op) #11
  %59 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %60 = getelementptr inbounds %struct.jmpenv, ptr %59, i64 0, i32 3
  store i8 1, ptr %60, align 4, !tbaa !75
  %61 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %62 = getelementptr inbounds %struct.stackinfo, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !81
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #11
  %67 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %68 = getelementptr inbounds %struct.stackinfo, ptr %66, i64 0, i32 2
  store ptr %67, ptr %68, align 8, !tbaa !83
  %69 = getelementptr inbounds %struct.stackinfo, ptr %67, i64 0, i32 3
  store ptr %66, ptr %69, align 8, !tbaa !81
  br label %70

70:                                               ; preds = %65, %52
  %71 = phi ptr [ %63, %52 ], [ %66, %65 ]
  %72 = getelementptr inbounds %struct.stackinfo, ptr %71, i64 0, i32 6
  store i32 3, ptr %72, align 8, !tbaa !84
  %73 = getelementptr inbounds %struct.stackinfo, ptr %71, i64 0, i32 4
  store i32 -1, ptr %73, align 8, !tbaa !85
  %74 = load ptr, ptr %71, align 8, !tbaa !86
  %75 = load ptr, ptr %74, align 8, !tbaa !87
  %76 = getelementptr inbounds %struct.xpvav, ptr %75, i64 0, i32 2
  store i64 0, ptr %76, align 8, !tbaa !89
  %77 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %78 = ptrtoint ptr %28 to i64
  %79 = ptrtoint ptr %77 to i64
  %80 = sub i64 %78, %79
  %81 = ashr exact i64 %80, 3
  %82 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %83 = load ptr, ptr %82, align 8, !tbaa !87
  %84 = getelementptr inbounds %struct.xpvav, ptr %83, i64 0, i32 2
  store i64 %81, ptr %84, align 8, !tbaa !89
  %85 = getelementptr inbounds %struct.av, ptr %74, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !42
  store ptr %86, ptr @PL_stack_base, align 8, !tbaa !43
  %87 = load ptr, ptr %71, align 8, !tbaa !86
  %88 = load ptr, ptr %87, align 8, !tbaa !87
  %89 = getelementptr inbounds %struct.xpvav, ptr %88, i64 0, i32 3
  %90 = load i64, ptr %89, align 8, !tbaa !91
  %91 = getelementptr inbounds ptr, ptr %86, i64 %90
  store ptr %91, ptr @PL_stack_max, align 8, !tbaa !43
  %92 = load ptr, ptr %71, align 8, !tbaa !86
  %93 = load ptr, ptr %92, align 8, !tbaa !87
  %94 = getelementptr inbounds %struct.xpvav, ptr %93, i64 0, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !89
  %96 = getelementptr inbounds ptr, ptr %86, i64 %95
  store ptr %96, ptr @PL_stack_sp, align 8, !tbaa !43
  %97 = load ptr, ptr %71, align 8, !tbaa !86
  store ptr %97, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %71, ptr @PL_curstackinfo, align 8, !tbaa !43
  %98 = getelementptr inbounds %struct.stackinfo, ptr %71, i64 0, i32 5
  %99 = load i32, ptr %98, align 4, !tbaa !92
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %70
  store i32 0, ptr %73, align 8, !tbaa !85
  br label %107

102:                                              ; preds = %70
  %103 = call i32 @Perl_cxinc() #11
  %104 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %105 = getelementptr inbounds %struct.stackinfo, ptr %104, i64 0, i32 4
  store i32 %103, ptr %105, align 8, !tbaa !85
  %106 = sext i32 %103 to i64
  br label %107

107:                                              ; preds = %102, %101
  %108 = phi i64 [ %106, %102 ], [ 0, %101 ]
  %109 = phi ptr [ %104, %102 ], [ %71, %101 ]
  %110 = getelementptr inbounds %struct.stackinfo, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !93
  %112 = getelementptr inbounds %struct.context, ptr %111, i64 %108
  store i8 24, ptr %112, align 8, !tbaa !42
  %113 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %114 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %115 = ptrtoint ptr %113 to i64
  %116 = ptrtoint ptr %114 to i64
  %117 = sub i64 %115, %116
  %118 = lshr exact i64 %117, 3
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 3
  store i32 %119, ptr %120, align 4, !tbaa !42
  %121 = load ptr, ptr @PL_curcop, align 8, !tbaa !43
  %122 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 4
  store ptr %121, ptr %122, align 8, !tbaa !42
  %123 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %124 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %125 = ptrtoint ptr %123 to i64
  %126 = ptrtoint ptr %124 to i64
  %127 = sub i64 %125, %126
  %128 = lshr exact i64 %127, 2
  %129 = trunc i64 %128 to i32
  %130 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 5
  store i32 %129, ptr %130, align 8, !tbaa !42
  %131 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %132 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 6
  store i32 %131, ptr %132, align 4, !tbaa !42
  %133 = load ptr, ptr @PL_curpm, align 8, !tbaa !43
  %134 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 7
  store ptr %133, ptr %134, align 8, !tbaa !42
  %135 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 1
  store i8 2, ptr %135, align 1, !tbaa !42
  %136 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %137 = getelementptr inbounds %struct.op, ptr %136, i64 0, i32 5
  %138 = load i8, ptr %137, align 2, !tbaa !94
  %139 = and i8 %138, 3
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %107
  %142 = getelementptr inbounds %struct.op, ptr %136, i64 0, i32 6
  %143 = load i8, ptr %142, align 1, !tbaa !63
  %144 = and i8 %143, -127
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = call i32 @Perl_was_lvalue_sub() #11
  %148 = and i32 %147, 207
  %149 = or disjoint i32 %148, 48
  br label %150

150:                                              ; preds = %146, %141, %107
  %151 = phi i32 [ 177, %107 ], [ %149, %146 ], [ 48, %141 ]
  %152 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 8
  %153 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 8, i32 0, i32 1
  store ptr %34, ptr %153, align 8, !tbaa !42
  %154 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %34) #12
  %155 = load i32, ptr %154, align 4, !tbaa !49
  %156 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 8, i32 0, i32 4
  store i32 %155, ptr %156, align 8, !tbaa !42
  store ptr null, ptr %152, align 8, !tbaa !42
  %157 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %34) #12
  %158 = load i32, ptr %157, align 4, !tbaa !49
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %150
  %161 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 1
  %162 = load i32, ptr %161, align 8, !tbaa !95
  %163 = add i32 %162, 2
  store i32 %163, ptr %161, align 8, !tbaa !95
  call void @Perl_save_pushptr(ptr noundef nonnull %34, i32 noundef 11) #11
  br label %164

164:                                              ; preds = %160, %150
  %165 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %166 = getelementptr inbounds %struct.op, ptr %165, i64 0, i32 6
  %167 = load i8, ptr %166, align 1, !tbaa !63
  %168 = zext i8 %167 to i32
  %169 = and i32 %151, %168
  %170 = trunc i32 %169 to i16
  %171 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 2
  store i16 %170, ptr %171, align 2, !tbaa !42
  %172 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %34) #12
  %173 = load i32, ptr %172, align 4, !tbaa !49
  %174 = add nsw i32 %173, 1
  store i32 %174, ptr %172, align 4, !tbaa !49
  %175 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %34) #12
  %176 = load i32, ptr %175, align 4, !tbaa !49
  %177 = icmp sgt i32 %176, 1
  br i1 %177, label %178, label %179

178:                                              ; preds = %164
  call void @Perl_pad_push(ptr noundef %54, i32 noundef %176) #11
  br label %179

179:                                              ; preds = %178, %164
  %180 = load ptr, ptr @PL_comppad, align 8, !tbaa !43
  call void @Perl_save_pushptr(ptr noundef %180, i32 noundef 7) #11
  %181 = getelementptr inbounds %struct.padlist, ptr %54, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !96
  %183 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %34) #12
  %184 = load i32, ptr %183, align 4, !tbaa !49
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds ptr, ptr %182, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !43
  store ptr %187, ptr @PL_comppad, align 8, !tbaa !43
  %188 = getelementptr inbounds %struct.av, ptr %187, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !42
  store ptr %189, ptr @PL_curpad, align 8, !tbaa !43
  %190 = load ptr, ptr %34, align 8, !tbaa !36
  %191 = getelementptr inbounds %struct.xpvcv, ptr %190, i64 0, i32 5
  %192 = load ptr, ptr %191, align 8, !tbaa !42
  %193 = icmp sgt i32 %16, 1
  br i1 %193, label %194, label %339

194:                                              ; preds = %179
  %195 = and i32 %19, 1
  %196 = icmp eq i32 %195, 0
  %197 = and i64 %15, 4294967295
  br label %198

198:                                              ; preds = %194, %336
  %199 = phi i64 [ 1, %194 ], [ %337, %336 ]
  %200 = getelementptr inbounds ptr, ptr %30, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !43
  %202 = load ptr, ptr @PL_defgv, align 8, !tbaa !43
  %203 = getelementptr inbounds %struct.gv, ptr %202, i64 0, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !42
  store ptr %201, ptr %204, align 8, !tbaa !71
  store ptr %192, ptr @PL_op, align 8, !tbaa !43
  %205 = load ptr, ptr @PL_runops, align 8, !tbaa !43
  %206 = call i32 %205() #11
  %207 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %208 = load ptr, ptr %207, align 8, !tbaa !43
  store ptr %208, ptr @PL_Sv, align 8, !tbaa !43
  %209 = icmp eq ptr %208, null
  br i1 %209, label %266, label %210

210:                                              ; preds = %198
  %211 = getelementptr inbounds %struct.sv, ptr %208, i64 0, i32 2
  %212 = load i32, ptr %211, align 4, !tbaa !50
  %213 = and i32 %212, 2097152
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %210
  %216 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %208, i32 noundef 2) #11
  br label %268

217:                                              ; preds = %210
  %218 = and i32 %212, 65280
  %219 = icmp ne i32 %218, 0
  %220 = and i32 %212, 255
  %221 = icmp eq i32 %220, 8
  %222 = or i1 %219, %221
  %223 = and i32 %212, 16777471
  %224 = icmp eq i32 %223, 16777226
  %225 = or i1 %224, %222
  br i1 %225, label %226, label %266

226:                                              ; preds = %217
  %227 = and i32 %212, 1024
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %243, label %229

229:                                              ; preds = %226
  %230 = load ptr, ptr %208, align 8, !tbaa !52
  %231 = icmp eq ptr %230, null
  br i1 %231, label %266, label %232

232:                                              ; preds = %229
  %233 = getelementptr inbounds %struct.xpv, ptr %230, i64 0, i32 2
  %234 = load i64, ptr %233, align 8, !tbaa !58
  %235 = icmp ugt i64 %234, 1
  br i1 %235, label %267, label %236

236:                                              ; preds = %232
  %237 = icmp eq i64 %234, 0
  br i1 %237, label %266, label %238

238:                                              ; preds = %236
  %239 = getelementptr inbounds %struct.sv, ptr %208, i64 0, i32 3
  %240 = load ptr, ptr %239, align 8, !tbaa !42
  %241 = load i8, ptr %240, align 1, !tbaa !42
  %242 = icmp ne i8 %241, 48
  br label %268

243:                                              ; preds = %226
  %244 = and i32 %212, 768
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %264, label %246

246:                                              ; preds = %243
  %247 = and i32 %212, 256
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %246
  %250 = load ptr, ptr %208, align 8, !tbaa !52
  %251 = getelementptr inbounds %struct.xpviv, ptr %250, i64 0, i32 4
  %252 = load i64, ptr %251, align 8, !tbaa !42
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %267

254:                                              ; preds = %249, %246
  %255 = and i32 %212, 512
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %266, label %257

257:                                              ; preds = %254
  %258 = load ptr, ptr %208, align 8, !tbaa !52
  %259 = getelementptr inbounds %struct.xpvnv, ptr %258, i64 0, i32 5
  %260 = load double, ptr %259, align 8, !tbaa !42
  %261 = fcmp uno double %260, 0.000000e+00
  br i1 %261, label %267, label %262

262:                                              ; preds = %257
  %263 = fcmp une double %260, 0.000000e+00
  br label %268

264:                                              ; preds = %243
  %265 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %208, i32 noundef 0) #11
  br label %268

266:                                              ; preds = %254, %236, %229, %217, %198
  br i1 %196, label %336, label %271

267:                                              ; preds = %257, %249, %232
  br i1 %196, label %271, label %336

268:                                              ; preds = %215, %264, %238, %262
  %269 = phi i1 [ %216, %215 ], [ %265, %264 ], [ %242, %238 ], [ %263, %262 ]
  %270 = xor i1 %196, %269
  br i1 %270, label %336, label %271

271:                                              ; preds = %267, %266, %268
  %272 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %273 = getelementptr inbounds %struct.stackinfo, ptr %272, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !93
  %275 = getelementptr inbounds %struct.stackinfo, ptr %272, i64 0, i32 4
  %276 = load i32, ptr %275, align 8, !tbaa !85
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.context, ptr %274, i64 %277, i32 0, i32 0, i32 11
  %279 = load i32, ptr %278, align 8, !tbaa !42
  %280 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %34) #12
  store i32 %279, ptr %280, align 4, !tbaa !49
  %281 = icmp eq i32 %279, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %271
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %34) #12
  %283 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %284 = getelementptr inbounds %struct.stackinfo, ptr %283, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !93
  br label %286

286:                                              ; preds = %282, %271
  %287 = phi ptr [ %285, %282 ], [ %274, %271 ]
  %288 = phi ptr [ %283, %282 ], [ %272, %271 ]
  %289 = getelementptr inbounds %struct.stackinfo, ptr %288, i64 0, i32 4
  %290 = load i32, ptr %289, align 8, !tbaa !85
  %291 = add nsw i32 %290, -1
  store i32 %291, ptr %289, align 8, !tbaa !85
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds %struct.context, ptr %287, i64 %292
  %294 = getelementptr inbounds %struct.block, ptr %293, i64 0, i32 4
  %295 = load ptr, ptr %294, align 8, !tbaa !42
  store ptr %295, ptr @PL_curcop, align 8, !tbaa !43
  %296 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %297 = getelementptr inbounds %struct.block, ptr %293, i64 0, i32 5
  %298 = load i32, ptr %297, align 8, !tbaa !42
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, ptr %296, i64 %299
  store ptr %300, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %301 = getelementptr inbounds %struct.block, ptr %293, i64 0, i32 6
  %302 = load i32, ptr %301, align 4, !tbaa !42
  store i32 %302, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %303 = getelementptr inbounds %struct.block, ptr %293, i64 0, i32 7
  %304 = load ptr, ptr %303, align 8, !tbaa !42
  store ptr %304, ptr @PL_curpm, align 8, !tbaa !43
  %305 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %306 = getelementptr inbounds %struct.stackinfo, ptr %288, i64 0, i32 2
  %307 = load ptr, ptr %306, align 8, !tbaa !83
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %310

309:                                              ; preds = %286
  call void @Perl_croak_popstack() #11
  br label %310

310:                                              ; preds = %309, %286
  %311 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %312 = ptrtoint ptr %305 to i64
  %313 = ptrtoint ptr %311 to i64
  %314 = sub i64 %312, %313
  %315 = ashr exact i64 %314, 3
  %316 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %317 = load ptr, ptr %316, align 8, !tbaa !87
  %318 = getelementptr inbounds %struct.xpvav, ptr %317, i64 0, i32 2
  store i64 %315, ptr %318, align 8, !tbaa !89
  %319 = load ptr, ptr %307, align 8, !tbaa !86
  %320 = getelementptr inbounds %struct.av, ptr %319, i64 0, i32 3
  %321 = load ptr, ptr %320, align 8, !tbaa !42
  store ptr %321, ptr @PL_stack_base, align 8, !tbaa !43
  %322 = load ptr, ptr %307, align 8, !tbaa !86
  %323 = load ptr, ptr %322, align 8, !tbaa !87
  %324 = getelementptr inbounds %struct.xpvav, ptr %323, i64 0, i32 3
  %325 = load i64, ptr %324, align 8, !tbaa !91
  %326 = getelementptr inbounds ptr, ptr %321, i64 %325
  store ptr %326, ptr @PL_stack_max, align 8, !tbaa !43
  %327 = load ptr, ptr %307, align 8, !tbaa !86
  %328 = load ptr, ptr %327, align 8, !tbaa !87
  %329 = getelementptr inbounds %struct.xpvav, ptr %328, i64 0, i32 2
  %330 = load i64, ptr %329, align 8, !tbaa !89
  %331 = getelementptr inbounds ptr, ptr %321, i64 %330
  store ptr %331, ptr @PL_stack_sp, align 8, !tbaa !43
  %332 = load ptr, ptr %307, align 8, !tbaa !86
  store ptr %332, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %307, ptr @PL_curstackinfo, align 8, !tbaa !43
  %333 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %334 = getelementptr inbounds %struct.jmpenv, ptr %333, i64 0, i32 3
  store i8 %57, ptr %334, align 4, !tbaa !75
  call void @Perl_pop_scope() #11
  %335 = select i1 %33, ptr @PL_sv_no, ptr @PL_sv_yes
  br label %497

336:                                              ; preds = %267, %266, %268
  %337 = add nuw nsw i64 %199, 1
  %338 = icmp eq i64 %337, %197
  br i1 %338, label %339, label %198, !llvm.loop !104

339:                                              ; preds = %336, %179
  %340 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %341 = getelementptr inbounds %struct.stackinfo, ptr %340, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !93
  %343 = getelementptr inbounds %struct.stackinfo, ptr %340, i64 0, i32 4
  %344 = load i32, ptr %343, align 8, !tbaa !85
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.context, ptr %342, i64 %345, i32 0, i32 0, i32 11
  %347 = load i32, ptr %346, align 8, !tbaa !42
  %348 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %34) #12
  store i32 %347, ptr %348, align 4, !tbaa !49
  %349 = icmp eq i32 %347, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %339
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %34) #12
  %351 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %352 = getelementptr inbounds %struct.stackinfo, ptr %351, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !93
  br label %354

354:                                              ; preds = %350, %339
  %355 = phi ptr [ %353, %350 ], [ %342, %339 ]
  %356 = phi ptr [ %351, %350 ], [ %340, %339 ]
  %357 = getelementptr inbounds %struct.stackinfo, ptr %356, i64 0, i32 4
  %358 = load i32, ptr %357, align 8, !tbaa !85
  %359 = add nsw i32 %358, -1
  store i32 %359, ptr %357, align 8, !tbaa !85
  %360 = sext i32 %358 to i64
  %361 = getelementptr inbounds %struct.context, ptr %355, i64 %360
  %362 = getelementptr inbounds %struct.block, ptr %361, i64 0, i32 4
  %363 = load ptr, ptr %362, align 8, !tbaa !42
  store ptr %363, ptr @PL_curcop, align 8, !tbaa !43
  %364 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %365 = getelementptr inbounds %struct.block, ptr %361, i64 0, i32 5
  %366 = load i32, ptr %365, align 8, !tbaa !42
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, ptr %364, i64 %367
  store ptr %368, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %369 = getelementptr inbounds %struct.block, ptr %361, i64 0, i32 6
  %370 = load i32, ptr %369, align 4, !tbaa !42
  store i32 %370, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %371 = getelementptr inbounds %struct.block, ptr %361, i64 0, i32 7
  %372 = load ptr, ptr %371, align 8, !tbaa !42
  store ptr %372, ptr @PL_curpm, align 8, !tbaa !43
  %373 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %374 = getelementptr inbounds %struct.stackinfo, ptr %356, i64 0, i32 2
  %375 = load ptr, ptr %374, align 8, !tbaa !83
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %378

377:                                              ; preds = %354
  call void @Perl_croak_popstack() #11
  br label %378

378:                                              ; preds = %377, %354
  %379 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %380 = ptrtoint ptr %373 to i64
  %381 = ptrtoint ptr %379 to i64
  %382 = sub i64 %380, %381
  %383 = ashr exact i64 %382, 3
  %384 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %385 = load ptr, ptr %384, align 8, !tbaa !87
  %386 = getelementptr inbounds %struct.xpvav, ptr %385, i64 0, i32 2
  store i64 %383, ptr %386, align 8, !tbaa !89
  %387 = load ptr, ptr %375, align 8, !tbaa !86
  %388 = getelementptr inbounds %struct.av, ptr %387, i64 0, i32 3
  %389 = load ptr, ptr %388, align 8, !tbaa !42
  store ptr %389, ptr @PL_stack_base, align 8, !tbaa !43
  %390 = load ptr, ptr %375, align 8, !tbaa !86
  %391 = load ptr, ptr %390, align 8, !tbaa !87
  %392 = getelementptr inbounds %struct.xpvav, ptr %391, i64 0, i32 3
  %393 = load i64, ptr %392, align 8, !tbaa !91
  %394 = getelementptr inbounds ptr, ptr %389, i64 %393
  store ptr %394, ptr @PL_stack_max, align 8, !tbaa !43
  %395 = load ptr, ptr %375, align 8, !tbaa !86
  %396 = load ptr, ptr %395, align 8, !tbaa !87
  %397 = getelementptr inbounds %struct.xpvav, ptr %396, i64 0, i32 2
  %398 = load i64, ptr %397, align 8, !tbaa !89
  %399 = getelementptr inbounds ptr, ptr %389, i64 %398
  store ptr %399, ptr @PL_stack_sp, align 8, !tbaa !43
  %400 = load ptr, ptr %375, align 8, !tbaa !86
  store ptr %400, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %375, ptr @PL_curstackinfo, align 8, !tbaa !43
  %401 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %402 = getelementptr inbounds %struct.jmpenv, ptr %401, i64 0, i32 3
  store i8 %57, ptr %402, align 4, !tbaa !75
  call void @Perl_pop_scope() #11
  br label %495

403:                                              ; preds = %48, %492
  %404 = phi i64 [ 1, %48 ], [ %493, %492 ]
  %405 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %406 = getelementptr inbounds ptr, ptr %30, i64 %404
  %407 = load ptr, ptr %406, align 8, !tbaa !43
  %408 = load ptr, ptr @PL_defgv, align 8, !tbaa !43
  %409 = getelementptr inbounds %struct.gv, ptr %408, i64 0, i32 3
  %410 = load ptr, ptr %409, align 8, !tbaa !42
  store ptr %407, ptr %410, align 8, !tbaa !71
  %411 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %412 = getelementptr inbounds i32, ptr %411, i64 1
  store ptr %412, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %413 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !43
  %414 = icmp eq ptr %412, %413
  br i1 %414, label %415, label %417

415:                                              ; preds = %403
  %416 = call ptr @Perl_markstack_grow() #11
  br label %417

417:                                              ; preds = %403, %415
  %418 = phi ptr [ %416, %415 ], [ %412, %403 ]
  %419 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %420 = ptrtoint ptr %405 to i64
  %421 = ptrtoint ptr %419 to i64
  %422 = sub i64 %420, %421
  %423 = lshr exact i64 %422, 3
  %424 = trunc i64 %423 to i32
  store i32 %424, ptr %418, align 4, !tbaa !49
  %425 = call i32 @Perl_call_sv(ptr noundef nonnull %34, i32 noundef 2) #11
  %426 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %427 = load ptr, ptr %426, align 8, !tbaa !43
  store ptr %427, ptr @PL_Sv, align 8, !tbaa !43
  %428 = icmp eq ptr %427, null
  br i1 %428, label %485, label %429

429:                                              ; preds = %417
  %430 = getelementptr inbounds %struct.sv, ptr %427, i64 0, i32 2
  %431 = load i32, ptr %430, align 4, !tbaa !50
  %432 = and i32 %431, 2097152
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %436, label %434

434:                                              ; preds = %429
  %435 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %427, i32 noundef 2) #11
  br label %487

436:                                              ; preds = %429
  %437 = and i32 %431, 65280
  %438 = icmp ne i32 %437, 0
  %439 = and i32 %431, 255
  %440 = icmp eq i32 %439, 8
  %441 = or i1 %438, %440
  %442 = and i32 %431, 16777471
  %443 = icmp eq i32 %442, 16777226
  %444 = or i1 %443, %441
  br i1 %444, label %445, label %485

445:                                              ; preds = %436
  %446 = and i32 %431, 1024
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %462, label %448

448:                                              ; preds = %445
  %449 = load ptr, ptr %427, align 8, !tbaa !52
  %450 = icmp eq ptr %449, null
  br i1 %450, label %485, label %451

451:                                              ; preds = %448
  %452 = getelementptr inbounds %struct.xpv, ptr %449, i64 0, i32 2
  %453 = load i64, ptr %452, align 8, !tbaa !58
  %454 = icmp ugt i64 %453, 1
  br i1 %454, label %486, label %455

455:                                              ; preds = %451
  %456 = icmp eq i64 %453, 0
  br i1 %456, label %485, label %457

457:                                              ; preds = %455
  %458 = getelementptr inbounds %struct.sv, ptr %427, i64 0, i32 3
  %459 = load ptr, ptr %458, align 8, !tbaa !42
  %460 = load i8, ptr %459, align 1, !tbaa !42
  %461 = icmp ne i8 %460, 48
  br label %487

462:                                              ; preds = %445
  %463 = and i32 %431, 768
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %483, label %465

465:                                              ; preds = %462
  %466 = and i32 %431, 256
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %473, label %468

468:                                              ; preds = %465
  %469 = load ptr, ptr %427, align 8, !tbaa !52
  %470 = getelementptr inbounds %struct.xpviv, ptr %469, i64 0, i32 4
  %471 = load i64, ptr %470, align 8, !tbaa !42
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %473, label %486

473:                                              ; preds = %468, %465
  %474 = and i32 %431, 512
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %485, label %476

476:                                              ; preds = %473
  %477 = load ptr, ptr %427, align 8, !tbaa !52
  %478 = getelementptr inbounds %struct.xpvnv, ptr %477, i64 0, i32 5
  %479 = load double, ptr %478, align 8, !tbaa !42
  %480 = fcmp uno double %479, 0.000000e+00
  br i1 %480, label %486, label %481

481:                                              ; preds = %476
  %482 = fcmp une double %479, 0.000000e+00
  br label %487

483:                                              ; preds = %462
  %484 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %427, i32 noundef 0) #11
  br label %487

485:                                              ; preds = %473, %455, %448, %436, %417
  br i1 %50, label %492, label %490

486:                                              ; preds = %476, %468, %451
  br i1 %50, label %490, label %492

487:                                              ; preds = %434, %483, %457, %481
  %488 = phi i1 [ %435, %434 ], [ %484, %483 ], [ %461, %457 ], [ %482, %481 ]
  %489 = xor i1 %50, %488
  br i1 %489, label %492, label %490

490:                                              ; preds = %486, %485, %487
  %491 = select i1 %33, ptr @PL_sv_no, ptr @PL_sv_yes
  br label %497

492:                                              ; preds = %486, %485, %487
  %493 = add nuw nsw i64 %404, 1
  %494 = icmp eq i64 %493, %51
  br i1 %494, label %495, label %403, !llvm.loop !105

495:                                              ; preds = %492, %46, %378
  %496 = select i1 %33, ptr @PL_sv_yes, ptr @PL_sv_no
  br label %497

497:                                              ; preds = %490, %310, %495
  %498 = phi ptr [ %491, %490 ], [ %335, %310 ], [ %496, %495 ]
  %499 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %500 = getelementptr inbounds ptr, ptr %499, i64 %29
  store ptr %498, ptr %500, align 8, !tbaa !43
  %501 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %502 = getelementptr inbounds ptr, ptr %501, i64 %29
  store ptr %502, ptr @PL_stack_sp, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_List__Util_pairfirst(ptr noundef %0) #0 !prof !35 !PGOFuncName !106 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %7 = load i32, ptr %5, align 4, !tbaa !49
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.44) #11
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %8, %1 ]
  %22 = shl i64 %14, 29
  %23 = ashr i64 %22, 32
  %24 = sub nsw i64 0, %23
  %25 = getelementptr inbounds ptr, ptr %4, i64 %24
  %26 = sext i32 %9 to i64
  %27 = getelementptr inbounds ptr, ptr %21, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %29 = call ptr @Perl_sv_2cv(ptr noundef %28, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #11
  %30 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.op, ptr %30, i64 0, i32 5
  %32 = load i8, ptr %31, align 2, !tbaa !94
  %33 = and i8 %32, 3
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %20
  %36 = zext nneg i8 %33 to i32
  br label %39

37:                                               ; preds = %20
  %38 = call i32 @Perl_block_gimme() #11
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = and i32 %16, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = call zeroext i1 @Perl_ckwarn(i32 noundef 12) #11
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.48) #11
  br label %46

46:                                               ; preds = %45, %43, %39
  %47 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef 3) #11
  %48 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef 3) #11
  %49 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !42
  call void @Perl_save_sptr(ptr noundef %50) #11
  %51 = getelementptr inbounds %struct.gv, ptr %48, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !42
  call void @Perl_save_sptr(ptr noundef %52) #11
  %53 = load ptr, ptr %29, align 8, !tbaa !36
  %54 = getelementptr inbounds %struct.xpvcv, ptr %53, i64 0, i32 12
  %55 = load i32, ptr %54, align 4, !tbaa !73
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %46
  %59 = icmp sgt i32 %16, 1
  br i1 %59, label %60, label %549

60:                                               ; preds = %58
  %61 = add i32 %7, 2
  %62 = shl i64 %14, 29
  %63 = add i64 %62, -4294967296
  %64 = ashr i64 %63, 32
  %65 = and i64 %15, 4294967295
  br label %437

66:                                               ; preds = %46
  %67 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %68 = getelementptr inbounds ptr, ptr %67, i64 %26
  %69 = getelementptr inbounds %struct.xpvcv, ptr %53, i64 0, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !42
  call void @Perl_push_scope() #11
  %71 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %72 = getelementptr inbounds %struct.jmpenv, ptr %71, i64 0, i32 3
  %73 = load i8, ptr %72, align 4, !tbaa !75, !range !78, !noundef !79
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #11
  %74 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !80
  store i64 %74, ptr @PL_tmps_floor, align 8, !tbaa !80
  call void @Perl_save_vptr(ptr noundef nonnull @PL_op) #11
  %75 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %76 = getelementptr inbounds %struct.jmpenv, ptr %75, i64 0, i32 3
  store i8 1, ptr %76, align 4, !tbaa !75
  %77 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %78 = getelementptr inbounds %struct.stackinfo, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !81
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %66
  %82 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #11
  %83 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %84 = getelementptr inbounds %struct.stackinfo, ptr %82, i64 0, i32 2
  store ptr %83, ptr %84, align 8, !tbaa !83
  %85 = getelementptr inbounds %struct.stackinfo, ptr %83, i64 0, i32 3
  store ptr %82, ptr %85, align 8, !tbaa !81
  br label %86

86:                                               ; preds = %81, %66
  %87 = phi ptr [ %79, %66 ], [ %82, %81 ]
  %88 = getelementptr inbounds %struct.stackinfo, ptr %87, i64 0, i32 6
  store i32 3, ptr %88, align 8, !tbaa !84
  %89 = getelementptr inbounds %struct.stackinfo, ptr %87, i64 0, i32 4
  store i32 -1, ptr %89, align 8, !tbaa !85
  %90 = load ptr, ptr %87, align 8, !tbaa !86
  %91 = load ptr, ptr %90, align 8, !tbaa !87
  %92 = getelementptr inbounds %struct.xpvav, ptr %91, i64 0, i32 2
  store i64 0, ptr %92, align 8, !tbaa !89
  %93 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %94 = ptrtoint ptr %25 to i64
  %95 = ptrtoint ptr %93 to i64
  %96 = sub i64 %94, %95
  %97 = ashr exact i64 %96, 3
  %98 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %99 = load ptr, ptr %98, align 8, !tbaa !87
  %100 = getelementptr inbounds %struct.xpvav, ptr %99, i64 0, i32 2
  store i64 %97, ptr %100, align 8, !tbaa !89
  %101 = getelementptr inbounds %struct.av, ptr %90, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !42
  store ptr %102, ptr @PL_stack_base, align 8, !tbaa !43
  %103 = load ptr, ptr %87, align 8, !tbaa !86
  %104 = load ptr, ptr %103, align 8, !tbaa !87
  %105 = getelementptr inbounds %struct.xpvav, ptr %104, i64 0, i32 3
  %106 = load i64, ptr %105, align 8, !tbaa !91
  %107 = getelementptr inbounds ptr, ptr %102, i64 %106
  store ptr %107, ptr @PL_stack_max, align 8, !tbaa !43
  %108 = load ptr, ptr %87, align 8, !tbaa !86
  %109 = load ptr, ptr %108, align 8, !tbaa !87
  %110 = getelementptr inbounds %struct.xpvav, ptr %109, i64 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !89
  %112 = getelementptr inbounds ptr, ptr %102, i64 %111
  store ptr %112, ptr @PL_stack_sp, align 8, !tbaa !43
  %113 = load ptr, ptr %87, align 8, !tbaa !86
  store ptr %113, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %87, ptr @PL_curstackinfo, align 8, !tbaa !43
  %114 = getelementptr inbounds %struct.stackinfo, ptr %87, i64 0, i32 5
  %115 = load i32, ptr %114, align 4, !tbaa !92
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %118

117:                                              ; preds = %86
  store i32 0, ptr %89, align 8, !tbaa !85
  br label %123

118:                                              ; preds = %86
  %119 = call i32 @Perl_cxinc() #11
  %120 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %121 = getelementptr inbounds %struct.stackinfo, ptr %120, i64 0, i32 4
  store i32 %119, ptr %121, align 8, !tbaa !85
  %122 = sext i32 %119 to i64
  br label %123

123:                                              ; preds = %118, %117
  %124 = phi i64 [ %122, %118 ], [ 0, %117 ]
  %125 = phi ptr [ %120, %118 ], [ %87, %117 ]
  %126 = getelementptr inbounds %struct.stackinfo, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !93
  %128 = getelementptr inbounds %struct.context, ptr %127, i64 %124
  store i8 24, ptr %128, align 8, !tbaa !42
  %129 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %130 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %131 = ptrtoint ptr %129 to i64
  %132 = ptrtoint ptr %130 to i64
  %133 = sub i64 %131, %132
  %134 = lshr exact i64 %133, 3
  %135 = trunc i64 %134 to i32
  %136 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 3
  store i32 %135, ptr %136, align 4, !tbaa !42
  %137 = load ptr, ptr @PL_curcop, align 8, !tbaa !43
  %138 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 4
  store ptr %137, ptr %138, align 8, !tbaa !42
  %139 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %140 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %141 = ptrtoint ptr %139 to i64
  %142 = ptrtoint ptr %140 to i64
  %143 = sub i64 %141, %142
  %144 = lshr exact i64 %143, 2
  %145 = trunc i64 %144 to i32
  %146 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 5
  store i32 %145, ptr %146, align 8, !tbaa !42
  %147 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %148 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 6
  store i32 %147, ptr %148, align 4, !tbaa !42
  %149 = load ptr, ptr @PL_curpm, align 8, !tbaa !43
  %150 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 7
  store ptr %149, ptr %150, align 8, !tbaa !42
  %151 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 1
  store i8 2, ptr %151, align 1, !tbaa !42
  %152 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %153 = getelementptr inbounds %struct.op, ptr %152, i64 0, i32 5
  %154 = load i8, ptr %153, align 2, !tbaa !94
  %155 = and i8 %154, 3
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %123
  %158 = getelementptr inbounds %struct.op, ptr %152, i64 0, i32 6
  %159 = load i8, ptr %158, align 1, !tbaa !63
  %160 = and i8 %159, -127
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = call i32 @Perl_was_lvalue_sub() #11
  %164 = and i32 %163, 207
  %165 = or disjoint i32 %164, 48
  br label %166

166:                                              ; preds = %162, %157, %123
  %167 = phi i32 [ 177, %123 ], [ %165, %162 ], [ 48, %157 ]
  %168 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 8
  %169 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 8, i32 0, i32 1
  store ptr %29, ptr %169, align 8, !tbaa !42
  %170 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %171 = load i32, ptr %170, align 4, !tbaa !49
  %172 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 8, i32 0, i32 4
  store i32 %171, ptr %172, align 8, !tbaa !42
  store ptr null, ptr %168, align 8, !tbaa !42
  %173 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %174 = load i32, ptr %173, align 4, !tbaa !49
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %166
  %177 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 1
  %178 = load i32, ptr %177, align 8, !tbaa !95
  %179 = add i32 %178, 2
  store i32 %179, ptr %177, align 8, !tbaa !95
  call void @Perl_save_pushptr(ptr noundef nonnull %29, i32 noundef 11) #11
  br label %180

180:                                              ; preds = %176, %166
  %181 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %182 = getelementptr inbounds %struct.op, ptr %181, i64 0, i32 6
  %183 = load i8, ptr %182, align 1, !tbaa !63
  %184 = zext i8 %183 to i32
  %185 = and i32 %167, %184
  %186 = trunc i32 %185 to i16
  %187 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 2
  store i16 %186, ptr %187, align 2, !tbaa !42
  %188 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %189 = load i32, ptr %188, align 4, !tbaa !49
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %188, align 4, !tbaa !49
  %191 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %192 = load i32, ptr %191, align 4, !tbaa !49
  %193 = icmp sgt i32 %192, 1
  br i1 %193, label %194, label %195

194:                                              ; preds = %180
  call void @Perl_pad_push(ptr noundef %70, i32 noundef %192) #11
  br label %195

195:                                              ; preds = %194, %180
  %196 = load ptr, ptr @PL_comppad, align 8, !tbaa !43
  call void @Perl_save_pushptr(ptr noundef %196, i32 noundef 7) #11
  %197 = getelementptr inbounds %struct.padlist, ptr %70, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !96
  %199 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %200 = load i32, ptr %199, align 4, !tbaa !49
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds ptr, ptr %198, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !43
  store ptr %203, ptr @PL_comppad, align 8, !tbaa !43
  %204 = getelementptr inbounds %struct.av, ptr %203, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !42
  store ptr %205, ptr @PL_curpad, align 8, !tbaa !43
  %206 = load ptr, ptr %29, align 8, !tbaa !36
  %207 = getelementptr inbounds %struct.xpvcv, ptr %206, i64 0, i32 5
  %208 = load ptr, ptr %207, align 8, !tbaa !42
  %209 = icmp sgt i32 %16, 1
  br i1 %209, label %210, label %370

210:                                              ; preds = %195
  %211 = shl i64 %14, 29
  %212 = add i64 %211, -4294967296
  %213 = ashr i64 %212, 32
  br label %214

214:                                              ; preds = %210, %366
  %215 = phi i64 [ 1, %210 ], [ %367, %366 ]
  %216 = getelementptr inbounds ptr, ptr %68, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !43
  %218 = load ptr, ptr %49, align 8, !tbaa !42
  store ptr %217, ptr %218, align 8, !tbaa !71
  %219 = icmp slt i64 %215, %213
  br i1 %219, label %220, label %223

220:                                              ; preds = %214
  %221 = getelementptr ptr, ptr %216, i64 1
  %222 = load ptr, ptr %221, align 8, !tbaa !43
  br label %223

223:                                              ; preds = %214, %220
  %224 = phi ptr [ %222, %220 ], [ @PL_sv_undef, %214 ]
  %225 = load ptr, ptr %51, align 8, !tbaa !42
  store ptr %224, ptr %225, align 8, !tbaa !71
  store ptr %208, ptr @PL_op, align 8, !tbaa !43
  %226 = load ptr, ptr @PL_runops, align 8, !tbaa !43
  %227 = call i32 %226() #11
  %228 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %229 = load ptr, ptr %228, align 8, !tbaa !43
  store ptr %229, ptr @PL_Sv, align 8, !tbaa !43
  %230 = icmp eq ptr %229, null
  br i1 %230, label %366, label %231

231:                                              ; preds = %223
  %232 = getelementptr inbounds %struct.sv, ptr %229, i64 0, i32 2
  %233 = load i32, ptr %232, align 4, !tbaa !50
  %234 = and i32 %233, 2097152
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %231
  %237 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %229, i32 noundef 2) #11
  br i1 %237, label %285, label %366

238:                                              ; preds = %231
  %239 = and i32 %233, 65280
  %240 = icmp ne i32 %239, 0
  %241 = and i32 %233, 255
  %242 = icmp eq i32 %241, 8
  %243 = or i1 %240, %242
  %244 = and i32 %233, 16777471
  %245 = icmp eq i32 %244, 16777226
  %246 = or i1 %245, %243
  br i1 %246, label %247, label %366

247:                                              ; preds = %238
  %248 = and i32 %233, 1024
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %264, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr %229, align 8, !tbaa !52
  %252 = icmp eq ptr %251, null
  br i1 %252, label %366, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.xpv, ptr %251, i64 0, i32 2
  %255 = load i64, ptr %254, align 8, !tbaa !58
  %256 = icmp ugt i64 %255, 1
  br i1 %256, label %285, label %257

257:                                              ; preds = %253
  %258 = icmp eq i64 %255, 0
  br i1 %258, label %366, label %259

259:                                              ; preds = %257
  %260 = getelementptr inbounds %struct.sv, ptr %229, i64 0, i32 3
  %261 = load ptr, ptr %260, align 8, !tbaa !42
  %262 = load i8, ptr %261, align 1, !tbaa !42
  %263 = icmp eq i8 %262, 48
  br i1 %263, label %366, label %285

264:                                              ; preds = %247
  %265 = and i32 %233, 768
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %283, label %267

267:                                              ; preds = %264
  %268 = and i32 %233, 256
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %275, label %270

270:                                              ; preds = %267
  %271 = load ptr, ptr %229, align 8, !tbaa !52
  %272 = getelementptr inbounds %struct.xpviv, ptr %271, i64 0, i32 4
  %273 = load i64, ptr %272, align 8, !tbaa !42
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %285

275:                                              ; preds = %270, %267
  %276 = and i32 %233, 512
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %366, label %278

278:                                              ; preds = %275
  %279 = load ptr, ptr %229, align 8, !tbaa !52
  %280 = getelementptr inbounds %struct.xpvnv, ptr %279, i64 0, i32 5
  %281 = load double, ptr %280, align 8, !tbaa !42
  %282 = fcmp une double %281, 0.000000e+00
  br i1 %282, label %285, label %366

283:                                              ; preds = %264
  %284 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %229, i32 noundef 0) #11
  br i1 %284, label %285, label %366

285:                                              ; preds = %259, %283, %236, %253, %270, %278
  %286 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %287 = getelementptr inbounds %struct.stackinfo, ptr %286, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !93
  %289 = getelementptr inbounds %struct.stackinfo, ptr %286, i64 0, i32 4
  %290 = load i32, ptr %289, align 8, !tbaa !85
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.context, ptr %288, i64 %291, i32 0, i32 0, i32 11
  %293 = load i32, ptr %292, align 8, !tbaa !42
  %294 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  store i32 %293, ptr %294, align 4, !tbaa !49
  %295 = icmp eq i32 %293, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %285
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %29) #12
  %297 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %298 = getelementptr inbounds %struct.stackinfo, ptr %297, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !93
  br label %300

300:                                              ; preds = %296, %285
  %301 = phi ptr [ %299, %296 ], [ %288, %285 ]
  %302 = phi ptr [ %297, %296 ], [ %286, %285 ]
  %303 = getelementptr inbounds %struct.stackinfo, ptr %302, i64 0, i32 4
  %304 = load i32, ptr %303, align 8, !tbaa !85
  %305 = add nsw i32 %304, -1
  store i32 %305, ptr %303, align 8, !tbaa !85
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds %struct.context, ptr %301, i64 %306
  %308 = getelementptr inbounds %struct.block, ptr %307, i64 0, i32 4
  %309 = load ptr, ptr %308, align 8, !tbaa !42
  store ptr %309, ptr @PL_curcop, align 8, !tbaa !43
  %310 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %311 = getelementptr inbounds %struct.block, ptr %307, i64 0, i32 5
  %312 = load i32, ptr %311, align 8, !tbaa !42
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, ptr %310, i64 %313
  store ptr %314, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %315 = getelementptr inbounds %struct.block, ptr %307, i64 0, i32 6
  %316 = load i32, ptr %315, align 4, !tbaa !42
  store i32 %316, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %317 = getelementptr inbounds %struct.block, ptr %307, i64 0, i32 7
  %318 = load ptr, ptr %317, align 8, !tbaa !42
  store ptr %318, ptr @PL_curpm, align 8, !tbaa !43
  %319 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %320 = getelementptr inbounds %struct.stackinfo, ptr %302, i64 0, i32 2
  %321 = load ptr, ptr %320, align 8, !tbaa !83
  %322 = icmp eq ptr %321, null
  br i1 %322, label %323, label %324

323:                                              ; preds = %300
  call void @Perl_croak_popstack() #11
  br label %324

324:                                              ; preds = %300, %323
  %325 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %326 = ptrtoint ptr %319 to i64
  %327 = ptrtoint ptr %325 to i64
  %328 = sub i64 %326, %327
  %329 = ashr exact i64 %328, 3
  %330 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %331 = load ptr, ptr %330, align 8, !tbaa !87
  %332 = getelementptr inbounds %struct.xpvav, ptr %331, i64 0, i32 2
  store i64 %329, ptr %332, align 8, !tbaa !89
  %333 = load ptr, ptr %321, align 8, !tbaa !86
  %334 = getelementptr inbounds %struct.av, ptr %333, i64 0, i32 3
  %335 = load ptr, ptr %334, align 8, !tbaa !42
  store ptr %335, ptr @PL_stack_base, align 8, !tbaa !43
  %336 = load ptr, ptr %321, align 8, !tbaa !86
  %337 = load ptr, ptr %336, align 8, !tbaa !87
  %338 = getelementptr inbounds %struct.xpvav, ptr %337, i64 0, i32 3
  %339 = load i64, ptr %338, align 8, !tbaa !91
  %340 = getelementptr inbounds ptr, ptr %335, i64 %339
  store ptr %340, ptr @PL_stack_max, align 8, !tbaa !43
  %341 = load ptr, ptr %321, align 8, !tbaa !86
  %342 = load ptr, ptr %341, align 8, !tbaa !87
  %343 = getelementptr inbounds %struct.xpvav, ptr %342, i64 0, i32 2
  %344 = load i64, ptr %343, align 8, !tbaa !89
  %345 = getelementptr inbounds ptr, ptr %335, i64 %344
  store ptr %345, ptr @PL_stack_sp, align 8, !tbaa !43
  %346 = load ptr, ptr %321, align 8, !tbaa !86
  store ptr %346, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %321, ptr @PL_curstackinfo, align 8, !tbaa !43
  %347 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %348 = getelementptr inbounds %struct.jmpenv, ptr %347, i64 0, i32 3
  store i8 %73, ptr %348, align 4, !tbaa !75
  call void @Perl_pop_scope() #11
  %349 = icmp eq i32 %40, 3
  br i1 %349, label %350, label %361

350:                                              ; preds = %324
  %351 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %217, i32 noundef 2) #11
  %352 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %353 = getelementptr inbounds ptr, ptr %352, i64 %26
  store ptr %351, ptr %353, align 8, !tbaa !43
  %354 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %224, i32 noundef 2) #11
  %355 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %356 = getelementptr ptr, ptr %355, i64 %10
  %357 = getelementptr ptr, ptr %356, i64 2
  store ptr %354, ptr %357, align 8, !tbaa !43
  %358 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %359 = getelementptr inbounds ptr, ptr %358, i64 %26
  %360 = getelementptr inbounds ptr, ptr %359, i64 1
  br label %553

361:                                              ; preds = %324
  %362 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %363 = getelementptr inbounds ptr, ptr %362, i64 %26
  store ptr @PL_sv_yes, ptr %363, align 8, !tbaa !43
  %364 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %365 = getelementptr inbounds ptr, ptr %364, i64 %26
  br label %553

366:                                              ; preds = %278, %223, %275, %257, %250, %238, %236, %283, %259
  %367 = add nuw i64 %215, 2
  %368 = trunc i64 %367 to i32
  %369 = icmp slt i32 %368, %16
  br i1 %369, label %214, label %370, !llvm.loop !107

370:                                              ; preds = %366, %195
  %371 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %372 = getelementptr inbounds %struct.stackinfo, ptr %371, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !93
  %374 = getelementptr inbounds %struct.stackinfo, ptr %371, i64 0, i32 4
  %375 = load i32, ptr %374, align 8, !tbaa !85
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.context, ptr %373, i64 %376, i32 0, i32 0, i32 11
  %378 = load i32, ptr %377, align 8, !tbaa !42
  %379 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  store i32 %378, ptr %379, align 4, !tbaa !49
  %380 = icmp eq i32 %378, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %370
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %29) #12
  %382 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %383 = getelementptr inbounds %struct.stackinfo, ptr %382, i64 0, i32 1
  %384 = load ptr, ptr %383, align 8, !tbaa !93
  br label %385

385:                                              ; preds = %381, %370
  %386 = phi ptr [ %384, %381 ], [ %373, %370 ]
  %387 = phi ptr [ %382, %381 ], [ %371, %370 ]
  %388 = getelementptr inbounds %struct.stackinfo, ptr %387, i64 0, i32 4
  %389 = load i32, ptr %388, align 8, !tbaa !85
  %390 = add nsw i32 %389, -1
  store i32 %390, ptr %388, align 8, !tbaa !85
  %391 = sext i32 %389 to i64
  %392 = getelementptr inbounds %struct.context, ptr %386, i64 %391
  %393 = getelementptr inbounds %struct.block, ptr %392, i64 0, i32 4
  %394 = load ptr, ptr %393, align 8, !tbaa !42
  store ptr %394, ptr @PL_curcop, align 8, !tbaa !43
  %395 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %396 = getelementptr inbounds %struct.block, ptr %392, i64 0, i32 5
  %397 = load i32, ptr %396, align 8, !tbaa !42
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, ptr %395, i64 %398
  store ptr %399, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %400 = getelementptr inbounds %struct.block, ptr %392, i64 0, i32 6
  %401 = load i32, ptr %400, align 4, !tbaa !42
  store i32 %401, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %402 = getelementptr inbounds %struct.block, ptr %392, i64 0, i32 7
  %403 = load ptr, ptr %402, align 8, !tbaa !42
  store ptr %403, ptr @PL_curpm, align 8, !tbaa !43
  %404 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %405 = getelementptr inbounds %struct.stackinfo, ptr %387, i64 0, i32 2
  %406 = load ptr, ptr %405, align 8, !tbaa !83
  %407 = icmp eq ptr %406, null
  br i1 %407, label %408, label %409

408:                                              ; preds = %385
  call void @Perl_croak_popstack() #11
  br label %409

409:                                              ; preds = %385, %408
  %410 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %411 = ptrtoint ptr %404 to i64
  %412 = ptrtoint ptr %410 to i64
  %413 = sub i64 %411, %412
  %414 = ashr exact i64 %413, 3
  %415 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %416 = load ptr, ptr %415, align 8, !tbaa !87
  %417 = getelementptr inbounds %struct.xpvav, ptr %416, i64 0, i32 2
  store i64 %414, ptr %417, align 8, !tbaa !89
  %418 = load ptr, ptr %406, align 8, !tbaa !86
  %419 = getelementptr inbounds %struct.av, ptr %418, i64 0, i32 3
  %420 = load ptr, ptr %419, align 8, !tbaa !42
  store ptr %420, ptr @PL_stack_base, align 8, !tbaa !43
  %421 = load ptr, ptr %406, align 8, !tbaa !86
  %422 = load ptr, ptr %421, align 8, !tbaa !87
  %423 = getelementptr inbounds %struct.xpvav, ptr %422, i64 0, i32 3
  %424 = load i64, ptr %423, align 8, !tbaa !91
  %425 = getelementptr inbounds ptr, ptr %420, i64 %424
  store ptr %425, ptr @PL_stack_max, align 8, !tbaa !43
  %426 = load ptr, ptr %406, align 8, !tbaa !86
  %427 = load ptr, ptr %426, align 8, !tbaa !87
  %428 = getelementptr inbounds %struct.xpvav, ptr %427, i64 0, i32 2
  %429 = load i64, ptr %428, align 8, !tbaa !89
  %430 = getelementptr inbounds ptr, ptr %420, i64 %429
  store ptr %430, ptr @PL_stack_sp, align 8, !tbaa !43
  %431 = load ptr, ptr %406, align 8, !tbaa !86
  store ptr %431, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %406, ptr @PL_curstackinfo, align 8, !tbaa !43
  %432 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %433 = getelementptr inbounds %struct.jmpenv, ptr %432, i64 0, i32 3
  store i8 %73, ptr %433, align 4, !tbaa !75
  call void @Perl_pop_scope() #11
  %434 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %435 = getelementptr inbounds ptr, ptr %434, i64 %26
  %436 = getelementptr inbounds ptr, ptr %435, i64 -1
  br label %553

437:                                              ; preds = %60, %546
  %438 = phi i64 [ 1, %60 ], [ %547, %546 ]
  %439 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %440 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %441 = getelementptr ptr, ptr %440, i64 %438
  %442 = getelementptr ptr, ptr %441, i64 %26
  %443 = load ptr, ptr %442, align 8, !tbaa !43
  %444 = load ptr, ptr %49, align 8, !tbaa !42
  store ptr %443, ptr %444, align 8, !tbaa !71
  %445 = icmp slt i64 %438, %64
  br i1 %445, label %446, label %453

446:                                              ; preds = %437
  %447 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %448 = trunc i64 %438 to i32
  %449 = add i32 %61, %448
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds ptr, ptr %447, i64 %450
  %452 = load ptr, ptr %451, align 8, !tbaa !43
  br label %453

453:                                              ; preds = %437, %446
  %454 = phi ptr [ %452, %446 ], [ @PL_sv_undef, %437 ]
  %455 = load ptr, ptr %51, align 8, !tbaa !42
  store ptr %454, ptr %455, align 8, !tbaa !71
  %456 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %457 = getelementptr inbounds i32, ptr %456, i64 1
  store ptr %457, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %458 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !43
  %459 = icmp eq ptr %457, %458
  br i1 %459, label %460, label %462

460:                                              ; preds = %453
  %461 = call ptr @Perl_markstack_grow() #11
  br label %462

462:                                              ; preds = %453, %460
  %463 = phi ptr [ %461, %460 ], [ %457, %453 ]
  %464 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %465 = ptrtoint ptr %439 to i64
  %466 = ptrtoint ptr %464 to i64
  %467 = sub i64 %465, %466
  %468 = lshr exact i64 %467, 3
  %469 = trunc i64 %468 to i32
  store i32 %469, ptr %463, align 4, !tbaa !49
  %470 = call i32 @Perl_call_sv(ptr noundef nonnull %29, i32 noundef 2) #11
  %471 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %472 = load ptr, ptr %471, align 8, !tbaa !43
  store ptr %472, ptr @PL_Sv, align 8, !tbaa !43
  %473 = icmp eq ptr %472, null
  br i1 %473, label %546, label %474

474:                                              ; preds = %462
  %475 = getelementptr inbounds %struct.sv, ptr %472, i64 0, i32 2
  %476 = load i32, ptr %475, align 4, !tbaa !50
  %477 = and i32 %476, 2097152
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %481, label %479

479:                                              ; preds = %474
  %480 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %472, i32 noundef 2) #11
  br i1 %480, label %528, label %546

481:                                              ; preds = %474
  %482 = and i32 %476, 65280
  %483 = icmp ne i32 %482, 0
  %484 = and i32 %476, 255
  %485 = icmp eq i32 %484, 8
  %486 = or i1 %483, %485
  %487 = and i32 %476, 16777471
  %488 = icmp eq i32 %487, 16777226
  %489 = or i1 %488, %486
  br i1 %489, label %490, label %546

490:                                              ; preds = %481
  %491 = and i32 %476, 1024
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %507, label %493

493:                                              ; preds = %490
  %494 = load ptr, ptr %472, align 8, !tbaa !52
  %495 = icmp eq ptr %494, null
  br i1 %495, label %546, label %496

496:                                              ; preds = %493
  %497 = getelementptr inbounds %struct.xpv, ptr %494, i64 0, i32 2
  %498 = load i64, ptr %497, align 8, !tbaa !58
  %499 = icmp ugt i64 %498, 1
  br i1 %499, label %528, label %500

500:                                              ; preds = %496
  %501 = icmp eq i64 %498, 0
  br i1 %501, label %546, label %502

502:                                              ; preds = %500
  %503 = getelementptr inbounds %struct.sv, ptr %472, i64 0, i32 3
  %504 = load ptr, ptr %503, align 8, !tbaa !42
  %505 = load i8, ptr %504, align 1, !tbaa !42
  %506 = icmp eq i8 %505, 48
  br i1 %506, label %546, label %528

507:                                              ; preds = %490
  %508 = and i32 %476, 768
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %526, label %510

510:                                              ; preds = %507
  %511 = and i32 %476, 256
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %518, label %513

513:                                              ; preds = %510
  %514 = load ptr, ptr %472, align 8, !tbaa !52
  %515 = getelementptr inbounds %struct.xpviv, ptr %514, i64 0, i32 4
  %516 = load i64, ptr %515, align 8, !tbaa !42
  %517 = icmp eq i64 %516, 0
  br i1 %517, label %518, label %528

518:                                              ; preds = %513, %510
  %519 = and i32 %476, 512
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %546, label %521

521:                                              ; preds = %518
  %522 = load ptr, ptr %472, align 8, !tbaa !52
  %523 = getelementptr inbounds %struct.xpvnv, ptr %522, i64 0, i32 5
  %524 = load double, ptr %523, align 8, !tbaa !42
  %525 = fcmp une double %524, 0.000000e+00
  br i1 %525, label %528, label %546

526:                                              ; preds = %507
  %527 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %472, i32 noundef 0) #11
  br i1 %527, label %528, label %546

528:                                              ; preds = %502, %526, %479, %496, %513, %521
  %529 = icmp eq i32 %40, 3
  br i1 %529, label %530, label %541

530:                                              ; preds = %528
  %531 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %443, i32 noundef 2) #11
  %532 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %533 = getelementptr inbounds ptr, ptr %532, i64 %26
  store ptr %531, ptr %533, align 8, !tbaa !43
  %534 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %454, i32 noundef 2) #11
  %535 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %536 = getelementptr ptr, ptr %535, i64 %10
  %537 = getelementptr ptr, ptr %536, i64 2
  store ptr %534, ptr %537, align 8, !tbaa !43
  %538 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %539 = getelementptr inbounds ptr, ptr %538, i64 %26
  %540 = getelementptr inbounds ptr, ptr %539, i64 1
  br label %553

541:                                              ; preds = %528
  %542 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %543 = getelementptr inbounds ptr, ptr %542, i64 %26
  store ptr @PL_sv_yes, ptr %543, align 8, !tbaa !43
  %544 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %545 = getelementptr inbounds ptr, ptr %544, i64 %26
  br label %553

546:                                              ; preds = %521, %462, %518, %500, %493, %481, %479, %526, %502
  %547 = add nuw nsw i64 %438, 2
  %548 = icmp ult i64 %547, %65
  br i1 %548, label %437, label %549, !llvm.loop !108

549:                                              ; preds = %546, %58
  %550 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %551 = getelementptr inbounds ptr, ptr %550, i64 %26
  %552 = getelementptr inbounds ptr, ptr %551, i64 -1
  br label %553

553:                                              ; preds = %530, %541, %350, %361, %409, %549
  %554 = phi ptr [ %540, %530 ], [ %545, %541 ], [ %360, %350 ], [ %365, %361 ], [ %436, %409 ], [ %552, %549 ]
  store ptr %554, ptr @PL_stack_sp, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_List__Util_pairgrep(ptr noundef %0) #0 !prof !35 !PGOFuncName !109 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %7 = load i32, ptr %5, align 4, !tbaa !49
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.44) #11
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %8, %1 ]
  %22 = shl i64 %14, 29
  %23 = ashr i64 %22, 32
  %24 = sub nsw i64 0, %23
  %25 = getelementptr inbounds ptr, ptr %4, i64 %24
  %26 = sext i32 %9 to i64
  %27 = getelementptr inbounds ptr, ptr %21, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %29 = call ptr @Perl_sv_2cv(ptr noundef %28, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #11
  %30 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.op, ptr %30, i64 0, i32 5
  %32 = load i8, ptr %31, align 2, !tbaa !94
  %33 = and i8 %32, 3
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %20
  %36 = zext nneg i8 %33 to i32
  br label %39

37:                                               ; preds = %20
  %38 = call i32 @Perl_block_gimme() #11
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = and i32 %16, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = call zeroext i1 @Perl_ckwarn(i32 noundef 12) #11
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.49) #11
  br label %46

46:                                               ; preds = %45, %43, %39
  %47 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef 3) #11
  %48 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef 3) #11
  %49 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !42
  call void @Perl_save_sptr(ptr noundef %50) #11
  %51 = getelementptr inbounds %struct.gv, ptr %48, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !42
  call void @Perl_save_sptr(ptr noundef %52) #11
  %53 = load ptr, ptr %29, align 8, !tbaa !36
  %54 = getelementptr inbounds %struct.xpvcv, ptr %53, i64 0, i32 12
  %55 = load i32, ptr %54, align 4, !tbaa !73
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %46
  %59 = icmp sgt i32 %16, 1
  br i1 %59, label %60, label %490

60:                                               ; preds = %58
  %61 = add i32 %7, 2
  %62 = shl i64 %14, 29
  %63 = add i64 %62, -4294967296
  %64 = ashr i64 %63, 32
  %65 = and i64 %15, 4294967295
  br label %379

66:                                               ; preds = %46
  %67 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %68 = getelementptr inbounds ptr, ptr %67, i64 %26
  %69 = getelementptr inbounds %struct.xpvcv, ptr %53, i64 0, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !42
  call void @Perl_push_scope() #11
  %71 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %72 = getelementptr inbounds %struct.jmpenv, ptr %71, i64 0, i32 3
  %73 = load i8, ptr %72, align 4, !tbaa !75, !range !78, !noundef !79
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #11
  %74 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !80
  store i64 %74, ptr @PL_tmps_floor, align 8, !tbaa !80
  call void @Perl_save_vptr(ptr noundef nonnull @PL_op) #11
  %75 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %76 = getelementptr inbounds %struct.jmpenv, ptr %75, i64 0, i32 3
  store i8 1, ptr %76, align 4, !tbaa !75
  %77 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %78 = getelementptr inbounds %struct.stackinfo, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !81
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %66
  %82 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #11
  %83 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %84 = getelementptr inbounds %struct.stackinfo, ptr %82, i64 0, i32 2
  store ptr %83, ptr %84, align 8, !tbaa !83
  %85 = getelementptr inbounds %struct.stackinfo, ptr %83, i64 0, i32 3
  store ptr %82, ptr %85, align 8, !tbaa !81
  br label %86

86:                                               ; preds = %81, %66
  %87 = phi ptr [ %79, %66 ], [ %82, %81 ]
  %88 = getelementptr inbounds %struct.stackinfo, ptr %87, i64 0, i32 6
  store i32 3, ptr %88, align 8, !tbaa !84
  %89 = getelementptr inbounds %struct.stackinfo, ptr %87, i64 0, i32 4
  store i32 -1, ptr %89, align 8, !tbaa !85
  %90 = load ptr, ptr %87, align 8, !tbaa !86
  %91 = load ptr, ptr %90, align 8, !tbaa !87
  %92 = getelementptr inbounds %struct.xpvav, ptr %91, i64 0, i32 2
  store i64 0, ptr %92, align 8, !tbaa !89
  %93 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %94 = ptrtoint ptr %25 to i64
  %95 = ptrtoint ptr %93 to i64
  %96 = sub i64 %94, %95
  %97 = ashr exact i64 %96, 3
  %98 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %99 = load ptr, ptr %98, align 8, !tbaa !87
  %100 = getelementptr inbounds %struct.xpvav, ptr %99, i64 0, i32 2
  store i64 %97, ptr %100, align 8, !tbaa !89
  %101 = getelementptr inbounds %struct.av, ptr %90, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !42
  store ptr %102, ptr @PL_stack_base, align 8, !tbaa !43
  %103 = load ptr, ptr %87, align 8, !tbaa !86
  %104 = load ptr, ptr %103, align 8, !tbaa !87
  %105 = getelementptr inbounds %struct.xpvav, ptr %104, i64 0, i32 3
  %106 = load i64, ptr %105, align 8, !tbaa !91
  %107 = getelementptr inbounds ptr, ptr %102, i64 %106
  store ptr %107, ptr @PL_stack_max, align 8, !tbaa !43
  %108 = load ptr, ptr %87, align 8, !tbaa !86
  %109 = load ptr, ptr %108, align 8, !tbaa !87
  %110 = getelementptr inbounds %struct.xpvav, ptr %109, i64 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !89
  %112 = getelementptr inbounds ptr, ptr %102, i64 %111
  store ptr %112, ptr @PL_stack_sp, align 8, !tbaa !43
  %113 = load ptr, ptr %87, align 8, !tbaa !86
  store ptr %113, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %87, ptr @PL_curstackinfo, align 8, !tbaa !43
  %114 = getelementptr inbounds %struct.stackinfo, ptr %87, i64 0, i32 5
  %115 = load i32, ptr %114, align 4, !tbaa !92
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %118

117:                                              ; preds = %86
  store i32 0, ptr %89, align 8, !tbaa !85
  br label %123

118:                                              ; preds = %86
  %119 = call i32 @Perl_cxinc() #11
  %120 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %121 = getelementptr inbounds %struct.stackinfo, ptr %120, i64 0, i32 4
  store i32 %119, ptr %121, align 8, !tbaa !85
  %122 = sext i32 %119 to i64
  br label %123

123:                                              ; preds = %118, %117
  %124 = phi i64 [ %122, %118 ], [ 0, %117 ]
  %125 = phi ptr [ %120, %118 ], [ %87, %117 ]
  %126 = getelementptr inbounds %struct.stackinfo, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !93
  %128 = getelementptr inbounds %struct.context, ptr %127, i64 %124
  store i8 24, ptr %128, align 8, !tbaa !42
  %129 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %130 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %131 = ptrtoint ptr %129 to i64
  %132 = ptrtoint ptr %130 to i64
  %133 = sub i64 %131, %132
  %134 = lshr exact i64 %133, 3
  %135 = trunc i64 %134 to i32
  %136 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 3
  store i32 %135, ptr %136, align 4, !tbaa !42
  %137 = load ptr, ptr @PL_curcop, align 8, !tbaa !43
  %138 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 4
  store ptr %137, ptr %138, align 8, !tbaa !42
  %139 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %140 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %141 = ptrtoint ptr %139 to i64
  %142 = ptrtoint ptr %140 to i64
  %143 = sub i64 %141, %142
  %144 = lshr exact i64 %143, 2
  %145 = trunc i64 %144 to i32
  %146 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 5
  store i32 %145, ptr %146, align 8, !tbaa !42
  %147 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %148 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 6
  store i32 %147, ptr %148, align 4, !tbaa !42
  %149 = load ptr, ptr @PL_curpm, align 8, !tbaa !43
  %150 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 7
  store ptr %149, ptr %150, align 8, !tbaa !42
  %151 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 1
  store i8 2, ptr %151, align 1, !tbaa !42
  %152 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %153 = getelementptr inbounds %struct.op, ptr %152, i64 0, i32 5
  %154 = load i8, ptr %153, align 2, !tbaa !94
  %155 = and i8 %154, 3
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %123
  %158 = getelementptr inbounds %struct.op, ptr %152, i64 0, i32 6
  %159 = load i8, ptr %158, align 1, !tbaa !63
  %160 = and i8 %159, -127
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = call i32 @Perl_was_lvalue_sub() #11
  %164 = and i32 %163, 207
  %165 = or disjoint i32 %164, 48
  br label %166

166:                                              ; preds = %162, %157, %123
  %167 = phi i32 [ 177, %123 ], [ %165, %162 ], [ 48, %157 ]
  %168 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 8
  %169 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 8, i32 0, i32 1
  store ptr %29, ptr %169, align 8, !tbaa !42
  %170 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %171 = load i32, ptr %170, align 4, !tbaa !49
  %172 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 8, i32 0, i32 4
  store i32 %171, ptr %172, align 8, !tbaa !42
  store ptr null, ptr %168, align 8, !tbaa !42
  %173 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %174 = load i32, ptr %173, align 4, !tbaa !49
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %166
  %177 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 1
  %178 = load i32, ptr %177, align 8, !tbaa !95
  %179 = add i32 %178, 2
  store i32 %179, ptr %177, align 8, !tbaa !95
  call void @Perl_save_pushptr(ptr noundef nonnull %29, i32 noundef 11) #11
  br label %180

180:                                              ; preds = %176, %166
  %181 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %182 = getelementptr inbounds %struct.op, ptr %181, i64 0, i32 6
  %183 = load i8, ptr %182, align 1, !tbaa !63
  %184 = zext i8 %183 to i32
  %185 = and i32 %167, %184
  %186 = trunc i32 %185 to i16
  %187 = getelementptr inbounds %struct.block, ptr %128, i64 0, i32 2
  store i16 %186, ptr %187, align 2, !tbaa !42
  %188 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %189 = load i32, ptr %188, align 4, !tbaa !49
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %188, align 4, !tbaa !49
  %191 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %192 = load i32, ptr %191, align 4, !tbaa !49
  %193 = icmp sgt i32 %192, 1
  br i1 %193, label %194, label %195

194:                                              ; preds = %180
  call void @Perl_pad_push(ptr noundef %70, i32 noundef %192) #11
  br label %195

195:                                              ; preds = %194, %180
  %196 = load ptr, ptr @PL_comppad, align 8, !tbaa !43
  call void @Perl_save_pushptr(ptr noundef %196, i32 noundef 7) #11
  %197 = getelementptr inbounds %struct.padlist, ptr %70, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !96
  %199 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %200 = load i32, ptr %199, align 4, !tbaa !49
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds ptr, ptr %198, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !43
  store ptr %203, ptr @PL_comppad, align 8, !tbaa !43
  %204 = getelementptr inbounds %struct.av, ptr %203, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !42
  store ptr %205, ptr @PL_curpad, align 8, !tbaa !43
  %206 = load ptr, ptr %29, align 8, !tbaa !36
  %207 = getelementptr inbounds %struct.xpvcv, ptr %206, i64 0, i32 5
  %208 = load ptr, ptr %207, align 8, !tbaa !42
  %209 = icmp sgt i32 %16, 1
  br i1 %209, label %210, label %301

210:                                              ; preds = %195
  %211 = shl i64 %14, 29
  %212 = add i64 %211, -4294967296
  %213 = ashr i64 %212, 32
  br label %214

214:                                              ; preds = %210, %296
  %215 = phi i64 [ 1, %210 ], [ %298, %296 ]
  %216 = phi i32 [ 0, %210 ], [ %297, %296 ]
  %217 = getelementptr inbounds ptr, ptr %68, i64 %215
  %218 = load ptr, ptr %217, align 8, !tbaa !43
  %219 = load ptr, ptr %49, align 8, !tbaa !42
  store ptr %218, ptr %219, align 8, !tbaa !71
  %220 = icmp slt i64 %215, %213
  br i1 %220, label %221, label %224

221:                                              ; preds = %214
  %222 = getelementptr ptr, ptr %217, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !43
  br label %224

224:                                              ; preds = %214, %221
  %225 = phi ptr [ %223, %221 ], [ @PL_sv_undef, %214 ]
  %226 = load ptr, ptr %51, align 8, !tbaa !42
  store ptr %225, ptr %226, align 8, !tbaa !71
  store ptr %208, ptr @PL_op, align 8, !tbaa !43
  %227 = load ptr, ptr @PL_runops, align 8, !tbaa !43
  %228 = call i32 %227() #11
  %229 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %230 = load ptr, ptr %229, align 8, !tbaa !43
  store ptr %230, ptr @PL_Sv, align 8, !tbaa !43
  %231 = icmp eq ptr %230, null
  br i1 %231, label %296, label %232

232:                                              ; preds = %224
  %233 = getelementptr inbounds %struct.sv, ptr %230, i64 0, i32 2
  %234 = load i32, ptr %233, align 4, !tbaa !50
  %235 = and i32 %234, 2097152
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %232
  %238 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %230, i32 noundef 2) #11
  br i1 %238, label %286, label %296

239:                                              ; preds = %232
  %240 = and i32 %234, 65280
  %241 = icmp ne i32 %240, 0
  %242 = and i32 %234, 255
  %243 = icmp eq i32 %242, 8
  %244 = or i1 %241, %243
  %245 = and i32 %234, 16777471
  %246 = icmp eq i32 %245, 16777226
  %247 = or i1 %246, %244
  br i1 %247, label %248, label %296

248:                                              ; preds = %239
  %249 = and i32 %234, 1024
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %265, label %251

251:                                              ; preds = %248
  %252 = load ptr, ptr %230, align 8, !tbaa !52
  %253 = icmp eq ptr %252, null
  br i1 %253, label %296, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.xpv, ptr %252, i64 0, i32 2
  %256 = load i64, ptr %255, align 8, !tbaa !58
  %257 = icmp ugt i64 %256, 1
  br i1 %257, label %286, label %258

258:                                              ; preds = %254
  %259 = icmp eq i64 %256, 0
  br i1 %259, label %296, label %260

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.sv, ptr %230, i64 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !42
  %263 = load i8, ptr %262, align 1, !tbaa !42
  %264 = icmp eq i8 %263, 48
  br i1 %264, label %296, label %286

265:                                              ; preds = %248
  %266 = and i32 %234, 768
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %284, label %268

268:                                              ; preds = %265
  %269 = and i32 %234, 256
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %268
  %272 = load ptr, ptr %230, align 8, !tbaa !52
  %273 = getelementptr inbounds %struct.xpviv, ptr %272, i64 0, i32 4
  %274 = load i64, ptr %273, align 8, !tbaa !42
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %271, %268
  %277 = and i32 %234, 512
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %296, label %279

279:                                              ; preds = %276
  %280 = load ptr, ptr %230, align 8, !tbaa !52
  %281 = getelementptr inbounds %struct.xpvnv, ptr %280, i64 0, i32 5
  %282 = load double, ptr %281, align 8, !tbaa !42
  %283 = fcmp une double %282, 0.000000e+00
  br i1 %283, label %286, label %296

284:                                              ; preds = %265
  %285 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %230, i32 noundef 0) #11
  br i1 %285, label %286, label %296

286:                                              ; preds = %260, %284, %237, %254, %271, %279
  switch i32 %40, label %296 [
    i32 3, label %287
    i32 2, label %294
  ]

287:                                              ; preds = %286
  %288 = call ptr @Perl_newSVsv(ptr noundef %218) #11
  %289 = sext i32 %216 to i64
  %290 = getelementptr inbounds ptr, ptr %68, i64 %289
  store ptr %288, ptr %290, align 8, !tbaa !43
  %291 = call ptr @Perl_newSVsv(ptr noundef %225) #11
  %292 = add nsw i32 %216, 2
  %293 = getelementptr ptr, ptr %290, i64 1
  store ptr %291, ptr %293, align 8, !tbaa !43
  br label %296

294:                                              ; preds = %286
  %295 = add nsw i32 %216, 1
  br label %296

296:                                              ; preds = %279, %260, %284, %237, %239, %251, %258, %276, %286, %224, %287, %294
  %297 = phi i32 [ %292, %287 ], [ %295, %294 ], [ %216, %224 ], [ %216, %286 ], [ %216, %276 ], [ %216, %258 ], [ %216, %251 ], [ %216, %239 ], [ %216, %237 ], [ %216, %284 ], [ %216, %260 ], [ %216, %279 ]
  %298 = add nuw i64 %215, 2
  %299 = trunc i64 %298 to i32
  %300 = icmp slt i32 %299, %16
  br i1 %300, label %214, label %301, !llvm.loop !110

301:                                              ; preds = %296, %195
  %302 = phi i32 [ 0, %195 ], [ %297, %296 ]
  %303 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %304 = getelementptr inbounds %struct.stackinfo, ptr %303, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !93
  %306 = getelementptr inbounds %struct.stackinfo, ptr %303, i64 0, i32 4
  %307 = load i32, ptr %306, align 8, !tbaa !85
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.context, ptr %305, i64 %308, i32 0, i32 0, i32 11
  %310 = load i32, ptr %309, align 8, !tbaa !42
  %311 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  store i32 %310, ptr %311, align 4, !tbaa !49
  %312 = icmp eq i32 %310, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %301
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %29) #12
  %314 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %315 = getelementptr inbounds %struct.stackinfo, ptr %314, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !93
  br label %317

317:                                              ; preds = %313, %301
  %318 = phi ptr [ %316, %313 ], [ %305, %301 ]
  %319 = phi ptr [ %314, %313 ], [ %303, %301 ]
  %320 = getelementptr inbounds %struct.stackinfo, ptr %319, i64 0, i32 4
  %321 = load i32, ptr %320, align 8, !tbaa !85
  %322 = add nsw i32 %321, -1
  store i32 %322, ptr %320, align 8, !tbaa !85
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds %struct.context, ptr %318, i64 %323
  %325 = getelementptr inbounds %struct.block, ptr %324, i64 0, i32 4
  %326 = load ptr, ptr %325, align 8, !tbaa !42
  store ptr %326, ptr @PL_curcop, align 8, !tbaa !43
  %327 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %328 = getelementptr inbounds %struct.block, ptr %324, i64 0, i32 5
  %329 = load i32, ptr %328, align 8, !tbaa !42
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, ptr %327, i64 %330
  store ptr %331, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %332 = getelementptr inbounds %struct.block, ptr %324, i64 0, i32 6
  %333 = load i32, ptr %332, align 4, !tbaa !42
  store i32 %333, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %334 = getelementptr inbounds %struct.block, ptr %324, i64 0, i32 7
  %335 = load ptr, ptr %334, align 8, !tbaa !42
  store ptr %335, ptr @PL_curpm, align 8, !tbaa !43
  %336 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %337 = getelementptr inbounds %struct.stackinfo, ptr %319, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8, !tbaa !83
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %341

340:                                              ; preds = %317
  call void @Perl_croak_popstack() #11
  br label %341

341:                                              ; preds = %317, %340
  %342 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %343 = ptrtoint ptr %336 to i64
  %344 = ptrtoint ptr %342 to i64
  %345 = sub i64 %343, %344
  %346 = ashr exact i64 %345, 3
  %347 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %348 = load ptr, ptr %347, align 8, !tbaa !87
  %349 = getelementptr inbounds %struct.xpvav, ptr %348, i64 0, i32 2
  store i64 %346, ptr %349, align 8, !tbaa !89
  %350 = load ptr, ptr %338, align 8, !tbaa !86
  %351 = getelementptr inbounds %struct.av, ptr %350, i64 0, i32 3
  %352 = load ptr, ptr %351, align 8, !tbaa !42
  store ptr %352, ptr @PL_stack_base, align 8, !tbaa !43
  %353 = load ptr, ptr %338, align 8, !tbaa !86
  %354 = load ptr, ptr %353, align 8, !tbaa !87
  %355 = getelementptr inbounds %struct.xpvav, ptr %354, i64 0, i32 3
  %356 = load i64, ptr %355, align 8, !tbaa !91
  %357 = getelementptr inbounds ptr, ptr %352, i64 %356
  store ptr %357, ptr @PL_stack_max, align 8, !tbaa !43
  %358 = load ptr, ptr %338, align 8, !tbaa !86
  %359 = load ptr, ptr %358, align 8, !tbaa !87
  %360 = getelementptr inbounds %struct.xpvav, ptr %359, i64 0, i32 2
  %361 = load i64, ptr %360, align 8, !tbaa !89
  %362 = getelementptr inbounds ptr, ptr %352, i64 %361
  store ptr %362, ptr @PL_stack_sp, align 8, !tbaa !43
  %363 = load ptr, ptr %338, align 8, !tbaa !86
  store ptr %363, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %338, ptr @PL_curstackinfo, align 8, !tbaa !43
  %364 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %365 = getelementptr inbounds %struct.jmpenv, ptr %364, i64 0, i32 3
  store i8 %73, ptr %365, align 4, !tbaa !75
  call void @Perl_pop_scope() #11
  %366 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %367 = icmp eq i32 %40, 3
  %368 = icmp sgt i32 %302, 0
  %369 = select i1 %367, i1 %368, i1 false
  br i1 %369, label %370, label %490

370:                                              ; preds = %341
  %371 = zext nneg i32 %302 to i64
  br label %372

372:                                              ; preds = %370, %372
  %373 = phi i64 [ 0, %370 ], [ %377, %372 ]
  %374 = getelementptr inbounds ptr, ptr %68, i64 %373
  %375 = load ptr, ptr %374, align 8, !tbaa !43
  %376 = call ptr @Perl_sv_2mortal(ptr noundef %375) #11
  %377 = add nuw nsw i64 %373, 1
  %378 = icmp eq i64 %377, %371
  br i1 %378, label %490, label %372, !llvm.loop !111

379:                                              ; preds = %60, %486
  %380 = phi i64 [ 1, %60 ], [ %488, %486 ]
  %381 = phi i32 [ 0, %60 ], [ %487, %486 ]
  %382 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %383 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %384 = getelementptr ptr, ptr %383, i64 %380
  %385 = getelementptr ptr, ptr %384, i64 %26
  %386 = load ptr, ptr %385, align 8, !tbaa !43
  %387 = load ptr, ptr %49, align 8, !tbaa !42
  store ptr %386, ptr %387, align 8, !tbaa !71
  %388 = icmp slt i64 %380, %64
  br i1 %388, label %389, label %396

389:                                              ; preds = %379
  %390 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %391 = trunc i64 %380 to i32
  %392 = add i32 %61, %391
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds ptr, ptr %390, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !43
  br label %396

396:                                              ; preds = %379, %389
  %397 = phi ptr [ %395, %389 ], [ @PL_sv_undef, %379 ]
  %398 = load ptr, ptr %51, align 8, !tbaa !42
  store ptr %397, ptr %398, align 8, !tbaa !71
  %399 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %400 = getelementptr inbounds i32, ptr %399, i64 1
  store ptr %400, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %401 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !43
  %402 = icmp eq ptr %400, %401
  br i1 %402, label %403, label %405

403:                                              ; preds = %396
  %404 = call ptr @Perl_markstack_grow() #11
  br label %405

405:                                              ; preds = %396, %403
  %406 = phi ptr [ %404, %403 ], [ %400, %396 ]
  %407 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %408 = ptrtoint ptr %382 to i64
  %409 = ptrtoint ptr %407 to i64
  %410 = sub i64 %408, %409
  %411 = lshr exact i64 %410, 3
  %412 = trunc i64 %411 to i32
  store i32 %412, ptr %406, align 4, !tbaa !49
  %413 = call i32 @Perl_call_sv(ptr noundef nonnull %29, i32 noundef 2) #11
  %414 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %415 = load ptr, ptr %414, align 8, !tbaa !43
  store ptr %415, ptr @PL_Sv, align 8, !tbaa !43
  %416 = icmp eq ptr %415, null
  br i1 %416, label %486, label %417

417:                                              ; preds = %405
  %418 = getelementptr inbounds %struct.sv, ptr %415, i64 0, i32 2
  %419 = load i32, ptr %418, align 4, !tbaa !50
  %420 = and i32 %419, 2097152
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %417
  %423 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %415, i32 noundef 2) #11
  br i1 %423, label %471, label %486

424:                                              ; preds = %417
  %425 = and i32 %419, 65280
  %426 = icmp ne i32 %425, 0
  %427 = and i32 %419, 255
  %428 = icmp eq i32 %427, 8
  %429 = or i1 %426, %428
  %430 = and i32 %419, 16777471
  %431 = icmp eq i32 %430, 16777226
  %432 = or i1 %431, %429
  br i1 %432, label %433, label %486

433:                                              ; preds = %424
  %434 = and i32 %419, 1024
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %450, label %436

436:                                              ; preds = %433
  %437 = load ptr, ptr %415, align 8, !tbaa !52
  %438 = icmp eq ptr %437, null
  br i1 %438, label %486, label %439

439:                                              ; preds = %436
  %440 = getelementptr inbounds %struct.xpv, ptr %437, i64 0, i32 2
  %441 = load i64, ptr %440, align 8, !tbaa !58
  %442 = icmp ugt i64 %441, 1
  br i1 %442, label %471, label %443

443:                                              ; preds = %439
  %444 = icmp eq i64 %441, 0
  br i1 %444, label %486, label %445

445:                                              ; preds = %443
  %446 = getelementptr inbounds %struct.sv, ptr %415, i64 0, i32 3
  %447 = load ptr, ptr %446, align 8, !tbaa !42
  %448 = load i8, ptr %447, align 1, !tbaa !42
  %449 = icmp eq i8 %448, 48
  br i1 %449, label %486, label %471

450:                                              ; preds = %433
  %451 = and i32 %419, 768
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %469, label %453

453:                                              ; preds = %450
  %454 = and i32 %419, 256
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %461, label %456

456:                                              ; preds = %453
  %457 = load ptr, ptr %415, align 8, !tbaa !52
  %458 = getelementptr inbounds %struct.xpviv, ptr %457, i64 0, i32 4
  %459 = load i64, ptr %458, align 8, !tbaa !42
  %460 = icmp eq i64 %459, 0
  br i1 %460, label %461, label %471

461:                                              ; preds = %456, %453
  %462 = and i32 %419, 512
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %486, label %464

464:                                              ; preds = %461
  %465 = load ptr, ptr %415, align 8, !tbaa !52
  %466 = getelementptr inbounds %struct.xpvnv, ptr %465, i64 0, i32 5
  %467 = load double, ptr %466, align 8, !tbaa !42
  %468 = fcmp une double %467, 0.000000e+00
  br i1 %468, label %471, label %486

469:                                              ; preds = %450
  %470 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %415, i32 noundef 0) #11
  br i1 %470, label %471, label %486

471:                                              ; preds = %445, %469, %422, %439, %456, %464
  switch i32 %40, label %486 [
    i32 3, label %472
    i32 2, label %484
  ]

472:                                              ; preds = %471
  %473 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %386, i32 noundef 2) #11
  %474 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %475 = add nsw i32 %381, %9
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds ptr, ptr %474, i64 %476
  store ptr %473, ptr %477, align 8, !tbaa !43
  %478 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %397, i32 noundef 2) #11
  %479 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %480 = add nsw i32 %381, 2
  %481 = add i32 %61, %381
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds ptr, ptr %479, i64 %482
  store ptr %478, ptr %483, align 8, !tbaa !43
  br label %486

484:                                              ; preds = %471
  %485 = add nsw i32 %381, 1
  br label %486

486:                                              ; preds = %464, %445, %469, %422, %424, %436, %443, %461, %471, %405, %472, %484
  %487 = phi i32 [ %480, %472 ], [ %485, %484 ], [ %381, %405 ], [ %381, %471 ], [ %381, %461 ], [ %381, %443 ], [ %381, %436 ], [ %381, %424 ], [ %381, %422 ], [ %381, %469 ], [ %381, %445 ], [ %381, %464 ]
  %488 = add nuw nsw i64 %380, 2
  %489 = icmp ult i64 %488, %65
  br i1 %489, label %379, label %490, !llvm.loop !112

490:                                              ; preds = %486, %372, %58, %341
  %491 = phi i32 [ %302, %341 ], [ 0, %58 ], [ %302, %372 ], [ %487, %486 ]
  %492 = phi ptr [ %366, %341 ], [ %25, %58 ], [ %366, %372 ], [ %25, %486 ]
  switch i32 %40, label %506 [
    i32 3, label %493
    i32 2, label %499
  ]

493:                                              ; preds = %490
  %494 = sext i32 %491 to i64
  %495 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %496 = getelementptr inbounds ptr, ptr %495, i64 %26
  %497 = getelementptr ptr, ptr %496, i64 %494
  %498 = getelementptr ptr, ptr %497, i64 -1
  br label %507

499:                                              ; preds = %490
  %500 = sext i32 %491 to i64
  %501 = call ptr @Perl_newSViv(i64 noundef %500) #11
  %502 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %503 = getelementptr inbounds ptr, ptr %502, i64 %26
  store ptr %501, ptr %503, align 8, !tbaa !43
  %504 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %505 = getelementptr inbounds ptr, ptr %504, i64 %26
  br label %507

506:                                              ; preds = %490
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  store ptr %492, ptr @PL_stack_sp, align 8, !tbaa !43
  br label %509

507:                                              ; preds = %499, %493
  %508 = phi ptr [ %505, %499 ], [ %498, %493 ]
  store ptr %508, ptr @PL_stack_sp, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %509

509:                                              ; preds = %507, %506
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_List__Util_pairmap(ptr noundef %0) #0 !prof !35 !PGOFuncName !113 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %7 = load i32, ptr %5, align 4, !tbaa !49
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.44) #11
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %8, %1 ]
  %22 = shl i64 %14, 29
  %23 = ashr i64 %22, 32
  %24 = sub nsw i64 0, %23
  %25 = getelementptr inbounds ptr, ptr %4, i64 %24
  %26 = sext i32 %9 to i64
  %27 = getelementptr inbounds ptr, ptr %21, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %29 = call ptr @Perl_sv_2cv(ptr noundef %28, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #11
  %30 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.op, ptr %30, i64 0, i32 5
  %32 = load i8, ptr %31, align 2, !tbaa !94
  %33 = and i8 %32, 3
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %20
  %36 = zext nneg i8 %33 to i32
  br label %39

37:                                               ; preds = %20
  %38 = call i32 @Perl_block_gimme() #11
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = and i32 %16, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = call zeroext i1 @Perl_ckwarn(i32 noundef 12) #11
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.50) #11
  br label %46

46:                                               ; preds = %45, %43, %39
  %47 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef 3) #11
  %48 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef 3) #11
  %49 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !42
  call void @Perl_save_sptr(ptr noundef %50) #11
  %51 = getelementptr inbounds %struct.gv, ptr %48, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !42
  call void @Perl_save_sptr(ptr noundef %52) #11
  %53 = load ptr, ptr %29, align 8, !tbaa !36
  %54 = getelementptr inbounds %struct.xpvcv, ptr %53, i64 0, i32 12
  %55 = load i32, ptr %54, align 4, !tbaa !73
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %46
  %59 = icmp sgt i32 %16, 1
  br i1 %59, label %60, label %459

60:                                               ; preds = %58
  %61 = add i32 %7, 2
  %62 = icmp eq i32 %40, 3
  %63 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  br label %369

64:                                               ; preds = %46
  %65 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %66 = getelementptr inbounds ptr, ptr %65, i64 %26
  %67 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %68 = getelementptr inbounds %struct.op, ptr %67, i64 0, i32 5
  %69 = load i8, ptr %68, align 2, !tbaa !94
  %70 = and i8 %69, 3
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %64
  %73 = zext nneg i8 %70 to i32
  br label %77

74:                                               ; preds = %64
  %75 = call i32 @Perl_block_gimme() #11
  %76 = load ptr, ptr %29, align 8, !tbaa !36
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi ptr [ %53, %72 ], [ %76, %74 ]
  %79 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %80 = getelementptr inbounds %struct.xpvcv, ptr %78, i64 0, i32 9
  %81 = load ptr, ptr %80, align 8, !tbaa !42
  call void @Perl_push_scope() #11
  %82 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %83 = getelementptr inbounds %struct.jmpenv, ptr %82, i64 0, i32 3
  %84 = load i8, ptr %83, align 4, !tbaa !75, !range !78, !noundef !79
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #11
  %85 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !80
  store i64 %85, ptr @PL_tmps_floor, align 8, !tbaa !80
  call void @Perl_save_vptr(ptr noundef nonnull @PL_op) #11
  %86 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %87 = getelementptr inbounds %struct.jmpenv, ptr %86, i64 0, i32 3
  store i8 1, ptr %87, align 4, !tbaa !75
  %88 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %89 = getelementptr inbounds %struct.stackinfo, ptr %88, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !81
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %77
  %93 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #11
  %94 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %95 = getelementptr inbounds %struct.stackinfo, ptr %93, i64 0, i32 2
  store ptr %94, ptr %95, align 8, !tbaa !83
  %96 = getelementptr inbounds %struct.stackinfo, ptr %94, i64 0, i32 3
  store ptr %93, ptr %96, align 8, !tbaa !81
  br label %97

97:                                               ; preds = %92, %77
  %98 = phi ptr [ %90, %77 ], [ %93, %92 ]
  %99 = getelementptr inbounds %struct.stackinfo, ptr %98, i64 0, i32 6
  store i32 3, ptr %99, align 8, !tbaa !84
  %100 = getelementptr inbounds %struct.stackinfo, ptr %98, i64 0, i32 4
  store i32 -1, ptr %100, align 8, !tbaa !85
  %101 = load ptr, ptr %98, align 8, !tbaa !86
  %102 = load ptr, ptr %101, align 8, !tbaa !87
  %103 = getelementptr inbounds %struct.xpvav, ptr %102, i64 0, i32 2
  store i64 0, ptr %103, align 8, !tbaa !89
  %104 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %105 = ptrtoint ptr %25 to i64
  %106 = ptrtoint ptr %104 to i64
  %107 = sub i64 %105, %106
  %108 = ashr exact i64 %107, 3
  %109 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %110 = load ptr, ptr %109, align 8, !tbaa !87
  %111 = getelementptr inbounds %struct.xpvav, ptr %110, i64 0, i32 2
  store i64 %108, ptr %111, align 8, !tbaa !89
  %112 = getelementptr inbounds %struct.av, ptr %101, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !42
  store ptr %113, ptr @PL_stack_base, align 8, !tbaa !43
  %114 = load ptr, ptr %98, align 8, !tbaa !86
  %115 = load ptr, ptr %114, align 8, !tbaa !87
  %116 = getelementptr inbounds %struct.xpvav, ptr %115, i64 0, i32 3
  %117 = load i64, ptr %116, align 8, !tbaa !91
  %118 = getelementptr inbounds ptr, ptr %113, i64 %117
  store ptr %118, ptr @PL_stack_max, align 8, !tbaa !43
  %119 = load ptr, ptr %98, align 8, !tbaa !86
  %120 = load ptr, ptr %119, align 8, !tbaa !87
  %121 = getelementptr inbounds %struct.xpvav, ptr %120, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !89
  %123 = getelementptr inbounds ptr, ptr %113, i64 %122
  store ptr %123, ptr @PL_stack_sp, align 8, !tbaa !43
  %124 = load ptr, ptr %98, align 8, !tbaa !86
  store ptr %124, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %98, ptr @PL_curstackinfo, align 8, !tbaa !43
  %125 = getelementptr inbounds %struct.stackinfo, ptr %98, i64 0, i32 5
  %126 = load i32, ptr %125, align 4, !tbaa !92
  %127 = icmp sgt i32 %126, -1
  br i1 %127, label %128, label %129

128:                                              ; preds = %97
  store i32 0, ptr %100, align 8, !tbaa !85
  br label %134

129:                                              ; preds = %97
  %130 = call i32 @Perl_cxinc() #11
  %131 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %132 = getelementptr inbounds %struct.stackinfo, ptr %131, i64 0, i32 4
  store i32 %130, ptr %132, align 8, !tbaa !85
  %133 = sext i32 %130 to i64
  br label %134

134:                                              ; preds = %129, %128
  %135 = phi i64 [ %133, %129 ], [ 0, %128 ]
  %136 = phi ptr [ %131, %129 ], [ %98, %128 ]
  %137 = getelementptr inbounds %struct.stackinfo, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !93
  %139 = getelementptr inbounds %struct.context, ptr %138, i64 %135
  store i8 24, ptr %139, align 8, !tbaa !42
  %140 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %141 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %142 = ptrtoint ptr %140 to i64
  %143 = ptrtoint ptr %141 to i64
  %144 = sub i64 %142, %143
  %145 = lshr exact i64 %144, 3
  %146 = trunc i64 %145 to i32
  %147 = getelementptr inbounds %struct.block, ptr %139, i64 0, i32 3
  store i32 %146, ptr %147, align 4, !tbaa !42
  %148 = load ptr, ptr @PL_curcop, align 8, !tbaa !43
  %149 = getelementptr inbounds %struct.block, ptr %139, i64 0, i32 4
  store ptr %148, ptr %149, align 8, !tbaa !42
  %150 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %151 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %152 = ptrtoint ptr %150 to i64
  %153 = ptrtoint ptr %151 to i64
  %154 = sub i64 %152, %153
  %155 = lshr exact i64 %154, 2
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds %struct.block, ptr %139, i64 0, i32 5
  store i32 %156, ptr %157, align 8, !tbaa !42
  %158 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %159 = getelementptr inbounds %struct.block, ptr %139, i64 0, i32 6
  store i32 %158, ptr %159, align 4, !tbaa !42
  %160 = load ptr, ptr @PL_curpm, align 8, !tbaa !43
  %161 = getelementptr inbounds %struct.block, ptr %139, i64 0, i32 7
  store ptr %160, ptr %161, align 8, !tbaa !42
  %162 = getelementptr inbounds %struct.block, ptr %139, i64 0, i32 1
  store i8 3, ptr %162, align 1, !tbaa !42
  %163 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %164 = getelementptr inbounds %struct.op, ptr %163, i64 0, i32 5
  %165 = load i8, ptr %164, align 2, !tbaa !94
  %166 = and i8 %165, 3
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %134
  %169 = getelementptr inbounds %struct.op, ptr %163, i64 0, i32 6
  %170 = load i8, ptr %169, align 1, !tbaa !63
  %171 = and i8 %170, -127
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %168
  %174 = call i32 @Perl_was_lvalue_sub() #11
  %175 = and i32 %174, 207
  %176 = or disjoint i32 %175, 48
  br label %177

177:                                              ; preds = %173, %168, %134
  %178 = phi i32 [ 177, %134 ], [ %176, %173 ], [ 48, %168 ]
  %179 = getelementptr inbounds %struct.block, ptr %139, i64 0, i32 8
  %180 = getelementptr inbounds %struct.block, ptr %139, i64 0, i32 8, i32 0, i32 1
  store ptr %29, ptr %180, align 8, !tbaa !42
  %181 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %182 = load i32, ptr %181, align 4, !tbaa !49
  %183 = getelementptr inbounds %struct.block, ptr %139, i64 0, i32 8, i32 0, i32 4
  store i32 %182, ptr %183, align 8, !tbaa !42
  store ptr null, ptr %179, align 8, !tbaa !42
  %184 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %185 = load i32, ptr %184, align 4, !tbaa !49
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %177
  %188 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 1
  %189 = load i32, ptr %188, align 8, !tbaa !95
  %190 = add i32 %189, 2
  store i32 %190, ptr %188, align 8, !tbaa !95
  call void @Perl_save_pushptr(ptr noundef nonnull %29, i32 noundef 11) #11
  br label %191

191:                                              ; preds = %187, %177
  %192 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %193 = getelementptr inbounds %struct.op, ptr %192, i64 0, i32 6
  %194 = load i8, ptr %193, align 1, !tbaa !63
  %195 = zext i8 %194 to i32
  %196 = and i32 %178, %195
  %197 = trunc i32 %196 to i16
  %198 = getelementptr inbounds %struct.block, ptr %139, i64 0, i32 2
  store i16 %197, ptr %198, align 2, !tbaa !42
  %199 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %200 = load i32, ptr %199, align 4, !tbaa !49
  %201 = add nsw i32 %200, 1
  store i32 %201, ptr %199, align 4, !tbaa !49
  %202 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %203 = load i32, ptr %202, align 4, !tbaa !49
  %204 = icmp sgt i32 %203, 1
  br i1 %204, label %205, label %206

205:                                              ; preds = %191
  call void @Perl_pad_push(ptr noundef %81, i32 noundef %203) #11
  br label %206

206:                                              ; preds = %205, %191
  %207 = load ptr, ptr @PL_comppad, align 8, !tbaa !43
  call void @Perl_save_pushptr(ptr noundef %207, i32 noundef 7) #11
  %208 = getelementptr inbounds %struct.padlist, ptr %81, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !96
  %210 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  %211 = load i32, ptr %210, align 4, !tbaa !49
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds ptr, ptr %209, i64 %212
  %214 = load ptr, ptr %213, align 8, !tbaa !43
  store ptr %214, ptr @PL_comppad, align 8, !tbaa !43
  %215 = getelementptr inbounds %struct.av, ptr %214, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !42
  store ptr %216, ptr @PL_curpad, align 8, !tbaa !43
  %217 = load ptr, ptr %29, align 8, !tbaa !36
  %218 = getelementptr inbounds %struct.xpvcv, ptr %217, i64 0, i32 5
  %219 = load ptr, ptr %218, align 8, !tbaa !42
  %220 = icmp sgt i32 %16, 1
  br i1 %220, label %221, label %292

221:                                              ; preds = %206, %285
  %222 = phi i32 [ %286, %285 ], [ %16, %206 ]
  %223 = phi ptr [ %287, %285 ], [ null, %206 ]
  %224 = phi i32 [ %290, %285 ], [ 1, %206 ]
  %225 = phi i32 [ %289, %285 ], [ 0, %206 ]
  %226 = icmp ne ptr %223, null
  %227 = sext i32 %224 to i64
  %228 = getelementptr inbounds ptr, ptr %223, i64 %227
  %229 = getelementptr ptr, ptr %66, i64 %227
  %230 = select i1 %226, ptr %228, ptr %229
  %231 = load ptr, ptr %230, align 8, !tbaa !43
  %232 = load ptr, ptr %49, align 8, !tbaa !42
  store ptr %231, ptr %232, align 8, !tbaa !71
  %233 = add nsw i32 %222, -1
  %234 = icmp slt i32 %224, %233
  br i1 %234, label %235, label %242

235:                                              ; preds = %221
  %236 = add nsw i32 %224, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds ptr, ptr %223, i64 %237
  %239 = getelementptr ptr, ptr %229, i64 1
  %240 = select i1 %226, ptr %238, ptr %239
  %241 = load ptr, ptr %240, align 8, !tbaa !43
  br label %242

242:                                              ; preds = %235, %221
  %243 = phi ptr [ @PL_sv_undef, %221 ], [ %241, %235 ]
  %244 = load ptr, ptr %51, align 8, !tbaa !42
  store ptr %243, ptr %244, align 8, !tbaa !71
  store ptr %219, ptr @PL_op, align 8, !tbaa !43
  %245 = load ptr, ptr @PL_runops, align 8, !tbaa !43
  %246 = call i32 %245() #11
  %247 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %248 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %249 = ptrtoint ptr %247 to i64
  %250 = ptrtoint ptr %248 to i64
  %251 = sub i64 %249, %250
  %252 = lshr exact i64 %251, 3
  %253 = trunc i64 %252 to i32
  %254 = icmp slt i32 %253, 3
  %255 = or i1 %226, %254
  br i1 %255, label %261, label %256

256:                                              ; preds = %242
  %257 = sub nsw i32 %222, %224
  %258 = sext i32 %257 to i64
  %259 = shl nsw i64 %258, 3
  %260 = call ptr @Perl_safesysmalloc(i64 noundef %259) #11
  call void @Perl_save_pushptr(ptr noundef %260, i32 noundef 10) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %260, ptr align 1 %229, i64 %259, i1 false)
  br label %263

261:                                              ; preds = %242
  %262 = icmp sgt i32 %253, 0
  br i1 %262, label %263, label %285

263:                                              ; preds = %256, %261
  %264 = phi i32 [ %257, %256 ], [ %222, %261 ]
  %265 = phi ptr [ %260, %256 ], [ %223, %261 ]
  %266 = phi i32 [ 0, %256 ], [ %224, %261 ]
  %267 = sext i32 %225 to i64
  %268 = and i64 %252, 4294967295
  %269 = and i64 %252, 4294967295
  br label %270

270:                                              ; preds = %263, %270
  %271 = phi i64 [ 0, %263 ], [ %281, %270 ]
  %272 = phi i64 [ %267, %263 ], [ %279, %270 ]
  %273 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %274 = sub nsw i64 %271, %268
  %275 = getelementptr ptr, ptr %273, i64 %274
  %276 = getelementptr ptr, ptr %275, i64 1
  %277 = load ptr, ptr %276, align 8, !tbaa !43
  %278 = call ptr @Perl_newSVsv(ptr noundef %277) #11
  %279 = add nsw i64 %272, 1
  %280 = getelementptr inbounds ptr, ptr %66, i64 %272
  store ptr %278, ptr %280, align 8, !tbaa !43
  %281 = add nuw nsw i64 %271, 1
  %282 = icmp eq i64 %281, %269
  br i1 %282, label %283, label %270, !llvm.loop !114

283:                                              ; preds = %270
  %284 = trunc i64 %279 to i32
  br label %285

285:                                              ; preds = %283, %261
  %286 = phi i32 [ %222, %261 ], [ %264, %283 ]
  %287 = phi ptr [ %223, %261 ], [ %265, %283 ]
  %288 = phi i32 [ %224, %261 ], [ %266, %283 ]
  %289 = phi i32 [ %225, %261 ], [ %284, %283 ]
  %290 = add nsw i32 %288, 2
  %291 = icmp slt i32 %290, %286
  br i1 %291, label %221, label %292, !llvm.loop !115

292:                                              ; preds = %285, %206
  %293 = phi i32 [ 0, %206 ], [ %289, %285 ]
  %294 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %295 = getelementptr inbounds %struct.stackinfo, ptr %294, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !93
  %297 = getelementptr inbounds %struct.stackinfo, ptr %294, i64 0, i32 4
  %298 = load i32, ptr %297, align 8, !tbaa !85
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.context, ptr %296, i64 %299, i32 0, i32 0, i32 11
  %301 = load i32, ptr %300, align 8, !tbaa !42
  %302 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %29) #12
  store i32 %301, ptr %302, align 4, !tbaa !49
  %303 = icmp eq i32 %301, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %292
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %29) #12
  %305 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !43
  %306 = getelementptr inbounds %struct.stackinfo, ptr %305, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !93
  br label %308

308:                                              ; preds = %304, %292
  %309 = phi ptr [ %307, %304 ], [ %296, %292 ]
  %310 = phi ptr [ %305, %304 ], [ %294, %292 ]
  %311 = getelementptr inbounds %struct.stackinfo, ptr %310, i64 0, i32 4
  %312 = load i32, ptr %311, align 8, !tbaa !85
  %313 = add nsw i32 %312, -1
  store i32 %313, ptr %311, align 8, !tbaa !85
  %314 = sext i32 %312 to i64
  %315 = getelementptr inbounds %struct.context, ptr %309, i64 %314
  %316 = getelementptr inbounds %struct.block, ptr %315, i64 0, i32 4
  %317 = load ptr, ptr %316, align 8, !tbaa !42
  store ptr %317, ptr @PL_curcop, align 8, !tbaa !43
  %318 = load ptr, ptr @PL_markstack, align 8, !tbaa !43
  %319 = getelementptr inbounds %struct.block, ptr %315, i64 0, i32 5
  %320 = load i32, ptr %319, align 8, !tbaa !42
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, ptr %318, i64 %321
  store ptr %322, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %323 = getelementptr inbounds %struct.block, ptr %315, i64 0, i32 6
  %324 = load i32, ptr %323, align 4, !tbaa !42
  store i32 %324, ptr @PL_scopestack_ix, align 4, !tbaa !49
  %325 = getelementptr inbounds %struct.block, ptr %315, i64 0, i32 7
  %326 = load ptr, ptr %325, align 8, !tbaa !42
  store ptr %326, ptr @PL_curpm, align 8, !tbaa !43
  %327 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %328 = getelementptr inbounds %struct.stackinfo, ptr %310, i64 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !83
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %332

331:                                              ; preds = %308
  call void @Perl_croak_popstack() #11
  br label %332

332:                                              ; preds = %308, %331
  %333 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %334 = ptrtoint ptr %327 to i64
  %335 = ptrtoint ptr %333 to i64
  %336 = sub i64 %334, %335
  %337 = ashr exact i64 %336, 3
  %338 = load ptr, ptr @PL_curstack, align 8, !tbaa !43
  %339 = load ptr, ptr %338, align 8, !tbaa !87
  %340 = getelementptr inbounds %struct.xpvav, ptr %339, i64 0, i32 2
  store i64 %337, ptr %340, align 8, !tbaa !89
  %341 = load ptr, ptr %329, align 8, !tbaa !86
  %342 = getelementptr inbounds %struct.av, ptr %341, i64 0, i32 3
  %343 = load ptr, ptr %342, align 8, !tbaa !42
  store ptr %343, ptr @PL_stack_base, align 8, !tbaa !43
  %344 = load ptr, ptr %329, align 8, !tbaa !86
  %345 = load ptr, ptr %344, align 8, !tbaa !87
  %346 = getelementptr inbounds %struct.xpvav, ptr %345, i64 0, i32 3
  %347 = load i64, ptr %346, align 8, !tbaa !91
  %348 = getelementptr inbounds ptr, ptr %343, i64 %347
  store ptr %348, ptr @PL_stack_max, align 8, !tbaa !43
  %349 = load ptr, ptr %329, align 8, !tbaa !86
  %350 = load ptr, ptr %349, align 8, !tbaa !87
  %351 = getelementptr inbounds %struct.xpvav, ptr %350, i64 0, i32 2
  %352 = load i64, ptr %351, align 8, !tbaa !89
  %353 = getelementptr inbounds ptr, ptr %343, i64 %352
  store ptr %353, ptr @PL_stack_sp, align 8, !tbaa !43
  %354 = load ptr, ptr %329, align 8, !tbaa !86
  store ptr %354, ptr @PL_curstack, align 8, !tbaa !43
  store ptr %329, ptr @PL_curstackinfo, align 8, !tbaa !43
  %355 = load ptr, ptr @PL_top_env, align 8, !tbaa !43
  %356 = getelementptr inbounds %struct.jmpenv, ptr %355, i64 0, i32 3
  store i8 %84, ptr %356, align 4, !tbaa !75
  call void @Perl_pop_scope() #11
  %357 = icmp eq i32 %79, 3
  %358 = icmp sgt i32 %293, 0
  %359 = select i1 %357, i1 %358, i1 false
  br i1 %359, label %360, label %459

360:                                              ; preds = %332
  %361 = zext nneg i32 %293 to i64
  br label %362

362:                                              ; preds = %360, %362
  %363 = phi i64 [ 0, %360 ], [ %367, %362 ]
  %364 = getelementptr inbounds ptr, ptr %66, i64 %363
  %365 = load ptr, ptr %364, align 8, !tbaa !43
  %366 = call ptr @Perl_sv_2mortal(ptr noundef %365) #11
  %367 = add nuw nsw i64 %363, 1
  %368 = icmp eq i64 %367, %361
  br i1 %368, label %459, label %362, !llvm.loop !116

369:                                              ; preds = %60, %452
  %370 = phi ptr [ %63, %60 ], [ %413, %452 ]
  %371 = phi i32 [ %16, %60 ], [ %453, %452 ]
  %372 = phi ptr [ null, %60 ], [ %454, %452 ]
  %373 = phi i32 [ 1, %60 ], [ %457, %452 ]
  %374 = phi i32 [ 0, %60 ], [ %456, %452 ]
  %375 = icmp eq ptr %372, null
  %376 = sext i32 %373 to i64
  %377 = getelementptr inbounds ptr, ptr %372, i64 %376
  %378 = load ptr, ptr @PL_stack_base, align 8
  %379 = add nsw i32 %373, %9
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds ptr, ptr %378, i64 %380
  %382 = select i1 %375, ptr %381, ptr %377
  %383 = load ptr, ptr %382, align 8, !tbaa !43
  %384 = load ptr, ptr %49, align 8, !tbaa !42
  store ptr %383, ptr %384, align 8, !tbaa !71
  %385 = add nsw i32 %371, -1
  %386 = icmp slt i32 %373, %385
  br i1 %386, label %387, label %395

387:                                              ; preds = %369
  %388 = load ptr, ptr @PL_stack_base, align 8
  %389 = select i1 %375, i32 %61, i32 1
  %390 = add i32 %389, %373
  %391 = select i1 %375, ptr %388, ptr %372
  %392 = sext i32 %390 to i64
  %393 = getelementptr inbounds ptr, ptr %391, i64 %392
  %394 = load ptr, ptr %393, align 8, !tbaa !43
  br label %395

395:                                              ; preds = %387, %369
  %396 = phi ptr [ @PL_sv_undef, %369 ], [ %394, %387 ]
  %397 = load ptr, ptr %51, align 8, !tbaa !42
  store ptr %396, ptr %397, align 8, !tbaa !71
  %398 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %399 = getelementptr inbounds i32, ptr %398, i64 1
  store ptr %399, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %400 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !43
  %401 = icmp eq ptr %399, %400
  br i1 %401, label %402, label %404

402:                                              ; preds = %395
  %403 = call ptr @Perl_markstack_grow() #11
  br label %404

404:                                              ; preds = %395, %402
  %405 = phi ptr [ %403, %402 ], [ %399, %395 ]
  %406 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %407 = ptrtoint ptr %370 to i64
  %408 = ptrtoint ptr %406 to i64
  %409 = sub i64 %407, %408
  %410 = lshr exact i64 %409, 3
  %411 = trunc i64 %410 to i32
  store i32 %411, ptr %405, align 4, !tbaa !49
  %412 = call i32 @Perl_call_sv(ptr noundef nonnull %29, i32 noundef 3) #11
  %413 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %414 = icmp sgt i32 %412, 2
  %415 = and i1 %375, %414
  %416 = select i1 %415, i1 %62, i1 false
  br i1 %416, label %417, label %424

417:                                              ; preds = %404
  %418 = sub nsw i32 %371, %373
  %419 = sext i32 %418 to i64
  %420 = shl nsw i64 %419, 3
  %421 = call ptr @Perl_safesysmalloc(i64 noundef %420) #11
  call void @Perl_save_pushptr(ptr noundef %421, i32 noundef 10) #11
  %422 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %423 = getelementptr inbounds ptr, ptr %422, i64 %380
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %421, ptr align 1 %423, i64 %420, i1 false)
  br label %427

424:                                              ; preds = %404
  br i1 %62, label %425, label %448

425:                                              ; preds = %424
  %426 = icmp sgt i32 %412, 0
  br i1 %426, label %427, label %452

427:                                              ; preds = %417, %425
  %428 = phi i32 [ 0, %417 ], [ %373, %425 ]
  %429 = phi ptr [ %421, %417 ], [ %372, %425 ]
  %430 = phi i32 [ %418, %417 ], [ %371, %425 ]
  %431 = getelementptr ptr, ptr %413, i64 1
  %432 = zext nneg i32 %412 to i64
  %433 = sext i32 %374 to i64
  %434 = zext nneg i32 %412 to i64
  br label %435

435:                                              ; preds = %427, %435
  %436 = phi i64 [ %433, %427 ], [ %443, %435 ]
  %437 = phi i64 [ 0, %427 ], [ %446, %435 ]
  %438 = sub nsw i64 %437, %432
  %439 = getelementptr ptr, ptr %431, i64 %438
  %440 = load ptr, ptr %439, align 8, !tbaa !43
  %441 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %440, i32 noundef 2) #11
  %442 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %443 = add nsw i64 %436, 1
  %444 = getelementptr ptr, ptr %442, i64 %436
  %445 = getelementptr ptr, ptr %444, i64 %26
  store ptr %441, ptr %445, align 8, !tbaa !43
  %446 = add nuw nsw i64 %437, 1
  %447 = icmp eq i64 %446, %434
  br i1 %447, label %450, label %435, !llvm.loop !117

448:                                              ; preds = %424
  %449 = add nsw i32 %412, %374
  br label %452

450:                                              ; preds = %435
  %451 = trunc i64 %443 to i32
  br label %452

452:                                              ; preds = %450, %425, %448
  %453 = phi i32 [ %371, %448 ], [ %371, %425 ], [ %430, %450 ]
  %454 = phi ptr [ %372, %448 ], [ %372, %425 ], [ %429, %450 ]
  %455 = phi i32 [ %373, %448 ], [ %373, %425 ], [ %428, %450 ]
  %456 = phi i32 [ %449, %448 ], [ %374, %425 ], [ %451, %450 ]
  store ptr %413, ptr @PL_stack_sp, align 8, !tbaa !43
  %457 = add nsw i32 %455, 2
  %458 = icmp slt i32 %457, %453
  br i1 %458, label %369, label %459, !llvm.loop !118

459:                                              ; preds = %452, %362, %58, %332
  %460 = phi i32 [ %293, %332 ], [ 0, %58 ], [ %293, %362 ], [ %456, %452 ]
  %461 = icmp eq i32 %40, 3
  %462 = sext i32 %460 to i64
  br i1 %461, label %463, label %468

463:                                              ; preds = %459
  %464 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %465 = getelementptr inbounds ptr, ptr %464, i64 %26
  %466 = getelementptr ptr, ptr %465, i64 %462
  %467 = getelementptr ptr, ptr %466, i64 -1
  br label %475

468:                                              ; preds = %459
  %469 = call ptr @Perl_newSViv(i64 noundef %462) #11
  %470 = call ptr @Perl_sv_2mortal(ptr noundef %469) #11
  %471 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %472 = getelementptr inbounds ptr, ptr %471, i64 %26
  store ptr %470, ptr %472, align 8, !tbaa !43
  %473 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %474 = getelementptr inbounds ptr, ptr %473, i64 %26
  br label %475

475:                                              ; preds = %468, %463
  %476 = phi ptr [ %474, %468 ], [ %467, %463 ]
  store ptr %476, ptr @PL_stack_sp, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_List__Util_pairs(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !119 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.51, i32 noundef 1) #11
  %16 = and i32 %14, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #11
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.52) #11
  br label %21

21:                                               ; preds = %20, %18, %1
  %22 = icmp sgt i32 %14, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = sext i32 %7 to i64
  br label %65

25:                                               ; preds = %21
  %26 = add i32 %5, 2
  %27 = sext i32 %7 to i64
  %28 = shl i64 %12, 29
  %29 = add i64 %28, -4294967296
  %30 = ashr i64 %29, 32
  %31 = and i64 %13, 4294967295
  br label %32

32:                                               ; preds = %25, %46
  %33 = phi i64 [ 0, %25 ], [ %60, %46 ]
  %34 = phi i64 [ 0, %25 ], [ %61, %46 ]
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %36 = getelementptr ptr, ptr %35, i64 %34
  %37 = getelementptr ptr, ptr %36, i64 %27
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = icmp slt i64 %34, %30
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = trunc i64 %34 to i32
  %42 = add i32 %26, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %35, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  br label %46

46:                                               ; preds = %32, %40
  %47 = phi ptr [ %45, %40 ], [ @PL_sv_undef, %32 ]
  %48 = tail call ptr @Perl_newSV_type(i32 noundef 11) #11
  %49 = tail call ptr @Perl_newSVsv(ptr noundef %38) #11
  tail call void @Perl_av_push(ptr noundef %48, ptr noundef %49) #11
  %50 = tail call ptr @Perl_newSVsv(ptr noundef %47) #11
  tail call void @Perl_av_push(ptr noundef %48, ptr noundef %50) #11
  %51 = tail call ptr @Perl_newRV_noinc(ptr noundef %48) #11
  %52 = tail call ptr @Perl_sv_2mortal(ptr noundef %51) #11
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %54 = add nsw i64 %33, %27
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  store ptr %52, ptr %55, align 8, !tbaa !43
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %57 = getelementptr inbounds ptr, ptr %56, i64 %54
  %58 = load ptr, ptr %57, align 8, !tbaa !43
  %59 = tail call ptr @Perl_sv_bless(ptr noundef %58, ptr noundef %15) #11
  %60 = add nuw i64 %33, 1
  %61 = add nuw nsw i64 %34, 2
  %62 = icmp ult i64 %61, %31
  br i1 %62, label %32, label %63, !llvm.loop !120

63:                                               ; preds = %46
  %64 = and i64 %60, 4294967295
  br label %65

65:                                               ; preds = %23, %63
  %66 = phi i64 [ %24, %23 ], [ %27, %63 ]
  %67 = phi i64 [ 0, %23 ], [ %64, %63 ]
  %68 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %69 = getelementptr inbounds ptr, ptr %68, i64 %66
  %70 = getelementptr ptr, ptr %69, i64 %67
  %71 = getelementptr ptr, ptr %70, i64 -1
  store ptr %71, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_List__Util_pairkeys(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !121 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #11
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.53) #11
  br label %20

20:                                               ; preds = %19, %17, %1
  %21 = icmp sgt i32 %14, 0
  %22 = sext i32 %7 to i64
  br i1 %21, label %23, label %42

23:                                               ; preds = %20
  %24 = and i64 %13, 4294967295
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %38, %25 ]
  %27 = phi i64 [ 0, %23 ], [ %35, %25 ]
  %28 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %29 = getelementptr ptr, ptr %28, i64 %26
  %30 = getelementptr ptr, ptr %29, i64 %22
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = tail call ptr @Perl_newSVsv(ptr noundef %31) #11
  %33 = tail call ptr @Perl_sv_2mortal(ptr noundef %32) #11
  %34 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %35 = add nuw i64 %27, 1
  %36 = getelementptr ptr, ptr %34, i64 %27
  %37 = getelementptr ptr, ptr %36, i64 %22
  store ptr %33, ptr %37, align 8, !tbaa !43
  %38 = add nuw nsw i64 %26, 2
  %39 = icmp ult i64 %38, %24
  br i1 %39, label %25, label %40, !llvm.loop !122

40:                                               ; preds = %25
  %41 = and i64 %35, 4294967295
  br label %42

42:                                               ; preds = %20, %40
  %43 = phi i64 [ %41, %40 ], [ 0, %20 ]
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %45 = getelementptr inbounds ptr, ptr %44, i64 %22
  %46 = getelementptr ptr, ptr %45, i64 %43
  %47 = getelementptr ptr, ptr %46, i64 -1
  store ptr %47, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_List__Util_pairvalues(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !123 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #11
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.54) #11
  br label %20

20:                                               ; preds = %19, %17, %1
  %21 = icmp sgt i32 %14, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = sext i32 %7 to i64
  br label %54

24:                                               ; preds = %20
  %25 = add i32 %5, 2
  %26 = sext i32 %7 to i64
  %27 = shl i64 %12, 29
  %28 = add i64 %27, -4294967296
  %29 = ashr i64 %28, 32
  %30 = and i64 %13, 4294967295
  br label %31

31:                                               ; preds = %24, %42
  %32 = phi i64 [ 0, %24 ], [ %50, %42 ]
  %33 = phi i64 [ 0, %24 ], [ %47, %42 ]
  %34 = icmp slt i64 %32, %29
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %37 = trunc i64 %32 to i32
  %38 = add i32 %25, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %36, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  br label %42

42:                                               ; preds = %31, %35
  %43 = phi ptr [ %41, %35 ], [ @PL_sv_undef, %31 ]
  %44 = tail call ptr @Perl_newSVsv(ptr noundef %43) #11
  %45 = tail call ptr @Perl_sv_2mortal(ptr noundef %44) #11
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %47 = add nuw i64 %33, 1
  %48 = getelementptr ptr, ptr %46, i64 %33
  %49 = getelementptr ptr, ptr %48, i64 %26
  store ptr %45, ptr %49, align 8, !tbaa !43
  %50 = add nuw nsw i64 %32, 2
  %51 = icmp ult i64 %50, %30
  br i1 %51, label %31, label %52, !llvm.loop !124

52:                                               ; preds = %42
  %53 = and i64 %47, 4294967295
  br label %54

54:                                               ; preds = %22, %52
  %55 = phi i64 [ %23, %22 ], [ %26, %52 ]
  %56 = phi i64 [ 0, %22 ], [ %53, %52 ]
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %58 = getelementptr inbounds ptr, ptr %57, i64 %55
  %59 = getelementptr ptr, ptr %58, i64 %56
  %60 = getelementptr ptr, ptr %59, i64 -1
  store ptr %60, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_List__Util_shuffle(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !125 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load i8, ptr @PL_srand_called, align 1, !tbaa !126, !range !78, !noundef !79
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = tail call i32 @Perl_seed() #11
  %19 = zext i32 %18 to i64
  tail call void @spec_init_genrand(i64 noundef %19) #11
  store i8 1, ptr @PL_srand_called, align 1, !tbaa !126
  br label %20

20:                                               ; preds = %17, %1
  %21 = icmp sgt i32 %14, 1
  br i1 %21, label %22, label %44

22:                                               ; preds = %20
  %23 = and i64 %13, 4294967295
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ %23, %22 ], [ %27, %24 ]
  %26 = tail call double @spec_rand() #11
  %27 = add nsw i64 %25, -1
  %28 = trunc i64 %25 to i32
  %29 = sitofp i32 %28 to double
  %30 = fmul double %26, %29
  %31 = fptosi double %30 to i32
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %33 = add nsw i32 %7, %31
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  %37 = add i32 %5, %28
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %32, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  store ptr %40, ptr %35, align 8, !tbaa !43
  %41 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %42 = getelementptr inbounds ptr, ptr %41, i64 %38
  store ptr %36, ptr %42, align 8, !tbaa !43
  %43 = icmp ugt i64 %25, 2
  br i1 %43, label %24, label %44, !llvm.loop !127

44:                                               ; preds = %24, %20
  %45 = shl i64 %12, 29
  %46 = ashr i64 %45, 32
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %48 = sext i32 %7 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  %50 = getelementptr ptr, ptr %49, i64 %46
  %51 = getelementptr ptr, ptr %50, i64 -1
  store ptr %51, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Scalar__Util_dualvar(ptr noundef %0) #0 !prof !35 !PGOFuncName !128 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.55) #11
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr ptr, ptr %18, i64 %8
  %23 = getelementptr ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 6
  %27 = load i8, ptr %26, align 1, !tbaa !63
  %28 = and i8 %27, 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %17
  %31 = load ptr, ptr @PL_curpad, align 8, !tbaa !43
  %32 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !65
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !43
  br label %38

36:                                               ; preds = %17
  %37 = tail call ptr @Perl_sv_newmortal() #11
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi ptr [ %35, %30 ], [ %37, %36 ]
  %40 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !50
  %42 = and i32 %41, 254
  %43 = icmp ugt i32 %42, 5
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %39, i32 noundef 6) #11
  br label %45

45:                                               ; preds = %44, %38
  tail call void @Perl_sv_copypv_flags(ptr noundef nonnull %39, ptr noundef %24, i32 noundef 2) #11
  %46 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !50
  %48 = and i32 %47, 14681600
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %45
  %51 = and i32 %47, 2097664
  %52 = icmp eq i32 %51, 512
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load ptr, ptr %21, align 8, !tbaa !52
  %55 = getelementptr inbounds %struct.xpvnv, ptr %54, i64 0, i32 5
  %56 = load double, ptr %55, align 8, !tbaa !42
  br label %59

57:                                               ; preds = %50
  %58 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %21, i32 noundef 2) #11
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi double [ %56, %53 ], [ %58, %57 ]
  %61 = load ptr, ptr %39, align 8, !tbaa !52
  %62 = getelementptr inbounds %struct.xpvnv, ptr %61, i64 0, i32 5
  store double %60, ptr %62, align 8, !tbaa !42
  br label %85

63:                                               ; preds = %45
  %64 = and i32 %47, -2147483392
  %65 = icmp eq i32 %64, -2147483392
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load ptr, ptr %21, align 8, !tbaa !52
  %68 = getelementptr inbounds %struct.xpvuv, ptr %67, i64 0, i32 4
  %69 = load i64, ptr %68, align 8, !tbaa !42
  %70 = load ptr, ptr %39, align 8, !tbaa !52
  %71 = getelementptr inbounds %struct.xpvuv, ptr %70, i64 0, i32 4
  store i64 %69, ptr %71, align 8, !tbaa !42
  br label %85

72:                                               ; preds = %63
  %73 = and i32 %47, 256
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %21, align 8, !tbaa !52
  %77 = getelementptr inbounds %struct.xpviv, ptr %76, i64 0, i32 4
  %78 = load i64, ptr %77, align 8, !tbaa !42
  br label %81

79:                                               ; preds = %72
  %80 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %21, i32 noundef 2) #11
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi i64 [ %78, %75 ], [ %80, %79 ]
  %83 = load ptr, ptr %39, align 8, !tbaa !52
  %84 = getelementptr inbounds %struct.xpviv, ptr %83, i64 0, i32 4
  store i64 %82, ptr %84, align 8, !tbaa !42
  br label %85

85:                                               ; preds = %66, %81, %59
  %86 = phi i32 [ -2147479296, %66 ], [ 4352, %81 ], [ 8704, %59 ]
  %87 = load i32, ptr %40, align 4, !tbaa !50
  %88 = or i32 %87, %86
  store i32 %88, ptr %40, align 4, !tbaa !50
  %89 = load i8, ptr @PL_tainting, align 1, !tbaa !126, !range !78, !noundef !79
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %85
  %92 = load i32, ptr %46, align 4, !tbaa !50
  %93 = and i32 %92, 14680064
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %21) #11
  br i1 %96, label %107, label %97

97:                                               ; preds = %95, %91
  %98 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !50
  %100 = and i32 %99, 14680064
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %97
  %103 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %24) #11
  %104 = load i8, ptr @PL_tainting, align 1, !range !78
  %105 = icmp ne i8 %104, 0
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %110, label %111

107:                                              ; preds = %95
  %108 = load i8, ptr @PL_tainting, align 1, !tbaa !126, !range !78, !noundef !79
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102, %107
  tail call void @Perl_sv_magic(ptr noundef nonnull %39, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #11
  br label %111

111:                                              ; preds = %110, %107, %102, %97, %85
  %112 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %113 = getelementptr inbounds ptr, ptr %112, i64 %19
  store ptr %39, ptr %113, align 8, !tbaa !43
  %114 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %115 = getelementptr inbounds ptr, ptr %114, i64 %19
  store ptr %115, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Scalar__Util_isdual(ptr noundef %0) #0 !prof !35 !PGOFuncName !129 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #11
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = and i32 %23, 14680064
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @Perl_mg_get(ptr noundef nonnull %21) #11
  %28 = load i32, ptr %22, align 4, !tbaa !50
  br label %29

29:                                               ; preds = %26, %17
  %30 = phi i32 [ %28, %26 ], [ %23, %17 ]
  %31 = and i32 %30, 17408
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = and i32 %30, 768
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = and i32 %30, 12288
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, ptr @PL_sv_no, ptr @PL_sv_yes
  br label %40

40:                                               ; preds = %29, %33, %36
  %41 = phi ptr [ @PL_sv_yes, %33 ], [ %39, %36 ], [ @PL_sv_no, %29 ]
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %43 = getelementptr inbounds ptr, ptr %42, i64 %19
  store ptr %41, ptr %43, align 8, !tbaa !43
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %45 = getelementptr inbounds ptr, ptr %44, i64 %19
  store ptr %45, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Scalar__Util_blessed(ptr noundef %0) #0 !prof !35 !PGOFuncName !130 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #11
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !63
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr @PL_curpad, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !65
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  br label %35

33:                                               ; preds = %17
  %34 = tail call ptr @Perl_sv_newmortal() #11
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = and i32 %38, 2097152
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = tail call i32 @Perl_mg_get(ptr noundef nonnull %21) #11
  %43 = load i32, ptr %37, align 4, !tbaa !50
  br label %44

44:                                               ; preds = %35, %41
  %45 = phi i32 [ %38, %35 ], [ %43, %41 ]
  %46 = and i32 %45, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !42
  %51 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = and i32 %52, 1048576
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44, %48
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %57 = getelementptr inbounds ptr, ptr %56, i64 %19
  store ptr @PL_sv_undef, ptr %57, align 8, !tbaa !43
  br label %69

58:                                               ; preds = %48
  %59 = tail call ptr @Perl_sv_reftype(ptr noundef nonnull %50, i32 noundef 1) #11
  tail call void @Perl_sv_setpv(ptr noundef %36, ptr noundef %59) #11
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %61 = getelementptr inbounds ptr, ptr %60, i64 %19
  %62 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !50
  %64 = and i32 %63, 4194304
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = tail call i32 @Perl_mg_set(ptr noundef nonnull %36) #11
  br label %68

68:                                               ; preds = %58, %66
  store ptr %36, ptr %61, align 8, !tbaa !43
  br label %69

69:                                               ; preds = %55, %68
  %70 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %71 = getelementptr inbounds ptr, ptr %70, i64 %19
  store ptr %71, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Scalar__Util_reftype(ptr noundef %0) #0 !prof !35 !PGOFuncName !131 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #11
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !63
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr @PL_curpad, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !65
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  br label %35

33:                                               ; preds = %17
  %34 = tail call ptr @Perl_sv_newmortal() #11
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = and i32 %38, 2097152
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = tail call i32 @Perl_mg_get(ptr noundef nonnull %21) #11
  %43 = load i32, ptr %37, align 4, !tbaa !50
  br label %44

44:                                               ; preds = %35, %41
  %45 = phi i32 [ %38, %35 ], [ %43, %41 ]
  %46 = and i32 %45, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %50 = getelementptr inbounds ptr, ptr %49, i64 %19
  store ptr @PL_sv_undef, ptr %50, align 8, !tbaa !43
  br label %64

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = tail call ptr @Perl_sv_reftype(ptr noundef %53, i32 noundef 0) #11
  tail call void @Perl_sv_setpv(ptr noundef %36, ptr noundef %54) #11
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %56 = getelementptr inbounds ptr, ptr %55, i64 %19
  %57 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !50
  %59 = and i32 %58, 4194304
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %51
  %62 = tail call i32 @Perl_mg_set(ptr noundef nonnull %36) #11
  br label %63

63:                                               ; preds = %51, %61
  store ptr %36, ptr %56, align 8, !tbaa !43
  br label %64

64:                                               ; preds = %48, %63
  %65 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %66 = getelementptr inbounds ptr, ptr %65, i64 %19
  store ptr %66, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Scalar__Util_refaddr(ptr noundef %0) #0 !prof !35 !PGOFuncName !132 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #11
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !63
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr @PL_curpad, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !65
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  br label %35

33:                                               ; preds = %17
  %34 = tail call ptr @Perl_sv_newmortal() #11
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = and i32 %38, 2097152
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = tail call i32 @Perl_mg_get(ptr noundef nonnull %21) #11
  %43 = load i32, ptr %37, align 4, !tbaa !50
  br label %44

44:                                               ; preds = %35, %41
  %45 = phi i32 [ %38, %35 ], [ %43, %41 ]
  %46 = and i32 %45, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %50 = getelementptr inbounds ptr, ptr %49, i64 %19
  store ptr @PL_sv_undef, ptr %50, align 8, !tbaa !43
  br label %64

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = ptrtoint ptr %53 to i64
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %56 = getelementptr inbounds ptr, ptr %55, i64 %19
  tail call void @Perl_sv_setuv(ptr noundef %36, i64 noundef %54) #11
  %57 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !50
  %59 = and i32 %58, 4194304
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %51
  %62 = tail call i32 @Perl_mg_set(ptr noundef nonnull %36) #11
  br label %63

63:                                               ; preds = %51, %61
  store ptr %36, ptr %56, align 8, !tbaa !43
  br label %64

64:                                               ; preds = %48, %63
  %65 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %66 = getelementptr inbounds ptr, ptr %65, i64 %19
  store ptr %66, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Scalar__Util_weaken(ptr noundef %0) #0 !prof !35 !PGOFuncName !133 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #11
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = add nsw i32 %5, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = tail call ptr @Perl_sv_rvweaken(ptr noundef %21) #11
  %23 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %24 = getelementptr inbounds ptr, ptr %23, i64 %19
  %25 = getelementptr inbounds ptr, ptr %24, i64 -1
  store ptr %25, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Scalar__Util_unweaken(ptr noundef %0) #0 !prof !35 !PGOFuncName !134 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #11
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = and i32 %23, 65280
  %25 = icmp ne i32 %24, 0
  %26 = and i32 %23, 255
  %27 = icmp eq i32 %26, 8
  %28 = or i1 %25, %27
  %29 = and i32 %23, 16777471
  %30 = icmp eq i32 %29, 16777226
  %31 = or i1 %30, %28
  br i1 %31, label %32, label %56

32:                                               ; preds = %17
  %33 = and i32 %23, 2048
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.57) #11
  br label %46

36:                                               ; preds = %32
  %37 = and i32 %23, -2147481600
  %38 = icmp eq i32 %37, -2147481600
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #11
  br i1 %40, label %41, label %56

41:                                               ; preds = %39
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.58) #11
  br label %56

42:                                               ; preds = %36
  %43 = and i32 %23, 134283264
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @Perl_croak_no_modify() #11
  br label %46

46:                                               ; preds = %45, %42, %35
  %47 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  %49 = load i32, ptr %22, align 4, !tbaa !50
  %50 = and i32 %49, 2147481599
  %51 = or disjoint i32 %50, 2048
  store i32 %51, ptr %22, align 4, !tbaa !50
  %52 = tail call fastcc ptr @S_SvREFCNT_inc_NN(ptr noundef %48) #12
  tail call void @Perl_sv_del_backref(ptr noundef %48, ptr noundef nonnull %21) #11
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %54 = getelementptr inbounds ptr, ptr %53, i64 %19
  %55 = getelementptr inbounds ptr, ptr %54, i64 -1
  store ptr %55, ptr @PL_stack_sp, align 8, !tbaa !43
  br label %56

56:                                               ; preds = %17, %41, %39, %46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Scalar__Util_isweak(ptr noundef %0) #0 !prof !35 !PGOFuncName !135 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #11
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = add nsw i32 %5, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %23, -2147481600
  %27 = icmp eq i32 %26, -2147481600
  %28 = select i1 %27, ptr @PL_sv_yes, ptr @PL_sv_no
  %29 = select i1 %25, ptr @PL_sv_no, ptr %28
  store ptr %29, ptr %20, align 8, !tbaa !43
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %31 = getelementptr inbounds ptr, ptr %30, i64 %19
  store ptr %31, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Scalar__Util_readonly(ptr noundef %0) #0 !prof !35 !PGOFuncName !136 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #11
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !63
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr @PL_curpad, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !65
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  br label %35

33:                                               ; preds = %17
  %34 = tail call ptr @Perl_sv_newmortal() #11
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = and i32 %38, 2097152
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = tail call i32 @Perl_mg_get(ptr noundef nonnull %21) #11
  %43 = load i32, ptr %37, align 4, !tbaa !50
  br label %44

44:                                               ; preds = %35, %41
  %45 = phi i32 [ %38, %35 ], [ %43, %41 ]
  %46 = and i32 %45, 134283264
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %48 = zext nneg i32 %46 to i64
  tail call void @Perl_sv_setiv(ptr noundef %36, i64 noundef %48) #11
  %49 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !50
  %51 = and i32 %50, 4194304
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  %54 = tail call i32 @Perl_mg_set(ptr noundef nonnull %36) #11
  br label %55

55:                                               ; preds = %44, %53
  %56 = getelementptr inbounds ptr, ptr %47, i64 %19
  store ptr %36, ptr %56, align 8, !tbaa !43
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %58 = getelementptr inbounds ptr, ptr %57, i64 %19
  store ptr %58, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Scalar__Util_tainted(ptr noundef %0) #0 !prof !35 !PGOFuncName !137 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #11
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !63
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr @PL_curpad, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !65
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  br label %35

33:                                               ; preds = %17
  %34 = tail call ptr @Perl_sv_newmortal() #11
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = and i32 %38, 2097152
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = tail call i32 @Perl_mg_get(ptr noundef nonnull %21) #11
  %43 = load i32, ptr %37, align 4, !tbaa !50
  br label %44

44:                                               ; preds = %35, %41
  %45 = phi i32 [ %38, %35 ], [ %43, %41 ]
  %46 = and i32 %45, 14680064
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %21) #11
  %50 = zext i1 %49 to i64
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i64 [ 0, %44 ], [ %50, %48 ]
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  tail call void @Perl_sv_setiv(ptr noundef %36, i64 noundef %52) #11
  %54 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !50
  %56 = and i32 %55, 4194304
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = tail call i32 @Perl_mg_set(ptr noundef nonnull %36) #11
  br label %60

60:                                               ; preds = %51, %58
  %61 = getelementptr inbounds ptr, ptr %53, i64 %19
  store ptr %36, ptr %61, align 8, !tbaa !43
  %62 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %63 = getelementptr inbounds ptr, ptr %62, i64 %19
  store ptr %63, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Scalar__Util_isvstring(ptr noundef %0) #0 !prof !35 !PGOFuncName !138 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #11
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = and i32 %23, 2097152
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @Perl_mg_get(ptr noundef nonnull %21) #11
  %28 = load i32, ptr %22, align 4, !tbaa !50
  br label %29

29:                                               ; preds = %17, %26
  %30 = phi i32 [ %23, %17 ], [ %28, %26 ]
  %31 = and i32 %30, 14680064
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @Perl_mg_find(ptr noundef nonnull %21, i32 noundef 86) #11
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, ptr @PL_sv_no, ptr @PL_sv_yes
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi ptr [ @PL_sv_no, %29 ], [ %36, %33 ]
  %39 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %40 = getelementptr inbounds ptr, ptr %39, i64 %19
  store ptr %38, ptr %40, align 8, !tbaa !43
  %41 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %42 = getelementptr inbounds ptr, ptr %41, i64 %19
  store ptr %42, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Scalar__Util_looks_like_number(ptr noundef %0) #0 !prof !35 !PGOFuncName !139 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #11
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = and i32 %23, 2097152
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @Perl_mg_get(ptr noundef nonnull %21) #11
  %28 = load i32, ptr %22, align 4, !tbaa !50
  br label %29

29:                                               ; preds = %17, %26
  %30 = phi i32 [ %23, %17 ], [ %28, %26 ]
  %31 = and i32 %30, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !42
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = and i32 %37, 1048576
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %35, align 8, !tbaa !52
  %42 = load ptr, ptr %41, align 8, !tbaa !53
  %43 = getelementptr inbounds %struct.hv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !56
  %45 = and i32 %44, 268435456
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %21, ptr noundef nonnull @PL_sv_undef, i32 noundef 9, i32 noundef 9) #11
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr %21, ptr %48
  br label %51

51:                                               ; preds = %47, %40, %33, %29
  %52 = phi ptr [ %21, %40 ], [ %21, %33 ], [ %21, %29 ], [ %50, %47 ]
  %53 = tail call i32 @Perl_looks_like_number(ptr noundef %52) #11
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, ptr @PL_sv_no, ptr @PL_sv_yes
  %56 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %55) #11
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %58 = getelementptr inbounds ptr, ptr %57, i64 %19
  store ptr %56, ptr %58, align 8, !tbaa !43
  %59 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %60 = getelementptr inbounds ptr, ptr %59, i64 %19
  store ptr %60, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Scalar__Util_openhandle(ptr noundef %0) #0 !prof !35 !PGOFuncName !140 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #11
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = and i32 %23, 2097152
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @Perl_mg_get(ptr noundef nonnull %21) #11
  %28 = load i32, ptr %22, align 4, !tbaa !50
  br label %29

29:                                               ; preds = %17, %26
  %30 = phi i32 [ %23, %17 ], [ %28, %26 ]
  %31 = and i32 %30, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !42
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !50
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i32 [ %37, %33 ], [ %30, %29 ]
  %40 = phi ptr [ %35, %33 ], [ %21, %29 ]
  %41 = trunc i32 %39 to i8
  switch i8 %41, label %63 [
    i8 9, label %42
    i8 15, label %50
  ]

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gv, ptr %40, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = icmp eq ptr %44, null
  br i1 %45, label %63, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.gp, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !141
  %49 = icmp eq ptr %48, null
  br i1 %49, label %63, label %50

50:                                               ; preds = %38, %46
  %51 = phi ptr [ %48, %46 ], [ %40, %38 ]
  %52 = getelementptr inbounds %struct.io, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !50
  %58 = and i32 %57, 8388608
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = tail call ptr @Perl_mg_find(ptr noundef nonnull %51, i32 noundef 113) #11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %38, %42, %46, %55, %60
  %64 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %65 = getelementptr inbounds ptr, ptr %64, i64 %19
  store ptr @PL_sv_undef, ptr %65, align 8, !tbaa !43
  br label %66

66:                                               ; preds = %60, %50, %63
  %67 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %68 = getelementptr inbounds ptr, ptr %67, i64 %19
  store ptr %68, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Sub__Util_set_prototype(ptr noundef %0) #0 !prof !35 !PGOFuncName !142 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.59) #11
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr ptr, ptr %18, i64 %8
  %23 = getelementptr ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !50
  %27 = and i32 %26, 2097152
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = tail call i32 @Perl_mg_get(ptr noundef nonnull %24) #11
  %31 = load i32, ptr %25, align 4, !tbaa !50
  br label %32

32:                                               ; preds = %17, %29
  %33 = phi i32 [ %26, %17 ], [ %31, %29 ]
  %34 = and i32 %33, 2048
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.60) #11
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !50
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 13
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.61) #11
  br label %45

45:                                               ; preds = %44, %37
  %46 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !50
  %48 = and i32 %47, 1024
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void @Perl_sv_copypv_flags(ptr noundef nonnull %39, ptr noundef nonnull %21, i32 noundef 2) #11
  br label %54

51:                                               ; preds = %45
  %52 = load i32, ptr %40, align 4, !tbaa !50
  %53 = and i32 %52, -17409
  store i32 %53, ptr %40, align 4, !tbaa !50
  br label %54

54:                                               ; preds = %51, %50
  %55 = shl i64 %12, 29
  %56 = ashr i64 %55, 32
  %57 = sub nsw i64 0, %56
  %58 = getelementptr inbounds ptr, ptr %2, i64 %57
  %59 = getelementptr inbounds ptr, ptr %58, i64 1
  store ptr %24, ptr %59, align 8, !tbaa !43
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %61 = getelementptr inbounds ptr, ptr %60, i64 %19
  store ptr %61, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Sub__Util_set_subname(ptr noundef %0) #0 !prof !35 !PGOFuncName !143 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.62) #11
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = getelementptr ptr, ptr %17, i64 %7
  %19 = getelementptr ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !50
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  br label %31

28:                                               ; preds = %16
  %29 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %20, ptr noundef null, i32 noundef 2) #11
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi ptr [ %17, %25 ], [ %30, %28 ]
  %33 = phi ptr [ %27, %25 ], [ %29, %28 ]
  %34 = getelementptr ptr, ptr %32, i64 %7
  %35 = getelementptr ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  %37 = load ptr, ptr @PL_curcop, align 8, !tbaa !43
  %38 = getelementptr inbounds %struct.cop, ptr %37, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !144
  %40 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !50
  %42 = and i32 %41, 2099200
  %43 = icmp eq i32 %42, 2097152
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = tail call i32 @Perl_mg_get(ptr noundef nonnull %36) #11
  %46 = load i32, ptr %40, align 4, !tbaa !50
  br label %47

47:                                               ; preds = %44, %31
  %48 = phi i32 [ %46, %44 ], [ %41, %31 ]
  %49 = and i32 %48, 2048
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 3
  br label %107

53:                                               ; preds = %47
  %54 = and i32 %48, 255
  %55 = icmp eq i32 %54, 9
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !42
  %59 = getelementptr inbounds %struct.gp, ptr %58, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !146
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %111

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.gp, ptr %58, i64 0, i32 2
  br label %107

64:                                               ; preds = %53
  %65 = and i32 %48, 63232
  %66 = icmp ne i32 %65, 0
  %67 = icmp eq i32 %54, 8
  %68 = or i1 %66, %67
  %69 = and i32 %48, 16777471
  %70 = icmp eq i32 %69, 16777226
  %71 = or i1 %70, %68
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @PL_no_usym, ptr noundef nonnull @.str.63) #11
  br label %111

73:                                               ; preds = %64
  %74 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %75 = getelementptr inbounds %struct.op, ptr %74, i64 0, i32 6
  %76 = load i8, ptr %75, align 1, !tbaa !63
  %77 = and i8 %76, 2
  %78 = icmp eq i8 %77, 0
  %79 = and i32 %48, 2098176
  %80 = icmp eq i32 %79, 1024
  br i1 %78, label %89, label %81

81:                                               ; preds = %73
  br i1 %80, label %82, label %85

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !42
  br label %87

85:                                               ; preds = %81
  %86 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %36, ptr noundef null, i32 noundef 2) #11
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi ptr [ %84, %82 ], [ %86, %85 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.64, ptr noundef %88, ptr noundef nonnull @.str.63) #11
  br label %111

89:                                               ; preds = %73
  br i1 %80, label %90, label %93

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !42
  br label %95

93:                                               ; preds = %89
  %94 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %36, ptr noundef null, i32 noundef 2) #11
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi ptr [ %92, %90 ], [ %94, %93 ]
  %97 = tail call ptr @Perl_gv_fetchpv(ptr noundef %96, i32 noundef 0, i32 noundef 13) #11
  %98 = icmp eq ptr %97, null
  br i1 %98, label %111, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.gv, ptr %97, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !42
  %102 = getelementptr inbounds %struct.gp, ptr %101, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !146
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.gp, ptr %101, i64 0, i32 2
  br label %107

107:                                              ; preds = %105, %62, %51
  %108 = phi ptr [ %52, %51 ], [ %63, %62 ], [ %106, %105 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !42
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %99, %56, %72, %95, %87, %107
  %112 = load i32, ptr %40, align 4, !tbaa !50
  %113 = and i32 %112, 2098176
  %114 = icmp eq i32 %113, 1024
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !42
  br label %120

118:                                              ; preds = %111
  %119 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %36, ptr noundef null, i32 noundef 2) #11
  br label %120

120:                                              ; preds = %118, %115
  %121 = phi ptr [ %117, %115 ], [ %119, %118 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.65, ptr noundef %121) #11
  br label %122

122:                                              ; preds = %120, %107
  %123 = phi ptr [ null, %120 ], [ %109, %107 ]
  %124 = getelementptr inbounds %struct.cv, ptr %123, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !147
  %126 = and i32 %125, 255
  %127 = add nsw i32 %126, -13
  %128 = icmp ult i32 %127, 2
  br i1 %128, label %130, label %129

129:                                              ; preds = %122
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #11
  br label %130

130:                                              ; preds = %122, %129
  %131 = load i8, ptr %33, align 1, !tbaa !42
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %167, label %133

133:                                              ; preds = %130, %147
  %134 = phi i8 [ %148, %147 ], [ %131, %130 ]
  %135 = phi ptr [ %150, %147 ], [ %33, %130 ]
  %136 = phi ptr [ %149, %147 ], [ null, %130 ]
  %137 = getelementptr inbounds i8, ptr %135, i64 1
  %138 = load i8, ptr %137, align 1, !tbaa !42
  switch i8 %138, label %144 [
    i8 58, label %139
    i8 0, label %152
  ]

139:                                              ; preds = %133
  %140 = icmp eq i8 %134, 58
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = getelementptr inbounds i8, ptr %135, i64 2
  %143 = load i8, ptr %142, align 1, !tbaa !42
  br label %147

144:                                              ; preds = %133, %139
  %145 = icmp eq i8 %134, 39
  %146 = select i1 %145, ptr %137, ptr %136
  br label %147

147:                                              ; preds = %144, %141
  %148 = phi i8 [ %143, %141 ], [ %138, %144 ]
  %149 = phi ptr [ %142, %141 ], [ %146, %144 ]
  %150 = phi ptr [ %142, %141 ], [ %137, %144 ]
  %151 = icmp eq i8 %148, 0
  br i1 %151, label %152, label %133, !llvm.loop !148

152:                                              ; preds = %133, %147
  %153 = phi ptr [ %149, %147 ], [ %136, %133 ]
  %154 = phi ptr [ %150, %147 ], [ %137, %133 ]
  %155 = icmp eq ptr %153, null
  br i1 %155, label %167, label %156

156:                                              ; preds = %152
  %157 = ptrtoint ptr %153 to i64
  %158 = ptrtoint ptr %33 to i64
  %159 = sub i64 %157, %158
  %160 = trunc i64 %159 to i32
  %161 = tail call ptr @Perl_savepvn(ptr noundef nonnull %33, i32 noundef %160) #11
  %162 = tail call ptr @Perl_gv_fetchpv(ptr noundef %161, i32 noundef 1, i32 noundef 12) #11
  %163 = getelementptr inbounds %struct.gv, ptr %162, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !42
  %165 = getelementptr inbounds %struct.gp, ptr %164, i64 0, i32 5
  %166 = load ptr, ptr %165, align 8, !tbaa !149
  tail call void @Perl_safesysfree(ptr noundef %161) #11
  br label %167

167:                                              ; preds = %130, %156, %152
  %168 = phi ptr [ %154, %156 ], [ %154, %152 ], [ %33, %130 ]
  %169 = phi ptr [ %166, %156 ], [ %39, %152 ], [ %39, %130 ]
  %170 = phi ptr [ %153, %156 ], [ %33, %152 ], [ %33, %130 ]
  %171 = load ptr, ptr @PL_DBsub, align 8, !tbaa !43
  %172 = icmp eq ptr %171, null
  br i1 %172, label %349, label %173

173:                                              ; preds = %167
  %174 = tail call fastcc ptr @S_CvGV(ptr noundef %123) #12
  %175 = icmp eq ptr %174, null
  br i1 %175, label %349, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr @PL_DBsub, align 8, !tbaa !43
  %178 = getelementptr inbounds %struct.gv, ptr %177, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !42
  %180 = getelementptr inbounds %struct.gp, ptr %179, i64 0, i32 5
  %181 = load ptr, ptr %180, align 8, !tbaa !149
  %182 = getelementptr inbounds %struct.hv, ptr %169, i64 0, i32 2
  %183 = load i32, ptr %182, align 4, !tbaa !56
  %184 = and i32 %183, 33554432
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %206, label %186

186:                                              ; preds = %176
  %187 = getelementptr inbounds %struct.hv, ptr %169, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !42
  %189 = load ptr, ptr %169, align 8, !tbaa !150
  %190 = getelementptr inbounds %struct.xpvhv, ptr %189, i64 0, i32 3
  %191 = load i64, ptr %190, align 8, !tbaa !151
  %192 = getelementptr ptr, ptr %188, i64 %191
  %193 = getelementptr ptr, ptr %192, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !42
  %195 = icmp eq ptr %194, null
  br i1 %195, label %206, label %196

196:                                              ; preds = %186
  %197 = getelementptr i8, ptr %192, i64 36
  %198 = load i32, ptr %197, align 4, !tbaa !153
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %196
  %201 = load ptr, ptr %194, align 8, !tbaa !42
  %202 = icmp eq ptr %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %196, %200
  %204 = phi ptr [ %201, %200 ], [ %194, %196 ]
  %205 = getelementptr inbounds %struct.hek, ptr %204, i64 0, i32 2
  br label %206

206:                                              ; preds = %176, %186, %200, %203
  %207 = phi ptr [ %205, %203 ], [ null, %200 ], [ null, %186 ], [ null, %176 ]
  %208 = tail call fastcc ptr @S_CvGV(ptr noundef %123) #12
  %209 = load ptr, ptr %208, align 8, !tbaa !155
  %210 = getelementptr inbounds %struct.xpvgv, ptr %209, i64 0, i32 4
  %211 = load ptr, ptr %210, align 8, !tbaa !42
  %212 = getelementptr inbounds %struct.hek, ptr %211, i64 0, i32 2
  %213 = tail call fastcc ptr @S_CvGV(ptr noundef %123) #12
  %214 = load ptr, ptr %213, align 8, !tbaa !155
  %215 = getelementptr inbounds %struct.xpvgv, ptr %214, i64 0, i32 5
  %216 = load ptr, ptr %215, align 8, !tbaa !42
  %217 = getelementptr inbounds %struct.hv, ptr %216, i64 0, i32 2
  %218 = load i32, ptr %217, align 4, !tbaa !56
  %219 = and i32 %218, 33554432
  %220 = icmp ne i32 %219, 0
  tail call void @llvm.assume(i1 %220)
  %221 = tail call fastcc ptr @S_CvGV(ptr noundef %123) #12
  %222 = load ptr, ptr %221, align 8, !tbaa !155
  %223 = getelementptr inbounds %struct.xpvgv, ptr %222, i64 0, i32 5
  %224 = load ptr, ptr %223, align 8, !tbaa !42
  %225 = getelementptr inbounds %struct.hv, ptr %224, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !42
  %227 = tail call fastcc ptr @S_CvGV(ptr noundef %123) #12
  %228 = load ptr, ptr %227, align 8, !tbaa !155
  %229 = getelementptr inbounds %struct.xpvgv, ptr %228, i64 0, i32 5
  %230 = load ptr, ptr %229, align 8, !tbaa !42
  %231 = load ptr, ptr %230, align 8, !tbaa !150
  %232 = getelementptr inbounds %struct.xpvhv, ptr %231, i64 0, i32 3
  %233 = load i64, ptr %232, align 8, !tbaa !151
  %234 = getelementptr ptr, ptr %226, i64 %233
  %235 = getelementptr ptr, ptr %234, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !42
  %237 = icmp ne ptr %236, null
  tail call void @llvm.assume(i1 %237)
  %238 = tail call fastcc ptr @S_CvGV(ptr noundef %123) #12
  %239 = load ptr, ptr %238, align 8, !tbaa !155
  %240 = getelementptr inbounds %struct.xpvgv, ptr %239, i64 0, i32 5
  %241 = load ptr, ptr %240, align 8, !tbaa !42
  %242 = getelementptr inbounds %struct.hv, ptr %241, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !42
  %244 = tail call fastcc ptr @S_CvGV(ptr noundef %123) #12
  %245 = load ptr, ptr %244, align 8, !tbaa !155
  %246 = getelementptr inbounds %struct.xpvgv, ptr %245, i64 0, i32 5
  %247 = load ptr, ptr %246, align 8, !tbaa !42
  %248 = load ptr, ptr %247, align 8, !tbaa !150
  %249 = getelementptr inbounds %struct.xpvhv, ptr %248, i64 0, i32 3
  %250 = load i64, ptr %249, align 8, !tbaa !151
  %251 = getelementptr ptr, ptr %243, i64 %250
  %252 = getelementptr i8, ptr %251, i64 36
  %253 = load i32, ptr %252, align 4, !tbaa !153
  %254 = icmp eq i32 %253, 0
  %255 = tail call fastcc ptr @S_CvGV(ptr noundef %123) #12
  %256 = load ptr, ptr %255, align 8, !tbaa !155
  %257 = getelementptr inbounds %struct.xpvgv, ptr %256, i64 0, i32 5
  %258 = load ptr, ptr %257, align 8, !tbaa !42
  %259 = getelementptr inbounds %struct.hv, ptr %258, i64 0, i32 3
  %260 = load ptr, ptr %259, align 8, !tbaa !42
  %261 = tail call fastcc ptr @S_CvGV(ptr noundef %123) #12
  %262 = load ptr, ptr %261, align 8, !tbaa !155
  %263 = getelementptr inbounds %struct.xpvgv, ptr %262, i64 0, i32 5
  %264 = load ptr, ptr %263, align 8, !tbaa !42
  %265 = load ptr, ptr %264, align 8, !tbaa !150
  %266 = getelementptr inbounds %struct.xpvhv, ptr %265, i64 0, i32 3
  %267 = load i64, ptr %266, align 8, !tbaa !151
  %268 = getelementptr ptr, ptr %260, i64 %267
  %269 = getelementptr ptr, ptr %268, i64 1
  %270 = load ptr, ptr %269, align 8, !tbaa !42
  br i1 %254, label %273, label %271

271:                                              ; preds = %206
  %272 = load ptr, ptr %270, align 8, !tbaa !43
  br label %273

273:                                              ; preds = %206, %271
  %274 = phi ptr [ %272, %271 ], [ %270, %206 ]
  %275 = icmp ne ptr %274, null
  tail call void @llvm.assume(i1 %275)
  %276 = tail call fastcc ptr @S_CvGV(ptr noundef %123) #12
  %277 = load ptr, ptr %276, align 8, !tbaa !155
  %278 = getelementptr inbounds %struct.xpvgv, ptr %277, i64 0, i32 5
  %279 = load ptr, ptr %278, align 8, !tbaa !42
  %280 = getelementptr inbounds %struct.hv, ptr %279, i64 0, i32 3
  %281 = load ptr, ptr %280, align 8, !tbaa !42
  %282 = tail call fastcc ptr @S_CvGV(ptr noundef %123) #12
  %283 = load ptr, ptr %282, align 8, !tbaa !155
  %284 = getelementptr inbounds %struct.xpvgv, ptr %283, i64 0, i32 5
  %285 = load ptr, ptr %284, align 8, !tbaa !42
  %286 = load ptr, ptr %285, align 8, !tbaa !150
  %287 = getelementptr inbounds %struct.xpvhv, ptr %286, i64 0, i32 3
  %288 = load i64, ptr %287, align 8, !tbaa !151
  %289 = getelementptr ptr, ptr %281, i64 %288
  %290 = getelementptr i8, ptr %289, i64 36
  %291 = load i32, ptr %290, align 4, !tbaa !153
  %292 = icmp eq i32 %291, 0
  %293 = tail call fastcc ptr @S_CvGV(ptr noundef %123) #12
  %294 = load ptr, ptr %293, align 8, !tbaa !155
  %295 = getelementptr inbounds %struct.xpvgv, ptr %294, i64 0, i32 5
  %296 = load ptr, ptr %295, align 8, !tbaa !42
  %297 = getelementptr inbounds %struct.hv, ptr %296, i64 0, i32 3
  %298 = load ptr, ptr %297, align 8, !tbaa !42
  %299 = tail call fastcc ptr @S_CvGV(ptr noundef %123) #12
  %300 = load ptr, ptr %299, align 8, !tbaa !155
  %301 = getelementptr inbounds %struct.xpvgv, ptr %300, i64 0, i32 5
  %302 = load ptr, ptr %301, align 8, !tbaa !42
  %303 = load ptr, ptr %302, align 8, !tbaa !150
  %304 = getelementptr inbounds %struct.xpvhv, ptr %303, i64 0, i32 3
  %305 = load i64, ptr %304, align 8, !tbaa !151
  %306 = getelementptr ptr, ptr %298, i64 %305
  %307 = getelementptr ptr, ptr %306, i64 1
  br i1 %292, label %310, label %308

308:                                              ; preds = %273
  %309 = load ptr, ptr %307, align 8, !tbaa !42
  br label %310

310:                                              ; preds = %273, %308
  %311 = phi ptr [ %309, %308 ], [ %307, %273 ]
  %312 = load ptr, ptr %311, align 8, !tbaa !42
  %313 = getelementptr inbounds %struct.hek, ptr %312, i64 0, i32 2
  %314 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %212) #14
  %315 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %313) #14
  %316 = add i64 %315, %314
  %317 = trunc i64 %316 to i32
  %318 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %170) #14
  %319 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %207) #14
  %320 = add i64 %319, %318
  %321 = trunc i64 %320 to i32
  %322 = tail call i32 @llvm.smax.i32(i32 %317, i32 %321)
  %323 = add nsw i32 %322, 3
  %324 = sext i32 %323 to i64
  %325 = tail call ptr @Perl_safesyscalloc(i64 noundef %324, i64 noundef 1) #11
  %326 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %325, ptr noundef nonnull dereferenceable(1) %313) #11
  %327 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %325)
  %328 = getelementptr inbounds i8, ptr %325, i64 %327
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %328, ptr noundef nonnull align 1 dereferenceable(3) @.str.66, i64 3, i1 false)
  %329 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %325, ptr noundef nonnull dereferenceable(1) %212) #11
  %330 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %325) #14
  %331 = trunc i64 %330 to i32
  %332 = tail call ptr @Perl_hv_common_key_len(ptr noundef %181, ptr noundef %325, i32 noundef %331, i32 noundef 32, ptr noundef null, i32 noundef 0) #11
  %333 = icmp eq ptr %332, null
  br i1 %333, label %348, label %334

334:                                              ; preds = %310
  %335 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %325, ptr noundef nonnull dereferenceable(1) %207) #11
  %336 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %325)
  %337 = getelementptr inbounds i8, ptr %325, i64 %336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %337, ptr noundef nonnull align 1 dereferenceable(3) @.str.66, i64 3, i1 false)
  %338 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %325, ptr noundef nonnull dereferenceable(1) %170) #11
  %339 = load ptr, ptr %332, align 8, !tbaa !43
  %340 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %339) #12
  %341 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %325) #14
  %342 = trunc i64 %341 to i32
  %343 = load ptr, ptr %332, align 8, !tbaa !43
  %344 = tail call ptr @Perl_hv_common_key_len(ptr noundef %181, ptr noundef nonnull %325, i32 noundef %342, i32 noundef 36, ptr noundef %343, i32 noundef 0) #11
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %348

346:                                              ; preds = %334
  %347 = load ptr, ptr %332, align 8, !tbaa !43
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %347) #12
  br label %348

348:                                              ; preds = %334, %346, %310
  tail call void @Perl_safesysfree(ptr noundef nonnull %325) #11
  br label %349

349:                                              ; preds = %348, %173, %167
  %350 = tail call ptr @Perl_newSV(i64 noundef 0) #11
  %351 = ptrtoint ptr %168 to i64
  %352 = ptrtoint ptr %170 to i64
  %353 = sub i64 %351, %352
  tail call void @Perl_gv_init_pvn(ptr noundef %350, ptr noundef %169, ptr noundef nonnull %170, i64 noundef %353, i32 noundef 2) #11
  %354 = load ptr, ptr %123, align 8, !tbaa !36
  %355 = getelementptr inbounds %struct.xpvmg, ptr %354, i64 0, i32 1
  br label %356

356:                                              ; preds = %360, %349
  %357 = phi ptr [ %355, %349 ], [ %358, %360 ]
  %358 = load ptr, ptr %357, align 8, !tbaa !42
  %359 = icmp eq ptr %358, null
  br i1 %359, label %364, label %360

360:                                              ; preds = %356
  %361 = getelementptr inbounds %struct.magic, ptr %358, i64 0, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !156
  %363 = icmp eq ptr %362, @subname_vtbl
  br i1 %363, label %371, label %356, !llvm.loop !159

364:                                              ; preds = %356
  %365 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 48) #11
  %366 = load ptr, ptr %123, align 8, !tbaa !36
  %367 = getelementptr inbounds %struct.xpvmg, ptr %366, i64 0, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !42
  store ptr %368, ptr %365, align 8, !tbaa !160
  %369 = getelementptr inbounds %struct.magic, ptr %365, i64 0, i32 3
  store i8 126, ptr %369, align 2, !tbaa !161
  %370 = getelementptr inbounds %struct.magic, ptr %365, i64 0, i32 1
  store ptr @subname_vtbl, ptr %370, align 8, !tbaa !156
  store ptr %365, ptr %367, align 8, !tbaa !42
  br label %371

371:                                              ; preds = %360, %364
  %372 = phi ptr [ %365, %364 ], [ %358, %360 ]
  %373 = getelementptr inbounds %struct.magic, ptr %372, i64 0, i32 4
  %374 = load i8, ptr %373, align 1, !tbaa !162
  %375 = and i8 %374, 2
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %381, label %377

377:                                              ; preds = %371
  %378 = getelementptr inbounds %struct.magic, ptr %372, i64 0, i32 6
  %379 = load ptr, ptr %378, align 8, !tbaa !163
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %379) #12
  %380 = load i8, ptr %373, align 1, !tbaa !162
  br label %381

381:                                              ; preds = %377, %371
  %382 = phi i8 [ %380, %377 ], [ %374, %371 ]
  %383 = shl i64 %11, 29
  %384 = ashr i64 %383, 32
  %385 = sub nsw i64 0, %384
  %386 = getelementptr inbounds ptr, ptr %2, i64 %385
  %387 = or i8 %382, 2
  store i8 %387, ptr %373, align 1, !tbaa !162
  %388 = getelementptr inbounds %struct.magic, ptr %372, i64 0, i32 6
  store ptr %350, ptr %388, align 8, !tbaa !163
  %389 = load i32, ptr %124, align 4, !tbaa !147
  %390 = or i32 %389, 8388608
  store i32 %390, ptr %124, align 4, !tbaa !147
  %391 = load ptr, ptr %123, align 8, !tbaa !36
  %392 = getelementptr inbounds %struct.xpvcv, ptr %391, i64 0, i32 12
  %393 = load i32, ptr %392, align 4, !tbaa !73
  %394 = and i32 %393, -129
  store i32 %394, ptr %392, align 4, !tbaa !73
  tail call void @Perl_cvgv_set(ptr noundef nonnull %123, ptr noundef %350) #11
  %395 = getelementptr inbounds ptr, ptr %386, i64 1
  store ptr %36, ptr %395, align 8, !tbaa !43
  store ptr %395, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Sub__Util_subname(ptr noundef %0) #0 !prof !35 !PGOFuncName !164 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !49
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.67) #11
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = shl i64 %12, 29
  %20 = ashr i64 %19, 32
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds ptr, ptr %18, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !50
  %28 = and i32 %27, 2099200
  %29 = icmp eq i32 %28, 2097152
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = tail call i32 @Perl_mg_get(ptr noundef nonnull %25) #11
  %32 = load i32, ptr %26, align 4, !tbaa !50
  br label %33

33:                                               ; preds = %30, %17
  %34 = phi i32 [ %32, %30 ], [ %27, %17 ]
  %35 = and i32 %34, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = getelementptr inbounds %struct.cv, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !147
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 13
  br i1 %43, label %46, label %44

44:                                               ; preds = %37, %33
  %45 = phi ptr [ %39, %37 ], [ undef, %33 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #11
  br label %46

46:                                               ; preds = %44, %37
  %47 = phi ptr [ %45, %44 ], [ %39, %37 ]
  %48 = tail call fastcc ptr @S_CvGV(ptr noundef %47) #12
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %52 = getelementptr inbounds ptr, ptr %51, i64 %23
  %53 = getelementptr inbounds ptr, ptr %52, i64 -1
  br label %92

54:                                               ; preds = %46
  %55 = load ptr, ptr %48, align 8, !tbaa !155
  %56 = getelementptr inbounds %struct.xpvgv, ptr %55, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !42
  %58 = getelementptr inbounds %struct.hv, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !56
  %60 = and i32 %59, 33554432
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.hv, ptr %57, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !42
  %65 = load ptr, ptr %57, align 8, !tbaa !150
  %66 = getelementptr inbounds %struct.xpvhv, ptr %65, i64 0, i32 3
  %67 = load i64, ptr %66, align 8, !tbaa !151
  %68 = getelementptr ptr, ptr %64, i64 %67
  %69 = getelementptr ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !42
  %71 = icmp eq ptr %70, null
  br i1 %71, label %82, label %72

72:                                               ; preds = %62
  %73 = getelementptr i8, ptr %68, i64 36
  %74 = load i32, ptr %73, align 4, !tbaa !153
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %70, align 8, !tbaa !42
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %72, %76
  %80 = phi ptr [ %77, %76 ], [ %70, %72 ]
  %81 = getelementptr inbounds %struct.hek, ptr %80, i64 0, i32 2
  br label %82

82:                                               ; preds = %54, %62, %76, %79
  %83 = phi ptr [ %81, %79 ], [ null, %76 ], [ null, %62 ], [ null, %54 ]
  %84 = getelementptr inbounds %struct.xpvgv, ptr %55, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !42
  %86 = getelementptr inbounds %struct.hek, ptr %85, i64 0, i32 2
  %87 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.68, ptr noundef %83, ptr noundef nonnull %86) #11
  %88 = tail call ptr @Perl_sv_2mortal(ptr noundef %87) #11
  %89 = getelementptr inbounds ptr, ptr %22, i64 1
  store ptr %88, ptr %89, align 8, !tbaa !43
  %90 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %91 = getelementptr inbounds ptr, ptr %90, i64 %23
  br label %92

92:                                               ; preds = %82, %50
  %93 = phi ptr [ %53, %50 ], [ %91, %82 ]
  store ptr %93, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_gv_init_pvn(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_amagic_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @accum_type(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !35 !PGOFuncName !165 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !50
  %4 = and i32 %3, 2048
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = and i32 %10, 1048576
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr %8, align 8, !tbaa !52
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.hv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !56
  %18 = and i32 %17, 268435456
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13, %6, %1
  %21 = and i32 %3, 768
  %22 = icmp ne i32 %21, 256
  %23 = and i32 %3, -2147483392
  %24 = icmp eq i32 %23, -2147483392
  %25 = or i1 %22, %24
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %20, %13
  %28 = phi i32 [ 2, %13 ], [ %26, %20 ]
  ret i32 %28
}

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setnv(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_cmp_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2cv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_fetchpv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_sptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_cxinc() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_was_lvalue_sub() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @S_CvDEPTHp(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !35 !PGOFuncName !166 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 13
  ret ptr %3
}

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pad_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !167 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !95
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !95
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #11
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak_popstack() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @Perl_get_hv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @spec_init_genrand(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_seed() local_unnamed_addr #2

; Function Attrs: optsize
declare double @spec_rand() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_copypv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_rvweaken(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_no_modify() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc_NN(ptr noundef returned %0) unnamed_addr #6 !prof !35 !PGOFuncName !168 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !95
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !95
  ret ptr %0
}

; Function Attrs: optsize
declare void @Perl_sv_del_backref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_looks_like_number(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_savepvn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !169 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !73
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #11
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #6 !prof !35 !PGOFuncName !170 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !95
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !95
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_cvgv_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491972207}
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
!23 = !{i32 950000, i64 21523500, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 64, i32 4611}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !38, i64 0}
!37 = !{!"cv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!39, !39, i64 0}
!43 = !{!38, !38, i64 0}
!44 = !{!45, !41, i64 12}
!45 = !{!"gv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!46 = !{!"branch_weights", i32 1, i32 2}
!47 = !{!"branch_weights", i32 2, i32 1}
!48 = !{!"ListUtil.c:XS_List__Util_min"}
!49 = !{!41, !41, i64 0}
!50 = !{!51, !41, i64 12}
!51 = !{!"sv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!52 = !{!51, !38, i64 0}
!53 = !{!54, !38, i64 0}
!54 = !{!"xpvmg", !38, i64 0, !39, i64 8, !55, i64 16, !39, i64 24, !39, i64 32, !39, i64 40}
!55 = !{!"long", !39, i64 0}
!56 = !{!57, !41, i64 12}
!57 = !{!"hv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!58 = !{!59, !55, i64 16}
!59 = !{!"xpv", !38, i64 0, !39, i64 8, !55, i64 16, !39, i64 24}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"ListUtil.c:XS_List__Util_sum"}
!63 = !{!64, !39, i64 35}
!64 = !{!"op", !38, i64 0, !38, i64 8, !38, i64 16, !55, i64 24, !41, i64 32, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !39, i64 34, !39, i64 35}
!65 = !{!64, !55, i64 24}
!66 = !{i32 0, i32 3}
!67 = distinct !{!67, !61}
!68 = !{!"ListUtil.c:XS_List__Util_minstr"}
!69 = distinct !{!69, !61}
!70 = !{!"ListUtil.c:XS_List__Util_reduce"}
!71 = !{!72, !38, i64 0}
!72 = !{!"gp", !38, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !41, i64 28, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !41, i64 64, !41, i64 67, !38, i64 72}
!73 = !{!74, !41, i64 92}
!74 = !{!"xpvcv", !38, i64 0, !39, i64 8, !55, i64 16, !39, i64 24, !38, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !38, i64 64, !39, i64 72, !38, i64 80, !41, i64 88, !41, i64 92, !41, i64 96}
!75 = !{!76, !77, i64 212}
!76 = !{!"jmpenv", !39, i64 0, !38, i64 200, !41, i64 208, !77, i64 212}
!77 = !{!"_Bool", !39, i64 0}
!78 = !{i8 0, i8 2}
!79 = !{}
!80 = !{!55, !55, i64 0}
!81 = !{!82, !38, i64 24}
!82 = !{!"stackinfo", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!83 = !{!82, !38, i64 16}
!84 = !{!82, !41, i64 40}
!85 = !{!82, !41, i64 32}
!86 = !{!82, !38, i64 0}
!87 = !{!88, !38, i64 0}
!88 = !{!"av", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!89 = !{!90, !55, i64 16}
!90 = !{!"xpvav", !38, i64 0, !39, i64 8, !55, i64 16, !55, i64 24, !38, i64 32}
!91 = !{!90, !55, i64 24}
!92 = !{!82, !41, i64 36}
!93 = !{!82, !38, i64 8}
!94 = !{!64, !39, i64 34}
!95 = !{!51, !41, i64 8}
!96 = !{!97, !38, i64 8}
!97 = !{!"padlist", !55, i64 0, !38, i64 8, !41, i64 16, !41, i64 20}
!98 = distinct !{!98, !61}
!99 = distinct !{!99, !61}
!100 = !{!"ListUtil.c:XS_List__Util_first"}
!101 = distinct !{!101, !61}
!102 = distinct !{!102, !61}
!103 = !{!"ListUtil.c:XS_List__Util_any"}
!104 = distinct !{!104, !61}
!105 = distinct !{!105, !61}
!106 = !{!"ListUtil.c:XS_List__Util_pairfirst"}
!107 = distinct !{!107, !61}
!108 = distinct !{!108, !61}
!109 = !{!"ListUtil.c:XS_List__Util_pairgrep"}
!110 = distinct !{!110, !61}
!111 = distinct !{!111, !61}
!112 = distinct !{!112, !61}
!113 = !{!"ListUtil.c:XS_List__Util_pairmap"}
!114 = distinct !{!114, !61}
!115 = distinct !{!115, !61}
!116 = distinct !{!116, !61}
!117 = distinct !{!117, !61}
!118 = distinct !{!118, !61}
!119 = !{!"ListUtil.c:XS_List__Util_pairs"}
!120 = distinct !{!120, !61}
!121 = !{!"ListUtil.c:XS_List__Util_pairkeys"}
!122 = distinct !{!122, !61}
!123 = !{!"ListUtil.c:XS_List__Util_pairvalues"}
!124 = distinct !{!124, !61}
!125 = !{!"ListUtil.c:XS_List__Util_shuffle"}
!126 = !{!77, !77, i64 0}
!127 = distinct !{!127, !61}
!128 = !{!"ListUtil.c:XS_Scalar__Util_dualvar"}
!129 = !{!"ListUtil.c:XS_Scalar__Util_isdual"}
!130 = !{!"ListUtil.c:XS_Scalar__Util_blessed"}
!131 = !{!"ListUtil.c:XS_Scalar__Util_reftype"}
!132 = !{!"ListUtil.c:XS_Scalar__Util_refaddr"}
!133 = !{!"ListUtil.c:XS_Scalar__Util_weaken"}
!134 = !{!"ListUtil.c:XS_Scalar__Util_unweaken"}
!135 = !{!"ListUtil.c:XS_Scalar__Util_isweak"}
!136 = !{!"ListUtil.c:XS_Scalar__Util_readonly"}
!137 = !{!"ListUtil.c:XS_Scalar__Util_tainted"}
!138 = !{!"ListUtil.c:XS_Scalar__Util_isvstring"}
!139 = !{!"ListUtil.c:XS_Scalar__Util_looks_like_number"}
!140 = !{!"ListUtil.c:XS_Scalar__Util_openhandle"}
!141 = !{!72, !38, i64 8}
!142 = !{!"ListUtil.c:XS_Sub__Util_set_prototype"}
!143 = !{!"ListUtil.c:XS_Sub__Util_set_subname"}
!144 = !{!145, !38, i64 40}
!145 = !{!"cop", !38, i64 0, !38, i64 8, !38, i64 16, !55, i64 24, !41, i64 32, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !39, i64 34, !39, i64 35, !41, i64 36, !38, i64 40, !38, i64 48, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 72}
!146 = !{!72, !41, i64 24}
!147 = !{!37, !41, i64 12}
!148 = distinct !{!148, !61}
!149 = !{!72, !38, i64 32}
!150 = !{!57, !38, i64 0}
!151 = !{!152, !55, i64 24}
!152 = !{!"xpvhv", !38, i64 0, !39, i64 8, !55, i64 16, !55, i64 24}
!153 = !{!154, !41, i64 28}
!154 = !{!"xpvhv_aux", !39, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !41, i64 28, !38, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52}
!155 = !{!45, !38, i64 0}
!156 = !{!157, !38, i64 8}
!157 = !{!"magic", !38, i64 0, !38, i64 8, !158, i64 16, !39, i64 18, !39, i64 19, !55, i64 24, !38, i64 32, !38, i64 40}
!158 = !{!"short", !39, i64 0}
!159 = distinct !{!159, !61}
!160 = !{!157, !38, i64 0}
!161 = !{!157, !39, i64 18}
!162 = !{!157, !39, i64 19}
!163 = !{!157, !38, i64 32}
!164 = !{!"ListUtil.c:XS_Sub__Util_subname"}
!165 = !{!"ListUtil.c:accum_type"}
!166 = !{!"ListUtil.c:S_CvDEPTHp"}
!167 = !{!"ListUtil.c:S_SvREFCNT_dec"}
!168 = !{!"ListUtil.c:S_SvREFCNT_inc_NN"}
!169 = !{!"ListUtil.c:S_CvGV"}
!170 = !{!"ListUtil.c:S_SvREFCNT_inc"}
