; ModuleID = 'universal.c'
source_filename = "universal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xsub_details = type { ptr, ptr, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%struct.hv = type { ptr, i32, i32, %union.anon.12 }
%union.anon.12 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.mro_meta = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.2, %union._xivu }
%union.anon.2 = type { i64 }
%union._xivu = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu, %union._xnvu }
%union.anon.3 = type { i64 }
%union._xnvu = type { double }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.4, ptr, %union.anon.5, %union.anon.6, %union.anon.7, ptr, %union.anon.8, ptr, i32, i32, i32 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%union.anon.8 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu, %union._xnvu }
%union.anon.10 = type { i64 }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.11 }
%union.anon.11 = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.16, %union._xivu }
%union.anon.16 = type { i64 }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.io = type { ptr, i32, i32, %union.anon.15 }
%union.anon.15 = type { ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.13, %union._xivu, ptr, %union.anon.14, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.13 = type { i64 }
%union.anon.14 = type { ptr }
%struct.pmop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr, ptr, i32, %union.anon.17, %union.anon.18, ptr }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%struct.p5rx = type { ptr, i32, i32, %union.anon.20 }
%union.anon.20 = type { ptr }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.19, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union.anon.19 = type { i64 }
%struct.regexp_engine = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.unop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }

@.str = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Usage: %2p::%2p(%s)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Usage: %2p(%s)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Usage: CODE(0x%lx)(%s)\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"reference, kind\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"object-ref, method\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Usage: invocant->DOES(kind)\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"sv, failok=0\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"SCALAR[, ON]\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SCALAR\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"SCALAR[, REFCOUNT]\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"hv\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"filehandle[,args]\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"details\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"get_layers: unknown argument '%s'\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"%-p(%-p)\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@PL_curpm = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"name[, all ]\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"[all]\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"NULL array element in re::regnames()\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"msixxnp\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Usage: UNIVERSAL::VERSION(sv, ...)\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"Cannot find version of an unblessed reference\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.31 = private unnamed_addr constant [56 x i8] c"%2p does not define $%2p::VERSION--version check failed\00", align 1
@.str.32 = private unnamed_addr constant [62 x i8] c"%-p defines neither package nor VERSION--version check failed\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"qv\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"%2p version %-p required--this is only version %-p\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"v%s\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"Usage: version::new(class, version)\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"lobj, ...\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"lobj is not of type version\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"ver\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"ver is not of type version\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"operation not supported with version object\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"Invalid version format (version required)\00", align 1
@Perl_boot_core_UNIVERSAL.file = internal constant [12 x i8] c"universal.c\00", align 1
@details = internal unnamed_addr constant [51 x %struct.xsub_details] [%struct.xsub_details { ptr @.str.57, ptr @XS_UNIVERSAL_isa, ptr null }, %struct.xsub_details { ptr @.str.58, ptr @XS_UNIVERSAL_can, ptr null }, %struct.xsub_details { ptr @.str.59, ptr @XS_UNIVERSAL_DOES, ptr null }, %struct.xsub_details { ptr @.str.60, ptr @XS_universal_version, ptr null }, %struct.xsub_details { ptr @.str.61, ptr @XS_universal_version, ptr null }, %struct.xsub_details { ptr @.str.62, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.63, ptr @XS_version_new, ptr null }, %struct.xsub_details { ptr @.str.64, ptr @XS_version_new, ptr null }, %struct.xsub_details { ptr @.str.65, ptr @XS_version_stringify, ptr null }, %struct.xsub_details { ptr @.str.66, ptr @XS_version_stringify, ptr null }, %struct.xsub_details { ptr @.str.67, ptr @XS_version_numify, ptr null }, %struct.xsub_details { ptr @.str.68, ptr @XS_version_numify, ptr null }, %struct.xsub_details { ptr @.str.69, ptr @XS_version_normal, ptr null }, %struct.xsub_details { ptr @.str.70, ptr @XS_version_vcmp, ptr null }, %struct.xsub_details { ptr @.str.71, ptr @XS_version_vcmp, ptr null }, %struct.xsub_details { ptr @.str.72, ptr @XS_version_vcmp, ptr null }, %struct.xsub_details { ptr @.str.73, ptr @XS_version_boolean, ptr null }, %struct.xsub_details { ptr @.str.74, ptr @XS_version_boolean, ptr null }, %struct.xsub_details { ptr @.str.75, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.76, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.77, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.78, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.79, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.80, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.81, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.82, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.83, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.84, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.85, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.86, ptr @XS_version_is_alpha, ptr null }, %struct.xsub_details { ptr @.str.87, ptr @XS_version_qv, ptr null }, %struct.xsub_details { ptr @.str.88, ptr @XS_version_qv, ptr null }, %struct.xsub_details { ptr @.str.89, ptr @XS_version_is_qv, ptr null }, %struct.xsub_details { ptr @.str.90, ptr @XS_utf8_is_utf8, ptr null }, %struct.xsub_details { ptr @.str.91, ptr @XS_utf8_valid, ptr null }, %struct.xsub_details { ptr @.str.92, ptr @XS_utf8_encode, ptr null }, %struct.xsub_details { ptr @.str.93, ptr @XS_utf8_decode, ptr null }, %struct.xsub_details { ptr @.str.94, ptr @XS_utf8_upgrade, ptr null }, %struct.xsub_details { ptr @.str.95, ptr @XS_utf8_downgrade, ptr null }, %struct.xsub_details { ptr @.str.47, ptr @XS_utf8_native_to_unicode, ptr null }, %struct.xsub_details { ptr @.str.46, ptr @XS_utf8_unicode_to_native, ptr null }, %struct.xsub_details { ptr @.str.96, ptr @XS_Internals_SvREADONLY, ptr @.str.97 }, %struct.xsub_details { ptr @.str.98, ptr @XS_constant__make_const, ptr @.str.99 }, %struct.xsub_details { ptr @.str.100, ptr @XS_Internals_SvREFCNT, ptr @.str.97 }, %struct.xsub_details { ptr @.str.101, ptr @XS_Internals_hv_clear_placehold, ptr @.str.102 }, %struct.xsub_details { ptr @.str.103, ptr @XS_PerlIO_get_layers, ptr @.str.104 }, %struct.xsub_details { ptr @.str.105, ptr @XS_re_is_regexp, ptr @.str.106 }, %struct.xsub_details { ptr @.str.107, ptr @XS_re_regname, ptr @.str.108 }, %struct.xsub_details { ptr @.str.109, ptr @XS_re_regnames, ptr @.str.110 }, %struct.xsub_details { ptr @.str.111, ptr @XS_re_regnames_count, ptr @.str.21 }, %struct.xsub_details { ptr @.str.112, ptr @XS_re_regexp_pattern, ptr @.str.106 }], align 16
@.str.46 = private unnamed_addr constant [24 x i8] c"utf8::unicode_to_native\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"utf8::native_to_unicode\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"Regexp::\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"DESTROY\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"lobj\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"UNIVERSAL::isa\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"UNIVERSAL::can\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"UNIVERSAL::DOES\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"UNIVERSAL::VERSION\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"version::_VERSION\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"version::()\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"version::new\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"version::parse\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"version::(\22\22\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"version::stringify\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"version::(0+\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"version::numify\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"version::normal\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"version::(cmp\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"version::(<=>\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"version::vcmp\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"version::(bool\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"version::boolean\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"version::(+\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"version::(-\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"version::(*\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"version::(/\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"version::(+=\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"version::(-=\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"version::(*=\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"version::(/=\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"version::(abs\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"version::(nomethod\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"version::noop\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"version::is_alpha\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"version::qv\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"version::declare\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"version::is_qv\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"utf8::is_utf8\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"utf8::valid\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"utf8::encode\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"utf8::decode\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"utf8::upgrade\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"utf8::downgrade\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"Internals::SvREADONLY\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"\\[$%@];$\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"constant::_make_const\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"\\[$@]\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"Internals::SvREFCNT\00", align 1
@.str.101 = private unnamed_addr constant [33 x i8] c"Internals::hv_clear_placeholders\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"\\%\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"PerlIO::get_layers\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"*;@\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"re::is_regexp\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"re::regname\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c";$$\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"re::regnames\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c";$\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"re::regnames_count\00", align 1
@.str.112 = private unnamed_addr constant [19 x i8] c"re::regexp_pattern\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_sv_derived_from_sv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !86 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !87
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15, !prof !93

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !94
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !95
  store i64 %12, ptr %4, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  br label %17

15:                                               ; preds = %3
  %16 = call ptr @Perl_sv_2pv_flags(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 2) #8
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi ptr [ %14, %9 ], [ %16, %15 ]
  %19 = load i32, ptr %5, align 4, !tbaa !87
  %20 = and i32 %19, 536870912
  %21 = or i32 %20, %2
  %22 = load i64, ptr %4, align 8, !tbaa !98
  %23 = call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %0, ptr noundef %18, i64 noundef %22, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i1 %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #3 !prof !100 {
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !87
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !101

9:                                                ; preds = %4
  %10 = tail call i32 @Perl_mg_get(ptr noundef %0) #8
  br label %11

11:                                               ; preds = %4, %9
  %12 = load i32, ptr %5, align 4, !tbaa !87
  %13 = and i32 %12, 2048
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15, !prof !102

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = tail call ptr @Perl_sv_reftype(ptr noundef %17, i32 noundef 0) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20, !prof !103

20:                                               ; preds = %15
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) %1) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23, !prof !104

23:                                               ; preds = %20, %15
  %24 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !87
  %26 = and i32 %25, 1048576
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28, !prof !105

28:                                               ; preds = %23
  %29 = load ptr, ptr %17, align 8, !tbaa !94
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  br label %31

31:                                               ; preds = %20, %23, %28
  %32 = phi ptr [ %30, %28 ], [ undef, %23 ], [ undef, %20 ]
  %33 = phi i1 [ undef, %28 ], [ false, %23 ], [ true, %20 ]
  %34 = phi i1 [ true, %28 ], [ false, %23 ], [ false, %20 ]
  br i1 %34, label %37, label %47, !prof !108

35:                                               ; preds = %11
  %36 = tail call ptr @Perl_gv_stashsv(ptr noundef %0, i32 noundef 0) #8
  br label %37

37:                                               ; preds = %31, %35
  %38 = phi ptr [ %32, %31 ], [ %36, %35 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !109

40:                                               ; preds = %37
  %41 = tail call fastcc zeroext i1 @S_isa_lookup(ptr noundef nonnull %38, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  br i1 %41, label %47, label %42, !prof !110

42:                                               ; preds = %40, %37
  %43 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str, i32 noundef 9, i32 noundef 0) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !111

45:                                               ; preds = %42
  %46 = tail call fastcc zeroext i1 @S_isa_lookup(ptr noundef nonnull %43, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  br label %47

47:                                               ; preds = %42, %45, %40, %31
  %48 = phi i1 [ %33, %31 ], [ true, %40 ], [ %46, %45 ], [ false, %42 ]
  ret i1 %48
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_sv_derived_from(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %4 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %3, i32 noundef 0)
  ret i1 %4
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_sv_derived_from_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !113 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %5 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %4, i32 noundef %2)
  ret i1 %5
}

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i1 @S_isa_lookup(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !114 !PGOFuncName !115 {
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = load ptr, ptr %0, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.xpvhv, ptr %7, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !118
  %10 = getelementptr ptr, ptr %6, i64 %9
  %11 = getelementptr ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !122

14:                                               ; preds = %4
  %15 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %0) #8
  br label %16

16:                                               ; preds = %4, %14
  %17 = phi ptr [ %15, %14 ], [ %12, %4 ]
  %18 = getelementptr inbounds %struct.mro_meta, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !123
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24, !prof !125

21:                                               ; preds = %16
  %22 = tail call ptr @Perl_mro_get_linear_isa(ptr noundef nonnull %0) #8
  %23 = load ptr, ptr %18, align 8, !tbaa !123
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi ptr [ %19, %16 ], [ %23, %21 ]
  %26 = lshr i32 %3, 29
  %27 = and i32 %26, 1
  %28 = tail call ptr @Perl_hv_common(ptr noundef %25, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef %27, i32 noundef 8, ptr noundef null, i32 noundef 0) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %95, !prof !126

30:                                               ; preds = %24
  %31 = trunc i64 %2 to i32
  %32 = tail call ptr @Perl_gv_stashpvn(ptr noundef %1, i32 noundef %31, i32 noundef %3) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %94, label %34, !prof !127

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.hv, ptr %32, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !128
  %37 = and i32 %36, 33554432
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %63, label %39, !prof !127

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.hv, ptr %32, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = load ptr, ptr %32, align 8, !tbaa !116
  %43 = getelementptr inbounds %struct.xpvhv, ptr %42, i64 0, i32 3
  %44 = load i64, ptr %43, align 8, !tbaa !118
  %45 = getelementptr ptr, ptr %41, i64 %44
  %46 = getelementptr ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !99
  %48 = icmp eq ptr %47, null
  br i1 %48, label %63, label %49, !prof !127

49:                                               ; preds = %39
  %50 = getelementptr i8, ptr %45, i64 36
  %51 = load i32, ptr %50, align 4, !tbaa !129
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %55, !prof !127

53:                                               ; preds = %49
  %54 = load ptr, ptr %47, align 8, !tbaa !130
  br label %63

55:                                               ; preds = %49
  %56 = icmp slt i32 %51, -1
  br i1 %56, label %57, label %60, !prof !127

57:                                               ; preds = %55
  %58 = getelementptr inbounds ptr, ptr %47, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !130
  br label %63

60:                                               ; preds = %55
  %61 = icmp eq i32 %51, -1
  %62 = select i1 %61, ptr null, ptr %47, !prof !127
  br label %63

63:                                               ; preds = %60, %34, %39, %53, %57
  %64 = phi ptr [ %54, %53 ], [ %59, %57 ], [ null, %39 ], [ null, %34 ], [ %62, %60 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %81, !prof !127

66:                                               ; preds = %63
  %67 = icmp ne i32 %37, 0
  tail call void @llvm.assume(i1 %67)
  %68 = getelementptr inbounds %struct.hv, ptr %32, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !99
  %70 = load ptr, ptr %32, align 8, !tbaa !116
  %71 = getelementptr inbounds %struct.xpvhv, ptr %70, i64 0, i32 3
  %72 = load i64, ptr %71, align 8, !tbaa !118
  %73 = getelementptr ptr, ptr %69, i64 %72
  %74 = getelementptr ptr, ptr %73, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !99, !nonnull !131, !noundef !131
  %76 = getelementptr i8, ptr %73, i64 36
  %77 = load i32, ptr %76, align 4, !tbaa !129
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %66
  %80 = load ptr, ptr %75, align 8, !tbaa !130
  br label %81

81:                                               ; preds = %79, %66, %63
  %82 = phi ptr [ %64, %63 ], [ %80, %79 ], [ %75, %66 ]
  %83 = getelementptr inbounds %struct.hek, ptr %82, i64 0, i32 2
  %84 = getelementptr inbounds %struct.hek, ptr %82, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !132
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %83, i64 %86
  %88 = getelementptr inbounds i8, ptr %87, i64 1
  %89 = load i8, ptr %88, align 1, !tbaa !99
  %90 = zext i8 %89 to i32
  %91 = load i32, ptr %82, align 4, !tbaa !134
  %92 = tail call ptr @Perl_hv_common(ptr noundef %25, ptr noundef null, ptr noundef nonnull %83, i64 noundef %86, i32 noundef %90, i32 noundef 8, ptr noundef null, i32 noundef %91) #8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %95, !prof !135

94:                                               ; preds = %81, %30
  br label %95

95:                                               ; preds = %24, %81, %94
  %96 = phi i1 [ false, %94 ], [ true, %81 ], [ true, %24 ]
  ret i1 %96
}

declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_sv_does_sv(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 !prof !113 {
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  tail call void @Perl_push_scope() #8
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #8
  %5 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !98
  store i64 %5, ptr @PL_tmps_floor, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !87
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @Perl_mg_get(ptr noundef %0) #8
  br label %12

12:                                               ; preds = %3, %10
  %13 = load i32, ptr %6, align 4, !tbaa !87
  %14 = and i32 %13, 65280
  %15 = icmp ne i32 %14, 0
  %16 = and i32 %13, 255
  %17 = icmp eq i32 %16, 8
  %18 = or i1 %15, %17
  %19 = and i32 %13, 16777471
  %20 = icmp eq i32 %19, 16777226
  %21 = or i1 %20, %18
  br i1 %21, label %22, label %139

22:                                               ; preds = %12
  %23 = and i32 %13, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = and i32 %13, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %139, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %0, align 8, !tbaa !94
  %30 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !95
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %139, label %33

33:                                               ; preds = %28, %22
  %34 = tail call i32 @Perl_sv_isobject(ptr noundef %0) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !99
  %39 = tail call ptr @Perl_sv_ref(ptr noundef null, ptr noundef %38, i32 noundef 1) #8
  br label %40

40:                                               ; preds = %33, %36
  %41 = phi ptr [ %39, %36 ], [ %0, %33 ]
  %42 = tail call i32 @Perl_sv_eq_flags(ptr noundef %41, ptr noundef %1, i32 noundef 2) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %139

44:                                               ; preds = %40
  %45 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %46 = getelementptr inbounds i32, ptr %45, i64 1
  store ptr %46, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %47 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !130
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = tail call ptr @Perl_markstack_grow() #8
  br label %51

51:                                               ; preds = %44, %49
  %52 = phi ptr [ %50, %49 ], [ %46, %44 ]
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %54 = ptrtoint ptr %4 to i64
  %55 = ptrtoint ptr %53 to i64
  %56 = sub i64 %54, %55
  %57 = lshr exact i64 %56, 3
  %58 = trunc i64 %57 to i32
  store i32 %58, ptr %52, align 4, !tbaa !136
  %59 = load ptr, ptr @PL_stack_max, align 8, !tbaa !130
  %60 = ptrtoint ptr %59 to i64
  %61 = sub i64 %60, %54
  %62 = icmp slt i64 %61, 16
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = tail call ptr @Perl_stack_grow(ptr noundef %4, ptr noundef %4, i64 noundef 2) #8
  br label %65

65:                                               ; preds = %51, %63
  %66 = phi ptr [ %64, %63 ], [ %4, %51 ]
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  store ptr %0, ptr %67, align 8, !tbaa !130
  %68 = getelementptr inbounds ptr, ptr %66, i64 2
  store ptr %1, ptr %68, align 8, !tbaa !130
  store ptr %68, ptr @PL_stack_sp, align 8, !tbaa !130
  %69 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.1, i64 noundef 3, i32 noundef 524288) #8
  %70 = getelementptr inbounds %struct.sv, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !87
  %72 = or i32 %71, 32768
  store i32 %72, ptr %70, align 4, !tbaa !87
  %73 = tail call i32 @Perl_call_sv(ptr noundef %69, i32 noundef 130) #8
  %74 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %75 = load ptr, ptr %74, align 8, !tbaa !130
  %76 = icmp eq ptr %75, null
  br i1 %76, label %133, label %77

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !87
  %80 = and i32 %79, 2097152
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %75, i32 noundef 2) #8
  br label %133

84:                                               ; preds = %77
  %85 = and i32 %79, 65280
  %86 = icmp ne i32 %85, 0
  %87 = and i32 %79, 255
  %88 = icmp eq i32 %87, 8
  %89 = or i1 %86, %88
  %90 = and i32 %79, 16777471
  %91 = icmp eq i32 %90, 16777226
  %92 = or i1 %91, %89
  br i1 %92, label %93, label %133

93:                                               ; preds = %84
  %94 = and i32 %79, 1024
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %75, align 8, !tbaa !94
  %98 = icmp eq ptr %97, null
  br i1 %98, label %133, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.xpv, ptr %97, i64 0, i32 2
  %101 = load i64, ptr %100, align 8, !tbaa !95
  %102 = icmp ugt i64 %101, 1
  br i1 %102, label %133, label %103

103:                                              ; preds = %99
  %104 = icmp eq i64 %101, 0
  br i1 %104, label %133, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !99
  %108 = load i8, ptr %107, align 1, !tbaa !99
  %109 = icmp ne i8 %108, 48
  br label %133

110:                                              ; preds = %93
  %111 = and i32 %79, 768
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %131, label %113

113:                                              ; preds = %110
  %114 = and i32 %79, 256
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %75, align 8, !tbaa !94
  %118 = getelementptr inbounds %struct.xpviv, ptr %117, i64 0, i32 4
  %119 = load i64, ptr %118, align 8, !tbaa !99
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %116, %113
  %122 = and i32 %79, 512
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %75, align 8, !tbaa !94
  %126 = getelementptr inbounds %struct.xpvnv, ptr %125, i64 0, i32 5
  %127 = load double, ptr %126, align 8, !tbaa !99
  %128 = fcmp uno double %127, 0.000000e+00
  br i1 %128, label %133, label %129

129:                                              ; preds = %124
  %130 = fcmp une double %127, 0.000000e+00
  br label %133

131:                                              ; preds = %110
  %132 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %75, i32 noundef 0) #8
  br label %133

133:                                              ; preds = %82, %131, %84, %99, %105, %103, %96, %121, %129, %116, %124, %65
  %134 = phi i1 [ false, %65 ], [ %83, %82 ], [ %132, %131 ], [ false, %84 ], [ false, %96 ], [ true, %99 ], [ false, %103 ], [ %109, %105 ], [ true, %116 ], [ false, %121 ], [ %130, %129 ], [ true, %124 ]
  %135 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !98
  %136 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !98
  %137 = icmp sgt i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  tail call void @Perl_free_tmps() #8
  br label %139

139:                                              ; preds = %133, %138, %40, %25, %28, %12
  %140 = phi i1 [ false, %12 ], [ false, %28 ], [ false, %25 ], [ true, %40 ], [ %134, %138 ], [ %134, %133 ]
  tail call void @Perl_pop_scope() #8
  ret i1 %140
}

declare void @Perl_push_scope() local_unnamed_addr #2

declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare i32 @Perl_sv_isobject(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_ref(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_sv_eq_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_markstack_grow() local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_free_tmps() local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_sv_does(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !113 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %4 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %3, i32 noundef 524288) #8
  %5 = tail call zeroext i1 @Perl_sv_does_sv(ptr noundef %0, ptr noundef %4, i32 poison)
  ret i1 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_sv_does_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !113 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %5 = or i32 %2, 524288
  %6 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %4, i32 noundef %5) #8
  %7 = tail call zeroext i1 @Perl_sv_does_sv(ptr noundef %0, ptr noundef %6, i32 poison)
  ret i1 %7
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_sv_does_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !113 {
  %5 = or i32 %3, 524288
  %6 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %2, i32 noundef %5) #8
  %7 = tail call zeroext i1 @Perl_sv_does_sv(ptr noundef %0, ptr noundef %6, i32 poison)
  ret i1 %7
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !113 {
  %3 = load ptr, ptr %0, align 8, !tbaa !137
  %4 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !139
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %50, label %14

14:                                               ; preds = %56, %11
  %15 = phi ptr [ %12, %11 ], [ %57, %56 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !141
  %17 = getelementptr inbounds %struct.xpvgv, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  %19 = getelementptr inbounds %struct.hv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !128
  %21 = and i32 %20, 33554432
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.hv, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = load ptr, ptr %18, align 8, !tbaa !116
  %27 = getelementptr inbounds %struct.xpvhv, ptr %26, i64 0, i32 3
  %28 = load i64, ptr %27, align 8, !tbaa !118
  %29 = getelementptr ptr, ptr %25, i64 %28
  %30 = getelementptr ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !99
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %23
  %34 = getelementptr i8, ptr %29, i64 36
  %35 = load i32, ptr %34, align 4, !tbaa !129
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %31, align 8, !tbaa !130
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  br i1 %36, label %43, label %41

41:                                               ; preds = %40
  %42 = load ptr, ptr %31, align 8, !tbaa !130
  br label %43

43:                                               ; preds = %33, %40, %41
  %44 = phi ptr [ %42, %41 ], [ %31, %40 ], [ %31, %33 ]
  %45 = getelementptr inbounds %struct.xpvgv, ptr %16, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !99
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2, ptr noundef %44, ptr noundef %46, ptr noundef %1) #8
  br label %61

47:                                               ; preds = %14, %23, %37
  %48 = getelementptr inbounds %struct.xpvgv, ptr %16, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !99
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3, ptr noundef %49, ptr noundef %1) #8
  br label %61

50:                                               ; preds = %11
  br i1 %7, label %53, label %51

51:                                               ; preds = %50
  %52 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #8
  br label %56

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !99
  br label %56

56:                                               ; preds = %51, %53
  %57 = phi ptr [ %52, %51 ], [ %55, %53 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %14

59:                                               ; preds = %56
  %60 = ptrtoint ptr %0 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4, i64 noundef %60, ptr noundef %1) #8
  br label %61

61:                                               ; preds = %43, %47, %59
  ret void
}

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_UNIVERSAL_isa(ptr noundef %0) #0 !prof !86 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %15, label %14, !prof !93

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.5)
  br label %60

15:                                               ; preds = %1
  %16 = add nsw i32 %5, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %6, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !87
  %22 = and i32 %21, 2097152
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24, !prof !93

24:                                               ; preds = %15
  %25 = tail call i32 @Perl_mg_get(ptr noundef %19) #8
  br label %26

26:                                               ; preds = %15, %24
  %27 = load i32, ptr %20, align 4, !tbaa !87
  %28 = and i32 %27, 65280
  %29 = icmp ne i32 %28, 0
  %30 = and i32 %27, 255
  %31 = icmp eq i32 %30, 8
  %32 = or i1 %29, %31
  %33 = and i32 %27, 16777471
  %34 = icmp eq i32 %33, 16777226
  %35 = or i1 %34, %32
  br i1 %35, label %36, label %54, !prof !93

36:                                               ; preds = %26
  %37 = and i32 %27, 2048
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47, !prof !143

39:                                               ; preds = %36
  %40 = and i32 %27, 1024
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42, !prof !144

42:                                               ; preds = %39
  %43 = load ptr, ptr %19, align 8, !tbaa !94
  %44 = getelementptr inbounds %struct.xpv, ptr %43, i64 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !95
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %54, label %47, !prof !144

47:                                               ; preds = %42, %36
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %49 = getelementptr ptr, ptr %48, i64 %7
  %50 = getelementptr ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !130
  %52 = tail call zeroext i1 @Perl_sv_derived_from_sv(ptr noundef %19, ptr noundef %51, i32 noundef 0)
  %53 = select i1 %52, ptr @PL_sv_yes, ptr @PL_sv_no, !prof !145
  br label %54

54:                                               ; preds = %42, %39, %26, %47
  %55 = phi ptr [ %53, %47 ], [ @PL_sv_undef, %26 ], [ @PL_sv_undef, %39 ], [ @PL_sv_undef, %42 ]
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %57 = getelementptr inbounds ptr, ptr %56, i64 %17
  store ptr %55, ptr %57, align 8, !tbaa !130
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %59 = getelementptr inbounds ptr, ptr %58, i64 %17
  store ptr %59, ptr @PL_stack_sp, align 8, !tbaa !130
  br label %60

60:                                               ; preds = %54, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @XS_UNIVERSAL_can(ptr noundef %0) #3 !prof !146 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %16, label %15, !prof !147

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.6)
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !87
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !147

25:                                               ; preds = %16
  %26 = tail call i32 @Perl_mg_get(ptr noundef %20) #8
  br label %27

27:                                               ; preds = %16, %25
  %28 = load i32, ptr %21, align 4, !tbaa !87
  %29 = and i32 %28, 65280
  %30 = icmp ne i32 %29, 0
  %31 = and i32 %28, 255
  %32 = icmp eq i32 %31, 8
  %33 = or i1 %30, %32
  %34 = and i32 %28, 16777471
  %35 = icmp eq i32 %34, 16777226
  %36 = or i1 %35, %33
  br i1 %36, label %37, label %168, !prof !147

37:                                               ; preds = %27
  %38 = and i32 %28, 1024
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40, !prof !147

40:                                               ; preds = %37
  %41 = load ptr, ptr %20, align 8, !tbaa !94
  %42 = getelementptr inbounds %struct.xpv, ptr %41, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !95
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %168, label %45

45:                                               ; preds = %40, %37
  %46 = and i32 %28, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %88, label %48, !prof !148

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !99
  %51 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !87
  %53 = and i32 %52, 1048576
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55, !prof !148

55:                                               ; preds = %48
  %56 = load ptr, ptr %50, align 8, !tbaa !94
  %57 = load ptr, ptr %56, align 8, !tbaa !106
  br label %146

58:                                               ; preds = %48
  %59 = and i32 %52, 49152
  %60 = icmp eq i32 %59, 32768
  br i1 %60, label %61, label %146

61:                                               ; preds = %58
  %62 = and i32 %52, 255
  %63 = icmp eq i32 %62, 9
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = icmp eq i32 %62, 10
  %66 = icmp ne ptr %50, null
  %67 = and i1 %66, %65
  br i1 %67, label %70, label %146

68:                                               ; preds = %61
  %69 = icmp eq ptr %50, null
  br i1 %69, label %146, label %70

70:                                               ; preds = %64, %68
  %71 = add nsw i32 %62, -9
  %72 = icmp ult i32 %71, 2
  br i1 %72, label %73, label %146

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !99
  %76 = icmp eq ptr %75, null
  br i1 %76, label %146, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.gp, ptr %75, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !149
  %80 = icmp eq ptr %79, null
  br i1 %80, label %146, label %81

81:                                               ; preds = %77
  %82 = icmp ne ptr %50, null
  tail call void @llvm.assume(i1 %82)
  br i1 %63, label %85, label %83

83:                                               ; preds = %81
  %84 = icmp eq i32 %62, 10
  tail call void @llvm.assume(i1 %84)
  br label %85

85:                                               ; preds = %83, %81
  %86 = load ptr, ptr %79, align 8, !tbaa !151
  %87 = load ptr, ptr %86, align 8, !tbaa !106
  br label %146

88:                                               ; preds = %45
  %89 = and i32 %28, 49152
  %90 = icmp eq i32 %89, 32768
  br i1 %90, label %91, label %117

91:                                               ; preds = %88
  %92 = icmp eq i32 %31, 9
  br i1 %92, label %97, label %93

93:                                               ; preds = %91
  %94 = icmp eq i32 %31, 10
  %95 = icmp ne ptr %20, null
  %96 = and i1 %95, %94
  br i1 %96, label %99, label %117

97:                                               ; preds = %91
  %98 = icmp eq ptr %20, null
  br i1 %98, label %117, label %99

99:                                               ; preds = %93, %97
  %100 = add nsw i32 %31, -9
  %101 = icmp ult i32 %100, 2
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !99
  %105 = icmp eq ptr %104, null
  br i1 %105, label %117, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.gp, ptr %104, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !149
  %109 = icmp eq ptr %108, null
  br i1 %109, label %117, label %110

110:                                              ; preds = %106
  %111 = icmp ne ptr %20, null
  tail call void @llvm.assume(i1 %111)
  br i1 %92, label %114, label %112

112:                                              ; preds = %110
  %113 = icmp eq i32 %31, 10
  tail call void @llvm.assume(i1 %113)
  br label %114

114:                                              ; preds = %112, %110
  %115 = load ptr, ptr %108, align 8, !tbaa !151
  %116 = load ptr, ptr %115, align 8, !tbaa !106
  br label %146

117:                                              ; preds = %97, %93, %99, %102, %106, %88
  %118 = tail call ptr @Perl_gv_fetchsv(ptr noundef %20, i32 noundef 2048, i32 noundef 15) #8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %141, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.sv, ptr %118, i64 0, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !87
  %123 = and i32 %122, 255
  %124 = add nsw i32 %123, -9
  %125 = icmp ult i32 %124, 2
  br i1 %125, label %126, label %141

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.gv, ptr %118, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !99
  %129 = icmp eq ptr %128, null
  br i1 %129, label %141, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.gp, ptr %128, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !149
  %133 = icmp eq ptr %132, null
  br i1 %133, label %141, label %134

134:                                              ; preds = %130
  %135 = icmp eq i32 %123, 9
  br i1 %135, label %138, label %136

136:                                              ; preds = %134
  %137 = icmp eq i32 %123, 10
  tail call void @llvm.assume(i1 %137)
  br label %138

138:                                              ; preds = %136, %134
  %139 = load ptr, ptr %132, align 8, !tbaa !151
  %140 = load ptr, ptr %139, align 8, !tbaa !106
  br label %146

141:                                              ; preds = %120, %126, %130, %117
  %142 = tail call ptr @Perl_gv_stashsv(ptr noundef %20, i32 noundef 0) #8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str, i32 noundef 9, i32 noundef 0) #8
  br label %146

146:                                              ; preds = %68, %64, %70, %114, %141, %144, %138, %55, %73, %85, %77, %58
  %147 = phi ptr [ %57, %55 ], [ %87, %85 ], [ null, %77 ], [ null, %73 ], [ null, %58 ], [ %116, %114 ], [ %140, %138 ], [ %142, %141 ], [ %145, %144 ], [ null, %70 ], [ null, %64 ], [ null, %68 ]
  %148 = icmp eq ptr %147, null
  br i1 %148, label %168, label %149, !prof !148

149:                                              ; preds = %146
  %150 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %151 = getelementptr ptr, ptr %150, i64 %8
  %152 = getelementptr ptr, ptr %151, i64 2
  %153 = load ptr, ptr %152, align 8, !tbaa !130
  %154 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef nonnull %147, ptr noundef %153, i32 noundef 0) #8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %168, label %156, !prof !148

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.gv, ptr %154, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !153
  %159 = and i32 %158, 255
  %160 = icmp eq i32 %159, 9
  br i1 %160, label %161, label %168, !prof !147

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.gv, ptr %154, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !99
  %164 = getelementptr inbounds %struct.gp, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !154
  %166 = tail call ptr @Perl_newRV(ptr noundef %165) #8
  %167 = tail call ptr @Perl_sv_2mortal(ptr noundef %166) #8
  br label %168

168:                                              ; preds = %146, %161, %156, %149, %40, %27
  %169 = phi ptr [ @PL_sv_undef, %27 ], [ @PL_sv_undef, %40 ], [ @PL_sv_undef, %146 ], [ %167, %161 ], [ @PL_sv_undef, %156 ], [ @PL_sv_undef, %149 ]
  %170 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %171 = getelementptr inbounds ptr, ptr %170, i64 %18
  store ptr %169, ptr %171, align 8, !tbaa !130
  %172 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %173 = getelementptr inbounds ptr, ptr %172, i64 %18
  store ptr %173, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

declare ptr @Perl_gv_fetchsv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_UNIVERSAL_DOES(ptr nocapture readnone %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #8
  br label %28

15:                                               ; preds = %1
  %16 = add nsw i32 %5, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %6, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = getelementptr ptr, ptr %8, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  %22 = tail call zeroext i1 @Perl_sv_does_sv(ptr noundef %19, ptr noundef %21, i32 poison)
  %23 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %24 = getelementptr inbounds ptr, ptr %23, i64 %17
  %25 = select i1 %22, ptr @PL_sv_yes, ptr @PL_sv_no
  store ptr %25, ptr %24, align 8, !tbaa !130
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %27 = getelementptr inbounds ptr, ptr %26, i64 %17
  store ptr %27, ptr @PL_stack_sp, align 8, !tbaa !130
  br label %28

28:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_utf8_is_utf8(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8)
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %17 = sext i32 %7 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = getelementptr inbounds ptr, ptr %18, i64 -1
  br label %39

20:                                               ; preds = %1
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds ptr, ptr %6, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !87
  %26 = and i32 %25, 2097152
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = tail call i32 @Perl_mg_get(ptr noundef %23) #8
  br label %30

30:                                               ; preds = %20, %28
  %31 = load i32, ptr %24, align 4, !tbaa !87
  %32 = and i32 %31, 536870912
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %35 = getelementptr inbounds ptr, ptr %34, i64 %21
  %36 = select i1 %33, ptr @PL_sv_no, ptr @PL_sv_yes
  store ptr %36, ptr %35, align 8, !tbaa !130
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %38 = getelementptr inbounds ptr, ptr %37, i64 %21
  br label %39

39:                                               ; preds = %30, %15
  %40 = phi ptr [ %38, %30 ], [ %19, %15 ]
  store ptr %40, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_utf8_valid(ptr noundef %0) #0 !prof !113 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %6 = load i32, ptr %4, align 4, !tbaa !136
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8)
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %18 = sext i32 %8 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = getelementptr inbounds ptr, ptr %19, i64 -1
  store ptr %20, ptr @PL_stack_sp, align 8, !tbaa !130
  br label %52

21:                                               ; preds = %1
  %22 = sext i32 %8 to i64
  %23 = getelementptr inbounds ptr, ptr %7, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !87
  %27 = and i32 %26, 2098176
  %28 = icmp eq i32 %27, 1024
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load ptr, ptr %24, align 8, !tbaa !94
  %31 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !95
  store i64 %32, ptr %2, align 8, !tbaa !98
  %33 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !99
  br label %37

35:                                               ; preds = %21
  %36 = call ptr @Perl_sv_2pv_flags(ptr noundef %24, ptr noundef nonnull %2, i32 noundef 34) #8
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %34, %29 ], [ %36, %35 ]
  %39 = load i32, ptr %25, align 4, !tbaa !87
  %40 = and i32 %39, 536870912
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i64, ptr %2, align 8, !tbaa !98
  %44 = call zeroext i1 @Perl_is_utf8_string(ptr noundef %38, i64 noundef %43) #8
  %45 = select i1 %44, ptr @PL_sv_yes, ptr @PL_sv_no
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi ptr [ @PL_sv_yes, %37 ], [ %45, %42 ]
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %49 = getelementptr inbounds ptr, ptr %48, i64 %22
  store ptr %47, ptr %49, align 8, !tbaa !130
  %50 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %51 = getelementptr inbounds ptr, ptr %50, i64 %22
  store ptr %51, ptr @PL_stack_sp, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  br label %52

52:                                               ; preds = %46, %16
  ret void
}

declare zeroext i1 @Perl_is_utf8_string(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_utf8_encode(ptr noundef %0) #0 !prof !112 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15, !prof !155

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8)
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  tail call void @Perl_sv_utf8_encode(ptr noundef %20) #8
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %22 = getelementptr inbounds ptr, ptr %21, i64 %18
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !87
  %26 = and i32 %25, 4194304
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28, !prof !155

28:                                               ; preds = %16
  %29 = tail call i32 @Perl_mg_set(ptr noundef %23) #8
  br label %30

30:                                               ; preds = %16, %28
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %32 = getelementptr inbounds ptr, ptr %31, i64 %18
  %33 = getelementptr inbounds ptr, ptr %32, i64 -1
  store ptr %33, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

declare void @Perl_sv_utf8_encode(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_utf8_decode(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8)
  br label %37

16:                                               ; preds = %1
  %17 = sext i32 %7 to i64
  %18 = getelementptr inbounds ptr, ptr %6, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !87
  %22 = and i32 %21, 430018304
  %23 = icmp eq i32 %22, 1024
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef %19, ptr noundef null, i32 noundef 2) #8
  br label %26

26:                                               ; preds = %16, %24
  %27 = tail call zeroext i1 @Perl_sv_utf8_decode(ptr noundef %19) #8
  %28 = load i32, ptr %20, align 4, !tbaa !87
  %29 = and i32 %28, 4194304
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call i32 @Perl_mg_set(ptr noundef %19) #8
  br label %33

33:                                               ; preds = %26, %31
  %34 = select i1 %27, ptr @PL_sv_yes, ptr @PL_sv_no
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %36 = getelementptr inbounds ptr, ptr %35, i64 %17
  store ptr %34, ptr %36, align 8, !tbaa !130
  br label %37

37:                                               ; preds = %15, %33
  %38 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %39 = sext i32 %7 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  store ptr %40, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_utf8_decode(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_utf8_upgrade(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8)
  br label %45

16:                                               ; preds = %1
  %17 = sext i32 %7 to i64
  %18 = getelementptr inbounds ptr, ptr %6, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = load ptr, ptr @PL_op, align 8, !tbaa !130
  %21 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 6
  %22 = load i8, ptr %21, align 1, !tbaa !156
  %23 = and i8 %22, 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = load ptr, ptr @PL_curpad, align 8, !tbaa !130
  %27 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 3
  %28 = load i64, ptr %27, align 8, !tbaa !158
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !130
  br label %33

31:                                               ; preds = %16
  %32 = tail call ptr @Perl_sv_newmortal() #8
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %30, %25 ], [ %32, %31 ]
  %35 = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %19, i32 noundef 2, i64 noundef 0) #8
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %37 = getelementptr inbounds ptr, ptr %36, i64 %17
  tail call void @Perl_sv_setiv(ptr noundef %34, i64 noundef %35) #8
  %38 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !87
  %40 = and i32 %39, 4194304
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = tail call i32 @Perl_mg_set(ptr noundef %34) #8
  br label %44

44:                                               ; preds = %33, %42
  store ptr %34, ptr %37, align 8, !tbaa !130
  br label %45

45:                                               ; preds = %15, %44
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %47 = sext i32 %7 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr %48, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_utf8_downgrade(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, -3
  %16 = icmp ult i32 %15, -2
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.9)
  br label %91

18:                                               ; preds = %1
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %6, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  %22 = icmp slt i32 %14, 2
  br i1 %22, label %85, label %23

23:                                               ; preds = %18
  %24 = sext i32 %5 to i64
  %25 = getelementptr ptr, ptr %6, i64 %24
  %26 = getelementptr ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !130
  %28 = icmp eq ptr %27, null
  br i1 %28, label %85, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !87
  %32 = and i32 %31, 2097152
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %27, i32 noundef 2) #8
  br label %85

36:                                               ; preds = %29
  %37 = and i32 %31, 65280
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %31, 255
  %40 = icmp eq i32 %39, 8
  %41 = or i1 %38, %40
  %42 = and i32 %31, 16777471
  %43 = icmp eq i32 %42, 16777226
  %44 = or i1 %43, %41
  br i1 %44, label %45, label %85

45:                                               ; preds = %36
  %46 = and i32 %31, 1024
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %27, align 8, !tbaa !94
  %50 = icmp eq ptr %49, null
  br i1 %50, label %85, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.xpv, ptr %49, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !95
  %54 = icmp ugt i64 %53, 1
  br i1 %54, label %85, label %55

55:                                               ; preds = %51
  %56 = icmp eq i64 %53, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !99
  %60 = load i8, ptr %59, align 1, !tbaa !99
  %61 = icmp ne i8 %60, 48
  br label %85

62:                                               ; preds = %45
  %63 = and i32 %31, 768
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %62
  %66 = and i32 %31, 256
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %27, align 8, !tbaa !94
  %70 = getelementptr inbounds %struct.xpviv, ptr %69, i64 0, i32 4
  %71 = load i64, ptr %70, align 8, !tbaa !99
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %68, %65
  %74 = and i32 %31, 512
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %27, align 8, !tbaa !94
  %78 = getelementptr inbounds %struct.xpvnv, ptr %77, i64 0, i32 5
  %79 = load double, ptr %78, align 8, !tbaa !99
  %80 = fcmp uno double %79, 0.000000e+00
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = fcmp une double %79, 0.000000e+00
  br label %85

83:                                               ; preds = %62
  %84 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %27, i32 noundef 0) #8
  br label %85

85:                                               ; preds = %34, %83, %36, %51, %57, %55, %48, %73, %81, %68, %76, %23, %18
  %86 = phi i1 [ false, %18 ], [ false, %23 ], [ %35, %34 ], [ %84, %83 ], [ false, %36 ], [ false, %48 ], [ true, %51 ], [ false, %55 ], [ %61, %57 ], [ true, %68 ], [ false, %73 ], [ %82, %81 ], [ true, %76 ]
  %87 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %21, i1 noundef zeroext %86) #8
  %88 = select i1 %87, ptr @PL_sv_yes, ptr @PL_sv_no
  %89 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %90 = getelementptr inbounds ptr, ptr %89, i64 %19
  store ptr %88, ptr %90, align 8, !tbaa !130
  br label %91

91:                                               ; preds = %17, %85
  %92 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %93 = sext i32 %7 to i64
  %94 = getelementptr inbounds ptr, ptr %92, i64 %93
  store ptr %94, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_utf8_native_to_unicode(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds ptr, ptr %6, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !130
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !87
  %20 = and i32 %19, -2145386240
  %21 = icmp eq i32 %20, -2147483392
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load ptr, ptr %17, align 8, !tbaa !94
  %24 = getelementptr inbounds %struct.xpvuv, ptr %23, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !99
  br label %28

26:                                               ; preds = %1
  %27 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %17, i32 noundef 2) #8
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i64 [ %25, %22 ], [ %27, %26 ]
  %30 = icmp sgt i32 %14, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8)
  br label %32

32:                                               ; preds = %31, %28
  %33 = tail call ptr @Perl_newSViv(i64 noundef %29) #8
  %34 = tail call ptr @Perl_sv_2mortal(ptr noundef %33) #8
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %36 = getelementptr inbounds ptr, ptr %35, i64 %15
  store ptr %34, ptr %36, align 8, !tbaa !130
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %38 = getelementptr inbounds ptr, ptr %37, i64 %15
  store ptr %38, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_utf8_unicode_to_native(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds ptr, ptr %6, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !130
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !87
  %20 = and i32 %19, -2145386240
  %21 = icmp eq i32 %20, -2147483392
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load ptr, ptr %17, align 8, !tbaa !94
  %24 = getelementptr inbounds %struct.xpvuv, ptr %23, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !99
  br label %28

26:                                               ; preds = %1
  %27 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %17, i32 noundef 2) #8
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i64 [ %25, %22 ], [ %27, %26 ]
  %30 = icmp sgt i32 %14, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8)
  br label %32

32:                                               ; preds = %31, %28
  %33 = tail call ptr @Perl_newSViv(i64 noundef %29) #8
  %34 = tail call ptr @Perl_sv_2mortal(ptr noundef %33) #8
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %36 = getelementptr inbounds ptr, ptr %35, i64 %15
  store ptr %34, ptr %36, align 8, !tbaa !130
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %38 = getelementptr inbounds ptr, ptr %37, i64 %15
  store ptr %38, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_Internals_SvREADONLY(ptr noundef %0) #0 !prof !114 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds ptr, ptr %6, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !130
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !87
  %20 = and i32 %19, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !122

22:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.10)
  br label %23

23:                                               ; preds = %22, %1
  %24 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  switch i32 %14, label %108 [
    i32 1, label %26
    i32 2, label %35
  ], !prof !159

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !87
  %29 = and i32 %28, 134283264
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %32 = getelementptr inbounds ptr, ptr %31, i64 %15
  br i1 %30, label %34, label %33

33:                                               ; preds = %26
  store ptr @PL_sv_yes, ptr %32, align 8, !tbaa !130
  br label %111

34:                                               ; preds = %26
  store ptr @PL_sv_no, ptr %32, align 8, !tbaa !130
  br label %111

35:                                               ; preds = %23
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %37 = sext i32 %5 to i64
  %38 = getelementptr ptr, ptr %36, i64 %37
  %39 = getelementptr ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !130
  %41 = icmp eq ptr %40, null
  br i1 %41, label %102, label %42, !prof !122

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !87
  %45 = and i32 %44, 2097152
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47, !prof !160

47:                                               ; preds = %42
  %48 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %40, i32 noundef 2) #8
  br i1 %48, label %96, label %102

49:                                               ; preds = %42
  %50 = and i32 %44, 65280
  %51 = icmp ne i32 %50, 0
  %52 = and i32 %44, 255
  %53 = icmp eq i32 %52, 8
  %54 = or i1 %51, %53
  %55 = and i32 %44, 16777471
  %56 = icmp eq i32 %55, 16777226
  %57 = or i1 %56, %54
  br i1 %57, label %58, label %102, !prof !160

58:                                               ; preds = %49
  %59 = and i32 %44, 1024
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %75, label %61, !prof !160

61:                                               ; preds = %58
  %62 = load ptr, ptr %40, align 8, !tbaa !94
  %63 = icmp eq ptr %62, null
  br i1 %63, label %102, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.xpv, ptr %62, i64 0, i32 2
  %66 = load i64, ptr %65, align 8, !tbaa !95
  %67 = icmp ugt i64 %66, 1
  br i1 %67, label %96, label %68

68:                                               ; preds = %64
  %69 = icmp eq i64 %66, 0
  br i1 %69, label %102, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !99
  %73 = load i8, ptr %72, align 1, !tbaa !99
  %74 = icmp eq i8 %73, 48
  br i1 %74, label %102, label %96

75:                                               ; preds = %58
  %76 = and i32 %44, 768
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %94, label %78, !prof !122

78:                                               ; preds = %75
  %79 = and i32 %44, 256
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81, !prof !122

81:                                               ; preds = %78
  %82 = load ptr, ptr %40, align 8, !tbaa !94
  %83 = getelementptr inbounds %struct.xpviv, ptr %82, i64 0, i32 4
  %84 = load i64, ptr %83, align 8, !tbaa !99
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %96, !prof !122

86:                                               ; preds = %81, %78
  %87 = and i32 %44, 512
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %40, align 8, !tbaa !94
  %91 = getelementptr inbounds %struct.xpvnv, ptr %90, i64 0, i32 5
  %92 = load double, ptr %91, align 8, !tbaa !99
  %93 = fcmp une double %92, 0.000000e+00
  br i1 %93, label %96, label %102

94:                                               ; preds = %75
  %95 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %40, i32 noundef 0) #8
  br i1 %95, label %96, label %102

96:                                               ; preds = %70, %94, %89, %81, %64, %47
  %97 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %98 = load i32, ptr %97, align 4, !tbaa !87
  %99 = or i32 %98, 134217728
  store i32 %99, ptr %97, align 4, !tbaa !87
  %100 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %101 = getelementptr inbounds ptr, ptr %100, i64 %15
  store ptr @PL_sv_yes, ptr %101, align 8, !tbaa !130
  br label %111

102:                                              ; preds = %94, %89, %49, %35, %86, %70, %68, %61, %47
  %103 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !87
  %105 = and i32 %104, -134217729
  store i32 %105, ptr %103, align 4, !tbaa !87
  %106 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %107 = getelementptr inbounds ptr, ptr %106, i64 %15
  store ptr @PL_sv_no, ptr %107, align 8, !tbaa !130
  br label %111

108:                                              ; preds = %23
  %109 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %110 = getelementptr inbounds ptr, ptr %109, i64 %15
  store ptr @PL_sv_undef, ptr %110, align 8, !tbaa !130
  br label %111

111:                                              ; preds = %108, %102, %96, %34, %33
  %112 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %113 = getelementptr inbounds ptr, ptr %112, i64 %15
  store ptr %113, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_constant__make_const(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds ptr, ptr %6, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !130
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !87
  %18 = and i32 %17, 2048
  %19 = icmp eq i32 %18, 0
  %20 = and i64 %12, 34359738360
  %21 = icmp ne i64 %20, 8
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.11)
  br label %24

24:                                               ; preds = %1, %23
  %25 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !99
  %27 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !87
  %29 = or i32 %28, 134283264
  store i32 %29, ptr %27, align 4, !tbaa !87
  %30 = and i32 %28, 255
  %31 = icmp eq i32 %30, 11
  br i1 %31, label %32, label %55

32:                                               ; preds = %24
  %33 = load ptr, ptr %26, align 8, !tbaa !94
  %34 = getelementptr inbounds %struct.xpvav, ptr %33, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !161
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %55, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %39 = icmp slt i64 %35, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %38, align 8, !tbaa !99
  %42 = getelementptr inbounds ptr, ptr %41, i64 %35
  br label %43

43:                                               ; preds = %40, %51
  %44 = phi ptr [ %52, %51 ], [ %42, %40 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !130
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !87
  %50 = or i32 %49, 131072
  store i32 %50, ptr %48, align 4, !tbaa !87
  br label %51

51:                                               ; preds = %43, %47
  %52 = getelementptr inbounds ptr, ptr %44, i64 -1
  %53 = load ptr, ptr %38, align 8, !tbaa !99
  %54 = icmp ult ptr %52, %53
  br i1 %54, label %55, label %43, !llvm.loop !163

55:                                               ; preds = %51, %37, %24, %32
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %57 = getelementptr inbounds ptr, ptr %56, i64 %13
  %58 = getelementptr inbounds ptr, ptr %57, i64 -1
  store ptr %58, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_Internals_SvREFCNT(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds ptr, ptr %6, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !130
  %18 = add i32 %14, -3
  %19 = icmp ult i32 %18, -2
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !87
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1, %20
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.12)
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !99
  %29 = icmp eq i32 %14, 2
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %32 = getelementptr ptr, ptr %31, i64 %8
  %33 = getelementptr ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !130
  %35 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !87
  %37 = and i32 %36, -2145386240
  %38 = icmp eq i32 %37, -2147483392
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load ptr, ptr %34, align 8, !tbaa !94
  %41 = getelementptr inbounds %struct.xpvuv, ptr %40, i64 0, i32 4
  %42 = load i64, ptr %41, align 8, !tbaa !99
  br label %45

43:                                               ; preds = %30
  %44 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %34, i32 noundef 2) #8
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i64 [ %42, %39 ], [ %44, %43 ]
  %47 = trunc i64 %46 to i32
  %48 = add i32 %47, 1
  %49 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  store i32 %48, ptr %49, align 8, !tbaa !166
  br label %54

50:                                               ; preds = %26
  %51 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !166
  %53 = add i32 %52, -1
  br label %54

54:                                               ; preds = %50, %45
  %55 = phi i32 [ %47, %45 ], [ %53, %50 ]
  %56 = zext i32 %55 to i64
  %57 = tail call ptr @Perl_newSVuv(i64 noundef %56) #8
  %58 = tail call ptr @Perl_sv_2mortal(ptr noundef %57) #8
  %59 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %60 = getelementptr inbounds ptr, ptr %59, i64 %15
  store ptr %58, ptr %60, align 8, !tbaa !130
  %61 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %62 = getelementptr inbounds ptr, ptr %61, i64 %15
  store ptr %62, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_Internals_hv_clear_placehold(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = add nsw i32 %5, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %6, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !130
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !87
  %21 = and i32 %20, 2048
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14, %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.13)
  br label %30

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !99
  tail call void @Perl_hv_clear_placeholders(ptr noundef %26) #8
  %27 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %28 = getelementptr inbounds ptr, ptr %27, i64 %16
  %29 = getelementptr inbounds ptr, ptr %28, i64 -1
  store ptr %29, ptr @PL_stack_sp, align 8, !tbaa !130
  br label %30

30:                                               ; preds = %24, %23
  ret void
}

declare void @Perl_hv_clear_placeholders(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_PerlIO_get_layers(ptr noundef %0) #0 !prof !113 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %6 = load i32, ptr %4, align 4, !tbaa !136
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 1
  %17 = and i32 %15, 1
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.14)
  br label %21

21:                                               ; preds = %1, %20
  %22 = icmp sgt i32 %15, 1
  br i1 %22, label %23, label %266

23:                                               ; preds = %21
  %24 = getelementptr inbounds ptr, ptr %10, i64 2
  %25 = icmp ugt ptr %24, %3
  br i1 %25, label %259, label %26

26:                                               ; preds = %23, %254
  %27 = phi ptr [ %257, %254 ], [ %24, %23 ]
  %28 = phi i8 [ %256, %254 ], [ 1, %23 ]
  %29 = phi i8 [ %255, %254 ], [ 0, %23 ]
  %30 = phi ptr [ %27, %254 ], [ %10, %23 ]
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %32 = load ptr, ptr %27, align 8, !tbaa !130
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !87
  %35 = and i32 %34, 2098176
  %36 = icmp eq i32 %35, 1024
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load ptr, ptr %32, align 8, !tbaa !94
  %39 = getelementptr inbounds %struct.xpv, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !95
  store i64 %40, ptr %2, align 8, !tbaa !98
  %41 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !99
  br label %45

43:                                               ; preds = %26
  %44 = call ptr @Perl_sv_2pv_flags(ptr noundef %32, ptr noundef nonnull %2, i32 noundef 34) #8
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi ptr [ %42, %37 ], [ %44, %43 ]
  %47 = load i8, ptr %46, align 1, !tbaa !99
  switch i8 %47, label %253 [
    i8 105, label %48
    i8 111, label %116
    i8 100, label %185
  ]

48:                                               ; preds = %45
  %49 = load i64, ptr %2, align 8, !tbaa !98
  %50 = icmp eq i64 %49, 5
  br i1 %50, label %51, label %253

51:                                               ; preds = %48
  %52 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %46, ptr noundef nonnull dereferenceable(5) @.str.15, i64 5)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %253

54:                                               ; preds = %51
  %55 = load ptr, ptr %31, align 8, !tbaa !130
  %56 = icmp eq ptr %55, null
  br i1 %56, label %113, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !87
  %60 = and i32 %59, 2097152
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %55, i32 noundef 2) #8
  br label %113

64:                                               ; preds = %57
  %65 = and i32 %59, 65280
  %66 = icmp ne i32 %65, 0
  %67 = and i32 %59, 255
  %68 = icmp eq i32 %67, 8
  %69 = or i1 %66, %68
  %70 = and i32 %59, 16777471
  %71 = icmp eq i32 %70, 16777226
  %72 = or i1 %71, %69
  br i1 %72, label %73, label %113

73:                                               ; preds = %64
  %74 = and i32 %59, 1024
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %55, align 8, !tbaa !94
  %78 = icmp eq ptr %77, null
  br i1 %78, label %113, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.xpv, ptr %77, i64 0, i32 2
  %81 = load i64, ptr %80, align 8, !tbaa !95
  %82 = icmp ugt i64 %81, 1
  br i1 %82, label %113, label %83

83:                                               ; preds = %79
  %84 = icmp eq i64 %81, 0
  br i1 %84, label %113, label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !99
  %88 = load i8, ptr %87, align 1, !tbaa !99
  %89 = icmp ne i8 %88, 48
  br label %113

90:                                               ; preds = %73
  %91 = and i32 %59, 768
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %111, label %93

93:                                               ; preds = %90
  %94 = and i32 %59, 256
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %55, align 8, !tbaa !94
  %98 = getelementptr inbounds %struct.xpviv, ptr %97, i64 0, i32 4
  %99 = load i64, ptr %98, align 8, !tbaa !99
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96, %93
  %102 = and i32 %59, 512
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %55, align 8, !tbaa !94
  %106 = getelementptr inbounds %struct.xpvnv, ptr %105, i64 0, i32 5
  %107 = load double, ptr %106, align 8, !tbaa !99
  %108 = fcmp uno double %107, 0.000000e+00
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = fcmp une double %107, 0.000000e+00
  br label %113

111:                                              ; preds = %90
  %112 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %55, i32 noundef 0) #8
  br label %113

113:                                              ; preds = %104, %62, %111, %64, %79, %85, %83, %76, %101, %109, %96, %54
  %114 = phi i1 [ false, %54 ], [ %63, %62 ], [ %112, %111 ], [ false, %64 ], [ false, %76 ], [ true, %79 ], [ false, %83 ], [ %89, %85 ], [ true, %96 ], [ false, %101 ], [ %110, %109 ], [ true, %104 ]
  %115 = zext i1 %114 to i8
  br label %254

116:                                              ; preds = %45
  %117 = load i64, ptr %2, align 8, !tbaa !98
  %118 = icmp eq i64 %117, 6
  br i1 %118, label %119, label %253

119:                                              ; preds = %116
  %120 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %46, ptr noundef nonnull dereferenceable(6) @.str.16, i64 6)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %253

122:                                              ; preds = %119
  %123 = load ptr, ptr %31, align 8, !tbaa !130
  %124 = icmp eq ptr %123, null
  br i1 %124, label %181, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !87
  %128 = and i32 %127, 2097152
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %125
  %131 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %123, i32 noundef 2) #8
  br label %181

132:                                              ; preds = %125
  %133 = and i32 %127, 65280
  %134 = icmp ne i32 %133, 0
  %135 = and i32 %127, 255
  %136 = icmp eq i32 %135, 8
  %137 = or i1 %134, %136
  %138 = and i32 %127, 16777471
  %139 = icmp eq i32 %138, 16777226
  %140 = or i1 %139, %137
  br i1 %140, label %141, label %181

141:                                              ; preds = %132
  %142 = and i32 %127, 1024
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %158, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %123, align 8, !tbaa !94
  %146 = icmp eq ptr %145, null
  br i1 %146, label %181, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.xpv, ptr %145, i64 0, i32 2
  %149 = load i64, ptr %148, align 8, !tbaa !95
  %150 = icmp ugt i64 %149, 1
  br i1 %150, label %181, label %151

151:                                              ; preds = %147
  %152 = icmp eq i64 %149, 0
  br i1 %152, label %181, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !99
  %156 = load i8, ptr %155, align 1, !tbaa !99
  %157 = icmp ne i8 %156, 48
  br label %181

158:                                              ; preds = %141
  %159 = and i32 %127, 768
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %179, label %161

161:                                              ; preds = %158
  %162 = and i32 %127, 256
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr %123, align 8, !tbaa !94
  %166 = getelementptr inbounds %struct.xpviv, ptr %165, i64 0, i32 4
  %167 = load i64, ptr %166, align 8, !tbaa !99
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %164, %161
  %170 = and i32 %127, 512
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %169
  %173 = load ptr, ptr %123, align 8, !tbaa !94
  %174 = getelementptr inbounds %struct.xpvnv, ptr %173, i64 0, i32 5
  %175 = load double, ptr %174, align 8, !tbaa !99
  %176 = fcmp uno double %175, 0.000000e+00
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = fcmp une double %175, 0.000000e+00
  br label %181

179:                                              ; preds = %158
  %180 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %123, i32 noundef 0) #8
  br label %181

181:                                              ; preds = %172, %130, %179, %132, %147, %153, %151, %144, %169, %177, %164, %122
  %182 = phi i1 [ false, %122 ], [ %131, %130 ], [ %180, %179 ], [ false, %132 ], [ false, %144 ], [ true, %147 ], [ false, %151 ], [ %157, %153 ], [ true, %164 ], [ false, %169 ], [ %178, %177 ], [ true, %172 ]
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i8
  br label %254

185:                                              ; preds = %45
  %186 = load i64, ptr %2, align 8, !tbaa !98
  %187 = icmp eq i64 %186, 7
  br i1 %187, label %188, label %253

188:                                              ; preds = %185
  %189 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %46, ptr noundef nonnull dereferenceable(7) @.str.17, i64 7)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %253

191:                                              ; preds = %188
  %192 = load ptr, ptr %31, align 8, !tbaa !130
  %193 = icmp eq ptr %192, null
  br i1 %193, label %250, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 2
  %196 = load i32, ptr %195, align 4, !tbaa !87
  %197 = and i32 %196, 2097152
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %194
  %200 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %192, i32 noundef 2) #8
  br label %250

201:                                              ; preds = %194
  %202 = and i32 %196, 65280
  %203 = icmp ne i32 %202, 0
  %204 = and i32 %196, 255
  %205 = icmp eq i32 %204, 8
  %206 = or i1 %203, %205
  %207 = and i32 %196, 16777471
  %208 = icmp eq i32 %207, 16777226
  %209 = or i1 %208, %206
  br i1 %209, label %210, label %250

210:                                              ; preds = %201
  %211 = and i32 %196, 1024
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %227, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr %192, align 8, !tbaa !94
  %215 = icmp eq ptr %214, null
  br i1 %215, label %250, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.xpv, ptr %214, i64 0, i32 2
  %218 = load i64, ptr %217, align 8, !tbaa !95
  %219 = icmp ugt i64 %218, 1
  br i1 %219, label %250, label %220

220:                                              ; preds = %216
  %221 = icmp eq i64 %218, 0
  br i1 %221, label %250, label %222

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !99
  %225 = load i8, ptr %224, align 1, !tbaa !99
  %226 = icmp ne i8 %225, 48
  br label %250

227:                                              ; preds = %210
  %228 = and i32 %196, 768
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %248, label %230

230:                                              ; preds = %227
  %231 = and i32 %196, 256
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr %192, align 8, !tbaa !94
  %235 = getelementptr inbounds %struct.xpviv, ptr %234, i64 0, i32 4
  %236 = load i64, ptr %235, align 8, !tbaa !99
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %233, %230
  %239 = and i32 %196, 512
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %250, label %241

241:                                              ; preds = %238
  %242 = load ptr, ptr %192, align 8, !tbaa !94
  %243 = getelementptr inbounds %struct.xpvnv, ptr %242, i64 0, i32 5
  %244 = load double, ptr %243, align 8, !tbaa !99
  %245 = fcmp uno double %244, 0.000000e+00
  br i1 %245, label %250, label %246

246:                                              ; preds = %241
  %247 = fcmp une double %244, 0.000000e+00
  br label %250

248:                                              ; preds = %227
  %249 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %192, i32 noundef 0) #8
  br label %250

250:                                              ; preds = %241, %199, %248, %201, %216, %222, %220, %213, %238, %246, %233, %191
  %251 = phi i1 [ false, %191 ], [ %200, %199 ], [ %249, %248 ], [ false, %201 ], [ false, %213 ], [ true, %216 ], [ false, %220 ], [ %226, %222 ], [ true, %233 ], [ false, %238 ], [ %247, %246 ], [ true, %241 ]
  %252 = zext i1 %251 to i8
  br label %254

253:                                              ; preds = %45, %185, %188, %116, %119, %48, %51
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18, ptr noundef nonnull %46) #8
  br label %254

254:                                              ; preds = %253, %250, %181, %113
  %255 = phi i8 [ %29, %253 ], [ %252, %250 ], [ %29, %181 ], [ %29, %113 ]
  %256 = phi i8 [ %28, %253 ], [ %28, %250 ], [ %184, %181 ], [ %115, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  %257 = getelementptr inbounds ptr, ptr %27, i64 2
  %258 = icmp ugt ptr %257, %3
  br i1 %258, label %259, label %26, !llvm.loop !167

259:                                              ; preds = %254, %23
  %260 = phi i8 [ 0, %23 ], [ %255, %254 ]
  %261 = phi i8 [ 1, %23 ], [ %256, %254 ]
  %262 = add nuw nsw i64 %14, 4294967295
  %263 = and i64 %262, 4294967295
  %264 = sub nsw i64 0, %263
  %265 = getelementptr inbounds ptr, ptr %3, i64 %264
  br label %266

266:                                              ; preds = %259, %21
  %267 = phi i8 [ %260, %259 ], [ 0, %21 ]
  %268 = phi i8 [ %261, %259 ], [ 1, %21 ]
  %269 = phi ptr [ %265, %259 ], [ %3, %21 ]
  %270 = getelementptr inbounds ptr, ptr %269, i64 -1
  %271 = load ptr, ptr %269, align 8, !tbaa !130
  %272 = getelementptr inbounds %struct.sv, ptr %271, i64 0, i32 2
  %273 = load i32, ptr %272, align 4, !tbaa !87
  %274 = and i32 %273, 2097152
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %266
  %277 = call i32 @Perl_mg_get(ptr noundef %271) #8
  br label %278

278:                                              ; preds = %266, %276
  %279 = load i32, ptr %272, align 4, !tbaa !87
  %280 = and i32 %279, 49152
  %281 = icmp eq i32 %280, 32768
  br i1 %281, label %282, label %286

282:                                              ; preds = %278
  %283 = and i32 %279, 255
  %284 = add nsw i32 %283, -9
  %285 = icmp ult i32 %284, 2
  br i1 %285, label %312, label %286

286:                                              ; preds = %282, %278
  %287 = and i32 %279, 2048
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %312, label %289

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.sv, ptr %271, i64 0, i32 3
  %291 = load ptr, ptr %290, align 8, !tbaa !99
  %292 = getelementptr inbounds %struct.sv, ptr %291, i64 0, i32 2
  %293 = load i32, ptr %292, align 4, !tbaa !87
  %294 = and i32 %293, 255
  %295 = icmp ult i32 %294, 11
  br i1 %295, label %296, label %312

296:                                              ; preds = %289
  %297 = and i32 %293, 2097152
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %301, label %299

299:                                              ; preds = %296
  %300 = call i32 @Perl_mg_get(ptr noundef %291) #8
  br label %301

301:                                              ; preds = %296, %299
  %302 = load ptr, ptr %290, align 8, !tbaa !99
  %303 = getelementptr inbounds %struct.sv, ptr %302, i64 0, i32 2
  %304 = load i32, ptr %303, align 4, !tbaa !87
  %305 = and i32 %304, 49152
  %306 = icmp eq i32 %305, 32768
  br i1 %306, label %307, label %312

307:                                              ; preds = %301
  %308 = and i32 %304, 255
  %309 = add nsw i32 %308, -9
  %310 = icmp ult i32 %309, 2
  %311 = select i1 %310, ptr %302, ptr null
  br label %312

312:                                              ; preds = %307, %282, %301, %289, %286
  %313 = phi ptr [ null, %301 ], [ null, %289 ], [ null, %286 ], [ %271, %282 ], [ %311, %307 ]
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %321

315:                                              ; preds = %312
  %316 = load i32, ptr %272, align 4, !tbaa !87
  %317 = and i32 %316, 2048
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %315
  %320 = call ptr @Perl_gv_fetchsv(ptr noundef %271, i32 noundef 2048, i32 noundef 15) #8
  br label %321

321:                                              ; preds = %319, %315, %312
  %322 = phi ptr [ %313, %312 ], [ null, %315 ], [ %320, %319 ]
  %323 = icmp eq ptr %322, null
  br i1 %323, label %507, label %324

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.sv, ptr %322, i64 0, i32 2
  %326 = load i32, ptr %325, align 4, !tbaa !87
  %327 = and i32 %326, 255
  %328 = add nsw i32 %327, -9
  %329 = icmp ult i32 %328, 2
  br i1 %329, label %330, label %337

330:                                              ; preds = %324
  %331 = getelementptr inbounds %struct.gv, ptr %322, i64 0, i32 3
  %332 = load ptr, ptr %331, align 8, !tbaa !99
  %333 = icmp eq ptr %332, null
  br i1 %333, label %337, label %334

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.gp, ptr %332, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !149
  br label %337

337:                                              ; preds = %324, %330, %334
  %338 = phi ptr [ %336, %334 ], [ null, %330 ], [ null, %324 ]
  %339 = icmp eq ptr %338, null
  br i1 %339, label %507, label %340

340:                                              ; preds = %337
  %341 = and i8 %268, 1
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %345, label %343

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.io, ptr %338, i64 0, i32 3
  br label %348

345:                                              ; preds = %340
  %346 = load ptr, ptr %338, align 8, !tbaa !151
  %347 = getelementptr inbounds %struct.xpvio, ptr %346, i64 0, i32 5
  br label %348

348:                                              ; preds = %345, %343
  %349 = phi ptr [ %344, %343 ], [ %347, %345 ]
  %350 = load ptr, ptr %349, align 8, !tbaa !99
  %351 = call ptr @PerlIO_get_layers(ptr noundef %350) #8
  %352 = getelementptr inbounds %struct.sv, ptr %351, i64 0, i32 2
  %353 = load i32, ptr %352, align 4, !tbaa !87
  %354 = and i32 %353, 8388608
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %359, label %356

356:                                              ; preds = %348
  %357 = call i32 @Perl_mg_size(ptr noundef %351) #8
  %358 = sext i32 %357 to i64
  br label %363

359:                                              ; preds = %348
  %360 = load ptr, ptr %351, align 8, !tbaa !168
  %361 = getelementptr inbounds %struct.xpvav, ptr %360, i64 0, i32 2
  %362 = load i64, ptr %361, align 8, !tbaa !161
  br label %363

363:                                              ; preds = %356, %359
  %364 = phi i64 [ %358, %356 ], [ %362, %359 ]
  %365 = icmp sgt i64 %364, -1
  br i1 %365, label %366, label %492

366:                                              ; preds = %363
  %367 = and i8 %267, 1
  %368 = icmp eq i8 %367, 0
  br label %369

369:                                              ; preds = %366, %487
  %370 = phi ptr [ %270, %366 ], [ %489, %487 ]
  %371 = phi i64 [ %364, %366 ], [ %490, %487 ]
  %372 = phi i64 [ 0, %366 ], [ %488, %487 ]
  %373 = add nsw i64 %371, -2
  %374 = call ptr @Perl_av_fetch(ptr noundef %351, i64 noundef %373, i32 noundef 0) #8
  %375 = add nsw i64 %371, -1
  %376 = call ptr @Perl_av_fetch(ptr noundef %351, i64 noundef %375, i32 noundef 0) #8
  %377 = call ptr @Perl_av_fetch(ptr noundef %351, i64 noundef %371, i32 noundef 0) #8
  %378 = icmp eq ptr %374, null
  br i1 %378, label %387, label %379

379:                                              ; preds = %369
  %380 = load ptr, ptr %374, align 8, !tbaa !130
  %381 = icmp eq ptr %380, null
  br i1 %381, label %387, label %382

382:                                              ; preds = %379
  %383 = getelementptr inbounds %struct.sv, ptr %380, i64 0, i32 2
  %384 = load i32, ptr %383, align 4, !tbaa !87
  %385 = and i32 %384, 1024
  %386 = icmp ne i32 %385, 0
  br label %387

387:                                              ; preds = %382, %379, %369
  %388 = phi i1 [ false, %379 ], [ false, %369 ], [ %386, %382 ]
  %389 = icmp eq ptr %376, null
  br i1 %389, label %398, label %390

390:                                              ; preds = %387
  %391 = load ptr, ptr %376, align 8, !tbaa !130
  %392 = icmp eq ptr %391, null
  br i1 %392, label %398, label %393

393:                                              ; preds = %390
  %394 = getelementptr inbounds %struct.sv, ptr %391, i64 0, i32 2
  %395 = load i32, ptr %394, align 4, !tbaa !87
  %396 = and i32 %395, 1024
  %397 = icmp ne i32 %396, 0
  br label %398

398:                                              ; preds = %393, %390, %387
  %399 = phi i1 [ false, %390 ], [ false, %387 ], [ %397, %393 ]
  %400 = icmp eq ptr %377, null
  br i1 %400, label %409, label %401

401:                                              ; preds = %398
  %402 = load ptr, ptr %377, align 8, !tbaa !130
  %403 = icmp eq ptr %402, null
  br i1 %403, label %409, label %404

404:                                              ; preds = %401
  %405 = getelementptr inbounds %struct.sv, ptr %402, i64 0, i32 2
  %406 = load i32, ptr %405, align 4, !tbaa !87
  %407 = and i32 %406, 256
  %408 = icmp ne i32 %407, 0
  br label %409

409:                                              ; preds = %404, %401, %398
  %410 = phi i1 [ false, %401 ], [ false, %398 ], [ %408, %404 ]
  %411 = load ptr, ptr @PL_stack_max, align 8, !tbaa !130
  %412 = ptrtoint ptr %411 to i64
  %413 = ptrtoint ptr %370 to i64
  %414 = sub i64 %412, %413
  %415 = icmp slt i64 %414, 24
  br i1 %415, label %416, label %418

416:                                              ; preds = %409
  %417 = call ptr @Perl_stack_grow(ptr noundef %370, ptr noundef %370, i64 noundef 3) #8
  br label %418

418:                                              ; preds = %409, %416
  %419 = phi ptr [ %417, %416 ], [ %370, %409 ]
  br i1 %368, label %455, label %420

420:                                              ; preds = %418
  br i1 %388, label %421, label %427

421:                                              ; preds = %420
  %422 = load ptr, ptr %374, align 8, !tbaa !130
  %423 = getelementptr inbounds %struct.sv, ptr %422, i64 0, i32 1
  %424 = load i32, ptr %423, align 8, !tbaa !166
  %425 = add i32 %424, 1
  store i32 %425, ptr %423, align 8, !tbaa !166
  %426 = call ptr @Perl_sv_2mortal(ptr noundef %422) #8
  br label %427

427:                                              ; preds = %420, %421
  %428 = phi ptr [ %426, %421 ], [ @PL_sv_undef, %420 ]
  %429 = getelementptr inbounds ptr, ptr %419, i64 1
  store ptr %428, ptr %429, align 8, !tbaa !130
  br i1 %399, label %430, label %442

430:                                              ; preds = %427
  %431 = load ptr, ptr %376, align 8, !tbaa !130
  %432 = getelementptr inbounds %struct.sv, ptr %431, i64 0, i32 3
  %433 = load ptr, ptr %432, align 8, !tbaa !99
  %434 = load ptr, ptr %431, align 8, !tbaa !94
  %435 = getelementptr inbounds %struct.xpv, ptr %434, i64 0, i32 2
  %436 = load i64, ptr %435, align 8, !tbaa !95
  %437 = getelementptr inbounds %struct.sv, ptr %431, i64 0, i32 2
  %438 = load i32, ptr %437, align 4, !tbaa !87
  %439 = and i32 %438, 536870912
  %440 = or disjoint i32 %439, 524288
  %441 = call ptr @Perl_newSVpvn_flags(ptr noundef %433, i64 noundef %436, i32 noundef %440) #8
  br label %442

442:                                              ; preds = %427, %430
  %443 = phi ptr [ %441, %430 ], [ @PL_sv_undef, %427 ]
  %444 = getelementptr inbounds ptr, ptr %419, i64 2
  store ptr %443, ptr %444, align 8, !tbaa !130
  br i1 %410, label %445, label %451

445:                                              ; preds = %442
  %446 = load ptr, ptr %377, align 8, !tbaa !130
  %447 = getelementptr inbounds %struct.sv, ptr %446, i64 0, i32 1
  %448 = load i32, ptr %447, align 8, !tbaa !166
  %449 = add i32 %448, 1
  store i32 %449, ptr %447, align 8, !tbaa !166
  %450 = call ptr @Perl_sv_2mortal(ptr noundef %446) #8
  br label %451

451:                                              ; preds = %442, %445
  %452 = phi ptr [ %450, %445 ], [ @PL_sv_undef, %442 ]
  %453 = getelementptr inbounds ptr, ptr %419, i64 3
  store ptr %452, ptr %453, align 8, !tbaa !130
  %454 = add nsw i64 %372, 3
  br label %487

455:                                              ; preds = %418
  %456 = select i1 %388, i1 %399, i1 false
  br i1 %456, label %457, label %463

457:                                              ; preds = %455
  %458 = load ptr, ptr %374, align 8, !tbaa !130
  %459 = load ptr, ptr %376, align 8, !tbaa !130
  %460 = call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.19, ptr noundef %458, ptr noundef %459) #8
  %461 = call ptr @Perl_sv_2mortal(ptr noundef %460) #8
  %462 = getelementptr inbounds ptr, ptr %419, i64 1
  store ptr %461, ptr %462, align 8, !tbaa !130
  br label %473

463:                                              ; preds = %455
  br i1 %388, label %464, label %471

464:                                              ; preds = %463
  %465 = load ptr, ptr %374, align 8, !tbaa !130
  %466 = getelementptr inbounds %struct.sv, ptr %465, i64 0, i32 1
  %467 = load i32, ptr %466, align 8, !tbaa !166
  %468 = add i32 %467, 1
  store i32 %468, ptr %466, align 8, !tbaa !166
  %469 = call ptr @Perl_sv_2mortal(ptr noundef %465) #8
  %470 = getelementptr inbounds ptr, ptr %419, i64 1
  store ptr %469, ptr %470, align 8, !tbaa !130
  br label %473

471:                                              ; preds = %463
  %472 = getelementptr inbounds ptr, ptr %419, i64 1
  store ptr @PL_sv_undef, ptr %472, align 8, !tbaa !130
  br label %473

473:                                              ; preds = %464, %471, %457
  %474 = phi ptr [ %462, %457 ], [ %470, %464 ], [ %472, %471 ]
  %475 = add nsw i64 %372, 1
  br i1 %410, label %476, label %487

476:                                              ; preds = %473
  %477 = load ptr, ptr %377, align 8, !tbaa !130
  %478 = load ptr, ptr %477, align 8, !tbaa !94
  %479 = getelementptr inbounds %struct.xpviv, ptr %478, i64 0, i32 4
  %480 = load i64, ptr %479, align 8, !tbaa !99
  %481 = and i64 %480, 32768
  %482 = icmp eq i64 %481, 0
  br i1 %482, label %487, label %483

483:                                              ; preds = %476
  %484 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.20, i64 noundef 4, i32 noundef 524288) #8
  %485 = getelementptr inbounds ptr, ptr %419, i64 2
  store ptr %484, ptr %485, align 8, !tbaa !130
  %486 = add nsw i64 %372, 2
  br label %487

487:                                              ; preds = %476, %483, %473, %451
  %488 = phi i64 [ %454, %451 ], [ %475, %473 ], [ %486, %483 ], [ %475, %476 ]
  %489 = phi ptr [ %453, %451 ], [ %474, %473 ], [ %485, %483 ], [ %474, %476 ]
  %490 = add nsw i64 %371, -3
  %491 = icmp sgt i64 %371, 2
  br i1 %491, label %369, label %492, !llvm.loop !170

492:                                              ; preds = %487, %363
  %493 = phi i64 [ 0, %363 ], [ %488, %487 ]
  %494 = icmp eq ptr %351, null
  br i1 %494, label %502, label %495

495:                                              ; preds = %492
  %496 = getelementptr inbounds %struct.sv, ptr %351, i64 0, i32 1
  %497 = load i32, ptr %496, align 8, !tbaa !166
  %498 = icmp ugt i32 %497, 1
  br i1 %498, label %499, label %501

499:                                              ; preds = %495
  %500 = add i32 %497, -1
  store i32 %500, ptr %496, align 8, !tbaa !166
  br label %502

501:                                              ; preds = %495
  call void @Perl_sv_free2(ptr noundef nonnull %351, i32 noundef %497) #8
  br label %502

502:                                              ; preds = %492, %499, %501
  %503 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %504 = sext i32 %8 to i64
  %505 = getelementptr inbounds ptr, ptr %503, i64 %504
  %506 = getelementptr ptr, ptr %505, i64 %493
  br label %511

507:                                              ; preds = %337, %321
  %508 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %509 = sext i32 %8 to i64
  %510 = getelementptr inbounds ptr, ptr %508, i64 %509
  br label %511

511:                                              ; preds = %502, %507
  %512 = phi ptr [ %506, %502 ], [ %510, %507 ]
  %513 = getelementptr inbounds ptr, ptr %512, i64 -1
  store ptr %513, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

declare ptr @PerlIO_get_layers(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_re_is_regexp(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8)
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = tail call ptr @Perl_get_re_arg(ptr noundef %20) #8
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %24 = getelementptr inbounds ptr, ptr %23, i64 %18
  %25 = select i1 %22, ptr @PL_sv_no, ptr @PL_sv_yes
  store ptr %25, ptr %24, align 8, !tbaa !130
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %27 = getelementptr inbounds ptr, ptr %26, i64 %18
  store ptr %27, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

declare ptr @Perl_get_re_arg(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_re_regnames_count(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_curpm, align 8, !tbaa !130
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  %9 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %10 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %11 = getelementptr inbounds i32, ptr %10, i64 -1
  store ptr %11, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %12 = load i32, ptr %10, align 4, !tbaa !136
  %13 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %14 = add nsw i32 %12, 1
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = ptrtoint ptr %9 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = and i64 %19, 34359738360
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21)
  br label %23

23:                                               ; preds = %22, %7
  %24 = shl i64 %19, 29
  %25 = ashr i64 %24, 32
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds ptr, ptr %9, i64 %26
  store ptr %27, ptr @PL_stack_sp, align 8, !tbaa !130
  %28 = icmp eq ptr %8, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %31 = sext i32 %14 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  store ptr @PL_sv_undef, ptr %32, align 8, !tbaa !130
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %34 = getelementptr inbounds ptr, ptr %33, i64 %31
  br label %53

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.p5rx, ptr %8, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !99
  %38 = getelementptr inbounds %struct.regexp, ptr %37, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !173
  %40 = getelementptr inbounds %struct.regexp_engine, ptr %39, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !175
  %42 = tail call ptr %41(ptr noundef nonnull %8, ptr noundef null, ptr noundef null, i32 noundef 4096) #8
  %43 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %44 = icmp eq ptr %42, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %35
  %46 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %42) #8
  br label %47

47:                                               ; preds = %35, %45
  %48 = phi ptr [ %46, %45 ], [ @PL_sv_undef, %35 ]
  %49 = getelementptr inbounds ptr, ptr %43, i64 1
  store ptr %48, ptr %49, align 8, !tbaa !130
  %50 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %51 = sext i32 %14 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  br label %53

53:                                               ; preds = %47, %29
  %54 = phi ptr [ %34, %29 ], [ %52, %47 ]
  store ptr %54, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_re_regname(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, -3
  %16 = icmp ult i32 %15, -2
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.22)
  br label %18

18:                                               ; preds = %1, %17
  %19 = shl i64 %12, 29
  %20 = ashr i64 %19, 32
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  store ptr %22, ptr @PL_stack_sp, align 8, !tbaa !130
  %23 = load ptr, ptr @PL_curpm, align 8, !tbaa !130
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.pmop, ptr %23, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !171
  br label %28

28:                                               ; preds = %18, %25
  %29 = phi ptr [ %27, %25 ], [ null, %18 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %33 = sext i32 %7 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  store ptr @PL_sv_undef, ptr %34, align 8, !tbaa !130
  br label %119

35:                                               ; preds = %28
  %36 = icmp eq i32 %14, 2
  br i1 %36, label %37, label %98

37:                                               ; preds = %35
  %38 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %39 = sext i32 %5 to i64
  %40 = getelementptr ptr, ptr %38, i64 %39
  %41 = getelementptr ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !130
  %43 = icmp eq ptr %42, null
  br i1 %43, label %98, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !87
  %47 = and i32 %46, 2097152
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %42, i32 noundef 2) #8
  br i1 %50, label %99, label %98

51:                                               ; preds = %44
  %52 = and i32 %46, 65280
  %53 = icmp ne i32 %52, 0
  %54 = and i32 %46, 255
  %55 = icmp eq i32 %54, 8
  %56 = or i1 %53, %55
  %57 = and i32 %46, 16777471
  %58 = icmp eq i32 %57, 16777226
  %59 = or i1 %58, %56
  br i1 %59, label %60, label %98

60:                                               ; preds = %51
  %61 = and i32 %46, 1024
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %42, align 8, !tbaa !94
  %65 = icmp eq ptr %64, null
  br i1 %65, label %98, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.xpv, ptr %64, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !95
  %69 = icmp ugt i64 %68, 1
  br i1 %69, label %99, label %70

70:                                               ; preds = %66
  %71 = icmp eq i64 %68, 0
  br i1 %71, label %98, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !99
  %75 = load i8, ptr %74, align 1, !tbaa !99
  %76 = icmp eq i8 %75, 48
  br i1 %76, label %98, label %99

77:                                               ; preds = %60
  %78 = and i32 %46, 768
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %77
  %81 = and i32 %46, 256
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %42, align 8, !tbaa !94
  %85 = getelementptr inbounds %struct.xpviv, ptr %84, i64 0, i32 4
  %86 = load i64, ptr %85, align 8, !tbaa !99
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83, %80
  %89 = and i32 %46, 512
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %42, align 8, !tbaa !94
  %93 = getelementptr inbounds %struct.xpvnv, ptr %92, i64 0, i32 5
  %94 = load double, ptr %93, align 8, !tbaa !99
  %95 = fcmp une double %94, 0.000000e+00
  br i1 %95, label %99, label %98

96:                                               ; preds = %77
  %97 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %42, i32 noundef 0) #8
  br i1 %97, label %99, label %98

98:                                               ; preds = %96, %91, %51, %37, %88, %72, %70, %63, %49, %35
  br label %99

99:                                               ; preds = %72, %49, %66, %83, %91, %96, %98
  %100 = phi i32 [ 1281, %98 ], [ 1537, %96 ], [ 1537, %91 ], [ 1537, %83 ], [ 1537, %66 ], [ 1537, %49 ], [ 1537, %72 ]
  %101 = getelementptr inbounds %struct.p5rx, ptr %29, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !99
  %103 = getelementptr inbounds %struct.regexp, ptr %102, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !173
  %105 = getelementptr inbounds %struct.regexp_engine, ptr %104, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !175
  %107 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %108 = sext i32 %7 to i64
  %109 = getelementptr inbounds ptr, ptr %107, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !130
  %111 = tail call ptr %106(ptr noundef nonnull %29, ptr noundef %110, ptr noundef null, i32 noundef %100) #8
  %112 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %113 = icmp eq ptr %111, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %99
  %115 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %111) #8
  br label %116

116:                                              ; preds = %99, %114
  %117 = phi ptr [ %115, %114 ], [ @PL_sv_undef, %99 ]
  %118 = getelementptr inbounds ptr, ptr %112, i64 1
  store ptr %117, ptr %118, align 8, !tbaa !130
  br label %119

119:                                              ; preds = %116, %31
  %120 = phi i64 [ %108, %116 ], [ %33, %31 ]
  %121 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %122 = getelementptr inbounds ptr, ptr %121, i64 %120
  store ptr %122, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_re_regnames(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.23)
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_curpm, align 8, !tbaa !130
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.pmop, ptr %18, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !171
  br label %23

23:                                               ; preds = %17, %20
  %24 = phi ptr [ %22, %20 ], [ null, %17 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %28 = sext i32 %7 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  store ptr @PL_sv_undef, ptr %29, align 8, !tbaa !130
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %31 = getelementptr inbounds ptr, ptr %30, i64 %28
  br label %167

32:                                               ; preds = %23
  %33 = icmp eq i32 %14, 1
  br i1 %33, label %34, label %94

34:                                               ; preds = %32
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %36 = sext i32 %7 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !130
  %39 = icmp eq ptr %38, null
  br i1 %39, label %94, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !87
  %43 = and i32 %42, 2097152
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %38, i32 noundef 2) #8
  br i1 %46, label %95, label %94

47:                                               ; preds = %40
  %48 = and i32 %42, 65280
  %49 = icmp ne i32 %48, 0
  %50 = and i32 %42, 255
  %51 = icmp eq i32 %50, 8
  %52 = or i1 %49, %51
  %53 = and i32 %42, 16777471
  %54 = icmp eq i32 %53, 16777226
  %55 = or i1 %54, %52
  br i1 %55, label %56, label %94

56:                                               ; preds = %47
  %57 = and i32 %42, 1024
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %38, align 8, !tbaa !94
  %61 = icmp eq ptr %60, null
  br i1 %61, label %94, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.xpv, ptr %60, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !95
  %65 = icmp ugt i64 %64, 1
  br i1 %65, label %95, label %66

66:                                               ; preds = %62
  %67 = icmp eq i64 %64, 0
  br i1 %67, label %94, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !99
  %71 = load i8, ptr %70, align 1, !tbaa !99
  %72 = icmp eq i8 %71, 48
  br i1 %72, label %94, label %95

73:                                               ; preds = %56
  %74 = and i32 %42, 768
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %73
  %77 = and i32 %42, 256
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %38, align 8, !tbaa !94
  %81 = getelementptr inbounds %struct.xpviv, ptr %80, i64 0, i32 4
  %82 = load i64, ptr %81, align 8, !tbaa !99
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %79, %76
  %85 = and i32 %42, 512
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %38, align 8, !tbaa !94
  %89 = getelementptr inbounds %struct.xpvnv, ptr %88, i64 0, i32 5
  %90 = load double, ptr %89, align 8, !tbaa !99
  %91 = fcmp une double %90, 0.000000e+00
  br i1 %91, label %95, label %94

92:                                               ; preds = %73
  %93 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %38, i32 noundef 0) #8
  br i1 %93, label %95, label %94

94:                                               ; preds = %92, %87, %47, %34, %84, %68, %66, %59, %45, %32
  br label %95

95:                                               ; preds = %68, %45, %62, %79, %87, %92, %94
  %96 = phi i32 [ 2304, %94 ], [ 2560, %92 ], [ 2560, %87 ], [ 2560, %79 ], [ 2560, %62 ], [ 2560, %45 ], [ 2560, %68 ]
  %97 = shl i64 %12, 29
  %98 = ashr i64 %97, 32
  %99 = sub nsw i64 0, %98
  %100 = getelementptr inbounds ptr, ptr %2, i64 %99
  store ptr %100, ptr @PL_stack_sp, align 8, !tbaa !130
  %101 = getelementptr inbounds %struct.p5rx, ptr %24, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !99
  %103 = getelementptr inbounds %struct.regexp, ptr %102, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !173
  %105 = getelementptr inbounds %struct.regexp_engine, ptr %104, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !175
  %107 = tail call ptr %106(ptr noundef nonnull %24, ptr noundef null, ptr noundef null, i32 noundef %96) #8
  %108 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %109 = icmp eq ptr %107, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %95
  %111 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %112 = sext i32 %7 to i64
  %113 = getelementptr inbounds ptr, ptr %111, i64 %112
  store ptr @PL_sv_undef, ptr %113, align 8, !tbaa !130
  %114 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %115 = getelementptr inbounds ptr, ptr %114, i64 %112
  br label %167

116:                                              ; preds = %95
  %117 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !99
  %119 = getelementptr inbounds %struct.sv, ptr %118, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !87
  %121 = and i32 %120, 8388608
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %116
  %124 = tail call i32 @Perl_mg_size(ptr noundef %118) #8
  %125 = sext i32 %124 to i64
  br label %130

126:                                              ; preds = %116
  %127 = load ptr, ptr %118, align 8, !tbaa !168
  %128 = getelementptr inbounds %struct.xpvav, ptr %127, i64 0, i32 2
  %129 = load i64, ptr %128, align 8, !tbaa !161
  br label %130

130:                                              ; preds = %123, %126
  %131 = phi i64 [ %125, %123 ], [ %129, %126 ]
  %132 = load ptr, ptr @PL_stack_max, align 8, !tbaa !130
  %133 = ptrtoint ptr %132 to i64
  %134 = ptrtoint ptr %108 to i64
  %135 = sub i64 %133, %134
  %136 = ashr exact i64 %135, 3
  %137 = icmp sgt i64 %136, %131
  br i1 %137, label %141, label %138

138:                                              ; preds = %130
  %139 = add nsw i64 %131, 1
  %140 = tail call ptr @Perl_stack_grow(ptr noundef %108, ptr noundef %108, i64 noundef %139) #8
  br label %141

141:                                              ; preds = %130, %138
  %142 = phi ptr [ %140, %138 ], [ %108, %130 ]
  %143 = icmp slt i64 %131, 0
  br i1 %143, label %159, label %144

144:                                              ; preds = %141, %150
  %145 = phi ptr [ %156, %150 ], [ %142, %141 ]
  %146 = phi i64 [ %157, %150 ], [ 0, %141 ]
  %147 = tail call ptr @Perl_av_fetch(ptr noundef %118, i64 noundef %146, i32 noundef 0) #8
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24) #8
  br label %150

150:                                              ; preds = %149, %144
  %151 = load ptr, ptr %147, align 8, !tbaa !130
  %152 = getelementptr inbounds %struct.sv, ptr %151, i64 0, i32 1
  %153 = load i32, ptr %152, align 8, !tbaa !166
  %154 = add i32 %153, 1
  store i32 %154, ptr %152, align 8, !tbaa !166
  %155 = tail call ptr @Perl_sv_2mortal(ptr noundef %151) #8
  %156 = getelementptr inbounds ptr, ptr %145, i64 1
  store ptr %155, ptr %156, align 8, !tbaa !130
  %157 = add nuw i64 %146, 1
  %158 = icmp eq i64 %146, %131
  br i1 %158, label %159, label %144, !llvm.loop !177

159:                                              ; preds = %150, %141
  %160 = phi ptr [ %142, %141 ], [ %156, %150 ]
  %161 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 1
  %162 = load i32, ptr %161, align 8, !tbaa !166
  %163 = icmp ugt i32 %162, 1
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = add i32 %162, -1
  store i32 %165, ptr %161, align 8, !tbaa !166
  br label %167

166:                                              ; preds = %159
  tail call void @Perl_sv_free2(ptr noundef nonnull %107, i32 noundef %162) #8
  br label %167

167:                                              ; preds = %166, %164, %110, %26
  %168 = phi ptr [ %115, %110 ], [ %31, %26 ], [ %160, %164 ], [ %160, %166 ]
  store ptr %168, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_re_regexp_pattern(ptr noundef %0) #0 !prof !113 {
  %2 = alloca [10 x i8], align 1
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %6 = load i32, ptr %4, align 4, !tbaa !136
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = load ptr, ptr @PL_op, align 8, !tbaa !130
  %15 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 5
  %16 = load i8, ptr %15, align 2, !tbaa !178
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = zext nneg i8 %17 to i32
  br label %23

21:                                               ; preds = %1
  %22 = tail call i32 @Perl_block_gimme() #8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load ptr, ptr @PL_stack_max, align 8, !tbaa !130
  %26 = ptrtoint ptr %25 to i64
  %27 = sub i64 %26, %11
  %28 = icmp slt i64 %27, 16
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call ptr @Perl_stack_grow(ptr noundef %3, ptr noundef %3, i64 noundef 2) #8
  br label %31

31:                                               ; preds = %23, %29
  %32 = phi ptr [ %30, %29 ], [ %3, %23 ]
  %33 = shl i64 %13, 29
  %34 = ashr i64 %33, 32
  %35 = sub nsw i64 0, %34
  %36 = getelementptr inbounds ptr, ptr %32, i64 %35
  %37 = and i64 %13, 34359738360
  %38 = icmp eq i64 %37, 8
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8)
  br label %40

40:                                               ; preds = %39, %31
  %41 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %42 = sext i32 %8 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !130
  %45 = tail call ptr @Perl_get_re_arg(ptr noundef %44) #8
  %46 = icmp eq ptr %45, null
  %47 = icmp eq i32 %24, 3
  br i1 %46, label %116, label %48

48:                                               ; preds = %40
  br i1 %47, label %49, label %110

49:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #8
  %50 = getelementptr inbounds %struct.p5rx, ptr %45, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !99
  %52 = getelementptr inbounds %struct.regexp, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !179
  %54 = lshr i32 %53, 7
  %55 = and i32 %54, 7
  switch i32 %55, label %59 [
    i32 0, label %63
    i32 4, label %58
    i32 1, label %60
    i32 2, label %56
    i32 3, label %57
  ]

56:                                               ; preds = %49
  br label %60

57:                                               ; preds = %49
  br label %60

58:                                               ; preds = %49
  br label %60

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %49, %56, %57, %58, %59
  %61 = phi i64 [ 1, %59 ], [ 2, %58 ], [ 1, %57 ], [ 1, %56 ], [ 1, %49 ]
  %62 = phi ptr [ @.str.55, %59 ], [ @.str.54, %58 ], [ @.str.53, %57 ], [ @.str.52, %56 ], [ @.str.51, %49 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %62, i64 %61, i1 false)
  br label %63

63:                                               ; preds = %49, %60
  %64 = phi i64 [ %61, %60 ], [ 0, %49 ]
  %65 = load ptr, ptr %50, align 8, !tbaa !99
  %66 = getelementptr inbounds %struct.regexp, ptr %65, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !179
  %68 = and i32 %67, 2047
  br label %69

69:                                               ; preds = %63, %79
  %70 = phi i8 [ 109, %63 ], [ %83, %79 ]
  %71 = phi ptr [ getelementptr inbounds ([8 x i8], ptr @.str.25, i64 0, i64 1), %63 ], [ %82, %79 ]
  %72 = phi i64 [ %64, %63 ], [ %80, %79 ]
  %73 = phi i32 [ %68, %63 ], [ %81, %79 ]
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = add i64 %72, 1
  %78 = getelementptr inbounds [10 x i8], ptr %2, i64 0, i64 %72
  store i8 %70, ptr %78, align 1, !tbaa !99
  br label %79

79:                                               ; preds = %76, %69
  %80 = phi i64 [ %77, %76 ], [ %72, %69 ]
  %81 = lshr i32 %73, 1
  %82 = getelementptr inbounds i8, ptr %71, i64 1
  %83 = load i8, ptr %71, align 1, !tbaa !99
  %84 = icmp eq ptr %71, getelementptr inbounds ([8 x i8], ptr @.str.25, i64 0, i64 7)
  br i1 %84, label %85, label %69, !llvm.loop !180

85:                                               ; preds = %79
  %86 = load ptr, ptr %50, align 8, !tbaa !99
  %87 = getelementptr inbounds %struct.regexp, ptr %86, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !99
  %89 = getelementptr inbounds %struct.regexp, ptr %86, i64 0, i32 24
  %90 = load i16, ptr %89, align 8
  %91 = and i16 %90, 15
  %92 = zext nneg i16 %91 to i64
  %93 = getelementptr inbounds i8, ptr %88, i64 %92
  %94 = load ptr, ptr %45, align 8, !tbaa !181
  %95 = getelementptr inbounds %struct.xpv, ptr %94, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !95
  %97 = xor i64 %92, -1
  %98 = add i64 %96, %97
  %99 = getelementptr inbounds %struct.p5rx, ptr %45, i64 0, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !183
  %101 = and i32 %100, 536870912
  %102 = or disjoint i32 %101, 524288
  %103 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %93, i64 noundef %98, i32 noundef %102) #8
  %104 = getelementptr inbounds ptr, ptr %36, i64 1
  store ptr %103, ptr %104, align 8, !tbaa !130
  %105 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %2, i64 noundef %80, i32 noundef 524288) #8
  %106 = getelementptr inbounds ptr, ptr %36, i64 2
  store ptr %105, ptr %106, align 8, !tbaa !130
  %107 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %108 = getelementptr inbounds ptr, ptr %107, i64 %42
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  store ptr %109, ptr @PL_stack_sp, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #8
  br label %124

110:                                              ; preds = %48
  %111 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %45) #8
  %112 = tail call ptr @Perl_sv_2mortal(ptr noundef %111) #8
  %113 = getelementptr inbounds ptr, ptr %36, i64 1
  store ptr %112, ptr %113, align 8, !tbaa !130
  %114 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %115 = getelementptr inbounds ptr, ptr %114, i64 %42
  store ptr %115, ptr @PL_stack_sp, align 8, !tbaa !130
  br label %124

116:                                              ; preds = %40
  %117 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %118 = getelementptr inbounds ptr, ptr %117, i64 %42
  br i1 %47, label %119, label %121

119:                                              ; preds = %116
  %120 = getelementptr inbounds ptr, ptr %118, i64 -1
  store ptr %120, ptr @PL_stack_sp, align 8, !tbaa !130
  br label %124

121:                                              ; preds = %116
  store ptr @PL_sv_no, ptr %118, align 8, !tbaa !130
  %122 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %123 = getelementptr inbounds ptr, ptr %122, i64 %42
  store ptr %123, ptr @PL_stack_sp, align 8, !tbaa !130
  br label %124

124:                                              ; preds = %110, %85, %121, %119
  ret void
}

declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_universal_version(ptr nocapture readnone %0) #0 !prof !184 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17, !prof !185

16:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.26) #8
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !87
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26, !prof !186

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !99
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !87
  %31 = and i32 %30, 1048576
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27) #8
  br label %34

34:                                               ; preds = %33, %26
  %35 = load ptr, ptr %28, align 8, !tbaa !94
  %36 = load ptr, ptr %35, align 8, !tbaa !106
  br label %39

37:                                               ; preds = %17
  %38 = tail call ptr @Perl_gv_stashsv(ptr noundef %21, i32 noundef 0) #8
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi ptr [ %36, %34 ], [ %38, %37 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42, !prof !185

42:                                               ; preds = %39
  %43 = tail call ptr @Perl_hv_common(ptr noundef nonnull %40, ptr noundef null, ptr noundef nonnull @.str.28, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #8
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi ptr [ %43, %42 ], [ null, %39 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %77, label %47, !prof !185

47:                                               ; preds = %44
  %48 = load ptr, ptr %45, align 8, !tbaa !130
  %49 = getelementptr inbounds %struct.gv, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !153
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %51, 9
  br i1 %52, label %53, label %77, !prof !186

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.gv, ptr %48, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !99
  %56 = load ptr, ptr %55, align 8, !tbaa !187
  %57 = icmp eq ptr %56, null
  br i1 %57, label %77, label %58, !prof !185

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !87
  %61 = and i32 %60, 65280
  %62 = icmp ne i32 %61, 0
  %63 = and i32 %60, 255
  %64 = icmp eq i32 %63, 8
  %65 = or i1 %62, %64
  %66 = and i32 %60, 16777471
  %67 = icmp eq i32 %66, 16777226
  %68 = or i1 %67, %65
  br i1 %68, label %69, label %77, !prof !186

69:                                               ; preds = %58
  %70 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %56, i32 noundef 1538) #8
  %71 = tail call i32 @Perl_sv_isobject(ptr noundef %70) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73, !prof !186

73:                                               ; preds = %69
  %74 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %70, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0)
  br i1 %74, label %77, label %75

75:                                               ; preds = %73, %69
  %76 = tail call ptr @Perl_upg_version(ptr noundef %70, i1 noundef zeroext false) #8
  br label %77

77:                                               ; preds = %44, %47, %53, %58, %73, %75
  %78 = phi i1 [ true, %75 ], [ true, %73 ], [ false, %58 ], [ false, %53 ], [ false, %47 ], [ false, %44 ]
  %79 = phi ptr [ %70, %75 ], [ %70, %73 ], [ @PL_sv_undef, %58 ], [ @PL_sv_undef, %53 ], [ @PL_sv_undef, %47 ], [ @PL_sv_undef, %44 ]
  %80 = icmp sgt i32 %14, 1
  br i1 %80, label %81, label %163, !prof !186

81:                                               ; preds = %77
  %82 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %83 = getelementptr ptr, ptr %82, i64 %8
  %84 = getelementptr ptr, ptr %83, i64 2
  %85 = load ptr, ptr %84, align 8, !tbaa !130
  br i1 %78, label %113, label %86, !prof !186

86:                                               ; preds = %81
  br i1 %41, label %110, label %87

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.hv, ptr %40, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !128
  %90 = and i32 %89, 33554432
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %108, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.hv, ptr %40, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !99
  %95 = load ptr, ptr %40, align 8, !tbaa !116
  %96 = getelementptr inbounds %struct.xpvhv, ptr %95, i64 0, i32 3
  %97 = load i64, ptr %96, align 8, !tbaa !118
  %98 = getelementptr ptr, ptr %94, i64 %97
  %99 = getelementptr ptr, ptr %98, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !99
  %101 = icmp eq ptr %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %92
  %103 = getelementptr i8, ptr %98, i64 36
  %104 = load i32, ptr %103, align 4, !tbaa !129
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %100, align 8, !tbaa !130
  br label %108

108:                                              ; preds = %102, %87, %92, %106
  %109 = phi ptr [ %107, %106 ], [ null, %92 ], [ null, %87 ], [ %100, %102 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, ptr noundef %109, ptr noundef %109) #8
  br label %113

110:                                              ; preds = %86
  %111 = getelementptr inbounds ptr, ptr %82, i64 %19
  %112 = load ptr, ptr %111, align 8, !tbaa !130
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.32, ptr noundef %112) #8
  br label %113

113:                                              ; preds = %108, %110, %81
  %114 = tail call i32 @Perl_sv_isobject(ptr noundef %85) #8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116, !prof !186

116:                                              ; preds = %113
  %117 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %85, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0)
  br i1 %117, label %121, label %118

118:                                              ; preds = %116, %113
  %119 = tail call ptr @Perl_new_version(ptr noundef %85) #8
  %120 = tail call ptr @Perl_sv_2mortal(ptr noundef %119) #8
  br label %121

121:                                              ; preds = %118, %116
  %122 = phi ptr [ %85, %116 ], [ %120, %118 ]
  %123 = tail call i32 @Perl_vcmp(ptr noundef %122, ptr noundef %79) #8
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %163, !prof !185

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.sv, ptr %122, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !99
  %128 = tail call ptr @Perl_hv_common_key_len(ptr noundef %127, ptr noundef nonnull @.str.33, i32 noundef 2, i32 noundef 8, ptr noundef null, i32 noundef 0) #8
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = tail call ptr @Perl_vnormal(ptr noundef %122) #8
  %132 = tail call ptr @Perl_vnormal(ptr noundef %79) #8
  br label %136

133:                                              ; preds = %125
  %134 = tail call ptr @Perl_vstringify(ptr noundef %122) #8
  %135 = tail call ptr @Perl_vstringify(ptr noundef %79) #8
  br label %136

136:                                              ; preds = %133, %130
  %137 = phi ptr [ %131, %130 ], [ %134, %133 ]
  %138 = phi ptr [ %132, %130 ], [ %135, %133 ]
  %139 = getelementptr inbounds %struct.hv, ptr %40, i64 0, i32 2
  %140 = load i32, ptr %139, align 4, !tbaa !128
  %141 = and i32 %140, 33554432
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %159, label %143

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.hv, ptr %40, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !99
  %146 = load ptr, ptr %40, align 8, !tbaa !116
  %147 = getelementptr inbounds %struct.xpvhv, ptr %146, i64 0, i32 3
  %148 = load i64, ptr %147, align 8, !tbaa !118
  %149 = getelementptr ptr, ptr %145, i64 %148
  %150 = getelementptr ptr, ptr %149, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !99
  %152 = icmp eq ptr %151, null
  br i1 %152, label %159, label %153

153:                                              ; preds = %143
  %154 = getelementptr i8, ptr %149, i64 36
  %155 = load i32, ptr %154, align 4, !tbaa !129
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %151, align 8, !tbaa !130
  br label %159

159:                                              ; preds = %153, %136, %143, %157
  %160 = phi ptr [ %158, %157 ], [ null, %143 ], [ null, %136 ], [ %151, %153 ]
  %161 = tail call ptr @Perl_sv_2mortal(ptr noundef %137) #8
  %162 = tail call ptr @Perl_sv_2mortal(ptr noundef %138) #8
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.34, ptr noundef %160, ptr noundef %161, ptr noundef %162) #8
  br label %163

163:                                              ; preds = %121, %159, %77
  %164 = phi ptr [ %79, %77 ], [ %138, %159 ], [ %79, %121 ]
  %165 = tail call i32 @Perl_sv_isobject(ptr noundef %164) #8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %172, label %167, !prof !185

167:                                              ; preds = %163
  %168 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %164, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0)
  br i1 %168, label %169, label %172, !prof !186

169:                                              ; preds = %167
  %170 = tail call ptr @Perl_vstringify(ptr noundef %164) #8
  %171 = tail call ptr @Perl_sv_2mortal(ptr noundef %170) #8
  br label %172

172:                                              ; preds = %163, %167, %169
  %173 = phi ptr [ %171, %169 ], [ %164, %167 ], [ %164, %163 ]
  %174 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %175 = getelementptr inbounds ptr, ptr %174, i64 %19
  store ptr %173, ptr %175, align 8, !tbaa !130
  %176 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %177 = getelementptr inbounds ptr, ptr %176, i64 %19
  store ptr %177, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_upg_version(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @Perl_new_version(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_vcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_vnormal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_vstringify(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_version_new(ptr nocapture readnone %0) #0 !prof !113 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %6 = load i32, ptr %4, align 4, !tbaa !136
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  switch i32 %14, label %53 [
    i32 3, label %15
    i32 2, label %32
    i32 1, label %51
  ]

15:                                               ; preds = %1
  %16 = tail call ptr @Perl_sv_newmortal() #8
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %18 = getelementptr ptr, ptr %17, i64 %8
  %19 = getelementptr ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !87
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  br label %30

28:                                               ; preds = %15
  %29 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %20, ptr noundef null, i32 noundef 34) #8
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %27, %25 ], [ %29, %28 ]
  tail call void (ptr, ptr, ...) @Perl_sv_setpvf(ptr noundef %16, ptr noundef nonnull @.str.35, ptr noundef %31) #8
  br label %54

32:                                               ; preds = %1
  %33 = getelementptr ptr, ptr %9, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !130
  %35 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !87
  %37 = and i32 %36, 2097152
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = tail call i32 @Perl_mg_get(ptr noundef %34) #8
  br label %41

41:                                               ; preds = %32, %39
  %42 = load i32, ptr %35, align 4, !tbaa !87
  %43 = and i32 %42, 65280
  %44 = icmp ne i32 %43, 0
  %45 = and i32 %42, 255
  %46 = icmp eq i32 %45, 8
  %47 = or i1 %44, %46
  %48 = and i32 %42, 16777471
  %49 = icmp eq i32 %48, 16777226
  %50 = or i1 %49, %47
  br i1 %50, label %54, label %51

51:                                               ; preds = %41, %1
  %52 = tail call ptr @Perl_sv_newmortal() #8
  tail call void @Perl_sv_setpvn(ptr noundef %52, ptr noundef nonnull @.str.36, i64 noundef 5) #8
  br label %54

53:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.37) #8
  br label %54

54:                                               ; preds = %41, %53, %51, %30
  %55 = phi ptr [ null, %53 ], [ %52, %51 ], [ %34, %41 ], [ %16, %30 ]
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %57 = getelementptr ptr, ptr %56, i64 %8
  %58 = getelementptr ptr, ptr %57, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !130
  %60 = tail call i32 @Perl_sv_isobject(ptr noundef %59) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %149, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !99
  %65 = load ptr, ptr %64, align 8, !tbaa !94
  %66 = load ptr, ptr %65, align 8, !tbaa !106
  %67 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !128
  %69 = and i32 %68, 33554432
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %92, label %71

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !99
  %74 = load ptr, ptr %66, align 8, !tbaa !116
  %75 = getelementptr inbounds %struct.xpvhv, ptr %74, i64 0, i32 3
  %76 = load i64, ptr %75, align 8, !tbaa !118
  %77 = getelementptr ptr, ptr %73, i64 %76
  %78 = getelementptr ptr, ptr %77, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !99
  %80 = icmp eq ptr %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %71
  %82 = getelementptr i8, ptr %77, i64 36
  %83 = load i32, ptr %82, align 4, !tbaa !129
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %79, align 8, !tbaa !130
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %81, %85
  %89 = phi ptr [ %78, %81 ], [ %79, %85 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !99
  %91 = getelementptr inbounds %struct.hek, ptr %90, i64 0, i32 2
  br label %92

92:                                               ; preds = %62, %71, %85, %88
  %93 = phi ptr [ %91, %88 ], [ null, %85 ], [ null, %71 ], [ null, %62 ]
  br i1 %70, label %166, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !99
  %97 = load ptr, ptr %66, align 8, !tbaa !116
  %98 = getelementptr inbounds %struct.xpvhv, ptr %97, i64 0, i32 3
  %99 = load i64, ptr %98, align 8, !tbaa !118
  %100 = getelementptr ptr, ptr %96, i64 %99
  %101 = getelementptr ptr, ptr %100, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !99
  %103 = icmp eq ptr %102, null
  br i1 %103, label %117, label %104

104:                                              ; preds = %94
  %105 = getelementptr i8, ptr %100, i64 36
  %106 = load i32, ptr %105, align 4, !tbaa !129
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %102, align 8, !tbaa !130
  %110 = icmp eq ptr %109, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %104, %108
  %112 = phi ptr [ %101, %104 ], [ %102, %108 ]
  %113 = load ptr, ptr %112, align 8, !tbaa !99
  %114 = getelementptr inbounds %struct.hek, ptr %113, i64 0, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !132
  %116 = sext i32 %115 to i64
  br label %117

117:                                              ; preds = %94, %108, %111
  %118 = phi i64 [ %116, %111 ], [ 0, %108 ], [ 0, %94 ]
  store i64 %118, ptr %2, align 8, !tbaa !98
  br i1 %70, label %167, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !99
  %122 = load ptr, ptr %66, align 8, !tbaa !116
  %123 = getelementptr inbounds %struct.xpvhv, ptr %122, i64 0, i32 3
  %124 = load i64, ptr %123, align 8, !tbaa !118
  %125 = getelementptr ptr, ptr %121, i64 %124
  %126 = getelementptr ptr, ptr %125, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !99
  %128 = icmp eq ptr %127, null
  br i1 %128, label %167, label %129

129:                                              ; preds = %119
  %130 = getelementptr i8, ptr %125, i64 36
  %131 = load i32, ptr %130, align 4, !tbaa !129
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %127, align 8, !tbaa !130
  %135 = icmp eq ptr %134, null
  br i1 %135, label %167, label %136

136:                                              ; preds = %129, %133
  %137 = phi ptr [ %126, %129 ], [ %127, %133 ]
  %138 = load ptr, ptr %137, align 8, !tbaa !99
  %139 = getelementptr inbounds %struct.hek, ptr %138, i64 0, i32 2
  %140 = getelementptr inbounds %struct.hek, ptr %138, i64 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !132
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %139, i64 %142
  %144 = getelementptr inbounds i8, ptr %143, i64 1
  %145 = load i8, ptr %144, align 1, !tbaa !99
  %146 = and i8 %145, 1
  %147 = zext nneg i8 %146 to i32
  %148 = shl nuw nsw i32 %147, 29
  br label %167

149:                                              ; preds = %54
  %150 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %151 = load i32, ptr %150, align 4, !tbaa !87
  %152 = and i32 %151, 2098176
  %153 = icmp eq i32 %152, 1024
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load ptr, ptr %59, align 8, !tbaa !94
  %156 = getelementptr inbounds %struct.xpv, ptr %155, i64 0, i32 2
  %157 = load i64, ptr %156, align 8, !tbaa !95
  store i64 %157, ptr %2, align 8, !tbaa !98
  %158 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !99
  br label %162

160:                                              ; preds = %149
  %161 = call ptr @Perl_sv_2pv_flags(ptr noundef %59, ptr noundef nonnull %2, i32 noundef 0) #8
  br label %162

162:                                              ; preds = %160, %154
  %163 = phi ptr [ %159, %154 ], [ %161, %160 ]
  %164 = load i32, ptr %150, align 4, !tbaa !87
  %165 = and i32 %164, 536870912
  br label %167

166:                                              ; preds = %92
  store i64 0, ptr %2, align 8, !tbaa !98
  br label %167

167:                                              ; preds = %166, %136, %133, %119, %117, %162
  %168 = phi i32 [ %165, %162 ], [ %148, %136 ], [ 0, %133 ], [ 0, %119 ], [ 0, %117 ], [ 0, %166 ]
  %169 = phi ptr [ %163, %162 ], [ %93, %136 ], [ %93, %133 ], [ %93, %119 ], [ %93, %117 ], [ %93, %166 ]
  %170 = call ptr @Perl_new_version(ptr noundef %55) #8
  %171 = load i64, ptr %2, align 8, !tbaa !98
  %172 = icmp eq i64 %171, 7
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %169, ptr noundef nonnull dereferenceable(8) @.str.29) #9
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %173, %167
  %177 = trunc i64 %171 to i32
  %178 = or disjoint i32 %168, 1
  %179 = call ptr @Perl_gv_stashpvn(ptr noundef %169, i32 noundef %177, i32 noundef %178) #8
  %180 = call ptr @Perl_sv_bless(ptr noundef %170, ptr noundef %179) #8
  br label %181

181:                                              ; preds = %173, %176
  %182 = shl i64 %12, 29
  %183 = ashr i64 %182, 32
  %184 = sub nsw i64 0, %183
  %185 = getelementptr inbounds ptr, ptr %3, i64 %184
  %186 = getelementptr inbounds ptr, ptr %185, i64 1
  store ptr %170, ptr %186, align 8, !tbaa !130
  store ptr %186, ptr @PL_stack_sp, align 8, !tbaa !130
  %187 = call ptr @Perl_sv_2mortal(ptr noundef %170) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

declare void @Perl_sv_setpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_version_stringify(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38)
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %18 = getelementptr ptr, ptr %17, i64 %7
  %19 = getelementptr ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = tail call i32 @Perl_sv_isobject(ptr noundef %20) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %20, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0)
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  br label %29

28:                                               ; preds = %23, %16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #8
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi ptr [ %27, %25 ], [ null, %28 ]
  %31 = shl i64 %11, 29
  %32 = ashr i64 %31, 32
  %33 = sub nsw i64 0, %32
  %34 = getelementptr inbounds ptr, ptr %2, i64 %33
  %35 = tail call ptr @Perl_vstringify(ptr noundef %30) #8
  %36 = getelementptr inbounds ptr, ptr %34, i64 1
  store ptr %35, ptr %36, align 8, !tbaa !130
  store ptr %36, ptr @PL_stack_sp, align 8, !tbaa !130
  %37 = tail call ptr @Perl_sv_2mortal(ptr noundef %35) #8
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_version_numify(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38)
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %18 = getelementptr ptr, ptr %17, i64 %7
  %19 = getelementptr ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = tail call i32 @Perl_sv_isobject(ptr noundef %20) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %20, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0)
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  br label %29

28:                                               ; preds = %23, %16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #8
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi ptr [ %27, %25 ], [ null, %28 ]
  %31 = shl i64 %11, 29
  %32 = ashr i64 %31, 32
  %33 = sub nsw i64 0, %32
  %34 = getelementptr inbounds ptr, ptr %2, i64 %33
  %35 = tail call ptr @Perl_vnumify(ptr noundef %30) #8
  %36 = getelementptr inbounds ptr, ptr %34, i64 1
  store ptr %35, ptr %36, align 8, !tbaa !130
  store ptr %36, ptr @PL_stack_sp, align 8, !tbaa !130
  %37 = tail call ptr @Perl_sv_2mortal(ptr noundef %35) #8
  ret void
}

declare ptr @Perl_vnumify(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_version_normal(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.40)
  br label %15

15:                                               ; preds = %14, %1
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %17 = getelementptr ptr, ptr %16, i64 %7
  %18 = getelementptr ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = tail call i32 @Perl_sv_isobject(ptr noundef %19) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %19, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0)
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !99
  br label %28

27:                                               ; preds = %22, %15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.41) #8
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi ptr [ %26, %24 ], [ null, %27 ]
  %30 = shl i64 %11, 29
  %31 = ashr i64 %30, 32
  %32 = sub nsw i64 0, %31
  %33 = getelementptr inbounds ptr, ptr %2, i64 %32
  %34 = tail call ptr @Perl_vnormal(ptr noundef %29) #8
  %35 = getelementptr inbounds ptr, ptr %33, i64 1
  store ptr %34, ptr %35, align 8, !tbaa !130
  store ptr %35, ptr @PL_stack_sp, align 8, !tbaa !130
  %36 = tail call ptr @Perl_sv_2mortal(ptr noundef %34) #8
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_version_vcmp(ptr noundef %0) #0 !prof !112 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16, !prof !144

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38)
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %18 = getelementptr ptr, ptr %17, i64 %7
  %19 = getelementptr ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = tail call i32 @Perl_sv_isobject(ptr noundef %20) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !144

23:                                               ; preds = %16
  %24 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %20, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0)
  br i1 %24, label %25, label %28, !prof !155

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  br label %29

28:                                               ; preds = %23, %16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #8
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi ptr [ %27, %25 ], [ null, %28 ]
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %32 = getelementptr ptr, ptr %31, i64 %7
  %33 = getelementptr ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !130
  %35 = getelementptr ptr, ptr %32, i64 3
  %36 = load ptr, ptr %35, align 8, !tbaa !130
  %37 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !87
  %39 = and i32 %38, 2097408
  %40 = icmp eq i32 %39, 256
  br i1 %40, label %41, label %45, !prof !155

41:                                               ; preds = %29
  %42 = load ptr, ptr %36, align 8, !tbaa !94
  %43 = getelementptr inbounds %struct.xpviv, ptr %42, i64 0, i32 4
  %44 = load i64, ptr %43, align 8, !tbaa !99
  br label %47

45:                                               ; preds = %29
  %46 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %36, i32 noundef 2) #8
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i64 [ %44, %41 ], [ %46, %45 ]
  %49 = tail call i32 @Perl_sv_isobject(ptr noundef %34) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51, !prof !155

51:                                               ; preds = %47
  %52 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %34, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0)
  br i1 %52, label %70, label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !87
  %56 = and i32 %55, 65280
  %57 = icmp ne i32 %56, 0
  %58 = and i32 %55, 255
  %59 = icmp eq i32 %58, 8
  %60 = or i1 %57, %59
  %61 = and i32 %55, 16777471
  %62 = icmp eq i32 %61, 16777226
  %63 = or i1 %62, %60
  br i1 %63, label %66, label %64, !prof !155

64:                                               ; preds = %53
  %65 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.42, i64 noundef 1, i32 noundef 524288) #8
  br label %66

66:                                               ; preds = %53, %64
  %67 = phi ptr [ %65, %64 ], [ %34, %53 ]
  %68 = tail call ptr @Perl_new_version(ptr noundef %67) #8
  %69 = tail call ptr @Perl_sv_2mortal(ptr noundef %68) #8
  br label %70

70:                                               ; preds = %66, %51
  %71 = phi ptr [ %34, %51 ], [ %69, %66 ]
  %72 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !99
  %74 = icmp eq i64 %48, 0
  br i1 %74, label %77, label %75, !prof !155

75:                                               ; preds = %70
  %76 = tail call i32 @Perl_vcmp(ptr noundef %73, ptr noundef %30) #8
  br label %79

77:                                               ; preds = %70
  %78 = tail call i32 @Perl_vcmp(ptr noundef %30, ptr noundef %73) #8
  br label %79

79:                                               ; preds = %75, %77
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = sext i32 %80 to i64
  %82 = tail call ptr @Perl_newSViv(i64 noundef %81) #8
  %83 = shl i64 %11, 29
  %84 = ashr i64 %83, 32
  %85 = sub nsw i64 0, %84
  %86 = getelementptr inbounds ptr, ptr %2, i64 %85
  %87 = getelementptr inbounds ptr, ptr %86, i64 1
  store ptr %82, ptr %87, align 8, !tbaa !130
  store ptr %87, ptr @PL_stack_sp, align 8, !tbaa !130
  %88 = tail call ptr @Perl_sv_2mortal(ptr noundef %82) #8
  ret void
}

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_version_boolean(ptr noundef %0) #0 !prof !112 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16, !prof !144

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38)
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %18 = getelementptr ptr, ptr %17, i64 %7
  %19 = getelementptr ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = tail call i32 @Perl_sv_isobject(ptr noundef %20) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !144

23:                                               ; preds = %16
  %24 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %20, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0)
  br i1 %24, label %25, label %28, !prof !155

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  br label %29

28:                                               ; preds = %23, %16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #8
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi ptr [ %27, %25 ], [ null, %28 ]
  %31 = shl i64 %11, 29
  %32 = ashr i64 %31, 32
  %33 = sub nsw i64 0, %32
  %34 = getelementptr inbounds ptr, ptr %2, i64 %33
  %35 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.42, i64 noundef 1) #8
  %36 = tail call ptr @Perl_sv_2mortal(ptr noundef %35) #8
  %37 = tail call ptr @Perl_new_version(ptr noundef %36) #8
  %38 = tail call ptr @Perl_sv_2mortal(ptr noundef %37) #8
  %39 = tail call i32 @Perl_vcmp(ptr noundef %30, ptr noundef %38) #8
  %40 = sext i32 %39 to i64
  %41 = tail call ptr @Perl_newSViv(i64 noundef %40) #8
  %42 = getelementptr inbounds ptr, ptr %34, i64 1
  store ptr %41, ptr %42, align 8, !tbaa !130
  store ptr %42, ptr @PL_stack_sp, align 8, !tbaa !130
  %43 = tail call ptr @Perl_sv_2mortal(ptr noundef %41) #8
  ret void
}

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_version_noop(ptr noundef %0) #0 !prof !113 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = load i32, ptr %3, align 4, !tbaa !136
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38)
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  %22 = tail call i32 @Perl_sv_isobject(ptr noundef %21) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %26 = getelementptr inbounds ptr, ptr %25, i64 %19
  %27 = load ptr, ptr %26, align 8, !tbaa !130
  %28 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %27, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0)
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %17
  br label %30

30:                                               ; preds = %24, %29
  %31 = phi ptr [ @.str.39, %29 ], [ @.str.43, %24 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull %31) #8
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %33 = getelementptr inbounds ptr, ptr %32, i64 %19
  %34 = getelementptr inbounds ptr, ptr %33, i64 -1
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_version_is_alpha(ptr noundef %0) #0 !prof !113 {
  tail call fastcc void @S_version_check_key(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef 5)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @S_version_check_key(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !113 {
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %7 = load i32, ptr %5, align 4, !tbaa !136
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = ptrtoint ptr %4 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56)
  br label %17

17:                                               ; preds = %16, %3
  %18 = load ptr, ptr %4, align 8, !tbaa !130
  %19 = tail call i32 @Perl_sv_isobject(ptr noundef %18) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %18, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0)
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  br label %27

26:                                               ; preds = %21, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #8
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi ptr [ %25, %23 ], [ %18, %26 ]
  %29 = tail call ptr @Perl_hv_common_key_len(ptr noundef %28, ptr noundef %1, i32 noundef %2, i32 noundef 8, ptr noundef null, i32 noundef 0) #8
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr @PL_sv_no, ptr @PL_sv_yes
  store ptr %31, ptr %4, align 8, !tbaa !130
  store ptr %4, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_version_qv(ptr nocapture readnone %0) #0 !prof !113 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !130
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !130
  %6 = load i32, ptr %4, align 4, !tbaa !136
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !130
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = getelementptr ptr, ptr %9, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !tbaa !98
  %15 = and i64 %12, 34359738360
  %16 = icmp eq i64 %15, 16
  br i1 %16, label %17, label %150

17:                                               ; preds = %1
  %18 = getelementptr ptr, ptr %9, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !87
  %22 = and i32 %21, 2097152
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = tail call i32 @Perl_mg_get(ptr noundef %19) #8
  br label %26

26:                                               ; preds = %17, %24
  %27 = load i32, ptr %20, align 4, !tbaa !87
  %28 = and i32 %27, 65280
  %29 = icmp ne i32 %28, 0
  %30 = and i32 %27, 255
  %31 = icmp eq i32 %30, 8
  %32 = or i1 %29, %31
  %33 = and i32 %27, 16777471
  %34 = icmp eq i32 %33, 16777226
  %35 = or i1 %34, %32
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #8
  br label %37

37:                                               ; preds = %26, %36
  %38 = phi ptr [ %14, %36 ], [ %19, %26 ]
  %39 = tail call i32 @Perl_sv_isobject(ptr noundef %14) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %128, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !99
  %44 = load ptr, ptr %43, align 8, !tbaa !94
  %45 = load ptr, ptr %44, align 8, !tbaa !106
  %46 = getelementptr inbounds %struct.hv, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !128
  %48 = and i32 %47, 33554432
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %71, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.hv, ptr %45, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !99
  %53 = load ptr, ptr %45, align 8, !tbaa !116
  %54 = getelementptr inbounds %struct.xpvhv, ptr %53, i64 0, i32 3
  %55 = load i64, ptr %54, align 8, !tbaa !118
  %56 = getelementptr ptr, ptr %52, i64 %55
  %57 = getelementptr ptr, ptr %56, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !99
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %50
  %61 = getelementptr i8, ptr %56, i64 36
  %62 = load i32, ptr %61, align 4, !tbaa !129
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %58, align 8, !tbaa !130
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %60, %64
  %68 = phi ptr [ %57, %60 ], [ %58, %64 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !99
  %70 = getelementptr inbounds %struct.hek, ptr %69, i64 0, i32 2
  br label %71

71:                                               ; preds = %41, %50, %64, %67
  %72 = phi ptr [ %70, %67 ], [ null, %64 ], [ null, %50 ], [ null, %41 ]
  br i1 %49, label %145, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.hv, ptr %45, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !99
  %76 = load ptr, ptr %45, align 8, !tbaa !116
  %77 = getelementptr inbounds %struct.xpvhv, ptr %76, i64 0, i32 3
  %78 = load i64, ptr %77, align 8, !tbaa !118
  %79 = getelementptr ptr, ptr %75, i64 %78
  %80 = getelementptr ptr, ptr %79, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !99
  %82 = icmp eq ptr %81, null
  br i1 %82, label %96, label %83

83:                                               ; preds = %73
  %84 = getelementptr i8, ptr %79, i64 36
  %85 = load i32, ptr %84, align 4, !tbaa !129
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %81, align 8, !tbaa !130
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %83, %87
  %91 = phi ptr [ %80, %83 ], [ %81, %87 ]
  %92 = load ptr, ptr %91, align 8, !tbaa !99
  %93 = getelementptr inbounds %struct.hek, ptr %92, i64 0, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !132
  %95 = sext i32 %94 to i64
  br label %96

96:                                               ; preds = %73, %87, %90
  %97 = phi i64 [ %95, %90 ], [ 0, %87 ], [ 0, %73 ]
  store i64 %97, ptr %2, align 8, !tbaa !98
  br i1 %49, label %146, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.hv, ptr %45, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !99
  %101 = load ptr, ptr %45, align 8, !tbaa !116
  %102 = getelementptr inbounds %struct.xpvhv, ptr %101, i64 0, i32 3
  %103 = load i64, ptr %102, align 8, !tbaa !118
  %104 = getelementptr ptr, ptr %100, i64 %103
  %105 = getelementptr ptr, ptr %104, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !99
  %107 = icmp eq ptr %106, null
  br i1 %107, label %146, label %108

108:                                              ; preds = %98
  %109 = getelementptr i8, ptr %104, i64 36
  %110 = load i32, ptr %109, align 4, !tbaa !129
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %106, align 8, !tbaa !130
  %114 = icmp eq ptr %113, null
  br i1 %114, label %146, label %115

115:                                              ; preds = %108, %112
  %116 = phi ptr [ %105, %108 ], [ %106, %112 ]
  %117 = load ptr, ptr %116, align 8, !tbaa !99
  %118 = getelementptr inbounds %struct.hek, ptr %117, i64 0, i32 2
  %119 = getelementptr inbounds %struct.hek, ptr %117, i64 0, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !132
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, ptr %118, i64 %121
  %123 = getelementptr inbounds i8, ptr %122, i64 1
  %124 = load i8, ptr %123, align 1, !tbaa !99
  %125 = and i8 %124, 1
  %126 = zext nneg i8 %125 to i32
  %127 = shl nuw nsw i32 %126, 29
  br label %146

128:                                              ; preds = %37
  %129 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %130 = load i32, ptr %129, align 4, !tbaa !87
  %131 = and i32 %130, 2098176
  %132 = icmp eq i32 %131, 1024
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load ptr, ptr %14, align 8, !tbaa !94
  %135 = getelementptr inbounds %struct.xpv, ptr %134, i64 0, i32 2
  %136 = load i64, ptr %135, align 8, !tbaa !95
  store i64 %136, ptr %2, align 8, !tbaa !98
  %137 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !99
  br label %141

139:                                              ; preds = %128
  %140 = call ptr @Perl_sv_2pv_flags(ptr noundef %14, ptr noundef nonnull %2, i32 noundef 2) #8
  br label %141

141:                                              ; preds = %139, %133
  %142 = phi ptr [ %138, %133 ], [ %140, %139 ]
  %143 = load i32, ptr %129, align 4, !tbaa !87
  %144 = and i32 %143, 536870912
  br label %146

145:                                              ; preds = %71
  store i64 0, ptr %2, align 8, !tbaa !98
  br label %146

146:                                              ; preds = %145, %115, %112, %98, %96, %141
  %147 = phi ptr [ %142, %141 ], [ %72, %96 ], [ %72, %98 ], [ %72, %112 ], [ %72, %115 ], [ %72, %145 ]
  %148 = phi i32 [ %144, %141 ], [ 0, %96 ], [ 0, %98 ], [ 0, %112 ], [ %127, %115 ], [ 0, %145 ]
  %149 = or disjoint i32 %148, 1
  br label %150

150:                                              ; preds = %146, %1
  %151 = phi ptr [ %38, %146 ], [ %14, %1 ]
  %152 = phi ptr [ %147, %146 ], [ @.str.21, %1 ]
  %153 = phi i32 [ %149, %146 ], [ 1, %1 ]
  %154 = getelementptr inbounds %struct.sv, ptr %151, i64 0, i32 2
  %155 = load i32, ptr %154, align 4, !tbaa !87
  %156 = and i32 %155, 14680064
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %150
  %159 = call ptr @Perl_mg_find(ptr noundef %151, i32 noundef 86) #8
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %158, %150
  %162 = call ptr @Perl_sv_newmortal() #8
  %163 = icmp eq ptr %162, %151
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  call void @Perl_sv_setsv_flags(ptr noundef %162, ptr noundef %151, i32 noundef 1554) #8
  br label %165

165:                                              ; preds = %161, %164
  %166 = call ptr @Perl_upg_version(ptr noundef %162, i1 noundef zeroext true) #8
  br label %170

167:                                              ; preds = %158
  %168 = call ptr @Perl_new_version(ptr noundef %151) #8
  %169 = call ptr @Perl_sv_2mortal(ptr noundef %168) #8
  br label %170

170:                                              ; preds = %167, %165
  %171 = phi ptr [ %169, %167 ], [ %162, %165 ]
  br i1 %16, label %172, label %182

172:                                              ; preds = %170
  %173 = load i64, ptr %2, align 8, !tbaa !98
  %174 = icmp eq i64 %173, 7
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %152, ptr noundef nonnull dereferenceable(8) @.str.29) #9
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %175, %172
  %179 = trunc i64 %173 to i32
  %180 = call ptr @Perl_gv_stashpvn(ptr noundef %152, i32 noundef %179, i32 noundef %153) #8
  %181 = call ptr @Perl_sv_bless(ptr noundef %171, ptr noundef %180) #8
  br label %182

182:                                              ; preds = %178, %175, %170
  %183 = shl i64 %12, 29
  %184 = ashr i64 %183, 32
  %185 = sub nsw i64 0, %184
  %186 = getelementptr inbounds ptr, ptr %3, i64 %185
  %187 = getelementptr inbounds ptr, ptr %186, i64 1
  store ptr %171, ptr %187, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  store ptr %187, ptr @PL_stack_sp, align 8, !tbaa !130
  ret void
}

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_version_is_qv(ptr noundef %0) #0 !prof !113 {
  tail call fastcc void @S_version_check_key(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef 2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_boot_core_UNIVERSAL() local_unnamed_addr #0 !prof !112 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %10, %1 ]
  %3 = getelementptr inbounds i8, ptr @details, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !188
  %5 = getelementptr inbounds %struct.xsub_details, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !190
  %7 = getelementptr inbounds %struct.xsub_details, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !191
  %9 = tail call ptr @Perl_newXS_flags(ptr noundef %4, ptr noundef %6, ptr noundef nonnull @Perl_boot_core_UNIVERSAL.file, ptr noundef %8, i32 noundef 0) #8
  %10 = add nuw nsw i64 %2, 24
  %11 = icmp ult i64 %2, 1200
  br i1 %11, label %1, label %12, !prof !192, !llvm.loop !193

12:                                               ; preds = %1
  %13 = tail call ptr @Perl_get_cv(ptr noundef nonnull @.str.46, i32 noundef 0) #8
  %14 = tail call ptr @Perl_get_cv(ptr noundef nonnull @.str.47, i32 noundef 0) #8
  tail call void @Perl_cv_set_call_checker(ptr noundef %13, ptr noundef nonnull @optimize_out_native_convert_function, ptr noundef %13) #8
  tail call void @Perl_cv_set_call_checker(ptr noundef %14, ptr noundef nonnull @optimize_out_native_convert_function, ptr noundef %14) #8
  %15 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.48, i32 noundef 1) #8
  %16 = tail call ptr @Perl_newCONSTSUB(ptr noundef %15, ptr noundef nonnull @.str.49, ptr noundef null) #8
  %17 = load ptr, ptr %16, align 8, !tbaa !137
  %18 = getelementptr inbounds %struct.xpvcv, ptr %17, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = getelementptr inbounds %struct.xpvcv, ptr %17, i64 0, i32 12
  %21 = load i32, ptr %20, align 4, !tbaa !139
  %22 = and i32 %21, -4097
  store i32 %22, ptr %20, align 4, !tbaa !139
  store ptr @Perl_boot_core_UNIVERSAL.file, ptr %18, align 8, !tbaa !130
  tail call void @Perl_safesysfree(ptr noundef %19) #8
  ret void
}

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_get_cv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_cv_set_call_checker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal ptr @optimize_out_native_convert_function(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !prof !194 !PGOFuncName !195 {
  %4 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.106, i64 noundef 1) #8
  %5 = tail call ptr @Perl_ck_entersub_args_proto(ptr noundef %0, ptr noundef %1, ptr noundef %4) #8
  %6 = icmp eq ptr %4, null
  br i1 %6, label %14, label %7, !prof !196

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !166
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %13, !prof !196

11:                                               ; preds = %7
  %12 = add i32 %9, -1
  store i32 %12, ptr %8, align 8, !tbaa !166
  br label %14

13:                                               ; preds = %7
  tail call void @Perl_sv_free2(ptr noundef nonnull %4, i32 noundef %9) #8
  br label %14

14:                                               ; preds = %3, %11, %13
  %15 = getelementptr inbounds %struct.unop, ptr %5, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !197
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !199
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23, !prof !200

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.unop, ptr %16, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !197
  br label %23

23:                                               ; preds = %14, %20
  %24 = phi ptr [ %16, %14 ], [ %22, %20 ]
  %25 = phi ptr [ %5, %14 ], [ %16, %20 ]
  %26 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !199
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29, !prof !196

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !199
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33, !prof !196

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.op, ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !199
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39, !prof !200

37:                                               ; preds = %33
  %38 = tail call ptr @Perl_op_sibling_splice(ptr noundef %25, ptr noundef %24, i32 noundef 1, ptr noundef null) #8
  tail call void @Perl_op_free(ptr noundef %5) #8
  br label %39

39:                                               ; preds = %23, %29, %33, %37
  %40 = phi ptr [ %27, %37 ], [ %5, %33 ], [ %5, %29 ], [ %5, %23 ]
  ret ptr %40
}

declare ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_get_hv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_mro_meta_init(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_mro_get_linear_isa(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_ck_entersub_args_proto(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_op_sibling_splice(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_op_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!85}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!35 = !{ptr @Perl_sv_derived_from_sv, ptr @Perl_sv_derived_from_pvn, i64 33}
!36 = !{ptr @Perl_sv_derived_from_pvn, ptr @Perl_sv_reftype, i64 58}
!37 = !{ptr @Perl_sv_derived_from_pvn, ptr @strcmp, i64 58}
!38 = !{ptr @Perl_sv_derived_from_pvn, ptr @Perl_gv_stashsv, i64 2}
!39 = !{ptr @Perl_sv_derived_from_pvn, ptr @S_isa_lookup, i64 29}
!40 = !{ptr @Perl_sv_derived_from_pvn, ptr @Perl_gv_stashpvn, i64 2}
!41 = !{ptr @Perl_sv_derived_from, ptr @strlen, i64 1}
!42 = !{ptr @Perl_sv_derived_from, ptr @Perl_sv_derived_from_pvn, i64 1}
!43 = !{ptr @S_isa_lookup, ptr @Perl_mro_get_linear_isa, i64 1}
!44 = !{ptr @S_isa_lookup, ptr @Perl_hv_common, i64 32}
!45 = !{ptr @S_isa_lookup, ptr @Perl_gv_stashpvn, i64 3}
!46 = !{ptr @XS_UNIVERSAL_isa, ptr @Perl_sv_derived_from_sv, i64 33}
!47 = !{ptr @XS_UNIVERSAL_can, ptr @Perl_gv_fetchmethod_sv_flags, i64 12800}
!48 = !{ptr @XS_UNIVERSAL_can, ptr @Perl_newRV, i64 12800}
!49 = !{ptr @XS_UNIVERSAL_can, ptr @Perl_sv_2mortal, i64 12800}
!50 = !{ptr @XS_utf8_encode, ptr @Perl_sv_utf8_encode, i64 1}
!51 = !{ptr @XS_universal_version, ptr @Perl_gv_stashsv, i64 5}
!52 = !{ptr @XS_universal_version, ptr @Perl_hv_common, i64 5}
!53 = !{ptr @XS_universal_version, ptr @Perl_sv_mortalcopy_flags, i64 5}
!54 = !{ptr @XS_universal_version, ptr @Perl_sv_isobject, i64 15}
!55 = !{ptr @XS_universal_version, ptr @Perl_upg_version, i64 5}
!56 = !{ptr @XS_universal_version, ptr @Perl_new_version, i64 5}
!57 = !{ptr @XS_universal_version, ptr @Perl_sv_2mortal, i64 10}
!58 = !{ptr @XS_universal_version, ptr @Perl_vcmp, i64 5}
!59 = !{ptr @XS_universal_version, ptr @Perl_sv_derived_from_pvn, i64 5}
!60 = !{ptr @XS_universal_version, ptr @Perl_vstringify, i64 5}
!61 = !{ptr @XS_version_vcmp, ptr @Perl_sv_isobject, i64 2}
!62 = !{ptr @XS_version_vcmp, ptr @Perl_sv_derived_from_pvn, i64 1}
!63 = !{ptr @XS_version_vcmp, ptr @Perl_new_version, i64 1}
!64 = !{ptr @XS_version_vcmp, ptr @Perl_sv_2mortal, i64 2}
!65 = !{ptr @XS_version_vcmp, ptr @Perl_vcmp, i64 1}
!66 = !{ptr @XS_version_vcmp, ptr @Perl_newSViv, i64 1}
!67 = !{ptr @XS_version_boolean, ptr @Perl_sv_isobject, i64 1}
!68 = !{ptr @XS_version_boolean, ptr @Perl_sv_derived_from_pvn, i64 1}
!69 = !{ptr @XS_version_boolean, ptr @Perl_newSVpvn, i64 1}
!70 = !{ptr @XS_version_boolean, ptr @Perl_sv_2mortal, i64 3}
!71 = !{ptr @XS_version_boolean, ptr @Perl_new_version, i64 1}
!72 = !{ptr @XS_version_boolean, ptr @Perl_vcmp, i64 1}
!73 = !{ptr @XS_version_boolean, ptr @Perl_newSViv, i64 1}
!74 = !{ptr @Perl_boot_core_UNIVERSAL, ptr @Perl_newXS_flags, i64 51}
!75 = !{ptr @Perl_boot_core_UNIVERSAL, ptr @Perl_get_cv, i64 2}
!76 = !{ptr @Perl_boot_core_UNIVERSAL, ptr @Perl_cv_set_call_checker, i64 2}
!77 = !{ptr @Perl_boot_core_UNIVERSAL, ptr @Perl_get_hv, i64 1}
!78 = !{ptr @Perl_boot_core_UNIVERSAL, ptr @Perl_newCONSTSUB, i64 1}
!79 = !{ptr @Perl_boot_core_UNIVERSAL, ptr @Perl_safesysfree, i64 1}
!80 = !{ptr @optimize_out_native_convert_function, ptr @Perl_newSVpvn, i64 8}
!81 = !{ptr @optimize_out_native_convert_function, ptr @Perl_ck_entersub_args_proto, i64 8}
!82 = !{ptr @optimize_out_native_convert_function, ptr @Perl_sv_free2, i64 8}
!83 = !{ptr @optimize_out_native_convert_function, ptr @Perl_op_sibling_splice, i64 8}
!84 = !{ptr @optimize_out_native_convert_function, ptr @Perl_op_free, i64 8}
!85 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!86 = !{!"function_entry_count", i64 33}
!87 = !{!88, !92, i64 12}
!88 = !{!"sv", !89, i64 0, !92, i64 8, !92, i64 12, !90, i64 16}
!89 = !{!"any pointer", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !{!"int", !90, i64 0}
!93 = !{!"branch_weights", i32 33, i32 0}
!94 = !{!88, !89, i64 0}
!95 = !{!96, !97, i64 16}
!96 = !{!"xpv", !89, i64 0, !90, i64 8, !97, i64 16, !90, i64 24}
!97 = !{!"long", !90, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{!90, !90, i64 0}
!100 = !{!"function_entry_count", i64 60}
!101 = !{!"branch_weights", i32 60, i32 0}
!102 = !{!"branch_weights", i32 2, i32 58}
!103 = !{!"branch_weights", i32 0, i32 58}
!104 = !{!"branch_weights", i32 32, i32 26}
!105 = !{!"branch_weights", i32 0, i32 26}
!106 = !{!107, !89, i64 0}
!107 = !{!"xpvmg", !89, i64 0, !90, i64 8, !97, i64 16, !90, i64 24, !90, i64 32, !90, i64 40}
!108 = !{!"branch_weights", i32 26, i32 32}
!109 = !{!"branch_weights", i32 1, i32 27}
!110 = !{!"branch_weights", i32 26, i32 1}
!111 = !{!"branch_weights", i32 0, i32 2}
!112 = !{!"function_entry_count", i64 1}
!113 = !{!"function_entry_count", i64 0}
!114 = !{!"function_entry_count", i64 29}
!115 = !{!"universal.c;S_isa_lookup"}
!116 = !{!117, !89, i64 0}
!117 = !{!"hv", !89, i64 0, !92, i64 8, !92, i64 12, !90, i64 16}
!118 = !{!119, !97, i64 24}
!119 = !{!"xpvhv", !89, i64 0, !90, i64 8, !97, i64 16, !97, i64 24}
!120 = !{!121, !89, i64 32}
!121 = !{!"xpvhv_aux", !90, i64 0, !89, i64 8, !89, i64 16, !92, i64 24, !92, i64 28, !89, i64 32, !92, i64 40, !92, i64 44, !92, i64 48, !92, i64 52}
!122 = !{!"branch_weights", i32 0, i32 29}
!123 = !{!124, !89, i64 40}
!124 = !{!"mro_meta", !89, i64 0, !89, i64 8, !89, i64 16, !92, i64 24, !92, i64 28, !89, i64 32, !89, i64 40, !89, i64 48, !92, i64 56}
!125 = !{!"branch_weights", i32 1, i32 28}
!126 = !{!"branch_weights", i32 3, i32 26}
!127 = !{!"branch_weights", i32 0, i32 3}
!128 = !{!117, !92, i64 12}
!129 = !{!121, !92, i64 28}
!130 = !{!89, !89, i64 0}
!131 = !{}
!132 = !{!133, !92, i64 4}
!133 = !{!"hek", !92, i64 0, !92, i64 4, !90, i64 8}
!134 = !{!133, !92, i64 0}
!135 = !{!"branch_weights", i32 3, i32 0}
!136 = !{!92, !92, i64 0}
!137 = !{!138, !89, i64 0}
!138 = !{!"cv", !89, i64 0, !92, i64 8, !92, i64 12, !90, i64 16}
!139 = !{!140, !92, i64 92}
!140 = !{!"xpvcv", !89, i64 0, !90, i64 8, !97, i64 16, !90, i64 24, !89, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !89, i64 64, !90, i64 72, !89, i64 80, !92, i64 88, !92, i64 92, !92, i64 96}
!141 = !{!142, !89, i64 0}
!142 = !{!"gv", !89, i64 0, !92, i64 8, !92, i64 12, !90, i64 16}
!143 = !{!"branch_weights", i32 1, i32 32}
!144 = !{!"branch_weights", i32 0, i32 1}
!145 = !{!"branch_weights", i32 32, i32 1}
!146 = !{!"function_entry_count", i64 12800}
!147 = !{!"branch_weights", i32 12800, i32 0}
!148 = !{!"branch_weights", i32 0, i32 12800}
!149 = !{!150, !89, i64 8}
!150 = !{!"gp", !89, i64 0, !89, i64 8, !89, i64 16, !92, i64 24, !92, i64 28, !89, i64 32, !89, i64 40, !89, i64 48, !89, i64 56, !92, i64 64, !92, i64 67, !89, i64 72}
!151 = !{!152, !89, i64 0}
!152 = !{!"io", !89, i64 0, !92, i64 8, !92, i64 12, !90, i64 16}
!153 = !{!142, !92, i64 12}
!154 = !{!150, !89, i64 16}
!155 = !{!"branch_weights", i32 1, i32 0}
!156 = !{!157, !90, i64 35}
!157 = !{!"op", !89, i64 0, !89, i64 8, !89, i64 16, !97, i64 24, !92, i64 32, !92, i64 33, !92, i64 33, !92, i64 33, !92, i64 33, !92, i64 33, !92, i64 33, !92, i64 33, !90, i64 34, !90, i64 35}
!158 = !{!157, !97, i64 24}
!159 = !{!"branch_weights", i32 0, i32 0, i32 29}
!160 = !{!"branch_weights", i32 29, i32 0}
!161 = !{!162, !97, i64 16}
!162 = !{!"xpvav", !89, i64 0, !90, i64 8, !97, i64 16, !97, i64 24, !89, i64 32}
!163 = distinct !{!163, !164, !165}
!164 = !{!"llvm.loop.mustprogress"}
!165 = !{!"llvm.loop.unroll.disable"}
!166 = !{!88, !92, i64 8}
!167 = distinct !{!167, !164, !165}
!168 = !{!169, !89, i64 0}
!169 = !{!"av", !89, i64 0, !92, i64 8, !92, i64 12, !90, i64 16}
!170 = distinct !{!170, !164, !165}
!171 = !{!172, !89, i64 56}
!172 = !{!"pmop", !89, i64 0, !89, i64 8, !89, i64 16, !97, i64 24, !92, i64 32, !92, i64 33, !92, i64 33, !92, i64 33, !92, i64 33, !92, i64 33, !92, i64 33, !92, i64 33, !90, i64 34, !90, i64 35, !89, i64 40, !89, i64 48, !89, i64 56, !92, i64 64, !90, i64 72, !90, i64 80, !89, i64 88}
!173 = !{!174, !89, i64 32}
!174 = !{!"regexp", !89, i64 0, !90, i64 8, !97, i64 16, !90, i64 24, !89, i64 32, !89, i64 40, !89, i64 48, !92, i64 56, !97, i64 64, !97, i64 72, !97, i64 80, !89, i64 88, !92, i64 96, !92, i64 100, !89, i64 104, !92, i64 112, !92, i64 116, !89, i64 120, !89, i64 128, !89, i64 136, !97, i64 144, !97, i64 152, !97, i64 160, !97, i64 168, !92, i64 176, !92, i64 176, !89, i64 184}
!175 = !{!176, !89, i64 64}
!176 = !{!"regexp_engine", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !89, i64 32, !89, i64 40, !89, i64 48, !89, i64 56, !89, i64 64, !89, i64 72, !89, i64 80, !89, i64 88}
!177 = distinct !{!177, !164, !165}
!178 = !{!157, !90, i64 34}
!179 = !{!174, !92, i64 56}
!180 = distinct !{!180, !164, !165}
!181 = !{!182, !89, i64 0}
!182 = !{!"p5rx", !89, i64 0, !92, i64 8, !92, i64 12, !90, i64 16}
!183 = !{!182, !92, i64 12}
!184 = !{!"function_entry_count", i64 5}
!185 = !{!"branch_weights", i32 0, i32 5}
!186 = !{!"branch_weights", i32 5, i32 0}
!187 = !{!150, !89, i64 0}
!188 = !{!189, !89, i64 0}
!189 = !{!"xsub_details", !89, i64 0, !89, i64 8, !89, i64 16}
!190 = !{!189, !89, i64 8}
!191 = !{!189, !89, i64 16}
!192 = !{!"branch_weights", i32 50, i32 1}
!193 = distinct !{!193, !164, !165}
!194 = !{!"function_entry_count", i64 8}
!195 = !{!"universal.c;optimize_out_native_convert_function"}
!196 = !{!"branch_weights", i32 0, i32 8}
!197 = !{!198, !89, i64 40}
!198 = !{!"unop", !89, i64 0, !89, i64 8, !89, i64 16, !97, i64 24, !92, i64 32, !92, i64 33, !92, i64 33, !92, i64 33, !92, i64 33, !92, i64 33, !92, i64 33, !92, i64 33, !90, i64 34, !90, i64 35, !89, i64 40}
!199 = !{!157, !89, i64 8}
!200 = !{!"branch_weights", i32 8, i32 0}
