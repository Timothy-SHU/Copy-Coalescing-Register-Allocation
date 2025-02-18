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

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_List__Util(ptr noundef %0) local_unnamed_addr #0 !prof !45 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_List__Util_min, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #8
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 5
  store i32 1, ptr %5, align 8, !tbaa !52
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_List__Util_min, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #8
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.xpvcv, ptr %7, i64 0, i32 5
  store i32 0, ptr %8, align 8, !tbaa !52
  %9 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_List__Util_sum, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #8
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 5
  store i32 2, ptr %11, align 8, !tbaa !52
  %12 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_List__Util_sum, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #8
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 5
  store i32 0, ptr %14, align 8, !tbaa !52
  %15 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_List__Util_sum, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #8
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.xpvcv, ptr %16, i64 0, i32 5
  store i32 1, ptr %17, align 8, !tbaa !52
  %18 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_List__Util_minstr, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #8
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.xpvcv, ptr %19, i64 0, i32 5
  store i32 -1, ptr %20, align 8, !tbaa !52
  %21 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_List__Util_minstr, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #8
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.xpvcv, ptr %22, i64 0, i32 5
  store i32 1, ptr %23, align 8, !tbaa !52
  %24 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_List__Util_reduce, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %25 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_List__Util_first, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %26 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_List__Util_any, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.xpvcv, ptr %27, i64 0, i32 5
  store i32 1, ptr %28, align 8, !tbaa !52
  %29 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_List__Util_any, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.xpvcv, ptr %30, i64 0, i32 5
  store i32 2, ptr %31, align 8, !tbaa !52
  %32 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_List__Util_any, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.xpvcv, ptr %33, i64 0, i32 5
  store i32 0, ptr %34, align 8, !tbaa !52
  %35 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.16, ptr noundef nonnull @XS_List__Util_any, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.xpvcv, ptr %36, i64 0, i32 5
  store i32 3, ptr %37, align 8, !tbaa !52
  %38 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.17, ptr noundef nonnull @XS_List__Util_pairfirst, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %39 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.18, ptr noundef nonnull @XS_List__Util_pairgrep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %40 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.19, ptr noundef nonnull @XS_List__Util_pairmap, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %41 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.20, ptr noundef nonnull @XS_List__Util_pairs, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #8
  %42 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.21, ptr noundef nonnull @XS_List__Util_pairkeys, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #8
  %43 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.22, ptr noundef nonnull @XS_List__Util_pairvalues, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #8
  %44 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.23, ptr noundef nonnull @XS_List__Util_shuffle, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #8
  %45 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.24, ptr noundef nonnull @XS_Scalar__Util_dualvar, ptr noundef nonnull @.str, ptr noundef nonnull @.str.25, i32 noundef 0) #8
  %46 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.26, ptr noundef nonnull @XS_Scalar__Util_isdual, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #8
  %47 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.28, ptr noundef nonnull @XS_Scalar__Util_blessed, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #8
  %48 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.29, ptr noundef nonnull @XS_Scalar__Util_reftype, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #8
  %49 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.30, ptr noundef nonnull @XS_Scalar__Util_refaddr, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #8
  %50 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.31, ptr noundef nonnull @XS_Scalar__Util_weaken, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #8
  %51 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.32, ptr noundef nonnull @XS_Scalar__Util_unweaken, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #8
  %52 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.33, ptr noundef nonnull @XS_Scalar__Util_isweak, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #8
  %53 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.34, ptr noundef nonnull @XS_Scalar__Util_readonly, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #8
  %54 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.35, ptr noundef nonnull @XS_Scalar__Util_tainted, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #8
  %55 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.36, ptr noundef nonnull @XS_Scalar__Util_isvstring, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #8
  %56 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.37, ptr noundef nonnull @XS_Scalar__Util_looks_like_number, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #8
  %57 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.38, ptr noundef nonnull @XS_Scalar__Util_openhandle, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef 0) #8
  %58 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.39, ptr noundef nonnull @XS_Sub__Util_set_prototype) #8
  %59 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.40, ptr noundef nonnull @XS_Sub__Util_set_subname) #8
  %60 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.41, ptr noundef nonnull @XS_Sub__Util_subname) #8
  %61 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str.42, i32 noundef 10, i32 noundef 1) #8
  %62 = tail call ptr @Perl_hv_common_key_len(ptr noundef %61, ptr noundef nonnull @.str.43, i32 noundef 14, i32 noundef 48, ptr noundef null, i32 noundef 0) #8
  %63 = load ptr, ptr %62, align 8, !tbaa !53
  %64 = getelementptr inbounds %struct.gv, ptr %63, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !54
  %66 = and i32 %65, 255
  %67 = icmp eq i32 %66, 9
  br i1 %67, label %69, label %68, !prof !56

68:                                               ; preds = %1
  tail call void @Perl_gv_init_pvn(ptr noundef %63, ptr noundef %61, ptr noundef nonnull @.str.42, i64 noundef 10, i32 noundef 2) #8
  br label %69

69:                                               ; preds = %68, %1
  %70 = getelementptr inbounds %struct.gv, ptr %63, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !52
  %72 = load ptr, ptr %71, align 8, !tbaa !57
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %78, !prof !59

74:                                               ; preds = %69
  %75 = tail call ptr @Perl_gv_add_by_type(ptr noundef %63, i32 noundef 0) #8
  %76 = getelementptr inbounds %struct.gv, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !52
  br label %78

78:                                               ; preds = %69, %74
  %79 = phi ptr [ %77, %74 ], [ %71, %69 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !53
  tail call void @Perl_sv_setsv_flags(ptr noundef %80, ptr noundef nonnull @PL_sv_yes, i32 noundef 2) #8
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_List__Util_min(ptr nocapture noundef readonly %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !52
  %18 = icmp eq i32 %14, 0
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %6, i64 %19
  br i1 %18, label %21, label %22

21:                                               ; preds = %1
  store ptr @PL_sv_undef, ptr %20, align 8, !tbaa !53
  br label %283

22:                                               ; preds = %1
  %23 = load ptr, ptr %20, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !62
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !52
  %31 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !62
  %33 = and i32 %32, 1048576
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr %30, align 8, !tbaa !64
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = getelementptr inbounds %struct.hv, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !68
  %40 = and i32 %39, 268435456
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %35, %28, %22
  %43 = phi i1 [ false, %28 ], [ false, %22 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  br i1 %43, label %69, label %45

45:                                               ; preds = %42
  %46 = and i32 %25, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = and i32 %25, -2147483392
  %50 = icmp eq i32 %49, -2147483392
  %51 = load ptr, ptr %23, align 8, !tbaa !64
  br i1 %50, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.xpvuv, ptr %51, i64 0, i32 4
  %54 = load i64, ptr %53, align 8, !tbaa !52
  %55 = uitofp i64 %54 to double
  br label %69

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.xpviv, ptr %51, i64 0, i32 4
  %58 = load i64, ptr %57, align 8, !tbaa !52
  %59 = sitofp i64 %58 to double
  br label %69

60:                                               ; preds = %45
  %61 = and i32 %25, 2097664
  %62 = icmp eq i32 %61, 512
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load ptr, ptr %23, align 8, !tbaa !64
  %65 = getelementptr inbounds %struct.xpvnv, ptr %64, i64 0, i32 5
  %66 = load double, ptr %65, align 8, !tbaa !52
  br label %69

67:                                               ; preds = %60
  %68 = tail call double @Perl_sv_2nv_flags(ptr noundef %23, i32 noundef 2) #8
  br label %69

69:                                               ; preds = %56, %52, %67, %63, %42
  %70 = phi double [ undef, %42 ], [ %55, %52 ], [ %59, %56 ], [ %66, %63 ], [ %68, %67 ]
  %71 = icmp sgt i32 %14, 1
  br i1 %71, label %72, label %279

72:                                               ; preds = %69
  %73 = icmp eq i32 %17, 0
  %74 = icmp eq i32 %17, 0
  %75 = icmp eq i32 %17, 0
  %76 = icmp eq i32 %17, 0
  %77 = sext i32 %7 to i64
  %78 = and i64 %13, 4294967295
  br label %79

79:                                               ; preds = %72, %273
  %80 = phi i64 [ 1, %72 ], [ %277, %273 ]
  %81 = phi double [ %70, %72 ], [ %276, %273 ]
  %82 = phi ptr [ %23, %72 ], [ %275, %273 ]
  %83 = phi i32 [ %44, %72 ], [ %274, %273 ]
  %84 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %85 = getelementptr ptr, ptr %84, i64 %80
  %86 = getelementptr ptr, ptr %85, i64 %77
  %87 = load ptr, ptr %86, align 8, !tbaa !53
  %88 = icmp eq i32 %83, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.sv, ptr %87, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !62
  %92 = and i32 %91, 2048
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %213, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.sv, ptr %87, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !52
  %97 = getelementptr inbounds %struct.sv, ptr %96, i64 0, i32 2
  %98 = load i32, ptr %97, align 4, !tbaa !62
  %99 = and i32 %98, 1048576
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %213, label %101

101:                                              ; preds = %94
  %102 = load ptr, ptr %96, align 8, !tbaa !64
  %103 = load ptr, ptr %102, align 8, !tbaa !65
  %104 = getelementptr inbounds %struct.hv, ptr %103, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !68
  %106 = and i32 %105, 268435456
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %213, label %108

108:                                              ; preds = %101, %79
  %109 = tail call ptr @Perl_amagic_call(ptr noundef %82, ptr noundef %87, i32 noundef 19, i32 noundef 0) #8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %213, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.sv, ptr %109, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !62
  %114 = and i32 %113, 2097152
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %109, i32 noundef 2) #8
  br i1 %117, label %165, label %166

118:                                              ; preds = %111
  %119 = and i32 %113, 65280
  %120 = icmp ne i32 %119, 0
  %121 = and i32 %113, 255
  %122 = icmp eq i32 %121, 8
  %123 = or i1 %120, %122
  %124 = and i32 %113, 16777471
  %125 = icmp eq i32 %124, 16777226
  %126 = or i1 %125, %123
  br i1 %126, label %127, label %166

127:                                              ; preds = %118
  %128 = and i32 %113, 1024
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %144, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr %109, align 8, !tbaa !64
  %132 = icmp eq ptr %131, null
  br i1 %132, label %166, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.xpv, ptr %131, i64 0, i32 2
  %135 = load i64, ptr %134, align 8, !tbaa !70
  %136 = icmp ugt i64 %135, 1
  br i1 %136, label %165, label %137

137:                                              ; preds = %133
  %138 = icmp eq i64 %135, 0
  br i1 %138, label %166, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.sv, ptr %109, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !52
  %142 = load i8, ptr %141, align 1, !tbaa !52
  %143 = icmp eq i8 %142, 48
  br i1 %143, label %166, label %165

144:                                              ; preds = %127
  %145 = and i32 %113, 768
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %144
  %148 = and i32 %113, 256
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr %109, align 8, !tbaa !64
  %152 = getelementptr inbounds %struct.xpviv, ptr %151, i64 0, i32 4
  %153 = load i64, ptr %152, align 8, !tbaa !52
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %150, %147
  %156 = and i32 %113, 512
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %155
  %159 = load ptr, ptr %109, align 8, !tbaa !64
  %160 = getelementptr inbounds %struct.xpvnv, ptr %159, i64 0, i32 5
  %161 = load double, ptr %160, align 8, !tbaa !52
  %162 = fcmp une double %161, 0.000000e+00
  br i1 %162, label %165, label %166

163:                                              ; preds = %144
  %164 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %109, i32 noundef 0) #8
  br i1 %164, label %165, label %166

165:                                              ; preds = %139, %163, %158, %150, %133, %116
  br i1 %74, label %167, label %273

166:                                              ; preds = %163, %158, %118, %155, %139, %137, %130, %116
  br i1 %73, label %273, label %167

167:                                              ; preds = %165, %166
  %168 = getelementptr inbounds %struct.sv, ptr %87, i64 0, i32 2
  %169 = load i32, ptr %168, align 4, !tbaa !62
  %170 = and i32 %169, 2048
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %186, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.sv, ptr %87, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !52
  %175 = getelementptr inbounds %struct.sv, ptr %174, i64 0, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !62
  %177 = and i32 %176, 1048576
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %186, label %179

179:                                              ; preds = %172
  %180 = load ptr, ptr %174, align 8, !tbaa !64
  %181 = load ptr, ptr %180, align 8, !tbaa !65
  %182 = getelementptr inbounds %struct.hv, ptr %181, i64 0, i32 2
  %183 = load i32, ptr %182, align 4, !tbaa !68
  %184 = and i32 %183, 268435456
  %185 = icmp ne i32 %184, 0
  br label %186

186:                                              ; preds = %179, %172, %167
  %187 = phi i1 [ false, %172 ], [ false, %167 ], [ %185, %179 ]
  %188 = zext i1 %187 to i32
  br i1 %187, label %273, label %189

189:                                              ; preds = %186
  %190 = and i32 %169, 256
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %204, label %192

192:                                              ; preds = %189
  %193 = and i32 %169, -2147483392
  %194 = icmp eq i32 %193, -2147483392
  %195 = load ptr, ptr %87, align 8, !tbaa !64
  br i1 %194, label %196, label %200

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.xpvuv, ptr %195, i64 0, i32 4
  %198 = load i64, ptr %197, align 8, !tbaa !52
  %199 = uitofp i64 %198 to double
  br label %273

200:                                              ; preds = %192
  %201 = getelementptr inbounds %struct.xpviv, ptr %195, i64 0, i32 4
  %202 = load i64, ptr %201, align 8, !tbaa !52
  %203 = sitofp i64 %202 to double
  br label %273

204:                                              ; preds = %189
  %205 = and i32 %169, 2097664
  %206 = icmp eq i32 %205, 512
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = load ptr, ptr %87, align 8, !tbaa !64
  %209 = getelementptr inbounds %struct.xpvnv, ptr %208, i64 0, i32 5
  %210 = load double, ptr %209, align 8, !tbaa !52
  br label %273

211:                                              ; preds = %204
  %212 = tail call double @Perl_sv_2nv_flags(ptr noundef %87, i32 noundef 2) #8
  br label %273

213:                                              ; preds = %108, %101, %94, %89
  %214 = getelementptr inbounds %struct.sv, ptr %87, i64 0, i32 2
  %215 = load i32, ptr %214, align 4, !tbaa !62
  %216 = and i32 %215, 256
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %230, label %218

218:                                              ; preds = %213
  %219 = and i32 %215, -2147483392
  %220 = icmp eq i32 %219, -2147483392
  %221 = load ptr, ptr %87, align 8, !tbaa !64
  br i1 %220, label %222, label %226

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.xpvuv, ptr %221, i64 0, i32 4
  %224 = load i64, ptr %223, align 8, !tbaa !52
  %225 = uitofp i64 %224 to double
  br label %239

226:                                              ; preds = %218
  %227 = getelementptr inbounds %struct.xpviv, ptr %221, i64 0, i32 4
  %228 = load i64, ptr %227, align 8, !tbaa !52
  %229 = sitofp i64 %228 to double
  br label %239

230:                                              ; preds = %213
  %231 = and i32 %215, 2097664
  %232 = icmp eq i32 %231, 512
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load ptr, ptr %87, align 8, !tbaa !64
  %235 = getelementptr inbounds %struct.xpvnv, ptr %234, i64 0, i32 5
  %236 = load double, ptr %235, align 8, !tbaa !52
  br label %239

237:                                              ; preds = %230
  %238 = tail call double @Perl_sv_2nv_flags(ptr noundef %87, i32 noundef 2) #8
  br label %239

239:                                              ; preds = %233, %237, %222, %226
  %240 = phi double [ %225, %222 ], [ %229, %226 ], [ %236, %233 ], [ %238, %237 ]
  br i1 %88, label %267, label %241

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct.sv, ptr %82, i64 0, i32 2
  %243 = load i32, ptr %242, align 4, !tbaa !62
  %244 = and i32 %243, 256
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %258, label %246

246:                                              ; preds = %241
  %247 = and i32 %243, -2147483392
  %248 = icmp eq i32 %247, -2147483392
  %249 = load ptr, ptr %82, align 8, !tbaa !64
  br i1 %248, label %250, label %254

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.xpvuv, ptr %249, i64 0, i32 4
  %252 = load i64, ptr %251, align 8, !tbaa !52
  %253 = uitofp i64 %252 to double
  br label %267

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct.xpviv, ptr %249, i64 0, i32 4
  %256 = load i64, ptr %255, align 8, !tbaa !52
  %257 = sitofp i64 %256 to double
  br label %267

258:                                              ; preds = %241
  %259 = and i32 %243, 2097664
  %260 = icmp eq i32 %259, 512
  br i1 %260, label %261, label %265

261:                                              ; preds = %258
  %262 = load ptr, ptr %82, align 8, !tbaa !64
  %263 = getelementptr inbounds %struct.xpvnv, ptr %262, i64 0, i32 5
  %264 = load double, ptr %263, align 8, !tbaa !52
  br label %267

265:                                              ; preds = %258
  %266 = tail call double @Perl_sv_2nv_flags(ptr noundef %82, i32 noundef 2) #8
  br label %267

267:                                              ; preds = %254, %250, %265, %261, %239
  %268 = phi double [ %81, %239 ], [ %253, %250 ], [ %257, %254 ], [ %264, %261 ], [ %266, %265 ]
  %269 = fcmp olt double %240, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  br i1 %76, label %272, label %273

271:                                              ; preds = %267
  br i1 %75, label %273, label %272

272:                                              ; preds = %271, %270
  br label %273

273:                                              ; preds = %271, %166, %165, %270, %272, %200, %196, %211, %207, %186
  %274 = phi i32 [ %188, %186 ], [ %188, %207 ], [ %188, %211 ], [ %188, %196 ], [ %188, %200 ], [ 0, %272 ], [ 0, %270 ], [ %83, %165 ], [ %83, %166 ], [ 0, %271 ]
  %275 = phi ptr [ %87, %186 ], [ %87, %207 ], [ %87, %211 ], [ %87, %196 ], [ %87, %200 ], [ %87, %272 ], [ %82, %270 ], [ %82, %165 ], [ %82, %166 ], [ %82, %271 ]
  %276 = phi double [ %81, %186 ], [ %210, %207 ], [ %212, %211 ], [ %199, %196 ], [ %203, %200 ], [ %240, %272 ], [ %268, %270 ], [ %81, %165 ], [ %81, %166 ], [ %268, %271 ]
  %277 = add nuw nsw i64 %80, 1
  %278 = icmp eq i64 %277, %78
  br i1 %278, label %279, label %79, !llvm.loop !72

279:                                              ; preds = %273, %69
  %280 = phi ptr [ %23, %69 ], [ %275, %273 ]
  %281 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %282 = getelementptr inbounds ptr, ptr %281, i64 %19
  store ptr %280, ptr %282, align 8, !tbaa !53
  br label %283

283:                                              ; preds = %279, %21
  %284 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %285 = getelementptr inbounds ptr, ptr %284, i64 %19
  store ptr %285, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_List__Util_sum(ptr nocapture noundef readonly %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !52
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %20 = load i8, ptr %19, align 1, !tbaa !75
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load ptr, ptr @PL_curpad, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !77
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  br label %31

29:                                               ; preds = %1
  %30 = tail call ptr @Perl_sv_newmortal() #8
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
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %38 = sext i32 %7 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  store ptr @PL_sv_undef, ptr %39, align 8, !tbaa !53
  br label %434

40:                                               ; preds = %35
  %41 = tail call ptr @Perl_newSViv(i64 noundef 0) #8
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %43 = sext i32 %7 to i64
  %44 = getelementptr inbounds ptr, ptr %42, i64 %43
  store ptr %41, ptr %44, align 8, !tbaa !53
  br label %434

45:                                               ; preds = %35
  %46 = tail call ptr @Perl_newSViv(i64 noundef 1) #8
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %48 = sext i32 %7 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  store ptr %46, ptr %49, align 8, !tbaa !53
  br label %434

50:                                               ; preds = %35, %31
  %51 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %52 = sext i32 %7 to i64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !53
  %55 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !62
  %57 = and i32 %56, 2048
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !52
  %62 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !62
  %64 = and i32 %63, 1048576
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load ptr, ptr %61, align 8, !tbaa !64
  %68 = load ptr, ptr %67, align 8, !tbaa !65
  %69 = getelementptr inbounds %struct.hv, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !68
  %71 = and i32 %70, 268435456
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66, %59, %50
  %74 = and i32 %56, 768
  %75 = icmp ne i32 %74, 256
  %76 = and i32 %56, -2147483392
  %77 = icmp eq i32 %76, -2147483392
  %78 = or i1 %75, %77
  %79 = zext i1 %78 to i32
  br label %80

80:                                               ; preds = %66, %73
  %81 = phi i32 [ 2, %66 ], [ %79, %73 ]
  switch i32 %81, label %116 [
    i32 2, label %82
    i32 0, label %83
    i32 1, label %92
  ]

82:                                               ; preds = %80
  tail call void @Perl_sv_setsv_flags(ptr noundef %32, ptr noundef %54, i32 noundef 2) #8
  br label %117

83:                                               ; preds = %80
  %84 = and i32 %56, 2097408
  %85 = icmp eq i32 %84, 256
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load ptr, ptr %54, align 8, !tbaa !64
  %88 = getelementptr inbounds %struct.xpviv, ptr %87, i64 0, i32 4
  %89 = load i64, ptr %88, align 8, !tbaa !52
  br label %117

90:                                               ; preds = %83
  %91 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %54, i32 noundef 2) #8
  br label %117

92:                                               ; preds = %80
  %93 = and i32 %56, 256
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %92
  %96 = and i32 %56, -2147483392
  %97 = icmp eq i32 %96, -2147483392
  %98 = load ptr, ptr %54, align 8, !tbaa !64
  br i1 %97, label %99, label %103

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.xpvuv, ptr %98, i64 0, i32 4
  %101 = load i64, ptr %100, align 8, !tbaa !52
  %102 = uitofp i64 %101 to double
  br label %117

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.xpviv, ptr %98, i64 0, i32 4
  %105 = load i64, ptr %104, align 8, !tbaa !52
  %106 = sitofp i64 %105 to double
  br label %117

107:                                              ; preds = %92
  %108 = and i32 %56, 2097664
  %109 = icmp eq i32 %108, 512
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load ptr, ptr %54, align 8, !tbaa !64
  %112 = getelementptr inbounds %struct.xpvnv, ptr %111, i64 0, i32 5
  %113 = load double, ptr %112, align 8, !tbaa !52
  br label %117

114:                                              ; preds = %107
  %115 = tail call double @Perl_sv_2nv_flags(ptr noundef %54, i32 noundef 2) #8
  br label %117

116:                                              ; preds = %215, %162, %80
  unreachable

117:                                              ; preds = %103, %99, %114, %110, %86, %90, %82
  %118 = phi ptr [ %32, %82 ], [ null, %90 ], [ null, %86 ], [ null, %110 ], [ null, %114 ], [ null, %99 ], [ null, %103 ]
  %119 = phi double [ 0.000000e+00, %82 ], [ 0.000000e+00, %90 ], [ 0.000000e+00, %86 ], [ %113, %110 ], [ %115, %114 ], [ %102, %99 ], [ %106, %103 ]
  %120 = phi i64 [ 0, %82 ], [ %91, %90 ], [ %89, %86 ], [ 0, %110 ], [ 0, %114 ], [ 0, %99 ], [ 0, %103 ]
  %121 = icmp sgt i32 %14, 1
  br i1 %121, label %122, label %422

122:                                              ; preds = %117
  %123 = select i1 %33, i32 34, i32 30
  %124 = sext i32 %7 to i64
  %125 = and i64 %13, 4294967295
  br label %126

126:                                              ; preds = %122, %415
  %127 = phi i64 [ 1, %122 ], [ %420, %415 ]
  %128 = phi i64 [ %120, %122 ], [ %419, %415 ]
  %129 = phi double [ %119, %122 ], [ %418, %415 ]
  %130 = phi ptr [ %118, %122 ], [ %417, %415 ]
  %131 = phi i32 [ %81, %122 ], [ %416, %415 ]
  %132 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %133 = getelementptr ptr, ptr %132, i64 %127
  %134 = getelementptr ptr, ptr %133, i64 %124
  %135 = load ptr, ptr %134, align 8, !tbaa !53
  %136 = icmp ult i32 %131, 2
  br i1 %136, label %137, label %162

137:                                              ; preds = %126
  %138 = getelementptr inbounds %struct.sv, ptr %135, i64 0, i32 2
  %139 = load i32, ptr %138, align 4, !tbaa !62
  %140 = and i32 %139, 2048
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %162, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.sv, ptr %135, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !52
  %145 = getelementptr inbounds %struct.sv, ptr %144, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !62
  %147 = and i32 %146, 1048576
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %162, label %149

149:                                              ; preds = %142
  %150 = load ptr, ptr %144, align 8, !tbaa !64
  %151 = load ptr, ptr %150, align 8, !tbaa !65
  %152 = getelementptr inbounds %struct.hv, ptr %151, i64 0, i32 2
  %153 = load i32, ptr %152, align 4, !tbaa !68
  %154 = and i32 %153, 268435456
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %149
  %157 = icmp eq ptr %130, null
  %158 = select i1 %157, ptr %32, ptr %130
  %159 = icmp eq i32 %131, 1
  %160 = sitofp i64 %128 to double
  %161 = select i1 %159, double %129, double %160
  tail call void @Perl_sv_setnv(ptr noundef %158, double noundef %161) #8
  br label %162

162:                                              ; preds = %156, %149, %142, %137, %126
  %163 = phi i32 [ 2, %156 ], [ %131, %149 ], [ %131, %142 ], [ %131, %137 ], [ 2, %126 ]
  %164 = phi ptr [ %158, %156 ], [ %130, %149 ], [ %130, %142 ], [ %130, %137 ], [ %130, %126 ]
  switch i32 %163, label %116 [
    i32 2, label %165
    i32 0, label %298
    i32 1, label %359
  ]

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.sv, ptr %164, i64 0, i32 2
  %167 = load i32, ptr %166, align 4, !tbaa !62
  %168 = and i32 %167, 2048
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %184, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.sv, ptr %164, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !52
  %173 = getelementptr inbounds %struct.sv, ptr %172, i64 0, i32 2
  %174 = load i32, ptr %173, align 4, !tbaa !62
  %175 = and i32 %174, 1048576
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %170
  %178 = load ptr, ptr %172, align 8, !tbaa !64
  %179 = load ptr, ptr %178, align 8, !tbaa !65
  %180 = getelementptr inbounds %struct.hv, ptr %179, i64 0, i32 2
  %181 = load i32, ptr %180, align 4, !tbaa !68
  %182 = and i32 %181, 268435456
  %183 = icmp ne i32 %182, 0
  br label %184

184:                                              ; preds = %177, %170, %165
  %185 = phi i1 [ false, %170 ], [ false, %165 ], [ %183, %177 ]
  %186 = select i1 %185, i32 4, i32 0
  %187 = tail call ptr @Perl_amagic_call(ptr noundef %164, ptr noundef %135, i32 noundef %123, i32 noundef %186) #8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %250, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.sv, ptr %187, i64 0, i32 2
  %191 = load i32, ptr %190, align 4, !tbaa !62
  %192 = and i32 %191, 2048
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %208, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.sv, ptr %187, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !52
  %197 = getelementptr inbounds %struct.sv, ptr %196, i64 0, i32 2
  %198 = load i32, ptr %197, align 4, !tbaa !62
  %199 = and i32 %198, 1048576
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %194
  %202 = load ptr, ptr %196, align 8, !tbaa !64
  %203 = load ptr, ptr %202, align 8, !tbaa !65
  %204 = getelementptr inbounds %struct.hv, ptr %203, i64 0, i32 2
  %205 = load i32, ptr %204, align 4, !tbaa !68
  %206 = and i32 %205, 268435456
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %201, %194, %189
  %209 = and i32 %191, 768
  %210 = icmp ne i32 %209, 256
  %211 = and i32 %191, -2147483392
  %212 = icmp eq i32 %211, -2147483392
  %213 = or i1 %210, %212
  %214 = zext i1 %213 to i32
  br label %215

215:                                              ; preds = %201, %208
  %216 = phi i32 [ 2, %201 ], [ %214, %208 ]
  switch i32 %216, label %116 [
    i32 2, label %415
    i32 0, label %217
    i32 1, label %226
  ]

217:                                              ; preds = %215
  %218 = and i32 %191, 2097408
  %219 = icmp eq i32 %218, 256
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load ptr, ptr %187, align 8, !tbaa !64
  %222 = getelementptr inbounds %struct.xpviv, ptr %221, i64 0, i32 4
  %223 = load i64, ptr %222, align 8, !tbaa !52
  br label %415

224:                                              ; preds = %217
  %225 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %187, i32 noundef 2) #8
  br label %415

226:                                              ; preds = %215
  %227 = and i32 %191, 256
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %241, label %229

229:                                              ; preds = %226
  %230 = and i32 %191, -2147483392
  %231 = icmp eq i32 %230, -2147483392
  %232 = load ptr, ptr %187, align 8, !tbaa !64
  br i1 %231, label %233, label %237

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.xpvuv, ptr %232, i64 0, i32 4
  %235 = load i64, ptr %234, align 8, !tbaa !52
  %236 = uitofp i64 %235 to double
  br label %415

237:                                              ; preds = %229
  %238 = getelementptr inbounds %struct.xpviv, ptr %232, i64 0, i32 4
  %239 = load i64, ptr %238, align 8, !tbaa !52
  %240 = sitofp i64 %239 to double
  br label %415

241:                                              ; preds = %226
  %242 = and i32 %191, 2097664
  %243 = icmp eq i32 %242, 512
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = load ptr, ptr %187, align 8, !tbaa !64
  %246 = getelementptr inbounds %struct.xpvnv, ptr %245, i64 0, i32 5
  %247 = load double, ptr %246, align 8, !tbaa !52
  br label %415

248:                                              ; preds = %241
  %249 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %187, i32 noundef 2) #8
  br label %415

250:                                              ; preds = %184
  %251 = load i32, ptr %166, align 4, !tbaa !62
  %252 = and i32 %251, 2097664
  %253 = icmp eq i32 %252, 512
  br i1 %33, label %254, label %276

254:                                              ; preds = %250
  br i1 %253, label %255, label %259

255:                                              ; preds = %254
  %256 = load ptr, ptr %164, align 8, !tbaa !64
  %257 = getelementptr inbounds %struct.xpvnv, ptr %256, i64 0, i32 5
  %258 = load double, ptr %257, align 8, !tbaa !52
  br label %261

259:                                              ; preds = %254
  %260 = tail call double @Perl_sv_2nv_flags(ptr noundef %164, i32 noundef 2) #8
  br label %261

261:                                              ; preds = %259, %255
  %262 = phi double [ %258, %255 ], [ %260, %259 ]
  %263 = getelementptr inbounds %struct.sv, ptr %135, i64 0, i32 2
  %264 = load i32, ptr %263, align 4, !tbaa !62
  %265 = and i32 %264, 2097664
  %266 = icmp eq i32 %265, 512
  br i1 %266, label %267, label %271

267:                                              ; preds = %261
  %268 = load ptr, ptr %135, align 8, !tbaa !64
  %269 = getelementptr inbounds %struct.xpvnv, ptr %268, i64 0, i32 5
  %270 = load double, ptr %269, align 8, !tbaa !52
  br label %273

271:                                              ; preds = %261
  %272 = tail call double @Perl_sv_2nv_flags(ptr noundef %135, i32 noundef 2) #8
  br label %273

273:                                              ; preds = %271, %267
  %274 = phi double [ %270, %267 ], [ %272, %271 ]
  %275 = fmul double %262, %274
  br label %415

276:                                              ; preds = %250
  br i1 %253, label %277, label %281

277:                                              ; preds = %276
  %278 = load ptr, ptr %164, align 8, !tbaa !64
  %279 = getelementptr inbounds %struct.xpvnv, ptr %278, i64 0, i32 5
  %280 = load double, ptr %279, align 8, !tbaa !52
  br label %283

281:                                              ; preds = %276
  %282 = tail call double @Perl_sv_2nv_flags(ptr noundef %164, i32 noundef 2) #8
  br label %283

283:                                              ; preds = %281, %277
  %284 = phi double [ %280, %277 ], [ %282, %281 ]
  %285 = getelementptr inbounds %struct.sv, ptr %135, i64 0, i32 2
  %286 = load i32, ptr %285, align 4, !tbaa !62
  %287 = and i32 %286, 2097664
  %288 = icmp eq i32 %287, 512
  br i1 %288, label %289, label %293

289:                                              ; preds = %283
  %290 = load ptr, ptr %135, align 8, !tbaa !64
  %291 = getelementptr inbounds %struct.xpvnv, ptr %290, i64 0, i32 5
  %292 = load double, ptr %291, align 8, !tbaa !52
  br label %295

293:                                              ; preds = %283
  %294 = tail call double @Perl_sv_2nv_flags(ptr noundef %135, i32 noundef 2) #8
  br label %295

295:                                              ; preds = %293, %289
  %296 = phi double [ %292, %289 ], [ %294, %293 ]
  %297 = fadd double %284, %296
  br label %415

298:                                              ; preds = %162
  %299 = getelementptr inbounds %struct.sv, ptr %135, i64 0, i32 2
  %300 = load i32, ptr %299, align 4, !tbaa !62
  %301 = and i32 %300, 768
  %302 = icmp eq i32 %301, 256
  br i1 %33, label %303, label %330

303:                                              ; preds = %298
  br i1 %302, label %304, label %357

304:                                              ; preds = %303
  %305 = and i32 %300, 2097408
  %306 = icmp eq i32 %305, 256
  br i1 %306, label %307, label %311

307:                                              ; preds = %304
  %308 = load ptr, ptr %135, align 8, !tbaa !64
  %309 = getelementptr inbounds %struct.xpviv, ptr %308, i64 0, i32 4
  %310 = load i64, ptr %309, align 8, !tbaa !52
  br label %313

311:                                              ; preds = %304
  %312 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %135, i32 noundef 2) #8
  br label %313

313:                                              ; preds = %311, %307
  %314 = phi i64 [ %310, %307 ], [ %312, %311 ]
  %315 = sdiv i64 9223372036854775807, %128
  %316 = icmp slt i64 %314, %315
  br i1 %316, label %317, label %357

317:                                              ; preds = %313
  %318 = load i32, ptr %299, align 4, !tbaa !62
  %319 = and i32 %318, 2097408
  %320 = icmp eq i32 %319, 256
  br i1 %320, label %321, label %325

321:                                              ; preds = %317
  %322 = load ptr, ptr %135, align 8, !tbaa !64
  %323 = getelementptr inbounds %struct.xpviv, ptr %322, i64 0, i32 4
  %324 = load i64, ptr %323, align 8, !tbaa !52
  br label %327

325:                                              ; preds = %317
  %326 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %135, i32 noundef 2) #8
  br label %327

327:                                              ; preds = %325, %321
  %328 = phi i64 [ %324, %321 ], [ %326, %325 ]
  %329 = mul nsw i64 %328, %128
  br label %415

330:                                              ; preds = %298
  br i1 %302, label %331, label %357

331:                                              ; preds = %330
  %332 = and i32 %300, 2097408
  %333 = icmp eq i32 %332, 256
  br i1 %333, label %334, label %338

334:                                              ; preds = %331
  %335 = load ptr, ptr %135, align 8, !tbaa !64
  %336 = getelementptr inbounds %struct.xpviv, ptr %335, i64 0, i32 4
  %337 = load i64, ptr %336, align 8, !tbaa !52
  br label %340

338:                                              ; preds = %331
  %339 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %135, i32 noundef 2) #8
  br label %340

340:                                              ; preds = %338, %334
  %341 = phi i64 [ %337, %334 ], [ %339, %338 ]
  %342 = sub nsw i64 9223372036854775807, %128
  %343 = icmp slt i64 %341, %342
  br i1 %343, label %344, label %357

344:                                              ; preds = %340
  %345 = load i32, ptr %299, align 4, !tbaa !62
  %346 = and i32 %345, 2097408
  %347 = icmp eq i32 %346, 256
  br i1 %347, label %348, label %352

348:                                              ; preds = %344
  %349 = load ptr, ptr %135, align 8, !tbaa !64
  %350 = getelementptr inbounds %struct.xpviv, ptr %349, i64 0, i32 4
  %351 = load i64, ptr %350, align 8, !tbaa !52
  br label %354

352:                                              ; preds = %344
  %353 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %135, i32 noundef 2) #8
  br label %354

354:                                              ; preds = %352, %348
  %355 = phi i64 [ %351, %348 ], [ %353, %352 ]
  %356 = add nsw i64 %355, %128
  br label %415

357:                                              ; preds = %330, %340, %303, %313
  %358 = sitofp i64 %128 to double
  br label %359

359:                                              ; preds = %162, %357
  %360 = phi double [ %129, %162 ], [ %358, %357 ]
  %361 = getelementptr inbounds %struct.sv, ptr %135, i64 0, i32 2
  %362 = load i32, ptr %361, align 4, !tbaa !62
  %363 = and i32 %362, 256
  %364 = icmp eq i32 %363, 0
  br i1 %33, label %365, label %390

365:                                              ; preds = %359
  br i1 %364, label %378, label %366

366:                                              ; preds = %365
  %367 = and i32 %362, -2147483392
  %368 = icmp eq i32 %367, -2147483392
  %369 = load ptr, ptr %135, align 8, !tbaa !64
  br i1 %368, label %370, label %374

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.xpvuv, ptr %369, i64 0, i32 4
  %372 = load i64, ptr %371, align 8, !tbaa !52
  %373 = uitofp i64 %372 to double
  br label %387

374:                                              ; preds = %366
  %375 = getelementptr inbounds %struct.xpviv, ptr %369, i64 0, i32 4
  %376 = load i64, ptr %375, align 8, !tbaa !52
  %377 = sitofp i64 %376 to double
  br label %387

378:                                              ; preds = %365
  %379 = and i32 %362, 2097664
  %380 = icmp eq i32 %379, 512
  br i1 %380, label %381, label %385

381:                                              ; preds = %378
  %382 = load ptr, ptr %135, align 8, !tbaa !64
  %383 = getelementptr inbounds %struct.xpvnv, ptr %382, i64 0, i32 5
  %384 = load double, ptr %383, align 8, !tbaa !52
  br label %387

385:                                              ; preds = %378
  %386 = tail call double @Perl_sv_2nv_flags(ptr noundef %135, i32 noundef 2) #8
  br label %387

387:                                              ; preds = %381, %385, %370, %374
  %388 = phi double [ %373, %370 ], [ %377, %374 ], [ %384, %381 ], [ %386, %385 ]
  %389 = fmul double %360, %388
  br label %415

390:                                              ; preds = %359
  br i1 %364, label %403, label %391

391:                                              ; preds = %390
  %392 = and i32 %362, -2147483392
  %393 = icmp eq i32 %392, -2147483392
  %394 = load ptr, ptr %135, align 8, !tbaa !64
  br i1 %393, label %395, label %399

395:                                              ; preds = %391
  %396 = getelementptr inbounds %struct.xpvuv, ptr %394, i64 0, i32 4
  %397 = load i64, ptr %396, align 8, !tbaa !52
  %398 = uitofp i64 %397 to double
  br label %412

399:                                              ; preds = %391
  %400 = getelementptr inbounds %struct.xpviv, ptr %394, i64 0, i32 4
  %401 = load i64, ptr %400, align 8, !tbaa !52
  %402 = sitofp i64 %401 to double
  br label %412

403:                                              ; preds = %390
  %404 = and i32 %362, 2097664
  %405 = icmp eq i32 %404, 512
  br i1 %405, label %406, label %410

406:                                              ; preds = %403
  %407 = load ptr, ptr %135, align 8, !tbaa !64
  %408 = getelementptr inbounds %struct.xpvnv, ptr %407, i64 0, i32 5
  %409 = load double, ptr %408, align 8, !tbaa !52
  br label %412

410:                                              ; preds = %403
  %411 = tail call double @Perl_sv_2nv_flags(ptr noundef %135, i32 noundef 2) #8
  br label %412

412:                                              ; preds = %406, %410, %395, %399
  %413 = phi double [ %398, %395 ], [ %402, %399 ], [ %409, %406 ], [ %411, %410 ]
  %414 = fadd double %360, %413
  br label %415

415:                                              ; preds = %237, %233, %248, %244, %220, %224, %215, %327, %354, %273, %295, %412, %387
  %416 = phi i32 [ 1, %387 ], [ 1, %412 ], [ 0, %327 ], [ 0, %354 ], [ 1, %273 ], [ 1, %295 ], [ %216, %215 ], [ 0, %224 ], [ 0, %220 ], [ 1, %244 ], [ 1, %248 ], [ 1, %233 ], [ 1, %237 ]
  %417 = phi ptr [ %164, %387 ], [ %164, %412 ], [ %164, %327 ], [ %164, %354 ], [ %164, %273 ], [ %164, %295 ], [ %187, %215 ], [ %164, %224 ], [ %164, %220 ], [ %164, %244 ], [ %164, %248 ], [ %164, %233 ], [ %164, %237 ]
  %418 = phi double [ %389, %387 ], [ %414, %412 ], [ %129, %327 ], [ %129, %354 ], [ %275, %273 ], [ %297, %295 ], [ %129, %215 ], [ %129, %224 ], [ %129, %220 ], [ %247, %244 ], [ %249, %248 ], [ %236, %233 ], [ %240, %237 ]
  %419 = phi i64 [ %128, %387 ], [ %128, %412 ], [ %329, %327 ], [ %356, %354 ], [ %128, %273 ], [ %128, %295 ], [ %128, %215 ], [ %225, %224 ], [ %223, %220 ], [ %128, %244 ], [ %128, %248 ], [ %128, %233 ], [ %128, %237 ]
  %420 = add nuw nsw i64 %127, 1
  %421 = icmp eq i64 %420, %125
  br i1 %421, label %422, label %126, !llvm.loop !78

422:                                              ; preds = %415, %117
  %423 = phi i32 [ %81, %117 ], [ %416, %415 ]
  %424 = phi ptr [ %118, %117 ], [ %417, %415 ]
  %425 = phi double [ %119, %117 ], [ %418, %415 ]
  %426 = phi i64 [ %120, %117 ], [ %419, %415 ]
  %427 = icmp eq ptr %424, null
  %428 = select i1 %427, ptr %32, ptr %424
  switch i32 %423, label %431 [
    i32 1, label %430
    i32 0, label %429
  ]

429:                                              ; preds = %422
  tail call void @Perl_sv_setiv(ptr noundef %428, i64 noundef %426) #8
  br label %431

430:                                              ; preds = %422
  tail call void @Perl_sv_setnv(ptr noundef %428, double noundef %425) #8
  br label %431

431:                                              ; preds = %422, %430, %429
  %432 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %433 = getelementptr inbounds ptr, ptr %432, i64 %52
  store ptr %428, ptr %433, align 8, !tbaa !53
  br label %434

434:                                              ; preds = %36, %40, %45, %431
  %435 = phi i64 [ %38, %36 ], [ %43, %40 ], [ %48, %45 ], [ %52, %431 ]
  %436 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %437 = getelementptr inbounds ptr, ptr %436, i64 %435
  store ptr %437, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_List__Util_minstr(ptr nocapture noundef readonly %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !52
  %18 = icmp eq i32 %14, 0
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %6, i64 %19
  br i1 %18, label %21, label %22

21:                                               ; preds = %1
  store ptr @PL_sv_undef, ptr %20, align 8, !tbaa !53
  br label %44

22:                                               ; preds = %1
  %23 = load ptr, ptr %20, align 8, !tbaa !53
  %24 = icmp sgt i32 %14, 1
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = sext i32 %7 to i64
  %27 = and i64 %13, 4294967295
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ 1, %25 ], [ %38, %28 ]
  %30 = phi ptr [ %23, %25 ], [ %37, %28 ]
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %32 = getelementptr ptr, ptr %31, i64 %29
  %33 = getelementptr ptr, ptr %32, i64 %26
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  %35 = tail call i32 @Perl_sv_cmp_flags(ptr noundef %30, ptr noundef %34, i32 noundef 2) #8
  %36 = icmp eq i32 %35, %17
  %37 = select i1 %36, ptr %34, ptr %30
  %38 = add nuw nsw i64 %29, 1
  %39 = icmp eq i64 %38, %27
  br i1 %39, label %40, label %28, !llvm.loop !79

40:                                               ; preds = %28, %22
  %41 = phi ptr [ %23, %22 ], [ %37, %28 ]
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %43 = getelementptr inbounds ptr, ptr %42, i64 %19
  store ptr %41, ptr %43, align 8, !tbaa !53
  br label %44

44:                                               ; preds = %40, %21
  %45 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %46 = getelementptr inbounds ptr, ptr %45, i64 %19
  store ptr %46, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_List__Util_reduce(ptr noundef %0) #0 !prof !60 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %7 = load i32, ptr %5, align 4, !tbaa !61
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.44) #8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = tail call ptr @Perl_sv_newmortal() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %25 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  %27 = call ptr @Perl_sv_2cv(ptr noundef %23, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #8
  br label %30

30:                                               ; preds = %29, %19
  %31 = icmp slt i32 %16, 2
  br i1 %31, label %331, label %32

32:                                               ; preds = %30
  %33 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef 3) #8
  %34 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef 3) #8
  %35 = getelementptr inbounds %struct.gv, ptr %33, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  call void @Perl_save_sptr(ptr noundef %36) #8
  %37 = getelementptr inbounds %struct.gv, ptr %34, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  call void @Perl_save_sptr(ptr noundef %38) #8
  %39 = load ptr, ptr %35, align 8, !tbaa !52
  store ptr %24, ptr %39, align 8, !tbaa !57
  %40 = getelementptr inbounds ptr, ptr %26, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !53
  %42 = icmp eq ptr %24, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %32
  call void @Perl_sv_setsv_flags(ptr noundef %24, ptr noundef %41, i32 noundef 2) #8
  %44 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !62
  %46 = and i32 %45, 4194304
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = call i32 @Perl_mg_set(ptr noundef %24) #8
  br label %50

50:                                               ; preds = %48, %43, %32
  %51 = load ptr, ptr %27, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.xpvcv, ptr %51, i64 0, i32 12
  %53 = load i32, ptr %52, align 4, !tbaa !80
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = icmp eq i32 %16, 2
  br i1 %57, label %331, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %60 = call i32 @llvm.smax.i32(i32 %16, i32 3)
  %61 = zext nneg i32 %60 to i64
  br label %298

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.xpvcv, ptr %51, i64 0, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !52
  call void @Perl_push_scope() #8
  %65 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %66 = getelementptr inbounds %struct.jmpenv, ptr %65, i64 0, i32 3
  %67 = load i8, ptr %66, align 4, !tbaa !82, !range !85, !noundef !86
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #8
  %68 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !87
  store i64 %68, ptr @PL_tmps_floor, align 8, !tbaa !87
  call void @Perl_save_vptr(ptr noundef nonnull @PL_op) #8
  %69 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %70 = getelementptr inbounds %struct.jmpenv, ptr %69, i64 0, i32 3
  store i8 1, ptr %70, align 4, !tbaa !82
  %71 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %72 = getelementptr inbounds %struct.stackinfo, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !88
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %62
  %76 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #8
  %77 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %78 = getelementptr inbounds %struct.stackinfo, ptr %76, i64 0, i32 2
  store ptr %77, ptr %78, align 8, !tbaa !90
  %79 = getelementptr inbounds %struct.stackinfo, ptr %77, i64 0, i32 3
  store ptr %76, ptr %79, align 8, !tbaa !88
  br label %80

80:                                               ; preds = %75, %62
  %81 = phi ptr [ %73, %62 ], [ %76, %75 ]
  %82 = getelementptr inbounds %struct.stackinfo, ptr %81, i64 0, i32 6
  store i32 3, ptr %82, align 8, !tbaa !91
  %83 = getelementptr inbounds %struct.stackinfo, ptr %81, i64 0, i32 4
  store i32 -1, ptr %83, align 8, !tbaa !92
  %84 = load ptr, ptr %81, align 8, !tbaa !93
  %85 = load ptr, ptr %84, align 8, !tbaa !94
  %86 = getelementptr inbounds %struct.xpvav, ptr %85, i64 0, i32 2
  store i64 0, ptr %86, align 8, !tbaa !96
  %87 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %88 = ptrtoint ptr %87 to i64
  %89 = sub i64 %12, %88
  %90 = ashr exact i64 %89, 3
  %91 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %92 = load ptr, ptr %91, align 8, !tbaa !94
  %93 = getelementptr inbounds %struct.xpvav, ptr %92, i64 0, i32 2
  store i64 %90, ptr %93, align 8, !tbaa !96
  %94 = getelementptr inbounds %struct.av, ptr %84, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !52
  store ptr %95, ptr @PL_stack_base, align 8, !tbaa !53
  %96 = load ptr, ptr %81, align 8, !tbaa !93
  %97 = load ptr, ptr %96, align 8, !tbaa !94
  %98 = getelementptr inbounds %struct.xpvav, ptr %97, i64 0, i32 3
  %99 = load i64, ptr %98, align 8, !tbaa !98
  %100 = getelementptr inbounds ptr, ptr %95, i64 %99
  store ptr %100, ptr @PL_stack_max, align 8, !tbaa !53
  %101 = load ptr, ptr %81, align 8, !tbaa !93
  %102 = load ptr, ptr %101, align 8, !tbaa !94
  %103 = getelementptr inbounds %struct.xpvav, ptr %102, i64 0, i32 2
  %104 = load i64, ptr %103, align 8, !tbaa !96
  %105 = getelementptr inbounds ptr, ptr %95, i64 %104
  store ptr %105, ptr @PL_stack_sp, align 8, !tbaa !53
  %106 = load ptr, ptr %81, align 8, !tbaa !93
  store ptr %106, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %81, ptr @PL_curstackinfo, align 8, !tbaa !53
  %107 = getelementptr inbounds %struct.stackinfo, ptr %81, i64 0, i32 5
  %108 = load i32, ptr %107, align 4, !tbaa !99
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %110, label %111

110:                                              ; preds = %80
  store i32 0, ptr %83, align 8, !tbaa !92
  br label %115

111:                                              ; preds = %80
  %112 = call i32 @Perl_cxinc() #8
  %113 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %114 = getelementptr inbounds %struct.stackinfo, ptr %113, i64 0, i32 4
  store i32 %112, ptr %114, align 8, !tbaa !92
  br label %115

115:                                              ; preds = %111, %110
  %116 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %117 = getelementptr inbounds %struct.stackinfo, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !100
  %119 = getelementptr inbounds %struct.stackinfo, ptr %116, i64 0, i32 4
  %120 = load i32, ptr %119, align 8, !tbaa !92
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.context, ptr %118, i64 %121
  store i8 24, ptr %122, align 8, !tbaa !52
  %123 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %124 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %125 = ptrtoint ptr %123 to i64
  %126 = ptrtoint ptr %124 to i64
  %127 = sub i64 %125, %126
  %128 = lshr exact i64 %127, 3
  %129 = trunc i64 %128 to i32
  %130 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 3
  store i32 %129, ptr %130, align 4, !tbaa !52
  %131 = load ptr, ptr @PL_curcop, align 8, !tbaa !53
  %132 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 4
  store ptr %131, ptr %132, align 8, !tbaa !52
  %133 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %134 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %135 = ptrtoint ptr %133 to i64
  %136 = ptrtoint ptr %134 to i64
  %137 = sub i64 %135, %136
  %138 = lshr exact i64 %137, 2
  %139 = trunc i64 %138 to i32
  %140 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 5
  store i32 %139, ptr %140, align 8, !tbaa !52
  %141 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %142 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 6
  store i32 %141, ptr %142, align 4, !tbaa !52
  %143 = load ptr, ptr @PL_curpm, align 8, !tbaa !53
  %144 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 7
  store ptr %143, ptr %144, align 8, !tbaa !52
  %145 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 1
  store i8 2, ptr %145, align 1, !tbaa !52
  %146 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %147 = getelementptr inbounds %struct.op, ptr %146, i64 0, i32 5
  %148 = load i8, ptr %147, align 2, !tbaa !101
  %149 = and i8 %148, 3
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %115
  %152 = getelementptr inbounds %struct.op, ptr %146, i64 0, i32 6
  %153 = load i8, ptr %152, align 1, !tbaa !75
  %154 = and i8 %153, -127
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %151
  %157 = call i32 @Perl_was_lvalue_sub() #8
  %158 = and i32 %157, 207
  %159 = or disjoint i32 %158, 48
  br label %160

160:                                              ; preds = %156, %151, %115
  %161 = phi i32 [ 177, %115 ], [ %159, %156 ], [ 48, %151 ]
  %162 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 8
  %163 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 8, i32 0, i32 1
  store ptr %27, ptr %163, align 8, !tbaa !52
  %164 = load ptr, ptr %27, align 8, !tbaa !46
  %165 = getelementptr inbounds %struct.xpvcv, ptr %164, i64 0, i32 13
  %166 = load i32, ptr %165, align 4, !tbaa !61
  %167 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 8, i32 0, i32 4
  store i32 %166, ptr %167, align 8, !tbaa !52
  store ptr null, ptr %162, align 8, !tbaa !52
  %168 = load ptr, ptr %27, align 8, !tbaa !46
  %169 = getelementptr inbounds %struct.xpvcv, ptr %168, i64 0, i32 13
  %170 = load i32, ptr %169, align 4, !tbaa !61
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %160
  %173 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 1
  %174 = load i32, ptr %173, align 8, !tbaa !102
  %175 = add i32 %174, 2
  store i32 %175, ptr %173, align 8, !tbaa !102
  call void @Perl_save_pushptr(ptr noundef nonnull %27, i32 noundef 11) #8
  br label %176

176:                                              ; preds = %172, %160
  %177 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %178 = getelementptr inbounds %struct.op, ptr %177, i64 0, i32 6
  %179 = load i8, ptr %178, align 1, !tbaa !75
  %180 = zext i8 %179 to i32
  %181 = and i32 %161, %180
  %182 = trunc i32 %181 to i16
  %183 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 2
  store i16 %182, ptr %183, align 2, !tbaa !52
  %184 = load ptr, ptr %27, align 8, !tbaa !46
  %185 = getelementptr inbounds %struct.xpvcv, ptr %184, i64 0, i32 13
  %186 = load i32, ptr %185, align 4, !tbaa !61
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %185, align 4, !tbaa !61
  %188 = icmp sgt i32 %186, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %176
  call void @Perl_pad_push(ptr noundef %64, i32 noundef %187) #8
  br label %190

190:                                              ; preds = %189, %176
  %191 = load ptr, ptr @PL_comppad, align 8, !tbaa !53
  call void @Perl_save_pushptr(ptr noundef %191, i32 noundef 7) #8
  %192 = getelementptr inbounds %struct.padlist, ptr %64, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !103
  %194 = load ptr, ptr %27, align 8, !tbaa !46
  %195 = getelementptr inbounds %struct.xpvcv, ptr %194, i64 0, i32 13
  %196 = load i32, ptr %195, align 4, !tbaa !61
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %193, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !53
  store ptr %199, ptr @PL_comppad, align 8, !tbaa !53
  %200 = getelementptr inbounds %struct.av, ptr %199, i64 0, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !52
  store ptr %201, ptr @PL_curpad, align 8, !tbaa !53
  %202 = load ptr, ptr %27, align 8, !tbaa !46
  %203 = getelementptr inbounds %struct.xpvcv, ptr %202, i64 0, i32 5
  %204 = load ptr, ptr %203, align 8, !tbaa !52
  %205 = icmp eq i32 %16, 2
  br i1 %205, label %229, label %206

206:                                              ; preds = %190
  %207 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %208 = call i32 @llvm.smax.i32(i32 %16, i32 3)
  %209 = zext nneg i32 %208 to i64
  br label %210

210:                                              ; preds = %206, %226
  %211 = phi i64 [ 2, %206 ], [ %227, %226 ]
  %212 = getelementptr inbounds ptr, ptr %26, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !53
  %214 = load ptr, ptr %37, align 8, !tbaa !52
  store ptr %213, ptr %214, align 8, !tbaa !57
  store ptr %204, ptr @PL_op, align 8, !tbaa !53
  %215 = load ptr, ptr @PL_runops, align 8, !tbaa !53
  %216 = call i32 %215() #8
  %217 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %218 = load ptr, ptr %217, align 8, !tbaa !53
  %219 = icmp eq ptr %24, %218
  br i1 %219, label %226, label %220

220:                                              ; preds = %210
  call void @Perl_sv_setsv_flags(ptr noundef %24, ptr noundef %218, i32 noundef 2) #8
  %221 = load i32, ptr %207, align 4, !tbaa !62
  %222 = and i32 %221, 4194304
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %220
  %225 = call i32 @Perl_mg_set(ptr noundef %24) #8
  br label %226

226:                                              ; preds = %210, %220, %224
  %227 = add nuw nsw i64 %211, 1
  %228 = icmp eq i64 %227, %209
  br i1 %228, label %229, label %210, !llvm.loop !105

229:                                              ; preds = %226, %190
  %230 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %231 = getelementptr inbounds %struct.stackinfo, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !100
  %233 = getelementptr inbounds %struct.stackinfo, ptr %230, i64 0, i32 4
  %234 = load i32, ptr %233, align 8, !tbaa !92
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.context, ptr %232, i64 %235, i32 0, i32 0, i32 11
  %237 = load i32, ptr %236, align 8, !tbaa !52
  %238 = load ptr, ptr %27, align 8, !tbaa !46
  %239 = getelementptr inbounds %struct.xpvcv, ptr %238, i64 0, i32 13
  store i32 %237, ptr %239, align 4, !tbaa !61
  %240 = icmp eq i32 %237, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %229
  %242 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 1
  %243 = load i32, ptr %242, align 8, !tbaa !102
  %244 = icmp ugt i32 %243, 1
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = add i32 %243, -1
  store i32 %246, ptr %242, align 8, !tbaa !102
  br label %248

247:                                              ; preds = %241
  call void @Perl_sv_free2(ptr noundef nonnull %27, i32 noundef %243) #8
  br label %248

248:                                              ; preds = %247, %245, %229
  %249 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %250 = getelementptr inbounds %struct.stackinfo, ptr %249, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !100
  %252 = getelementptr inbounds %struct.stackinfo, ptr %249, i64 0, i32 4
  %253 = load i32, ptr %252, align 8, !tbaa !92
  %254 = add nsw i32 %253, -1
  store i32 %254, ptr %252, align 8, !tbaa !92
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds %struct.context, ptr %251, i64 %255
  %257 = getelementptr inbounds %struct.block, ptr %256, i64 0, i32 4
  %258 = load ptr, ptr %257, align 8, !tbaa !52
  store ptr %258, ptr @PL_curcop, align 8, !tbaa !53
  %259 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %260 = getelementptr inbounds %struct.block, ptr %256, i64 0, i32 5
  %261 = load i32, ptr %260, align 8, !tbaa !52
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, ptr %259, i64 %262
  store ptr %263, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %264 = getelementptr inbounds %struct.block, ptr %256, i64 0, i32 6
  %265 = load i32, ptr %264, align 4, !tbaa !52
  store i32 %265, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %266 = getelementptr inbounds %struct.block, ptr %256, i64 0, i32 7
  %267 = load ptr, ptr %266, align 8, !tbaa !52
  store ptr %267, ptr @PL_curpm, align 8, !tbaa !53
  %268 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %269 = getelementptr inbounds %struct.stackinfo, ptr %249, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !90
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %273

272:                                              ; preds = %248
  call void @Perl_croak_popstack() #8
  br label %273

273:                                              ; preds = %248, %272
  %274 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %275 = ptrtoint ptr %268 to i64
  %276 = ptrtoint ptr %274 to i64
  %277 = sub i64 %275, %276
  %278 = ashr exact i64 %277, 3
  %279 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %280 = load ptr, ptr %279, align 8, !tbaa !94
  %281 = getelementptr inbounds %struct.xpvav, ptr %280, i64 0, i32 2
  store i64 %278, ptr %281, align 8, !tbaa !96
  %282 = load ptr, ptr %270, align 8, !tbaa !93
  %283 = getelementptr inbounds %struct.av, ptr %282, i64 0, i32 3
  %284 = load ptr, ptr %283, align 8, !tbaa !52
  store ptr %284, ptr @PL_stack_base, align 8, !tbaa !53
  %285 = load ptr, ptr %270, align 8, !tbaa !93
  %286 = load ptr, ptr %285, align 8, !tbaa !94
  %287 = getelementptr inbounds %struct.xpvav, ptr %286, i64 0, i32 3
  %288 = load i64, ptr %287, align 8, !tbaa !98
  %289 = getelementptr inbounds ptr, ptr %284, i64 %288
  store ptr %289, ptr @PL_stack_max, align 8, !tbaa !53
  %290 = load ptr, ptr %270, align 8, !tbaa !93
  %291 = load ptr, ptr %290, align 8, !tbaa !94
  %292 = getelementptr inbounds %struct.xpvav, ptr %291, i64 0, i32 2
  %293 = load i64, ptr %292, align 8, !tbaa !96
  %294 = getelementptr inbounds ptr, ptr %284, i64 %293
  store ptr %294, ptr @PL_stack_sp, align 8, !tbaa !53
  %295 = load ptr, ptr %270, align 8, !tbaa !93
  store ptr %295, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %270, ptr @PL_curstackinfo, align 8, !tbaa !53
  %296 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %297 = getelementptr inbounds %struct.jmpenv, ptr %296, i64 0, i32 3
  store i8 %67, ptr %297, align 4, !tbaa !82
  call void @Perl_pop_scope() #8
  br label %331

298:                                              ; preds = %58, %328
  %299 = phi i64 [ 2, %58 ], [ %329, %328 ]
  %300 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %301 = getelementptr inbounds ptr, ptr %26, i64 %299
  %302 = load ptr, ptr %301, align 8, !tbaa !53
  %303 = load ptr, ptr %37, align 8, !tbaa !52
  store ptr %302, ptr %303, align 8, !tbaa !57
  %304 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %305 = getelementptr inbounds i32, ptr %304, i64 1
  store ptr %305, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %306 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !53
  %307 = icmp eq ptr %305, %306
  br i1 %307, label %308, label %310

308:                                              ; preds = %298
  %309 = call ptr @Perl_markstack_grow() #8
  br label %310

310:                                              ; preds = %298, %308
  %311 = phi ptr [ %309, %308 ], [ %305, %298 ]
  %312 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %313 = ptrtoint ptr %300 to i64
  %314 = ptrtoint ptr %312 to i64
  %315 = sub i64 %313, %314
  %316 = lshr exact i64 %315, 3
  %317 = trunc i64 %316 to i32
  store i32 %317, ptr %311, align 4, !tbaa !61
  %318 = call i32 @Perl_call_sv(ptr noundef nonnull %27, i32 noundef 2) #8
  %319 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %320 = load ptr, ptr %319, align 8, !tbaa !53
  %321 = icmp eq ptr %24, %320
  br i1 %321, label %328, label %322

322:                                              ; preds = %310
  call void @Perl_sv_setsv_flags(ptr noundef %24, ptr noundef %320, i32 noundef 2) #8
  %323 = load i32, ptr %59, align 4, !tbaa !62
  %324 = and i32 %323, 4194304
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %328, label %326

326:                                              ; preds = %322
  %327 = call i32 @Perl_mg_set(ptr noundef %24) #8
  br label %328

328:                                              ; preds = %326, %322, %310
  %329 = add nuw nsw i64 %299, 1
  %330 = icmp eq i64 %329, %61
  br i1 %330, label %331, label %298, !llvm.loop !106

331:                                              ; preds = %328, %273, %56, %30
  %332 = phi ptr [ @PL_sv_undef, %30 ], [ %24, %56 ], [ %24, %273 ], [ %24, %328 ]
  %333 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %334 = getelementptr inbounds ptr, ptr %333, i64 %21
  store ptr %332, ptr %334, align 8, !tbaa !53
  %335 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %336 = getelementptr inbounds ptr, ptr %335, i64 %21
  store ptr %336, ptr @PL_stack_sp, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_List__Util_first(ptr noundef %0) #0 !prof !60 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %7 = load i32, ptr %5, align 4, !tbaa !61
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.44) #8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %24 = call ptr @Perl_sv_2cv(ptr noundef %23, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #8
  br label %27

27:                                               ; preds = %26, %19
  %28 = icmp slt i32 %16, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  br label %508

31:                                               ; preds = %27
  %32 = load ptr, ptr @PL_defgv, align 8, !tbaa !53
  %33 = getelementptr inbounds %struct.gv, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  call void @Perl_save_sptr(ptr noundef %34) #8
  %35 = load ptr, ptr %24, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.xpvcv, ptr %35, i64 0, i32 12
  %37 = load i32, ptr %36, align 4, !tbaa !80
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = and i64 %15, 4294967295
  br label %412

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.xpvcv, ptr %35, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  call void @Perl_push_scope() #8
  %45 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %46 = getelementptr inbounds %struct.jmpenv, ptr %45, i64 0, i32 3
  %47 = load i8, ptr %46, align 4, !tbaa !82, !range !85, !noundef !86
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #8
  %48 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !87
  store i64 %48, ptr @PL_tmps_floor, align 8, !tbaa !87
  call void @Perl_save_vptr(ptr noundef nonnull @PL_op) #8
  %49 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.jmpenv, ptr %49, i64 0, i32 3
  store i8 1, ptr %50, align 4, !tbaa !82
  %51 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %52 = getelementptr inbounds %struct.stackinfo, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !88
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #8
  %57 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %58 = getelementptr inbounds %struct.stackinfo, ptr %56, i64 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !90
  %59 = getelementptr inbounds %struct.stackinfo, ptr %57, i64 0, i32 3
  store ptr %56, ptr %59, align 8, !tbaa !88
  br label %60

60:                                               ; preds = %55, %42
  %61 = phi ptr [ %53, %42 ], [ %56, %55 ]
  %62 = getelementptr inbounds %struct.stackinfo, ptr %61, i64 0, i32 6
  store i32 3, ptr %62, align 8, !tbaa !91
  %63 = getelementptr inbounds %struct.stackinfo, ptr %61, i64 0, i32 4
  store i32 -1, ptr %63, align 8, !tbaa !92
  %64 = load ptr, ptr %61, align 8, !tbaa !93
  %65 = load ptr, ptr %64, align 8, !tbaa !94
  %66 = getelementptr inbounds %struct.xpvav, ptr %65, i64 0, i32 2
  store i64 0, ptr %66, align 8, !tbaa !96
  %67 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %68 = ptrtoint ptr %67 to i64
  %69 = sub i64 %12, %68
  %70 = ashr exact i64 %69, 3
  %71 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %72 = load ptr, ptr %71, align 8, !tbaa !94
  %73 = getelementptr inbounds %struct.xpvav, ptr %72, i64 0, i32 2
  store i64 %70, ptr %73, align 8, !tbaa !96
  %74 = getelementptr inbounds %struct.av, ptr %64, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !52
  store ptr %75, ptr @PL_stack_base, align 8, !tbaa !53
  %76 = load ptr, ptr %61, align 8, !tbaa !93
  %77 = load ptr, ptr %76, align 8, !tbaa !94
  %78 = getelementptr inbounds %struct.xpvav, ptr %77, i64 0, i32 3
  %79 = load i64, ptr %78, align 8, !tbaa !98
  %80 = getelementptr inbounds ptr, ptr %75, i64 %79
  store ptr %80, ptr @PL_stack_max, align 8, !tbaa !53
  %81 = load ptr, ptr %61, align 8, !tbaa !93
  %82 = load ptr, ptr %81, align 8, !tbaa !94
  %83 = getelementptr inbounds %struct.xpvav, ptr %82, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !96
  %85 = getelementptr inbounds ptr, ptr %75, i64 %84
  store ptr %85, ptr @PL_stack_sp, align 8, !tbaa !53
  %86 = load ptr, ptr %61, align 8, !tbaa !93
  store ptr %86, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %61, ptr @PL_curstackinfo, align 8, !tbaa !53
  %87 = getelementptr inbounds %struct.stackinfo, ptr %61, i64 0, i32 5
  %88 = load i32, ptr %87, align 4, !tbaa !99
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %90, label %91

90:                                               ; preds = %60
  store i32 0, ptr %63, align 8, !tbaa !92
  br label %95

91:                                               ; preds = %60
  %92 = call i32 @Perl_cxinc() #8
  %93 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %94 = getelementptr inbounds %struct.stackinfo, ptr %93, i64 0, i32 4
  store i32 %92, ptr %94, align 8, !tbaa !92
  br label %95

95:                                               ; preds = %91, %90
  %96 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %97 = getelementptr inbounds %struct.stackinfo, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !100
  %99 = getelementptr inbounds %struct.stackinfo, ptr %96, i64 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !92
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.context, ptr %98, i64 %101
  store i8 24, ptr %102, align 8, !tbaa !52
  %103 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %104 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %105 = ptrtoint ptr %103 to i64
  %106 = ptrtoint ptr %104 to i64
  %107 = sub i64 %105, %106
  %108 = lshr exact i64 %107, 3
  %109 = trunc i64 %108 to i32
  %110 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 3
  store i32 %109, ptr %110, align 4, !tbaa !52
  %111 = load ptr, ptr @PL_curcop, align 8, !tbaa !53
  %112 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 4
  store ptr %111, ptr %112, align 8, !tbaa !52
  %113 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %114 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %115 = ptrtoint ptr %113 to i64
  %116 = ptrtoint ptr %114 to i64
  %117 = sub i64 %115, %116
  %118 = lshr exact i64 %117, 2
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 5
  store i32 %119, ptr %120, align 8, !tbaa !52
  %121 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %122 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 6
  store i32 %121, ptr %122, align 4, !tbaa !52
  %123 = load ptr, ptr @PL_curpm, align 8, !tbaa !53
  %124 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 7
  store ptr %123, ptr %124, align 8, !tbaa !52
  %125 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 1
  store i8 2, ptr %125, align 1, !tbaa !52
  %126 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %127 = getelementptr inbounds %struct.op, ptr %126, i64 0, i32 5
  %128 = load i8, ptr %127, align 2, !tbaa !101
  %129 = and i8 %128, 3
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %95
  %132 = getelementptr inbounds %struct.op, ptr %126, i64 0, i32 6
  %133 = load i8, ptr %132, align 1, !tbaa !75
  %134 = and i8 %133, -127
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = call i32 @Perl_was_lvalue_sub() #8
  %138 = and i32 %137, 207
  %139 = or disjoint i32 %138, 48
  br label %140

140:                                              ; preds = %136, %131, %95
  %141 = phi i32 [ 177, %95 ], [ %139, %136 ], [ 48, %131 ]
  %142 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 8
  %143 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 8, i32 0, i32 1
  store ptr %24, ptr %143, align 8, !tbaa !52
  %144 = load ptr, ptr %24, align 8, !tbaa !46
  %145 = getelementptr inbounds %struct.xpvcv, ptr %144, i64 0, i32 13
  %146 = load i32, ptr %145, align 4, !tbaa !61
  %147 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 8, i32 0, i32 4
  store i32 %146, ptr %147, align 8, !tbaa !52
  store ptr null, ptr %142, align 8, !tbaa !52
  %148 = load ptr, ptr %24, align 8, !tbaa !46
  %149 = getelementptr inbounds %struct.xpvcv, ptr %148, i64 0, i32 13
  %150 = load i32, ptr %149, align 4, !tbaa !61
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %140
  %153 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !102
  %155 = add i32 %154, 2
  store i32 %155, ptr %153, align 8, !tbaa !102
  call void @Perl_save_pushptr(ptr noundef nonnull %24, i32 noundef 11) #8
  br label %156

156:                                              ; preds = %152, %140
  %157 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %158 = getelementptr inbounds %struct.op, ptr %157, i64 0, i32 6
  %159 = load i8, ptr %158, align 1, !tbaa !75
  %160 = zext i8 %159 to i32
  %161 = and i32 %141, %160
  %162 = trunc i32 %161 to i16
  %163 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 2
  store i16 %162, ptr %163, align 2, !tbaa !52
  %164 = load ptr, ptr %24, align 8, !tbaa !46
  %165 = getelementptr inbounds %struct.xpvcv, ptr %164, i64 0, i32 13
  %166 = load i32, ptr %165, align 4, !tbaa !61
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %165, align 4, !tbaa !61
  %168 = icmp sgt i32 %166, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %156
  call void @Perl_pad_push(ptr noundef %44, i32 noundef %167) #8
  br label %170

170:                                              ; preds = %169, %156
  %171 = load ptr, ptr @PL_comppad, align 8, !tbaa !53
  call void @Perl_save_pushptr(ptr noundef %171, i32 noundef 7) #8
  %172 = getelementptr inbounds %struct.padlist, ptr %44, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !103
  %174 = load ptr, ptr %24, align 8, !tbaa !46
  %175 = getelementptr inbounds %struct.xpvcv, ptr %174, i64 0, i32 13
  %176 = load i32, ptr %175, align 4, !tbaa !61
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds ptr, ptr %173, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !53
  store ptr %179, ptr @PL_comppad, align 8, !tbaa !53
  %180 = getelementptr inbounds %struct.av, ptr %179, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !52
  store ptr %181, ptr @PL_curpad, align 8, !tbaa !53
  %182 = load ptr, ptr %24, align 8, !tbaa !46
  %183 = getelementptr inbounds %struct.xpvcv, ptr %182, i64 0, i32 5
  %184 = load ptr, ptr %183, align 8, !tbaa !52
  %185 = and i64 %15, 4294967295
  %186 = call i32 @llvm.smax.i32(i32 %16, i32 2)
  %187 = zext nneg i32 %186 to i64
  br label %188

188:                                              ; preds = %170, %337
  %189 = phi i64 [ 1, %170 ], [ %338, %337 ]
  %190 = phi i1 [ true, %170 ], [ %339, %337 ]
  %191 = getelementptr inbounds ptr, ptr %22, i64 %189
  %192 = load ptr, ptr %191, align 8, !tbaa !53
  %193 = load ptr, ptr @PL_defgv, align 8, !tbaa !53
  %194 = getelementptr inbounds %struct.gv, ptr %193, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !52
  store ptr %192, ptr %195, align 8, !tbaa !57
  store ptr %184, ptr @PL_op, align 8, !tbaa !53
  %196 = load ptr, ptr @PL_runops, align 8, !tbaa !53
  %197 = call i32 %196() #8
  %198 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %199 = load ptr, ptr %198, align 8, !tbaa !53
  store ptr %199, ptr @PL_Sv, align 8, !tbaa !53
  %200 = icmp eq ptr %199, null
  br i1 %200, label %337, label %201

201:                                              ; preds = %188
  %202 = getelementptr inbounds %struct.sv, ptr %199, i64 0, i32 2
  %203 = load i32, ptr %202, align 4, !tbaa !62
  %204 = and i32 %203, 2097152
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %201
  %207 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %199, i32 noundef 2) #8
  br label %257

208:                                              ; preds = %201
  %209 = and i32 %203, 65280
  %210 = icmp ne i32 %209, 0
  %211 = and i32 %203, 255
  %212 = icmp eq i32 %211, 8
  %213 = or i1 %210, %212
  %214 = and i32 %203, 16777471
  %215 = icmp eq i32 %214, 16777226
  %216 = or i1 %215, %213
  br i1 %216, label %217, label %337

217:                                              ; preds = %208
  %218 = and i32 %203, 1024
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %234, label %220

220:                                              ; preds = %217
  %221 = load ptr, ptr %199, align 8, !tbaa !64
  %222 = icmp eq ptr %221, null
  br i1 %222, label %337, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.xpv, ptr %221, i64 0, i32 2
  %225 = load i64, ptr %224, align 8, !tbaa !70
  %226 = icmp ugt i64 %225, 1
  br i1 %226, label %259, label %227

227:                                              ; preds = %223
  %228 = icmp eq i64 %225, 0
  br i1 %228, label %337, label %229

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.sv, ptr %199, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !52
  %232 = load i8, ptr %231, align 1, !tbaa !52
  %233 = icmp ne i8 %232, 48
  br label %257

234:                                              ; preds = %217
  %235 = and i32 %203, 768
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %255, label %237

237:                                              ; preds = %234
  %238 = and i32 %203, 256
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %237
  %241 = load ptr, ptr %199, align 8, !tbaa !64
  %242 = getelementptr inbounds %struct.xpviv, ptr %241, i64 0, i32 4
  %243 = load i64, ptr %242, align 8, !tbaa !52
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %259

245:                                              ; preds = %240, %237
  %246 = and i32 %203, 512
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %337, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr %199, align 8, !tbaa !64
  %250 = getelementptr inbounds %struct.xpvnv, ptr %249, i64 0, i32 5
  %251 = load double, ptr %250, align 8, !tbaa !52
  %252 = fcmp uno double %251, 0.000000e+00
  br i1 %252, label %259, label %253

253:                                              ; preds = %248
  %254 = fcmp une double %251, 0.000000e+00
  br label %257

255:                                              ; preds = %234
  %256 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %199, i32 noundef 0) #8
  br label %257

257:                                              ; preds = %253, %229, %255, %206
  %258 = phi i1 [ %207, %206 ], [ %256, %255 ], [ %233, %229 ], [ %254, %253 ]
  br i1 %258, label %259, label %337

259:                                              ; preds = %240, %223, %248, %257
  %260 = trunc i64 %189 to i32
  %261 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %262 = getelementptr inbounds %struct.stackinfo, ptr %261, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !100
  %264 = getelementptr inbounds %struct.stackinfo, ptr %261, i64 0, i32 4
  %265 = load i32, ptr %264, align 8, !tbaa !92
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.context, ptr %263, i64 %266, i32 0, i32 0, i32 11
  %268 = load i32, ptr %267, align 8, !tbaa !52
  %269 = load ptr, ptr %24, align 8, !tbaa !46
  %270 = getelementptr inbounds %struct.xpvcv, ptr %269, i64 0, i32 13
  store i32 %268, ptr %270, align 4, !tbaa !61
  %271 = icmp eq i32 %268, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %259
  %273 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 1
  %274 = load i32, ptr %273, align 8, !tbaa !102
  %275 = icmp ugt i32 %274, 1
  br i1 %275, label %276, label %278

276:                                              ; preds = %272
  %277 = add i32 %274, -1
  store i32 %277, ptr %273, align 8, !tbaa !102
  br label %279

278:                                              ; preds = %272
  call void @Perl_sv_free2(ptr noundef nonnull %24, i32 noundef %274) #8
  br label %279

279:                                              ; preds = %278, %276, %259
  %280 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %281 = getelementptr inbounds %struct.stackinfo, ptr %280, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !100
  %283 = getelementptr inbounds %struct.stackinfo, ptr %280, i64 0, i32 4
  %284 = load i32, ptr %283, align 8, !tbaa !92
  %285 = add nsw i32 %284, -1
  store i32 %285, ptr %283, align 8, !tbaa !92
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds %struct.context, ptr %282, i64 %286
  %288 = getelementptr inbounds %struct.block, ptr %287, i64 0, i32 4
  %289 = load ptr, ptr %288, align 8, !tbaa !52
  store ptr %289, ptr @PL_curcop, align 8, !tbaa !53
  %290 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %291 = getelementptr inbounds %struct.block, ptr %287, i64 0, i32 5
  %292 = load i32, ptr %291, align 8, !tbaa !52
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, ptr %290, i64 %293
  store ptr %294, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %295 = getelementptr inbounds %struct.block, ptr %287, i64 0, i32 6
  %296 = load i32, ptr %295, align 4, !tbaa !52
  store i32 %296, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %297 = getelementptr inbounds %struct.block, ptr %287, i64 0, i32 7
  %298 = load ptr, ptr %297, align 8, !tbaa !52
  store ptr %298, ptr @PL_curpm, align 8, !tbaa !53
  %299 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %300 = getelementptr inbounds %struct.stackinfo, ptr %280, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !90
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %304

303:                                              ; preds = %279
  call void @Perl_croak_popstack() #8
  br label %304

304:                                              ; preds = %279, %303
  %305 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %306 = ptrtoint ptr %299 to i64
  %307 = ptrtoint ptr %305 to i64
  %308 = sub i64 %306, %307
  %309 = ashr exact i64 %308, 3
  %310 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %311 = load ptr, ptr %310, align 8, !tbaa !94
  %312 = getelementptr inbounds %struct.xpvav, ptr %311, i64 0, i32 2
  store i64 %309, ptr %312, align 8, !tbaa !96
  %313 = load ptr, ptr %301, align 8, !tbaa !93
  %314 = getelementptr inbounds %struct.av, ptr %313, i64 0, i32 3
  %315 = load ptr, ptr %314, align 8, !tbaa !52
  store ptr %315, ptr @PL_stack_base, align 8, !tbaa !53
  %316 = load ptr, ptr %301, align 8, !tbaa !93
  %317 = load ptr, ptr %316, align 8, !tbaa !94
  %318 = getelementptr inbounds %struct.xpvav, ptr %317, i64 0, i32 3
  %319 = load i64, ptr %318, align 8, !tbaa !98
  %320 = getelementptr inbounds ptr, ptr %315, i64 %319
  store ptr %320, ptr @PL_stack_max, align 8, !tbaa !53
  %321 = load ptr, ptr %301, align 8, !tbaa !93
  %322 = load ptr, ptr %321, align 8, !tbaa !94
  %323 = getelementptr inbounds %struct.xpvav, ptr %322, i64 0, i32 2
  %324 = load i64, ptr %323, align 8, !tbaa !96
  %325 = getelementptr inbounds ptr, ptr %315, i64 %324
  store ptr %325, ptr @PL_stack_sp, align 8, !tbaa !53
  %326 = load ptr, ptr %301, align 8, !tbaa !93
  store ptr %326, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %301, ptr @PL_curstackinfo, align 8, !tbaa !53
  %327 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %328 = getelementptr inbounds %struct.jmpenv, ptr %327, i64 0, i32 3
  store i8 %47, ptr %328, align 4, !tbaa !82
  call void @Perl_pop_scope() #8
  %329 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %330 = add nsw i32 %9, %260
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds ptr, ptr %329, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !53
  %334 = getelementptr inbounds ptr, ptr %329, i64 %21
  store ptr %333, ptr %334, align 8, !tbaa !53
  %335 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %336 = getelementptr inbounds ptr, ptr %335, i64 %21
  store ptr %336, ptr @PL_stack_sp, align 8, !tbaa !53
  br label %410

337:                                              ; preds = %208, %220, %227, %245, %257, %188
  %338 = add nuw nsw i64 %189, 1
  %339 = icmp ult i64 %338, %185
  %340 = icmp eq i64 %338, %187
  br i1 %340, label %341, label %188, !llvm.loop !107

341:                                              ; preds = %337
  %342 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %343 = getelementptr inbounds %struct.stackinfo, ptr %342, i64 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !100
  %345 = getelementptr inbounds %struct.stackinfo, ptr %342, i64 0, i32 4
  %346 = load i32, ptr %345, align 8, !tbaa !92
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.context, ptr %344, i64 %347, i32 0, i32 0, i32 11
  %349 = load i32, ptr %348, align 8, !tbaa !52
  %350 = load ptr, ptr %24, align 8, !tbaa !46
  %351 = getelementptr inbounds %struct.xpvcv, ptr %350, i64 0, i32 13
  store i32 %349, ptr %351, align 4, !tbaa !61
  %352 = icmp eq i32 %349, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %341
  %354 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 1
  %355 = load i32, ptr %354, align 8, !tbaa !102
  %356 = icmp ugt i32 %355, 1
  br i1 %356, label %357, label %359

357:                                              ; preds = %353
  %358 = add i32 %355, -1
  store i32 %358, ptr %354, align 8, !tbaa !102
  br label %360

359:                                              ; preds = %353
  call void @Perl_sv_free2(ptr noundef nonnull %24, i32 noundef %355) #8
  br label %360

360:                                              ; preds = %359, %357, %341
  %361 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %362 = getelementptr inbounds %struct.stackinfo, ptr %361, i64 0, i32 1
  %363 = load ptr, ptr %362, align 8, !tbaa !100
  %364 = getelementptr inbounds %struct.stackinfo, ptr %361, i64 0, i32 4
  %365 = load i32, ptr %364, align 8, !tbaa !92
  %366 = add nsw i32 %365, -1
  store i32 %366, ptr %364, align 8, !tbaa !92
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds %struct.context, ptr %363, i64 %367
  %369 = getelementptr inbounds %struct.block, ptr %368, i64 0, i32 4
  %370 = load ptr, ptr %369, align 8, !tbaa !52
  store ptr %370, ptr @PL_curcop, align 8, !tbaa !53
  %371 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %372 = getelementptr inbounds %struct.block, ptr %368, i64 0, i32 5
  %373 = load i32, ptr %372, align 8, !tbaa !52
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, ptr %371, i64 %374
  store ptr %375, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %376 = getelementptr inbounds %struct.block, ptr %368, i64 0, i32 6
  %377 = load i32, ptr %376, align 4, !tbaa !52
  store i32 %377, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %378 = getelementptr inbounds %struct.block, ptr %368, i64 0, i32 7
  %379 = load ptr, ptr %378, align 8, !tbaa !52
  store ptr %379, ptr @PL_curpm, align 8, !tbaa !53
  %380 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %381 = getelementptr inbounds %struct.stackinfo, ptr %361, i64 0, i32 2
  %382 = load ptr, ptr %381, align 8, !tbaa !90
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %385

384:                                              ; preds = %360
  call void @Perl_croak_popstack() #8
  br label %385

385:                                              ; preds = %360, %384
  %386 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %387 = ptrtoint ptr %380 to i64
  %388 = ptrtoint ptr %386 to i64
  %389 = sub i64 %387, %388
  %390 = ashr exact i64 %389, 3
  %391 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %392 = load ptr, ptr %391, align 8, !tbaa !94
  %393 = getelementptr inbounds %struct.xpvav, ptr %392, i64 0, i32 2
  store i64 %390, ptr %393, align 8, !tbaa !96
  %394 = load ptr, ptr %382, align 8, !tbaa !93
  %395 = getelementptr inbounds %struct.av, ptr %394, i64 0, i32 3
  %396 = load ptr, ptr %395, align 8, !tbaa !52
  store ptr %396, ptr @PL_stack_base, align 8, !tbaa !53
  %397 = load ptr, ptr %382, align 8, !tbaa !93
  %398 = load ptr, ptr %397, align 8, !tbaa !94
  %399 = getelementptr inbounds %struct.xpvav, ptr %398, i64 0, i32 3
  %400 = load i64, ptr %399, align 8, !tbaa !98
  %401 = getelementptr inbounds ptr, ptr %396, i64 %400
  store ptr %401, ptr @PL_stack_max, align 8, !tbaa !53
  %402 = load ptr, ptr %382, align 8, !tbaa !93
  %403 = load ptr, ptr %402, align 8, !tbaa !94
  %404 = getelementptr inbounds %struct.xpvav, ptr %403, i64 0, i32 2
  %405 = load i64, ptr %404, align 8, !tbaa !96
  %406 = getelementptr inbounds ptr, ptr %396, i64 %405
  store ptr %406, ptr @PL_stack_sp, align 8, !tbaa !53
  %407 = load ptr, ptr %382, align 8, !tbaa !93
  store ptr %407, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %382, ptr @PL_curstackinfo, align 8, !tbaa !53
  %408 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %409 = getelementptr inbounds %struct.jmpenv, ptr %408, i64 0, i32 3
  store i8 %47, ptr %409, align 4, !tbaa !82
  call void @Perl_pop_scope() #8
  br label %410

410:                                              ; preds = %385, %304
  %411 = phi i1 [ %339, %385 ], [ %190, %304 ]
  br i1 %411, label %514, label %506

412:                                              ; preds = %40, %503
  %413 = phi i64 [ 1, %40 ], [ %504, %503 ]
  %414 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %415 = getelementptr inbounds ptr, ptr %22, i64 %413
  %416 = load ptr, ptr %415, align 8, !tbaa !53
  %417 = load ptr, ptr @PL_defgv, align 8, !tbaa !53
  %418 = getelementptr inbounds %struct.gv, ptr %417, i64 0, i32 3
  %419 = load ptr, ptr %418, align 8, !tbaa !52
  store ptr %416, ptr %419, align 8, !tbaa !57
  %420 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %421 = getelementptr inbounds i32, ptr %420, i64 1
  store ptr %421, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %422 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !53
  %423 = icmp eq ptr %421, %422
  br i1 %423, label %424, label %426

424:                                              ; preds = %412
  %425 = call ptr @Perl_markstack_grow() #8
  br label %426

426:                                              ; preds = %412, %424
  %427 = phi ptr [ %425, %424 ], [ %421, %412 ]
  %428 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %429 = ptrtoint ptr %414 to i64
  %430 = ptrtoint ptr %428 to i64
  %431 = sub i64 %429, %430
  %432 = lshr exact i64 %431, 3
  %433 = trunc i64 %432 to i32
  store i32 %433, ptr %427, align 4, !tbaa !61
  %434 = call i32 @Perl_call_sv(ptr noundef nonnull %24, i32 noundef 2) #8
  %435 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %436 = load ptr, ptr %435, align 8, !tbaa !53
  store ptr %436, ptr @PL_Sv, align 8, !tbaa !53
  %437 = icmp eq ptr %436, null
  br i1 %437, label %503, label %438

438:                                              ; preds = %426
  %439 = getelementptr inbounds %struct.sv, ptr %436, i64 0, i32 2
  %440 = load i32, ptr %439, align 4, !tbaa !62
  %441 = and i32 %440, 2097152
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %445, label %443

443:                                              ; preds = %438
  %444 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %436, i32 noundef 2) #8
  br label %494

445:                                              ; preds = %438
  %446 = and i32 %440, 65280
  %447 = icmp ne i32 %446, 0
  %448 = and i32 %440, 255
  %449 = icmp eq i32 %448, 8
  %450 = or i1 %447, %449
  %451 = and i32 %440, 16777471
  %452 = icmp eq i32 %451, 16777226
  %453 = or i1 %452, %450
  br i1 %453, label %454, label %503

454:                                              ; preds = %445
  %455 = and i32 %440, 1024
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %471, label %457

457:                                              ; preds = %454
  %458 = load ptr, ptr %436, align 8, !tbaa !64
  %459 = icmp eq ptr %458, null
  br i1 %459, label %503, label %460

460:                                              ; preds = %457
  %461 = getelementptr inbounds %struct.xpv, ptr %458, i64 0, i32 2
  %462 = load i64, ptr %461, align 8, !tbaa !70
  %463 = icmp ugt i64 %462, 1
  br i1 %463, label %496, label %464

464:                                              ; preds = %460
  %465 = icmp eq i64 %462, 0
  br i1 %465, label %503, label %466

466:                                              ; preds = %464
  %467 = getelementptr inbounds %struct.sv, ptr %436, i64 0, i32 3
  %468 = load ptr, ptr %467, align 8, !tbaa !52
  %469 = load i8, ptr %468, align 1, !tbaa !52
  %470 = icmp ne i8 %469, 48
  br label %494

471:                                              ; preds = %454
  %472 = and i32 %440, 768
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %492, label %474

474:                                              ; preds = %471
  %475 = and i32 %440, 256
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %482, label %477

477:                                              ; preds = %474
  %478 = load ptr, ptr %436, align 8, !tbaa !64
  %479 = getelementptr inbounds %struct.xpviv, ptr %478, i64 0, i32 4
  %480 = load i64, ptr %479, align 8, !tbaa !52
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %482, label %496

482:                                              ; preds = %477, %474
  %483 = and i32 %440, 512
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %503, label %485

485:                                              ; preds = %482
  %486 = load ptr, ptr %436, align 8, !tbaa !64
  %487 = getelementptr inbounds %struct.xpvnv, ptr %486, i64 0, i32 5
  %488 = load double, ptr %487, align 8, !tbaa !52
  %489 = fcmp uno double %488, 0.000000e+00
  br i1 %489, label %496, label %490

490:                                              ; preds = %485
  %491 = fcmp une double %488, 0.000000e+00
  br label %494

492:                                              ; preds = %471
  %493 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %436, i32 noundef 0) #8
  br label %494

494:                                              ; preds = %490, %466, %492, %443
  %495 = phi i1 [ %444, %443 ], [ %493, %492 ], [ %470, %466 ], [ %491, %490 ]
  br i1 %495, label %496, label %503

496:                                              ; preds = %477, %460, %485, %494
  %497 = trunc i64 %413 to i32
  %498 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %499 = add nsw i32 %9, %497
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds ptr, ptr %498, i64 %500
  %502 = load ptr, ptr %501, align 8, !tbaa !53
  br label %508

503:                                              ; preds = %445, %457, %464, %482, %426, %494
  %504 = add nuw nsw i64 %413, 1
  %505 = icmp eq i64 %504, %41
  br i1 %505, label %506, label %412, !llvm.loop !108

506:                                              ; preds = %503, %410
  %507 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  br label %508

508:                                              ; preds = %29, %506, %496
  %509 = phi ptr [ %498, %496 ], [ %507, %506 ], [ %30, %29 ]
  %510 = phi ptr [ %502, %496 ], [ @PL_sv_undef, %506 ], [ @PL_sv_undef, %29 ]
  %511 = getelementptr inbounds ptr, ptr %509, i64 %21
  store ptr %510, ptr %511, align 8, !tbaa !53
  %512 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %513 = getelementptr inbounds ptr, ptr %512, i64 %21
  store ptr %513, ptr @PL_stack_sp, align 8, !tbaa !53
  br label %514

514:                                              ; preds = %508, %410
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_List__Util_any(ptr noundef %0) #0 !prof !60 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %7 = load i32, ptr %5, align 4, !tbaa !61
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = load ptr, ptr %0, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.xpvcv, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !52
  %20 = icmp slt i32 %16, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.44) #8
  br label %22

22:                                               ; preds = %21, %1
  %23 = shl i64 %14, 29
  %24 = ashr i64 %23, 32
  %25 = sub nsw i64 0, %24
  %26 = getelementptr inbounds ptr, ptr %4, i64 %25
  %27 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %28 = sext i32 %9 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  %31 = and i32 %19, 2
  %32 = icmp eq i32 %31, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %33 = call ptr @Perl_sv_2cv(ptr noundef %30, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #8
  br label %36

36:                                               ; preds = %35, %22
  %37 = load ptr, ptr @PL_defgv, align 8, !tbaa !53
  %38 = getelementptr inbounds %struct.gv, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !52
  call void @Perl_save_sptr(ptr noundef %39) #8
  %40 = load ptr, ptr %33, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.xpvcv, ptr %40, i64 0, i32 12
  %42 = load i32, ptr %41, align 4, !tbaa !80
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %36
  %46 = icmp sgt i32 %16, 1
  br i1 %46, label %47, label %513

47:                                               ; preds = %45
  %48 = and i32 %19, 1
  %49 = icmp eq i32 %48, 0
  %50 = and i64 %15, 4294967295
  br label %426

51:                                               ; preds = %36
  %52 = getelementptr inbounds %struct.xpvcv, ptr %40, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  call void @Perl_push_scope() #8
  %54 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %55 = getelementptr inbounds %struct.jmpenv, ptr %54, i64 0, i32 3
  %56 = load i8, ptr %55, align 4, !tbaa !82, !range !85, !noundef !86
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #8
  %57 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !87
  store i64 %57, ptr @PL_tmps_floor, align 8, !tbaa !87
  call void @Perl_save_vptr(ptr noundef nonnull @PL_op) #8
  %58 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %59 = getelementptr inbounds %struct.jmpenv, ptr %58, i64 0, i32 3
  store i8 1, ptr %59, align 4, !tbaa !82
  %60 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %61 = getelementptr inbounds %struct.stackinfo, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !88
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #8
  %66 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %67 = getelementptr inbounds %struct.stackinfo, ptr %65, i64 0, i32 2
  store ptr %66, ptr %67, align 8, !tbaa !90
  %68 = getelementptr inbounds %struct.stackinfo, ptr %66, i64 0, i32 3
  store ptr %65, ptr %68, align 8, !tbaa !88
  br label %69

69:                                               ; preds = %64, %51
  %70 = phi ptr [ %62, %51 ], [ %65, %64 ]
  %71 = getelementptr inbounds %struct.stackinfo, ptr %70, i64 0, i32 6
  store i32 3, ptr %71, align 8, !tbaa !91
  %72 = getelementptr inbounds %struct.stackinfo, ptr %70, i64 0, i32 4
  store i32 -1, ptr %72, align 8, !tbaa !92
  %73 = load ptr, ptr %70, align 8, !tbaa !93
  %74 = load ptr, ptr %73, align 8, !tbaa !94
  %75 = getelementptr inbounds %struct.xpvav, ptr %74, i64 0, i32 2
  store i64 0, ptr %75, align 8, !tbaa !96
  %76 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %77 = ptrtoint ptr %26 to i64
  %78 = ptrtoint ptr %76 to i64
  %79 = sub i64 %77, %78
  %80 = ashr exact i64 %79, 3
  %81 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %82 = load ptr, ptr %81, align 8, !tbaa !94
  %83 = getelementptr inbounds %struct.xpvav, ptr %82, i64 0, i32 2
  store i64 %80, ptr %83, align 8, !tbaa !96
  %84 = getelementptr inbounds %struct.av, ptr %73, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !52
  store ptr %85, ptr @PL_stack_base, align 8, !tbaa !53
  %86 = load ptr, ptr %70, align 8, !tbaa !93
  %87 = load ptr, ptr %86, align 8, !tbaa !94
  %88 = getelementptr inbounds %struct.xpvav, ptr %87, i64 0, i32 3
  %89 = load i64, ptr %88, align 8, !tbaa !98
  %90 = getelementptr inbounds ptr, ptr %85, i64 %89
  store ptr %90, ptr @PL_stack_max, align 8, !tbaa !53
  %91 = load ptr, ptr %70, align 8, !tbaa !93
  %92 = load ptr, ptr %91, align 8, !tbaa !94
  %93 = getelementptr inbounds %struct.xpvav, ptr %92, i64 0, i32 2
  %94 = load i64, ptr %93, align 8, !tbaa !96
  %95 = getelementptr inbounds ptr, ptr %85, i64 %94
  store ptr %95, ptr @PL_stack_sp, align 8, !tbaa !53
  %96 = load ptr, ptr %70, align 8, !tbaa !93
  store ptr %96, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %70, ptr @PL_curstackinfo, align 8, !tbaa !53
  %97 = getelementptr inbounds %struct.stackinfo, ptr %70, i64 0, i32 5
  %98 = load i32, ptr %97, align 4, !tbaa !99
  %99 = icmp sgt i32 %98, -1
  br i1 %99, label %100, label %101

100:                                              ; preds = %69
  store i32 0, ptr %72, align 8, !tbaa !92
  br label %105

101:                                              ; preds = %69
  %102 = call i32 @Perl_cxinc() #8
  %103 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %104 = getelementptr inbounds %struct.stackinfo, ptr %103, i64 0, i32 4
  store i32 %102, ptr %104, align 8, !tbaa !92
  br label %105

105:                                              ; preds = %101, %100
  %106 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %107 = getelementptr inbounds %struct.stackinfo, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !100
  %109 = getelementptr inbounds %struct.stackinfo, ptr %106, i64 0, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !92
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.context, ptr %108, i64 %111
  store i8 24, ptr %112, align 8, !tbaa !52
  %113 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %114 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %115 = ptrtoint ptr %113 to i64
  %116 = ptrtoint ptr %114 to i64
  %117 = sub i64 %115, %116
  %118 = lshr exact i64 %117, 3
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 3
  store i32 %119, ptr %120, align 4, !tbaa !52
  %121 = load ptr, ptr @PL_curcop, align 8, !tbaa !53
  %122 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 4
  store ptr %121, ptr %122, align 8, !tbaa !52
  %123 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %124 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %125 = ptrtoint ptr %123 to i64
  %126 = ptrtoint ptr %124 to i64
  %127 = sub i64 %125, %126
  %128 = lshr exact i64 %127, 2
  %129 = trunc i64 %128 to i32
  %130 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 5
  store i32 %129, ptr %130, align 8, !tbaa !52
  %131 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %132 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 6
  store i32 %131, ptr %132, align 4, !tbaa !52
  %133 = load ptr, ptr @PL_curpm, align 8, !tbaa !53
  %134 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 7
  store ptr %133, ptr %134, align 8, !tbaa !52
  %135 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 1
  store i8 2, ptr %135, align 1, !tbaa !52
  %136 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %137 = getelementptr inbounds %struct.op, ptr %136, i64 0, i32 5
  %138 = load i8, ptr %137, align 2, !tbaa !101
  %139 = and i8 %138, 3
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %105
  %142 = getelementptr inbounds %struct.op, ptr %136, i64 0, i32 6
  %143 = load i8, ptr %142, align 1, !tbaa !75
  %144 = and i8 %143, -127
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = call i32 @Perl_was_lvalue_sub() #8
  %148 = and i32 %147, 207
  %149 = or disjoint i32 %148, 48
  br label %150

150:                                              ; preds = %146, %141, %105
  %151 = phi i32 [ 177, %105 ], [ %149, %146 ], [ 48, %141 ]
  %152 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 8
  %153 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 8, i32 0, i32 1
  store ptr %33, ptr %153, align 8, !tbaa !52
  %154 = load ptr, ptr %33, align 8, !tbaa !46
  %155 = getelementptr inbounds %struct.xpvcv, ptr %154, i64 0, i32 13
  %156 = load i32, ptr %155, align 4, !tbaa !61
  %157 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 8, i32 0, i32 4
  store i32 %156, ptr %157, align 8, !tbaa !52
  store ptr null, ptr %152, align 8, !tbaa !52
  %158 = load ptr, ptr %33, align 8, !tbaa !46
  %159 = getelementptr inbounds %struct.xpvcv, ptr %158, i64 0, i32 13
  %160 = load i32, ptr %159, align 4, !tbaa !61
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %150
  %163 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 1
  %164 = load i32, ptr %163, align 8, !tbaa !102
  %165 = add i32 %164, 2
  store i32 %165, ptr %163, align 8, !tbaa !102
  call void @Perl_save_pushptr(ptr noundef nonnull %33, i32 noundef 11) #8
  br label %166

166:                                              ; preds = %162, %150
  %167 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %168 = getelementptr inbounds %struct.op, ptr %167, i64 0, i32 6
  %169 = load i8, ptr %168, align 1, !tbaa !75
  %170 = zext i8 %169 to i32
  %171 = and i32 %151, %170
  %172 = trunc i32 %171 to i16
  %173 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 2
  store i16 %172, ptr %173, align 2, !tbaa !52
  %174 = load ptr, ptr %33, align 8, !tbaa !46
  %175 = getelementptr inbounds %struct.xpvcv, ptr %174, i64 0, i32 13
  %176 = load i32, ptr %175, align 4, !tbaa !61
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %175, align 4, !tbaa !61
  %178 = icmp sgt i32 %176, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %166
  call void @Perl_pad_push(ptr noundef %53, i32 noundef %177) #8
  br label %180

180:                                              ; preds = %179, %166
  %181 = load ptr, ptr @PL_comppad, align 8, !tbaa !53
  call void @Perl_save_pushptr(ptr noundef %181, i32 noundef 7) #8
  %182 = getelementptr inbounds %struct.padlist, ptr %53, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !103
  %184 = load ptr, ptr %33, align 8, !tbaa !46
  %185 = getelementptr inbounds %struct.xpvcv, ptr %184, i64 0, i32 13
  %186 = load i32, ptr %185, align 4, !tbaa !61
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds ptr, ptr %183, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !53
  store ptr %189, ptr @PL_comppad, align 8, !tbaa !53
  %190 = getelementptr inbounds %struct.av, ptr %189, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !52
  store ptr %191, ptr @PL_curpad, align 8, !tbaa !53
  %192 = load ptr, ptr %33, align 8, !tbaa !46
  %193 = getelementptr inbounds %struct.xpvcv, ptr %192, i64 0, i32 5
  %194 = load ptr, ptr %193, align 8, !tbaa !52
  %195 = icmp sgt i32 %16, 1
  br i1 %195, label %196, label %351

196:                                              ; preds = %180
  %197 = and i32 %19, 1
  %198 = icmp eq i32 %197, 0
  %199 = and i64 %15, 4294967295
  %200 = and i64 %15, 4294967295
  br label %205

201:                                              ; preds = %274
  %202 = add nuw nsw i64 %206, 1
  %203 = icmp ult i64 %202, %199
  %204 = icmp eq i64 %202, %200
  br i1 %204, label %351, label %205, !llvm.loop !109

205:                                              ; preds = %196, %201
  %206 = phi i64 [ 1, %196 ], [ %202, %201 ]
  %207 = phi i1 [ %195, %196 ], [ %203, %201 ]
  %208 = getelementptr inbounds ptr, ptr %29, i64 %206
  %209 = load ptr, ptr %208, align 8, !tbaa !53
  %210 = load ptr, ptr @PL_defgv, align 8, !tbaa !53
  %211 = getelementptr inbounds %struct.gv, ptr %210, i64 0, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !52
  store ptr %209, ptr %212, align 8, !tbaa !57
  store ptr %194, ptr @PL_op, align 8, !tbaa !53
  %213 = load ptr, ptr @PL_runops, align 8, !tbaa !53
  %214 = call i32 %213() #8
  %215 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %216 = load ptr, ptr %215, align 8, !tbaa !53
  store ptr %216, ptr @PL_Sv, align 8, !tbaa !53
  %217 = icmp eq ptr %216, null
  br i1 %217, label %274, label %218

218:                                              ; preds = %205
  %219 = getelementptr inbounds %struct.sv, ptr %216, i64 0, i32 2
  %220 = load i32, ptr %219, align 4, !tbaa !62
  %221 = and i32 %220, 2097152
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %218
  %224 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %216, i32 noundef 2) #8
  br label %274

225:                                              ; preds = %218
  %226 = and i32 %220, 65280
  %227 = icmp ne i32 %226, 0
  %228 = and i32 %220, 255
  %229 = icmp eq i32 %228, 8
  %230 = or i1 %227, %229
  %231 = and i32 %220, 16777471
  %232 = icmp eq i32 %231, 16777226
  %233 = or i1 %232, %230
  br i1 %233, label %234, label %274

234:                                              ; preds = %225
  %235 = and i32 %220, 1024
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %251, label %237

237:                                              ; preds = %234
  %238 = load ptr, ptr %216, align 8, !tbaa !64
  %239 = icmp eq ptr %238, null
  br i1 %239, label %274, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.xpv, ptr %238, i64 0, i32 2
  %242 = load i64, ptr %241, align 8, !tbaa !70
  %243 = icmp ugt i64 %242, 1
  br i1 %243, label %274, label %244

244:                                              ; preds = %240
  %245 = icmp eq i64 %242, 0
  br i1 %245, label %274, label %246

246:                                              ; preds = %244
  %247 = getelementptr inbounds %struct.sv, ptr %216, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !52
  %249 = load i8, ptr %248, align 1, !tbaa !52
  %250 = icmp ne i8 %249, 48
  br label %274

251:                                              ; preds = %234
  %252 = and i32 %220, 768
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %272, label %254

254:                                              ; preds = %251
  %255 = and i32 %220, 256
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %254
  %258 = load ptr, ptr %216, align 8, !tbaa !64
  %259 = getelementptr inbounds %struct.xpviv, ptr %258, i64 0, i32 4
  %260 = load i64, ptr %259, align 8, !tbaa !52
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %257, %254
  %263 = and i32 %220, 512
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %274, label %265

265:                                              ; preds = %262
  %266 = load ptr, ptr %216, align 8, !tbaa !64
  %267 = getelementptr inbounds %struct.xpvnv, ptr %266, i64 0, i32 5
  %268 = load double, ptr %267, align 8, !tbaa !52
  %269 = fcmp uno double %268, 0.000000e+00
  br i1 %269, label %274, label %270

270:                                              ; preds = %265
  %271 = fcmp une double %268, 0.000000e+00
  br label %274

272:                                              ; preds = %251
  %273 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %216, i32 noundef 0) #8
  br label %274

274:                                              ; preds = %265, %223, %272, %225, %240, %246, %244, %237, %262, %270, %257, %205
  %275 = phi i1 [ false, %205 ], [ %224, %223 ], [ %273, %272 ], [ false, %225 ], [ false, %237 ], [ true, %240 ], [ false, %244 ], [ %250, %246 ], [ true, %257 ], [ false, %262 ], [ %271, %270 ], [ true, %265 ]
  %276 = xor i1 %198, %275
  br i1 %276, label %201, label %277

277:                                              ; preds = %274
  %278 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %279 = getelementptr inbounds %struct.stackinfo, ptr %278, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !100
  %281 = getelementptr inbounds %struct.stackinfo, ptr %278, i64 0, i32 4
  %282 = load i32, ptr %281, align 8, !tbaa !92
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.context, ptr %280, i64 %283, i32 0, i32 0, i32 11
  %285 = load i32, ptr %284, align 8, !tbaa !52
  %286 = load ptr, ptr %33, align 8, !tbaa !46
  %287 = getelementptr inbounds %struct.xpvcv, ptr %286, i64 0, i32 13
  store i32 %285, ptr %287, align 4, !tbaa !61
  %288 = icmp eq i32 %285, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %277
  %290 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 1
  %291 = load i32, ptr %290, align 8, !tbaa !102
  %292 = icmp ugt i32 %291, 1
  br i1 %292, label %293, label %295

293:                                              ; preds = %289
  %294 = add i32 %291, -1
  store i32 %294, ptr %290, align 8, !tbaa !102
  br label %296

295:                                              ; preds = %289
  call void @Perl_sv_free2(ptr noundef nonnull %33, i32 noundef %291) #8
  br label %296

296:                                              ; preds = %295, %293, %277
  %297 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %298 = getelementptr inbounds %struct.stackinfo, ptr %297, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !100
  %300 = getelementptr inbounds %struct.stackinfo, ptr %297, i64 0, i32 4
  %301 = load i32, ptr %300, align 8, !tbaa !92
  %302 = add nsw i32 %301, -1
  store i32 %302, ptr %300, align 8, !tbaa !92
  %303 = sext i32 %301 to i64
  %304 = getelementptr inbounds %struct.context, ptr %299, i64 %303
  %305 = getelementptr inbounds %struct.block, ptr %304, i64 0, i32 4
  %306 = load ptr, ptr %305, align 8, !tbaa !52
  store ptr %306, ptr @PL_curcop, align 8, !tbaa !53
  %307 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %308 = getelementptr inbounds %struct.block, ptr %304, i64 0, i32 5
  %309 = load i32, ptr %308, align 8, !tbaa !52
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, ptr %307, i64 %310
  store ptr %311, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %312 = getelementptr inbounds %struct.block, ptr %304, i64 0, i32 6
  %313 = load i32, ptr %312, align 4, !tbaa !52
  store i32 %313, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %314 = getelementptr inbounds %struct.block, ptr %304, i64 0, i32 7
  %315 = load ptr, ptr %314, align 8, !tbaa !52
  store ptr %315, ptr @PL_curpm, align 8, !tbaa !53
  %316 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %317 = getelementptr inbounds %struct.stackinfo, ptr %297, i64 0, i32 2
  %318 = load ptr, ptr %317, align 8, !tbaa !90
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %321

320:                                              ; preds = %296
  call void @Perl_croak_popstack() #8
  br label %321

321:                                              ; preds = %296, %320
  %322 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %323 = ptrtoint ptr %316 to i64
  %324 = ptrtoint ptr %322 to i64
  %325 = sub i64 %323, %324
  %326 = ashr exact i64 %325, 3
  %327 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %328 = load ptr, ptr %327, align 8, !tbaa !94
  %329 = getelementptr inbounds %struct.xpvav, ptr %328, i64 0, i32 2
  store i64 %326, ptr %329, align 8, !tbaa !96
  %330 = load ptr, ptr %318, align 8, !tbaa !93
  %331 = getelementptr inbounds %struct.av, ptr %330, i64 0, i32 3
  %332 = load ptr, ptr %331, align 8, !tbaa !52
  store ptr %332, ptr @PL_stack_base, align 8, !tbaa !53
  %333 = load ptr, ptr %318, align 8, !tbaa !93
  %334 = load ptr, ptr %333, align 8, !tbaa !94
  %335 = getelementptr inbounds %struct.xpvav, ptr %334, i64 0, i32 3
  %336 = load i64, ptr %335, align 8, !tbaa !98
  %337 = getelementptr inbounds ptr, ptr %332, i64 %336
  store ptr %337, ptr @PL_stack_max, align 8, !tbaa !53
  %338 = load ptr, ptr %318, align 8, !tbaa !93
  %339 = load ptr, ptr %338, align 8, !tbaa !94
  %340 = getelementptr inbounds %struct.xpvav, ptr %339, i64 0, i32 2
  %341 = load i64, ptr %340, align 8, !tbaa !96
  %342 = getelementptr inbounds ptr, ptr %332, i64 %341
  store ptr %342, ptr @PL_stack_sp, align 8, !tbaa !53
  %343 = load ptr, ptr %318, align 8, !tbaa !93
  store ptr %343, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %318, ptr @PL_curstackinfo, align 8, !tbaa !53
  %344 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %345 = getelementptr inbounds %struct.jmpenv, ptr %344, i64 0, i32 3
  store i8 %56, ptr %345, align 4, !tbaa !82
  call void @Perl_pop_scope() #8
  %346 = select i1 %32, ptr @PL_sv_no, ptr @PL_sv_yes
  %347 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %348 = getelementptr inbounds ptr, ptr %347, i64 %28
  store ptr %346, ptr %348, align 8, !tbaa !53
  %349 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %350 = getelementptr inbounds ptr, ptr %349, i64 %28
  store ptr %350, ptr @PL_stack_sp, align 8, !tbaa !53
  br label %421

351:                                              ; preds = %201, %180
  %352 = phi i1 [ %195, %180 ], [ %203, %201 ]
  %353 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %354 = getelementptr inbounds %struct.stackinfo, ptr %353, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !100
  %356 = getelementptr inbounds %struct.stackinfo, ptr %353, i64 0, i32 4
  %357 = load i32, ptr %356, align 8, !tbaa !92
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.context, ptr %355, i64 %358, i32 0, i32 0, i32 11
  %360 = load i32, ptr %359, align 8, !tbaa !52
  %361 = load ptr, ptr %33, align 8, !tbaa !46
  %362 = getelementptr inbounds %struct.xpvcv, ptr %361, i64 0, i32 13
  store i32 %360, ptr %362, align 4, !tbaa !61
  %363 = icmp eq i32 %360, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %351
  %365 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 1
  %366 = load i32, ptr %365, align 8, !tbaa !102
  %367 = icmp ugt i32 %366, 1
  br i1 %367, label %368, label %370

368:                                              ; preds = %364
  %369 = add i32 %366, -1
  store i32 %369, ptr %365, align 8, !tbaa !102
  br label %371

370:                                              ; preds = %364
  call void @Perl_sv_free2(ptr noundef nonnull %33, i32 noundef %366) #8
  br label %371

371:                                              ; preds = %370, %368, %351
  %372 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %373 = getelementptr inbounds %struct.stackinfo, ptr %372, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !100
  %375 = getelementptr inbounds %struct.stackinfo, ptr %372, i64 0, i32 4
  %376 = load i32, ptr %375, align 8, !tbaa !92
  %377 = add nsw i32 %376, -1
  store i32 %377, ptr %375, align 8, !tbaa !92
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds %struct.context, ptr %374, i64 %378
  %380 = getelementptr inbounds %struct.block, ptr %379, i64 0, i32 4
  %381 = load ptr, ptr %380, align 8, !tbaa !52
  store ptr %381, ptr @PL_curcop, align 8, !tbaa !53
  %382 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %383 = getelementptr inbounds %struct.block, ptr %379, i64 0, i32 5
  %384 = load i32, ptr %383, align 8, !tbaa !52
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, ptr %382, i64 %385
  store ptr %386, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %387 = getelementptr inbounds %struct.block, ptr %379, i64 0, i32 6
  %388 = load i32, ptr %387, align 4, !tbaa !52
  store i32 %388, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %389 = getelementptr inbounds %struct.block, ptr %379, i64 0, i32 7
  %390 = load ptr, ptr %389, align 8, !tbaa !52
  store ptr %390, ptr @PL_curpm, align 8, !tbaa !53
  %391 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %392 = getelementptr inbounds %struct.stackinfo, ptr %372, i64 0, i32 2
  %393 = load ptr, ptr %392, align 8, !tbaa !90
  %394 = icmp eq ptr %393, null
  br i1 %394, label %395, label %396

395:                                              ; preds = %371
  call void @Perl_croak_popstack() #8
  br label %396

396:                                              ; preds = %371, %395
  %397 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %398 = ptrtoint ptr %391 to i64
  %399 = ptrtoint ptr %397 to i64
  %400 = sub i64 %398, %399
  %401 = ashr exact i64 %400, 3
  %402 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %403 = load ptr, ptr %402, align 8, !tbaa !94
  %404 = getelementptr inbounds %struct.xpvav, ptr %403, i64 0, i32 2
  store i64 %401, ptr %404, align 8, !tbaa !96
  %405 = load ptr, ptr %393, align 8, !tbaa !93
  %406 = getelementptr inbounds %struct.av, ptr %405, i64 0, i32 3
  %407 = load ptr, ptr %406, align 8, !tbaa !52
  store ptr %407, ptr @PL_stack_base, align 8, !tbaa !53
  %408 = load ptr, ptr %393, align 8, !tbaa !93
  %409 = load ptr, ptr %408, align 8, !tbaa !94
  %410 = getelementptr inbounds %struct.xpvav, ptr %409, i64 0, i32 3
  %411 = load i64, ptr %410, align 8, !tbaa !98
  %412 = getelementptr inbounds ptr, ptr %407, i64 %411
  store ptr %412, ptr @PL_stack_max, align 8, !tbaa !53
  %413 = load ptr, ptr %393, align 8, !tbaa !93
  %414 = load ptr, ptr %413, align 8, !tbaa !94
  %415 = getelementptr inbounds %struct.xpvav, ptr %414, i64 0, i32 2
  %416 = load i64, ptr %415, align 8, !tbaa !96
  %417 = getelementptr inbounds ptr, ptr %407, i64 %416
  store ptr %417, ptr @PL_stack_sp, align 8, !tbaa !53
  %418 = load ptr, ptr %393, align 8, !tbaa !93
  store ptr %418, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %393, ptr @PL_curstackinfo, align 8, !tbaa !53
  %419 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %420 = getelementptr inbounds %struct.jmpenv, ptr %419, i64 0, i32 3
  store i8 %56, ptr %420, align 4, !tbaa !82
  call void @Perl_pop_scope() #8
  br label %421

421:                                              ; preds = %396, %321
  %422 = phi i1 [ %352, %396 ], [ %207, %321 ]
  br i1 %422, label %521, label %513

423:                                              ; preds = %508
  %424 = add nuw nsw i64 %427, 1
  %425 = icmp eq i64 %424, %50
  br i1 %425, label %513, label %426, !llvm.loop !110

426:                                              ; preds = %47, %423
  %427 = phi i64 [ 1, %47 ], [ %424, %423 ]
  %428 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %429 = getelementptr inbounds ptr, ptr %29, i64 %427
  %430 = load ptr, ptr %429, align 8, !tbaa !53
  %431 = load ptr, ptr @PL_defgv, align 8, !tbaa !53
  %432 = getelementptr inbounds %struct.gv, ptr %431, i64 0, i32 3
  %433 = load ptr, ptr %432, align 8, !tbaa !52
  store ptr %430, ptr %433, align 8, !tbaa !57
  %434 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %435 = getelementptr inbounds i32, ptr %434, i64 1
  store ptr %435, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %436 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !53
  %437 = icmp eq ptr %435, %436
  br i1 %437, label %438, label %440

438:                                              ; preds = %426
  %439 = call ptr @Perl_markstack_grow() #8
  br label %440

440:                                              ; preds = %426, %438
  %441 = phi ptr [ %439, %438 ], [ %435, %426 ]
  %442 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %443 = ptrtoint ptr %428 to i64
  %444 = ptrtoint ptr %442 to i64
  %445 = sub i64 %443, %444
  %446 = lshr exact i64 %445, 3
  %447 = trunc i64 %446 to i32
  store i32 %447, ptr %441, align 4, !tbaa !61
  %448 = call i32 @Perl_call_sv(ptr noundef nonnull %33, i32 noundef 2) #8
  %449 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %450 = load ptr, ptr %449, align 8, !tbaa !53
  store ptr %450, ptr @PL_Sv, align 8, !tbaa !53
  %451 = icmp eq ptr %450, null
  br i1 %451, label %508, label %452

452:                                              ; preds = %440
  %453 = getelementptr inbounds %struct.sv, ptr %450, i64 0, i32 2
  %454 = load i32, ptr %453, align 4, !tbaa !62
  %455 = and i32 %454, 2097152
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %459, label %457

457:                                              ; preds = %452
  %458 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %450, i32 noundef 2) #8
  br label %508

459:                                              ; preds = %452
  %460 = and i32 %454, 65280
  %461 = icmp ne i32 %460, 0
  %462 = and i32 %454, 255
  %463 = icmp eq i32 %462, 8
  %464 = or i1 %461, %463
  %465 = and i32 %454, 16777471
  %466 = icmp eq i32 %465, 16777226
  %467 = or i1 %466, %464
  br i1 %467, label %468, label %508

468:                                              ; preds = %459
  %469 = and i32 %454, 1024
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %485, label %471

471:                                              ; preds = %468
  %472 = load ptr, ptr %450, align 8, !tbaa !64
  %473 = icmp eq ptr %472, null
  br i1 %473, label %508, label %474

474:                                              ; preds = %471
  %475 = getelementptr inbounds %struct.xpv, ptr %472, i64 0, i32 2
  %476 = load i64, ptr %475, align 8, !tbaa !70
  %477 = icmp ugt i64 %476, 1
  br i1 %477, label %508, label %478

478:                                              ; preds = %474
  %479 = icmp eq i64 %476, 0
  br i1 %479, label %508, label %480

480:                                              ; preds = %478
  %481 = getelementptr inbounds %struct.sv, ptr %450, i64 0, i32 3
  %482 = load ptr, ptr %481, align 8, !tbaa !52
  %483 = load i8, ptr %482, align 1, !tbaa !52
  %484 = icmp ne i8 %483, 48
  br label %508

485:                                              ; preds = %468
  %486 = and i32 %454, 768
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %506, label %488

488:                                              ; preds = %485
  %489 = and i32 %454, 256
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %496, label %491

491:                                              ; preds = %488
  %492 = load ptr, ptr %450, align 8, !tbaa !64
  %493 = getelementptr inbounds %struct.xpviv, ptr %492, i64 0, i32 4
  %494 = load i64, ptr %493, align 8, !tbaa !52
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %496, label %508

496:                                              ; preds = %491, %488
  %497 = and i32 %454, 512
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %508, label %499

499:                                              ; preds = %496
  %500 = load ptr, ptr %450, align 8, !tbaa !64
  %501 = getelementptr inbounds %struct.xpvnv, ptr %500, i64 0, i32 5
  %502 = load double, ptr %501, align 8, !tbaa !52
  %503 = fcmp uno double %502, 0.000000e+00
  br i1 %503, label %508, label %504

504:                                              ; preds = %499
  %505 = fcmp une double %502, 0.000000e+00
  br label %508

506:                                              ; preds = %485
  %507 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %450, i32 noundef 0) #8
  br label %508

508:                                              ; preds = %499, %457, %506, %459, %474, %480, %478, %471, %496, %504, %491, %440
  %509 = phi i1 [ false, %440 ], [ %458, %457 ], [ %507, %506 ], [ false, %459 ], [ false, %471 ], [ true, %474 ], [ false, %478 ], [ %484, %480 ], [ true, %491 ], [ false, %496 ], [ %505, %504 ], [ true, %499 ]
  %510 = xor i1 %49, %509
  br i1 %510, label %423, label %511

511:                                              ; preds = %508
  %512 = select i1 %32, ptr @PL_sv_no, ptr @PL_sv_yes
  br label %515

513:                                              ; preds = %423, %45, %421
  %514 = select i1 %32, ptr @PL_sv_yes, ptr @PL_sv_no
  br label %515

515:                                              ; preds = %513, %511
  %516 = phi ptr [ %512, %511 ], [ %514, %513 ]
  %517 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %518 = getelementptr inbounds ptr, ptr %517, i64 %28
  store ptr %516, ptr %518, align 8, !tbaa !53
  %519 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %520 = getelementptr inbounds ptr, ptr %519, i64 %28
  store ptr %520, ptr @PL_stack_sp, align 8, !tbaa !53
  br label %521

521:                                              ; preds = %515, %421
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_List__Util_pairfirst(ptr noundef %0) #0 !prof !60 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %7 = load i32, ptr %5, align 4, !tbaa !61
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.44) #8
  br label %19

19:                                               ; preds = %18, %1
  %20 = shl i64 %14, 29
  %21 = ashr i64 %20, 32
  %22 = sub nsw i64 0, %21
  %23 = getelementptr inbounds ptr, ptr %4, i64 %22
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %25 = sext i32 %9 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %28 = call ptr @Perl_sv_2cv(ptr noundef %27, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #8
  %29 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 5
  %31 = load i8, ptr %30, align 2, !tbaa !101
  %32 = and i8 %31, 3
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %19
  %35 = zext nneg i8 %32 to i32
  br label %38

36:                                               ; preds = %19
  %37 = call i32 @Perl_block_gimme() #8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = and i32 %16, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = call zeroext i1 @Perl_ckwarn(i32 noundef 12) #8
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.48) #8
  br label %45

45:                                               ; preds = %44, %42, %38
  %46 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef 3) #8
  %47 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef 3) #8
  %48 = getelementptr inbounds %struct.gv, ptr %46, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !52
  call void @Perl_save_sptr(ptr noundef %49) #8
  %50 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  call void @Perl_save_sptr(ptr noundef %51) #8
  %52 = load ptr, ptr %28, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.xpvcv, ptr %52, i64 0, i32 12
  %54 = load i32, ptr %53, align 4, !tbaa !80
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %45
  %58 = icmp sgt i32 %16, 1
  br i1 %58, label %59, label %574

59:                                               ; preds = %57
  %60 = add i32 %7, 2
  %61 = sext i32 %9 to i64
  %62 = shl i64 %14, 29
  %63 = add i64 %62, -4294967296
  %64 = ashr i64 %63, 32
  %65 = and i64 %15, 4294967295
  br label %458

66:                                               ; preds = %45
  %67 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %68 = getelementptr inbounds ptr, ptr %67, i64 %25
  %69 = getelementptr inbounds %struct.xpvcv, ptr %52, i64 0, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !52
  call void @Perl_push_scope() #8
  %71 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %72 = getelementptr inbounds %struct.jmpenv, ptr %71, i64 0, i32 3
  %73 = load i8, ptr %72, align 4, !tbaa !82, !range !85, !noundef !86
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #8
  %74 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !87
  store i64 %74, ptr @PL_tmps_floor, align 8, !tbaa !87
  call void @Perl_save_vptr(ptr noundef nonnull @PL_op) #8
  %75 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %76 = getelementptr inbounds %struct.jmpenv, ptr %75, i64 0, i32 3
  store i8 1, ptr %76, align 4, !tbaa !82
  %77 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %78 = getelementptr inbounds %struct.stackinfo, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !88
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %66
  %82 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #8
  %83 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %84 = getelementptr inbounds %struct.stackinfo, ptr %82, i64 0, i32 2
  store ptr %83, ptr %84, align 8, !tbaa !90
  %85 = getelementptr inbounds %struct.stackinfo, ptr %83, i64 0, i32 3
  store ptr %82, ptr %85, align 8, !tbaa !88
  br label %86

86:                                               ; preds = %81, %66
  %87 = phi ptr [ %79, %66 ], [ %82, %81 ]
  %88 = getelementptr inbounds %struct.stackinfo, ptr %87, i64 0, i32 6
  store i32 3, ptr %88, align 8, !tbaa !91
  %89 = getelementptr inbounds %struct.stackinfo, ptr %87, i64 0, i32 4
  store i32 -1, ptr %89, align 8, !tbaa !92
  %90 = load ptr, ptr %87, align 8, !tbaa !93
  %91 = load ptr, ptr %90, align 8, !tbaa !94
  %92 = getelementptr inbounds %struct.xpvav, ptr %91, i64 0, i32 2
  store i64 0, ptr %92, align 8, !tbaa !96
  %93 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %94 = ptrtoint ptr %23 to i64
  %95 = ptrtoint ptr %93 to i64
  %96 = sub i64 %94, %95
  %97 = ashr exact i64 %96, 3
  %98 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %99 = load ptr, ptr %98, align 8, !tbaa !94
  %100 = getelementptr inbounds %struct.xpvav, ptr %99, i64 0, i32 2
  store i64 %97, ptr %100, align 8, !tbaa !96
  %101 = getelementptr inbounds %struct.av, ptr %90, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !52
  store ptr %102, ptr @PL_stack_base, align 8, !tbaa !53
  %103 = load ptr, ptr %87, align 8, !tbaa !93
  %104 = load ptr, ptr %103, align 8, !tbaa !94
  %105 = getelementptr inbounds %struct.xpvav, ptr %104, i64 0, i32 3
  %106 = load i64, ptr %105, align 8, !tbaa !98
  %107 = getelementptr inbounds ptr, ptr %102, i64 %106
  store ptr %107, ptr @PL_stack_max, align 8, !tbaa !53
  %108 = load ptr, ptr %87, align 8, !tbaa !93
  %109 = load ptr, ptr %108, align 8, !tbaa !94
  %110 = getelementptr inbounds %struct.xpvav, ptr %109, i64 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !96
  %112 = getelementptr inbounds ptr, ptr %102, i64 %111
  store ptr %112, ptr @PL_stack_sp, align 8, !tbaa !53
  %113 = load ptr, ptr %87, align 8, !tbaa !93
  store ptr %113, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %87, ptr @PL_curstackinfo, align 8, !tbaa !53
  %114 = getelementptr inbounds %struct.stackinfo, ptr %87, i64 0, i32 5
  %115 = load i32, ptr %114, align 4, !tbaa !99
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %118

117:                                              ; preds = %86
  store i32 0, ptr %89, align 8, !tbaa !92
  br label %122

118:                                              ; preds = %86
  %119 = call i32 @Perl_cxinc() #8
  %120 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %121 = getelementptr inbounds %struct.stackinfo, ptr %120, i64 0, i32 4
  store i32 %119, ptr %121, align 8, !tbaa !92
  br label %122

122:                                              ; preds = %118, %117
  %123 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %124 = getelementptr inbounds %struct.stackinfo, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !100
  %126 = getelementptr inbounds %struct.stackinfo, ptr %123, i64 0, i32 4
  %127 = load i32, ptr %126, align 8, !tbaa !92
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.context, ptr %125, i64 %128
  store i8 24, ptr %129, align 8, !tbaa !52
  %130 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %131 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %132 = ptrtoint ptr %130 to i64
  %133 = ptrtoint ptr %131 to i64
  %134 = sub i64 %132, %133
  %135 = lshr exact i64 %134, 3
  %136 = trunc i64 %135 to i32
  %137 = getelementptr inbounds %struct.block, ptr %129, i64 0, i32 3
  store i32 %136, ptr %137, align 4, !tbaa !52
  %138 = load ptr, ptr @PL_curcop, align 8, !tbaa !53
  %139 = getelementptr inbounds %struct.block, ptr %129, i64 0, i32 4
  store ptr %138, ptr %139, align 8, !tbaa !52
  %140 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %141 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %142 = ptrtoint ptr %140 to i64
  %143 = ptrtoint ptr %141 to i64
  %144 = sub i64 %142, %143
  %145 = lshr exact i64 %144, 2
  %146 = trunc i64 %145 to i32
  %147 = getelementptr inbounds %struct.block, ptr %129, i64 0, i32 5
  store i32 %146, ptr %147, align 8, !tbaa !52
  %148 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %149 = getelementptr inbounds %struct.block, ptr %129, i64 0, i32 6
  store i32 %148, ptr %149, align 4, !tbaa !52
  %150 = load ptr, ptr @PL_curpm, align 8, !tbaa !53
  %151 = getelementptr inbounds %struct.block, ptr %129, i64 0, i32 7
  store ptr %150, ptr %151, align 8, !tbaa !52
  %152 = getelementptr inbounds %struct.block, ptr %129, i64 0, i32 1
  store i8 2, ptr %152, align 1, !tbaa !52
  %153 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %154 = getelementptr inbounds %struct.op, ptr %153, i64 0, i32 5
  %155 = load i8, ptr %154, align 2, !tbaa !101
  %156 = and i8 %155, 3
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %122
  %159 = getelementptr inbounds %struct.op, ptr %153, i64 0, i32 6
  %160 = load i8, ptr %159, align 1, !tbaa !75
  %161 = and i8 %160, -127
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %158
  %164 = call i32 @Perl_was_lvalue_sub() #8
  %165 = and i32 %164, 207
  %166 = or disjoint i32 %165, 48
  br label %167

167:                                              ; preds = %163, %158, %122
  %168 = phi i32 [ 177, %122 ], [ %166, %163 ], [ 48, %158 ]
  %169 = getelementptr inbounds %struct.block, ptr %129, i64 0, i32 8
  %170 = getelementptr inbounds %struct.block, ptr %129, i64 0, i32 8, i32 0, i32 1
  store ptr %28, ptr %170, align 8, !tbaa !52
  %171 = load ptr, ptr %28, align 8, !tbaa !46
  %172 = getelementptr inbounds %struct.xpvcv, ptr %171, i64 0, i32 13
  %173 = load i32, ptr %172, align 4, !tbaa !61
  %174 = getelementptr inbounds %struct.block, ptr %129, i64 0, i32 8, i32 0, i32 4
  store i32 %173, ptr %174, align 8, !tbaa !52
  store ptr null, ptr %169, align 8, !tbaa !52
  %175 = load ptr, ptr %28, align 8, !tbaa !46
  %176 = getelementptr inbounds %struct.xpvcv, ptr %175, i64 0, i32 13
  %177 = load i32, ptr %176, align 4, !tbaa !61
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %167
  %180 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %181 = load i32, ptr %180, align 8, !tbaa !102
  %182 = add i32 %181, 2
  store i32 %182, ptr %180, align 8, !tbaa !102
  call void @Perl_save_pushptr(ptr noundef nonnull %28, i32 noundef 11) #8
  br label %183

183:                                              ; preds = %179, %167
  %184 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %185 = getelementptr inbounds %struct.op, ptr %184, i64 0, i32 6
  %186 = load i8, ptr %185, align 1, !tbaa !75
  %187 = zext i8 %186 to i32
  %188 = and i32 %168, %187
  %189 = trunc i32 %188 to i16
  %190 = getelementptr inbounds %struct.block, ptr %129, i64 0, i32 2
  store i16 %189, ptr %190, align 2, !tbaa !52
  %191 = load ptr, ptr %28, align 8, !tbaa !46
  %192 = getelementptr inbounds %struct.xpvcv, ptr %191, i64 0, i32 13
  %193 = load i32, ptr %192, align 4, !tbaa !61
  %194 = add nsw i32 %193, 1
  store i32 %194, ptr %192, align 4, !tbaa !61
  %195 = icmp sgt i32 %193, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %183
  call void @Perl_pad_push(ptr noundef %70, i32 noundef %194) #8
  br label %197

197:                                              ; preds = %196, %183
  %198 = load ptr, ptr @PL_comppad, align 8, !tbaa !53
  call void @Perl_save_pushptr(ptr noundef %198, i32 noundef 7) #8
  %199 = getelementptr inbounds %struct.padlist, ptr %70, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !103
  %201 = load ptr, ptr %28, align 8, !tbaa !46
  %202 = getelementptr inbounds %struct.xpvcv, ptr %201, i64 0, i32 13
  %203 = load i32, ptr %202, align 4, !tbaa !61
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds ptr, ptr %200, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !53
  store ptr %206, ptr @PL_comppad, align 8, !tbaa !53
  %207 = getelementptr inbounds %struct.av, ptr %206, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !52
  store ptr %208, ptr @PL_curpad, align 8, !tbaa !53
  %209 = load ptr, ptr %28, align 8, !tbaa !46
  %210 = getelementptr inbounds %struct.xpvcv, ptr %209, i64 0, i32 5
  %211 = load ptr, ptr %210, align 8, !tbaa !52
  %212 = icmp sgt i32 %16, 1
  br i1 %212, label %213, label %386

213:                                              ; preds = %197
  %214 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %215 = icmp eq i32 %39, 3
  %216 = shl i64 %14, 29
  %217 = add i64 %216, -4294967296
  %218 = ashr i64 %217, 32
  br label %219

219:                                              ; preds = %213, %382
  %220 = phi i64 [ 1, %213 ], [ %383, %382 ]
  %221 = getelementptr inbounds ptr, ptr %68, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !53
  %223 = load ptr, ptr %48, align 8, !tbaa !52
  store ptr %222, ptr %223, align 8, !tbaa !57
  %224 = icmp slt i64 %220, %218
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = getelementptr ptr, ptr %221, i64 1
  %227 = load ptr, ptr %226, align 8, !tbaa !53
  br label %228

228:                                              ; preds = %219, %225
  %229 = phi ptr [ %227, %225 ], [ @PL_sv_undef, %219 ]
  %230 = load ptr, ptr %50, align 8, !tbaa !52
  store ptr %229, ptr %230, align 8, !tbaa !57
  store ptr %211, ptr @PL_op, align 8, !tbaa !53
  %231 = load ptr, ptr @PL_runops, align 8, !tbaa !53
  %232 = call i32 %231() #8
  %233 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %234 = load ptr, ptr %233, align 8, !tbaa !53
  store ptr %234, ptr @PL_Sv, align 8, !tbaa !53
  %235 = icmp eq ptr %234, null
  br i1 %235, label %380, label %236

236:                                              ; preds = %228
  %237 = getelementptr inbounds %struct.sv, ptr %234, i64 0, i32 2
  %238 = load i32, ptr %237, align 4, !tbaa !62
  %239 = and i32 %238, 2097152
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %236
  %242 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %234, i32 noundef 2) #8
  br label %292

243:                                              ; preds = %236
  %244 = and i32 %238, 65280
  %245 = icmp ne i32 %244, 0
  %246 = and i32 %238, 255
  %247 = icmp eq i32 %246, 8
  %248 = or i1 %245, %247
  %249 = and i32 %238, 16777471
  %250 = icmp eq i32 %249, 16777226
  %251 = or i1 %250, %248
  br i1 %251, label %252, label %380

252:                                              ; preds = %243
  %253 = and i32 %238, 1024
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %269, label %255

255:                                              ; preds = %252
  %256 = load ptr, ptr %234, align 8, !tbaa !64
  %257 = icmp eq ptr %256, null
  br i1 %257, label %380, label %258

258:                                              ; preds = %255
  %259 = getelementptr inbounds %struct.xpv, ptr %256, i64 0, i32 2
  %260 = load i64, ptr %259, align 8, !tbaa !70
  %261 = icmp ugt i64 %260, 1
  br i1 %261, label %294, label %262

262:                                              ; preds = %258
  %263 = icmp eq i64 %260, 0
  br i1 %263, label %380, label %264

264:                                              ; preds = %262
  %265 = getelementptr inbounds %struct.sv, ptr %234, i64 0, i32 3
  %266 = load ptr, ptr %265, align 8, !tbaa !52
  %267 = load i8, ptr %266, align 1, !tbaa !52
  %268 = icmp ne i8 %267, 48
  br label %292

269:                                              ; preds = %252
  %270 = and i32 %238, 768
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %290, label %272

272:                                              ; preds = %269
  %273 = and i32 %238, 256
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %272
  %276 = load ptr, ptr %234, align 8, !tbaa !64
  %277 = getelementptr inbounds %struct.xpviv, ptr %276, i64 0, i32 4
  %278 = load i64, ptr %277, align 8, !tbaa !52
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %294

280:                                              ; preds = %275, %272
  %281 = and i32 %238, 512
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %380, label %283

283:                                              ; preds = %280
  %284 = load ptr, ptr %234, align 8, !tbaa !64
  %285 = getelementptr inbounds %struct.xpvnv, ptr %284, i64 0, i32 5
  %286 = load double, ptr %285, align 8, !tbaa !52
  %287 = fcmp uno double %286, 0.000000e+00
  br i1 %287, label %294, label %288

288:                                              ; preds = %283
  %289 = fcmp une double %286, 0.000000e+00
  br label %292

290:                                              ; preds = %269
  %291 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %234, i32 noundef 0) #8
  br label %292

292:                                              ; preds = %288, %264, %290, %241
  %293 = phi i1 [ %242, %241 ], [ %291, %290 ], [ %268, %264 ], [ %289, %288 ]
  br i1 %293, label %294, label %380

294:                                              ; preds = %283, %258, %275, %292
  %295 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %296 = getelementptr inbounds %struct.stackinfo, ptr %295, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !100
  %298 = getelementptr inbounds %struct.stackinfo, ptr %295, i64 0, i32 4
  %299 = load i32, ptr %298, align 8, !tbaa !92
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.context, ptr %297, i64 %300, i32 0, i32 0, i32 11
  %302 = load i32, ptr %301, align 8, !tbaa !52
  %303 = load ptr, ptr %28, align 8, !tbaa !46
  %304 = getelementptr inbounds %struct.xpvcv, ptr %303, i64 0, i32 13
  store i32 %302, ptr %304, align 4, !tbaa !61
  %305 = icmp eq i32 %302, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %294
  %307 = load i32, ptr %214, align 8, !tbaa !102
  %308 = icmp ugt i32 %307, 1
  br i1 %308, label %309, label %311

309:                                              ; preds = %306
  %310 = add i32 %307, -1
  store i32 %310, ptr %214, align 8, !tbaa !102
  br label %312

311:                                              ; preds = %306
  call void @Perl_sv_free2(ptr noundef nonnull %28, i32 noundef %307) #8
  br label %312

312:                                              ; preds = %311, %309, %294
  %313 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %314 = getelementptr inbounds %struct.stackinfo, ptr %313, i64 0, i32 1
  %315 = load ptr, ptr %314, align 8, !tbaa !100
  %316 = getelementptr inbounds %struct.stackinfo, ptr %313, i64 0, i32 4
  %317 = load i32, ptr %316, align 8, !tbaa !92
  %318 = add nsw i32 %317, -1
  store i32 %318, ptr %316, align 8, !tbaa !92
  %319 = sext i32 %317 to i64
  %320 = getelementptr inbounds %struct.context, ptr %315, i64 %319
  %321 = getelementptr inbounds %struct.block, ptr %320, i64 0, i32 4
  %322 = load ptr, ptr %321, align 8, !tbaa !52
  store ptr %322, ptr @PL_curcop, align 8, !tbaa !53
  %323 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %324 = getelementptr inbounds %struct.block, ptr %320, i64 0, i32 5
  %325 = load i32, ptr %324, align 8, !tbaa !52
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, ptr %323, i64 %326
  store ptr %327, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %328 = getelementptr inbounds %struct.block, ptr %320, i64 0, i32 6
  %329 = load i32, ptr %328, align 4, !tbaa !52
  store i32 %329, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %330 = getelementptr inbounds %struct.block, ptr %320, i64 0, i32 7
  %331 = load ptr, ptr %330, align 8, !tbaa !52
  store ptr %331, ptr @PL_curpm, align 8, !tbaa !53
  %332 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %333 = getelementptr inbounds %struct.stackinfo, ptr %313, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !90
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %337

336:                                              ; preds = %312
  call void @Perl_croak_popstack() #8
  br label %337

337:                                              ; preds = %312, %336
  %338 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %339 = ptrtoint ptr %332 to i64
  %340 = ptrtoint ptr %338 to i64
  %341 = sub i64 %339, %340
  %342 = ashr exact i64 %341, 3
  %343 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %344 = load ptr, ptr %343, align 8, !tbaa !94
  %345 = getelementptr inbounds %struct.xpvav, ptr %344, i64 0, i32 2
  store i64 %342, ptr %345, align 8, !tbaa !96
  %346 = load ptr, ptr %334, align 8, !tbaa !93
  %347 = getelementptr inbounds %struct.av, ptr %346, i64 0, i32 3
  %348 = load ptr, ptr %347, align 8, !tbaa !52
  store ptr %348, ptr @PL_stack_base, align 8, !tbaa !53
  %349 = load ptr, ptr %334, align 8, !tbaa !93
  %350 = load ptr, ptr %349, align 8, !tbaa !94
  %351 = getelementptr inbounds %struct.xpvav, ptr %350, i64 0, i32 3
  %352 = load i64, ptr %351, align 8, !tbaa !98
  %353 = getelementptr inbounds ptr, ptr %348, i64 %352
  store ptr %353, ptr @PL_stack_max, align 8, !tbaa !53
  %354 = load ptr, ptr %334, align 8, !tbaa !93
  %355 = load ptr, ptr %354, align 8, !tbaa !94
  %356 = getelementptr inbounds %struct.xpvav, ptr %355, i64 0, i32 2
  %357 = load i64, ptr %356, align 8, !tbaa !96
  %358 = getelementptr inbounds ptr, ptr %348, i64 %357
  store ptr %358, ptr @PL_stack_sp, align 8, !tbaa !53
  %359 = load ptr, ptr %334, align 8, !tbaa !93
  store ptr %359, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %334, ptr @PL_curstackinfo, align 8, !tbaa !53
  %360 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %361 = getelementptr inbounds %struct.jmpenv, ptr %360, i64 0, i32 3
  store i8 %73, ptr %361, align 4, !tbaa !82
  call void @Perl_pop_scope() #8
  br i1 %215, label %362, label %373

362:                                              ; preds = %337
  %363 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %222, i32 noundef 2) #8
  %364 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %365 = getelementptr inbounds ptr, ptr %364, i64 %25
  store ptr %363, ptr %365, align 8, !tbaa !53
  %366 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %229, i32 noundef 2) #8
  %367 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %368 = getelementptr ptr, ptr %367, i64 %10
  %369 = getelementptr ptr, ptr %368, i64 2
  store ptr %366, ptr %369, align 8, !tbaa !53
  %370 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %371 = getelementptr inbounds ptr, ptr %370, i64 %25
  %372 = getelementptr inbounds ptr, ptr %371, i64 1
  br label %378

373:                                              ; preds = %337
  %374 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %375 = getelementptr inbounds ptr, ptr %374, i64 %25
  store ptr @PL_sv_yes, ptr %375, align 8, !tbaa !53
  %376 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %377 = getelementptr inbounds ptr, ptr %376, i64 %25
  br label %378

378:                                              ; preds = %362, %373
  %379 = phi ptr [ %377, %373 ], [ %372, %362 ]
  store ptr %379, ptr @PL_stack_sp, align 8, !tbaa !53
  br label %380

380:                                              ; preds = %378, %243, %255, %262, %280, %292, %228
  %381 = phi i32 [ 12, %228 ], [ 12, %292 ], [ 12, %280 ], [ 12, %262 ], [ 12, %255 ], [ 12, %243 ], [ 1, %378 ]
  switch i32 %381, label %580 [
    i32 0, label %382
    i32 12, label %382
  ]

382:                                              ; preds = %380, %380
  %383 = add nuw i64 %220, 2
  %384 = trunc i64 %383 to i32
  %385 = icmp slt i32 %384, %16
  br i1 %385, label %219, label %386, !llvm.loop !111

386:                                              ; preds = %382, %197
  %387 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %388 = getelementptr inbounds %struct.stackinfo, ptr %387, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !100
  %390 = getelementptr inbounds %struct.stackinfo, ptr %387, i64 0, i32 4
  %391 = load i32, ptr %390, align 8, !tbaa !92
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.context, ptr %389, i64 %392, i32 0, i32 0, i32 11
  %394 = load i32, ptr %393, align 8, !tbaa !52
  %395 = load ptr, ptr %28, align 8, !tbaa !46
  %396 = getelementptr inbounds %struct.xpvcv, ptr %395, i64 0, i32 13
  store i32 %394, ptr %396, align 4, !tbaa !61
  %397 = icmp eq i32 %394, 0
  br i1 %397, label %398, label %405

398:                                              ; preds = %386
  %399 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %400 = load i32, ptr %399, align 8, !tbaa !102
  %401 = icmp ugt i32 %400, 1
  br i1 %401, label %402, label %404

402:                                              ; preds = %398
  %403 = add i32 %400, -1
  store i32 %403, ptr %399, align 8, !tbaa !102
  br label %405

404:                                              ; preds = %398
  call void @Perl_sv_free2(ptr noundef nonnull %28, i32 noundef %400) #8
  br label %405

405:                                              ; preds = %404, %402, %386
  %406 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %407 = getelementptr inbounds %struct.stackinfo, ptr %406, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !100
  %409 = getelementptr inbounds %struct.stackinfo, ptr %406, i64 0, i32 4
  %410 = load i32, ptr %409, align 8, !tbaa !92
  %411 = add nsw i32 %410, -1
  store i32 %411, ptr %409, align 8, !tbaa !92
  %412 = sext i32 %410 to i64
  %413 = getelementptr inbounds %struct.context, ptr %408, i64 %412
  %414 = getelementptr inbounds %struct.block, ptr %413, i64 0, i32 4
  %415 = load ptr, ptr %414, align 8, !tbaa !52
  store ptr %415, ptr @PL_curcop, align 8, !tbaa !53
  %416 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %417 = getelementptr inbounds %struct.block, ptr %413, i64 0, i32 5
  %418 = load i32, ptr %417, align 8, !tbaa !52
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, ptr %416, i64 %419
  store ptr %420, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %421 = getelementptr inbounds %struct.block, ptr %413, i64 0, i32 6
  %422 = load i32, ptr %421, align 4, !tbaa !52
  store i32 %422, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %423 = getelementptr inbounds %struct.block, ptr %413, i64 0, i32 7
  %424 = load ptr, ptr %423, align 8, !tbaa !52
  store ptr %424, ptr @PL_curpm, align 8, !tbaa !53
  %425 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %426 = getelementptr inbounds %struct.stackinfo, ptr %406, i64 0, i32 2
  %427 = load ptr, ptr %426, align 8, !tbaa !90
  %428 = icmp eq ptr %427, null
  br i1 %428, label %429, label %430

429:                                              ; preds = %405
  call void @Perl_croak_popstack() #8
  br label %430

430:                                              ; preds = %405, %429
  %431 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %432 = ptrtoint ptr %425 to i64
  %433 = ptrtoint ptr %431 to i64
  %434 = sub i64 %432, %433
  %435 = ashr exact i64 %434, 3
  %436 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %437 = load ptr, ptr %436, align 8, !tbaa !94
  %438 = getelementptr inbounds %struct.xpvav, ptr %437, i64 0, i32 2
  store i64 %435, ptr %438, align 8, !tbaa !96
  %439 = load ptr, ptr %427, align 8, !tbaa !93
  %440 = getelementptr inbounds %struct.av, ptr %439, i64 0, i32 3
  %441 = load ptr, ptr %440, align 8, !tbaa !52
  store ptr %441, ptr @PL_stack_base, align 8, !tbaa !53
  %442 = load ptr, ptr %427, align 8, !tbaa !93
  %443 = load ptr, ptr %442, align 8, !tbaa !94
  %444 = getelementptr inbounds %struct.xpvav, ptr %443, i64 0, i32 3
  %445 = load i64, ptr %444, align 8, !tbaa !98
  %446 = getelementptr inbounds ptr, ptr %441, i64 %445
  store ptr %446, ptr @PL_stack_max, align 8, !tbaa !53
  %447 = load ptr, ptr %427, align 8, !tbaa !93
  %448 = load ptr, ptr %447, align 8, !tbaa !94
  %449 = getelementptr inbounds %struct.xpvav, ptr %448, i64 0, i32 2
  %450 = load i64, ptr %449, align 8, !tbaa !96
  %451 = getelementptr inbounds ptr, ptr %441, i64 %450
  store ptr %451, ptr @PL_stack_sp, align 8, !tbaa !53
  %452 = load ptr, ptr %427, align 8, !tbaa !93
  store ptr %452, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %427, ptr @PL_curstackinfo, align 8, !tbaa !53
  %453 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %454 = getelementptr inbounds %struct.jmpenv, ptr %453, i64 0, i32 3
  store i8 %73, ptr %454, align 4, !tbaa !82
  call void @Perl_pop_scope() #8
  %455 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %456 = getelementptr inbounds ptr, ptr %455, i64 %25
  %457 = getelementptr inbounds ptr, ptr %456, i64 -1
  br label %578

458:                                              ; preds = %59, %571
  %459 = phi i64 [ 1, %59 ], [ %572, %571 ]
  %460 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %461 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %462 = getelementptr ptr, ptr %461, i64 %459
  %463 = getelementptr ptr, ptr %462, i64 %61
  %464 = load ptr, ptr %463, align 8, !tbaa !53
  %465 = load ptr, ptr %48, align 8, !tbaa !52
  store ptr %464, ptr %465, align 8, !tbaa !57
  %466 = icmp slt i64 %459, %64
  br i1 %466, label %467, label %474

467:                                              ; preds = %458
  %468 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %469 = trunc i64 %459 to i32
  %470 = add i32 %60, %469
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds ptr, ptr %468, i64 %471
  %473 = load ptr, ptr %472, align 8, !tbaa !53
  br label %474

474:                                              ; preds = %458, %467
  %475 = phi ptr [ %473, %467 ], [ @PL_sv_undef, %458 ]
  %476 = load ptr, ptr %50, align 8, !tbaa !52
  store ptr %475, ptr %476, align 8, !tbaa !57
  %477 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %478 = getelementptr inbounds i32, ptr %477, i64 1
  store ptr %478, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %479 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !53
  %480 = icmp eq ptr %478, %479
  br i1 %480, label %481, label %483

481:                                              ; preds = %474
  %482 = call ptr @Perl_markstack_grow() #8
  br label %483

483:                                              ; preds = %474, %481
  %484 = phi ptr [ %482, %481 ], [ %478, %474 ]
  %485 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %486 = ptrtoint ptr %460 to i64
  %487 = ptrtoint ptr %485 to i64
  %488 = sub i64 %486, %487
  %489 = lshr exact i64 %488, 3
  %490 = trunc i64 %489 to i32
  store i32 %490, ptr %484, align 4, !tbaa !61
  %491 = call i32 @Perl_call_sv(ptr noundef nonnull %28, i32 noundef 2) #8
  %492 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %493 = load ptr, ptr %492, align 8, !tbaa !53
  store ptr %493, ptr @PL_Sv, align 8, !tbaa !53
  %494 = icmp eq ptr %493, null
  br i1 %494, label %571, label %495

495:                                              ; preds = %483
  %496 = getelementptr inbounds %struct.sv, ptr %493, i64 0, i32 2
  %497 = load i32, ptr %496, align 4, !tbaa !62
  %498 = and i32 %497, 2097152
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %502, label %500

500:                                              ; preds = %495
  %501 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %493, i32 noundef 2) #8
  br label %551

502:                                              ; preds = %495
  %503 = and i32 %497, 65280
  %504 = icmp ne i32 %503, 0
  %505 = and i32 %497, 255
  %506 = icmp eq i32 %505, 8
  %507 = or i1 %504, %506
  %508 = and i32 %497, 16777471
  %509 = icmp eq i32 %508, 16777226
  %510 = or i1 %509, %507
  br i1 %510, label %511, label %571

511:                                              ; preds = %502
  %512 = and i32 %497, 1024
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %528, label %514

514:                                              ; preds = %511
  %515 = load ptr, ptr %493, align 8, !tbaa !64
  %516 = icmp eq ptr %515, null
  br i1 %516, label %571, label %517

517:                                              ; preds = %514
  %518 = getelementptr inbounds %struct.xpv, ptr %515, i64 0, i32 2
  %519 = load i64, ptr %518, align 8, !tbaa !70
  %520 = icmp ugt i64 %519, 1
  br i1 %520, label %553, label %521

521:                                              ; preds = %517
  %522 = icmp eq i64 %519, 0
  br i1 %522, label %571, label %523

523:                                              ; preds = %521
  %524 = getelementptr inbounds %struct.sv, ptr %493, i64 0, i32 3
  %525 = load ptr, ptr %524, align 8, !tbaa !52
  %526 = load i8, ptr %525, align 1, !tbaa !52
  %527 = icmp ne i8 %526, 48
  br label %551

528:                                              ; preds = %511
  %529 = and i32 %497, 768
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %549, label %531

531:                                              ; preds = %528
  %532 = and i32 %497, 256
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %539, label %534

534:                                              ; preds = %531
  %535 = load ptr, ptr %493, align 8, !tbaa !64
  %536 = getelementptr inbounds %struct.xpviv, ptr %535, i64 0, i32 4
  %537 = load i64, ptr %536, align 8, !tbaa !52
  %538 = icmp eq i64 %537, 0
  br i1 %538, label %539, label %553

539:                                              ; preds = %534, %531
  %540 = and i32 %497, 512
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %571, label %542

542:                                              ; preds = %539
  %543 = load ptr, ptr %493, align 8, !tbaa !64
  %544 = getelementptr inbounds %struct.xpvnv, ptr %543, i64 0, i32 5
  %545 = load double, ptr %544, align 8, !tbaa !52
  %546 = fcmp uno double %545, 0.000000e+00
  br i1 %546, label %553, label %547

547:                                              ; preds = %542
  %548 = fcmp une double %545, 0.000000e+00
  br label %551

549:                                              ; preds = %528
  %550 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %493, i32 noundef 0) #8
  br label %551

551:                                              ; preds = %547, %523, %549, %500
  %552 = phi i1 [ %501, %500 ], [ %550, %549 ], [ %527, %523 ], [ %548, %547 ]
  br i1 %552, label %553, label %571

553:                                              ; preds = %542, %517, %534, %551
  %554 = icmp eq i32 %39, 3
  br i1 %554, label %555, label %566

555:                                              ; preds = %553
  %556 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %464, i32 noundef 2) #8
  %557 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %558 = getelementptr inbounds ptr, ptr %557, i64 %25
  store ptr %556, ptr %558, align 8, !tbaa !53
  %559 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %475, i32 noundef 2) #8
  %560 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %561 = getelementptr ptr, ptr %560, i64 %10
  %562 = getelementptr ptr, ptr %561, i64 2
  store ptr %559, ptr %562, align 8, !tbaa !53
  %563 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %564 = getelementptr inbounds ptr, ptr %563, i64 %25
  %565 = getelementptr inbounds ptr, ptr %564, i64 1
  br label %578

566:                                              ; preds = %553
  %567 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %568 = getelementptr inbounds ptr, ptr %567, i64 %25
  store ptr @PL_sv_yes, ptr %568, align 8, !tbaa !53
  %569 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %570 = getelementptr inbounds ptr, ptr %569, i64 %25
  br label %578

571:                                              ; preds = %483, %551, %539, %521, %514, %502
  %572 = add nuw nsw i64 %459, 2
  %573 = icmp ult i64 %572, %65
  br i1 %573, label %458, label %574, !llvm.loop !112

574:                                              ; preds = %571, %57
  %575 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %576 = getelementptr inbounds ptr, ptr %575, i64 %25
  %577 = getelementptr inbounds ptr, ptr %576, i64 -1
  br label %578

578:                                              ; preds = %574, %430, %566, %555
  %579 = phi ptr [ %565, %555 ], [ %570, %566 ], [ %457, %430 ], [ %577, %574 ]
  store ptr %579, ptr @PL_stack_sp, align 8, !tbaa !53
  br label %580

580:                                              ; preds = %380, %578
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_List__Util_pairgrep(ptr noundef %0) #0 !prof !60 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %7 = load i32, ptr %5, align 4, !tbaa !61
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.44) #8
  br label %19

19:                                               ; preds = %18, %1
  %20 = shl i64 %14, 29
  %21 = ashr i64 %20, 32
  %22 = sub nsw i64 0, %21
  %23 = getelementptr inbounds ptr, ptr %4, i64 %22
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %25 = sext i32 %9 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %28 = call ptr @Perl_sv_2cv(ptr noundef %27, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #8
  %29 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 5
  %31 = load i8, ptr %30, align 2, !tbaa !101
  %32 = and i8 %31, 3
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %19
  %35 = zext nneg i8 %32 to i32
  br label %38

36:                                               ; preds = %19
  %37 = call i32 @Perl_block_gimme() #8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = and i32 %16, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = call zeroext i1 @Perl_ckwarn(i32 noundef 12) #8
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.49) #8
  br label %45

45:                                               ; preds = %44, %42, %38
  %46 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef 3) #8
  %47 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef 3) #8
  %48 = getelementptr inbounds %struct.gv, ptr %46, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !52
  call void @Perl_save_sptr(ptr noundef %49) #8
  %50 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  call void @Perl_save_sptr(ptr noundef %51) #8
  %52 = load ptr, ptr %28, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.xpvcv, ptr %52, i64 0, i32 12
  %54 = load i32, ptr %53, align 4, !tbaa !80
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %45
  %58 = icmp sgt i32 %16, 1
  br i1 %58, label %59, label %507

59:                                               ; preds = %57
  %60 = add i32 %7, 2
  %61 = add i32 %7, 2
  %62 = sext i32 %9 to i64
  %63 = shl i64 %14, 29
  %64 = add i64 %63, -4294967296
  %65 = ashr i64 %64, 32
  %66 = and i64 %15, 4294967295
  br label %392

67:                                               ; preds = %45
  %68 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %69 = getelementptr inbounds ptr, ptr %68, i64 %25
  %70 = getelementptr inbounds %struct.xpvcv, ptr %52, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !52
  call void @Perl_push_scope() #8
  %72 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %73 = getelementptr inbounds %struct.jmpenv, ptr %72, i64 0, i32 3
  %74 = load i8, ptr %73, align 4, !tbaa !82, !range !85, !noundef !86
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #8
  %75 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !87
  store i64 %75, ptr @PL_tmps_floor, align 8, !tbaa !87
  call void @Perl_save_vptr(ptr noundef nonnull @PL_op) #8
  %76 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %77 = getelementptr inbounds %struct.jmpenv, ptr %76, i64 0, i32 3
  store i8 1, ptr %77, align 4, !tbaa !82
  %78 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %79 = getelementptr inbounds %struct.stackinfo, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !88
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %67
  %83 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #8
  %84 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %85 = getelementptr inbounds %struct.stackinfo, ptr %83, i64 0, i32 2
  store ptr %84, ptr %85, align 8, !tbaa !90
  %86 = getelementptr inbounds %struct.stackinfo, ptr %84, i64 0, i32 3
  store ptr %83, ptr %86, align 8, !tbaa !88
  br label %87

87:                                               ; preds = %82, %67
  %88 = phi ptr [ %80, %67 ], [ %83, %82 ]
  %89 = getelementptr inbounds %struct.stackinfo, ptr %88, i64 0, i32 6
  store i32 3, ptr %89, align 8, !tbaa !91
  %90 = getelementptr inbounds %struct.stackinfo, ptr %88, i64 0, i32 4
  store i32 -1, ptr %90, align 8, !tbaa !92
  %91 = load ptr, ptr %88, align 8, !tbaa !93
  %92 = load ptr, ptr %91, align 8, !tbaa !94
  %93 = getelementptr inbounds %struct.xpvav, ptr %92, i64 0, i32 2
  store i64 0, ptr %93, align 8, !tbaa !96
  %94 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %95 = ptrtoint ptr %23 to i64
  %96 = ptrtoint ptr %94 to i64
  %97 = sub i64 %95, %96
  %98 = ashr exact i64 %97, 3
  %99 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %100 = load ptr, ptr %99, align 8, !tbaa !94
  %101 = getelementptr inbounds %struct.xpvav, ptr %100, i64 0, i32 2
  store i64 %98, ptr %101, align 8, !tbaa !96
  %102 = getelementptr inbounds %struct.av, ptr %91, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !52
  store ptr %103, ptr @PL_stack_base, align 8, !tbaa !53
  %104 = load ptr, ptr %88, align 8, !tbaa !93
  %105 = load ptr, ptr %104, align 8, !tbaa !94
  %106 = getelementptr inbounds %struct.xpvav, ptr %105, i64 0, i32 3
  %107 = load i64, ptr %106, align 8, !tbaa !98
  %108 = getelementptr inbounds ptr, ptr %103, i64 %107
  store ptr %108, ptr @PL_stack_max, align 8, !tbaa !53
  %109 = load ptr, ptr %88, align 8, !tbaa !93
  %110 = load ptr, ptr %109, align 8, !tbaa !94
  %111 = getelementptr inbounds %struct.xpvav, ptr %110, i64 0, i32 2
  %112 = load i64, ptr %111, align 8, !tbaa !96
  %113 = getelementptr inbounds ptr, ptr %103, i64 %112
  store ptr %113, ptr @PL_stack_sp, align 8, !tbaa !53
  %114 = load ptr, ptr %88, align 8, !tbaa !93
  store ptr %114, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %88, ptr @PL_curstackinfo, align 8, !tbaa !53
  %115 = getelementptr inbounds %struct.stackinfo, ptr %88, i64 0, i32 5
  %116 = load i32, ptr %115, align 4, !tbaa !99
  %117 = icmp sgt i32 %116, -1
  br i1 %117, label %118, label %119

118:                                              ; preds = %87
  store i32 0, ptr %90, align 8, !tbaa !92
  br label %123

119:                                              ; preds = %87
  %120 = call i32 @Perl_cxinc() #8
  %121 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %122 = getelementptr inbounds %struct.stackinfo, ptr %121, i64 0, i32 4
  store i32 %120, ptr %122, align 8, !tbaa !92
  br label %123

123:                                              ; preds = %119, %118
  %124 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %125 = getelementptr inbounds %struct.stackinfo, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !100
  %127 = getelementptr inbounds %struct.stackinfo, ptr %124, i64 0, i32 4
  %128 = load i32, ptr %127, align 8, !tbaa !92
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.context, ptr %126, i64 %129
  store i8 24, ptr %130, align 8, !tbaa !52
  %131 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %132 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %133 = ptrtoint ptr %131 to i64
  %134 = ptrtoint ptr %132 to i64
  %135 = sub i64 %133, %134
  %136 = lshr exact i64 %135, 3
  %137 = trunc i64 %136 to i32
  %138 = getelementptr inbounds %struct.block, ptr %130, i64 0, i32 3
  store i32 %137, ptr %138, align 4, !tbaa !52
  %139 = load ptr, ptr @PL_curcop, align 8, !tbaa !53
  %140 = getelementptr inbounds %struct.block, ptr %130, i64 0, i32 4
  store ptr %139, ptr %140, align 8, !tbaa !52
  %141 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %142 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %143 = ptrtoint ptr %141 to i64
  %144 = ptrtoint ptr %142 to i64
  %145 = sub i64 %143, %144
  %146 = lshr exact i64 %145, 2
  %147 = trunc i64 %146 to i32
  %148 = getelementptr inbounds %struct.block, ptr %130, i64 0, i32 5
  store i32 %147, ptr %148, align 8, !tbaa !52
  %149 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %150 = getelementptr inbounds %struct.block, ptr %130, i64 0, i32 6
  store i32 %149, ptr %150, align 4, !tbaa !52
  %151 = load ptr, ptr @PL_curpm, align 8, !tbaa !53
  %152 = getelementptr inbounds %struct.block, ptr %130, i64 0, i32 7
  store ptr %151, ptr %152, align 8, !tbaa !52
  %153 = getelementptr inbounds %struct.block, ptr %130, i64 0, i32 1
  store i8 2, ptr %153, align 1, !tbaa !52
  %154 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %155 = getelementptr inbounds %struct.op, ptr %154, i64 0, i32 5
  %156 = load i8, ptr %155, align 2, !tbaa !101
  %157 = and i8 %156, 3
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %123
  %160 = getelementptr inbounds %struct.op, ptr %154, i64 0, i32 6
  %161 = load i8, ptr %160, align 1, !tbaa !75
  %162 = and i8 %161, -127
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %159
  %165 = call i32 @Perl_was_lvalue_sub() #8
  %166 = and i32 %165, 207
  %167 = or disjoint i32 %166, 48
  br label %168

168:                                              ; preds = %164, %159, %123
  %169 = phi i32 [ 177, %123 ], [ %167, %164 ], [ 48, %159 ]
  %170 = getelementptr inbounds %struct.block, ptr %130, i64 0, i32 8
  %171 = getelementptr inbounds %struct.block, ptr %130, i64 0, i32 8, i32 0, i32 1
  store ptr %28, ptr %171, align 8, !tbaa !52
  %172 = load ptr, ptr %28, align 8, !tbaa !46
  %173 = getelementptr inbounds %struct.xpvcv, ptr %172, i64 0, i32 13
  %174 = load i32, ptr %173, align 4, !tbaa !61
  %175 = getelementptr inbounds %struct.block, ptr %130, i64 0, i32 8, i32 0, i32 4
  store i32 %174, ptr %175, align 8, !tbaa !52
  store ptr null, ptr %170, align 8, !tbaa !52
  %176 = load ptr, ptr %28, align 8, !tbaa !46
  %177 = getelementptr inbounds %struct.xpvcv, ptr %176, i64 0, i32 13
  %178 = load i32, ptr %177, align 4, !tbaa !61
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %168
  %181 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %182 = load i32, ptr %181, align 8, !tbaa !102
  %183 = add i32 %182, 2
  store i32 %183, ptr %181, align 8, !tbaa !102
  call void @Perl_save_pushptr(ptr noundef nonnull %28, i32 noundef 11) #8
  br label %184

184:                                              ; preds = %180, %168
  %185 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %186 = getelementptr inbounds %struct.op, ptr %185, i64 0, i32 6
  %187 = load i8, ptr %186, align 1, !tbaa !75
  %188 = zext i8 %187 to i32
  %189 = and i32 %169, %188
  %190 = trunc i32 %189 to i16
  %191 = getelementptr inbounds %struct.block, ptr %130, i64 0, i32 2
  store i16 %190, ptr %191, align 2, !tbaa !52
  %192 = load ptr, ptr %28, align 8, !tbaa !46
  %193 = getelementptr inbounds %struct.xpvcv, ptr %192, i64 0, i32 13
  %194 = load i32, ptr %193, align 4, !tbaa !61
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr %193, align 4, !tbaa !61
  %196 = icmp sgt i32 %194, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %184
  call void @Perl_pad_push(ptr noundef %71, i32 noundef %195) #8
  br label %198

198:                                              ; preds = %197, %184
  %199 = load ptr, ptr @PL_comppad, align 8, !tbaa !53
  call void @Perl_save_pushptr(ptr noundef %199, i32 noundef 7) #8
  %200 = getelementptr inbounds %struct.padlist, ptr %71, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !103
  %202 = load ptr, ptr %28, align 8, !tbaa !46
  %203 = getelementptr inbounds %struct.xpvcv, ptr %202, i64 0, i32 13
  %204 = load i32, ptr %203, align 4, !tbaa !61
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds ptr, ptr %201, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !53
  store ptr %207, ptr @PL_comppad, align 8, !tbaa !53
  %208 = getelementptr inbounds %struct.av, ptr %207, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !52
  store ptr %209, ptr @PL_curpad, align 8, !tbaa !53
  %210 = load ptr, ptr %28, align 8, !tbaa !46
  %211 = getelementptr inbounds %struct.xpvcv, ptr %210, i64 0, i32 5
  %212 = load ptr, ptr %211, align 8, !tbaa !52
  %213 = icmp sgt i32 %16, 1
  br i1 %213, label %214, label %309

214:                                              ; preds = %198
  %215 = shl i64 %14, 29
  %216 = add i64 %215, -4294967296
  %217 = ashr i64 %216, 32
  br label %218

218:                                              ; preds = %214, %304
  %219 = phi i64 [ 1, %214 ], [ %306, %304 ]
  %220 = phi i32 [ 0, %214 ], [ %305, %304 ]
  %221 = getelementptr inbounds ptr, ptr %69, i64 %219
  %222 = load ptr, ptr %221, align 8, !tbaa !53
  %223 = load ptr, ptr %48, align 8, !tbaa !52
  store ptr %222, ptr %223, align 8, !tbaa !57
  %224 = icmp slt i64 %219, %217
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = getelementptr ptr, ptr %221, i64 1
  %227 = load ptr, ptr %226, align 8, !tbaa !53
  br label %228

228:                                              ; preds = %218, %225
  %229 = phi ptr [ %227, %225 ], [ @PL_sv_undef, %218 ]
  %230 = load ptr, ptr %50, align 8, !tbaa !52
  store ptr %229, ptr %230, align 8, !tbaa !57
  store ptr %212, ptr @PL_op, align 8, !tbaa !53
  %231 = load ptr, ptr @PL_runops, align 8, !tbaa !53
  %232 = call i32 %231() #8
  %233 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %234 = load ptr, ptr %233, align 8, !tbaa !53
  store ptr %234, ptr @PL_Sv, align 8, !tbaa !53
  %235 = icmp eq ptr %234, null
  br i1 %235, label %304, label %236

236:                                              ; preds = %228
  %237 = getelementptr inbounds %struct.sv, ptr %234, i64 0, i32 2
  %238 = load i32, ptr %237, align 4, !tbaa !62
  %239 = and i32 %238, 2097152
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %236
  %242 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %234, i32 noundef 2) #8
  br label %292

243:                                              ; preds = %236
  %244 = and i32 %238, 65280
  %245 = icmp ne i32 %244, 0
  %246 = and i32 %238, 255
  %247 = icmp eq i32 %246, 8
  %248 = or i1 %245, %247
  %249 = and i32 %238, 16777471
  %250 = icmp eq i32 %249, 16777226
  %251 = or i1 %250, %248
  br i1 %251, label %252, label %304

252:                                              ; preds = %243
  %253 = and i32 %238, 1024
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %269, label %255

255:                                              ; preds = %252
  %256 = load ptr, ptr %234, align 8, !tbaa !64
  %257 = icmp eq ptr %256, null
  br i1 %257, label %304, label %258

258:                                              ; preds = %255
  %259 = getelementptr inbounds %struct.xpv, ptr %256, i64 0, i32 2
  %260 = load i64, ptr %259, align 8, !tbaa !70
  %261 = icmp ugt i64 %260, 1
  br i1 %261, label %294, label %262

262:                                              ; preds = %258
  %263 = icmp eq i64 %260, 0
  br i1 %263, label %304, label %264

264:                                              ; preds = %262
  %265 = getelementptr inbounds %struct.sv, ptr %234, i64 0, i32 3
  %266 = load ptr, ptr %265, align 8, !tbaa !52
  %267 = load i8, ptr %266, align 1, !tbaa !52
  %268 = icmp ne i8 %267, 48
  br label %292

269:                                              ; preds = %252
  %270 = and i32 %238, 768
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %290, label %272

272:                                              ; preds = %269
  %273 = and i32 %238, 256
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %272
  %276 = load ptr, ptr %234, align 8, !tbaa !64
  %277 = getelementptr inbounds %struct.xpviv, ptr %276, i64 0, i32 4
  %278 = load i64, ptr %277, align 8, !tbaa !52
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %294

280:                                              ; preds = %275, %272
  %281 = and i32 %238, 512
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %304, label %283

283:                                              ; preds = %280
  %284 = load ptr, ptr %234, align 8, !tbaa !64
  %285 = getelementptr inbounds %struct.xpvnv, ptr %284, i64 0, i32 5
  %286 = load double, ptr %285, align 8, !tbaa !52
  %287 = fcmp uno double %286, 0.000000e+00
  br i1 %287, label %294, label %288

288:                                              ; preds = %283
  %289 = fcmp une double %286, 0.000000e+00
  br label %292

290:                                              ; preds = %269
  %291 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %234, i32 noundef 0) #8
  br label %292

292:                                              ; preds = %288, %264, %290, %241
  %293 = phi i1 [ %242, %241 ], [ %291, %290 ], [ %268, %264 ], [ %289, %288 ]
  br i1 %293, label %294, label %304

294:                                              ; preds = %283, %258, %275, %292
  switch i32 %39, label %304 [
    i32 3, label %295
    i32 2, label %302
  ]

295:                                              ; preds = %294
  %296 = call ptr @Perl_newSVsv(ptr noundef %222) #8
  %297 = sext i32 %220 to i64
  %298 = getelementptr inbounds ptr, ptr %69, i64 %297
  store ptr %296, ptr %298, align 8, !tbaa !53
  %299 = call ptr @Perl_newSVsv(ptr noundef %229) #8
  %300 = add nsw i32 %220, 2
  %301 = getelementptr ptr, ptr %298, i64 1
  store ptr %299, ptr %301, align 8, !tbaa !53
  br label %304

302:                                              ; preds = %294
  %303 = add nsw i32 %220, 1
  br label %304

304:                                              ; preds = %294, %243, %255, %262, %280, %228, %295, %302, %292
  %305 = phi i32 [ %300, %295 ], [ %303, %302 ], [ %220, %292 ], [ %220, %228 ], [ %220, %280 ], [ %220, %262 ], [ %220, %255 ], [ %220, %243 ], [ %220, %294 ]
  %306 = add nuw i64 %219, 2
  %307 = trunc i64 %306 to i32
  %308 = icmp slt i32 %307, %16
  br i1 %308, label %218, label %309, !llvm.loop !113

309:                                              ; preds = %304, %198
  %310 = phi i32 [ 0, %198 ], [ %305, %304 ]
  %311 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %312 = getelementptr inbounds %struct.stackinfo, ptr %311, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !100
  %314 = getelementptr inbounds %struct.stackinfo, ptr %311, i64 0, i32 4
  %315 = load i32, ptr %314, align 8, !tbaa !92
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.context, ptr %313, i64 %316, i32 0, i32 0, i32 11
  %318 = load i32, ptr %317, align 8, !tbaa !52
  %319 = load ptr, ptr %28, align 8, !tbaa !46
  %320 = getelementptr inbounds %struct.xpvcv, ptr %319, i64 0, i32 13
  store i32 %318, ptr %320, align 4, !tbaa !61
  %321 = icmp eq i32 %318, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %309
  %323 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %324 = load i32, ptr %323, align 8, !tbaa !102
  %325 = icmp ugt i32 %324, 1
  br i1 %325, label %326, label %328

326:                                              ; preds = %322
  %327 = add i32 %324, -1
  store i32 %327, ptr %323, align 8, !tbaa !102
  br label %329

328:                                              ; preds = %322
  call void @Perl_sv_free2(ptr noundef nonnull %28, i32 noundef %324) #8
  br label %329

329:                                              ; preds = %328, %326, %309
  %330 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %331 = getelementptr inbounds %struct.stackinfo, ptr %330, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !100
  %333 = getelementptr inbounds %struct.stackinfo, ptr %330, i64 0, i32 4
  %334 = load i32, ptr %333, align 8, !tbaa !92
  %335 = add nsw i32 %334, -1
  store i32 %335, ptr %333, align 8, !tbaa !92
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds %struct.context, ptr %332, i64 %336
  %338 = getelementptr inbounds %struct.block, ptr %337, i64 0, i32 4
  %339 = load ptr, ptr %338, align 8, !tbaa !52
  store ptr %339, ptr @PL_curcop, align 8, !tbaa !53
  %340 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %341 = getelementptr inbounds %struct.block, ptr %337, i64 0, i32 5
  %342 = load i32, ptr %341, align 8, !tbaa !52
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, ptr %340, i64 %343
  store ptr %344, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %345 = getelementptr inbounds %struct.block, ptr %337, i64 0, i32 6
  %346 = load i32, ptr %345, align 4, !tbaa !52
  store i32 %346, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %347 = getelementptr inbounds %struct.block, ptr %337, i64 0, i32 7
  %348 = load ptr, ptr %347, align 8, !tbaa !52
  store ptr %348, ptr @PL_curpm, align 8, !tbaa !53
  %349 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %350 = getelementptr inbounds %struct.stackinfo, ptr %330, i64 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !90
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %354

353:                                              ; preds = %329
  call void @Perl_croak_popstack() #8
  br label %354

354:                                              ; preds = %329, %353
  %355 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %356 = ptrtoint ptr %349 to i64
  %357 = ptrtoint ptr %355 to i64
  %358 = sub i64 %356, %357
  %359 = ashr exact i64 %358, 3
  %360 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %361 = load ptr, ptr %360, align 8, !tbaa !94
  %362 = getelementptr inbounds %struct.xpvav, ptr %361, i64 0, i32 2
  store i64 %359, ptr %362, align 8, !tbaa !96
  %363 = load ptr, ptr %351, align 8, !tbaa !93
  %364 = getelementptr inbounds %struct.av, ptr %363, i64 0, i32 3
  %365 = load ptr, ptr %364, align 8, !tbaa !52
  store ptr %365, ptr @PL_stack_base, align 8, !tbaa !53
  %366 = load ptr, ptr %351, align 8, !tbaa !93
  %367 = load ptr, ptr %366, align 8, !tbaa !94
  %368 = getelementptr inbounds %struct.xpvav, ptr %367, i64 0, i32 3
  %369 = load i64, ptr %368, align 8, !tbaa !98
  %370 = getelementptr inbounds ptr, ptr %365, i64 %369
  store ptr %370, ptr @PL_stack_max, align 8, !tbaa !53
  %371 = load ptr, ptr %351, align 8, !tbaa !93
  %372 = load ptr, ptr %371, align 8, !tbaa !94
  %373 = getelementptr inbounds %struct.xpvav, ptr %372, i64 0, i32 2
  %374 = load i64, ptr %373, align 8, !tbaa !96
  %375 = getelementptr inbounds ptr, ptr %365, i64 %374
  store ptr %375, ptr @PL_stack_sp, align 8, !tbaa !53
  %376 = load ptr, ptr %351, align 8, !tbaa !93
  store ptr %376, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %351, ptr @PL_curstackinfo, align 8, !tbaa !53
  %377 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %378 = getelementptr inbounds %struct.jmpenv, ptr %377, i64 0, i32 3
  store i8 %74, ptr %378, align 4, !tbaa !82
  call void @Perl_pop_scope() #8
  %379 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %380 = icmp eq i32 %39, 3
  %381 = icmp sgt i32 %310, 0
  %382 = select i1 %380, i1 %381, i1 false
  br i1 %382, label %383, label %507

383:                                              ; preds = %354
  %384 = zext i32 %310 to i64
  br label %385

385:                                              ; preds = %383, %385
  %386 = phi i64 [ 0, %383 ], [ %390, %385 ]
  %387 = getelementptr inbounds ptr, ptr %69, i64 %386
  %388 = load ptr, ptr %387, align 8, !tbaa !53
  %389 = call ptr @Perl_sv_2mortal(ptr noundef %388) #8
  %390 = add nuw nsw i64 %386, 1
  %391 = icmp eq i64 %390, %384
  br i1 %391, label %507, label %385, !llvm.loop !114

392:                                              ; preds = %59, %503
  %393 = phi i64 [ 1, %59 ], [ %505, %503 ]
  %394 = phi i32 [ 0, %59 ], [ %504, %503 ]
  %395 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %396 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %397 = getelementptr ptr, ptr %396, i64 %393
  %398 = getelementptr ptr, ptr %397, i64 %62
  %399 = load ptr, ptr %398, align 8, !tbaa !53
  %400 = load ptr, ptr %48, align 8, !tbaa !52
  store ptr %399, ptr %400, align 8, !tbaa !57
  %401 = icmp slt i64 %393, %65
  br i1 %401, label %402, label %409

402:                                              ; preds = %392
  %403 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %404 = trunc i64 %393 to i32
  %405 = add i32 %60, %404
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds ptr, ptr %403, i64 %406
  %408 = load ptr, ptr %407, align 8, !tbaa !53
  br label %409

409:                                              ; preds = %392, %402
  %410 = phi ptr [ %408, %402 ], [ @PL_sv_undef, %392 ]
  %411 = load ptr, ptr %50, align 8, !tbaa !52
  store ptr %410, ptr %411, align 8, !tbaa !57
  %412 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %413 = getelementptr inbounds i32, ptr %412, i64 1
  store ptr %413, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %414 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !53
  %415 = icmp eq ptr %413, %414
  br i1 %415, label %416, label %418

416:                                              ; preds = %409
  %417 = call ptr @Perl_markstack_grow() #8
  br label %418

418:                                              ; preds = %409, %416
  %419 = phi ptr [ %417, %416 ], [ %413, %409 ]
  %420 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %421 = ptrtoint ptr %395 to i64
  %422 = ptrtoint ptr %420 to i64
  %423 = sub i64 %421, %422
  %424 = lshr exact i64 %423, 3
  %425 = trunc i64 %424 to i32
  store i32 %425, ptr %419, align 4, !tbaa !61
  %426 = call i32 @Perl_call_sv(ptr noundef nonnull %28, i32 noundef 2) #8
  %427 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %428 = load ptr, ptr %427, align 8, !tbaa !53
  store ptr %428, ptr @PL_Sv, align 8, !tbaa !53
  %429 = icmp eq ptr %428, null
  br i1 %429, label %503, label %430

430:                                              ; preds = %418
  %431 = getelementptr inbounds %struct.sv, ptr %428, i64 0, i32 2
  %432 = load i32, ptr %431, align 4, !tbaa !62
  %433 = and i32 %432, 2097152
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %437, label %435

435:                                              ; preds = %430
  %436 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %428, i32 noundef 2) #8
  br label %486

437:                                              ; preds = %430
  %438 = and i32 %432, 65280
  %439 = icmp ne i32 %438, 0
  %440 = and i32 %432, 255
  %441 = icmp eq i32 %440, 8
  %442 = or i1 %439, %441
  %443 = and i32 %432, 16777471
  %444 = icmp eq i32 %443, 16777226
  %445 = or i1 %444, %442
  br i1 %445, label %446, label %503

446:                                              ; preds = %437
  %447 = and i32 %432, 1024
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %463, label %449

449:                                              ; preds = %446
  %450 = load ptr, ptr %428, align 8, !tbaa !64
  %451 = icmp eq ptr %450, null
  br i1 %451, label %503, label %452

452:                                              ; preds = %449
  %453 = getelementptr inbounds %struct.xpv, ptr %450, i64 0, i32 2
  %454 = load i64, ptr %453, align 8, !tbaa !70
  %455 = icmp ugt i64 %454, 1
  br i1 %455, label %488, label %456

456:                                              ; preds = %452
  %457 = icmp eq i64 %454, 0
  br i1 %457, label %503, label %458

458:                                              ; preds = %456
  %459 = getelementptr inbounds %struct.sv, ptr %428, i64 0, i32 3
  %460 = load ptr, ptr %459, align 8, !tbaa !52
  %461 = load i8, ptr %460, align 1, !tbaa !52
  %462 = icmp ne i8 %461, 48
  br label %486

463:                                              ; preds = %446
  %464 = and i32 %432, 768
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %484, label %466

466:                                              ; preds = %463
  %467 = and i32 %432, 256
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %474, label %469

469:                                              ; preds = %466
  %470 = load ptr, ptr %428, align 8, !tbaa !64
  %471 = getelementptr inbounds %struct.xpviv, ptr %470, i64 0, i32 4
  %472 = load i64, ptr %471, align 8, !tbaa !52
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %474, label %488

474:                                              ; preds = %469, %466
  %475 = and i32 %432, 512
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %503, label %477

477:                                              ; preds = %474
  %478 = load ptr, ptr %428, align 8, !tbaa !64
  %479 = getelementptr inbounds %struct.xpvnv, ptr %478, i64 0, i32 5
  %480 = load double, ptr %479, align 8, !tbaa !52
  %481 = fcmp uno double %480, 0.000000e+00
  br i1 %481, label %488, label %482

482:                                              ; preds = %477
  %483 = fcmp une double %480, 0.000000e+00
  br label %486

484:                                              ; preds = %463
  %485 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %428, i32 noundef 0) #8
  br label %486

486:                                              ; preds = %482, %458, %484, %435
  %487 = phi i1 [ %436, %435 ], [ %485, %484 ], [ %462, %458 ], [ %483, %482 ]
  br i1 %487, label %488, label %503

488:                                              ; preds = %477, %452, %469, %486
  switch i32 %39, label %503 [
    i32 3, label %489
    i32 2, label %501
  ]

489:                                              ; preds = %488
  %490 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %399, i32 noundef 2) #8
  %491 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %492 = add nsw i32 %394, %9
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds ptr, ptr %491, i64 %493
  store ptr %490, ptr %494, align 8, !tbaa !53
  %495 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %410, i32 noundef 2) #8
  %496 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %497 = add nsw i32 %394, 2
  %498 = add i32 %61, %394
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds ptr, ptr %496, i64 %499
  store ptr %495, ptr %500, align 8, !tbaa !53
  br label %503

501:                                              ; preds = %488
  %502 = add nsw i32 %394, 1
  br label %503

503:                                              ; preds = %488, %437, %449, %456, %474, %418, %489, %501, %486
  %504 = phi i32 [ %497, %489 ], [ %502, %501 ], [ %394, %486 ], [ %394, %418 ], [ %394, %474 ], [ %394, %456 ], [ %394, %449 ], [ %394, %437 ], [ %394, %488 ]
  %505 = add nuw nsw i64 %393, 2
  %506 = icmp ult i64 %505, %66
  br i1 %506, label %392, label %507, !llvm.loop !115

507:                                              ; preds = %503, %385, %57, %354
  %508 = phi i32 [ %310, %354 ], [ 0, %57 ], [ %310, %385 ], [ %504, %503 ]
  %509 = phi ptr [ %379, %354 ], [ %23, %57 ], [ %379, %385 ], [ %23, %503 ]
  switch i32 %39, label %523 [
    i32 3, label %510
    i32 2, label %516
  ]

510:                                              ; preds = %507
  %511 = sext i32 %508 to i64
  %512 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %513 = getelementptr inbounds ptr, ptr %512, i64 %25
  %514 = getelementptr ptr, ptr %513, i64 %511
  %515 = getelementptr ptr, ptr %514, i64 -1
  br label %524

516:                                              ; preds = %507
  %517 = sext i32 %508 to i64
  %518 = call ptr @Perl_newSViv(i64 noundef %517) #8
  %519 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %520 = getelementptr inbounds ptr, ptr %519, i64 %25
  store ptr %518, ptr %520, align 8, !tbaa !53
  %521 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %522 = getelementptr inbounds ptr, ptr %521, i64 %25
  br label %524

523:                                              ; preds = %507
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  store ptr %509, ptr @PL_stack_sp, align 8, !tbaa !53
  br label %526

524:                                              ; preds = %516, %510
  %525 = phi ptr [ %522, %516 ], [ %515, %510 ]
  store ptr %525, ptr @PL_stack_sp, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  br label %526

526:                                              ; preds = %524, %523
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_List__Util_pairmap(ptr noundef %0) #0 !prof !60 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %7 = load i32, ptr %5, align 4, !tbaa !61
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.44) #8
  br label %19

19:                                               ; preds = %18, %1
  %20 = shl i64 %14, 29
  %21 = ashr i64 %20, 32
  %22 = sub nsw i64 0, %21
  %23 = getelementptr inbounds ptr, ptr %4, i64 %22
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %25 = sext i32 %9 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %28 = call ptr @Perl_sv_2cv(ptr noundef %27, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #8
  %29 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 5
  %31 = load i8, ptr %30, align 2, !tbaa !101
  %32 = and i8 %31, 3
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %19
  %35 = zext nneg i8 %32 to i32
  br label %38

36:                                               ; preds = %19
  %37 = call i32 @Perl_block_gimme() #8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = and i32 %16, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = call zeroext i1 @Perl_ckwarn(i32 noundef 12) #8
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.50) #8
  br label %45

45:                                               ; preds = %44, %42, %38
  %46 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef 3) #8
  %47 = call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef 3) #8
  %48 = getelementptr inbounds %struct.gv, ptr %46, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !52
  call void @Perl_save_sptr(ptr noundef %49) #8
  %50 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  call void @Perl_save_sptr(ptr noundef %51) #8
  %52 = load ptr, ptr %28, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.xpvcv, ptr %52, i64 0, i32 12
  %54 = load i32, ptr %53, align 4, !tbaa !80
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %45
  %58 = icmp sgt i32 %16, 1
  br i1 %58, label %59, label %459

59:                                               ; preds = %57
  %60 = add i32 %7, 2
  %61 = icmp eq i32 %39, 3
  %62 = sext i32 %9 to i64
  br label %372

63:                                               ; preds = %45
  %64 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %65 = getelementptr inbounds ptr, ptr %64, i64 %25
  %66 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %67 = getelementptr inbounds %struct.op, ptr %66, i64 0, i32 5
  %68 = load i8, ptr %67, align 2, !tbaa !101
  %69 = and i8 %68, 3
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %63
  %72 = zext nneg i8 %69 to i32
  br label %75

73:                                               ; preds = %63
  %74 = call i32 @Perl_block_gimme() #8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load ptr, ptr %28, align 8, !tbaa !46
  %78 = getelementptr inbounds %struct.xpvcv, ptr %77, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !52
  call void @Perl_push_scope() #8
  %80 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %81 = getelementptr inbounds %struct.jmpenv, ptr %80, i64 0, i32 3
  %82 = load i8, ptr %81, align 4, !tbaa !82, !range !85, !noundef !86
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #8
  %83 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !87
  store i64 %83, ptr @PL_tmps_floor, align 8, !tbaa !87
  call void @Perl_save_vptr(ptr noundef nonnull @PL_op) #8
  %84 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %85 = getelementptr inbounds %struct.jmpenv, ptr %84, i64 0, i32 3
  store i8 1, ptr %85, align 4, !tbaa !82
  %86 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %87 = getelementptr inbounds %struct.stackinfo, ptr %86, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !88
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %75
  %91 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #8
  %92 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %93 = getelementptr inbounds %struct.stackinfo, ptr %91, i64 0, i32 2
  store ptr %92, ptr %93, align 8, !tbaa !90
  %94 = getelementptr inbounds %struct.stackinfo, ptr %92, i64 0, i32 3
  store ptr %91, ptr %94, align 8, !tbaa !88
  br label %95

95:                                               ; preds = %90, %75
  %96 = phi ptr [ %88, %75 ], [ %91, %90 ]
  %97 = getelementptr inbounds %struct.stackinfo, ptr %96, i64 0, i32 6
  store i32 3, ptr %97, align 8, !tbaa !91
  %98 = getelementptr inbounds %struct.stackinfo, ptr %96, i64 0, i32 4
  store i32 -1, ptr %98, align 8, !tbaa !92
  %99 = load ptr, ptr %96, align 8, !tbaa !93
  %100 = load ptr, ptr %99, align 8, !tbaa !94
  %101 = getelementptr inbounds %struct.xpvav, ptr %100, i64 0, i32 2
  store i64 0, ptr %101, align 8, !tbaa !96
  %102 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %103 = ptrtoint ptr %23 to i64
  %104 = ptrtoint ptr %102 to i64
  %105 = sub i64 %103, %104
  %106 = ashr exact i64 %105, 3
  %107 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %108 = load ptr, ptr %107, align 8, !tbaa !94
  %109 = getelementptr inbounds %struct.xpvav, ptr %108, i64 0, i32 2
  store i64 %106, ptr %109, align 8, !tbaa !96
  %110 = getelementptr inbounds %struct.av, ptr %99, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !52
  store ptr %111, ptr @PL_stack_base, align 8, !tbaa !53
  %112 = load ptr, ptr %96, align 8, !tbaa !93
  %113 = load ptr, ptr %112, align 8, !tbaa !94
  %114 = getelementptr inbounds %struct.xpvav, ptr %113, i64 0, i32 3
  %115 = load i64, ptr %114, align 8, !tbaa !98
  %116 = getelementptr inbounds ptr, ptr %111, i64 %115
  store ptr %116, ptr @PL_stack_max, align 8, !tbaa !53
  %117 = load ptr, ptr %96, align 8, !tbaa !93
  %118 = load ptr, ptr %117, align 8, !tbaa !94
  %119 = getelementptr inbounds %struct.xpvav, ptr %118, i64 0, i32 2
  %120 = load i64, ptr %119, align 8, !tbaa !96
  %121 = getelementptr inbounds ptr, ptr %111, i64 %120
  store ptr %121, ptr @PL_stack_sp, align 8, !tbaa !53
  %122 = load ptr, ptr %96, align 8, !tbaa !93
  store ptr %122, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %96, ptr @PL_curstackinfo, align 8, !tbaa !53
  %123 = getelementptr inbounds %struct.stackinfo, ptr %96, i64 0, i32 5
  %124 = load i32, ptr %123, align 4, !tbaa !99
  %125 = icmp sgt i32 %124, -1
  br i1 %125, label %126, label %127

126:                                              ; preds = %95
  store i32 0, ptr %98, align 8, !tbaa !92
  br label %131

127:                                              ; preds = %95
  %128 = call i32 @Perl_cxinc() #8
  %129 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %130 = getelementptr inbounds %struct.stackinfo, ptr %129, i64 0, i32 4
  store i32 %128, ptr %130, align 8, !tbaa !92
  br label %131

131:                                              ; preds = %127, %126
  %132 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %133 = getelementptr inbounds %struct.stackinfo, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !100
  %135 = getelementptr inbounds %struct.stackinfo, ptr %132, i64 0, i32 4
  %136 = load i32, ptr %135, align 8, !tbaa !92
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.context, ptr %134, i64 %137
  store i8 24, ptr %138, align 8, !tbaa !52
  %139 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %140 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %141 = ptrtoint ptr %139 to i64
  %142 = ptrtoint ptr %140 to i64
  %143 = sub i64 %141, %142
  %144 = lshr exact i64 %143, 3
  %145 = trunc i64 %144 to i32
  %146 = getelementptr inbounds %struct.block, ptr %138, i64 0, i32 3
  store i32 %145, ptr %146, align 4, !tbaa !52
  %147 = load ptr, ptr @PL_curcop, align 8, !tbaa !53
  %148 = getelementptr inbounds %struct.block, ptr %138, i64 0, i32 4
  store ptr %147, ptr %148, align 8, !tbaa !52
  %149 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %150 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %151 = ptrtoint ptr %149 to i64
  %152 = ptrtoint ptr %150 to i64
  %153 = sub i64 %151, %152
  %154 = lshr exact i64 %153, 2
  %155 = trunc i64 %154 to i32
  %156 = getelementptr inbounds %struct.block, ptr %138, i64 0, i32 5
  store i32 %155, ptr %156, align 8, !tbaa !52
  %157 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %158 = getelementptr inbounds %struct.block, ptr %138, i64 0, i32 6
  store i32 %157, ptr %158, align 4, !tbaa !52
  %159 = load ptr, ptr @PL_curpm, align 8, !tbaa !53
  %160 = getelementptr inbounds %struct.block, ptr %138, i64 0, i32 7
  store ptr %159, ptr %160, align 8, !tbaa !52
  %161 = getelementptr inbounds %struct.block, ptr %138, i64 0, i32 1
  store i8 3, ptr %161, align 1, !tbaa !52
  %162 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %163 = getelementptr inbounds %struct.op, ptr %162, i64 0, i32 5
  %164 = load i8, ptr %163, align 2, !tbaa !101
  %165 = and i8 %164, 3
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %131
  %168 = getelementptr inbounds %struct.op, ptr %162, i64 0, i32 6
  %169 = load i8, ptr %168, align 1, !tbaa !75
  %170 = and i8 %169, -127
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %167
  %173 = call i32 @Perl_was_lvalue_sub() #8
  %174 = and i32 %173, 207
  %175 = or disjoint i32 %174, 48
  br label %176

176:                                              ; preds = %172, %167, %131
  %177 = phi i32 [ 177, %131 ], [ %175, %172 ], [ 48, %167 ]
  %178 = getelementptr inbounds %struct.block, ptr %138, i64 0, i32 8
  %179 = getelementptr inbounds %struct.block, ptr %138, i64 0, i32 8, i32 0, i32 1
  store ptr %28, ptr %179, align 8, !tbaa !52
  %180 = load ptr, ptr %28, align 8, !tbaa !46
  %181 = getelementptr inbounds %struct.xpvcv, ptr %180, i64 0, i32 13
  %182 = load i32, ptr %181, align 4, !tbaa !61
  %183 = getelementptr inbounds %struct.block, ptr %138, i64 0, i32 8, i32 0, i32 4
  store i32 %182, ptr %183, align 8, !tbaa !52
  store ptr null, ptr %178, align 8, !tbaa !52
  %184 = load ptr, ptr %28, align 8, !tbaa !46
  %185 = getelementptr inbounds %struct.xpvcv, ptr %184, i64 0, i32 13
  %186 = load i32, ptr %185, align 4, !tbaa !61
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %176
  %189 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %190 = load i32, ptr %189, align 8, !tbaa !102
  %191 = add i32 %190, 2
  store i32 %191, ptr %189, align 8, !tbaa !102
  call void @Perl_save_pushptr(ptr noundef nonnull %28, i32 noundef 11) #8
  br label %192

192:                                              ; preds = %188, %176
  %193 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %194 = getelementptr inbounds %struct.op, ptr %193, i64 0, i32 6
  %195 = load i8, ptr %194, align 1, !tbaa !75
  %196 = zext i8 %195 to i32
  %197 = and i32 %177, %196
  %198 = trunc i32 %197 to i16
  %199 = getelementptr inbounds %struct.block, ptr %138, i64 0, i32 2
  store i16 %198, ptr %199, align 2, !tbaa !52
  %200 = load ptr, ptr %28, align 8, !tbaa !46
  %201 = getelementptr inbounds %struct.xpvcv, ptr %200, i64 0, i32 13
  %202 = load i32, ptr %201, align 4, !tbaa !61
  %203 = add nsw i32 %202, 1
  store i32 %203, ptr %201, align 4, !tbaa !61
  %204 = icmp sgt i32 %202, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %192
  call void @Perl_pad_push(ptr noundef %79, i32 noundef %203) #8
  br label %206

206:                                              ; preds = %205, %192
  %207 = load ptr, ptr @PL_comppad, align 8, !tbaa !53
  call void @Perl_save_pushptr(ptr noundef %207, i32 noundef 7) #8
  %208 = getelementptr inbounds %struct.padlist, ptr %79, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !103
  %210 = load ptr, ptr %28, align 8, !tbaa !46
  %211 = getelementptr inbounds %struct.xpvcv, ptr %210, i64 0, i32 13
  %212 = load i32, ptr %211, align 4, !tbaa !61
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds ptr, ptr %209, i64 %213
  %215 = load ptr, ptr %214, align 8, !tbaa !53
  store ptr %215, ptr @PL_comppad, align 8, !tbaa !53
  %216 = getelementptr inbounds %struct.av, ptr %215, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !52
  store ptr %217, ptr @PL_curpad, align 8, !tbaa !53
  %218 = load ptr, ptr %28, align 8, !tbaa !46
  %219 = getelementptr inbounds %struct.xpvcv, ptr %218, i64 0, i32 5
  %220 = load ptr, ptr %219, align 8, !tbaa !52
  %221 = icmp sgt i32 %16, 1
  br i1 %221, label %222, label %290

222:                                              ; preds = %206, %286
  %223 = phi i32 [ %265, %286 ], [ %16, %206 ]
  %224 = phi ptr [ %264, %286 ], [ null, %206 ]
  %225 = phi i32 [ %288, %286 ], [ 1, %206 ]
  %226 = phi i32 [ %287, %286 ], [ 0, %206 ]
  %227 = icmp ne ptr %224, null
  %228 = sext i32 %225 to i64
  %229 = getelementptr inbounds ptr, ptr %224, i64 %228
  %230 = getelementptr ptr, ptr %65, i64 %228
  %231 = select i1 %227, ptr %229, ptr %230
  %232 = load ptr, ptr %231, align 8, !tbaa !53
  %233 = load ptr, ptr %48, align 8, !tbaa !52
  store ptr %232, ptr %233, align 8, !tbaa !57
  %234 = add nsw i32 %223, -1
  %235 = icmp slt i32 %225, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %222
  %237 = add nsw i32 %225, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds ptr, ptr %224, i64 %238
  %240 = getelementptr ptr, ptr %230, i64 1
  %241 = select i1 %227, ptr %239, ptr %240
  %242 = load ptr, ptr %241, align 8, !tbaa !53
  br label %243

243:                                              ; preds = %236, %222
  %244 = phi ptr [ @PL_sv_undef, %222 ], [ %242, %236 ]
  %245 = load ptr, ptr %50, align 8, !tbaa !52
  store ptr %244, ptr %245, align 8, !tbaa !57
  store ptr %220, ptr @PL_op, align 8, !tbaa !53
  %246 = load ptr, ptr @PL_runops, align 8, !tbaa !53
  %247 = call i32 %246() #8
  %248 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %249 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %250 = ptrtoint ptr %248 to i64
  %251 = ptrtoint ptr %249 to i64
  %252 = sub i64 %250, %251
  %253 = lshr exact i64 %252, 3
  %254 = trunc i64 %253 to i32
  %255 = icmp slt i32 %254, 3
  %256 = or i1 %227, %255
  br i1 %256, label %262, label %257

257:                                              ; preds = %243
  %258 = sub nsw i32 %223, %225
  %259 = sext i32 %258 to i64
  %260 = shl nsw i64 %259, 3
  %261 = call ptr @Perl_safesysmalloc(i64 noundef %260) #8
  call void @Perl_save_pushptr(ptr noundef %261, i32 noundef 10) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %261, ptr align 1 %230, i64 %260, i1 false)
  br label %262

262:                                              ; preds = %257, %243
  %263 = phi i32 [ %225, %243 ], [ 0, %257 ]
  %264 = phi ptr [ %224, %243 ], [ %261, %257 ]
  %265 = phi i32 [ %223, %243 ], [ %258, %257 ]
  %266 = icmp sgt i32 %254, 0
  br i1 %266, label %267, label %286

267:                                              ; preds = %262
  %268 = sext i32 %226 to i64
  %269 = and i64 %253, 4294967295
  %270 = and i64 %253, 4294967295
  br label %271

271:                                              ; preds = %267, %271
  %272 = phi i64 [ 0, %267 ], [ %282, %271 ]
  %273 = phi i64 [ %268, %267 ], [ %280, %271 ]
  %274 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %275 = sub nsw i64 %272, %269
  %276 = getelementptr ptr, ptr %274, i64 %275
  %277 = getelementptr ptr, ptr %276, i64 1
  %278 = load ptr, ptr %277, align 8, !tbaa !53
  %279 = call ptr @Perl_newSVsv(ptr noundef %278) #8
  %280 = add nsw i64 %273, 1
  %281 = getelementptr inbounds ptr, ptr %65, i64 %273
  store ptr %279, ptr %281, align 8, !tbaa !53
  %282 = add nuw nsw i64 %272, 1
  %283 = icmp eq i64 %282, %270
  br i1 %283, label %284, label %271, !llvm.loop !116

284:                                              ; preds = %271
  %285 = trunc i64 %280 to i32
  br label %286

286:                                              ; preds = %284, %262
  %287 = phi i32 [ %226, %262 ], [ %285, %284 ]
  %288 = add nsw i32 %263, 2
  %289 = icmp slt i32 %288, %265
  br i1 %289, label %222, label %290, !llvm.loop !117

290:                                              ; preds = %286, %206
  %291 = phi i32 [ 0, %206 ], [ %287, %286 ]
  %292 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %293 = getelementptr inbounds %struct.stackinfo, ptr %292, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !100
  %295 = getelementptr inbounds %struct.stackinfo, ptr %292, i64 0, i32 4
  %296 = load i32, ptr %295, align 8, !tbaa !92
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.context, ptr %294, i64 %297, i32 0, i32 0, i32 11
  %299 = load i32, ptr %298, align 8, !tbaa !52
  %300 = load ptr, ptr %28, align 8, !tbaa !46
  %301 = getelementptr inbounds %struct.xpvcv, ptr %300, i64 0, i32 13
  store i32 %299, ptr %301, align 4, !tbaa !61
  %302 = icmp eq i32 %299, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %290
  %304 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %305 = load i32, ptr %304, align 8, !tbaa !102
  %306 = icmp ugt i32 %305, 1
  br i1 %306, label %307, label %309

307:                                              ; preds = %303
  %308 = add i32 %305, -1
  store i32 %308, ptr %304, align 8, !tbaa !102
  br label %310

309:                                              ; preds = %303
  call void @Perl_sv_free2(ptr noundef nonnull %28, i32 noundef %305) #8
  br label %310

310:                                              ; preds = %309, %307, %290
  %311 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !53
  %312 = getelementptr inbounds %struct.stackinfo, ptr %311, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !100
  %314 = getelementptr inbounds %struct.stackinfo, ptr %311, i64 0, i32 4
  %315 = load i32, ptr %314, align 8, !tbaa !92
  %316 = add nsw i32 %315, -1
  store i32 %316, ptr %314, align 8, !tbaa !92
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds %struct.context, ptr %313, i64 %317
  %319 = getelementptr inbounds %struct.block, ptr %318, i64 0, i32 4
  %320 = load ptr, ptr %319, align 8, !tbaa !52
  store ptr %320, ptr @PL_curcop, align 8, !tbaa !53
  %321 = load ptr, ptr @PL_markstack, align 8, !tbaa !53
  %322 = getelementptr inbounds %struct.block, ptr %318, i64 0, i32 5
  %323 = load i32, ptr %322, align 8, !tbaa !52
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, ptr %321, i64 %324
  store ptr %325, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %326 = getelementptr inbounds %struct.block, ptr %318, i64 0, i32 6
  %327 = load i32, ptr %326, align 4, !tbaa !52
  store i32 %327, ptr @PL_scopestack_ix, align 4, !tbaa !61
  %328 = getelementptr inbounds %struct.block, ptr %318, i64 0, i32 7
  %329 = load ptr, ptr %328, align 8, !tbaa !52
  store ptr %329, ptr @PL_curpm, align 8, !tbaa !53
  %330 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %331 = getelementptr inbounds %struct.stackinfo, ptr %311, i64 0, i32 2
  %332 = load ptr, ptr %331, align 8, !tbaa !90
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %335

334:                                              ; preds = %310
  call void @Perl_croak_popstack() #8
  br label %335

335:                                              ; preds = %310, %334
  %336 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %337 = ptrtoint ptr %330 to i64
  %338 = ptrtoint ptr %336 to i64
  %339 = sub i64 %337, %338
  %340 = ashr exact i64 %339, 3
  %341 = load ptr, ptr @PL_curstack, align 8, !tbaa !53
  %342 = load ptr, ptr %341, align 8, !tbaa !94
  %343 = getelementptr inbounds %struct.xpvav, ptr %342, i64 0, i32 2
  store i64 %340, ptr %343, align 8, !tbaa !96
  %344 = load ptr, ptr %332, align 8, !tbaa !93
  %345 = getelementptr inbounds %struct.av, ptr %344, i64 0, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !52
  store ptr %346, ptr @PL_stack_base, align 8, !tbaa !53
  %347 = load ptr, ptr %332, align 8, !tbaa !93
  %348 = load ptr, ptr %347, align 8, !tbaa !94
  %349 = getelementptr inbounds %struct.xpvav, ptr %348, i64 0, i32 3
  %350 = load i64, ptr %349, align 8, !tbaa !98
  %351 = getelementptr inbounds ptr, ptr %346, i64 %350
  store ptr %351, ptr @PL_stack_max, align 8, !tbaa !53
  %352 = load ptr, ptr %332, align 8, !tbaa !93
  %353 = load ptr, ptr %352, align 8, !tbaa !94
  %354 = getelementptr inbounds %struct.xpvav, ptr %353, i64 0, i32 2
  %355 = load i64, ptr %354, align 8, !tbaa !96
  %356 = getelementptr inbounds ptr, ptr %346, i64 %355
  store ptr %356, ptr @PL_stack_sp, align 8, !tbaa !53
  %357 = load ptr, ptr %332, align 8, !tbaa !93
  store ptr %357, ptr @PL_curstack, align 8, !tbaa !53
  store ptr %332, ptr @PL_curstackinfo, align 8, !tbaa !53
  %358 = load ptr, ptr @PL_top_env, align 8, !tbaa !53
  %359 = getelementptr inbounds %struct.jmpenv, ptr %358, i64 0, i32 3
  store i8 %82, ptr %359, align 4, !tbaa !82
  call void @Perl_pop_scope() #8
  %360 = icmp eq i32 %76, 3
  %361 = icmp sgt i32 %291, 0
  %362 = select i1 %360, i1 %361, i1 false
  br i1 %362, label %363, label %459

363:                                              ; preds = %335
  %364 = zext i32 %291 to i64
  br label %365

365:                                              ; preds = %363, %365
  %366 = phi i64 [ 0, %363 ], [ %370, %365 ]
  %367 = getelementptr inbounds ptr, ptr %65, i64 %366
  %368 = load ptr, ptr %367, align 8, !tbaa !53
  %369 = call ptr @Perl_sv_2mortal(ptr noundef %368) #8
  %370 = add nuw nsw i64 %366, 1
  %371 = icmp eq i64 %370, %364
  br i1 %371, label %459, label %365, !llvm.loop !118

372:                                              ; preds = %59, %455
  %373 = phi i32 [ %16, %59 ], [ %430, %455 ]
  %374 = phi ptr [ null, %59 ], [ %429, %455 ]
  %375 = phi i32 [ 1, %59 ], [ %457, %455 ]
  %376 = phi i32 [ 0, %59 ], [ %456, %455 ]
  %377 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %378 = icmp eq ptr %374, null
  %379 = sext i32 %375 to i64
  %380 = getelementptr inbounds ptr, ptr %374, i64 %379
  %381 = load ptr, ptr @PL_stack_base, align 8
  %382 = add nsw i32 %375, %9
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds ptr, ptr %381, i64 %383
  %385 = select i1 %378, ptr %384, ptr %380
  %386 = load ptr, ptr %385, align 8, !tbaa !53
  %387 = load ptr, ptr %48, align 8, !tbaa !52
  store ptr %386, ptr %387, align 8, !tbaa !57
  %388 = add nsw i32 %373, -1
  %389 = icmp slt i32 %375, %388
  br i1 %389, label %390, label %398

390:                                              ; preds = %372
  %391 = load ptr, ptr @PL_stack_base, align 8
  %392 = select i1 %378, i32 %60, i32 1
  %393 = add i32 %392, %375
  %394 = select i1 %378, ptr %391, ptr %374
  %395 = sext i32 %393 to i64
  %396 = getelementptr inbounds ptr, ptr %394, i64 %395
  %397 = load ptr, ptr %396, align 8, !tbaa !53
  br label %398

398:                                              ; preds = %390, %372
  %399 = phi ptr [ @PL_sv_undef, %372 ], [ %397, %390 ]
  %400 = load ptr, ptr %50, align 8, !tbaa !52
  store ptr %399, ptr %400, align 8, !tbaa !57
  %401 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %402 = getelementptr inbounds i32, ptr %401, i64 1
  store ptr %402, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %403 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !53
  %404 = icmp eq ptr %402, %403
  br i1 %404, label %405, label %407

405:                                              ; preds = %398
  %406 = call ptr @Perl_markstack_grow() #8
  br label %407

407:                                              ; preds = %398, %405
  %408 = phi ptr [ %406, %405 ], [ %402, %398 ]
  %409 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %410 = ptrtoint ptr %377 to i64
  %411 = ptrtoint ptr %409 to i64
  %412 = sub i64 %410, %411
  %413 = lshr exact i64 %412, 3
  %414 = trunc i64 %413 to i32
  store i32 %414, ptr %408, align 4, !tbaa !61
  %415 = call i32 @Perl_call_sv(ptr noundef nonnull %28, i32 noundef 3) #8
  %416 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %417 = icmp sgt i32 %415, 2
  %418 = and i1 %378, %417
  %419 = select i1 %418, i1 %61, i1 false
  br i1 %419, label %420, label %427

420:                                              ; preds = %407
  %421 = sub nsw i32 %373, %375
  %422 = sext i32 %421 to i64
  %423 = shl nsw i64 %422, 3
  %424 = call ptr @Perl_safesysmalloc(i64 noundef %423) #8
  call void @Perl_save_pushptr(ptr noundef %424, i32 noundef 10) #8
  %425 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %426 = getelementptr inbounds ptr, ptr %425, i64 %383
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %424, ptr align 1 %426, i64 %423, i1 false)
  br label %427

427:                                              ; preds = %420, %407
  %428 = phi i32 [ 0, %420 ], [ %375, %407 ]
  %429 = phi ptr [ %424, %420 ], [ %374, %407 ]
  %430 = phi i32 [ %421, %420 ], [ %373, %407 ]
  br i1 %61, label %431, label %451

431:                                              ; preds = %427
  %432 = getelementptr ptr, ptr %416, i64 1
  %433 = icmp sgt i32 %415, 0
  br i1 %433, label %434, label %455

434:                                              ; preds = %431
  %435 = zext nneg i32 %415 to i64
  %436 = sext i32 %376 to i64
  %437 = zext nneg i32 %415 to i64
  br label %438

438:                                              ; preds = %434, %438
  %439 = phi i64 [ %436, %434 ], [ %446, %438 ]
  %440 = phi i64 [ 0, %434 ], [ %449, %438 ]
  %441 = sub nsw i64 %440, %435
  %442 = getelementptr ptr, ptr %432, i64 %441
  %443 = load ptr, ptr %442, align 8, !tbaa !53
  %444 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %443, i32 noundef 2) #8
  %445 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %446 = add nsw i64 %439, 1
  %447 = getelementptr ptr, ptr %445, i64 %439
  %448 = getelementptr ptr, ptr %447, i64 %62
  store ptr %444, ptr %448, align 8, !tbaa !53
  %449 = add nuw nsw i64 %440, 1
  %450 = icmp eq i64 %449, %437
  br i1 %450, label %453, label %438, !llvm.loop !119

451:                                              ; preds = %427
  %452 = add nsw i32 %415, %376
  br label %455

453:                                              ; preds = %438
  %454 = trunc i64 %446 to i32
  br label %455

455:                                              ; preds = %453, %431, %451
  %456 = phi i32 [ %452, %451 ], [ %376, %431 ], [ %454, %453 ]
  store ptr %416, ptr @PL_stack_sp, align 8, !tbaa !53
  %457 = add nsw i32 %428, 2
  %458 = icmp slt i32 %457, %430
  br i1 %458, label %372, label %459, !llvm.loop !120

459:                                              ; preds = %455, %365, %57, %335
  %460 = phi i32 [ %291, %335 ], [ 0, %57 ], [ %291, %365 ], [ %456, %455 ]
  %461 = icmp eq i32 %39, 3
  %462 = sext i32 %460 to i64
  br i1 %461, label %463, label %468

463:                                              ; preds = %459
  %464 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %465 = getelementptr inbounds ptr, ptr %464, i64 %25
  %466 = getelementptr ptr, ptr %465, i64 %462
  %467 = getelementptr ptr, ptr %466, i64 -1
  br label %475

468:                                              ; preds = %459
  %469 = call ptr @Perl_newSViv(i64 noundef %462) #8
  %470 = call ptr @Perl_sv_2mortal(ptr noundef %469) #8
  %471 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %472 = getelementptr inbounds ptr, ptr %471, i64 %25
  store ptr %470, ptr %472, align 8, !tbaa !53
  %473 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %474 = getelementptr inbounds ptr, ptr %473, i64 %25
  br label %475

475:                                              ; preds = %468, %463
  %476 = phi ptr [ %474, %468 ], [ %467, %463 ]
  store ptr %476, ptr @PL_stack_sp, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_List__Util_pairs(ptr nocapture readnone %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.51, i32 noundef 1) #8
  %16 = and i32 %14, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #8
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.52) #8
  br label %21

21:                                               ; preds = %20, %18, %1
  %22 = icmp sgt i32 %14, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %21
  %24 = add i32 %5, 2
  %25 = sext i32 %7 to i64
  %26 = shl i64 %12, 29
  %27 = add i64 %26, -4294967296
  %28 = ashr i64 %27, 32
  %29 = and i64 %13, 4294967295
  %30 = sext i32 %7 to i64
  br label %31

31:                                               ; preds = %23, %45
  %32 = phi i64 [ 0, %23 ], [ %59, %45 ]
  %33 = phi i64 [ 0, %23 ], [ %60, %45 ]
  %34 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %35 = getelementptr ptr, ptr %34, i64 %33
  %36 = getelementptr ptr, ptr %35, i64 %25
  %37 = load ptr, ptr %36, align 8, !tbaa !53
  %38 = icmp slt i64 %33, %28
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = trunc i64 %33 to i32
  %41 = add i32 %24, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %34, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !53
  br label %45

45:                                               ; preds = %31, %39
  %46 = phi ptr [ %44, %39 ], [ @PL_sv_undef, %31 ]
  %47 = tail call ptr @Perl_newSV_type(i32 noundef 11) #8
  %48 = tail call ptr @Perl_newSVsv(ptr noundef %37) #8
  tail call void @Perl_av_push(ptr noundef %47, ptr noundef %48) #8
  %49 = tail call ptr @Perl_newSVsv(ptr noundef %46) #8
  tail call void @Perl_av_push(ptr noundef %47, ptr noundef %49) #8
  %50 = tail call ptr @Perl_newRV_noinc(ptr noundef %47) #8
  %51 = tail call ptr @Perl_sv_2mortal(ptr noundef %50) #8
  %52 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %53 = add nsw i64 %32, %30
  %54 = getelementptr inbounds ptr, ptr %52, i64 %53
  store ptr %51, ptr %54, align 8, !tbaa !53
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %56 = getelementptr inbounds ptr, ptr %55, i64 %53
  %57 = load ptr, ptr %56, align 8, !tbaa !53
  %58 = tail call ptr @Perl_sv_bless(ptr noundef %57, ptr noundef %15) #8
  %59 = add nuw i64 %32, 1
  %60 = add nuw nsw i64 %33, 2
  %61 = icmp ult i64 %60, %29
  br i1 %61, label %31, label %62, !llvm.loop !121

62:                                               ; preds = %45
  %63 = and i64 %59, 4294967295
  br label %64

64:                                               ; preds = %62, %21
  %65 = phi i64 [ 0, %21 ], [ %63, %62 ]
  %66 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %67 = sext i32 %7 to i64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = getelementptr ptr, ptr %68, i64 %65
  %70 = getelementptr ptr, ptr %69, i64 -1
  store ptr %70, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_List__Util_pairkeys(ptr nocapture readnone %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
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
  %18 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #8
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.53) #8
  br label %20

20:                                               ; preds = %19, %17, %1
  %21 = icmp sgt i32 %14, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %20
  %23 = sext i32 %7 to i64
  %24 = sext i32 %7 to i64
  %25 = and i64 %13, 4294967295
  br label %26

26:                                               ; preds = %22, %26
  %27 = phi i64 [ 0, %22 ], [ %39, %26 ]
  %28 = phi i64 [ 0, %22 ], [ %36, %26 ]
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %30 = getelementptr ptr, ptr %29, i64 %27
  %31 = getelementptr ptr, ptr %30, i64 %24
  %32 = load ptr, ptr %31, align 8, !tbaa !53
  %33 = tail call ptr @Perl_newSVsv(ptr noundef %32) #8
  %34 = tail call ptr @Perl_sv_2mortal(ptr noundef %33) #8
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %36 = add nuw i64 %28, 1
  %37 = getelementptr ptr, ptr %35, i64 %28
  %38 = getelementptr ptr, ptr %37, i64 %23
  store ptr %34, ptr %38, align 8, !tbaa !53
  %39 = add nuw nsw i64 %27, 2
  %40 = icmp ult i64 %39, %25
  br i1 %40, label %26, label %41, !llvm.loop !122

41:                                               ; preds = %26
  %42 = and i64 %36, 4294967295
  br label %43

43:                                               ; preds = %41, %20
  %44 = phi i64 [ 0, %20 ], [ %42, %41 ]
  %45 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %46 = sext i32 %7 to i64
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46
  %48 = getelementptr ptr, ptr %47, i64 %44
  %49 = getelementptr ptr, ptr %48, i64 -1
  store ptr %49, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_List__Util_pairvalues(ptr nocapture readnone %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
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
  %18 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #8
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.54) #8
  br label %20

20:                                               ; preds = %19, %17, %1
  %21 = icmp sgt i32 %14, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %20
  %23 = add i32 %5, 2
  %24 = sext i32 %7 to i64
  %25 = shl i64 %12, 29
  %26 = add i64 %25, -4294967296
  %27 = ashr i64 %26, 32
  %28 = and i64 %13, 4294967295
  br label %29

29:                                               ; preds = %22, %40
  %30 = phi i64 [ 0, %22 ], [ %48, %40 ]
  %31 = phi i64 [ 0, %22 ], [ %45, %40 ]
  %32 = icmp slt i64 %30, %27
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %35 = trunc i64 %30 to i32
  %36 = add i32 %23, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %34, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  br label %40

40:                                               ; preds = %29, %33
  %41 = phi ptr [ %39, %33 ], [ @PL_sv_undef, %29 ]
  %42 = tail call ptr @Perl_newSVsv(ptr noundef %41) #8
  %43 = tail call ptr @Perl_sv_2mortal(ptr noundef %42) #8
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %45 = add nuw i64 %31, 1
  %46 = getelementptr ptr, ptr %44, i64 %31
  %47 = getelementptr ptr, ptr %46, i64 %24
  store ptr %43, ptr %47, align 8, !tbaa !53
  %48 = add nuw nsw i64 %30, 2
  %49 = icmp ult i64 %48, %28
  br i1 %49, label %29, label %50, !llvm.loop !123

50:                                               ; preds = %40
  %51 = and i64 %45, 4294967295
  br label %52

52:                                               ; preds = %50, %20
  %53 = phi i64 [ 0, %20 ], [ %51, %50 ]
  %54 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %55 = sext i32 %7 to i64
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  %57 = getelementptr ptr, ptr %56, i64 %53
  %58 = getelementptr ptr, ptr %57, i64 -1
  store ptr %58, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_List__Util_shuffle(ptr nocapture readnone %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load i8, ptr @PL_srand_called, align 1, !tbaa !124, !range !85, !noundef !86
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = tail call i32 @Perl_seed() #8
  %19 = zext i32 %18 to i64
  tail call void @spec_init_genrand(i64 noundef %19) #8
  store i8 1, ptr @PL_srand_called, align 1, !tbaa !124
  br label %20

20:                                               ; preds = %17, %1
  %21 = icmp sgt i32 %14, 1
  br i1 %21, label %22, label %45

22:                                               ; preds = %20
  %23 = and i64 %13, 4294967295
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ %23, %22 ], [ %27, %24 ]
  %26 = tail call double @spec_rand() #8
  %27 = add nsw i64 %25, -1
  %28 = trunc i64 %25 to i32
  %29 = sitofp i32 %28 to double
  %30 = fmul double %26, %29
  %31 = fptosi double %30 to i32
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %33 = add nsw i32 %7, %31
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !53
  %37 = trunc i64 %25 to i32
  %38 = add i32 %5, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %32, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !53
  store ptr %41, ptr %35, align 8, !tbaa !53
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %43 = getelementptr inbounds ptr, ptr %42, i64 %39
  store ptr %36, ptr %43, align 8, !tbaa !53
  %44 = icmp sgt i64 %25, 2
  br i1 %44, label %24, label %45, !llvm.loop !125

45:                                               ; preds = %24, %20
  %46 = shl i64 %12, 29
  %47 = ashr i64 %46, 32
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %49 = sext i32 %7 to i64
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  %51 = getelementptr ptr, ptr %50, i64 %47
  %52 = getelementptr ptr, ptr %51, i64 -1
  store ptr %52, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Scalar__Util_dualvar(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.55) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = getelementptr ptr, ptr %17, i64 %8
  %22 = getelementptr ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 6
  %26 = load i8, ptr %25, align 1, !tbaa !75
  %27 = and i8 %26, 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %16
  %30 = load ptr, ptr @PL_curpad, align 8, !tbaa !53
  %31 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !77
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  br label %37

35:                                               ; preds = %16
  %36 = tail call ptr @Perl_sv_newmortal() #8
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %34, %29 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !62
  %41 = and i32 %40, 254
  %42 = icmp ugt i32 %41, 5
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void @Perl_sv_upgrade(ptr noundef %38, i32 noundef 6) #8
  br label %44

44:                                               ; preds = %43, %37
  tail call void @Perl_sv_copypv_flags(ptr noundef %38, ptr noundef %23, i32 noundef 2) #8
  %45 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !62
  %47 = and i32 %46, 14681600
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %44
  %50 = and i32 %46, 2097664
  %51 = icmp eq i32 %50, 512
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load ptr, ptr %20, align 8, !tbaa !64
  %54 = getelementptr inbounds %struct.xpvnv, ptr %53, i64 0, i32 5
  %55 = load double, ptr %54, align 8, !tbaa !52
  br label %58

56:                                               ; preds = %49
  %57 = tail call double @Perl_sv_2nv_flags(ptr noundef %20, i32 noundef 2) #8
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi double [ %55, %52 ], [ %57, %56 ]
  %60 = load ptr, ptr %38, align 8, !tbaa !64
  %61 = getelementptr inbounds %struct.xpvnv, ptr %60, i64 0, i32 5
  store double %59, ptr %61, align 8, !tbaa !52
  br label %84

62:                                               ; preds = %44
  %63 = and i32 %46, -2147483392
  %64 = icmp eq i32 %63, -2147483392
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load ptr, ptr %20, align 8, !tbaa !64
  %67 = getelementptr inbounds %struct.xpvuv, ptr %66, i64 0, i32 4
  %68 = load i64, ptr %67, align 8, !tbaa !52
  %69 = load ptr, ptr %38, align 8, !tbaa !64
  %70 = getelementptr inbounds %struct.xpvuv, ptr %69, i64 0, i32 4
  store i64 %68, ptr %70, align 8, !tbaa !52
  br label %84

71:                                               ; preds = %62
  %72 = and i32 %46, 256
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %20, align 8, !tbaa !64
  %76 = getelementptr inbounds %struct.xpviv, ptr %75, i64 0, i32 4
  %77 = load i64, ptr %76, align 8, !tbaa !52
  br label %80

78:                                               ; preds = %71
  %79 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %20, i32 noundef 2) #8
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i64 [ %77, %74 ], [ %79, %78 ]
  %82 = load ptr, ptr %38, align 8, !tbaa !64
  %83 = getelementptr inbounds %struct.xpviv, ptr %82, i64 0, i32 4
  store i64 %81, ptr %83, align 8, !tbaa !52
  br label %84

84:                                               ; preds = %65, %80, %58
  %85 = phi i32 [ -2147479296, %65 ], [ 4352, %80 ], [ 8704, %58 ]
  %86 = load i32, ptr %39, align 4, !tbaa !62
  %87 = or i32 %86, %85
  store i32 %87, ptr %39, align 4, !tbaa !62
  %88 = load i8, ptr @PL_tainting, align 1, !tbaa !124, !range !85, !noundef !86
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %84
  %91 = load i32, ptr %45, align 4, !tbaa !62
  %92 = and i32 %91, 14680064
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef %20) #8
  br i1 %95, label %106, label %96

96:                                               ; preds = %94, %90
  %97 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %98 = load i32, ptr %97, align 4, !tbaa !62
  %99 = and i32 %98, 14680064
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %96
  %102 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef %23) #8
  %103 = load i8, ptr @PL_tainting, align 1, !range !85
  %104 = icmp ne i8 %103, 0
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %109, label %110

106:                                              ; preds = %94
  %107 = load i8, ptr @PL_tainting, align 1, !tbaa !124, !range !85, !noundef !86
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101, %106
  tail call void @Perl_sv_magic(ptr noundef %38, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #8
  br label %110

110:                                              ; preds = %106, %109, %101, %96, %84
  %111 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %112 = getelementptr inbounds ptr, ptr %111, i64 %18
  store ptr %38, ptr %112, align 8, !tbaa !53
  %113 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %114 = getelementptr inbounds ptr, ptr %113, i64 %18
  store ptr %114, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Scalar__Util_isdual(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !62
  %23 = and i32 %22, 14680064
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = tail call i32 @Perl_mg_get(ptr noundef %20) #8
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i32, ptr %21, align 4, !tbaa !62
  %29 = and i32 %28, 17408
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = and i32 %28, 768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = and i32 %28, 12288
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr @PL_sv_no, ptr @PL_sv_yes
  br label %38

38:                                               ; preds = %27, %31, %34
  %39 = phi ptr [ @PL_sv_yes, %31 ], [ %37, %34 ], [ @PL_sv_no, %27 ]
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %41 = getelementptr inbounds ptr, ptr %40, i64 %18
  store ptr %39, ptr %41, align 8, !tbaa !53
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %43 = getelementptr inbounds ptr, ptr %42, i64 %18
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Scalar__Util_blessed(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !75
  %24 = and i8 %23, 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load ptr, ptr @PL_curpad, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !77
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  br label %34

32:                                               ; preds = %16
  %33 = tail call ptr @Perl_sv_newmortal() #8
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !62
  %38 = and i32 %37, 2097152
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call i32 @Perl_mg_get(ptr noundef %20) #8
  br label %42

42:                                               ; preds = %34, %40
  %43 = load i32, ptr %36, align 4, !tbaa !62
  %44 = and i32 %43, 2048
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  %49 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !62
  %51 = and i32 %50, 1048576
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42, %46
  %54 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %55 = getelementptr inbounds ptr, ptr %54, i64 %18
  store ptr @PL_sv_undef, ptr %55, align 8, !tbaa !53
  br label %67

56:                                               ; preds = %46
  %57 = tail call ptr @Perl_sv_reftype(ptr noundef %48, i32 noundef 1) #8
  tail call void @Perl_sv_setpv(ptr noundef %35, ptr noundef %57) #8
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %59 = getelementptr inbounds ptr, ptr %58, i64 %18
  %60 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !62
  %62 = and i32 %61, 4194304
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %56
  %65 = tail call i32 @Perl_mg_set(ptr noundef %35) #8
  br label %66

66:                                               ; preds = %56, %64
  store ptr %35, ptr %59, align 8, !tbaa !53
  br label %67

67:                                               ; preds = %53, %66
  %68 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %69 = getelementptr inbounds ptr, ptr %68, i64 %18
  store ptr %69, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Scalar__Util_reftype(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !75
  %24 = and i8 %23, 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load ptr, ptr @PL_curpad, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !77
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  br label %34

32:                                               ; preds = %16
  %33 = tail call ptr @Perl_sv_newmortal() #8
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !62
  %38 = and i32 %37, 2097152
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call i32 @Perl_mg_get(ptr noundef %20) #8
  br label %42

42:                                               ; preds = %34, %40
  %43 = load i32, ptr %36, align 4, !tbaa !62
  %44 = and i32 %43, 2048
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %48 = getelementptr inbounds ptr, ptr %47, i64 %18
  store ptr @PL_sv_undef, ptr %48, align 8, !tbaa !53
  %49 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %50 = getelementptr inbounds ptr, ptr %49, i64 %18
  store ptr %50, ptr @PL_stack_sp, align 8, !tbaa !53
  br label %64

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = tail call ptr @Perl_sv_reftype(ptr noundef %53, i32 noundef 0) #8
  tail call void @Perl_sv_setpv(ptr noundef %35, ptr noundef %54) #8
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %56 = getelementptr inbounds ptr, ptr %55, i64 %18
  %57 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !62
  %59 = and i32 %58, 4194304
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %51
  %62 = tail call i32 @Perl_mg_set(ptr noundef %35) #8
  br label %63

63:                                               ; preds = %51, %61
  store ptr %35, ptr %56, align 8, !tbaa !53
  br label %64

64:                                               ; preds = %63, %46
  br i1 %45, label %68, label %65

65:                                               ; preds = %64
  %66 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %67 = getelementptr inbounds ptr, ptr %66, i64 %18
  store ptr %67, ptr @PL_stack_sp, align 8, !tbaa !53
  br label %68

68:                                               ; preds = %64, %65
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Scalar__Util_refaddr(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !75
  %24 = and i8 %23, 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load ptr, ptr @PL_curpad, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !77
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  br label %34

32:                                               ; preds = %16
  %33 = tail call ptr @Perl_sv_newmortal() #8
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !62
  %38 = and i32 %37, 2097152
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call i32 @Perl_mg_get(ptr noundef %20) #8
  br label %42

42:                                               ; preds = %34, %40
  %43 = load i32, ptr %36, align 4, !tbaa !62
  %44 = and i32 %43, 2048
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %48 = getelementptr inbounds ptr, ptr %47, i64 %18
  store ptr @PL_sv_undef, ptr %48, align 8, !tbaa !53
  %49 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %50 = getelementptr inbounds ptr, ptr %49, i64 %18
  store ptr %50, ptr @PL_stack_sp, align 8, !tbaa !53
  br label %64

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = ptrtoint ptr %53 to i64
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %56 = getelementptr inbounds ptr, ptr %55, i64 %18
  tail call void @Perl_sv_setuv(ptr noundef %35, i64 noundef %54) #8
  %57 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !62
  %59 = and i32 %58, 4194304
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %51
  %62 = tail call i32 @Perl_mg_set(ptr noundef %35) #8
  br label %63

63:                                               ; preds = %51, %61
  store ptr %35, ptr %56, align 8, !tbaa !53
  br label %64

64:                                               ; preds = %63, %46
  br i1 %45, label %68, label %65

65:                                               ; preds = %64
  %66 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %67 = getelementptr inbounds ptr, ptr %66, i64 %18
  store ptr %67, ptr @PL_stack_sp, align 8, !tbaa !53
  br label %68

68:                                               ; preds = %64, %65
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Scalar__Util_weaken(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #8
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = tail call ptr @Perl_sv_rvweaken(ptr noundef %20) #8
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %23 = getelementptr inbounds ptr, ptr %22, i64 %18
  %24 = getelementptr inbounds ptr, ptr %23, i64 -1
  store ptr %24, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Scalar__Util_unweaken(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !62
  %23 = and i32 %22, 65280
  %24 = icmp ne i32 %23, 0
  %25 = and i32 %22, 255
  %26 = icmp eq i32 %25, 8
  %27 = or i1 %24, %26
  %28 = and i32 %22, 16777471
  %29 = icmp eq i32 %28, 16777226
  %30 = or i1 %29, %27
  br i1 %30, label %31, label %57

31:                                               ; preds = %16
  %32 = and i32 %22, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.57) #8
  br label %45

35:                                               ; preds = %31
  %36 = and i32 %22, -2147481600
  %37 = icmp eq i32 %36, -2147481600
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #8
  br i1 %39, label %40, label %57

40:                                               ; preds = %38
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.58) #8
  br label %57

41:                                               ; preds = %35
  %42 = and i32 %22, 134283264
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @Perl_croak_no_modify() #8
  br label %45

45:                                               ; preds = %44, %41, %34
  %46 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !52
  %48 = load i32, ptr %21, align 4, !tbaa !62
  %49 = and i32 %48, 2147481599
  %50 = or disjoint i32 %49, 2048
  store i32 %50, ptr %21, align 4, !tbaa !62
  %51 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !102
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 8, !tbaa !102
  tail call void @Perl_sv_del_backref(ptr noundef %47, ptr noundef %20) #8
  %54 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %55 = getelementptr inbounds ptr, ptr %54, i64 %18
  %56 = getelementptr inbounds ptr, ptr %55, i64 -1
  store ptr %56, ptr @PL_stack_sp, align 8, !tbaa !53
  br label %57

57:                                               ; preds = %16, %40, %38, %45
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Scalar__Util_isweak(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #8
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !62
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %22, -2147481600
  %26 = icmp eq i32 %25, -2147481600
  %27 = select i1 %26, ptr @PL_sv_yes, ptr @PL_sv_no
  %28 = select i1 %24, ptr @PL_sv_no, ptr %27
  store ptr %28, ptr %19, align 8, !tbaa !53
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %30 = getelementptr inbounds ptr, ptr %29, i64 %18
  store ptr %30, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Scalar__Util_readonly(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !75
  %24 = and i8 %23, 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load ptr, ptr @PL_curpad, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !77
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  br label %34

32:                                               ; preds = %16
  %33 = tail call ptr @Perl_sv_newmortal() #8
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !62
  %38 = and i32 %37, 2097152
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call i32 @Perl_mg_get(ptr noundef %20) #8
  br label %42

42:                                               ; preds = %34, %40
  %43 = load i32, ptr %36, align 4, !tbaa !62
  %44 = and i32 %43, 134283264
  %45 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %46 = zext nneg i32 %44 to i64
  tail call void @Perl_sv_setiv(ptr noundef %35, i64 noundef %46) #8
  %47 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !62
  %49 = and i32 %48, 4194304
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %42
  %52 = tail call i32 @Perl_mg_set(ptr noundef %35) #8
  br label %53

53:                                               ; preds = %42, %51
  %54 = getelementptr inbounds ptr, ptr %45, i64 %18
  store ptr %35, ptr %54, align 8, !tbaa !53
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %56 = getelementptr inbounds ptr, ptr %55, i64 %18
  store ptr %56, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Scalar__Util_tainted(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !75
  %24 = and i8 %23, 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load ptr, ptr @PL_curpad, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !77
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  br label %34

32:                                               ; preds = %16
  %33 = tail call ptr @Perl_sv_newmortal() #8
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !62
  %38 = and i32 %37, 2097152
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call i32 @Perl_mg_get(ptr noundef %20) #8
  br label %42

42:                                               ; preds = %34, %40
  %43 = load i32, ptr %36, align 4, !tbaa !62
  %44 = and i32 %43, 14680064
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef %20) #8
  %48 = zext i1 %47 to i64
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi i64 [ 0, %42 ], [ %48, %46 ]
  %51 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  tail call void @Perl_sv_setiv(ptr noundef %35, i64 noundef %50) #8
  %52 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !62
  %54 = and i32 %53, 4194304
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = tail call i32 @Perl_mg_set(ptr noundef %35) #8
  br label %58

58:                                               ; preds = %49, %56
  %59 = getelementptr inbounds ptr, ptr %51, i64 %18
  store ptr %35, ptr %59, align 8, !tbaa !53
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %61 = getelementptr inbounds ptr, ptr %60, i64 %18
  store ptr %61, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Scalar__Util_isvstring(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !62
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = tail call i32 @Perl_mg_get(ptr noundef %20) #8
  br label %27

27:                                               ; preds = %16, %25
  %28 = load i32, ptr %21, align 4, !tbaa !62
  %29 = and i32 %28, 14680064
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @Perl_mg_find(ptr noundef %20, i32 noundef 86) #8
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr @PL_sv_no, ptr @PL_sv_yes
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi ptr [ @PL_sv_no, %27 ], [ %34, %31 ]
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %38 = getelementptr inbounds ptr, ptr %37, i64 %18
  store ptr %36, ptr %38, align 8, !tbaa !53
  %39 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %40 = getelementptr inbounds ptr, ptr %39, i64 %18
  store ptr %40, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Scalar__Util_looks_like_number(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !62
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = tail call i32 @Perl_mg_get(ptr noundef %20) #8
  br label %27

27:                                               ; preds = %16, %25
  %28 = load i32, ptr %21, align 4, !tbaa !62
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !62
  %36 = and i32 %35, 1048576
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %33, align 8, !tbaa !64
  %40 = load ptr, ptr %39, align 8, !tbaa !65
  %41 = getelementptr inbounds %struct.hv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !68
  %43 = and i32 %42, 268435456
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = tail call ptr @Perl_amagic_call(ptr noundef %20, ptr noundef nonnull @PL_sv_undef, i32 noundef 9, i32 noundef 9) #8
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, ptr %20, ptr %46
  br label %49

49:                                               ; preds = %45, %38, %31, %27
  %50 = phi ptr [ %20, %38 ], [ %20, %31 ], [ %20, %27 ], [ %48, %45 ]
  %51 = tail call i32 @Perl_looks_like_number(ptr noundef %50) #8
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, ptr @PL_sv_no, ptr @PL_sv_yes
  %54 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %53) #8
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %56 = getelementptr inbounds ptr, ptr %55, i64 %18
  store ptr %54, ptr %56, align 8, !tbaa !53
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %58 = getelementptr inbounds ptr, ptr %57, i64 %18
  store ptr %58, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Scalar__Util_openhandle(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !62
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = tail call i32 @Perl_mg_get(ptr noundef %20) #8
  br label %27

27:                                               ; preds = %16, %25
  %28 = load i32, ptr %21, align 4, !tbaa !62
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi ptr [ %33, %31 ], [ %20, %27 ]
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !62
  %38 = trunc i32 %37 to i8
  switch i8 %38, label %49 [
    i8 9, label %39
    i8 15, label %48
  ]

39:                                               ; preds = %34
  %40 = icmp eq ptr %35, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.gv, ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.gp, ptr %43, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !126
  br label %49

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %34, %45, %41, %39, %48
  %50 = phi ptr [ %35, %48 ], [ %47, %45 ], [ null, %41 ], [ null, %39 ], [ null, %34 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.io, ptr %50, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !52
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !62
  %59 = and i32 %58, 8388608
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = tail call ptr @Perl_mg_find(ptr noundef nonnull %50, i32 noundef 113) #8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %49, %56, %61
  %65 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %66 = getelementptr inbounds ptr, ptr %65, i64 %18
  store ptr @PL_sv_undef, ptr %66, align 8, !tbaa !53
  br label %67

67:                                               ; preds = %61, %52, %64
  %68 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %69 = getelementptr inbounds ptr, ptr %68, i64 %18
  store ptr %69, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_Sub__Util_set_prototype(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.59) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = getelementptr ptr, ptr %17, i64 %8
  %22 = getelementptr ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !62
  %26 = and i32 %25, 2097152
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %16
  %29 = tail call i32 @Perl_mg_get(ptr noundef %23) #8
  br label %30

30:                                               ; preds = %16, %28
  %31 = load i32, ptr %24, align 4, !tbaa !62
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.60) #8
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  %38 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !62
  %40 = and i32 %39, 255
  %41 = icmp eq i32 %40, 13
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.61) #8
  br label %43

43:                                               ; preds = %42, %35
  %44 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !62
  %46 = and i32 %45, 1024
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call void @Perl_sv_copypv_flags(ptr noundef %37, ptr noundef %20, i32 noundef 2) #8
  br label %52

49:                                               ; preds = %43
  %50 = load i32, ptr %38, align 4, !tbaa !62
  %51 = and i32 %50, -17409
  store i32 %51, ptr %38, align 4, !tbaa !62
  br label %52

52:                                               ; preds = %49, %48
  %53 = shl i64 %12, 29
  %54 = ashr i64 %53, 32
  %55 = sub nsw i64 0, %54
  %56 = getelementptr inbounds ptr, ptr %2, i64 %55
  %57 = getelementptr inbounds ptr, ptr %56, i64 1
  store ptr %23, ptr %57, align 8, !tbaa !53
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %59 = getelementptr inbounds ptr, ptr %58, i64 %18
  store ptr %59, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Sub__Util_set_subname(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.62) #8
  br label %15

15:                                               ; preds = %14, %1
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %17 = getelementptr ptr, ptr %16, i64 %7
  %18 = getelementptr ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !62
  %22 = and i32 %21, 2098176
  %23 = icmp eq i32 %22, 1024
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  br label %29

27:                                               ; preds = %15
  %28 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %19, ptr noundef null, i32 noundef 2) #8
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi ptr [ %26, %24 ], [ %28, %27 ]
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %32 = getelementptr ptr, ptr %31, i64 %7
  %33 = getelementptr ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  %35 = load ptr, ptr @PL_curcop, align 8, !tbaa !53
  %36 = getelementptr inbounds %struct.cop, ptr %35, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !127
  %38 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !62
  %40 = and i32 %39, 2099200
  %41 = icmp eq i32 %40, 2097152
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = tail call i32 @Perl_mg_get(ptr noundef %34) #8
  br label %44

44:                                               ; preds = %42, %29
  %45 = load i32, ptr %38, align 4, !tbaa !62
  %46 = and i32 %45, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  br label %107

51:                                               ; preds = %44
  %52 = and i32 %45, 255
  %53 = icmp eq i32 %52, 9
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = getelementptr inbounds %struct.gp, ptr %56, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !129
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %107

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.gp, ptr %56, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !130
  br label %107

63:                                               ; preds = %51
  %64 = and i32 %45, 63232
  %65 = icmp ne i32 %64, 0
  %66 = icmp eq i32 %52, 8
  %67 = or i1 %65, %66
  %68 = and i32 %45, 16777471
  %69 = icmp eq i32 %68, 16777226
  %70 = or i1 %69, %67
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @PL_no_usym, ptr noundef nonnull @.str.63) #8
  br label %107

72:                                               ; preds = %63
  %73 = load ptr, ptr @PL_op, align 8, !tbaa !53
  %74 = getelementptr inbounds %struct.op, ptr %73, i64 0, i32 6
  %75 = load i8, ptr %74, align 1, !tbaa !75
  %76 = and i8 %75, 2
  %77 = icmp eq i8 %76, 0
  %78 = and i32 %45, 2098176
  %79 = icmp eq i32 %78, 1024
  br i1 %77, label %88, label %80

80:                                               ; preds = %72
  br i1 %79, label %81, label %84

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !52
  br label %86

84:                                               ; preds = %80
  %85 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %34, ptr noundef null, i32 noundef 2) #8
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi ptr [ %83, %81 ], [ %85, %84 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.64, ptr noundef %87, ptr noundef nonnull @.str.63) #8
  br label %107

88:                                               ; preds = %72
  br i1 %79, label %89, label %92

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !52
  br label %94

92:                                               ; preds = %88
  %93 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %34, ptr noundef null, i32 noundef 2) #8
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi ptr [ %91, %89 ], [ %93, %92 ]
  %96 = tail call ptr @Perl_gv_fetchpv(ptr noundef %95, i32 noundef 0, i32 noundef 13) #8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.gv, ptr %96, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !52
  %101 = getelementptr inbounds %struct.gp, ptr %100, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !129
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.gp, ptr %100, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !130
  br label %107

107:                                              ; preds = %104, %98, %60, %54, %86, %94, %71, %48
  %108 = phi ptr [ %50, %48 ], [ null, %86 ], [ null, %94 ], [ null, %71 ], [ %62, %60 ], [ null, %54 ], [ %106, %104 ], [ null, %98 ]
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load i32, ptr %38, align 4, !tbaa !62
  %112 = and i32 %111, 2098176
  %113 = icmp eq i32 %112, 1024
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !52
  br label %119

117:                                              ; preds = %110
  %118 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %34, ptr noundef null, i32 noundef 2) #8
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi ptr [ %116, %114 ], [ %118, %117 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.65, ptr noundef %120) #8
  br label %121

121:                                              ; preds = %119, %107
  %122 = getelementptr inbounds %struct.cv, ptr %108, i64 0, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !131
  %124 = and i32 %123, 255
  %125 = add nsw i32 %124, -13
  %126 = icmp ult i32 %125, 2
  br i1 %126, label %128, label %127

127:                                              ; preds = %121
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #8
  br label %128

128:                                              ; preds = %121, %127
  %129 = load i8, ptr %30, align 1, !tbaa !52
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %152, label %131

131:                                              ; preds = %128, %147
  %132 = phi i8 [ %150, %147 ], [ %129, %128 ]
  %133 = phi ptr [ %149, %147 ], [ %30, %128 ]
  %134 = phi ptr [ %148, %147 ], [ null, %128 ]
  %135 = getelementptr inbounds i8, ptr %133, i64 1
  %136 = load i8, ptr %135, align 1, !tbaa !52
  %137 = icmp eq i8 %136, 58
  %138 = icmp eq i8 %132, 58
  %139 = and i1 %138, %137
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = getelementptr inbounds i8, ptr %133, i64 2
  br label %147

142:                                              ; preds = %131
  %143 = icmp eq i8 %136, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %142
  %145 = icmp eq i8 %132, 39
  %146 = select i1 %145, ptr %135, ptr %134
  br label %147

147:                                              ; preds = %144, %142, %140
  %148 = phi ptr [ %141, %140 ], [ %134, %142 ], [ %146, %144 ]
  %149 = phi ptr [ %141, %140 ], [ %135, %142 ], [ %135, %144 ]
  %150 = load i8, ptr %149, align 1, !tbaa !52
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %131, !llvm.loop !132

152:                                              ; preds = %147, %128
  %153 = phi ptr [ null, %128 ], [ %148, %147 ]
  %154 = phi ptr [ %30, %128 ], [ %149, %147 ]
  %155 = icmp eq ptr %153, null
  br i1 %155, label %167, label %156

156:                                              ; preds = %152
  %157 = ptrtoint ptr %153 to i64
  %158 = ptrtoint ptr %30 to i64
  %159 = sub i64 %157, %158
  %160 = trunc i64 %159 to i32
  %161 = tail call ptr @Perl_savepvn(ptr noundef nonnull %30, i32 noundef %160) #8
  %162 = tail call ptr @Perl_gv_fetchpv(ptr noundef %161, i32 noundef 1, i32 noundef 12) #8
  %163 = getelementptr inbounds %struct.gv, ptr %162, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !52
  %165 = getelementptr inbounds %struct.gp, ptr %164, i64 0, i32 5
  %166 = load ptr, ptr %165, align 8, !tbaa !133
  tail call void @Perl_safesysfree(ptr noundef %161) #8
  br label %167

167:                                              ; preds = %156, %152
  %168 = phi ptr [ %166, %156 ], [ %37, %152 ]
  %169 = phi ptr [ %153, %156 ], [ %30, %152 ]
  %170 = load ptr, ptr @PL_DBsub, align 8, !tbaa !53
  %171 = icmp eq ptr %170, null
  br i1 %171, label %570, label %172

172:                                              ; preds = %167
  %173 = load ptr, ptr %108, align 8, !tbaa !46
  %174 = getelementptr inbounds %struct.xpvcv, ptr %173, i64 0, i32 12
  %175 = load i32, ptr %174, align 4, !tbaa !80
  %176 = and i32 %175, 32768
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %172
  %179 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %183

180:                                              ; preds = %172
  %181 = getelementptr inbounds %struct.xpvcv, ptr %173, i64 0, i32 7
  %182 = load ptr, ptr %181, align 8, !tbaa !52
  br label %183

183:                                              ; preds = %178, %180
  %184 = phi ptr [ %179, %178 ], [ %182, %180 ]
  %185 = icmp eq ptr %184, null
  br i1 %185, label %570, label %186

186:                                              ; preds = %183
  %187 = load ptr, ptr @PL_DBsub, align 8, !tbaa !53
  %188 = getelementptr inbounds %struct.gv, ptr %187, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !52
  %190 = getelementptr inbounds %struct.gp, ptr %189, i64 0, i32 5
  %191 = load ptr, ptr %190, align 8, !tbaa !133
  %192 = getelementptr inbounds %struct.hv, ptr %168, i64 0, i32 2
  %193 = load i32, ptr %192, align 4, !tbaa !68
  %194 = and i32 %193, 33554432
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %217, label %196

196:                                              ; preds = %186
  %197 = getelementptr inbounds %struct.hv, ptr %168, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !52
  %199 = load ptr, ptr %168, align 8, !tbaa !134
  %200 = getelementptr inbounds %struct.xpvhv, ptr %199, i64 0, i32 3
  %201 = load i64, ptr %200, align 8, !tbaa !135
  %202 = getelementptr ptr, ptr %198, i64 %201
  %203 = getelementptr ptr, ptr %202, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !52
  %205 = icmp eq ptr %204, null
  br i1 %205, label %217, label %206

206:                                              ; preds = %196
  %207 = getelementptr i8, ptr %202, i64 36
  %208 = load i32, ptr %207, align 4, !tbaa !137
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %206
  %211 = load ptr, ptr %204, align 8, !tbaa !53
  %212 = icmp eq ptr %211, null
  br i1 %212, label %217, label %213

213:                                              ; preds = %206, %210
  %214 = phi ptr [ %203, %206 ], [ %204, %210 ]
  %215 = load ptr, ptr %214, align 8, !tbaa !52
  %216 = getelementptr inbounds %struct.hek, ptr %215, i64 0, i32 2
  br label %217

217:                                              ; preds = %186, %196, %210, %213
  %218 = phi ptr [ %216, %213 ], [ null, %210 ], [ null, %196 ], [ null, %186 ]
  %219 = load ptr, ptr %108, align 8, !tbaa !46
  %220 = getelementptr inbounds %struct.xpvcv, ptr %219, i64 0, i32 12
  %221 = load i32, ptr %220, align 4, !tbaa !80
  %222 = and i32 %221, 32768
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %217
  %225 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %229

226:                                              ; preds = %217
  %227 = getelementptr inbounds %struct.xpvcv, ptr %219, i64 0, i32 7
  %228 = load ptr, ptr %227, align 8, !tbaa !52
  br label %229

229:                                              ; preds = %224, %226
  %230 = phi ptr [ %225, %224 ], [ %228, %226 ]
  %231 = load ptr, ptr %230, align 8, !tbaa !139
  %232 = getelementptr inbounds %struct.xpvgv, ptr %231, i64 0, i32 4
  %233 = load ptr, ptr %232, align 8, !tbaa !52
  %234 = getelementptr inbounds %struct.hek, ptr %233, i64 0, i32 2
  %235 = load ptr, ptr %108, align 8, !tbaa !46
  %236 = getelementptr inbounds %struct.xpvcv, ptr %235, i64 0, i32 12
  %237 = load i32, ptr %236, align 4, !tbaa !80
  %238 = and i32 %237, 32768
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %229
  %241 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %245

242:                                              ; preds = %229
  %243 = getelementptr inbounds %struct.xpvcv, ptr %235, i64 0, i32 7
  %244 = load ptr, ptr %243, align 8, !tbaa !52
  br label %245

245:                                              ; preds = %240, %242
  %246 = phi ptr [ %241, %240 ], [ %244, %242 ]
  %247 = load ptr, ptr %246, align 8, !tbaa !139
  %248 = getelementptr inbounds %struct.xpvgv, ptr %247, i64 0, i32 5
  %249 = load ptr, ptr %248, align 8, !tbaa !52
  %250 = getelementptr inbounds %struct.hv, ptr %249, i64 0, i32 2
  %251 = load i32, ptr %250, align 4, !tbaa !68
  %252 = and i32 %251, 33554432
  %253 = icmp ne i32 %252, 0
  tail call void @llvm.assume(i1 %253)
  %254 = load ptr, ptr %108, align 8, !tbaa !46
  %255 = getelementptr inbounds %struct.xpvcv, ptr %254, i64 0, i32 12
  %256 = load i32, ptr %255, align 4, !tbaa !80
  %257 = and i32 %256, 32768
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %245
  %260 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %264

261:                                              ; preds = %245
  %262 = getelementptr inbounds %struct.xpvcv, ptr %254, i64 0, i32 7
  %263 = load ptr, ptr %262, align 8, !tbaa !52
  br label %264

264:                                              ; preds = %259, %261
  %265 = phi ptr [ %260, %259 ], [ %263, %261 ]
  %266 = load ptr, ptr %265, align 8, !tbaa !139
  %267 = getelementptr inbounds %struct.xpvgv, ptr %266, i64 0, i32 5
  %268 = load ptr, ptr %267, align 8, !tbaa !52
  %269 = getelementptr inbounds %struct.hv, ptr %268, i64 0, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !52
  %271 = load ptr, ptr %108, align 8, !tbaa !46
  %272 = getelementptr inbounds %struct.xpvcv, ptr %271, i64 0, i32 12
  %273 = load i32, ptr %272, align 4, !tbaa !80
  %274 = and i32 %273, 32768
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %264
  %277 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %281

278:                                              ; preds = %264
  %279 = getelementptr inbounds %struct.xpvcv, ptr %271, i64 0, i32 7
  %280 = load ptr, ptr %279, align 8, !tbaa !52
  br label %281

281:                                              ; preds = %276, %278
  %282 = phi ptr [ %277, %276 ], [ %280, %278 ]
  %283 = load ptr, ptr %282, align 8, !tbaa !139
  %284 = getelementptr inbounds %struct.xpvgv, ptr %283, i64 0, i32 5
  %285 = load ptr, ptr %284, align 8, !tbaa !52
  %286 = load ptr, ptr %285, align 8, !tbaa !134
  %287 = getelementptr inbounds %struct.xpvhv, ptr %286, i64 0, i32 3
  %288 = load i64, ptr %287, align 8, !tbaa !135
  %289 = getelementptr ptr, ptr %270, i64 %288
  %290 = getelementptr ptr, ptr %289, i64 1
  %291 = load ptr, ptr %290, align 8, !tbaa !52
  %292 = icmp ne ptr %291, null
  tail call void @llvm.assume(i1 %292)
  %293 = load ptr, ptr %108, align 8, !tbaa !46
  %294 = getelementptr inbounds %struct.xpvcv, ptr %293, i64 0, i32 12
  %295 = load i32, ptr %294, align 4, !tbaa !80
  %296 = and i32 %295, 32768
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %281
  %299 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %303

300:                                              ; preds = %281
  %301 = getelementptr inbounds %struct.xpvcv, ptr %293, i64 0, i32 7
  %302 = load ptr, ptr %301, align 8, !tbaa !52
  br label %303

303:                                              ; preds = %298, %300
  %304 = phi ptr [ %299, %298 ], [ %302, %300 ]
  %305 = load ptr, ptr %304, align 8, !tbaa !139
  %306 = getelementptr inbounds %struct.xpvgv, ptr %305, i64 0, i32 5
  %307 = load ptr, ptr %306, align 8, !tbaa !52
  %308 = getelementptr inbounds %struct.hv, ptr %307, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8, !tbaa !52
  %310 = load ptr, ptr %108, align 8, !tbaa !46
  %311 = getelementptr inbounds %struct.xpvcv, ptr %310, i64 0, i32 12
  %312 = load i32, ptr %311, align 4, !tbaa !80
  %313 = and i32 %312, 32768
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %317, label %315

315:                                              ; preds = %303
  %316 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %320

317:                                              ; preds = %303
  %318 = getelementptr inbounds %struct.xpvcv, ptr %310, i64 0, i32 7
  %319 = load ptr, ptr %318, align 8, !tbaa !52
  br label %320

320:                                              ; preds = %315, %317
  %321 = phi ptr [ %316, %315 ], [ %319, %317 ]
  %322 = load ptr, ptr %321, align 8, !tbaa !139
  %323 = getelementptr inbounds %struct.xpvgv, ptr %322, i64 0, i32 5
  %324 = load ptr, ptr %323, align 8, !tbaa !52
  %325 = load ptr, ptr %324, align 8, !tbaa !134
  %326 = getelementptr inbounds %struct.xpvhv, ptr %325, i64 0, i32 3
  %327 = load i64, ptr %326, align 8, !tbaa !135
  %328 = getelementptr ptr, ptr %309, i64 %327
  %329 = getelementptr i8, ptr %328, i64 36
  %330 = load i32, ptr %329, align 4, !tbaa !137
  %331 = icmp eq i32 %330, 0
  %332 = load ptr, ptr %108, align 8, !tbaa !46
  %333 = getelementptr inbounds %struct.xpvcv, ptr %332, i64 0, i32 12
  %334 = load i32, ptr %333, align 4, !tbaa !80
  %335 = and i32 %334, 32768
  %336 = icmp eq i32 %335, 0
  br i1 %331, label %371, label %337

337:                                              ; preds = %320
  br i1 %336, label %340, label %338

338:                                              ; preds = %337
  %339 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %343

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.xpvcv, ptr %332, i64 0, i32 7
  %342 = load ptr, ptr %341, align 8, !tbaa !52
  br label %343

343:                                              ; preds = %338, %340
  %344 = phi ptr [ %339, %338 ], [ %342, %340 ]
  %345 = load ptr, ptr %344, align 8, !tbaa !139
  %346 = getelementptr inbounds %struct.xpvgv, ptr %345, i64 0, i32 5
  %347 = load ptr, ptr %346, align 8, !tbaa !52
  %348 = getelementptr inbounds %struct.hv, ptr %347, i64 0, i32 3
  %349 = load ptr, ptr %348, align 8, !tbaa !52
  %350 = load ptr, ptr %108, align 8, !tbaa !46
  %351 = getelementptr inbounds %struct.xpvcv, ptr %350, i64 0, i32 12
  %352 = load i32, ptr %351, align 4, !tbaa !80
  %353 = and i32 %352, 32768
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %357, label %355

355:                                              ; preds = %343
  %356 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %360

357:                                              ; preds = %343
  %358 = getelementptr inbounds %struct.xpvcv, ptr %350, i64 0, i32 7
  %359 = load ptr, ptr %358, align 8, !tbaa !52
  br label %360

360:                                              ; preds = %355, %357
  %361 = phi ptr [ %356, %355 ], [ %359, %357 ]
  %362 = load ptr, ptr %361, align 8, !tbaa !139
  %363 = getelementptr inbounds %struct.xpvgv, ptr %362, i64 0, i32 5
  %364 = load ptr, ptr %363, align 8, !tbaa !52
  %365 = load ptr, ptr %364, align 8, !tbaa !134
  %366 = getelementptr inbounds %struct.xpvhv, ptr %365, i64 0, i32 3
  %367 = load i64, ptr %366, align 8, !tbaa !135
  %368 = getelementptr ptr, ptr %349, i64 %367
  %369 = getelementptr ptr, ptr %368, i64 1
  %370 = load ptr, ptr %369, align 8, !tbaa !52
  br label %404

371:                                              ; preds = %320
  br i1 %336, label %374, label %372

372:                                              ; preds = %371
  %373 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %377

374:                                              ; preds = %371
  %375 = getelementptr inbounds %struct.xpvcv, ptr %332, i64 0, i32 7
  %376 = load ptr, ptr %375, align 8, !tbaa !52
  br label %377

377:                                              ; preds = %372, %374
  %378 = phi ptr [ %373, %372 ], [ %376, %374 ]
  %379 = load ptr, ptr %378, align 8, !tbaa !139
  %380 = getelementptr inbounds %struct.xpvgv, ptr %379, i64 0, i32 5
  %381 = load ptr, ptr %380, align 8, !tbaa !52
  %382 = getelementptr inbounds %struct.hv, ptr %381, i64 0, i32 3
  %383 = load ptr, ptr %382, align 8, !tbaa !52
  %384 = load ptr, ptr %108, align 8, !tbaa !46
  %385 = getelementptr inbounds %struct.xpvcv, ptr %384, i64 0, i32 12
  %386 = load i32, ptr %385, align 4, !tbaa !80
  %387 = and i32 %386, 32768
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %391, label %389

389:                                              ; preds = %377
  %390 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %394

391:                                              ; preds = %377
  %392 = getelementptr inbounds %struct.xpvcv, ptr %384, i64 0, i32 7
  %393 = load ptr, ptr %392, align 8, !tbaa !52
  br label %394

394:                                              ; preds = %389, %391
  %395 = phi ptr [ %390, %389 ], [ %393, %391 ]
  %396 = load ptr, ptr %395, align 8, !tbaa !139
  %397 = getelementptr inbounds %struct.xpvgv, ptr %396, i64 0, i32 5
  %398 = load ptr, ptr %397, align 8, !tbaa !52
  %399 = load ptr, ptr %398, align 8, !tbaa !134
  %400 = getelementptr inbounds %struct.xpvhv, ptr %399, i64 0, i32 3
  %401 = load i64, ptr %400, align 8, !tbaa !135
  %402 = getelementptr ptr, ptr %383, i64 %401
  %403 = getelementptr ptr, ptr %402, i64 1
  br label %404

404:                                              ; preds = %360, %394
  %405 = phi ptr [ %370, %360 ], [ %403, %394 ]
  %406 = load ptr, ptr %405, align 8, !tbaa !52
  %407 = icmp ne ptr %406, null
  tail call void @llvm.assume(i1 %407)
  %408 = load ptr, ptr %108, align 8, !tbaa !46
  %409 = getelementptr inbounds %struct.xpvcv, ptr %408, i64 0, i32 12
  %410 = load i32, ptr %409, align 4, !tbaa !80
  %411 = and i32 %410, 32768
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %415, label %413

413:                                              ; preds = %404
  %414 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %418

415:                                              ; preds = %404
  %416 = getelementptr inbounds %struct.xpvcv, ptr %408, i64 0, i32 7
  %417 = load ptr, ptr %416, align 8, !tbaa !52
  br label %418

418:                                              ; preds = %413, %415
  %419 = phi ptr [ %414, %413 ], [ %417, %415 ]
  %420 = load ptr, ptr %419, align 8, !tbaa !139
  %421 = getelementptr inbounds %struct.xpvgv, ptr %420, i64 0, i32 5
  %422 = load ptr, ptr %421, align 8, !tbaa !52
  %423 = getelementptr inbounds %struct.hv, ptr %422, i64 0, i32 3
  %424 = load ptr, ptr %423, align 8, !tbaa !52
  %425 = load ptr, ptr %108, align 8, !tbaa !46
  %426 = getelementptr inbounds %struct.xpvcv, ptr %425, i64 0, i32 12
  %427 = load i32, ptr %426, align 4, !tbaa !80
  %428 = and i32 %427, 32768
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %432, label %430

430:                                              ; preds = %418
  %431 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %435

432:                                              ; preds = %418
  %433 = getelementptr inbounds %struct.xpvcv, ptr %425, i64 0, i32 7
  %434 = load ptr, ptr %433, align 8, !tbaa !52
  br label %435

435:                                              ; preds = %430, %432
  %436 = phi ptr [ %431, %430 ], [ %434, %432 ]
  %437 = load ptr, ptr %436, align 8, !tbaa !139
  %438 = getelementptr inbounds %struct.xpvgv, ptr %437, i64 0, i32 5
  %439 = load ptr, ptr %438, align 8, !tbaa !52
  %440 = load ptr, ptr %439, align 8, !tbaa !134
  %441 = getelementptr inbounds %struct.xpvhv, ptr %440, i64 0, i32 3
  %442 = load i64, ptr %441, align 8, !tbaa !135
  %443 = getelementptr ptr, ptr %424, i64 %442
  %444 = getelementptr i8, ptr %443, i64 36
  %445 = load i32, ptr %444, align 4, !tbaa !137
  %446 = icmp eq i32 %445, 0
  %447 = load ptr, ptr %108, align 8, !tbaa !46
  %448 = getelementptr inbounds %struct.xpvcv, ptr %447, i64 0, i32 12
  %449 = load i32, ptr %448, align 4, !tbaa !80
  %450 = and i32 %449, 32768
  %451 = icmp eq i32 %450, 0
  br i1 %446, label %486, label %452

452:                                              ; preds = %435
  br i1 %451, label %455, label %453

453:                                              ; preds = %452
  %454 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %458

455:                                              ; preds = %452
  %456 = getelementptr inbounds %struct.xpvcv, ptr %447, i64 0, i32 7
  %457 = load ptr, ptr %456, align 8, !tbaa !52
  br label %458

458:                                              ; preds = %453, %455
  %459 = phi ptr [ %454, %453 ], [ %457, %455 ]
  %460 = load ptr, ptr %459, align 8, !tbaa !139
  %461 = getelementptr inbounds %struct.xpvgv, ptr %460, i64 0, i32 5
  %462 = load ptr, ptr %461, align 8, !tbaa !52
  %463 = getelementptr inbounds %struct.hv, ptr %462, i64 0, i32 3
  %464 = load ptr, ptr %463, align 8, !tbaa !52
  %465 = load ptr, ptr %108, align 8, !tbaa !46
  %466 = getelementptr inbounds %struct.xpvcv, ptr %465, i64 0, i32 12
  %467 = load i32, ptr %466, align 4, !tbaa !80
  %468 = and i32 %467, 32768
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %472, label %470

470:                                              ; preds = %458
  %471 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %475

472:                                              ; preds = %458
  %473 = getelementptr inbounds %struct.xpvcv, ptr %465, i64 0, i32 7
  %474 = load ptr, ptr %473, align 8, !tbaa !52
  br label %475

475:                                              ; preds = %470, %472
  %476 = phi ptr [ %471, %470 ], [ %474, %472 ]
  %477 = load ptr, ptr %476, align 8, !tbaa !139
  %478 = getelementptr inbounds %struct.xpvgv, ptr %477, i64 0, i32 5
  %479 = load ptr, ptr %478, align 8, !tbaa !52
  %480 = load ptr, ptr %479, align 8, !tbaa !134
  %481 = getelementptr inbounds %struct.xpvhv, ptr %480, i64 0, i32 3
  %482 = load i64, ptr %481, align 8, !tbaa !135
  %483 = getelementptr ptr, ptr %464, i64 %482
  %484 = getelementptr ptr, ptr %483, i64 1
  %485 = load ptr, ptr %484, align 8, !tbaa !52
  br label %519

486:                                              ; preds = %435
  br i1 %451, label %489, label %487

487:                                              ; preds = %486
  %488 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %492

489:                                              ; preds = %486
  %490 = getelementptr inbounds %struct.xpvcv, ptr %447, i64 0, i32 7
  %491 = load ptr, ptr %490, align 8, !tbaa !52
  br label %492

492:                                              ; preds = %487, %489
  %493 = phi ptr [ %488, %487 ], [ %491, %489 ]
  %494 = load ptr, ptr %493, align 8, !tbaa !139
  %495 = getelementptr inbounds %struct.xpvgv, ptr %494, i64 0, i32 5
  %496 = load ptr, ptr %495, align 8, !tbaa !52
  %497 = getelementptr inbounds %struct.hv, ptr %496, i64 0, i32 3
  %498 = load ptr, ptr %497, align 8, !tbaa !52
  %499 = load ptr, ptr %108, align 8, !tbaa !46
  %500 = getelementptr inbounds %struct.xpvcv, ptr %499, i64 0, i32 12
  %501 = load i32, ptr %500, align 4, !tbaa !80
  %502 = and i32 %501, 32768
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %506, label %504

504:                                              ; preds = %492
  %505 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %108) #8
  br label %509

506:                                              ; preds = %492
  %507 = getelementptr inbounds %struct.xpvcv, ptr %499, i64 0, i32 7
  %508 = load ptr, ptr %507, align 8, !tbaa !52
  br label %509

509:                                              ; preds = %504, %506
  %510 = phi ptr [ %505, %504 ], [ %508, %506 ]
  %511 = load ptr, ptr %510, align 8, !tbaa !139
  %512 = getelementptr inbounds %struct.xpvgv, ptr %511, i64 0, i32 5
  %513 = load ptr, ptr %512, align 8, !tbaa !52
  %514 = load ptr, ptr %513, align 8, !tbaa !134
  %515 = getelementptr inbounds %struct.xpvhv, ptr %514, i64 0, i32 3
  %516 = load i64, ptr %515, align 8, !tbaa !135
  %517 = getelementptr ptr, ptr %498, i64 %516
  %518 = getelementptr ptr, ptr %517, i64 1
  br label %519

519:                                              ; preds = %509, %475
  %520 = phi ptr [ %485, %475 ], [ %518, %509 ]
  %521 = load ptr, ptr %520, align 8, !tbaa !52
  %522 = getelementptr inbounds %struct.hek, ptr %521, i64 0, i32 2
  %523 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %234) #9
  %524 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %522) #9
  %525 = add i64 %524, %523
  %526 = trunc i64 %525 to i32
  %527 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %169) #9
  %528 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %218) #9
  %529 = add i64 %528, %527
  %530 = trunc i64 %529 to i32
  %531 = tail call i32 @llvm.smax.i32(i32 %526, i32 %530)
  %532 = add nsw i32 %531, 3
  %533 = sext i32 %532 to i64
  %534 = tail call ptr @Perl_safesyscalloc(i64 noundef %533, i64 noundef 1) #8
  %535 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %534, ptr noundef nonnull dereferenceable(1) %522) #8
  %536 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %534)
  %537 = getelementptr inbounds i8, ptr %534, i64 %536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %537, ptr noundef nonnull align 1 dereferenceable(3) @.str.66, i64 3, i1 false)
  %538 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %534, ptr noundef nonnull dereferenceable(1) %234) #8
  %539 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %534) #9
  %540 = trunc i64 %539 to i32
  %541 = tail call ptr @Perl_hv_common_key_len(ptr noundef %191, ptr noundef %534, i32 noundef %540, i32 noundef 32, ptr noundef null, i32 noundef 0) #8
  %542 = icmp eq ptr %541, null
  br i1 %542, label %569, label %543

543:                                              ; preds = %519
  %544 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %534, ptr noundef nonnull dereferenceable(1) %218) #8
  %545 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %534)
  %546 = getelementptr inbounds i8, ptr %534, i64 %545
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %546, ptr noundef nonnull align 1 dereferenceable(3) @.str.66, i64 3, i1 false)
  %547 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %534, ptr noundef nonnull dereferenceable(1) %169) #8
  %548 = load ptr, ptr %541, align 8, !tbaa !53
  %549 = icmp eq ptr %548, null
  br i1 %549, label %554, label %550

550:                                              ; preds = %543
  %551 = getelementptr inbounds %struct.sv, ptr %548, i64 0, i32 1
  %552 = load i32, ptr %551, align 8, !tbaa !102
  %553 = add i32 %552, 1
  store i32 %553, ptr %551, align 8, !tbaa !102
  br label %554

554:                                              ; preds = %543, %550
  %555 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %534) #9
  %556 = trunc i64 %555 to i32
  %557 = tail call ptr @Perl_hv_common_key_len(ptr noundef %191, ptr noundef %534, i32 noundef %556, i32 noundef 36, ptr noundef %548, i32 noundef 0) #8
  %558 = icmp eq ptr %557, null
  br i1 %558, label %559, label %569

559:                                              ; preds = %554
  %560 = load ptr, ptr %541, align 8, !tbaa !53
  %561 = icmp eq ptr %560, null
  br i1 %561, label %569, label %562

562:                                              ; preds = %559
  %563 = getelementptr inbounds %struct.sv, ptr %560, i64 0, i32 1
  %564 = load i32, ptr %563, align 8, !tbaa !102
  %565 = icmp ugt i32 %564, 1
  br i1 %565, label %566, label %568

566:                                              ; preds = %562
  %567 = add i32 %564, -1
  store i32 %567, ptr %563, align 8, !tbaa !102
  br label %569

568:                                              ; preds = %562
  tail call void @Perl_sv_free2(ptr noundef nonnull %560, i32 noundef %564) #8
  br label %569

569:                                              ; preds = %568, %566, %559, %554, %519
  tail call void @Perl_safesysfree(ptr noundef %534) #8
  br label %570

570:                                              ; preds = %569, %183, %167
  %571 = tail call ptr @Perl_newSV(i64 noundef 0) #8
  %572 = ptrtoint ptr %154 to i64
  %573 = ptrtoint ptr %169 to i64
  %574 = sub i64 %572, %573
  tail call void @Perl_gv_init_pvn(ptr noundef %571, ptr noundef %168, ptr noundef nonnull %169, i64 noundef %574, i32 noundef 2) #8
  %575 = load ptr, ptr %108, align 8, !tbaa !46
  %576 = getelementptr inbounds %struct.xpvmg, ptr %575, i64 0, i32 1
  br label %577

577:                                              ; preds = %581, %570
  %578 = phi ptr [ %576, %570 ], [ %579, %581 ]
  %579 = load ptr, ptr %578, align 8, !tbaa !52
  %580 = icmp eq ptr %579, null
  br i1 %580, label %585, label %581

581:                                              ; preds = %577
  %582 = getelementptr inbounds %struct.magic, ptr %579, i64 0, i32 1
  %583 = load ptr, ptr %582, align 8, !tbaa !140
  %584 = icmp eq ptr %583, @subname_vtbl
  br i1 %584, label %592, label %577, !llvm.loop !143

585:                                              ; preds = %577
  %586 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 48) #8
  %587 = load ptr, ptr %108, align 8, !tbaa !46
  %588 = getelementptr inbounds %struct.xpvmg, ptr %587, i64 0, i32 1
  %589 = load ptr, ptr %588, align 8, !tbaa !52
  store ptr %589, ptr %586, align 8, !tbaa !144
  %590 = getelementptr inbounds %struct.magic, ptr %586, i64 0, i32 3
  store i8 126, ptr %590, align 2, !tbaa !145
  %591 = getelementptr inbounds %struct.magic, ptr %586, i64 0, i32 1
  store ptr @subname_vtbl, ptr %591, align 8, !tbaa !140
  store ptr %586, ptr %588, align 8, !tbaa !52
  br label %592

592:                                              ; preds = %581, %585
  %593 = phi ptr [ %586, %585 ], [ %579, %581 ]
  %594 = getelementptr inbounds %struct.magic, ptr %593, i64 0, i32 4
  %595 = load i8, ptr %594, align 1, !tbaa !146
  %596 = and i8 %595, 2
  %597 = icmp eq i8 %596, 0
  br i1 %597, label %609, label %598

598:                                              ; preds = %592
  %599 = getelementptr inbounds %struct.magic, ptr %593, i64 0, i32 6
  %600 = load ptr, ptr %599, align 8, !tbaa !147
  %601 = icmp eq ptr %600, null
  br i1 %601, label %609, label %602

602:                                              ; preds = %598
  %603 = getelementptr inbounds %struct.sv, ptr %600, i64 0, i32 1
  %604 = load i32, ptr %603, align 8, !tbaa !102
  %605 = icmp ugt i32 %604, 1
  br i1 %605, label %606, label %608

606:                                              ; preds = %602
  %607 = add i32 %604, -1
  store i32 %607, ptr %603, align 8, !tbaa !102
  br label %609

608:                                              ; preds = %602
  tail call void @Perl_sv_free2(ptr noundef nonnull %600, i32 noundef %604) #8
  br label %609

609:                                              ; preds = %608, %606, %598, %592
  %610 = shl i64 %11, 29
  %611 = ashr i64 %610, 32
  %612 = sub nsw i64 0, %611
  %613 = getelementptr inbounds ptr, ptr %2, i64 %612
  %614 = load i8, ptr %594, align 1, !tbaa !146
  %615 = or i8 %614, 2
  store i8 %615, ptr %594, align 1, !tbaa !146
  %616 = getelementptr inbounds %struct.magic, ptr %593, i64 0, i32 6
  store ptr %571, ptr %616, align 8, !tbaa !147
  %617 = load i32, ptr %122, align 4, !tbaa !131
  %618 = or i32 %617, 8388608
  store i32 %618, ptr %122, align 4, !tbaa !131
  %619 = load ptr, ptr %108, align 8, !tbaa !46
  %620 = getelementptr inbounds %struct.xpvcv, ptr %619, i64 0, i32 12
  %621 = load i32, ptr %620, align 4, !tbaa !80
  %622 = and i32 %621, -129
  store i32 %622, ptr %620, align 4, !tbaa !80
  tail call void @Perl_cvgv_set(ptr noundef nonnull %108, ptr noundef %571) #8
  %623 = getelementptr inbounds ptr, ptr %613, i64 1
  store ptr %34, ptr %623, align 8, !tbaa !53
  store ptr %623, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Sub__Util_subname(ptr noundef %0) #0 !prof !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !53
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !53
  %5 = load i32, ptr %3, align 4, !tbaa !61
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.67) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = shl i64 %12, 29
  %18 = ashr i64 %17, 32
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds ptr, ptr %2, i64 %19
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %22 = sext i32 %7 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !62
  %27 = and i32 %26, 2099200
  %28 = icmp eq i32 %27, 2097152
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = tail call i32 @Perl_mg_get(ptr noundef %24) #8
  br label %31

31:                                               ; preds = %29, %16
  %32 = load i32, ptr %25, align 4, !tbaa !62
  %33 = and i32 %32, 2048
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  %38 = getelementptr inbounds %struct.cv, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !131
  %40 = and i32 %39, 255
  %41 = icmp eq i32 %40, 13
  br i1 %41, label %44, label %42

42:                                               ; preds = %35, %31
  %43 = phi ptr [ %37, %35 ], [ undef, %31 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #8
  br label %44

44:                                               ; preds = %42, %35
  %45 = phi ptr [ %43, %42 ], [ %37, %35 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.xpvcv, ptr %46, i64 0, i32 12
  %48 = load i32, ptr %47, align 4, !tbaa !80
  %49 = and i32 %48, 32768
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %45) #8
  br label %56

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.xpvcv, ptr %46, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !52
  br label %56

56:                                               ; preds = %51, %53
  %57 = phi ptr [ %52, %51 ], [ %55, %53 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %61 = getelementptr inbounds ptr, ptr %60, i64 %22
  %62 = getelementptr inbounds ptr, ptr %61, i64 -1
  br label %102

63:                                               ; preds = %56
  %64 = load ptr, ptr %57, align 8, !tbaa !139
  %65 = getelementptr inbounds %struct.xpvgv, ptr %64, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !52
  %67 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !68
  %69 = and i32 %68, 33554432
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %92, label %71

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !52
  %74 = load ptr, ptr %66, align 8, !tbaa !134
  %75 = getelementptr inbounds %struct.xpvhv, ptr %74, i64 0, i32 3
  %76 = load i64, ptr %75, align 8, !tbaa !135
  %77 = getelementptr ptr, ptr %73, i64 %76
  %78 = getelementptr ptr, ptr %77, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !52
  %80 = icmp eq ptr %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %71
  %82 = getelementptr i8, ptr %77, i64 36
  %83 = load i32, ptr %82, align 4, !tbaa !137
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %79, align 8, !tbaa !53
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %81, %85
  %89 = phi ptr [ %78, %81 ], [ %79, %85 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !52
  %91 = getelementptr inbounds %struct.hek, ptr %90, i64 0, i32 2
  br label %92

92:                                               ; preds = %63, %71, %85, %88
  %93 = phi ptr [ %91, %88 ], [ null, %85 ], [ null, %71 ], [ null, %63 ]
  %94 = getelementptr inbounds %struct.xpvgv, ptr %64, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !52
  %96 = getelementptr inbounds %struct.hek, ptr %95, i64 0, i32 2
  %97 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.68, ptr noundef %93, ptr noundef nonnull %96) #8
  %98 = tail call ptr @Perl_sv_2mortal(ptr noundef %97) #8
  %99 = getelementptr inbounds ptr, ptr %20, i64 1
  store ptr %98, ptr %99, align 8, !tbaa !53
  %100 = load ptr, ptr @PL_stack_base, align 8, !tbaa !53
  %101 = getelementptr inbounds ptr, ptr %100, i64 %22
  br label %102

102:                                              ; preds = %92, %59
  %103 = phi ptr [ %62, %59 ], [ %101, %92 ]
  store ptr %103, ptr @PL_stack_sp, align 8, !tbaa !53
  ret void
}

declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_gv_init_pvn(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_amagic_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setnv(ptr noundef, double noundef) local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Perl_sv_cmp_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2cv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_gv_fetchpv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_sptr(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

declare void @Perl_push_scope() local_unnamed_addr #2

declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_cxinc() local_unnamed_addr #2

declare i32 @Perl_was_lvalue_sub() local_unnamed_addr #2

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_pad_push(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_croak_popstack() local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare ptr @Perl_markstack_grow() local_unnamed_addr #2

declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_block_gimme() local_unnamed_addr #2

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare ptr @Perl_get_hv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @spec_init_genrand(i64 noundef) local_unnamed_addr #2

declare i32 @Perl_seed() local_unnamed_addr #2

declare double @spec_rand() local_unnamed_addr #2

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_copypv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_rvweaken(ptr noundef) local_unnamed_addr #2

declare void @Perl_croak_no_modify() local_unnamed_addr #2

declare void @Perl_sv_del_backref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_looks_like_number(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_savepvn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare void @Perl_cvgv_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @boot_List__Util, ptr @Perl_xs_handshake, i64 1}
!36 = !{ptr @boot_List__Util, ptr @Perl_newXS_flags, i64 33}
!37 = !{ptr @boot_List__Util, ptr @Perl_newXS_deffile, i64 3}
!38 = !{ptr @boot_List__Util, ptr @Perl_gv_stashpvn, i64 1}
!39 = !{ptr @boot_List__Util, ptr @Perl_hv_common_key_len, i64 1}
!40 = !{ptr @boot_List__Util, ptr @Perl_gv_init_pvn, i64 1}
!41 = !{ptr @boot_List__Util, ptr @Perl_gv_add_by_type, i64 1}
!42 = !{ptr @boot_List__Util, ptr @Perl_sv_setsv_flags, i64 1}
!43 = !{ptr @boot_List__Util, ptr @Perl_xs_boot_epilog, i64 1}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 1}
!46 = !{!47, !48, i64 0}
!47 = !{!"cv", !48, i64 0, !51, i64 8, !51, i64 12, !49, i64 16}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!"int", !49, i64 0}
!52 = !{!49, !49, i64 0}
!53 = !{!48, !48, i64 0}
!54 = !{!55, !51, i64 12}
!55 = !{!"gv", !48, i64 0, !51, i64 8, !51, i64 12, !49, i64 16}
!56 = !{!"branch_weights", i32 0, i32 1}
!57 = !{!58, !48, i64 0}
!58 = !{!"gp", !48, i64 0, !48, i64 8, !48, i64 16, !51, i64 24, !51, i64 28, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !51, i64 64, !51, i64 67, !48, i64 72}
!59 = !{!"branch_weights", i32 1, i32 0}
!60 = !{!"function_entry_count", i64 0}
!61 = !{!51, !51, i64 0}
!62 = !{!63, !51, i64 12}
!63 = !{!"sv", !48, i64 0, !51, i64 8, !51, i64 12, !49, i64 16}
!64 = !{!63, !48, i64 0}
!65 = !{!66, !48, i64 0}
!66 = !{!"xpvmg", !48, i64 0, !49, i64 8, !67, i64 16, !49, i64 24, !49, i64 32, !49, i64 40}
!67 = !{!"long", !49, i64 0}
!68 = !{!69, !51, i64 12}
!69 = !{!"hv", !48, i64 0, !51, i64 8, !51, i64 12, !49, i64 16}
!70 = !{!71, !67, i64 16}
!71 = !{!"xpv", !48, i64 0, !49, i64 8, !67, i64 16, !49, i64 24}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!76, !49, i64 35}
!76 = !{!"op", !48, i64 0, !48, i64 8, !48, i64 16, !67, i64 24, !51, i64 32, !51, i64 33, !51, i64 33, !51, i64 33, !51, i64 33, !51, i64 33, !51, i64 33, !51, i64 33, !49, i64 34, !49, i64 35}
!77 = !{!76, !67, i64 24}
!78 = distinct !{!78, !73, !74}
!79 = distinct !{!79, !73, !74}
!80 = !{!81, !51, i64 92}
!81 = !{!"xpvcv", !48, i64 0, !49, i64 8, !67, i64 16, !49, i64 24, !48, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !48, i64 64, !49, i64 72, !48, i64 80, !51, i64 88, !51, i64 92, !51, i64 96}
!82 = !{!83, !84, i64 212}
!83 = !{!"jmpenv", !49, i64 0, !48, i64 200, !51, i64 208, !84, i64 212}
!84 = !{!"_Bool", !49, i64 0}
!85 = !{i8 0, i8 2}
!86 = !{}
!87 = !{!67, !67, i64 0}
!88 = !{!89, !48, i64 24}
!89 = !{!"stackinfo", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44}
!90 = !{!89, !48, i64 16}
!91 = !{!89, !51, i64 40}
!92 = !{!89, !51, i64 32}
!93 = !{!89, !48, i64 0}
!94 = !{!95, !48, i64 0}
!95 = !{!"av", !48, i64 0, !51, i64 8, !51, i64 12, !49, i64 16}
!96 = !{!97, !67, i64 16}
!97 = !{!"xpvav", !48, i64 0, !49, i64 8, !67, i64 16, !67, i64 24, !48, i64 32}
!98 = !{!97, !67, i64 24}
!99 = !{!89, !51, i64 36}
!100 = !{!89, !48, i64 8}
!101 = !{!76, !49, i64 34}
!102 = !{!63, !51, i64 8}
!103 = !{!104, !48, i64 8}
!104 = !{!"padlist", !67, i64 0, !48, i64 8, !51, i64 16, !51, i64 20}
!105 = distinct !{!105, !73, !74}
!106 = distinct !{!106, !73, !74}
!107 = distinct !{!107, !73, !74}
!108 = distinct !{!108, !73, !74}
!109 = distinct !{!109, !73, !74}
!110 = distinct !{!110, !73, !74}
!111 = distinct !{!111, !73, !74}
!112 = distinct !{!112, !73, !74}
!113 = distinct !{!113, !73, !74}
!114 = distinct !{!114, !73, !74}
!115 = distinct !{!115, !73, !74}
!116 = distinct !{!116, !73, !74}
!117 = distinct !{!117, !73, !74}
!118 = distinct !{!118, !73, !74}
!119 = distinct !{!119, !73, !74}
!120 = distinct !{!120, !73, !74}
!121 = distinct !{!121, !73, !74}
!122 = distinct !{!122, !73, !74}
!123 = distinct !{!123, !73, !74}
!124 = !{!84, !84, i64 0}
!125 = distinct !{!125, !73, !74}
!126 = !{!58, !48, i64 8}
!127 = !{!128, !48, i64 40}
!128 = !{!"cop", !48, i64 0, !48, i64 8, !48, i64 16, !67, i64 24, !51, i64 32, !51, i64 33, !51, i64 33, !51, i64 33, !51, i64 33, !51, i64 33, !51, i64 33, !51, i64 33, !49, i64 34, !49, i64 35, !51, i64 36, !48, i64 40, !48, i64 48, !51, i64 56, !51, i64 60, !48, i64 64, !48, i64 72}
!129 = !{!58, !51, i64 24}
!130 = !{!58, !48, i64 16}
!131 = !{!47, !51, i64 12}
!132 = distinct !{!132, !73, !74}
!133 = !{!58, !48, i64 32}
!134 = !{!69, !48, i64 0}
!135 = !{!136, !67, i64 24}
!136 = !{!"xpvhv", !48, i64 0, !49, i64 8, !67, i64 16, !67, i64 24}
!137 = !{!138, !51, i64 28}
!138 = !{!"xpvhv_aux", !49, i64 0, !48, i64 8, !48, i64 16, !51, i64 24, !51, i64 28, !48, i64 32, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52}
!139 = !{!55, !48, i64 0}
!140 = !{!141, !48, i64 8}
!141 = !{!"magic", !48, i64 0, !48, i64 8, !142, i64 16, !49, i64 18, !49, i64 19, !67, i64 24, !48, i64 32, !48, i64 40}
!142 = !{!"short", !49, i64 0}
!143 = distinct !{!143, !73, !74}
!144 = !{!141, !48, i64 0}
!145 = !{!141, !49, i64 18}
!146 = !{!141, !49, i64 19}
!147 = !{!141, !48, i64 32}
