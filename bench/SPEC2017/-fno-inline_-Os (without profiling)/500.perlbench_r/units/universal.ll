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
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.19, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union.anon.19 = type { i64 }
%struct.regexp_engine = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.p5rx = type { ptr, i32, i32, %union.anon.20 }
%union.anon.20 = type { ptr }
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
@.str.50 = private unnamed_addr constant [2 x i8] c"d\00", align 1
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_sv_derived_from_sv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !12
  store i64 %12, ptr %4, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  br label %19

15:                                               ; preds = %3
  %16 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 2) #11
  %17 = load i32, ptr %5, align 4, !tbaa !5
  %18 = load i64, ptr %4, align 8, !tbaa !15
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i64 [ %12, %9 ], [ %18, %15 ]
  %21 = phi i32 [ %6, %9 ], [ %17, %15 ]
  %22 = phi ptr [ %14, %9 ], [ %16, %15 ]
  %23 = and i32 %21, 536870912
  %24 = or i32 %23, %2
  %25 = call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %0, ptr noundef %22, i64 noundef %20, i32 noundef %24) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i1 %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #11
  %11 = load i32, ptr %5, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %4, %9
  %13 = phi i32 [ %6, %4 ], [ %11, %9 ]
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !16
  %19 = tail call ptr @Perl_sv_reftype(ptr noundef %18, i32 noundef 0) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %1) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %21, %16
  %25 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = and i32 %26, 1048576
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %18, align 8, !tbaa !11
  %31 = load ptr, ptr %30, align 8, !tbaa !17
  br label %34

32:                                               ; preds = %12
  %33 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %0, i32 noundef 0) #11
  br label %34

34:                                               ; preds = %29, %32
  %35 = phi ptr [ %31, %29 ], [ %33, %32 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc zeroext i1 @S_isa_lookup(ptr noundef nonnull %35, ptr noundef %1, i64 noundef %2, i32 noundef %3) #12
  br i1 %38, label %44, label %39

39:                                               ; preds = %37, %34
  %40 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str, i32 noundef 9, i32 noundef 0) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call fastcc zeroext i1 @S_isa_lookup(ptr noundef nonnull %40, ptr noundef %1, i64 noundef %2, i32 noundef %3) #12
  br label %44

44:                                               ; preds = %24, %21, %39, %42, %37
  %45 = phi i1 [ true, %37 ], [ false, %39 ], [ %43, %42 ], [ false, %24 ], [ true, %21 ]
  ret i1 %45
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_sv_derived_from(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %4 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %3, i32 noundef 0) #12
  ret i1 %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_sv_derived_from_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %5 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %4, i32 noundef %2) #12
  ret i1 %5
}

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_isa_lookup(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = load ptr, ptr %0, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.xpvhv, ptr %7, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !21
  %10 = getelementptr ptr, ptr %6, i64 %9
  %11 = getelementptr ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %0) #11
  br label %16

16:                                               ; preds = %4, %14
  %17 = phi ptr [ %15, %14 ], [ %12, %4 ]
  %18 = getelementptr inbounds %struct.mro_meta, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = tail call ptr @Perl_mro_get_linear_isa(ptr noundef nonnull %0) #11
  %23 = load ptr, ptr %18, align 8, !tbaa !25
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi ptr [ %19, %16 ], [ %23, %21 ]
  %26 = lshr i32 %3, 29
  %27 = and i32 %26, 1
  %28 = tail call ptr @Perl_hv_common(ptr noundef %25, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef %27, i32 noundef 8, ptr noundef null, i32 noundef 0) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %85

30:                                               ; preds = %24
  %31 = trunc i64 %2 to i32
  %32 = tail call ptr @Perl_gv_stashpvn(ptr noundef %1, i32 noundef %31, i32 noundef %3) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %84, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.hv, ptr %32, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !27
  %37 = and i32 %36, 33554432
  %38 = icmp ne i32 %37, 0
  %39 = getelementptr inbounds %struct.hv, ptr %32, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !16
  %41 = load ptr, ptr %32, align 8, !tbaa !19
  %42 = getelementptr inbounds %struct.xpvhv, ptr %41, i64 0, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !21
  %44 = getelementptr ptr, ptr %40, i64 %43
  %45 = getelementptr ptr, ptr %44, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  br i1 %38, label %47, label %63

47:                                               ; preds = %34
  %48 = icmp eq ptr %46, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %47
  %50 = getelementptr i8, ptr %44, i64 36
  %51 = load i32, ptr %50, align 4, !tbaa !28
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = icmp slt i32 %51, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = getelementptr inbounds ptr, ptr %46, i64 1
  br label %59

57:                                               ; preds = %53
  %58 = icmp eq i32 %51, -1
  br i1 %58, label %63, label %71

59:                                               ; preds = %49, %55
  %60 = phi ptr [ %56, %55 ], [ %46, %49 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !29
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %34, %57, %47, %59
  %64 = phi ptr [ %46, %57 ], [ null, %47 ], [ %46, %59 ], [ %46, %34 ]
  tail call void @llvm.assume(i1 %38)
  %65 = getelementptr ptr, ptr %40, i64 %43
  %66 = getelementptr i8, ptr %65, i64 36
  %67 = load i32, ptr %66, align 4, !tbaa !28
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr %64, align 8, !tbaa !29
  br label %71

71:                                               ; preds = %57, %69, %63, %59
  %72 = phi ptr [ %61, %59 ], [ %70, %69 ], [ %64, %63 ], [ %46, %57 ]
  %73 = getelementptr inbounds %struct.hek, ptr %72, i64 0, i32 2
  %74 = getelementptr inbounds %struct.hek, ptr %72, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !30
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %73, i64 %76
  %78 = getelementptr inbounds i8, ptr %77, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !16
  %80 = zext i8 %79 to i32
  %81 = load i32, ptr %72, align 4, !tbaa !32
  %82 = tail call ptr @Perl_hv_common(ptr noundef %25, ptr noundef null, ptr noundef nonnull %73, i64 noundef %76, i32 noundef %80, i32 noundef 8, ptr noundef null, i32 noundef %81) #11
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %71, %30
  br label %85

85:                                               ; preds = %24, %71, %84
  %86 = phi i1 [ false, %84 ], [ true, %71 ], [ true, %24 ]
  ret i1 %86
}

; Function Attrs: optsize
declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl_sv_does_sv(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  tail call void @Perl_push_scope() #11
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #11
  %5 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !15
  store i64 %5, ptr @PL_tmps_floor, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #11
  %12 = load i32, ptr %6, align 4, !tbaa !5
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi i32 [ %7, %3 ], [ %12, %10 ]
  %15 = and i32 %14, 65280
  %16 = icmp ne i32 %15, 0
  %17 = and i32 %14, 255
  %18 = icmp eq i32 %17, 8
  %19 = or i1 %16, %18
  %20 = and i32 %14, 16777471
  %21 = icmp eq i32 %20, 16777226
  %22 = or i1 %21, %19
  br i1 %22, label %23, label %140

23:                                               ; preds = %13
  %24 = and i32 %14, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = and i32 %14, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %140, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !12
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %140, label %34

34:                                               ; preds = %29, %23
  %35 = tail call i32 @Perl_sv_isobject(ptr noundef nonnull %0) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !16
  %40 = tail call ptr @Perl_sv_ref(ptr noundef null, ptr noundef %39, i32 noundef 1) #11
  br label %41

41:                                               ; preds = %34, %37
  %42 = phi ptr [ %40, %37 ], [ %0, %34 ]
  %43 = tail call i32 @Perl_sv_eq_flags(ptr noundef %42, ptr noundef %1, i32 noundef 2) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %140

45:                                               ; preds = %41
  %46 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %47 = getelementptr inbounds i32, ptr %46, i64 1
  store ptr %47, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %48 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !29
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = tail call ptr @Perl_markstack_grow() #11
  br label %52

52:                                               ; preds = %45, %50
  %53 = phi ptr [ %51, %50 ], [ %47, %45 ]
  %54 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %55 = ptrtoint ptr %4 to i64
  %56 = ptrtoint ptr %54 to i64
  %57 = sub i64 %55, %56
  %58 = lshr exact i64 %57, 3
  %59 = trunc i64 %58 to i32
  store i32 %59, ptr %53, align 4, !tbaa !33
  %60 = load ptr, ptr @PL_stack_max, align 8, !tbaa !29
  %61 = ptrtoint ptr %60 to i64
  %62 = sub i64 %61, %55
  %63 = icmp slt i64 %62, 16
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = tail call ptr @Perl_stack_grow(ptr noundef %4, ptr noundef %4, i64 noundef 2) #11
  br label %66

66:                                               ; preds = %52, %64
  %67 = phi ptr [ %65, %64 ], [ %4, %52 ]
  %68 = getelementptr inbounds ptr, ptr %67, i64 1
  store ptr %0, ptr %68, align 8, !tbaa !29
  %69 = getelementptr inbounds ptr, ptr %67, i64 2
  store ptr %1, ptr %69, align 8, !tbaa !29
  store ptr %69, ptr @PL_stack_sp, align 8, !tbaa !29
  %70 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.1, i64 noundef 3, i32 noundef 524288) #11
  %71 = getelementptr inbounds %struct.sv, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !5
  %73 = or i32 %72, 32768
  store i32 %73, ptr %71, align 4, !tbaa !5
  %74 = tail call i32 @Perl_call_sv(ptr noundef %70, i32 noundef 130) #11
  %75 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %76 = load ptr, ptr %75, align 8, !tbaa !29
  %77 = icmp eq ptr %76, null
  br i1 %77, label %134, label %78

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.sv, ptr %76, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !5
  %81 = and i32 %80, 2097152
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %76, i32 noundef 2) #11
  br label %134

85:                                               ; preds = %78
  %86 = and i32 %80, 65280
  %87 = icmp ne i32 %86, 0
  %88 = and i32 %80, 255
  %89 = icmp eq i32 %88, 8
  %90 = or i1 %87, %89
  %91 = and i32 %80, 16777471
  %92 = icmp eq i32 %91, 16777226
  %93 = or i1 %92, %90
  br i1 %93, label %94, label %134

94:                                               ; preds = %85
  %95 = and i32 %80, 1024
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %76, align 8, !tbaa !11
  %99 = icmp eq ptr %98, null
  br i1 %99, label %134, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.xpv, ptr %98, i64 0, i32 2
  %102 = load i64, ptr %101, align 8, !tbaa !12
  %103 = icmp ugt i64 %102, 1
  br i1 %103, label %134, label %104

104:                                              ; preds = %100
  %105 = icmp eq i64 %102, 0
  br i1 %105, label %134, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.sv, ptr %76, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !16
  %109 = load i8, ptr %108, align 1, !tbaa !16
  %110 = icmp ne i8 %109, 48
  br label %134

111:                                              ; preds = %94
  %112 = and i32 %80, 768
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %132, label %114

114:                                              ; preds = %111
  %115 = and i32 %80, 256
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %76, align 8, !tbaa !11
  %119 = getelementptr inbounds %struct.xpviv, ptr %118, i64 0, i32 4
  %120 = load i64, ptr %119, align 8, !tbaa !16
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %117, %114
  %123 = and i32 %80, 512
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr %76, align 8, !tbaa !11
  %127 = getelementptr inbounds %struct.xpvnv, ptr %126, i64 0, i32 5
  %128 = load double, ptr %127, align 8, !tbaa !16
  %129 = fcmp uno double %128, 0.000000e+00
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  %131 = fcmp une double %128, 0.000000e+00
  br label %134

132:                                              ; preds = %111
  %133 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %76, i32 noundef 0) #11
  br label %134

134:                                              ; preds = %83, %132, %85, %100, %106, %104, %97, %122, %130, %125, %117, %66
  %135 = phi i1 [ false, %66 ], [ %84, %83 ], [ %133, %132 ], [ false, %85 ], [ false, %97 ], [ true, %100 ], [ false, %104 ], [ %110, %106 ], [ true, %117 ], [ false, %122 ], [ true, %125 ], [ %131, %130 ]
  %136 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !15
  %137 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !15
  %138 = icmp sgt i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  tail call void @Perl_free_tmps() #11
  br label %140

140:                                              ; preds = %134, %139, %41, %26, %29, %13
  %141 = phi i1 [ false, %13 ], [ false, %29 ], [ false, %26 ], [ true, %41 ], [ %135, %139 ], [ %135, %134 ]
  tail call void @Perl_pop_scope() #11
  ret i1 %141
}

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_isobject(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_ref(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_eq_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_free_tmps() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl_sv_does(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %4 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %3, i32 noundef 524288) #11
  %5 = tail call zeroext i1 @Perl_sv_does_sv(ptr noundef %0, ptr noundef %4, i32 poison) #12
  ret i1 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl_sv_does_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %5 = or i32 %2, 524288
  %6 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %4, i32 noundef %5) #11
  %7 = tail call zeroext i1 @Perl_sv_does_sv(ptr noundef %0, ptr noundef %6, i32 poison) #12
  ret i1 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl_sv_does_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = or i32 %3, 524288
  %6 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %2, i32 noundef %5) #11
  %7 = tail call zeroext i1 @Perl_sv_does_sv(ptr noundef %0, ptr noundef %6, i32 poison) #12
  ret i1 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %45, %8
  %13 = phi ptr [ %10, %8 ], [ %46, %45 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.xpvgv, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !27
  %19 = and i32 %18, 33554432
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = load ptr, ptr %16, align 8, !tbaa !19
  %25 = getelementptr inbounds %struct.xpvhv, ptr %24, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !21
  %27 = getelementptr ptr, ptr %23, i64 %26
  %28 = getelementptr ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %21
  %32 = getelementptr i8, ptr %27, i64 36
  %33 = load i32, ptr %32, align 4, !tbaa !28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %29, align 8, !tbaa !29
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35, %31
  %39 = phi ptr [ %29, %31 ], [ %36, %35 ]
  %40 = getelementptr inbounds %struct.xpvgv, ptr %14, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2, ptr noundef nonnull %39, ptr noundef %41, ptr noundef %1) #11
  br label %50

42:                                               ; preds = %12, %21, %35
  %43 = getelementptr inbounds %struct.xpvgv, ptr %14, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3, ptr noundef %44, ptr noundef %1) #11
  br label %50

45:                                               ; preds = %2, %8
  %46 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %0) #12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %12

48:                                               ; preds = %45
  %49 = ptrtoint ptr %0 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4, i64 noundef %49, ptr noundef %1) #11
  br label %50

50:                                               ; preds = %38, %42, %48
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !36
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #11
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_UNIVERSAL_isa(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.5) #12
  br label %61

15:                                               ; preds = %1
  %16 = add nsw i32 %5, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %6, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !29
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %22 = and i32 %21, 2097152
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = tail call i32 @Perl_mg_get(ptr noundef nonnull %19) #11
  %26 = load i32, ptr %20, align 4, !tbaa !5
  br label %27

27:                                               ; preds = %15, %24
  %28 = phi i32 [ %21, %15 ], [ %26, %24 ]
  %29 = and i32 %28, 65280
  %30 = icmp ne i32 %29, 0
  %31 = and i32 %28, 255
  %32 = icmp eq i32 %31, 8
  %33 = or i1 %30, %32
  %34 = and i32 %28, 16777471
  %35 = icmp eq i32 %34, 16777226
  %36 = or i1 %35, %33
  br i1 %36, label %37, label %55

37:                                               ; preds = %27
  %38 = and i32 %28, 2048
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = and i32 %28, 1024
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %19, align 8, !tbaa !11
  %45 = getelementptr inbounds %struct.xpv, ptr %44, i64 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !12
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %43, %37
  %49 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %50 = getelementptr ptr, ptr %49, i64 %7
  %51 = getelementptr ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8, !tbaa !29
  %53 = tail call zeroext i1 @Perl_sv_derived_from_sv(ptr noundef nonnull %19, ptr noundef %52, i32 noundef 0) #12
  %54 = select i1 %53, ptr @PL_sv_yes, ptr @PL_sv_no
  br label %55

55:                                               ; preds = %43, %40, %27, %48
  %56 = phi ptr [ %54, %48 ], [ @PL_sv_undef, %27 ], [ @PL_sv_undef, %40 ], [ @PL_sv_undef, %43 ]
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %58 = getelementptr inbounds ptr, ptr %57, i64 %17
  store ptr %56, ptr %58, align 8, !tbaa !29
  %59 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %60 = getelementptr inbounds ptr, ptr %59, i64 %17
  store ptr %60, ptr @PL_stack_sp, align 8, !tbaa !29
  br label %61

61:                                               ; preds = %55, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_UNIVERSAL_can(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.6) #12
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !5
  %24 = and i32 %23, 2097152
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @Perl_mg_get(ptr noundef nonnull %21) #11
  %28 = load i32, ptr %22, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %17, %26
  %30 = phi i32 [ %23, %17 ], [ %28, %26 ]
  %31 = and i32 %30, 65280
  %32 = icmp ne i32 %31, 0
  %33 = and i32 %30, 255
  %34 = icmp eq i32 %33, 8
  %35 = or i1 %32, %34
  %36 = and i32 %30, 16777471
  %37 = icmp eq i32 %36, 16777226
  %38 = or i1 %37, %35
  br i1 %38, label %39, label %143

39:                                               ; preds = %29
  %40 = and i32 %30, 1024
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %21, align 8, !tbaa !11
  %44 = getelementptr inbounds %struct.xpv, ptr %43, i64 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !12
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %143, label %47

47:                                               ; preds = %42, %39
  %48 = and i32 %30, 2048
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %78, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !16
  %53 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !5
  %55 = and i32 %54, 1048576
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %52, align 8, !tbaa !11
  %59 = load ptr, ptr %58, align 8, !tbaa !17
  br label %120

60:                                               ; preds = %50
  %61 = and i32 %54, 49152
  %62 = icmp eq i32 %61, 32768
  br i1 %62, label %63, label %143

63:                                               ; preds = %60
  %64 = and i32 %54, 255
  %65 = add nsw i32 %64, -9
  %66 = icmp ult i32 %65, 2
  br i1 %66, label %67, label %143

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %143, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.gp, ptr %69, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !40
  %74 = icmp eq ptr %73, null
  br i1 %74, label %143, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %73, align 8, !tbaa !42
  %77 = load ptr, ptr %76, align 8, !tbaa !17
  br label %120

78:                                               ; preds = %47
  %79 = and i32 %30, 49152
  %80 = icmp eq i32 %79, 32768
  %81 = add nsw i32 %33, -9
  %82 = icmp ult i32 %81, 2
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.gp, ptr %86, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !40
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %90, align 8, !tbaa !42
  %94 = load ptr, ptr %93, align 8, !tbaa !17
  br label %120

95:                                               ; preds = %84, %88, %78
  %96 = tail call ptr @Perl_gv_fetchsv(ptr noundef nonnull %21, i32 noundef 2048, i32 noundef 15) #11
  %97 = icmp eq ptr %96, null
  br i1 %97, label %115, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.sv, ptr %96, i64 0, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !5
  %101 = and i32 %100, 255
  %102 = add nsw i32 %101, -9
  %103 = icmp ult i32 %102, 2
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.gv, ptr %96, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !16
  %107 = icmp eq ptr %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.gp, ptr %106, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !40
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %110, align 8, !tbaa !42
  %114 = load ptr, ptr %113, align 8, !tbaa !17
  br label %120

115:                                              ; preds = %98, %104, %108, %95
  %116 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %21, i32 noundef 0) #11
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str, i32 noundef 9, i32 noundef 0) #11
  br label %120

120:                                              ; preds = %92, %118, %112, %57, %75
  %121 = phi ptr [ %59, %57 ], [ %77, %75 ], [ %94, %92 ], [ %114, %112 ], [ %119, %118 ]
  %122 = icmp eq ptr %121, null
  br i1 %122, label %143, label %123

123:                                              ; preds = %115, %120
  %124 = phi ptr [ %121, %120 ], [ %116, %115 ]
  %125 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %126 = getelementptr ptr, ptr %125, i64 %8
  %127 = getelementptr ptr, ptr %126, i64 2
  %128 = load ptr, ptr %127, align 8, !tbaa !29
  %129 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef nonnull %124, ptr noundef %128, i32 noundef 0) #11
  %130 = icmp eq ptr %129, null
  br i1 %130, label %143, label %131

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.gv, ptr %129, i64 0, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !44
  %134 = and i32 %133, 255
  %135 = icmp eq i32 %134, 9
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.gv, ptr %129, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !16
  %139 = getelementptr inbounds %struct.gp, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !45
  %141 = tail call ptr @Perl_newRV(ptr noundef %140) #11
  %142 = tail call ptr @Perl_sv_2mortal(ptr noundef %141) #11
  br label %143

143:                                              ; preds = %120, %136, %131, %123, %71, %67, %60, %63, %42, %29
  %144 = phi ptr [ @PL_sv_undef, %29 ], [ @PL_sv_undef, %42 ], [ @PL_sv_undef, %120 ], [ %142, %136 ], [ @PL_sv_undef, %131 ], [ @PL_sv_undef, %123 ], [ @PL_sv_undef, %71 ], [ @PL_sv_undef, %67 ], [ @PL_sv_undef, %60 ], [ @PL_sv_undef, %63 ]
  %145 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %146 = getelementptr inbounds ptr, ptr %145, i64 %19
  store ptr %144, ptr %146, align 8, !tbaa !29
  %147 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %148 = getelementptr inbounds ptr, ptr %147, i64 %19
  store ptr %148, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_gv_fetchsv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_UNIVERSAL_DOES(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #11
  br label %28

15:                                               ; preds = %1
  %16 = add nsw i32 %5, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %6, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !29
  %20 = getelementptr ptr, ptr %8, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = tail call zeroext i1 @Perl_sv_does_sv(ptr noundef %19, ptr noundef %21, i32 poison) #12
  %23 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %24 = getelementptr inbounds ptr, ptr %23, i64 %17
  %25 = select i1 %22, ptr @PL_sv_yes, ptr @PL_sv_no
  store ptr %25, ptr %24, align 8, !tbaa !29
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %27 = getelementptr inbounds ptr, ptr %26, i64 %17
  store ptr %27, ptr @PL_stack_sp, align 8, !tbaa !29
  br label %28

28:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_utf8_is_utf8(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8) #12
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %17 = sext i32 %7 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = getelementptr inbounds ptr, ptr %18, i64 -1
  br label %40

20:                                               ; preds = %1
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds ptr, ptr %6, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !29
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !5
  %26 = and i32 %25, 2097152
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = tail call i32 @Perl_mg_get(ptr noundef nonnull %23) #11
  %30 = load i32, ptr %24, align 4, !tbaa !5
  br label %31

31:                                               ; preds = %20, %28
  %32 = phi i32 [ %25, %20 ], [ %30, %28 ]
  %33 = and i32 %32, 536870912
  %34 = icmp eq i32 %33, 0
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %36 = getelementptr inbounds ptr, ptr %35, i64 %21
  %37 = select i1 %34, ptr @PL_sv_no, ptr @PL_sv_yes
  store ptr %37, ptr %36, align 8, !tbaa !29
  %38 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %39 = getelementptr inbounds ptr, ptr %38, i64 %21
  br label %40

40:                                               ; preds = %31, %15
  %41 = phi ptr [ %39, %31 ], [ %19, %15 ]
  store ptr %41, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_utf8_valid(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %6 = load i32, ptr %4, align 4, !tbaa !33
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8) #12
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %18 = sext i32 %8 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = getelementptr inbounds ptr, ptr %19, i64 -1
  store ptr %20, ptr @PL_stack_sp, align 8, !tbaa !29
  br label %53

21:                                               ; preds = %1
  %22 = sext i32 %8 to i64
  %23 = getelementptr inbounds ptr, ptr %7, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = and i32 %26, 2098176
  %28 = icmp eq i32 %27, 1024
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load ptr, ptr %24, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !12
  store i64 %32, ptr %2, align 8, !tbaa !15
  %33 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !16
  br label %38

35:                                               ; preds = %21
  %36 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %24, ptr noundef nonnull %2, i32 noundef 34) #11
  %37 = load i32, ptr %25, align 4, !tbaa !5
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi i32 [ %26, %29 ], [ %37, %35 ]
  %40 = phi ptr [ %34, %29 ], [ %36, %35 ]
  %41 = and i32 %39, 536870912
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i64, ptr %2, align 8, !tbaa !15
  %45 = call zeroext i1 @Perl_is_utf8_string(ptr noundef %40, i64 noundef %44) #11
  %46 = select i1 %45, ptr @PL_sv_yes, ptr @PL_sv_no
  br label %47

47:                                               ; preds = %38, %43
  %48 = phi ptr [ %46, %43 ], [ @PL_sv_yes, %38 ]
  %49 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %50 = getelementptr inbounds ptr, ptr %49, i64 %22
  store ptr %48, ptr %50, align 8, !tbaa !29
  %51 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %52 = getelementptr inbounds ptr, ptr %51, i64 %22
  store ptr %52, ptr @PL_stack_sp, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  br label %53

53:                                               ; preds = %47, %16
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @Perl_is_utf8_string(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_utf8_encode(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8) #12
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  tail call void @Perl_sv_utf8_encode(ptr noundef %21) #11
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %23 = getelementptr inbounds ptr, ptr %22, i64 %19
  %24 = load ptr, ptr %23, align 8, !tbaa !29
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = and i32 %26, 4194304
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = tail call i32 @Perl_mg_set(ptr noundef nonnull %24) #11
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  br label %32

32:                                               ; preds = %17, %29
  %33 = phi ptr [ %22, %17 ], [ %31, %29 ]
  %34 = getelementptr inbounds ptr, ptr %33, i64 %19
  %35 = getelementptr inbounds ptr, ptr %34, i64 -1
  store ptr %35, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_utf8_encode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_utf8_decode(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8) #12
  %16 = sext i32 %7 to i64
  br label %38

17:                                               ; preds = %1
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %6, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !5
  %23 = and i32 %22, 430018304
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %20, ptr noundef null, i32 noundef 2) #11
  br label %27

27:                                               ; preds = %17, %25
  %28 = tail call zeroext i1 @Perl_sv_utf8_decode(ptr noundef nonnull %20) #11
  %29 = load i32, ptr %21, align 4, !tbaa !5
  %30 = and i32 %29, 4194304
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 @Perl_mg_set(ptr noundef nonnull %20) #11
  br label %34

34:                                               ; preds = %27, %32
  %35 = select i1 %28, ptr @PL_sv_yes, ptr @PL_sv_no
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %37 = getelementptr inbounds ptr, ptr %36, i64 %18
  store ptr %35, ptr %37, align 8, !tbaa !29
  br label %38

38:                                               ; preds = %15, %34
  %39 = phi i64 [ %16, %15 ], [ %18, %34 ]
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %41 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %41, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_utf8_decode(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_utf8_upgrade(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8) #12
  %16 = sext i32 %7 to i64
  br label %46

17:                                               ; preds = %1
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %6, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !29
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !46
  %24 = and i8 %23, 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load ptr, ptr @PL_curpad, align 8, !tbaa !29
  %28 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !48
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  br label %34

32:                                               ; preds = %17
  %33 = tail call ptr @Perl_sv_newmortal() #11
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %36 = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %20, i32 noundef 2, i64 noundef 0) #11
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %38 = getelementptr inbounds ptr, ptr %37, i64 %18
  tail call void @Perl_sv_setiv(ptr noundef %35, i64 noundef %36) #11
  %39 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !5
  %41 = and i32 %40, 4194304
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = tail call i32 @Perl_mg_set(ptr noundef nonnull %35) #11
  br label %45

45:                                               ; preds = %34, %43
  store ptr %35, ptr %38, align 8, !tbaa !29
  br label %46

46:                                               ; preds = %15, %45
  %47 = phi i64 [ %16, %15 ], [ %18, %45 ]
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %49 = getelementptr inbounds ptr, ptr %48, i64 %47
  store ptr %49, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_utf8_downgrade(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, -3
  %16 = icmp ult i32 %15, -2
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.9) #12
  %18 = sext i32 %7 to i64
  br label %90

19:                                               ; preds = %1
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %6, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !29
  %23 = icmp ult i32 %14, 2
  br i1 %23, label %84, label %24

24:                                               ; preds = %19
  %25 = getelementptr ptr, ptr %9, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !29
  %27 = icmp eq ptr %26, null
  br i1 %27, label %84, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !5
  %31 = and i32 %30, 2097152
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %26, i32 noundef 2) #11
  br label %84

35:                                               ; preds = %28
  %36 = and i32 %30, 65280
  %37 = icmp ne i32 %36, 0
  %38 = and i32 %30, 255
  %39 = icmp eq i32 %38, 8
  %40 = or i1 %37, %39
  %41 = and i32 %30, 16777471
  %42 = icmp eq i32 %41, 16777226
  %43 = or i1 %42, %40
  br i1 %43, label %44, label %84

44:                                               ; preds = %35
  %45 = and i32 %30, 1024
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %26, align 8, !tbaa !11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %84, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.xpv, ptr %48, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !12
  %53 = icmp ugt i64 %52, 1
  br i1 %53, label %84, label %54

54:                                               ; preds = %50
  %55 = icmp eq i64 %52, 0
  br i1 %55, label %84, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !16
  %59 = load i8, ptr %58, align 1, !tbaa !16
  %60 = icmp ne i8 %59, 48
  br label %84

61:                                               ; preds = %44
  %62 = and i32 %30, 768
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %61
  %65 = and i32 %30, 256
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %26, align 8, !tbaa !11
  %69 = getelementptr inbounds %struct.xpviv, ptr %68, i64 0, i32 4
  %70 = load i64, ptr %69, align 8, !tbaa !16
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67, %64
  %73 = and i32 %30, 512
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %26, align 8, !tbaa !11
  %77 = getelementptr inbounds %struct.xpvnv, ptr %76, i64 0, i32 5
  %78 = load double, ptr %77, align 8, !tbaa !16
  %79 = fcmp uno double %78, 0.000000e+00
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = fcmp une double %78, 0.000000e+00
  br label %84

82:                                               ; preds = %61
  %83 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %26, i32 noundef 0) #11
  br label %84

84:                                               ; preds = %33, %82, %35, %50, %56, %54, %47, %72, %80, %75, %67, %24, %19
  %85 = phi i1 [ false, %19 ], [ false, %24 ], [ %34, %33 ], [ %83, %82 ], [ false, %35 ], [ false, %47 ], [ true, %50 ], [ false, %54 ], [ %60, %56 ], [ true, %67 ], [ false, %72 ], [ true, %75 ], [ %81, %80 ]
  %86 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %22, i1 noundef zeroext %85) #11
  %87 = select i1 %86, ptr @PL_sv_yes, ptr @PL_sv_no
  %88 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %89 = getelementptr inbounds ptr, ptr %88, i64 %20
  store ptr %87, ptr %89, align 8, !tbaa !29
  br label %90

90:                                               ; preds = %17, %84
  %91 = phi i64 [ %18, %17 ], [ %20, %84 ]
  %92 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %93 = getelementptr inbounds ptr, ptr %92, i64 %91
  store ptr %93, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_utf8_native_to_unicode(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = and i32 %19, -2145386240
  %21 = icmp eq i32 %20, -2147483392
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load ptr, ptr %17, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.xpvuv, ptr %23, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !16
  br label %28

26:                                               ; preds = %1
  %27 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %17, i32 noundef 2) #11
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i64 [ %25, %22 ], [ %27, %26 ]
  %30 = icmp sgt i32 %14, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8) #12
  br label %32

32:                                               ; preds = %31, %28
  %33 = tail call ptr @Perl_newSViv(i64 noundef %29) #11
  %34 = tail call ptr @Perl_sv_2mortal(ptr noundef %33) #11
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %36 = getelementptr inbounds ptr, ptr %35, i64 %15
  store ptr %34, ptr %36, align 8, !tbaa !29
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %38 = getelementptr inbounds ptr, ptr %37, i64 %15
  store ptr %38, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_utf8_unicode_to_native(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = and i32 %19, -2145386240
  %21 = icmp eq i32 %20, -2147483392
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load ptr, ptr %17, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.xpvuv, ptr %23, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !16
  br label %28

26:                                               ; preds = %1
  %27 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %17, i32 noundef 2) #11
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i64 [ %25, %22 ], [ %27, %26 ]
  %30 = icmp sgt i32 %14, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8) #12
  br label %32

32:                                               ; preds = %31, %28
  %33 = tail call ptr @Perl_newSViv(i64 noundef %29) #11
  %34 = tail call ptr @Perl_sv_2mortal(ptr noundef %33) #11
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %36 = getelementptr inbounds ptr, ptr %35, i64 %15
  store ptr %34, ptr %36, align 8, !tbaa !29
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %38 = getelementptr inbounds ptr, ptr %37, i64 %15
  store ptr %38, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_Internals_SvREADONLY(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = and i32 %19, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.10) #12
  br label %23

23:                                               ; preds = %22, %1
  %24 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !16
  switch i32 %14, label %107 [
    i32 1, label %26
    i32 2, label %35
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !5
  %29 = and i32 %28, 134283264
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %32 = getelementptr inbounds ptr, ptr %31, i64 %15
  br i1 %30, label %34, label %33

33:                                               ; preds = %26
  store ptr @PL_sv_yes, ptr %32, align 8, !tbaa !29
  br label %110

34:                                               ; preds = %26
  store ptr @PL_sv_no, ptr %32, align 8, !tbaa !29
  br label %110

35:                                               ; preds = %23
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %37 = getelementptr ptr, ptr %36, i64 %8
  %38 = getelementptr ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !29
  %40 = icmp eq ptr %39, null
  br i1 %40, label %101, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !5
  %44 = and i32 %43, 2097152
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %39, i32 noundef 2) #11
  br i1 %47, label %95, label %101

48:                                               ; preds = %41
  %49 = and i32 %43, 65280
  %50 = icmp ne i32 %49, 0
  %51 = and i32 %43, 255
  %52 = icmp eq i32 %51, 8
  %53 = or i1 %50, %52
  %54 = and i32 %43, 16777471
  %55 = icmp eq i32 %54, 16777226
  %56 = or i1 %55, %53
  br i1 %56, label %57, label %101

57:                                               ; preds = %48
  %58 = and i32 %43, 1024
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %39, align 8, !tbaa !11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %101, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.xpv, ptr %61, i64 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !12
  %66 = icmp ugt i64 %65, 1
  br i1 %66, label %95, label %67

67:                                               ; preds = %63
  %68 = icmp eq i64 %65, 0
  br i1 %68, label %101, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !16
  %72 = load i8, ptr %71, align 1, !tbaa !16
  %73 = icmp eq i8 %72, 48
  br i1 %73, label %101, label %95

74:                                               ; preds = %57
  %75 = and i32 %43, 768
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %74
  %78 = and i32 %43, 256
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %39, align 8, !tbaa !11
  %82 = getelementptr inbounds %struct.xpviv, ptr %81, i64 0, i32 4
  %83 = load i64, ptr %82, align 8, !tbaa !16
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80, %77
  %86 = and i32 %43, 512
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %39, align 8, !tbaa !11
  %90 = getelementptr inbounds %struct.xpvnv, ptr %89, i64 0, i32 5
  %91 = load double, ptr %90, align 8, !tbaa !16
  %92 = fcmp une double %91, 0.000000e+00
  br i1 %92, label %95, label %101

93:                                               ; preds = %74
  %94 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %39, i32 noundef 0) #11
  br i1 %94, label %95, label %101

95:                                               ; preds = %93, %88, %80, %69, %63, %46
  %96 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !5
  %98 = or i32 %97, 134217728
  store i32 %98, ptr %96, align 4, !tbaa !5
  %99 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %100 = getelementptr inbounds ptr, ptr %99, i64 %15
  store ptr @PL_sv_yes, ptr %100, align 8, !tbaa !29
  br label %110

101:                                              ; preds = %88, %48, %35, %93, %85, %69, %67, %60, %46
  %102 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !5
  %104 = and i32 %103, -134217729
  store i32 %104, ptr %102, align 4, !tbaa !5
  %105 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %106 = getelementptr inbounds ptr, ptr %105, i64 %15
  store ptr @PL_sv_no, ptr %106, align 8, !tbaa !29
  br label %110

107:                                              ; preds = %23
  %108 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %109 = getelementptr inbounds ptr, ptr %108, i64 %15
  store ptr @PL_sv_undef, ptr %109, align 8, !tbaa !29
  br label %110

110:                                              ; preds = %107, %101, %95, %34, %33
  %111 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %112 = getelementptr inbounds ptr, ptr %111, i64 %15
  store ptr %112, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_constant__make_const(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds ptr, ptr %6, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !29
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = and i32 %17, 2048
  %19 = icmp eq i32 %18, 0
  %20 = and i64 %12, 34359738360
  %21 = icmp ne i64 %20, 8
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.11) #12
  br label %24

24:                                               ; preds = %1, %23
  %25 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !5
  %29 = or i32 %28, 134283264
  store i32 %29, ptr %27, align 4, !tbaa !5
  %30 = and i32 %28, 255
  %31 = icmp eq i32 %30, 11
  br i1 %31, label %32, label %57

32:                                               ; preds = %24
  %33 = load ptr, ptr %26, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.xpvav, ptr %33, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !49
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %57, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %39 = icmp slt i64 %35, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %38, align 8, !tbaa !16
  %42 = getelementptr inbounds ptr, ptr %41, i64 %35
  br label %43

43:                                               ; preds = %40, %53
  %44 = phi ptr [ %54, %53 ], [ %41, %40 ]
  %45 = phi ptr [ %55, %53 ], [ %42, %40 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !29
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !5
  %51 = or i32 %50, 131072
  store i32 %51, ptr %49, align 4, !tbaa !5
  %52 = load ptr, ptr %38, align 8, !tbaa !16
  br label %53

53:                                               ; preds = %43, %48
  %54 = phi ptr [ %44, %43 ], [ %52, %48 ]
  %55 = getelementptr inbounds ptr, ptr %45, i64 -1
  %56 = icmp ult ptr %55, %54
  br i1 %56, label %57, label %43, !llvm.loop !51

57:                                               ; preds = %53, %37, %24, %32
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %59 = getelementptr inbounds ptr, ptr %58, i64 %13
  %60 = getelementptr inbounds ptr, ptr %59, i64 -1
  store ptr %60, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_Internals_SvREFCNT(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = add i32 %14, -3
  %19 = icmp ult i32 %18, -2
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !5
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1, %20
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = icmp eq i32 %14, 2
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %32 = getelementptr ptr, ptr %31, i64 %8
  %33 = getelementptr ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !29
  %35 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !5
  %37 = and i32 %36, -2145386240
  %38 = icmp eq i32 %37, -2147483392
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load ptr, ptr %34, align 8, !tbaa !11
  %41 = getelementptr inbounds %struct.xpvuv, ptr %40, i64 0, i32 4
  %42 = load i64, ptr %41, align 8, !tbaa !16
  br label %45

43:                                               ; preds = %30
  %44 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %34, i32 noundef 2) #11
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i64 [ %42, %39 ], [ %44, %43 ]
  %47 = trunc i64 %46 to i32
  %48 = add i32 %47, 1
  %49 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  store i32 %48, ptr %49, align 8, !tbaa !53
  br label %54

50:                                               ; preds = %26
  %51 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !53
  %53 = add i32 %52, -1
  br label %54

54:                                               ; preds = %50, %45
  %55 = phi i32 [ %47, %45 ], [ %53, %50 ]
  %56 = zext i32 %55 to i64
  %57 = tail call ptr @Perl_newSVuv(i64 noundef %56) #11
  %58 = tail call ptr @Perl_sv_2mortal(ptr noundef %57) #11
  %59 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %60 = getelementptr inbounds ptr, ptr %59, i64 %15
  store ptr %58, ptr %60, align 8, !tbaa !29
  %61 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %62 = getelementptr inbounds ptr, ptr %61, i64 %15
  store ptr %62, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_Internals_hv_clear_placehold(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = and i32 %20, 2048
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14, %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.13) #12
  br label %30

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  tail call void @Perl_hv_clear_placeholders(ptr noundef %26) #11
  %27 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %28 = getelementptr inbounds ptr, ptr %27, i64 %16
  %29 = getelementptr inbounds ptr, ptr %28, i64 -1
  store ptr %29, ptr @PL_stack_sp, align 8, !tbaa !29
  br label %30

30:                                               ; preds = %24, %23
  ret void
}

; Function Attrs: optsize
declare void @Perl_hv_clear_placeholders(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_PerlIO_get_layers(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %6 = load i32, ptr %4, align 4, !tbaa !33
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.14) #12
  br label %21

21:                                               ; preds = %1, %20
  %22 = icmp sgt i32 %15, 1
  br i1 %22, label %23, label %271

23:                                               ; preds = %21
  %24 = getelementptr inbounds ptr, ptr %10, i64 2
  %25 = icmp ugt ptr %24, %3
  br i1 %25, label %264, label %26

26:                                               ; preds = %23, %254
  %27 = phi ptr [ %257, %254 ], [ %24, %23 ]
  %28 = phi i8 [ %256, %254 ], [ 1, %23 ]
  %29 = phi i8 [ %255, %254 ], [ 0, %23 ]
  %30 = phi ptr [ %27, %254 ], [ %10, %23 ]
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %32 = load ptr, ptr %27, align 8, !tbaa !29
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !5
  %35 = and i32 %34, 2098176
  %36 = icmp eq i32 %35, 1024
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load ptr, ptr %32, align 8, !tbaa !11
  %39 = getelementptr inbounds %struct.xpv, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !12
  store i64 %40, ptr %2, align 8, !tbaa !15
  %41 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !16
  br label %45

43:                                               ; preds = %26
  %44 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %32, ptr noundef nonnull %2, i32 noundef 34) #11
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi ptr [ %42, %37 ], [ %44, %43 ]
  %47 = load i8, ptr %46, align 1, !tbaa !16
  switch i8 %47, label %253 [
    i8 105, label %48
    i8 111, label %116
    i8 100, label %185
  ]

48:                                               ; preds = %45
  %49 = load i64, ptr %2, align 8, !tbaa !15
  %50 = icmp eq i64 %49, 5
  br i1 %50, label %51, label %253

51:                                               ; preds = %48
  %52 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %46, ptr noundef nonnull dereferenceable(5) @.str.15, i64 5)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %253

54:                                               ; preds = %51
  %55 = load ptr, ptr %31, align 8, !tbaa !29
  %56 = icmp eq ptr %55, null
  br i1 %56, label %113, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !5
  %60 = and i32 %59, 2097152
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %55, i32 noundef 2) #11
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
  %77 = load ptr, ptr %55, align 8, !tbaa !11
  %78 = icmp eq ptr %77, null
  br i1 %78, label %113, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.xpv, ptr %77, i64 0, i32 2
  %81 = load i64, ptr %80, align 8, !tbaa !12
  %82 = icmp ugt i64 %81, 1
  br i1 %82, label %113, label %83

83:                                               ; preds = %79
  %84 = icmp eq i64 %81, 0
  br i1 %84, label %113, label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !16
  %88 = load i8, ptr %87, align 1, !tbaa !16
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
  %97 = load ptr, ptr %55, align 8, !tbaa !11
  %98 = getelementptr inbounds %struct.xpviv, ptr %97, i64 0, i32 4
  %99 = load i64, ptr %98, align 8, !tbaa !16
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96, %93
  %102 = and i32 %59, 512
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %55, align 8, !tbaa !11
  %106 = getelementptr inbounds %struct.xpvnv, ptr %105, i64 0, i32 5
  %107 = load double, ptr %106, align 8, !tbaa !16
  %108 = fcmp uno double %107, 0.000000e+00
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = fcmp une double %107, 0.000000e+00
  br label %113

111:                                              ; preds = %90
  %112 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %55, i32 noundef 0) #11
  br label %113

113:                                              ; preds = %62, %111, %64, %79, %85, %83, %76, %101, %109, %104, %96, %54
  %114 = phi i1 [ false, %54 ], [ %63, %62 ], [ %112, %111 ], [ false, %64 ], [ false, %76 ], [ true, %79 ], [ false, %83 ], [ %89, %85 ], [ true, %96 ], [ false, %101 ], [ true, %104 ], [ %110, %109 ]
  %115 = zext i1 %114 to i8
  br label %254

116:                                              ; preds = %45
  %117 = load i64, ptr %2, align 8, !tbaa !15
  %118 = icmp eq i64 %117, 6
  br i1 %118, label %119, label %253

119:                                              ; preds = %116
  %120 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %46, ptr noundef nonnull dereferenceable(6) @.str.16, i64 6)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %253

122:                                              ; preds = %119
  %123 = load ptr, ptr %31, align 8, !tbaa !29
  %124 = icmp eq ptr %123, null
  br i1 %124, label %181, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !5
  %128 = and i32 %127, 2097152
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %125
  %131 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %123, i32 noundef 2) #11
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
  %145 = load ptr, ptr %123, align 8, !tbaa !11
  %146 = icmp eq ptr %145, null
  br i1 %146, label %181, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.xpv, ptr %145, i64 0, i32 2
  %149 = load i64, ptr %148, align 8, !tbaa !12
  %150 = icmp ugt i64 %149, 1
  br i1 %150, label %181, label %151

151:                                              ; preds = %147
  %152 = icmp eq i64 %149, 0
  br i1 %152, label %181, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !16
  %156 = load i8, ptr %155, align 1, !tbaa !16
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
  %165 = load ptr, ptr %123, align 8, !tbaa !11
  %166 = getelementptr inbounds %struct.xpviv, ptr %165, i64 0, i32 4
  %167 = load i64, ptr %166, align 8, !tbaa !16
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %164, %161
  %170 = and i32 %127, 512
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %169
  %173 = load ptr, ptr %123, align 8, !tbaa !11
  %174 = getelementptr inbounds %struct.xpvnv, ptr %173, i64 0, i32 5
  %175 = load double, ptr %174, align 8, !tbaa !16
  %176 = fcmp uno double %175, 0.000000e+00
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = fcmp une double %175, 0.000000e+00
  br label %181

179:                                              ; preds = %158
  %180 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %123, i32 noundef 0) #11
  br label %181

181:                                              ; preds = %130, %179, %132, %147, %153, %151, %144, %169, %177, %172, %164, %122
  %182 = phi i1 [ false, %122 ], [ %131, %130 ], [ %180, %179 ], [ false, %132 ], [ false, %144 ], [ true, %147 ], [ false, %151 ], [ %157, %153 ], [ true, %164 ], [ false, %169 ], [ true, %172 ], [ %178, %177 ]
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i8
  br label %254

185:                                              ; preds = %45
  %186 = load i64, ptr %2, align 8, !tbaa !15
  %187 = icmp eq i64 %186, 7
  br i1 %187, label %188, label %253

188:                                              ; preds = %185
  %189 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %46, ptr noundef nonnull dereferenceable(7) @.str.17, i64 7)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %253

191:                                              ; preds = %188
  %192 = load ptr, ptr %31, align 8, !tbaa !29
  %193 = icmp eq ptr %192, null
  br i1 %193, label %250, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 2
  %196 = load i32, ptr %195, align 4, !tbaa !5
  %197 = and i32 %196, 2097152
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %194
  %200 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %192, i32 noundef 2) #11
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
  %214 = load ptr, ptr %192, align 8, !tbaa !11
  %215 = icmp eq ptr %214, null
  br i1 %215, label %250, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.xpv, ptr %214, i64 0, i32 2
  %218 = load i64, ptr %217, align 8, !tbaa !12
  %219 = icmp ugt i64 %218, 1
  br i1 %219, label %250, label %220

220:                                              ; preds = %216
  %221 = icmp eq i64 %218, 0
  br i1 %221, label %250, label %222

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !16
  %225 = load i8, ptr %224, align 1, !tbaa !16
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
  %234 = load ptr, ptr %192, align 8, !tbaa !11
  %235 = getelementptr inbounds %struct.xpviv, ptr %234, i64 0, i32 4
  %236 = load i64, ptr %235, align 8, !tbaa !16
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %233, %230
  %239 = and i32 %196, 512
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %250, label %241

241:                                              ; preds = %238
  %242 = load ptr, ptr %192, align 8, !tbaa !11
  %243 = getelementptr inbounds %struct.xpvnv, ptr %242, i64 0, i32 5
  %244 = load double, ptr %243, align 8, !tbaa !16
  %245 = fcmp uno double %244, 0.000000e+00
  br i1 %245, label %250, label %246

246:                                              ; preds = %241
  %247 = fcmp une double %244, 0.000000e+00
  br label %250

248:                                              ; preds = %227
  %249 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %192, i32 noundef 0) #11
  br label %250

250:                                              ; preds = %199, %248, %201, %216, %222, %220, %213, %238, %246, %241, %233, %191
  %251 = phi i1 [ false, %191 ], [ %200, %199 ], [ %249, %248 ], [ false, %201 ], [ false, %213 ], [ true, %216 ], [ false, %220 ], [ %226, %222 ], [ true, %233 ], [ false, %238 ], [ true, %241 ], [ %247, %246 ]
  %252 = zext i1 %251 to i8
  br label %254

253:                                              ; preds = %45, %185, %188, %116, %119, %48, %51
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18, ptr noundef nonnull %46) #11
  br label %254

254:                                              ; preds = %253, %250, %181, %113
  %255 = phi i8 [ %29, %253 ], [ %252, %250 ], [ %29, %181 ], [ %29, %113 ]
  %256 = phi i8 [ %28, %253 ], [ %28, %250 ], [ %184, %181 ], [ %115, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %257 = getelementptr inbounds ptr, ptr %27, i64 2
  %258 = icmp ugt ptr %257, %3
  br i1 %258, label %259, label %26, !llvm.loop !54

259:                                              ; preds = %254
  %260 = and i8 %256, 1
  %261 = icmp eq i8 %260, 0
  %262 = and i8 %255, 1
  %263 = icmp eq i8 %262, 0
  br label %264

264:                                              ; preds = %259, %23
  %265 = phi i1 [ true, %23 ], [ %263, %259 ]
  %266 = phi i1 [ false, %23 ], [ %261, %259 ]
  %267 = add nuw nsw i64 %14, 4294967295
  %268 = and i64 %267, 4294967295
  %269 = sub nsw i64 0, %268
  %270 = getelementptr inbounds ptr, ptr %3, i64 %269
  br label %271

271:                                              ; preds = %264, %21
  %272 = phi i1 [ %265, %264 ], [ true, %21 ]
  %273 = phi i1 [ %266, %264 ], [ false, %21 ]
  %274 = phi ptr [ %270, %264 ], [ %3, %21 ]
  %275 = getelementptr inbounds ptr, ptr %274, i64 -1
  %276 = load ptr, ptr %274, align 8, !tbaa !29
  %277 = getelementptr inbounds %struct.sv, ptr %276, i64 0, i32 2
  %278 = load i32, ptr %277, align 4, !tbaa !5
  %279 = and i32 %278, 2097152
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %271
  %282 = call i32 @Perl_mg_get(ptr noundef nonnull %276) #11
  %283 = load i32, ptr %277, align 4, !tbaa !5
  br label %284

284:                                              ; preds = %271, %281
  %285 = phi i32 [ %278, %271 ], [ %283, %281 ]
  %286 = and i32 %285, 49152
  %287 = icmp eq i32 %286, 32768
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = and i32 %285, 255
  %290 = add nsw i32 %289, -9
  %291 = icmp ult i32 %290, 2
  br i1 %291, label %332, label %292

292:                                              ; preds = %288, %284
  %293 = and i32 %285, 2048
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %319, label %295

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.sv, ptr %276, i64 0, i32 3
  %297 = load ptr, ptr %296, align 8, !tbaa !16
  %298 = getelementptr inbounds %struct.sv, ptr %297, i64 0, i32 2
  %299 = load i32, ptr %298, align 4, !tbaa !5
  %300 = and i32 %299, 255
  %301 = icmp ult i32 %300, 11
  br i1 %301, label %302, label %319

302:                                              ; preds = %295
  %303 = and i32 %299, 2097152
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %310, label %305

305:                                              ; preds = %302
  %306 = call i32 @Perl_mg_get(ptr noundef nonnull %297) #11
  %307 = load ptr, ptr %296, align 8, !tbaa !16
  %308 = getelementptr inbounds %struct.sv, ptr %307, i64 0, i32 2
  %309 = load i32, ptr %308, align 4, !tbaa !5
  br label %310

310:                                              ; preds = %302, %305
  %311 = phi i32 [ %299, %302 ], [ %309, %305 ]
  %312 = phi ptr [ %297, %302 ], [ %307, %305 ]
  %313 = and i32 %311, 49152
  %314 = icmp eq i32 %313, 32768
  br i1 %314, label %315, label %319

315:                                              ; preds = %310
  %316 = and i32 %311, 255
  %317 = add nsw i32 %316, -9
  %318 = icmp ult i32 %317, 2
  br i1 %318, label %332, label %319

319:                                              ; preds = %310, %295, %292, %315
  %320 = load i32, ptr %277, align 4, !tbaa !5
  %321 = and i32 %320, 2048
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %482

323:                                              ; preds = %319
  %324 = call ptr @Perl_gv_fetchsv(ptr noundef nonnull %276, i32 noundef 2048, i32 noundef 15) #11
  %325 = icmp eq ptr %324, null
  br i1 %325, label %482, label %326

326:                                              ; preds = %323
  %327 = getelementptr inbounds %struct.sv, ptr %324, i64 0, i32 2
  %328 = load i32, ptr %327, align 4, !tbaa !5
  %329 = and i32 %328, 255
  %330 = add nsw i32 %329, -9
  %331 = icmp ult i32 %330, 2
  br i1 %331, label %332, label %482

332:                                              ; preds = %288, %315, %326
  %333 = phi ptr [ %324, %326 ], [ %276, %288 ], [ %312, %315 ]
  %334 = getelementptr inbounds %struct.gv, ptr %333, i64 0, i32 3
  %335 = load ptr, ptr %334, align 8, !tbaa !16
  %336 = icmp eq ptr %335, null
  br i1 %336, label %482, label %337

337:                                              ; preds = %332
  %338 = getelementptr inbounds %struct.gp, ptr %335, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !40
  %340 = icmp eq ptr %339, null
  br i1 %340, label %482, label %341

341:                                              ; preds = %337
  br i1 %273, label %344, label %342

342:                                              ; preds = %341
  %343 = getelementptr inbounds %struct.io, ptr %339, i64 0, i32 3
  br label %347

344:                                              ; preds = %341
  %345 = load ptr, ptr %339, align 8, !tbaa !42
  %346 = getelementptr inbounds %struct.xpvio, ptr %345, i64 0, i32 5
  br label %347

347:                                              ; preds = %344, %342
  %348 = phi ptr [ %343, %342 ], [ %346, %344 ]
  %349 = load ptr, ptr %348, align 8, !tbaa !16
  %350 = call ptr @PerlIO_get_layers(ptr noundef %349) #11
  %351 = call fastcc i64 @S_av_top_index(ptr noundef %350) #12
  %352 = icmp sgt i64 %351, -1
  br i1 %352, label %353, label %476

353:                                              ; preds = %347, %471
  %354 = phi ptr [ %473, %471 ], [ %275, %347 ]
  %355 = phi i64 [ %474, %471 ], [ %351, %347 ]
  %356 = phi i64 [ %472, %471 ], [ 0, %347 ]
  %357 = add nsw i64 %355, -2
  %358 = call ptr @Perl_av_fetch(ptr noundef %350, i64 noundef %357, i32 noundef 0) #11
  %359 = add nsw i64 %355, -1
  %360 = call ptr @Perl_av_fetch(ptr noundef %350, i64 noundef %359, i32 noundef 0) #11
  %361 = call ptr @Perl_av_fetch(ptr noundef %350, i64 noundef %355, i32 noundef 0) #11
  %362 = icmp eq ptr %358, null
  br i1 %362, label %371, label %363

363:                                              ; preds = %353
  %364 = load ptr, ptr %358, align 8, !tbaa !29
  %365 = icmp eq ptr %364, null
  br i1 %365, label %371, label %366

366:                                              ; preds = %363
  %367 = getelementptr inbounds %struct.sv, ptr %364, i64 0, i32 2
  %368 = load i32, ptr %367, align 4, !tbaa !5
  %369 = and i32 %368, 1024
  %370 = icmp ne i32 %369, 0
  br label %371

371:                                              ; preds = %366, %363, %353
  %372 = phi i1 [ false, %363 ], [ false, %353 ], [ %370, %366 ]
  %373 = icmp eq ptr %360, null
  br i1 %373, label %382, label %374

374:                                              ; preds = %371
  %375 = load ptr, ptr %360, align 8, !tbaa !29
  %376 = icmp eq ptr %375, null
  br i1 %376, label %382, label %377

377:                                              ; preds = %374
  %378 = getelementptr inbounds %struct.sv, ptr %375, i64 0, i32 2
  %379 = load i32, ptr %378, align 4, !tbaa !5
  %380 = and i32 %379, 1024
  %381 = icmp ne i32 %380, 0
  br label %382

382:                                              ; preds = %377, %374, %371
  %383 = phi i1 [ false, %374 ], [ false, %371 ], [ %381, %377 ]
  %384 = icmp eq ptr %361, null
  br i1 %384, label %393, label %385

385:                                              ; preds = %382
  %386 = load ptr, ptr %361, align 8, !tbaa !29
  %387 = icmp eq ptr %386, null
  br i1 %387, label %393, label %388

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.sv, ptr %386, i64 0, i32 2
  %390 = load i32, ptr %389, align 4, !tbaa !5
  %391 = and i32 %390, 256
  %392 = icmp ne i32 %391, 0
  br label %393

393:                                              ; preds = %388, %385, %382
  %394 = phi i1 [ false, %385 ], [ false, %382 ], [ %392, %388 ]
  %395 = load ptr, ptr @PL_stack_max, align 8, !tbaa !29
  %396 = ptrtoint ptr %395 to i64
  %397 = ptrtoint ptr %354 to i64
  %398 = sub i64 %396, %397
  %399 = icmp slt i64 %398, 24
  br i1 %399, label %400, label %402

400:                                              ; preds = %393
  %401 = call ptr @Perl_stack_grow(ptr noundef nonnull %354, ptr noundef nonnull %354, i64 noundef 3) #11
  br label %402

402:                                              ; preds = %393, %400
  %403 = phi ptr [ %401, %400 ], [ %354, %393 ]
  br i1 %272, label %439, label %404

404:                                              ; preds = %402
  br i1 %372, label %405, label %411

405:                                              ; preds = %404
  %406 = load ptr, ptr %358, align 8, !tbaa !29
  %407 = getelementptr inbounds %struct.sv, ptr %406, i64 0, i32 1
  %408 = load i32, ptr %407, align 8, !tbaa !53
  %409 = add i32 %408, 1
  store i32 %409, ptr %407, align 8, !tbaa !53
  %410 = call ptr @Perl_sv_2mortal(ptr noundef %406) #11
  br label %411

411:                                              ; preds = %404, %405
  %412 = phi ptr [ %410, %405 ], [ @PL_sv_undef, %404 ]
  %413 = getelementptr inbounds ptr, ptr %403, i64 1
  store ptr %412, ptr %413, align 8, !tbaa !29
  br i1 %383, label %414, label %426

414:                                              ; preds = %411
  %415 = load ptr, ptr %360, align 8, !tbaa !29
  %416 = getelementptr inbounds %struct.sv, ptr %415, i64 0, i32 3
  %417 = load ptr, ptr %416, align 8, !tbaa !16
  %418 = load ptr, ptr %415, align 8, !tbaa !11
  %419 = getelementptr inbounds %struct.xpv, ptr %418, i64 0, i32 2
  %420 = load i64, ptr %419, align 8, !tbaa !12
  %421 = getelementptr inbounds %struct.sv, ptr %415, i64 0, i32 2
  %422 = load i32, ptr %421, align 4, !tbaa !5
  %423 = and i32 %422, 536870912
  %424 = or disjoint i32 %423, 524288
  %425 = call ptr @Perl_newSVpvn_flags(ptr noundef %417, i64 noundef %420, i32 noundef %424) #11
  br label %426

426:                                              ; preds = %411, %414
  %427 = phi ptr [ %425, %414 ], [ @PL_sv_undef, %411 ]
  %428 = getelementptr inbounds ptr, ptr %403, i64 2
  store ptr %427, ptr %428, align 8, !tbaa !29
  br i1 %394, label %429, label %435

429:                                              ; preds = %426
  %430 = load ptr, ptr %361, align 8, !tbaa !29
  %431 = getelementptr inbounds %struct.sv, ptr %430, i64 0, i32 1
  %432 = load i32, ptr %431, align 8, !tbaa !53
  %433 = add i32 %432, 1
  store i32 %433, ptr %431, align 8, !tbaa !53
  %434 = call ptr @Perl_sv_2mortal(ptr noundef %430) #11
  br label %435

435:                                              ; preds = %426, %429
  %436 = phi ptr [ %434, %429 ], [ @PL_sv_undef, %426 ]
  %437 = getelementptr inbounds ptr, ptr %403, i64 3
  store ptr %436, ptr %437, align 8, !tbaa !29
  %438 = add nsw i64 %356, 3
  br label %471

439:                                              ; preds = %402
  %440 = select i1 %372, i1 %383, i1 false
  br i1 %440, label %441, label %447

441:                                              ; preds = %439
  %442 = load ptr, ptr %358, align 8, !tbaa !29
  %443 = load ptr, ptr %360, align 8, !tbaa !29
  %444 = call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.19, ptr noundef %442, ptr noundef %443) #11
  %445 = call ptr @Perl_sv_2mortal(ptr noundef %444) #11
  %446 = getelementptr inbounds ptr, ptr %403, i64 1
  store ptr %445, ptr %446, align 8, !tbaa !29
  br label %457

447:                                              ; preds = %439
  br i1 %372, label %448, label %455

448:                                              ; preds = %447
  %449 = load ptr, ptr %358, align 8, !tbaa !29
  %450 = getelementptr inbounds %struct.sv, ptr %449, i64 0, i32 1
  %451 = load i32, ptr %450, align 8, !tbaa !53
  %452 = add i32 %451, 1
  store i32 %452, ptr %450, align 8, !tbaa !53
  %453 = call ptr @Perl_sv_2mortal(ptr noundef %449) #11
  %454 = getelementptr inbounds ptr, ptr %403, i64 1
  store ptr %453, ptr %454, align 8, !tbaa !29
  br label %457

455:                                              ; preds = %447
  %456 = getelementptr inbounds ptr, ptr %403, i64 1
  store ptr @PL_sv_undef, ptr %456, align 8, !tbaa !29
  br label %457

457:                                              ; preds = %448, %455, %441
  %458 = phi ptr [ %446, %441 ], [ %454, %448 ], [ %456, %455 ]
  %459 = add nsw i64 %356, 1
  br i1 %394, label %460, label %471

460:                                              ; preds = %457
  %461 = load ptr, ptr %361, align 8, !tbaa !29
  %462 = load ptr, ptr %461, align 8, !tbaa !11
  %463 = getelementptr inbounds %struct.xpviv, ptr %462, i64 0, i32 4
  %464 = load i64, ptr %463, align 8, !tbaa !16
  %465 = and i64 %464, 32768
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %471, label %467

467:                                              ; preds = %460
  %468 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.20, i64 noundef 4, i32 noundef 524288) #11
  %469 = getelementptr inbounds ptr, ptr %403, i64 2
  store ptr %468, ptr %469, align 8, !tbaa !29
  %470 = add nsw i64 %356, 2
  br label %471

471:                                              ; preds = %460, %467, %457, %435
  %472 = phi i64 [ %438, %435 ], [ %459, %457 ], [ %470, %467 ], [ %459, %460 ]
  %473 = phi ptr [ %437, %435 ], [ %458, %457 ], [ %469, %467 ], [ %458, %460 ]
  %474 = add nsw i64 %355, -3
  %475 = icmp sgt i64 %355, 2
  br i1 %475, label %353, label %476, !llvm.loop !55

476:                                              ; preds = %471, %347
  %477 = phi i64 [ 0, %347 ], [ %472, %471 ]
  call fastcc void @S_SvREFCNT_dec(ptr noundef %350) #12
  %478 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %479 = sext i32 %8 to i64
  %480 = getelementptr inbounds ptr, ptr %478, i64 %479
  %481 = getelementptr ptr, ptr %480, i64 %477
  br label %486

482:                                              ; preds = %326, %332, %319, %337, %323
  %483 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %484 = sext i32 %8 to i64
  %485 = getelementptr inbounds ptr, ptr %483, i64 %484
  br label %486

486:                                              ; preds = %476, %482
  %487 = phi ptr [ %481, %476 ], [ %485, %482 ]
  %488 = getelementptr inbounds ptr, ptr %487, i64 -1
  store ptr %488, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare ptr @PerlIO_get_layers(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_av_top_index(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #11
  %8 = sext i32 %7 to i64
  br label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !49
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i64 [ %8, %6 ], [ %12, %9 ]
  ret i64 %14
}

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !53
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #11
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_re_is_regexp(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8) #12
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = add nsw i32 %5, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = tail call ptr @Perl_get_re_arg(ptr noundef %21) #11
  %23 = icmp eq ptr %22, null
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %25 = getelementptr inbounds ptr, ptr %24, i64 %19
  %26 = select i1 %23, ptr @PL_sv_no, ptr @PL_sv_yes
  store ptr %26, ptr %25, align 8, !tbaa !29
  %27 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %28 = getelementptr inbounds ptr, ptr %27, i64 %19
  store ptr %28, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_get_re_arg(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_re_regnames_count(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_curpm, align 8, !tbaa !29
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  %9 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %10 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %11 = getelementptr inbounds i32, ptr %10, i64 -1
  store ptr %11, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %12 = load i32, ptr %10, align 4, !tbaa !33
  %13 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #12
  br label %23

23:                                               ; preds = %22, %7
  %24 = shl i64 %19, 29
  %25 = ashr i64 %24, 32
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds ptr, ptr %9, i64 %26
  store ptr %27, ptr @PL_stack_sp, align 8, !tbaa !29
  %28 = icmp eq ptr %8, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %31 = sext i32 %14 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  store ptr @PL_sv_undef, ptr %32, align 8, !tbaa !29
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %34 = getelementptr inbounds ptr, ptr %33, i64 %31
  br label %52

35:                                               ; preds = %23
  %36 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %8) #12
  %37 = getelementptr inbounds %struct.regexp, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !60
  %39 = getelementptr inbounds %struct.regexp_engine, ptr %38, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = tail call ptr %40(ptr noundef nonnull %8, ptr noundef null, ptr noundef null, i32 noundef 4096) #11
  %42 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %43 = icmp eq ptr %41, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %35
  %45 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %41) #11
  br label %46

46:                                               ; preds = %35, %44
  %47 = phi ptr [ %45, %44 ], [ @PL_sv_undef, %35 ]
  %48 = getelementptr inbounds ptr, ptr %42, i64 1
  store ptr %47, ptr %48, align 8, !tbaa !29
  %49 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %50 = sext i32 %14 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  br label %52

52:                                               ; preds = %46, %29
  %53 = phi ptr [ %34, %29 ], [ %51, %46 ]
  store ptr %53, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @S_ReANY(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.p5rx, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_re_regname(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.22) #12
  br label %18

18:                                               ; preds = %1, %17
  %19 = shl i64 %12, 29
  %20 = ashr i64 %19, 32
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  store ptr %22, ptr @PL_stack_sp, align 8, !tbaa !29
  %23 = load ptr, ptr @PL_curpm, align 8, !tbaa !29
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.pmop, ptr %23, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %18, %25
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %31 = sext i32 %7 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  store ptr @PL_sv_undef, ptr %32, align 8, !tbaa !29
  br label %115

33:                                               ; preds = %25
  %34 = icmp eq i32 %14, 2
  br i1 %34, label %35, label %95

35:                                               ; preds = %33
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %37 = getelementptr ptr, ptr %36, i64 %8
  %38 = getelementptr ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !29
  %40 = icmp eq ptr %39, null
  br i1 %40, label %95, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !5
  %44 = and i32 %43, 2097152
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %39, i32 noundef 2) #11
  br i1 %47, label %96, label %95

48:                                               ; preds = %41
  %49 = and i32 %43, 65280
  %50 = icmp ne i32 %49, 0
  %51 = and i32 %43, 255
  %52 = icmp eq i32 %51, 8
  %53 = or i1 %50, %52
  %54 = and i32 %43, 16777471
  %55 = icmp eq i32 %54, 16777226
  %56 = or i1 %55, %53
  br i1 %56, label %57, label %95

57:                                               ; preds = %48
  %58 = and i32 %43, 1024
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %39, align 8, !tbaa !11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %95, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.xpv, ptr %61, i64 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !12
  %66 = icmp ugt i64 %65, 1
  br i1 %66, label %96, label %67

67:                                               ; preds = %63
  %68 = icmp eq i64 %65, 0
  br i1 %68, label %95, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !16
  %72 = load i8, ptr %71, align 1, !tbaa !16
  %73 = icmp eq i8 %72, 48
  br i1 %73, label %95, label %96

74:                                               ; preds = %57
  %75 = and i32 %43, 768
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %74
  %78 = and i32 %43, 256
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %39, align 8, !tbaa !11
  %82 = getelementptr inbounds %struct.xpviv, ptr %81, i64 0, i32 4
  %83 = load i64, ptr %82, align 8, !tbaa !16
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %80, %77
  %86 = and i32 %43, 512
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %39, align 8, !tbaa !11
  %90 = getelementptr inbounds %struct.xpvnv, ptr %89, i64 0, i32 5
  %91 = load double, ptr %90, align 8, !tbaa !16
  %92 = fcmp une double %91, 0.000000e+00
  br i1 %92, label %96, label %95

93:                                               ; preds = %74
  %94 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %39, i32 noundef 0) #11
  br i1 %94, label %96, label %95

95:                                               ; preds = %88, %48, %35, %93, %85, %69, %67, %60, %46, %33
  br label %96

96:                                               ; preds = %46, %63, %69, %80, %88, %93, %95
  %97 = phi i32 [ 1281, %95 ], [ 1537, %93 ], [ 1537, %88 ], [ 1537, %80 ], [ 1537, %69 ], [ 1537, %63 ], [ 1537, %46 ]
  %98 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %27) #12
  %99 = getelementptr inbounds %struct.regexp, ptr %98, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !60
  %101 = getelementptr inbounds %struct.regexp_engine, ptr %100, i64 0, i32 8
  %102 = load ptr, ptr %101, align 8, !tbaa !62
  %103 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %104 = sext i32 %7 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !29
  %107 = tail call ptr %102(ptr noundef nonnull %27, ptr noundef %106, ptr noundef null, i32 noundef %97) #11
  %108 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %109 = icmp eq ptr %107, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %96
  %111 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %107) #11
  br label %112

112:                                              ; preds = %96, %110
  %113 = phi ptr [ %111, %110 ], [ @PL_sv_undef, %96 ]
  %114 = getelementptr inbounds ptr, ptr %108, i64 1
  store ptr %113, ptr %114, align 8, !tbaa !29
  br label %115

115:                                              ; preds = %112, %29
  %116 = phi i64 [ %104, %112 ], [ %31, %29 ]
  %117 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %118 = getelementptr inbounds ptr, ptr %117, i64 %116
  store ptr %118, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_re_regnames(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.23) #12
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_curpm, align 8, !tbaa !29
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.pmop, ptr %18, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %17, %20
  %25 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %26 = sext i32 %7 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  store ptr @PL_sv_undef, ptr %27, align 8, !tbaa !29
  %28 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %29 = getelementptr inbounds ptr, ptr %28, i64 %26
  br label %146

30:                                               ; preds = %20
  %31 = icmp eq i32 %14, 1
  br i1 %31, label %32, label %92

32:                                               ; preds = %30
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %34 = sext i32 %7 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !29
  %37 = icmp eq ptr %36, null
  br i1 %37, label %92, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !5
  %41 = and i32 %40, 2097152
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %36, i32 noundef 2) #11
  br i1 %44, label %93, label %92

45:                                               ; preds = %38
  %46 = and i32 %40, 65280
  %47 = icmp ne i32 %46, 0
  %48 = and i32 %40, 255
  %49 = icmp eq i32 %48, 8
  %50 = or i1 %47, %49
  %51 = and i32 %40, 16777471
  %52 = icmp eq i32 %51, 16777226
  %53 = or i1 %52, %50
  br i1 %53, label %54, label %92

54:                                               ; preds = %45
  %55 = and i32 %40, 1024
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %36, align 8, !tbaa !11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %92, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.xpv, ptr %58, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !12
  %63 = icmp ugt i64 %62, 1
  br i1 %63, label %93, label %64

64:                                               ; preds = %60
  %65 = icmp eq i64 %62, 0
  br i1 %65, label %92, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !16
  %69 = load i8, ptr %68, align 1, !tbaa !16
  %70 = icmp eq i8 %69, 48
  br i1 %70, label %92, label %93

71:                                               ; preds = %54
  %72 = and i32 %40, 768
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %71
  %75 = and i32 %40, 256
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %36, align 8, !tbaa !11
  %79 = getelementptr inbounds %struct.xpviv, ptr %78, i64 0, i32 4
  %80 = load i64, ptr %79, align 8, !tbaa !16
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77, %74
  %83 = and i32 %40, 512
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %36, align 8, !tbaa !11
  %87 = getelementptr inbounds %struct.xpvnv, ptr %86, i64 0, i32 5
  %88 = load double, ptr %87, align 8, !tbaa !16
  %89 = fcmp une double %88, 0.000000e+00
  br i1 %89, label %93, label %92

90:                                               ; preds = %71
  %91 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %36, i32 noundef 0) #11
  br i1 %91, label %93, label %92

92:                                               ; preds = %85, %45, %32, %90, %82, %66, %64, %57, %43, %30
  br label %93

93:                                               ; preds = %43, %60, %66, %77, %85, %90, %92
  %94 = phi i32 [ 2304, %92 ], [ 2560, %90 ], [ 2560, %85 ], [ 2560, %77 ], [ 2560, %66 ], [ 2560, %60 ], [ 2560, %43 ]
  %95 = shl i64 %12, 29
  %96 = ashr i64 %95, 32
  %97 = sub nsw i64 0, %96
  %98 = getelementptr inbounds ptr, ptr %2, i64 %97
  store ptr %98, ptr @PL_stack_sp, align 8, !tbaa !29
  %99 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %22) #12
  %100 = getelementptr inbounds %struct.regexp, ptr %99, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !60
  %102 = getelementptr inbounds %struct.regexp_engine, ptr %101, i64 0, i32 8
  %103 = load ptr, ptr %102, align 8, !tbaa !62
  %104 = tail call ptr %103(ptr noundef nonnull %22, ptr noundef null, ptr noundef null, i32 noundef %94) #11
  %105 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %106 = icmp eq ptr %104, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %93
  %108 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %109 = sext i32 %7 to i64
  %110 = getelementptr inbounds ptr, ptr %108, i64 %109
  store ptr @PL_sv_undef, ptr %110, align 8, !tbaa !29
  %111 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %112 = getelementptr inbounds ptr, ptr %111, i64 %109
  br label %146

113:                                              ; preds = %93
  %114 = getelementptr inbounds %struct.sv, ptr %104, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !16
  %116 = tail call fastcc i64 @S_av_top_index(ptr noundef %115) #12
  %117 = load ptr, ptr @PL_stack_max, align 8, !tbaa !29
  %118 = ptrtoint ptr %117 to i64
  %119 = ptrtoint ptr %105 to i64
  %120 = sub i64 %118, %119
  %121 = ashr exact i64 %120, 3
  %122 = icmp sgt i64 %121, %116
  br i1 %122, label %126, label %123

123:                                              ; preds = %113
  %124 = add nsw i64 %116, 1
  %125 = tail call ptr @Perl_stack_grow(ptr noundef %105, ptr noundef %105, i64 noundef %124) #11
  br label %126

126:                                              ; preds = %113, %123
  %127 = phi ptr [ %125, %123 ], [ %105, %113 ]
  %128 = icmp slt i64 %116, 0
  br i1 %128, label %144, label %129

129:                                              ; preds = %126, %135
  %130 = phi ptr [ %141, %135 ], [ %127, %126 ]
  %131 = phi i64 [ %142, %135 ], [ 0, %126 ]
  %132 = tail call ptr @Perl_av_fetch(ptr noundef %115, i64 noundef %131, i32 noundef 0) #11
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24) #11
  br label %135

135:                                              ; preds = %134, %129
  %136 = load ptr, ptr %132, align 8, !tbaa !29
  %137 = getelementptr inbounds %struct.sv, ptr %136, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !53
  %139 = add i32 %138, 1
  store i32 %139, ptr %137, align 8, !tbaa !53
  %140 = tail call ptr @Perl_sv_2mortal(ptr noundef %136) #11
  %141 = getelementptr inbounds ptr, ptr %130, i64 1
  store ptr %140, ptr %141, align 8, !tbaa !29
  %142 = add nuw i64 %131, 1
  %143 = icmp eq i64 %131, %116
  br i1 %143, label %144, label %129, !llvm.loop !64

144:                                              ; preds = %135, %126
  %145 = phi ptr [ %127, %126 ], [ %141, %135 ]
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %104) #12
  br label %146

146:                                              ; preds = %144, %107, %24
  %147 = phi ptr [ %145, %144 ], [ %112, %107 ], [ %29, %24 ]
  store ptr %147, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_re_regexp_pattern(ptr noundef %0) #0 {
  %2 = alloca [10 x i8], align 1
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %7 = load i32, ptr %5, align 4, !tbaa !33
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !29
  %16 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 5
  %17 = load i8, ptr %16, align 2, !tbaa !65
  %18 = and i8 %17, 3
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = zext nneg i8 %18 to i32
  br label %24

22:                                               ; preds = %1
  %23 = tail call i32 @Perl_block_gimme() #11
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load ptr, ptr @PL_stack_max, align 8, !tbaa !29
  %27 = ptrtoint ptr %26 to i64
  %28 = sub i64 %27, %12
  %29 = icmp slt i64 %28, 16
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = tail call ptr @Perl_stack_grow(ptr noundef %4, ptr noundef %4, i64 noundef 2) #11
  br label %32

32:                                               ; preds = %24, %30
  %33 = phi ptr [ %31, %30 ], [ %4, %24 ]
  %34 = shl i64 %14, 29
  %35 = ashr i64 %34, 32
  %36 = sub nsw i64 0, %35
  %37 = getelementptr inbounds ptr, ptr %33, i64 %36
  %38 = and i64 %14, 34359738360
  %39 = icmp eq i64 %38, 8
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.8) #12
  br label %41

41:                                               ; preds = %40, %32
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %43 = sext i32 %9 to i64
  %44 = getelementptr inbounds ptr, ptr %42, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !29
  %46 = tail call ptr @Perl_get_re_arg(ptr noundef %45) #11
  %47 = icmp eq ptr %46, null
  %48 = icmp eq i32 %25, 3
  br i1 %47, label %112, label %49

49:                                               ; preds = %41
  br i1 %48, label %50, label %106

50:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #10
  %51 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %46) #12
  %52 = getelementptr inbounds %struct.regexp, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !66
  %54 = tail call fastcc i32 @get_regex_charset(i32 noundef %53) #12, !range !67
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %57 = call fastcc ptr @get_regex_charset_name(i32 noundef %53, ptr noundef nonnull %3) #12
  %58 = load i64, ptr %3, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %57, i64 %58, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %59

59:                                               ; preds = %56, %50
  %60 = phi i64 [ %58, %56 ], [ 0, %50 ]
  %61 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %46) #12
  %62 = getelementptr inbounds %struct.regexp, ptr %61, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !66
  %64 = and i32 %63, 2047
  br label %65

65:                                               ; preds = %59, %75
  %66 = phi i8 [ 109, %59 ], [ %79, %75 ]
  %67 = phi ptr [ getelementptr inbounds ([8 x i8], ptr @.str.25, i64 0, i64 1), %59 ], [ %78, %75 ]
  %68 = phi i64 [ %60, %59 ], [ %76, %75 ]
  %69 = phi i32 [ %64, %59 ], [ %77, %75 ]
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = add i64 %68, 1
  %74 = getelementptr inbounds [10 x i8], ptr %2, i64 0, i64 %68
  store i8 %66, ptr %74, align 1, !tbaa !16
  br label %75

75:                                               ; preds = %72, %65
  %76 = phi i64 [ %73, %72 ], [ %68, %65 ]
  %77 = lshr i32 %69, 1
  %78 = getelementptr inbounds i8, ptr %67, i64 1
  %79 = load i8, ptr %67, align 1, !tbaa !16
  %80 = icmp eq ptr %67, getelementptr inbounds ([8 x i8], ptr @.str.25, i64 0, i64 7)
  br i1 %80, label %81, label %65, !llvm.loop !68

81:                                               ; preds = %75
  %82 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %46) #12
  %83 = getelementptr inbounds %struct.regexp, ptr %82, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !16
  %85 = getelementptr inbounds %struct.regexp, ptr %82, i64 0, i32 24
  %86 = load i16, ptr %85, align 8
  %87 = and i16 %86, 15
  %88 = zext nneg i16 %87 to i64
  %89 = getelementptr inbounds i8, ptr %84, i64 %88
  %90 = load ptr, ptr %46, align 8, !tbaa !69
  %91 = getelementptr inbounds %struct.xpv, ptr %90, i64 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !12
  %93 = xor i64 %88, -1
  %94 = add i64 %92, %93
  %95 = getelementptr inbounds %struct.p5rx, ptr %46, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !71
  %97 = and i32 %96, 536870912
  %98 = or disjoint i32 %97, 524288
  %99 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %89, i64 noundef %94, i32 noundef %98) #11
  %100 = getelementptr inbounds ptr, ptr %37, i64 1
  store ptr %99, ptr %100, align 8, !tbaa !29
  %101 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %2, i64 noundef %76, i32 noundef 524288) #11
  %102 = getelementptr inbounds ptr, ptr %37, i64 2
  store ptr %101, ptr %102, align 8, !tbaa !29
  %103 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %104 = getelementptr inbounds ptr, ptr %103, i64 %43
  %105 = getelementptr inbounds ptr, ptr %104, i64 1
  store ptr %105, ptr @PL_stack_sp, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #10
  br label %120

106:                                              ; preds = %49
  %107 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %46) #11
  %108 = tail call ptr @Perl_sv_2mortal(ptr noundef %107) #11
  %109 = getelementptr inbounds ptr, ptr %37, i64 1
  store ptr %108, ptr %109, align 8, !tbaa !29
  %110 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %111 = getelementptr inbounds ptr, ptr %110, i64 %43
  store ptr %111, ptr @PL_stack_sp, align 8, !tbaa !29
  br label %120

112:                                              ; preds = %41
  %113 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %114 = getelementptr inbounds ptr, ptr %113, i64 %43
  br i1 %48, label %115, label %117

115:                                              ; preds = %112
  %116 = getelementptr inbounds ptr, ptr %114, i64 -1
  store ptr %116, ptr @PL_stack_sp, align 8, !tbaa !29
  br label %120

117:                                              ; preds = %112
  store ptr @PL_sv_no, ptr %114, align 8, !tbaa !29
  %118 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %119 = getelementptr inbounds ptr, ptr %118, i64 %43
  store ptr %119, ptr @PL_stack_sp, align 8, !tbaa !29
  br label %120

120:                                              ; preds = %106, %81, %117, %115
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @get_regex_charset(i32 noundef %0) unnamed_addr #5 {
  %2 = lshr i32 %0, 7
  %3 = and i32 %2, 7
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef nonnull ptr @get_regex_charset_name(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 {
  store i64 1, ptr %1, align 8, !tbaa !15
  %3 = tail call fastcc i32 @get_regex_charset(i32 noundef %0) #12, !range !67
  switch i32 %3, label %8 [
    i32 0, label %9
    i32 1, label %4
    i32 2, label %5
    i32 3, label %6
    i32 4, label %7
  ]

4:                                                ; preds = %2
  br label %9

5:                                                ; preds = %2
  br label %9

6:                                                ; preds = %2
  br label %9

7:                                                ; preds = %2
  store i64 2, ptr %1, align 8, !tbaa !15
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %2, %8, %7, %6, %5, %4
  %10 = phi ptr [ @.str.55, %8 ], [ @.str.54, %7 ], [ @.str.53, %6 ], [ @.str.52, %5 ], [ @.str.51, %4 ], [ @.str.50, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_universal_version(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.26) #11
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %6, %1 ]
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !29
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !5
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !5
  %32 = and i32 %31, 1048576
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27) #11
  br label %35

35:                                               ; preds = %34, %27
  %36 = load ptr, ptr %29, align 8, !tbaa !11
  %37 = load ptr, ptr %36, align 8, !tbaa !17
  br label %40

38:                                               ; preds = %18
  %39 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %22, i32 noundef 0) #11
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi ptr [ %37, %35 ], [ %39, %38 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %76, label %43

43:                                               ; preds = %40
  %44 = tail call ptr @Perl_hv_common(ptr noundef nonnull %41, ptr noundef null, ptr noundef nonnull @.str.28, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %76, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %44, align 8, !tbaa !29
  %48 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !44
  %50 = and i32 %49, 255
  %51 = icmp eq i32 %50, 9
  br i1 %51, label %52, label %76

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !16
  %55 = load ptr, ptr %54, align 8, !tbaa !72
  %56 = icmp eq ptr %55, null
  br i1 %56, label %76, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !5
  %60 = and i32 %59, 65280
  %61 = icmp ne i32 %60, 0
  %62 = and i32 %59, 255
  %63 = icmp eq i32 %62, 8
  %64 = or i1 %61, %63
  %65 = and i32 %59, 16777471
  %66 = icmp eq i32 %65, 16777226
  %67 = or i1 %66, %64
  br i1 %67, label %68, label %76

68:                                               ; preds = %57
  %69 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %55, i32 noundef 1538) #11
  %70 = tail call i32 @Perl_sv_isobject(ptr noundef %69) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %69, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0) #12
  br i1 %73, label %76, label %74

74:                                               ; preds = %72, %68
  %75 = tail call ptr @Perl_upg_version(ptr noundef %69, i1 noundef zeroext false) #11
  br label %76

76:                                               ; preds = %40, %43, %46, %52, %57, %72, %74
  %77 = phi i1 [ true, %74 ], [ true, %72 ], [ false, %57 ], [ false, %52 ], [ false, %46 ], [ false, %43 ], [ false, %40 ]
  %78 = phi ptr [ %69, %74 ], [ %69, %72 ], [ @PL_sv_undef, %57 ], [ @PL_sv_undef, %52 ], [ @PL_sv_undef, %46 ], [ @PL_sv_undef, %43 ], [ @PL_sv_undef, %40 ]
  %79 = icmp sgt i32 %14, 1
  br i1 %79, label %80, label %162

80:                                               ; preds = %76
  %81 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %82 = getelementptr ptr, ptr %81, i64 %8
  %83 = getelementptr ptr, ptr %82, i64 2
  %84 = load ptr, ptr %83, align 8, !tbaa !29
  br i1 %77, label %112, label %85

85:                                               ; preds = %80
  br i1 %42, label %109, label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.hv, ptr %41, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !27
  %89 = and i32 %88, 33554432
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.hv, ptr %41, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !16
  %94 = load ptr, ptr %41, align 8, !tbaa !19
  %95 = getelementptr inbounds %struct.xpvhv, ptr %94, i64 0, i32 3
  %96 = load i64, ptr %95, align 8, !tbaa !21
  %97 = getelementptr ptr, ptr %93, i64 %96
  %98 = getelementptr ptr, ptr %97, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !16
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %91
  %102 = getelementptr i8, ptr %97, i64 36
  %103 = load i32, ptr %102, align 4, !tbaa !28
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %99, align 8, !tbaa !29
  br label %107

107:                                              ; preds = %101, %86, %91, %105
  %108 = phi ptr [ %106, %105 ], [ null, %91 ], [ null, %86 ], [ %99, %101 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, ptr noundef %108, ptr noundef %108) #11
  br label %112

109:                                              ; preds = %85
  %110 = getelementptr inbounds ptr, ptr %81, i64 %20
  %111 = load ptr, ptr %110, align 8, !tbaa !29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.32, ptr noundef %111) #11
  br label %112

112:                                              ; preds = %107, %109, %80
  %113 = tail call i32 @Perl_sv_isobject(ptr noundef %84) #11
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %84, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0) #12
  br i1 %116, label %120, label %117

117:                                              ; preds = %115, %112
  %118 = tail call ptr @Perl_new_version(ptr noundef %84) #11
  %119 = tail call ptr @Perl_sv_2mortal(ptr noundef %118) #11
  br label %120

120:                                              ; preds = %117, %115
  %121 = phi ptr [ %84, %115 ], [ %119, %117 ]
  %122 = tail call i32 @Perl_vcmp(ptr noundef %121, ptr noundef %78) #11
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %162

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.sv, ptr %121, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !16
  %127 = tail call ptr @Perl_hv_common_key_len(ptr noundef %126, ptr noundef nonnull @.str.33, i32 noundef 2, i32 noundef 8, ptr noundef null, i32 noundef 0) #11
  %128 = icmp eq ptr %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = tail call ptr @Perl_vnormal(ptr noundef nonnull %121) #11
  %131 = tail call ptr @Perl_vnormal(ptr noundef %78) #11
  br label %135

132:                                              ; preds = %124
  %133 = tail call ptr @Perl_vstringify(ptr noundef nonnull %121) #11
  %134 = tail call ptr @Perl_vstringify(ptr noundef %78) #11
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi ptr [ %130, %129 ], [ %133, %132 ]
  %137 = phi ptr [ %131, %129 ], [ %134, %132 ]
  %138 = getelementptr inbounds %struct.hv, ptr %41, i64 0, i32 2
  %139 = load i32, ptr %138, align 4, !tbaa !27
  %140 = and i32 %139, 33554432
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %158, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.hv, ptr %41, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !16
  %145 = load ptr, ptr %41, align 8, !tbaa !19
  %146 = getelementptr inbounds %struct.xpvhv, ptr %145, i64 0, i32 3
  %147 = load i64, ptr %146, align 8, !tbaa !21
  %148 = getelementptr ptr, ptr %144, i64 %147
  %149 = getelementptr ptr, ptr %148, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !16
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %142
  %153 = getelementptr i8, ptr %148, i64 36
  %154 = load i32, ptr %153, align 4, !tbaa !28
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %152
  %157 = load ptr, ptr %150, align 8, !tbaa !29
  br label %158

158:                                              ; preds = %152, %135, %142, %156
  %159 = phi ptr [ %157, %156 ], [ null, %142 ], [ null, %135 ], [ %150, %152 ]
  %160 = tail call ptr @Perl_sv_2mortal(ptr noundef %136) #11
  %161 = tail call ptr @Perl_sv_2mortal(ptr noundef %137) #11
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.34, ptr noundef %159, ptr noundef %160, ptr noundef %161) #11
  br label %162

162:                                              ; preds = %120, %158, %76
  %163 = phi ptr [ %78, %76 ], [ %137, %158 ], [ %78, %120 ]
  %164 = tail call i32 @Perl_sv_isobject(ptr noundef %163) #11
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %163, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0) #12
  br i1 %167, label %168, label %171

168:                                              ; preds = %166
  %169 = tail call ptr @Perl_vstringify(ptr noundef %163) #11
  %170 = tail call ptr @Perl_sv_2mortal(ptr noundef %169) #11
  br label %171

171:                                              ; preds = %162, %166, %168
  %172 = phi ptr [ %170, %168 ], [ %163, %166 ], [ %163, %162 ]
  %173 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %174 = getelementptr inbounds ptr, ptr %173, i64 %20
  store ptr %172, ptr %174, align 8, !tbaa !29
  %175 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %176 = getelementptr inbounds ptr, ptr %175, i64 %20
  store ptr %176, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_upg_version(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_new_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_vcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_vnormal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_vstringify(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_version_new(ptr nocapture readnone %0) #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %6 = load i32, ptr %4, align 4, !tbaa !33
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  switch i32 %14, label %54 [
    i32 3, label %15
    i32 2, label %32
    i32 1, label %52
  ]

15:                                               ; preds = %1
  %16 = tail call ptr @Perl_sv_newmortal() #11
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %18 = getelementptr ptr, ptr %17, i64 %8
  %19 = getelementptr ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !5
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  br label %30

28:                                               ; preds = %15
  %29 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %20, ptr noundef null, i32 noundef 34) #11
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %27, %25 ], [ %29, %28 ]
  tail call void (ptr, ptr, ...) @Perl_sv_setpvf(ptr noundef %16, ptr noundef nonnull @.str.35, ptr noundef %31) #11
  br label %55

32:                                               ; preds = %1
  %33 = getelementptr ptr, ptr %9, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !29
  %35 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !5
  %37 = and i32 %36, 2097152
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = tail call i32 @Perl_mg_get(ptr noundef nonnull %34) #11
  %41 = load i32, ptr %35, align 4, !tbaa !5
  br label %42

42:                                               ; preds = %32, %39
  %43 = phi i32 [ %36, %32 ], [ %41, %39 ]
  %44 = and i32 %43, 65280
  %45 = icmp ne i32 %44, 0
  %46 = and i32 %43, 255
  %47 = icmp eq i32 %46, 8
  %48 = or i1 %45, %47
  %49 = and i32 %43, 16777471
  %50 = icmp eq i32 %49, 16777226
  %51 = or i1 %50, %48
  br i1 %51, label %55, label %52

52:                                               ; preds = %42, %1
  %53 = tail call ptr @Perl_sv_newmortal() #11
  tail call void @Perl_sv_setpvn(ptr noundef %53, ptr noundef nonnull @.str.36, i64 noundef 5) #11
  br label %55

54:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.37) #11
  br label %55

55:                                               ; preds = %42, %54, %52, %30
  %56 = phi ptr [ null, %54 ], [ %53, %52 ], [ %34, %42 ], [ %16, %30 ]
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %58 = getelementptr ptr, ptr %57, i64 %8
  %59 = getelementptr ptr, ptr %58, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !29
  %61 = tail call i32 @Perl_sv_isobject(ptr noundef %60) #11
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %127, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !16
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  %67 = load ptr, ptr %66, align 8, !tbaa !17
  %68 = getelementptr inbounds %struct.hv, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !27
  %70 = and i32 %69, 33554432
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %105, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.hv, ptr %67, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !16
  %75 = load ptr, ptr %67, align 8, !tbaa !19
  %76 = getelementptr inbounds %struct.xpvhv, ptr %75, i64 0, i32 3
  %77 = load i64, ptr %76, align 8, !tbaa !21
  %78 = getelementptr ptr, ptr %74, i64 %77
  %79 = getelementptr ptr, ptr %78, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !16
  %81 = icmp eq ptr %80, null
  br i1 %81, label %106, label %82

82:                                               ; preds = %72
  %83 = getelementptr i8, ptr %78, i64 36
  %84 = load i32, ptr %83, align 4, !tbaa !28
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %80, align 8, !tbaa !16
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %82, %86
  %90 = phi ptr [ %87, %86 ], [ %80, %82 ]
  %91 = getelementptr inbounds %struct.hek, ptr %90, i64 0, i32 2
  br label %92

92:                                               ; preds = %86, %89
  %93 = phi ptr [ %91, %89 ], [ null, %86 ]
  %94 = getelementptr i8, ptr %78, i64 36
  %95 = load i32, ptr %94, align 4, !tbaa !28
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load ptr, ptr %80, align 8, !tbaa !16
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %92, %97
  %101 = phi ptr [ %98, %97 ], [ %80, %92 ]
  %102 = getelementptr inbounds %struct.hek, ptr %101, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !30
  %104 = sext i32 %103 to i64
  br label %107

105:                                              ; preds = %63
  store i64 0, ptr %2, align 8, !tbaa !15
  br label %145

106:                                              ; preds = %72
  store i64 0, ptr %2, align 8, !tbaa !15
  br label %145

107:                                              ; preds = %97, %100
  %108 = phi i64 [ %104, %100 ], [ 0, %97 ]
  store i64 %108, ptr %2, align 8, !tbaa !15
  %109 = getelementptr i8, ptr %78, i64 36
  %110 = load i32, ptr %109, align 4, !tbaa !28
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load ptr, ptr %80, align 8, !tbaa !16
  %114 = icmp eq ptr %113, null
  br i1 %114, label %145, label %115

115:                                              ; preds = %112, %107
  %116 = phi ptr [ %80, %107 ], [ %113, %112 ]
  %117 = getelementptr inbounds %struct.hek, ptr %116, i64 0, i32 2
  %118 = getelementptr inbounds %struct.hek, ptr %116, i64 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !30
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %117, i64 %120
  %122 = getelementptr inbounds i8, ptr %121, i64 1
  %123 = load i8, ptr %122, align 1, !tbaa !16
  %124 = and i8 %123, 1
  %125 = zext nneg i8 %124 to i32
  %126 = shl nuw nsw i32 %125, 29
  br label %145

127:                                              ; preds = %55
  %128 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !5
  %130 = and i32 %129, 2098176
  %131 = icmp eq i32 %130, 1024
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load ptr, ptr %60, align 8, !tbaa !11
  %134 = getelementptr inbounds %struct.xpv, ptr %133, i64 0, i32 2
  %135 = load i64, ptr %134, align 8, !tbaa !12
  store i64 %135, ptr %2, align 8, !tbaa !15
  %136 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !16
  br label %141

138:                                              ; preds = %127
  %139 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %60, ptr noundef nonnull %2, i32 noundef 0) #11
  %140 = load i32, ptr %128, align 4, !tbaa !5
  br label %141

141:                                              ; preds = %138, %132
  %142 = phi i32 [ %129, %132 ], [ %140, %138 ]
  %143 = phi ptr [ %137, %132 ], [ %139, %138 ]
  %144 = and i32 %142, 536870912
  br label %145

145:                                              ; preds = %106, %105, %115, %112, %141
  %146 = phi i32 [ %144, %141 ], [ %126, %115 ], [ 0, %112 ], [ 0, %106 ], [ 0, %105 ]
  %147 = phi ptr [ %143, %141 ], [ %93, %115 ], [ %93, %112 ], [ null, %106 ], [ null, %105 ]
  %148 = call ptr @Perl_new_version(ptr noundef %56) #11
  %149 = load i64, ptr %2, align 8, !tbaa !15
  %150 = icmp eq i64 %149, 7
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %147, ptr noundef nonnull dereferenceable(8) @.str.29) #13
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %151, %145
  %155 = trunc i64 %149 to i32
  %156 = or disjoint i32 %146, 1
  %157 = call ptr @Perl_gv_stashpvn(ptr noundef %147, i32 noundef %155, i32 noundef %156) #11
  %158 = call ptr @Perl_sv_bless(ptr noundef %148, ptr noundef %157) #11
  br label %159

159:                                              ; preds = %151, %154
  %160 = shl i64 %12, 29
  %161 = ashr i64 %160, 32
  %162 = sub nsw i64 0, %161
  %163 = getelementptr inbounds ptr, ptr %3, i64 %162
  %164 = getelementptr inbounds ptr, ptr %163, i64 1
  store ptr %148, ptr %164, align 8, !tbaa !29
  store ptr %164, ptr @PL_stack_sp, align 8, !tbaa !29
  %165 = call ptr @Perl_sv_2mortal(ptr noundef %148) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_setpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_version_stringify(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #12
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = getelementptr ptr, ptr %18, i64 %7
  %20 = getelementptr ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = tail call i32 @Perl_sv_isobject(ptr noundef %21) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %21, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0) #12
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  br label %30

29:                                               ; preds = %24, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #11
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi ptr [ %28, %26 ], [ null, %29 ]
  %32 = shl i64 %11, 29
  %33 = ashr i64 %32, 32
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds ptr, ptr %2, i64 %34
  %36 = tail call ptr @Perl_vstringify(ptr noundef %31) #11
  %37 = getelementptr inbounds ptr, ptr %35, i64 1
  store ptr %36, ptr %37, align 8, !tbaa !29
  store ptr %37, ptr @PL_stack_sp, align 8, !tbaa !29
  %38 = tail call ptr @Perl_sv_2mortal(ptr noundef %36) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_version_numify(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #12
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = getelementptr ptr, ptr %18, i64 %7
  %20 = getelementptr ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = tail call i32 @Perl_sv_isobject(ptr noundef %21) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %21, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0) #12
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  br label %30

29:                                               ; preds = %24, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #11
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi ptr [ %28, %26 ], [ null, %29 ]
  %32 = shl i64 %11, 29
  %33 = ashr i64 %32, 32
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds ptr, ptr %2, i64 %34
  %36 = tail call ptr @Perl_vnumify(ptr noundef %31) #11
  %37 = getelementptr inbounds ptr, ptr %35, i64 1
  store ptr %36, ptr %37, align 8, !tbaa !29
  store ptr %37, ptr @PL_stack_sp, align 8, !tbaa !29
  %38 = tail call ptr @Perl_sv_2mortal(ptr noundef %36) #11
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_vnumify(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_version_normal(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.40) #12
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = getelementptr ptr, ptr %17, i64 %7
  %19 = getelementptr ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  %21 = tail call i32 @Perl_sv_isobject(ptr noundef %20) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %20, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0) #12
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  br label %29

28:                                               ; preds = %23, %16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.41) #11
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi ptr [ %27, %25 ], [ null, %28 ]
  %31 = shl i64 %11, 29
  %32 = ashr i64 %31, 32
  %33 = sub nsw i64 0, %32
  %34 = getelementptr inbounds ptr, ptr %2, i64 %33
  %35 = tail call ptr @Perl_vnormal(ptr noundef %30) #11
  %36 = getelementptr inbounds ptr, ptr %34, i64 1
  store ptr %35, ptr %36, align 8, !tbaa !29
  store ptr %36, ptr @PL_stack_sp, align 8, !tbaa !29
  %37 = tail call ptr @Perl_sv_2mortal(ptr noundef %35) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_version_vcmp(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #12
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = getelementptr ptr, ptr %18, i64 %7
  %20 = getelementptr ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = tail call i32 @Perl_sv_isobject(ptr noundef %21) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %21, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0) #12
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  br label %30

29:                                               ; preds = %24, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #11
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi ptr [ %28, %26 ], [ null, %29 ]
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %33 = getelementptr ptr, ptr %32, i64 %7
  %34 = getelementptr ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !29
  %36 = getelementptr ptr, ptr %33, i64 3
  %37 = load ptr, ptr %36, align 8, !tbaa !29
  %38 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !5
  %40 = and i32 %39, 2097408
  %41 = icmp eq i32 %40, 256
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load ptr, ptr %37, align 8, !tbaa !11
  %44 = getelementptr inbounds %struct.xpviv, ptr %43, i64 0, i32 4
  %45 = load i64, ptr %44, align 8, !tbaa !16
  br label %48

46:                                               ; preds = %30
  %47 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %37, i32 noundef 2) #11
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i64 [ %45, %42 ], [ %47, %46 ]
  %50 = tail call i32 @Perl_sv_isobject(ptr noundef %35) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %35, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0) #12
  br i1 %53, label %71, label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !5
  %57 = and i32 %56, 65280
  %58 = icmp ne i32 %57, 0
  %59 = and i32 %56, 255
  %60 = icmp eq i32 %59, 8
  %61 = or i1 %58, %60
  %62 = and i32 %56, 16777471
  %63 = icmp eq i32 %62, 16777226
  %64 = or i1 %63, %61
  br i1 %64, label %67, label %65

65:                                               ; preds = %54
  %66 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.42, i64 noundef 1, i32 noundef 524288) #11
  br label %67

67:                                               ; preds = %54, %65
  %68 = phi ptr [ %66, %65 ], [ %35, %54 ]
  %69 = tail call ptr @Perl_new_version(ptr noundef %68) #11
  %70 = tail call ptr @Perl_sv_2mortal(ptr noundef %69) #11
  br label %71

71:                                               ; preds = %67, %52
  %72 = phi ptr [ %35, %52 ], [ %70, %67 ]
  %73 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !16
  %75 = icmp eq i64 %49, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = tail call i32 @Perl_vcmp(ptr noundef %74, ptr noundef %31) #11
  br label %80

78:                                               ; preds = %71
  %79 = tail call i32 @Perl_vcmp(ptr noundef %31, ptr noundef %74) #11
  br label %80

80:                                               ; preds = %76, %78
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = sext i32 %81 to i64
  %83 = tail call ptr @Perl_newSViv(i64 noundef %82) #11
  %84 = shl i64 %11, 29
  %85 = ashr i64 %84, 32
  %86 = sub nsw i64 0, %85
  %87 = getelementptr inbounds ptr, ptr %2, i64 %86
  %88 = getelementptr inbounds ptr, ptr %87, i64 1
  store ptr %83, ptr %88, align 8, !tbaa !29
  store ptr %88, ptr @PL_stack_sp, align 8, !tbaa !29
  %89 = tail call ptr @Perl_sv_2mortal(ptr noundef %83) #11
  ret void
}

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_version_boolean(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #12
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = getelementptr ptr, ptr %18, i64 %7
  %20 = getelementptr ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = tail call i32 @Perl_sv_isobject(ptr noundef %21) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %21, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0) #12
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  br label %30

29:                                               ; preds = %24, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #11
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi ptr [ %28, %26 ], [ null, %29 ]
  %32 = shl i64 %11, 29
  %33 = ashr i64 %32, 32
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds ptr, ptr %2, i64 %34
  %36 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.42, i64 noundef 1) #11
  %37 = tail call ptr @Perl_sv_2mortal(ptr noundef %36) #11
  %38 = tail call ptr @Perl_new_version(ptr noundef %37) #11
  %39 = tail call ptr @Perl_sv_2mortal(ptr noundef %38) #11
  %40 = tail call i32 @Perl_vcmp(ptr noundef %31, ptr noundef %39) #11
  %41 = sext i32 %40 to i64
  %42 = tail call ptr @Perl_newSViv(i64 noundef %41) #11
  %43 = getelementptr inbounds ptr, ptr %35, i64 1
  store ptr %42, ptr %43, align 8, !tbaa !29
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !29
  %44 = tail call ptr @Perl_sv_2mortal(ptr noundef %42) #11
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_version_noop(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = load i32, ptr %3, align 4, !tbaa !33
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #12
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %6, %1 ]
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !29
  %23 = tail call i32 @Perl_sv_isobject(ptr noundef %22) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %27 = getelementptr inbounds ptr, ptr %26, i64 %20
  %28 = load ptr, ptr %27, align 8, !tbaa !29
  %29 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %28, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0) #12
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %18
  br label %31

31:                                               ; preds = %25, %30
  %32 = phi ptr [ @.str.39, %30 ], [ @.str.43, %25 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull %32) #11
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %34 = getelementptr inbounds ptr, ptr %33, i64 %20
  %35 = getelementptr inbounds ptr, ptr %34, i64 -1
  store ptr %35, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_version_is_alpha(ptr noundef %0) #0 {
  tail call fastcc void @S_version_check_key(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef 5) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_version_check_key(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %7 = load i32, ptr %5, align 4, !tbaa !33
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = ptrtoint ptr %4 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.56) #12
  br label %17

17:                                               ; preds = %16, %3
  %18 = load ptr, ptr %4, align 8, !tbaa !29
  %19 = tail call i32 @Perl_sv_isobject(ptr noundef %18) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %18, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0) #12
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !16
  br label %27

26:                                               ; preds = %21, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #11
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi ptr [ %25, %23 ], [ %18, %26 ]
  %29 = tail call ptr @Perl_hv_common_key_len(ptr noundef %28, ptr noundef %1, i32 noundef %2, i32 noundef 8, ptr noundef null, i32 noundef 0) #11
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr @PL_sv_no, ptr @PL_sv_yes
  store ptr %31, ptr %4, align 8, !tbaa !29
  store ptr %4, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_version_qv(ptr nocapture readnone %0) #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !29
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !29
  %6 = load i32, ptr %4, align 4, !tbaa !33
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !29
  %8 = sext i32 %6 to i64
  %9 = getelementptr ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = getelementptr ptr, ptr %9, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 0, ptr %2, align 8, !tbaa !15
  %15 = and i64 %12, 34359738360
  %16 = icmp eq i64 %15, 16
  br i1 %16, label %17, label %128

17:                                               ; preds = %1
  %18 = getelementptr ptr, ptr %9, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !29
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %22 = and i32 %21, 2097152
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = tail call i32 @Perl_mg_get(ptr noundef nonnull %19) #11
  %26 = load i32, ptr %20, align 4, !tbaa !5
  br label %27

27:                                               ; preds = %17, %24
  %28 = phi i32 [ %21, %17 ], [ %26, %24 ]
  %29 = and i32 %28, 65280
  %30 = icmp ne i32 %29, 0
  %31 = and i32 %28, 255
  %32 = icmp eq i32 %31, 8
  %33 = or i1 %30, %32
  %34 = and i32 %28, 16777471
  %35 = icmp eq i32 %34, 16777226
  %36 = or i1 %35, %33
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #11
  br label %38

38:                                               ; preds = %27, %37
  %39 = phi ptr [ %14, %37 ], [ %19, %27 ]
  %40 = tail call i32 @Perl_sv_isobject(ptr noundef %14) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %106, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !16
  %45 = load ptr, ptr %44, align 8, !tbaa !11
  %46 = load ptr, ptr %45, align 8, !tbaa !17
  %47 = getelementptr inbounds %struct.hv, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !27
  %49 = and i32 %48, 33554432
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %84, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.hv, ptr %46, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !16
  %54 = load ptr, ptr %46, align 8, !tbaa !19
  %55 = getelementptr inbounds %struct.xpvhv, ptr %54, i64 0, i32 3
  %56 = load i64, ptr %55, align 8, !tbaa !21
  %57 = getelementptr ptr, ptr %53, i64 %56
  %58 = getelementptr ptr, ptr %57, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !16
  %60 = icmp eq ptr %59, null
  br i1 %60, label %85, label %61

61:                                               ; preds = %51
  %62 = getelementptr i8, ptr %57, i64 36
  %63 = load i32, ptr %62, align 4, !tbaa !28
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %59, align 8, !tbaa !16
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %61, %65
  %69 = phi ptr [ %66, %65 ], [ %59, %61 ]
  %70 = getelementptr inbounds %struct.hek, ptr %69, i64 0, i32 2
  br label %71

71:                                               ; preds = %65, %68
  %72 = phi ptr [ %70, %68 ], [ null, %65 ]
  %73 = getelementptr i8, ptr %57, i64 36
  %74 = load i32, ptr %73, align 4, !tbaa !28
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %59, align 8, !tbaa !16
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %71, %76
  %80 = phi ptr [ %77, %76 ], [ %59, %71 ]
  %81 = getelementptr inbounds %struct.hek, ptr %80, i64 0, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !30
  %83 = sext i32 %82 to i64
  br label %86

84:                                               ; preds = %42
  store i64 0, ptr %2, align 8, !tbaa !15
  br label %124

85:                                               ; preds = %51
  store i64 0, ptr %2, align 8, !tbaa !15
  br label %124

86:                                               ; preds = %76, %79
  %87 = phi i64 [ %83, %79 ], [ 0, %76 ]
  store i64 %87, ptr %2, align 8, !tbaa !15
  %88 = getelementptr i8, ptr %57, i64 36
  %89 = load i32, ptr %88, align 4, !tbaa !28
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %59, align 8, !tbaa !16
  %93 = icmp eq ptr %92, null
  br i1 %93, label %124, label %94

94:                                               ; preds = %91, %86
  %95 = phi ptr [ %59, %86 ], [ %92, %91 ]
  %96 = getelementptr inbounds %struct.hek, ptr %95, i64 0, i32 2
  %97 = getelementptr inbounds %struct.hek, ptr %95, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !30
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %96, i64 %99
  %101 = getelementptr inbounds i8, ptr %100, i64 1
  %102 = load i8, ptr %101, align 1, !tbaa !16
  %103 = and i8 %102, 1
  %104 = zext nneg i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 29
  br label %124

106:                                              ; preds = %38
  %107 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !5
  %109 = and i32 %108, 2098176
  %110 = icmp eq i32 %109, 1024
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load ptr, ptr %14, align 8, !tbaa !11
  %113 = getelementptr inbounds %struct.xpv, ptr %112, i64 0, i32 2
  %114 = load i64, ptr %113, align 8, !tbaa !12
  store i64 %114, ptr %2, align 8, !tbaa !15
  %115 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !16
  br label %120

117:                                              ; preds = %106
  %118 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %14, ptr noundef nonnull %2, i32 noundef 2) #11
  %119 = load i32, ptr %107, align 4, !tbaa !5
  br label %120

120:                                              ; preds = %117, %111
  %121 = phi i32 [ %108, %111 ], [ %119, %117 ]
  %122 = phi ptr [ %116, %111 ], [ %118, %117 ]
  %123 = and i32 %121, 536870912
  br label %124

124:                                              ; preds = %85, %84, %94, %91, %120
  %125 = phi ptr [ %122, %120 ], [ null, %84 ], [ null, %85 ], [ %72, %91 ], [ %72, %94 ]
  %126 = phi i32 [ %123, %120 ], [ 0, %84 ], [ 0, %85 ], [ 0, %91 ], [ %105, %94 ]
  %127 = or disjoint i32 %126, 1
  br label %128

128:                                              ; preds = %124, %1
  %129 = phi ptr [ %39, %124 ], [ %14, %1 ]
  %130 = phi ptr [ %125, %124 ], [ @.str.21, %1 ]
  %131 = phi i32 [ %127, %124 ], [ 1, %1 ]
  %132 = getelementptr inbounds %struct.sv, ptr %129, i64 0, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !5
  %134 = and i32 %133, 14680064
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %128
  %137 = call ptr @Perl_mg_find(ptr noundef nonnull %129, i32 noundef 86) #11
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %136, %128
  %140 = call ptr @Perl_sv_newmortal() #11
  %141 = icmp eq ptr %140, %129
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  call void @Perl_sv_setsv_flags(ptr noundef %140, ptr noundef nonnull %129, i32 noundef 1554) #11
  br label %143

143:                                              ; preds = %139, %142
  %144 = call ptr @Perl_upg_version(ptr noundef %140, i1 noundef zeroext true) #11
  br label %148

145:                                              ; preds = %136
  %146 = call ptr @Perl_new_version(ptr noundef nonnull %129) #11
  %147 = call ptr @Perl_sv_2mortal(ptr noundef %146) #11
  br label %148

148:                                              ; preds = %145, %143
  %149 = phi ptr [ %147, %145 ], [ %140, %143 ]
  br i1 %16, label %150, label %160

150:                                              ; preds = %148
  %151 = load i64, ptr %2, align 8, !tbaa !15
  %152 = icmp eq i64 %151, 7
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %130, ptr noundef nonnull dereferenceable(8) @.str.29) #13
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %153, %150
  %157 = trunc i64 %151 to i32
  %158 = call ptr @Perl_gv_stashpvn(ptr noundef %130, i32 noundef %157, i32 noundef %131) #11
  %159 = call ptr @Perl_sv_bless(ptr noundef %149, ptr noundef %158) #11
  br label %160

160:                                              ; preds = %156, %153, %148
  %161 = shl i64 %12, 29
  %162 = ashr i64 %161, 32
  %163 = sub nsw i64 0, %162
  %164 = getelementptr inbounds ptr, ptr %3, i64 %163
  %165 = getelementptr inbounds ptr, ptr %164, i64 1
  store ptr %149, ptr %165, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  store ptr %165, ptr @PL_stack_sp, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_version_is_qv(ptr noundef %0) #0 {
  tail call fastcc void @S_version_check_key(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef 2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_boot_core_UNIVERSAL() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %10, %1 ]
  %3 = getelementptr inbounds i8, ptr @details, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.xsub_details, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.xsub_details, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = tail call ptr @Perl_newXS_flags(ptr noundef %4, ptr noundef %6, ptr noundef nonnull @Perl_boot_core_UNIVERSAL.file, ptr noundef %8, i32 noundef 0) #11
  %10 = add nuw nsw i64 %2, 24
  %11 = icmp ult i64 %2, 1200
  br i1 %11, label %1, label %12, !llvm.loop !77

12:                                               ; preds = %1
  %13 = tail call ptr @Perl_get_cv(ptr noundef nonnull @.str.46, i32 noundef 0) #11
  %14 = tail call ptr @Perl_get_cv(ptr noundef nonnull @.str.47, i32 noundef 0) #11
  tail call void @Perl_cv_set_call_checker(ptr noundef %13, ptr noundef nonnull @optimize_out_native_convert_function, ptr noundef %13) #11
  tail call void @Perl_cv_set_call_checker(ptr noundef %14, ptr noundef nonnull @optimize_out_native_convert_function, ptr noundef %14) #11
  %15 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.48, i32 noundef 1) #11
  %16 = tail call ptr @Perl_newCONSTSUB(ptr noundef %15, ptr noundef nonnull @.str.49, ptr noundef null) #11
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.xpvcv, ptr %17, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !29
  %20 = getelementptr inbounds %struct.xpvcv, ptr %17, i64 0, i32 12
  %21 = load i32, ptr %20, align 4, !tbaa !36
  %22 = and i32 %21, -4097
  store i32 %22, ptr %20, align 4, !tbaa !36
  store ptr @Perl_boot_core_UNIVERSAL.file, ptr %18, align 8, !tbaa !29
  tail call void @Perl_safesysfree(ptr noundef %19) #11
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_get_cv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_cv_set_call_checker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @optimize_out_native_convert_function(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.106, i64 noundef 1) #11
  %5 = tail call ptr @Perl_ck_entersub_args_proto(ptr noundef %0, ptr noundef %1, ptr noundef %4) #11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.unop, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.op, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.unop, ptr %7, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %3, %11
  %18 = phi ptr [ %7, %11 ], [ %5, %3 ]
  %19 = phi ptr [ %13, %11 ], [ %7, %3 ]
  %20 = phi ptr [ %15, %11 ], [ %9, %3 ]
  %21 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call ptr @Perl_op_sibling_splice(ptr noundef nonnull %18, ptr noundef nonnull %19, i32 noundef 1, ptr noundef null) #11
  tail call void @Perl_op_free(ptr noundef nonnull %5) #11
  br label %30

30:                                               ; preds = %11, %17, %24, %28
  %31 = phi ptr [ %20, %28 ], [ %5, %24 ], [ %5, %17 ], [ %5, %11 ]
  ret ptr %31
}

; Function Attrs: optsize
declare ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_get_hv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_mro_meta_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_mro_get_linear_isa(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_ck_entersub_args_proto(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_op_sibling_splice(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_op_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 12}
!6 = !{!"sv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!13, !14, i64 16}
!13 = !{!"xpv", !7, i64 0, !8, i64 8, !14, i64 16, !8, i64 24}
!14 = !{!"long", !8, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!8, !8, i64 0}
!17 = !{!18, !7, i64 0}
!18 = !{!"xpvmg", !7, i64 0, !8, i64 8, !14, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!19 = !{!20, !7, i64 0}
!20 = !{!"hv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!21 = !{!22, !14, i64 24}
!22 = !{!"xpvhv", !7, i64 0, !8, i64 8, !14, i64 16, !14, i64 24}
!23 = !{!24, !7, i64 32}
!24 = !{!"xpvhv_aux", !8, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52}
!25 = !{!26, !7, i64 40}
!26 = !{!"mro_meta", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !7, i64 40, !7, i64 48, !10, i64 56}
!27 = !{!20, !10, i64 12}
!28 = !{!24, !10, i64 28}
!29 = !{!7, !7, i64 0}
!30 = !{!31, !10, i64 4}
!31 = !{!"hek", !10, i64 0, !10, i64 4, !8, i64 8}
!32 = !{!31, !10, i64 0}
!33 = !{!10, !10, i64 0}
!34 = !{!35, !7, i64 0}
!35 = !{!"cv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!36 = !{!37, !10, i64 92}
!37 = !{!"xpvcv", !7, i64 0, !8, i64 8, !14, i64 16, !8, i64 24, !7, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !7, i64 64, !8, i64 72, !7, i64 80, !10, i64 88, !10, i64 92, !10, i64 96}
!38 = !{!39, !7, i64 0}
!39 = !{!"gv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!40 = !{!41, !7, i64 8}
!41 = !{!"gp", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !10, i64 64, !10, i64 67, !7, i64 72}
!42 = !{!43, !7, i64 0}
!43 = !{!"io", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!44 = !{!39, !10, i64 12}
!45 = !{!41, !7, i64 16}
!46 = !{!47, !8, i64 35}
!47 = !{!"op", !7, i64 0, !7, i64 8, !7, i64 16, !14, i64 24, !10, i64 32, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !8, i64 34, !8, i64 35}
!48 = !{!47, !14, i64 24}
!49 = !{!50, !14, i64 16}
!50 = !{!"xpvav", !7, i64 0, !8, i64 8, !14, i64 16, !14, i64 24, !7, i64 32}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!6, !10, i64 8}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !52}
!56 = !{!57, !7, i64 0}
!57 = !{!"av", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!58 = !{!59, !7, i64 56}
!59 = !{!"pmop", !7, i64 0, !7, i64 8, !7, i64 16, !14, i64 24, !10, i64 32, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !8, i64 34, !8, i64 35, !7, i64 40, !7, i64 48, !7, i64 56, !10, i64 64, !8, i64 72, !8, i64 80, !7, i64 88}
!60 = !{!61, !7, i64 32}
!61 = !{!"regexp", !7, i64 0, !8, i64 8, !14, i64 16, !8, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !10, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !7, i64 88, !10, i64 96, !10, i64 100, !7, i64 104, !10, i64 112, !10, i64 116, !7, i64 120, !7, i64 128, !7, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !10, i64 176, !10, i64 176, !7, i64 184}
!62 = !{!63, !7, i64 64}
!63 = !{!"regexp_engine", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!64 = distinct !{!64, !52}
!65 = !{!47, !8, i64 34}
!66 = !{!61, !10, i64 56}
!67 = !{i32 0, i32 8}
!68 = distinct !{!68, !52}
!69 = !{!70, !7, i64 0}
!70 = !{!"p5rx", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!71 = !{!70, !10, i64 12}
!72 = !{!41, !7, i64 0}
!73 = !{!74, !7, i64 0}
!74 = !{!"xsub_details", !7, i64 0, !7, i64 8, !7, i64 16}
!75 = !{!74, !7, i64 8}
!76 = !{!74, !7, i64 16}
!77 = distinct !{!77, !52}
!78 = !{!79, !7, i64 40}
!79 = !{!"unop", !7, i64 0, !7, i64 8, !7, i64 16, !14, i64 24, !10, i64 32, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !8, i64 34, !8, i64 35, !7, i64 40}
!80 = !{!47, !7, i64 8}
