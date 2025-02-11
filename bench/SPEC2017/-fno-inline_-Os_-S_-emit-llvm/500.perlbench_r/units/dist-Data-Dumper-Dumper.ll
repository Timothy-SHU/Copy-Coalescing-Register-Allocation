; ModuleID = 'dist/Data-Dumper/Dumper.c'
source_filename = "dist/Data-Dumper/Dumper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.hv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu }
%union._xmgu = type { ptr }
%union.anon.1 = type { i64 }
%union._xivu = type { i64 }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu, %union._xnvu }
%union.anon.3 = type { i64 }
%union._xnvu = type { double }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.av = type { ptr, i32, i32, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.7, %union._xivu }
%union.anon.7 = type { i64 }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.8, %union._xivu, %union._xnvu }
%union.anon.8 = type { i64 }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }

@.str = private unnamed_addr constant [26 x i8] c"dist/Data-Dumper/Dumper.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Data::Dumper::Dumpxs\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"$;$$\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Data::Dumper::_vstring\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"href, ...\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [66 x i8] c"Usage: Data::Dumper::Dumpxs(PACKAGE, VAL_ARY_REF, [NAME_ARY_REF])\00", align 1
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"seen\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"noseen\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"todump\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"purity\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"terse\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"useqq\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"xpad\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"apad\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"sep\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"pair\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"varname\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"freezer\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"toaster\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"deepcopy\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"quotekeys\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"bless\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"maxdepth\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"maxrecurse\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"sortkeys\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@.str.32 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"Call to new() method failed to return HASH ref\00", align 1
@PL_errgv = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [41 x i8] c"WARNING(Freezer method call failed): %-p\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"do{my $o}\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"ref name not found for 0x%lx\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"Regexp\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"Recursion limit of %ld exceeded\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"( \00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"re::regexp_pattern\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"qr/\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"\\/\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"${\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"do{\\(my $o = \00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c")}\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"*{\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"{SCALAR}\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"{ARRAY}\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"{HASH}\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.67 = private unnamed_addr constant [45 x i8] c"Sortkeys subroutine did not return ARRAYREF\0A\00", align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str.68 = private unnamed_addr constant [16 x i8] c"sub { \22DUMMY\22 }\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"Encountered CODE ref, using dummy placeholder\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"cannot handle ref type %d\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c", '\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"' )\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@reltable.DD_dump = internal unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.59 to i64), i64 ptrtoint (ptr @reltable.DD_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.60 to i64), i64 ptrtoint (ptr @reltable.DD_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.61 to i64), i64 ptrtoint (ptr @reltable.DD_dump to i64)) to i32)], align 4
@DD_dump.sizes = internal unnamed_addr constant [3 x i64] [i64 8, i64 7, i64 6], align 16
@.str.77 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"\\x{%lx}\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"sv\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_Data__Dumper(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Data__Dumper_Dumpxs, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Data__Dumper__vstring, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #14
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Data__Dumper_Dumpxs(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %7 = load i32, ptr %5, align 4, !tbaa !9
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = ptrtoint ptr %4 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.6) #14
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi ptr [ %18, %17 ], [ %8, %1 ]
  %21 = shl i64 %13, 29
  %22 = ashr i64 %21, 32
  %23 = sub nsw i64 0, %22
  %24 = getelementptr inbounds ptr, ptr %4, i64 %23
  %25 = getelementptr ptr, ptr %20, i64 %9
  %26 = getelementptr ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #15
  %28 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.op, ptr %28, i64 0, i32 5
  %30 = load i8, ptr %29, align 2, !tbaa !11
  %31 = and i8 %30, 3
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %19
  %34 = zext nneg i8 %31 to i32
  br label %37

35:                                               ; preds = %19
  %36 = tail call i32 @Perl_block_gimme() #14
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !14
  %41 = and i32 %40, 2048
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %107

43:                                               ; preds = %37
  %44 = icmp slt i32 %15, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #14
  br label %46

46:                                               ; preds = %45, %43
  tail call void @Perl_push_scope() #14
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #14
  %47 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !16
  store i64 %47, ptr @PL_tmps_floor, align 8, !tbaa !16
  %48 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %49 = getelementptr inbounds i32, ptr %48, i64 1
  store ptr %49, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %50 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !5
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = tail call ptr @Perl_markstack_grow() #14
  br label %54

54:                                               ; preds = %46, %52
  %55 = phi ptr [ %53, %52 ], [ %49, %46 ]
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %57 = ptrtoint ptr %24 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %60 = lshr exact i64 %59, 3
  %61 = trunc i64 %60 to i32
  store i32 %61, ptr %55, align 4, !tbaa !9
  %62 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %63 = ptrtoint ptr %62 to i64
  %64 = sub i64 %63, %57
  %65 = icmp slt i64 %64, 24
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = tail call ptr @Perl_stack_grow(ptr noundef %24, ptr noundef %24, i64 noundef 3) #14
  %68 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %69

69:                                               ; preds = %54, %66
  %70 = phi ptr [ %68, %66 ], [ %56, %54 ]
  %71 = phi ptr [ %67, %66 ], [ %24, %54 ]
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  store ptr %27, ptr %72, align 8, !tbaa !5
  %73 = getelementptr ptr, ptr %70, i64 %9
  %74 = getelementptr ptr, ptr %73, i64 2
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = tail call ptr @Perl_newSVsv(ptr noundef %75) #14
  %77 = tail call ptr @Perl_sv_2mortal(ptr noundef %76) #14
  %78 = getelementptr inbounds ptr, ptr %71, i64 2
  store ptr %77, ptr %78, align 8, !tbaa !5
  %79 = icmp sgt i32 %15, 2
  br i1 %79, label %80, label %88

80:                                               ; preds = %69
  %81 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %82 = getelementptr ptr, ptr %81, i64 %9
  %83 = getelementptr ptr, ptr %82, i64 3
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = tail call ptr @Perl_newSVsv(ptr noundef %84) #14
  %86 = tail call ptr @Perl_sv_2mortal(ptr noundef %85) #14
  %87 = getelementptr inbounds ptr, ptr %71, i64 3
  store ptr %86, ptr %87, align 8, !tbaa !5
  br label %88

88:                                               ; preds = %80, %69
  %89 = phi ptr [ %87, %80 ], [ %78, %69 ]
  store ptr %89, ptr @PL_stack_sp, align 8, !tbaa !5
  %90 = tail call i32 @Perl_call_method(ptr noundef nonnull @.str.8, i32 noundef 2) #14
  %91 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %92 = icmp eq i32 %90, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds ptr, ptr %91, i64 -1
  %95 = load ptr, ptr %91, align 8, !tbaa !5
  %96 = tail call ptr @Perl_newSVsv(ptr noundef %95) #14
  br label %97

97:                                               ; preds = %93, %88
  %98 = phi ptr [ %96, %93 ], [ %27, %88 ]
  %99 = phi ptr [ %94, %93 ], [ %91, %88 ]
  store ptr %99, ptr @PL_stack_sp, align 8, !tbaa !5
  %100 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !16
  %101 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !16
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  tail call void @Perl_free_tmps() #14
  br label %104

104:                                              ; preds = %103, %97
  tail call void @Perl_pop_scope() #14
  br i1 %92, label %107, label %105

105:                                              ; preds = %104
  %106 = tail call ptr @Perl_sv_2mortal(ptr noundef %98) #14
  br label %107

107:                                              ; preds = %104, %105, %37
  %108 = phi ptr [ %27, %37 ], [ %98, %105 ], [ %98, %104 ]
  %109 = phi ptr [ %24, %37 ], [ %99, %105 ], [ %99, %104 ]
  %110 = tail call ptr @Perl_sv_newmortal() #14
  %111 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.9, i64 noundef 0) #14
  %112 = getelementptr inbounds %struct.sv, ptr %108, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !14
  %114 = and i32 %113, 2048
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %809, label %116

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.sv, ptr %108, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !17
  %119 = icmp eq ptr %118, null
  br i1 %119, label %809, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.hv, ptr %118, i64 0, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !18
  %123 = and i32 %122, 255
  %124 = icmp eq i32 %123, 12
  br i1 %124, label %125, label %809

125:                                              ; preds = %120
  %126 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.10, i32 noundef 4, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %127 = icmp eq ptr %126, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %126, align 8, !tbaa !5
  %130 = getelementptr inbounds %struct.sv, ptr %129, i64 0, i32 2
  %131 = load i32, ptr %130, align 4, !tbaa !14
  %132 = and i32 %131, 2048
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.sv, ptr %129, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !17
  br label %137

137:                                              ; preds = %125, %128, %134
  %138 = phi ptr [ %136, %134 ], [ null, %128 ], [ null, %125 ]
  %139 = phi i32 [ 0, %134 ], [ 1, %128 ], [ 1, %125 ]
  %140 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.11, i32 noundef 6, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %141 = icmp eq ptr %140, null
  br i1 %141, label %169, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %140, align 8, !tbaa !5
  %144 = getelementptr inbounds %struct.sv, ptr %143, i64 0, i32 2
  %145 = load i32, ptr %144, align 4, !tbaa !14
  %146 = and i32 %145, 65280
  %147 = icmp ne i32 %146, 0
  %148 = and i32 %145, 255
  %149 = icmp eq i32 %148, 8
  %150 = or i1 %147, %149
  %151 = and i32 %145, 16777471
  %152 = icmp eq i32 %151, 16777226
  %153 = or i1 %152, %150
  br i1 %153, label %154, label %166

154:                                              ; preds = %142
  %155 = and i32 %145, 2097408
  %156 = icmp eq i32 %155, 256
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load ptr, ptr %143, align 8, !tbaa !20
  %159 = getelementptr inbounds %struct.xpviv, ptr %158, i64 0, i32 4
  %160 = load i64, ptr %159, align 8, !tbaa !17
  br label %163

161:                                              ; preds = %154
  %162 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %143, i32 noundef 2) #14
  br label %163

163:                                              ; preds = %161, %157
  %164 = phi i64 [ %160, %157 ], [ %162, %161 ]
  %165 = icmp ne i64 %164, 0
  br label %166

166:                                              ; preds = %142, %163
  %167 = phi i1 [ %165, %163 ], [ false, %142 ]
  %168 = zext i1 %167 to i32
  br label %169

169:                                              ; preds = %166, %137
  %170 = phi i32 [ %168, %166 ], [ %139, %137 ]
  %171 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.12, i32 noundef 6, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %172 = icmp eq ptr %171, null
  br i1 %172, label %182, label %173

173:                                              ; preds = %169
  %174 = load ptr, ptr %171, align 8, !tbaa !5
  %175 = getelementptr inbounds %struct.sv, ptr %174, i64 0, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !14
  %177 = and i32 %176, 2048
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.sv, ptr %174, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !17
  br label %182

182:                                              ; preds = %179, %173, %169
  %183 = phi ptr [ %181, %179 ], [ null, %173 ], [ null, %169 ]
  %184 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.13, i32 noundef 5, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %185 = icmp eq ptr %184, null
  br i1 %185, label %195, label %186

186:                                              ; preds = %182
  %187 = load ptr, ptr %184, align 8, !tbaa !5
  %188 = getelementptr inbounds %struct.sv, ptr %187, i64 0, i32 2
  %189 = load i32, ptr %188, align 4, !tbaa !14
  %190 = and i32 %189, 2048
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.sv, ptr %187, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !17
  br label %195

195:                                              ; preds = %192, %186, %182
  %196 = phi ptr [ %194, %192 ], [ null, %186 ], [ null, %182 ]
  %197 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.14, i32 noundef 6, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %198 = icmp eq ptr %197, null
  br i1 %198, label %214, label %199

199:                                              ; preds = %195
  %200 = load ptr, ptr %197, align 8, !tbaa !5
  %201 = getelementptr inbounds %struct.sv, ptr %200, i64 0, i32 2
  %202 = load i32, ptr %201, align 4, !tbaa !14
  %203 = and i32 %202, 2097408
  %204 = icmp eq i32 %203, 256
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load ptr, ptr %200, align 8, !tbaa !20
  %207 = getelementptr inbounds %struct.xpviv, ptr %206, i64 0, i32 4
  %208 = load i64, ptr %207, align 8, !tbaa !17
  br label %211

209:                                              ; preds = %199
  %210 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %200, i32 noundef 2) #14
  br label %211

211:                                              ; preds = %209, %205
  %212 = phi i64 [ %208, %205 ], [ %210, %209 ]
  %213 = trunc i64 %212 to i32
  br label %214

214:                                              ; preds = %211, %195
  %215 = phi i32 [ %213, %211 ], [ 2, %195 ]
  %216 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.15, i32 noundef 6, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %217 = icmp eq ptr %216, null
  br i1 %217, label %233, label %218

218:                                              ; preds = %214
  %219 = load ptr, ptr %216, align 8, !tbaa !5
  %220 = getelementptr inbounds %struct.sv, ptr %219, i64 0, i32 2
  %221 = load i32, ptr %220, align 4, !tbaa !14
  %222 = and i32 %221, 2097408
  %223 = icmp eq i32 %222, 256
  br i1 %223, label %224, label %228

224:                                              ; preds = %218
  %225 = load ptr, ptr %219, align 8, !tbaa !20
  %226 = getelementptr inbounds %struct.xpviv, ptr %225, i64 0, i32 4
  %227 = load i64, ptr %226, align 8, !tbaa !17
  br label %230

228:                                              ; preds = %218
  %229 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %219, i32 noundef 2) #14
  br label %230

230:                                              ; preds = %228, %224
  %231 = phi i64 [ %227, %224 ], [ %229, %228 ]
  %232 = trunc i64 %231 to i32
  br label %233

233:                                              ; preds = %230, %214
  %234 = phi i32 [ %232, %230 ], [ 0, %214 ]
  %235 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.16, i32 noundef 5, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %236 = icmp eq ptr %235, null
  br i1 %236, label %296, label %237

237:                                              ; preds = %233
  %238 = load ptr, ptr %235, align 8, !tbaa !5
  %239 = icmp eq ptr %238, null
  br i1 %239, label %296, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.sv, ptr %238, i64 0, i32 2
  %242 = load i32, ptr %241, align 4, !tbaa !14
  %243 = and i32 %242, 2097152
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %240
  %246 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %238, i32 noundef 2) #14
  br label %296

247:                                              ; preds = %240
  %248 = and i32 %242, 65280
  %249 = icmp ne i32 %248, 0
  %250 = and i32 %242, 255
  %251 = icmp eq i32 %250, 8
  %252 = or i1 %249, %251
  %253 = and i32 %242, 16777471
  %254 = icmp eq i32 %253, 16777226
  %255 = or i1 %254, %252
  br i1 %255, label %256, label %296

256:                                              ; preds = %247
  %257 = and i32 %242, 1024
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %273, label %259

259:                                              ; preds = %256
  %260 = load ptr, ptr %238, align 8, !tbaa !20
  %261 = icmp eq ptr %260, null
  br i1 %261, label %296, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.xpv, ptr %260, i64 0, i32 2
  %264 = load i64, ptr %263, align 8, !tbaa !21
  %265 = icmp ugt i64 %264, 1
  br i1 %265, label %296, label %266

266:                                              ; preds = %262
  %267 = icmp eq i64 %264, 0
  br i1 %267, label %296, label %268

268:                                              ; preds = %266
  %269 = getelementptr inbounds %struct.sv, ptr %238, i64 0, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !17
  %271 = load i8, ptr %270, align 1, !tbaa !17
  %272 = icmp ne i8 %271, 48
  br label %296

273:                                              ; preds = %256
  %274 = and i32 %242, 768
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %294, label %276

276:                                              ; preds = %273
  %277 = and i32 %242, 256
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %284, label %279

279:                                              ; preds = %276
  %280 = load ptr, ptr %238, align 8, !tbaa !20
  %281 = getelementptr inbounds %struct.xpviv, ptr %280, i64 0, i32 4
  %282 = load i64, ptr %281, align 8, !tbaa !17
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %296

284:                                              ; preds = %279, %276
  %285 = and i32 %242, 512
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %296, label %287

287:                                              ; preds = %284
  %288 = load ptr, ptr %238, align 8, !tbaa !20
  %289 = getelementptr inbounds %struct.xpvnv, ptr %288, i64 0, i32 5
  %290 = load double, ptr %289, align 8, !tbaa !17
  %291 = fcmp uno double %290, 0.000000e+00
  br i1 %291, label %296, label %292

292:                                              ; preds = %287
  %293 = fcmp une double %290, 0.000000e+00
  br label %296

294:                                              ; preds = %273
  %295 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %238, i32 noundef 0) #14
  br label %296

296:                                              ; preds = %237, %279, %287, %292, %284, %259, %266, %268, %262, %247, %294, %245, %233
  %297 = phi i1 [ false, %233 ], [ false, %237 ], [ %246, %245 ], [ %295, %294 ], [ false, %247 ], [ false, %259 ], [ true, %262 ], [ false, %266 ], [ %272, %268 ], [ true, %279 ], [ false, %284 ], [ true, %287 ], [ %293, %292 ]
  %298 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.17, i32 noundef 5, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %299 = icmp eq ptr %298, null
  br i1 %299, label %362, label %300

300:                                              ; preds = %296
  %301 = load ptr, ptr %298, align 8, !tbaa !5
  %302 = icmp eq ptr %301, null
  br i1 %302, label %359, label %303

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct.sv, ptr %301, i64 0, i32 2
  %305 = load i32, ptr %304, align 4, !tbaa !14
  %306 = and i32 %305, 2097152
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %303
  %309 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %301, i32 noundef 2) #14
  br label %359

310:                                              ; preds = %303
  %311 = and i32 %305, 65280
  %312 = icmp ne i32 %311, 0
  %313 = and i32 %305, 255
  %314 = icmp eq i32 %313, 8
  %315 = or i1 %312, %314
  %316 = and i32 %305, 16777471
  %317 = icmp eq i32 %316, 16777226
  %318 = or i1 %317, %315
  br i1 %318, label %319, label %359

319:                                              ; preds = %310
  %320 = and i32 %305, 1024
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %336, label %322

322:                                              ; preds = %319
  %323 = load ptr, ptr %301, align 8, !tbaa !20
  %324 = icmp eq ptr %323, null
  br i1 %324, label %359, label %325

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.xpv, ptr %323, i64 0, i32 2
  %327 = load i64, ptr %326, align 8, !tbaa !21
  %328 = icmp ugt i64 %327, 1
  br i1 %328, label %359, label %329

329:                                              ; preds = %325
  %330 = icmp eq i64 %327, 0
  br i1 %330, label %359, label %331

331:                                              ; preds = %329
  %332 = getelementptr inbounds %struct.sv, ptr %301, i64 0, i32 3
  %333 = load ptr, ptr %332, align 8, !tbaa !17
  %334 = load i8, ptr %333, align 1, !tbaa !17
  %335 = icmp ne i8 %334, 48
  br label %359

336:                                              ; preds = %319
  %337 = and i32 %305, 768
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %357, label %339

339:                                              ; preds = %336
  %340 = and i32 %305, 256
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %347, label %342

342:                                              ; preds = %339
  %343 = load ptr, ptr %301, align 8, !tbaa !20
  %344 = getelementptr inbounds %struct.xpviv, ptr %343, i64 0, i32 4
  %345 = load i64, ptr %344, align 8, !tbaa !17
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %347, label %359

347:                                              ; preds = %342, %339
  %348 = and i32 %305, 512
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %359, label %350

350:                                              ; preds = %347
  %351 = load ptr, ptr %301, align 8, !tbaa !20
  %352 = getelementptr inbounds %struct.xpvnv, ptr %351, i64 0, i32 5
  %353 = load double, ptr %352, align 8, !tbaa !17
  %354 = fcmp uno double %353, 0.000000e+00
  br i1 %354, label %359, label %355

355:                                              ; preds = %350
  %356 = fcmp une double %353, 0.000000e+00
  br label %359

357:                                              ; preds = %336
  %358 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %301, i32 noundef 0) #14
  br label %359

359:                                              ; preds = %308, %357, %310, %325, %331, %329, %322, %347, %355, %350, %342, %300
  %360 = phi i1 [ false, %300 ], [ %309, %308 ], [ %358, %357 ], [ false, %310 ], [ false, %322 ], [ true, %325 ], [ false, %329 ], [ %335, %331 ], [ true, %342 ], [ false, %347 ], [ true, %350 ], [ %356, %355 ]
  %361 = zext i1 %360 to i32
  br label %362

362:                                              ; preds = %359, %296
  %363 = phi i32 [ %361, %359 ], [ 0, %296 ]
  %364 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.18, i32 noundef 3, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %365 = icmp eq ptr %364, null
  br i1 %365, label %368, label %366

366:                                              ; preds = %362
  %367 = load ptr, ptr %364, align 8, !tbaa !5
  br label %368

368:                                              ; preds = %366, %362
  %369 = phi ptr [ %367, %366 ], [ @PL_sv_undef, %362 ]
  %370 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.19, i32 noundef 4, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %371 = icmp eq ptr %370, null
  br i1 %371, label %374, label %372

372:                                              ; preds = %368
  %373 = load ptr, ptr %370, align 8, !tbaa !5
  br label %374

374:                                              ; preds = %372, %368
  %375 = phi ptr [ %373, %372 ], [ @PL_sv_undef, %368 ]
  %376 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.20, i32 noundef 4, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %377 = icmp eq ptr %376, null
  br i1 %377, label %380, label %378

378:                                              ; preds = %374
  %379 = load ptr, ptr %376, align 8, !tbaa !5
  br label %380

380:                                              ; preds = %378, %374
  %381 = phi ptr [ %379, %378 ], [ @PL_sv_undef, %374 ]
  %382 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.21, i32 noundef 3, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %383 = icmp eq ptr %382, null
  br i1 %383, label %386, label %384

384:                                              ; preds = %380
  %385 = load ptr, ptr %382, align 8, !tbaa !5
  br label %386

386:                                              ; preds = %384, %380
  %387 = phi ptr [ %385, %384 ], [ @PL_sv_undef, %380 ]
  %388 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.22, i32 noundef 4, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %389 = icmp eq ptr %388, null
  br i1 %389, label %392, label %390

390:                                              ; preds = %386
  %391 = load ptr, ptr %388, align 8, !tbaa !5
  br label %392

392:                                              ; preds = %390, %386
  %393 = phi ptr [ %391, %390 ], [ @PL_sv_undef, %386 ]
  %394 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.23, i32 noundef 7, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %395 = icmp eq ptr %394, null
  br i1 %395, label %398, label %396

396:                                              ; preds = %392
  %397 = load ptr, ptr %394, align 8, !tbaa !5
  br label %398

398:                                              ; preds = %396, %392
  %399 = phi ptr [ %397, %396 ], [ @PL_sv_undef, %392 ]
  %400 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.24, i32 noundef 7, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %401 = icmp eq ptr %400, null
  br i1 %401, label %404, label %402

402:                                              ; preds = %398
  %403 = load ptr, ptr %400, align 8, !tbaa !5
  br label %404

404:                                              ; preds = %402, %398
  %405 = phi ptr [ %403, %402 ], [ @PL_sv_undef, %398 ]
  %406 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.25, i32 noundef 7, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %407 = icmp eq ptr %406, null
  br i1 %407, label %410, label %408

408:                                              ; preds = %404
  %409 = load ptr, ptr %406, align 8, !tbaa !5
  br label %410

410:                                              ; preds = %408, %404
  %411 = phi ptr [ %409, %408 ], [ @PL_sv_undef, %404 ]
  %412 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.26, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %413 = icmp eq ptr %412, null
  br i1 %413, label %476, label %414

414:                                              ; preds = %410
  %415 = load ptr, ptr %412, align 8, !tbaa !5
  %416 = icmp eq ptr %415, null
  br i1 %416, label %473, label %417

417:                                              ; preds = %414
  %418 = getelementptr inbounds %struct.sv, ptr %415, i64 0, i32 2
  %419 = load i32, ptr %418, align 4, !tbaa !14
  %420 = and i32 %419, 2097152
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %417
  %423 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %415, i32 noundef 2) #14
  br label %473

424:                                              ; preds = %417
  %425 = and i32 %419, 65280
  %426 = icmp ne i32 %425, 0
  %427 = and i32 %419, 255
  %428 = icmp eq i32 %427, 8
  %429 = or i1 %426, %428
  %430 = and i32 %419, 16777471
  %431 = icmp eq i32 %430, 16777226
  %432 = or i1 %431, %429
  br i1 %432, label %433, label %473

433:                                              ; preds = %424
  %434 = and i32 %419, 1024
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %450, label %436

436:                                              ; preds = %433
  %437 = load ptr, ptr %415, align 8, !tbaa !20
  %438 = icmp eq ptr %437, null
  br i1 %438, label %473, label %439

439:                                              ; preds = %436
  %440 = getelementptr inbounds %struct.xpv, ptr %437, i64 0, i32 2
  %441 = load i64, ptr %440, align 8, !tbaa !21
  %442 = icmp ugt i64 %441, 1
  br i1 %442, label %473, label %443

443:                                              ; preds = %439
  %444 = icmp eq i64 %441, 0
  br i1 %444, label %473, label %445

445:                                              ; preds = %443
  %446 = getelementptr inbounds %struct.sv, ptr %415, i64 0, i32 3
  %447 = load ptr, ptr %446, align 8, !tbaa !17
  %448 = load i8, ptr %447, align 1, !tbaa !17
  %449 = icmp ne i8 %448, 48
  br label %473

450:                                              ; preds = %433
  %451 = and i32 %419, 768
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %471, label %453

453:                                              ; preds = %450
  %454 = and i32 %419, 256
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %461, label %456

456:                                              ; preds = %453
  %457 = load ptr, ptr %415, align 8, !tbaa !20
  %458 = getelementptr inbounds %struct.xpviv, ptr %457, i64 0, i32 4
  %459 = load i64, ptr %458, align 8, !tbaa !17
  %460 = icmp eq i64 %459, 0
  br i1 %460, label %461, label %473

461:                                              ; preds = %456, %453
  %462 = and i32 %419, 512
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %473, label %464

464:                                              ; preds = %461
  %465 = load ptr, ptr %415, align 8, !tbaa !20
  %466 = getelementptr inbounds %struct.xpvnv, ptr %465, i64 0, i32 5
  %467 = load double, ptr %466, align 8, !tbaa !17
  %468 = fcmp uno double %467, 0.000000e+00
  br i1 %468, label %473, label %469

469:                                              ; preds = %464
  %470 = fcmp une double %467, 0.000000e+00
  br label %473

471:                                              ; preds = %450
  %472 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %415, i32 noundef 0) #14
  br label %473

473:                                              ; preds = %422, %471, %424, %439, %445, %443, %436, %461, %469, %464, %456, %414
  %474 = phi i1 [ false, %414 ], [ %423, %422 ], [ %472, %471 ], [ false, %424 ], [ false, %436 ], [ true, %439 ], [ false, %443 ], [ %449, %445 ], [ true, %456 ], [ false, %461 ], [ true, %464 ], [ %470, %469 ]
  %475 = zext i1 %474 to i32
  br label %476

476:                                              ; preds = %473, %410
  %477 = phi i32 [ %475, %473 ], [ 0, %410 ]
  %478 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.27, i32 noundef 9, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %479 = icmp eq ptr %478, null
  br i1 %479, label %542, label %480

480:                                              ; preds = %476
  %481 = load ptr, ptr %478, align 8, !tbaa !5
  %482 = icmp eq ptr %481, null
  br i1 %482, label %539, label %483

483:                                              ; preds = %480
  %484 = getelementptr inbounds %struct.sv, ptr %481, i64 0, i32 2
  %485 = load i32, ptr %484, align 4, !tbaa !14
  %486 = and i32 %485, 2097152
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %490, label %488

488:                                              ; preds = %483
  %489 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %481, i32 noundef 2) #14
  br label %539

490:                                              ; preds = %483
  %491 = and i32 %485, 65280
  %492 = icmp ne i32 %491, 0
  %493 = and i32 %485, 255
  %494 = icmp eq i32 %493, 8
  %495 = or i1 %492, %494
  %496 = and i32 %485, 16777471
  %497 = icmp eq i32 %496, 16777226
  %498 = or i1 %497, %495
  br i1 %498, label %499, label %539

499:                                              ; preds = %490
  %500 = and i32 %485, 1024
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %516, label %502

502:                                              ; preds = %499
  %503 = load ptr, ptr %481, align 8, !tbaa !20
  %504 = icmp eq ptr %503, null
  br i1 %504, label %539, label %505

505:                                              ; preds = %502
  %506 = getelementptr inbounds %struct.xpv, ptr %503, i64 0, i32 2
  %507 = load i64, ptr %506, align 8, !tbaa !21
  %508 = icmp ugt i64 %507, 1
  br i1 %508, label %539, label %509

509:                                              ; preds = %505
  %510 = icmp eq i64 %507, 0
  br i1 %510, label %539, label %511

511:                                              ; preds = %509
  %512 = getelementptr inbounds %struct.sv, ptr %481, i64 0, i32 3
  %513 = load ptr, ptr %512, align 8, !tbaa !17
  %514 = load i8, ptr %513, align 1, !tbaa !17
  %515 = icmp ne i8 %514, 48
  br label %539

516:                                              ; preds = %499
  %517 = and i32 %485, 768
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %537, label %519

519:                                              ; preds = %516
  %520 = and i32 %485, 256
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %527, label %522

522:                                              ; preds = %519
  %523 = load ptr, ptr %481, align 8, !tbaa !20
  %524 = getelementptr inbounds %struct.xpviv, ptr %523, i64 0, i32 4
  %525 = load i64, ptr %524, align 8, !tbaa !17
  %526 = icmp eq i64 %525, 0
  br i1 %526, label %527, label %539

527:                                              ; preds = %522, %519
  %528 = and i32 %485, 512
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %539, label %530

530:                                              ; preds = %527
  %531 = load ptr, ptr %481, align 8, !tbaa !20
  %532 = getelementptr inbounds %struct.xpvnv, ptr %531, i64 0, i32 5
  %533 = load double, ptr %532, align 8, !tbaa !17
  %534 = fcmp uno double %533, 0.000000e+00
  br i1 %534, label %539, label %535

535:                                              ; preds = %530
  %536 = fcmp une double %533, 0.000000e+00
  br label %539

537:                                              ; preds = %516
  %538 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %481, i32 noundef 0) #14
  br label %539

539:                                              ; preds = %488, %537, %490, %505, %511, %509, %502, %527, %535, %530, %522, %480
  %540 = phi i1 [ false, %480 ], [ %489, %488 ], [ %538, %537 ], [ false, %490 ], [ false, %502 ], [ true, %505 ], [ false, %509 ], [ %515, %511 ], [ true, %522 ], [ false, %527 ], [ true, %530 ], [ %536, %535 ]
  %541 = zext i1 %540 to i32
  br label %542

542:                                              ; preds = %539, %476
  %543 = phi i32 [ %541, %539 ], [ 1, %476 ]
  %544 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.28, i32 noundef 5, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %545 = icmp eq ptr %544, null
  br i1 %545, label %548, label %546

546:                                              ; preds = %542
  %547 = load ptr, ptr %544, align 8, !tbaa !5
  br label %548

548:                                              ; preds = %546, %542
  %549 = phi ptr [ %547, %546 ], [ @PL_sv_undef, %542 ]
  %550 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.29, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %551 = icmp eq ptr %550, null
  br i1 %551, label %567, label %552

552:                                              ; preds = %548
  %553 = load ptr, ptr %550, align 8, !tbaa !5
  %554 = getelementptr inbounds %struct.sv, ptr %553, i64 0, i32 2
  %555 = load i32, ptr %554, align 4, !tbaa !14
  %556 = and i32 %555, 2097408
  %557 = icmp eq i32 %556, 256
  br i1 %557, label %558, label %562

558:                                              ; preds = %552
  %559 = load ptr, ptr %553, align 8, !tbaa !20
  %560 = getelementptr inbounds %struct.xpviv, ptr %559, i64 0, i32 4
  %561 = load i64, ptr %560, align 8, !tbaa !17
  br label %564

562:                                              ; preds = %552
  %563 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %553, i32 noundef 2) #14
  br label %564

564:                                              ; preds = %562, %558
  %565 = phi i64 [ %561, %558 ], [ %563, %562 ]
  %566 = trunc i64 %565 to i32
  br label %567

567:                                              ; preds = %564, %548
  %568 = phi i32 [ %566, %564 ], [ 0, %548 ]
  %569 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.30, i32 noundef 10, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %570 = icmp eq ptr %569, null
  br i1 %570, label %583, label %571

571:                                              ; preds = %567
  %572 = load ptr, ptr %569, align 8, !tbaa !5
  %573 = getelementptr inbounds %struct.sv, ptr %572, i64 0, i32 2
  %574 = load i32, ptr %573, align 4, !tbaa !14
  %575 = and i32 %574, 2097408
  %576 = icmp eq i32 %575, 256
  br i1 %576, label %577, label %581

577:                                              ; preds = %571
  %578 = load ptr, ptr %572, align 8, !tbaa !20
  %579 = getelementptr inbounds %struct.xpviv, ptr %578, i64 0, i32 4
  %580 = load i64, ptr %579, align 8, !tbaa !17
  br label %583

581:                                              ; preds = %571
  %582 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %572, i32 noundef 2) #14
  br label %583

583:                                              ; preds = %577, %581, %567
  %584 = phi i64 [ 1000, %567 ], [ %580, %577 ], [ %582, %581 ]
  %585 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %118, ptr noundef nonnull @.str.31, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %586 = icmp eq ptr %585, null
  br i1 %586, label %656, label %587

587:                                              ; preds = %583
  %588 = load ptr, ptr %585, align 8, !tbaa !5
  %589 = icmp eq ptr %588, null
  br i1 %589, label %656, label %590

590:                                              ; preds = %587
  %591 = getelementptr inbounds %struct.sv, ptr %588, i64 0, i32 2
  %592 = load i32, ptr %591, align 4, !tbaa !14
  %593 = and i32 %592, 2097152
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %597, label %595

595:                                              ; preds = %590
  %596 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %588, i32 noundef 2) #14
  br i1 %596, label %644, label %656

597:                                              ; preds = %590
  %598 = and i32 %592, 65280
  %599 = icmp ne i32 %598, 0
  %600 = and i32 %592, 255
  %601 = icmp eq i32 %600, 8
  %602 = or i1 %599, %601
  %603 = and i32 %592, 16777471
  %604 = icmp eq i32 %603, 16777226
  %605 = or i1 %604, %602
  br i1 %605, label %606, label %656

606:                                              ; preds = %597
  %607 = and i32 %592, 1024
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %623, label %609

609:                                              ; preds = %606
  %610 = load ptr, ptr %588, align 8, !tbaa !20
  %611 = icmp eq ptr %610, null
  br i1 %611, label %656, label %612

612:                                              ; preds = %609
  %613 = getelementptr inbounds %struct.xpv, ptr %610, i64 0, i32 2
  %614 = load i64, ptr %613, align 8, !tbaa !21
  %615 = icmp ugt i64 %614, 1
  br i1 %615, label %644, label %616

616:                                              ; preds = %612
  %617 = icmp eq i64 %614, 0
  br i1 %617, label %656, label %618

618:                                              ; preds = %616
  %619 = getelementptr inbounds %struct.sv, ptr %588, i64 0, i32 3
  %620 = load ptr, ptr %619, align 8, !tbaa !17
  %621 = load i8, ptr %620, align 1, !tbaa !17
  %622 = icmp eq i8 %621, 48
  br i1 %622, label %656, label %644

623:                                              ; preds = %606
  %624 = and i32 %592, 768
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %642, label %626

626:                                              ; preds = %623
  %627 = and i32 %592, 256
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %634, label %629

629:                                              ; preds = %626
  %630 = load ptr, ptr %588, align 8, !tbaa !20
  %631 = getelementptr inbounds %struct.xpviv, ptr %630, i64 0, i32 4
  %632 = load i64, ptr %631, align 8, !tbaa !17
  %633 = icmp eq i64 %632, 0
  br i1 %633, label %634, label %644

634:                                              ; preds = %629, %626
  %635 = and i32 %592, 512
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %656, label %637

637:                                              ; preds = %634
  %638 = load ptr, ptr %588, align 8, !tbaa !20
  %639 = getelementptr inbounds %struct.xpvnv, ptr %638, i64 0, i32 5
  %640 = load double, ptr %639, align 8, !tbaa !17
  %641 = fcmp une double %640, 0.000000e+00
  br i1 %641, label %644, label %656

642:                                              ; preds = %623
  %643 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %588, i32 noundef 0) #14
  br i1 %643, label %644, label %656

644:                                              ; preds = %642, %637, %629, %618, %612, %595
  %645 = load i32, ptr %591, align 4, !tbaa !14
  %646 = and i32 %645, 2048
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %655, label %648

648:                                              ; preds = %644
  %649 = getelementptr inbounds %struct.sv, ptr %588, i64 0, i32 3
  %650 = load ptr, ptr %649, align 8, !tbaa !17
  %651 = getelementptr inbounds %struct.sv, ptr %650, i64 0, i32 2
  %652 = load i32, ptr %651, align 4, !tbaa !14
  %653 = and i32 %652, 255
  %654 = icmp eq i32 %653, 13
  br i1 %654, label %656, label %655

655:                                              ; preds = %648, %644
  br label %656

656:                                              ; preds = %595, %609, %616, %618, %634, %642, %587, %597, %637, %655, %648, %583
  %657 = phi ptr [ %588, %648 ], [ @PL_sv_yes, %655 ], [ @PL_sv_undef, %583 ], [ null, %637 ], [ null, %597 ], [ null, %587 ], [ null, %642 ], [ null, %634 ], [ null, %618 ], [ null, %616 ], [ null, %609 ], [ null, %595 ]
  %658 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  %659 = icmp eq ptr %183, null
  br i1 %659, label %660, label %662

660:                                              ; preds = %656
  %661 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.9, i64 noundef 0) #14
  br label %805

662:                                              ; preds = %656
  %663 = tail call i64 @Perl_av_len(ptr noundef nonnull %183) #14
  %664 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.9, i64 noundef 0) #14
  %665 = icmp slt i64 %663, 0
  br i1 %665, label %805, label %666

666:                                              ; preds = %662
  %667 = getelementptr inbounds %struct.sv, ptr %110, i64 0, i32 2
  %668 = getelementptr inbounds %struct.sv, ptr %110, i64 0, i32 3
  %669 = icmp slt i32 %215, 2
  %670 = select i1 %669, i1 true, i1 %297
  %671 = icmp eq i32 %38, 3
  br label %672

672:                                              ; preds = %666, %800
  %673 = phi ptr [ %109, %666 ], [ %802, %800 ]
  %674 = phi ptr [ %111, %666 ], [ %801, %800 ]
  %675 = phi i64 [ 0, %666 ], [ %803, %800 ]
  call void @Perl_av_clear(ptr noundef %658) #14
  %676 = call ptr @Perl_av_fetch(ptr noundef nonnull %183, i64 noundef %675, i32 noundef 0) #14
  %677 = icmp eq ptr %676, null
  br i1 %677, label %680, label %678

678:                                              ; preds = %672
  %679 = load ptr, ptr %676, align 8, !tbaa !5
  br label %680

680:                                              ; preds = %672, %678
  %681 = phi ptr [ %679, %678 ], [ @PL_sv_undef, %672 ]
  %682 = call ptr @Perl_av_fetch(ptr noundef %196, i64 noundef %675, i32 noundef 1) #14
  %683 = icmp eq ptr %682, null
  br i1 %683, label %706, label %684

684:                                              ; preds = %680
  %685 = load ptr, ptr %682, align 8, !tbaa !5
  call void @Perl_sv_setsv_flags(ptr noundef %110, ptr noundef %685, i32 noundef 2) #14
  %686 = load ptr, ptr %682, align 8, !tbaa !5
  %687 = getelementptr inbounds %struct.sv, ptr %686, i64 0, i32 2
  %688 = load i32, ptr %687, align 4, !tbaa !14
  %689 = and i32 %688, 65280
  %690 = icmp ne i32 %689, 0
  %691 = and i32 %688, 255
  %692 = icmp eq i32 %691, 8
  %693 = or i1 %690, %692
  %694 = and i32 %688, 16777471
  %695 = icmp eq i32 %694, 16777226
  %696 = or i1 %695, %693
  %697 = and i32 %688, 1024
  %698 = icmp eq i32 %697, 0
  %699 = and i1 %698, %696
  br i1 %699, label %700, label %713

700:                                              ; preds = %684
  %701 = load i32, ptr %667, align 4, !tbaa !14
  %702 = and i32 %701, 2098176
  %703 = icmp eq i32 %702, 1024
  br i1 %703, label %713, label %704

704:                                              ; preds = %700
  %705 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %110, ptr noundef null, i32 noundef 34) #14
  br label %713

706:                                              ; preds = %680
  %707 = load i32, ptr %667, align 4, !tbaa !14
  %708 = and i32 %707, 1610547455
  store i32 %708, ptr %667, align 4, !tbaa !14
  %709 = and i32 %707, 33554432
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %713, label %711

711:                                              ; preds = %706
  %712 = call i32 @Perl_sv_backoff(ptr noundef nonnull %110) #14
  br label %713

713:                                              ; preds = %706, %711, %700, %684, %704
  %714 = load i32, ptr %667, align 4, !tbaa !14
  %715 = and i32 %714, 1024
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %737, label %717

717:                                              ; preds = %713
  %718 = load ptr, ptr %668, align 8, !tbaa !17
  %719 = load i8, ptr %718, align 1, !tbaa !17
  switch i8 %719, label %736 [
    i8 42, label %720
    i8 36, label %741
  ]

720:                                              ; preds = %717
  %721 = getelementptr inbounds %struct.sv, ptr %681, i64 0, i32 2
  %722 = load i32, ptr %721, align 4, !tbaa !14
  %723 = and i32 %722, 2048
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %735, label %725

725:                                              ; preds = %720
  %726 = getelementptr inbounds %struct.sv, ptr %681, i64 0, i32 3
  %727 = load ptr, ptr %726, align 8, !tbaa !17
  %728 = getelementptr inbounds %struct.sv, ptr %727, i64 0, i32 2
  %729 = load i32, ptr %728, align 4, !tbaa !14
  %730 = trunc i32 %729 to i8
  switch i8 %730, label %734 [
    i8 11, label %731
    i8 12, label %732
    i8 13, label %733
  ]

731:                                              ; preds = %725
  store i8 64, ptr %718, align 1, !tbaa !17
  br label %741

732:                                              ; preds = %725
  store i8 37, ptr %718, align 1, !tbaa !17
  br label %741

733:                                              ; preds = %725
  store i8 42, ptr %718, align 1, !tbaa !17
  br label %741

734:                                              ; preds = %725
  store i8 36, ptr %718, align 1, !tbaa !17
  br label %741

735:                                              ; preds = %720
  store i8 36, ptr %718, align 1, !tbaa !17
  br label %741

736:                                              ; preds = %717
  call void @Perl_sv_insert_flags(ptr noundef nonnull %110, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 1, i32 noundef 2) #14
  br label %741

737:                                              ; preds = %713
  call void @Perl_sv_setpvn(ptr noundef nonnull %110, ptr noundef nonnull @.str.5, i64 noundef 1) #14
  call void @Perl_sv_catsv_flags(ptr noundef nonnull %110, ptr noundef %399, i32 noundef 2) #14
  %738 = add nuw nsw i64 %675, 1
  %739 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef nonnull @.str.32, i64 noundef %738) #14
  %740 = sext i32 %739 to i64
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %110, ptr noundef nonnull %3, i64 noundef %740, i32 noundef 2) #14
  br label %741

741:                                              ; preds = %717, %731, %732, %733, %734, %735, %736, %737
  br i1 %670, label %750, label %742

742:                                              ; preds = %741
  %743 = load ptr, ptr %110, align 8, !tbaa !20
  %744 = getelementptr inbounds %struct.xpv, ptr %743, i64 0, i32 2
  %745 = load i64, ptr %744, align 8, !tbaa !21
  %746 = trunc i64 %745 to i32
  %747 = add i32 %746, 3
  %748 = call fastcc ptr @sv_x(ptr noundef null, ptr noundef nonnull @.str.33, i64 noundef 1, i32 noundef %747) #16
  %749 = call ptr @Perl_newSVsv(ptr noundef %381) #14
  call void @Perl_sv_catsv_flags(ptr noundef %749, ptr noundef %748, i32 noundef 2) #14
  call fastcc void @S_SvREFCNT_dec(ptr noundef %748) #16
  br label %750

750:                                              ; preds = %741, %742
  %751 = phi ptr [ %749, %742 ], [ %381, %741 ]
  store ptr %673, ptr @PL_stack_sp, align 8, !tbaa !5
  %752 = load ptr, ptr %668, align 8, !tbaa !17
  %753 = load ptr, ptr %110, align 8, !tbaa !20
  %754 = getelementptr inbounds %struct.xpv, ptr %753, i64 0, i32 2
  %755 = load i64, ptr %754, align 8, !tbaa !21
  call fastcc void @DD_dump(ptr noundef %681, ptr noundef %752, i64 noundef %755, ptr noundef %664, ptr noundef %138, ptr noundef %658, ptr noundef nonnull %2, i32 noundef %215, ptr noundef %369, ptr noundef %375, ptr noundef %751, ptr noundef %387, ptr noundef %393, ptr noundef %405, ptr noundef %411, i32 noundef %234, i32 noundef %477, i32 noundef %543, ptr noundef %549, i32 noundef %568, ptr noundef %657, i32 noundef %170, i32 noundef %363, i64 noundef %584) #16
  %756 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  br i1 %670, label %758, label %757

757:                                              ; preds = %750
  call fastcc void @S_SvREFCNT_dec(ptr noundef %751) #16
  br label %758

758:                                              ; preds = %757, %750
  %759 = call i64 @Perl_av_len(ptr noundef %658) #14
  %760 = icmp slt i64 %759, 0
  %761 = select i1 %760, i1 %297, i1 false
  br i1 %761, label %767, label %762

762:                                              ; preds = %758
  call void @Perl_sv_insert_flags(ptr noundef %664, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.34, i64 noundef 3, i32 noundef 2) #14
  %763 = load ptr, ptr %668, align 8, !tbaa !17
  %764 = load ptr, ptr %110, align 8, !tbaa !20
  %765 = getelementptr inbounds %struct.xpv, ptr %764, i64 0, i32 2
  %766 = load i64, ptr %765, align 8, !tbaa !21
  call void @Perl_sv_insert_flags(ptr noundef %664, i64 noundef 0, i64 noundef 0, ptr noundef %763, i64 noundef %766, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %664, ptr noundef nonnull @.str.35, i64 noundef 1, i32 noundef 2) #14
  br label %767

767:                                              ; preds = %758, %762
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef %369, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef %664, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef %387, i32 noundef 2) #14
  %768 = icmp sgt i64 %759, -1
  br i1 %768, label %769, label %784

769:                                              ; preds = %767
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef %369, i32 noundef 2) #14
  br label %770

770:                                              ; preds = %769, %780
  %771 = phi i64 [ 0, %769 ], [ %781, %780 ]
  %772 = call ptr @Perl_av_fetch(ptr noundef %658, i64 noundef %771, i32 noundef 0) #14
  %773 = icmp eq ptr %772, null
  br i1 %773, label %780, label %774

774:                                              ; preds = %770
  %775 = load ptr, ptr %772, align 8, !tbaa !5
  %776 = icmp eq ptr %775, null
  br i1 %776, label %780, label %777

777:                                              ; preds = %774
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef nonnull %775, i32 noundef 2) #14
  %778 = icmp slt i64 %771, %759
  br i1 %778, label %779, label %780

779:                                              ; preds = %777
  call void @Perl_sv_catpvn_flags(ptr noundef %674, ptr noundef nonnull @.str.35, i64 noundef 1, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef %387, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef %369, i32 noundef 2) #14
  br label %780

780:                                              ; preds = %777, %779, %774, %770
  %781 = add nuw i64 %771, 1
  %782 = icmp eq i64 %771, %759
  br i1 %782, label %783, label %770, !llvm.loop !23

783:                                              ; preds = %780
  call void @Perl_sv_catpvn_flags(ptr noundef %674, ptr noundef nonnull @.str.35, i64 noundef 1, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef %387, i32 noundef 2) #14
  br label %784

784:                                              ; preds = %783, %767
  call void @Perl_sv_setpvn(ptr noundef %664, ptr noundef nonnull @.str.9, i64 noundef 0) #14
  br i1 %671, label %785, label %800

785:                                              ; preds = %784
  %786 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %787 = ptrtoint ptr %786 to i64
  %788 = ptrtoint ptr %756 to i64
  %789 = sub i64 %787, %788
  %790 = icmp slt i64 %789, 8
  br i1 %790, label %791, label %793

791:                                              ; preds = %785
  %792 = call ptr @Perl_stack_grow(ptr noundef %756, ptr noundef %756, i64 noundef 1) #14
  br label %793

793:                                              ; preds = %785, %791
  %794 = phi ptr [ %792, %791 ], [ %756, %785 ]
  %795 = call ptr @Perl_sv_2mortal(ptr noundef %674) #14
  %796 = getelementptr inbounds ptr, ptr %794, i64 1
  store ptr %795, ptr %796, align 8, !tbaa !5
  %797 = icmp slt i64 %675, %663
  br i1 %797, label %798, label %800

798:                                              ; preds = %793
  %799 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.9, i64 noundef 0) #14
  br label %800

800:                                              ; preds = %793, %798, %784
  %801 = phi ptr [ %799, %798 ], [ %674, %793 ], [ %674, %784 ]
  %802 = phi ptr [ %796, %798 ], [ %796, %793 ], [ %756, %784 ]
  %803 = add nuw i64 %675, 1
  %804 = icmp eq i64 %675, %663
  br i1 %804, label %805, label %672, !llvm.loop !25

805:                                              ; preds = %800, %660, %662
  %806 = phi ptr [ %664, %662 ], [ %661, %660 ], [ %664, %800 ]
  %807 = phi ptr [ %111, %662 ], [ %111, %660 ], [ %801, %800 ]
  %808 = phi ptr [ %109, %662 ], [ %109, %660 ], [ %802, %800 ]
  call fastcc void @S_SvREFCNT_dec(ptr noundef %658) #16
  call fastcc void @S_SvREFCNT_dec(ptr noundef %806) #16
  br label %810

809:                                              ; preds = %120, %116, %107
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.36) #14
  br label %810

810:                                              ; preds = %809, %805
  %811 = phi ptr [ %807, %805 ], [ %111, %809 ]
  %812 = phi ptr [ %808, %805 ], [ %109, %809 ]
  %813 = icmp eq i32 %38, 3
  br i1 %813, label %826, label %814

814:                                              ; preds = %810
  %815 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %816 = ptrtoint ptr %815 to i64
  %817 = ptrtoint ptr %812 to i64
  %818 = sub i64 %816, %817
  %819 = icmp slt i64 %818, 8
  br i1 %819, label %820, label %822

820:                                              ; preds = %814
  %821 = call ptr @Perl_stack_grow(ptr noundef %812, ptr noundef %812, i64 noundef 1) #14
  br label %822

822:                                              ; preds = %814, %820
  %823 = phi ptr [ %821, %820 ], [ %812, %814 ]
  %824 = call ptr @Perl_sv_2mortal(ptr noundef %811) #14
  %825 = getelementptr inbounds ptr, ptr %823, i64 1
  store ptr %824, ptr %825, align 8, !tbaa !5
  br label %826

826:                                              ; preds = %822, %810
  %827 = phi ptr [ %825, %822 ], [ %812, %810 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  store ptr %827, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Data__Dumper__vstring(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %5 = load i32, ptr %3, align 4, !tbaa !9
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.79) #14
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !14
  %24 = and i32 %23, 14680064
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %17
  %27 = tail call ptr @Perl_mg_find(ptr noundef nonnull %21, i32 noundef 86) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.magic, ptr %27, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !26
  %32 = getelementptr inbounds %struct.magic, ptr %27, i64 0, i32 5
  %33 = load i64, ptr %32, align 8, !tbaa !29
  %34 = tail call ptr @Perl_newSVpvn(ptr noundef %31, i64 noundef %33) #14
  br label %35

35:                                               ; preds = %17, %26, %29
  %36 = phi ptr [ %34, %29 ], [ @PL_sv_undef, %26 ], [ @PL_sv_undef, %17 ]
  %37 = tail call ptr @Perl_sv_2mortal(ptr noundef %36) #14
  %38 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %39 = getelementptr inbounds ptr, ptr %38, i64 %19
  store ptr %37, ptr %39, align 8, !tbaa !5
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %41 = getelementptr inbounds ptr, ptr %40, i64 %19
  store ptr %41, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_call_method(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_free_tmps() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_av_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_insert_flags(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_my_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sv_x(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.9, i64 noundef 0) #14
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %0, %4 ], [ %7, %6 ]
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !14
  %14 = and i32 %13, 268435456
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %9, align 8, !tbaa !20
  %17 = zext nneg i32 %3 to i64
  %18 = mul i64 %17, %2
  br i1 %15, label %24, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.xpv, ptr %16, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !21
  %22 = add i64 %18, 1
  %23 = add i64 %22, %21
  br label %32

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.xpv, ptr %16, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !17
  %27 = getelementptr inbounds %struct.xpv, ptr %16, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !21
  %29 = add i64 %18, 1
  %30 = add i64 %29, %28
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %19, %24
  %33 = phi i64 [ %23, %19 ], [ %30, %24 ]
  %34 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %9, i64 noundef %33) #14
  br label %35

35:                                               ; preds = %24, %32
  %36 = icmp eq i64 %2, 1
  br i1 %36, label %37, label %55

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !17
  %40 = load ptr, ptr %9, align 8, !tbaa !20
  %41 = getelementptr inbounds %struct.xpv, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !21
  %43 = getelementptr inbounds i8, ptr %39, i64 %42
  %44 = zext nneg i32 %3 to i64
  %45 = add i64 %42, %44
  store i64 %45, ptr %41, align 8, !tbaa !21
  %46 = getelementptr inbounds i8, ptr %43, i64 %44
  store i8 0, ptr %46, align 1, !tbaa !17
  %47 = load i8, ptr %1, align 1, !tbaa !17
  br label %48

48:                                               ; preds = %37, %48
  %49 = phi i64 [ %44, %37 ], [ %50, %48 ]
  %50 = add nsw i64 %49, -1
  %51 = and i64 %50, 4294967295
  %52 = getelementptr inbounds i8, ptr %43, i64 %51
  store i8 %47, ptr %52, align 1, !tbaa !17
  %53 = trunc i64 %49 to i32
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %48, label %59, !llvm.loop !30

55:                                               ; preds = %35, %55
  %56 = phi i32 [ %57, %55 ], [ %3, %35 ]
  tail call void @Perl_sv_catpvn_flags(ptr noundef nonnull %9, ptr noundef %1, i64 noundef %2, i32 noundef 2) #14
  %57 = add nsw i32 %56, -1
  %58 = icmp ugt i32 %56, 1
  br i1 %58, label %55, label %59, !llvm.loop !31

59:                                               ; preds = %55, %48, %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !32
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !32
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #14
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DD_dump(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i64 noundef %23) unnamed_addr #0 {
  %25 = alloca [128 x i8], align 16
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %25) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #15
  %34 = icmp eq ptr %0, null
  br i1 %34, label %1614, label %35

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !14
  %38 = and i32 %37, 255
  %39 = icmp ugt i32 %38, 2
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load ptr, ptr %3, align 8, !tbaa !20
  %42 = getelementptr inbounds %struct.xpv, ptr %41, i64 0, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.xpv, ptr %41, i64 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !21
  %46 = sub i64 %43, %45
  %47 = icmp ult i64 %46, 42
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = mul i64 %45, 3
  %50 = lshr i64 %49, 1
  %51 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %3, i64 noundef %50) #14
  br label %52

52:                                               ; preds = %48, %40, %35
  %53 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !14
  %55 = and i32 %54, 255
  %56 = and i32 %54, 2097152
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #14
  %60 = load i32, ptr %53, align 4, !tbaa !14
  br label %61

61:                                               ; preds = %58, %52
  %62 = phi i32 [ %60, %58 ], [ %54, %52 ]
  %63 = and i32 %62, 2048
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %1188, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !17
  %68 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !14
  %70 = and i32 %69, 1048576
  %71 = icmp ne i32 %70, 0
  %72 = icmp ne ptr %13, null
  %73 = and i1 %72, %71
  br i1 %73, label %74, label %423

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !14
  %77 = and i32 %76, 1024
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %423, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %13, align 8, !tbaa !20
  %81 = getelementptr inbounds %struct.xpv, ptr %80, i64 0, i32 2
  %82 = load i64, ptr %81, align 8, !tbaa !21
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %423, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %67, align 8, !tbaa !20
  %86 = load ptr, ptr %85, align 8, !tbaa !33
  %87 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !17
  %89 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef %86, ptr noundef %88, i64 noundef %82, i32 noundef -1, i32 noundef 0) #14
  %90 = icmp eq ptr %89, null
  br i1 %90, label %423, label %91

91:                                               ; preds = %84
  %92 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  tail call void @Perl_push_scope() #14
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #14
  %93 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !16
  store i64 %93, ptr @PL_tmps_floor, align 8, !tbaa !16
  %94 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %95 = getelementptr inbounds i32, ptr %94, i64 1
  store ptr %95, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %96 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !5
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = tail call ptr @Perl_markstack_grow() #14
  br label %100

100:                                              ; preds = %91, %98
  %101 = phi ptr [ %99, %98 ], [ %95, %91 ]
  %102 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %103 = ptrtoint ptr %92 to i64
  %104 = ptrtoint ptr %102 to i64
  %105 = sub i64 %103, %104
  %106 = lshr exact i64 %105, 3
  %107 = trunc i64 %106 to i32
  store i32 %107, ptr %101, align 4, !tbaa !9
  %108 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %109 = ptrtoint ptr %108 to i64
  %110 = sub i64 %109, %103
  %111 = icmp slt i64 %110, 8
  br i1 %111, label %112, label %114

112:                                              ; preds = %100
  %113 = tail call ptr @Perl_stack_grow(ptr noundef %92, ptr noundef %92, i64 noundef 1) #14
  br label %114

114:                                              ; preds = %100, %112
  %115 = phi ptr [ %113, %112 ], [ %92, %100 ]
  %116 = getelementptr inbounds ptr, ptr %115, i64 1
  store ptr %0, ptr %116, align 8, !tbaa !5
  store ptr %116, ptr @PL_stack_sp, align 8, !tbaa !5
  %117 = load ptr, ptr %87, align 8, !tbaa !17
  %118 = tail call i32 @Perl_call_method(ptr noundef %117, i32 noundef 13) #14
  %119 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %120 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  %121 = getelementptr inbounds %struct.gv, ptr %120, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !17
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %142

125:                                              ; preds = %114
  %126 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %120, i32 noundef 0) #14
  %127 = getelementptr inbounds %struct.gv, ptr %126, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !17
  %129 = load ptr, ptr %128, align 8, !tbaa !5
  %130 = icmp eq ptr %129, null
  br i1 %130, label %417, label %131

131:                                              ; preds = %125
  %132 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  %133 = getelementptr inbounds %struct.gv, ptr %132, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !17
  %135 = load ptr, ptr %134, align 8, !tbaa !5
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %132, i32 noundef 0) #14
  %139 = getelementptr inbounds %struct.gv, ptr %138, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !17
  %141 = load ptr, ptr %140, align 8, !tbaa !5
  br label %142

142:                                              ; preds = %114, %131, %137
  %143 = phi ptr [ %141, %137 ], [ %135, %131 ], [ %123, %114 ]
  %144 = getelementptr inbounds %struct.sv, ptr %143, i64 0, i32 2
  %145 = load i32, ptr %144, align 4, !tbaa !14
  %146 = and i32 %145, 2097152
  %147 = icmp eq i32 %146, 0
  %148 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  %149 = getelementptr inbounds %struct.gv, ptr %148, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !17
  %151 = load ptr, ptr %150, align 8, !tbaa !5
  %152 = icmp eq ptr %151, null
  br i1 %147, label %162, label %153

153:                                              ; preds = %142
  br i1 %152, label %154, label %159

154:                                              ; preds = %153
  %155 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %148, i32 noundef 0) #14
  %156 = getelementptr inbounds %struct.gv, ptr %155, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !17
  %158 = load ptr, ptr %157, align 8, !tbaa !5
  br label %159

159:                                              ; preds = %153, %154
  %160 = phi ptr [ %158, %154 ], [ %151, %153 ]
  %161 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %160, i32 noundef 2) #14
  br i1 %161, label %404, label %417

162:                                              ; preds = %142
  br i1 %152, label %163, label %169

163:                                              ; preds = %162
  %164 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %148, i32 noundef 0) #14
  %165 = getelementptr inbounds %struct.gv, ptr %164, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !17
  %167 = load ptr, ptr %166, align 8, !tbaa !5
  %168 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  br label %169

169:                                              ; preds = %162, %163
  %170 = phi ptr [ %168, %163 ], [ %148, %162 ]
  %171 = phi ptr [ %167, %163 ], [ %151, %162 ]
  %172 = getelementptr inbounds %struct.sv, ptr %171, i64 0, i32 2
  %173 = load i32, ptr %172, align 4, !tbaa !14
  %174 = and i32 %173, 65280
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %212

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.gv, ptr %170, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !17
  %179 = load ptr, ptr %178, align 8, !tbaa !5
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %170, i32 noundef 0) #14
  %183 = getelementptr inbounds %struct.gv, ptr %182, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !17
  %185 = load ptr, ptr %184, align 8, !tbaa !5
  %186 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  br label %187

187:                                              ; preds = %176, %181
  %188 = phi ptr [ %186, %181 ], [ %170, %176 ]
  %189 = phi ptr [ %185, %181 ], [ %179, %176 ]
  %190 = getelementptr inbounds %struct.sv, ptr %189, i64 0, i32 2
  %191 = load i32, ptr %190, align 4, !tbaa !14
  %192 = and i32 %191, 255
  %193 = icmp eq i32 %192, 8
  br i1 %193, label %212, label %194

194:                                              ; preds = %187
  %195 = getelementptr inbounds %struct.gv, ptr %188, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !17
  %197 = load ptr, ptr %196, align 8, !tbaa !5
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %188, i32 noundef 0) #14
  %201 = getelementptr inbounds %struct.gv, ptr %200, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !17
  %203 = load ptr, ptr %202, align 8, !tbaa !5
  br label %204

204:                                              ; preds = %194, %199
  %205 = phi ptr [ %203, %199 ], [ %197, %194 ]
  %206 = getelementptr inbounds %struct.sv, ptr %205, i64 0, i32 2
  %207 = load i32, ptr %206, align 4, !tbaa !14
  %208 = and i32 %207, 16826623
  %209 = icmp eq i32 %208, 16777226
  br i1 %209, label %210, label %417

210:                                              ; preds = %204
  %211 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  br label %212

212:                                              ; preds = %210, %187, %169
  %213 = phi ptr [ %211, %210 ], [ %188, %187 ], [ %170, %169 ]
  %214 = getelementptr inbounds %struct.gv, ptr %213, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !17
  %216 = load ptr, ptr %215, align 8, !tbaa !5
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %223

218:                                              ; preds = %212
  %219 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %213, i32 noundef 0) #14
  %220 = getelementptr inbounds %struct.gv, ptr %219, i64 0, i32 3
  %221 = load ptr, ptr %220, align 8, !tbaa !17
  %222 = load ptr, ptr %221, align 8, !tbaa !5
  br label %223

223:                                              ; preds = %212, %218
  %224 = phi ptr [ %222, %218 ], [ %216, %212 ]
  %225 = getelementptr inbounds %struct.sv, ptr %224, i64 0, i32 2
  %226 = load i32, ptr %225, align 4, !tbaa !14
  %227 = and i32 %226, 1024
  %228 = icmp eq i32 %227, 0
  %229 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  %230 = getelementptr inbounds %struct.gv, ptr %229, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !17
  %232 = load ptr, ptr %231, align 8, !tbaa !5
  %233 = icmp eq ptr %232, null
  br i1 %228, label %295, label %234

234:                                              ; preds = %223
  br i1 %233, label %235, label %240

235:                                              ; preds = %234
  %236 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %229, i32 noundef 0) #14
  %237 = getelementptr inbounds %struct.gv, ptr %236, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !17
  %239 = load ptr, ptr %238, align 8, !tbaa !5
  br label %240

240:                                              ; preds = %234, %235
  %241 = phi ptr [ %239, %235 ], [ %232, %234 ]
  %242 = load ptr, ptr %241, align 8, !tbaa !20
  %243 = icmp eq ptr %242, null
  br i1 %243, label %417, label %244

244:                                              ; preds = %240
  %245 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  %246 = getelementptr inbounds %struct.gv, ptr %245, i64 0, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !17
  %248 = load ptr, ptr %247, align 8, !tbaa !5
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  %251 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %245, i32 noundef 0) #14
  %252 = getelementptr inbounds %struct.gv, ptr %251, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !17
  %254 = load ptr, ptr %253, align 8, !tbaa !5
  br label %255

255:                                              ; preds = %244, %250
  %256 = phi ptr [ %254, %250 ], [ %248, %244 ]
  %257 = load ptr, ptr %256, align 8, !tbaa !20
  %258 = getelementptr inbounds %struct.xpv, ptr %257, i64 0, i32 2
  %259 = load i64, ptr %258, align 8, !tbaa !21
  %260 = icmp ugt i64 %259, 1
  br i1 %260, label %404, label %261

261:                                              ; preds = %255
  %262 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  %263 = getelementptr inbounds %struct.gv, ptr %262, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !17
  %265 = load ptr, ptr %264, align 8, !tbaa !5
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %272

267:                                              ; preds = %261
  %268 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %262, i32 noundef 0) #14
  %269 = getelementptr inbounds %struct.gv, ptr %268, i64 0, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !17
  %271 = load ptr, ptr %270, align 8, !tbaa !5
  br label %272

272:                                              ; preds = %261, %267
  %273 = phi ptr [ %271, %267 ], [ %265, %261 ]
  %274 = load ptr, ptr %273, align 8, !tbaa !20
  %275 = getelementptr inbounds %struct.xpv, ptr %274, i64 0, i32 2
  %276 = load i64, ptr %275, align 8, !tbaa !21
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %417, label %278

278:                                              ; preds = %272
  %279 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  %280 = getelementptr inbounds %struct.gv, ptr %279, i64 0, i32 3
  %281 = load ptr, ptr %280, align 8, !tbaa !17
  %282 = load ptr, ptr %281, align 8, !tbaa !5
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %289

284:                                              ; preds = %278
  %285 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %279, i32 noundef 0) #14
  %286 = getelementptr inbounds %struct.gv, ptr %285, i64 0, i32 3
  %287 = load ptr, ptr %286, align 8, !tbaa !17
  %288 = load ptr, ptr %287, align 8, !tbaa !5
  br label %289

289:                                              ; preds = %278, %284
  %290 = phi ptr [ %288, %284 ], [ %282, %278 ]
  %291 = getelementptr inbounds %struct.sv, ptr %290, i64 0, i32 3
  %292 = load ptr, ptr %291, align 8, !tbaa !17
  %293 = load i8, ptr %292, align 1, !tbaa !17
  %294 = icmp eq i8 %293, 48
  br i1 %294, label %417, label %404

295:                                              ; preds = %223
  br i1 %233, label %296, label %301

296:                                              ; preds = %295
  %297 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %229, i32 noundef 0) #14
  %298 = getelementptr inbounds %struct.gv, ptr %297, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !17
  %300 = load ptr, ptr %299, align 8, !tbaa !5
  br label %301

301:                                              ; preds = %295, %296
  %302 = phi ptr [ %300, %296 ], [ %232, %295 ]
  %303 = getelementptr inbounds %struct.sv, ptr %302, i64 0, i32 2
  %304 = load i32, ptr %303, align 4, !tbaa !14
  %305 = and i32 %304, 768
  %306 = icmp eq i32 %305, 0
  %307 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  %308 = getelementptr inbounds %struct.gv, ptr %307, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8, !tbaa !17
  %310 = load ptr, ptr %309, align 8, !tbaa !5
  %311 = icmp eq ptr %310, null
  br i1 %306, label %395, label %312

312:                                              ; preds = %301
  br i1 %311, label %313, label %319

313:                                              ; preds = %312
  %314 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %307, i32 noundef 0) #14
  %315 = getelementptr inbounds %struct.gv, ptr %314, i64 0, i32 3
  %316 = load ptr, ptr %315, align 8, !tbaa !17
  %317 = load ptr, ptr %316, align 8, !tbaa !5
  %318 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  br label %319

319:                                              ; preds = %312, %313
  %320 = phi ptr [ %318, %313 ], [ %307, %312 ]
  %321 = phi ptr [ %317, %313 ], [ %310, %312 ]
  %322 = getelementptr inbounds %struct.sv, ptr %321, i64 0, i32 2
  %323 = load i32, ptr %322, align 4, !tbaa !14
  %324 = and i32 %323, 256
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %344, label %326

326:                                              ; preds = %319
  %327 = getelementptr inbounds %struct.gv, ptr %320, i64 0, i32 3
  %328 = load ptr, ptr %327, align 8, !tbaa !17
  %329 = load ptr, ptr %328, align 8, !tbaa !5
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %336

331:                                              ; preds = %326
  %332 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %320, i32 noundef 0) #14
  %333 = getelementptr inbounds %struct.gv, ptr %332, i64 0, i32 3
  %334 = load ptr, ptr %333, align 8, !tbaa !17
  %335 = load ptr, ptr %334, align 8, !tbaa !5
  br label %336

336:                                              ; preds = %326, %331
  %337 = phi ptr [ %335, %331 ], [ %329, %326 ]
  %338 = load ptr, ptr %337, align 8, !tbaa !20
  %339 = getelementptr inbounds %struct.xpviv, ptr %338, i64 0, i32 4
  %340 = load i64, ptr %339, align 8, !tbaa !17
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %342, label %404

342:                                              ; preds = %336
  %343 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  br label %344

344:                                              ; preds = %342, %319
  %345 = phi ptr [ %343, %342 ], [ %320, %319 ]
  %346 = getelementptr inbounds %struct.gv, ptr %345, i64 0, i32 3
  %347 = load ptr, ptr %346, align 8, !tbaa !17
  %348 = load ptr, ptr %347, align 8, !tbaa !5
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %355

350:                                              ; preds = %344
  %351 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %345, i32 noundef 0) #14
  %352 = getelementptr inbounds %struct.gv, ptr %351, i64 0, i32 3
  %353 = load ptr, ptr %352, align 8, !tbaa !17
  %354 = load ptr, ptr %353, align 8, !tbaa !5
  br label %355

355:                                              ; preds = %344, %350
  %356 = phi ptr [ %354, %350 ], [ %348, %344 ]
  %357 = getelementptr inbounds %struct.sv, ptr %356, i64 0, i32 2
  %358 = load i32, ptr %357, align 4, !tbaa !14
  %359 = and i32 %358, 512
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %417, label %361

361:                                              ; preds = %355
  %362 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  %363 = getelementptr inbounds %struct.gv, ptr %362, i64 0, i32 3
  %364 = load ptr, ptr %363, align 8, !tbaa !17
  %365 = load ptr, ptr %364, align 8, !tbaa !5
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %372

367:                                              ; preds = %361
  %368 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %362, i32 noundef 0) #14
  %369 = getelementptr inbounds %struct.gv, ptr %368, i64 0, i32 3
  %370 = load ptr, ptr %369, align 8, !tbaa !17
  %371 = load ptr, ptr %370, align 8, !tbaa !5
  br label %372

372:                                              ; preds = %361, %367
  %373 = phi ptr [ %371, %367 ], [ %365, %361 ]
  %374 = load ptr, ptr %373, align 8, !tbaa !20
  %375 = getelementptr inbounds %struct.xpvnv, ptr %374, i64 0, i32 5
  %376 = load double, ptr %375, align 8, !tbaa !17
  %377 = fcmp uno double %376, 0.000000e+00
  br i1 %377, label %404, label %378

378:                                              ; preds = %372
  %379 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  %380 = getelementptr inbounds %struct.gv, ptr %379, i64 0, i32 3
  %381 = load ptr, ptr %380, align 8, !tbaa !17
  %382 = load ptr, ptr %381, align 8, !tbaa !5
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %389

384:                                              ; preds = %378
  %385 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %379, i32 noundef 0) #14
  %386 = getelementptr inbounds %struct.gv, ptr %385, i64 0, i32 3
  %387 = load ptr, ptr %386, align 8, !tbaa !17
  %388 = load ptr, ptr %387, align 8, !tbaa !5
  br label %389

389:                                              ; preds = %378, %384
  %390 = phi ptr [ %388, %384 ], [ %382, %378 ]
  %391 = load ptr, ptr %390, align 8, !tbaa !20
  %392 = getelementptr inbounds %struct.xpvnv, ptr %391, i64 0, i32 5
  %393 = load double, ptr %392, align 8, !tbaa !17
  %394 = fcmp une double %393, 0.000000e+00
  br i1 %394, label %404, label %417

395:                                              ; preds = %301
  br i1 %311, label %396, label %401

396:                                              ; preds = %395
  %397 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %307, i32 noundef 0) #14
  %398 = getelementptr inbounds %struct.gv, ptr %397, i64 0, i32 3
  %399 = load ptr, ptr %398, align 8, !tbaa !17
  %400 = load ptr, ptr %399, align 8, !tbaa !5
  br label %401

401:                                              ; preds = %395, %396
  %402 = phi ptr [ %400, %396 ], [ %310, %395 ]
  %403 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %402, i32 noundef 0) #14
  br i1 %403, label %404, label %417

404:                                              ; preds = %401, %389, %372, %336, %289, %255, %159
  %405 = load ptr, ptr @PL_errgv, align 8, !tbaa !5
  %406 = getelementptr inbounds %struct.gv, ptr %405, i64 0, i32 3
  %407 = load ptr, ptr %406, align 8, !tbaa !17
  %408 = load ptr, ptr %407, align 8, !tbaa !5
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %415

410:                                              ; preds = %404
  %411 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %405, i32 noundef 0) #14
  %412 = getelementptr inbounds %struct.gv, ptr %411, i64 0, i32 3
  %413 = load ptr, ptr %412, align 8, !tbaa !17
  %414 = load ptr, ptr %413, align 8, !tbaa !5
  br label %415

415:                                              ; preds = %404, %410
  %416 = phi ptr [ %414, %410 ], [ %408, %404 ]
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.37, ptr noundef %416) #14
  br label %417

417:                                              ; preds = %204, %125, %415, %401, %389, %355, %289, %272, %240, %159
  store ptr %119, ptr @PL_stack_sp, align 8, !tbaa !5
  %418 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !16
  %419 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !16
  %420 = icmp sgt i64 %418, %419
  br i1 %420, label %421, label %422

421:                                              ; preds = %417
  tail call void @Perl_free_tmps() #14
  br label %422

422:                                              ; preds = %421, %417
  tail call void @Perl_pop_scope() #14
  br label %423

423:                                              ; preds = %422, %84, %79, %74, %65
  %424 = load ptr, ptr %66, align 8, !tbaa !17
  %425 = getelementptr inbounds %struct.sv, ptr %424, i64 0, i32 2
  %426 = load i32, ptr %425, align 4, !tbaa !14
  %427 = and i32 %426, 255
  %428 = ptrtoint ptr %424 to i64
  store i64 %428, ptr %26, align 8, !tbaa !16
  %429 = and i32 %426, 1048576
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %458, label %431

431:                                              ; preds = %423
  %432 = load ptr, ptr %424, align 8, !tbaa !20
  %433 = load ptr, ptr %432, align 8, !tbaa !33
  %434 = getelementptr inbounds %struct.hv, ptr %433, i64 0, i32 2
  %435 = load i32, ptr %434, align 4, !tbaa !18
  %436 = and i32 %435, 33554432
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %458, label %438

438:                                              ; preds = %431
  %439 = getelementptr inbounds %struct.hv, ptr %433, i64 0, i32 3
  %440 = load ptr, ptr %439, align 8, !tbaa !17
  %441 = load ptr, ptr %433, align 8, !tbaa !35
  %442 = getelementptr inbounds %struct.xpvhv, ptr %441, i64 0, i32 3
  %443 = load i64, ptr %442, align 8, !tbaa !36
  %444 = getelementptr ptr, ptr %440, i64 %443
  %445 = getelementptr ptr, ptr %444, i64 1
  %446 = load ptr, ptr %445, align 8, !tbaa !17
  %447 = icmp eq ptr %446, null
  br i1 %447, label %458, label %448

448:                                              ; preds = %438
  %449 = getelementptr i8, ptr %444, i64 36
  %450 = load i32, ptr %449, align 4, !tbaa !38
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %455, label %452

452:                                              ; preds = %448
  %453 = load ptr, ptr %446, align 8, !tbaa !17
  %454 = icmp eq ptr %453, null
  br i1 %454, label %458, label %455

455:                                              ; preds = %448, %452
  %456 = phi ptr [ %453, %452 ], [ %446, %448 ]
  %457 = getelementptr inbounds %struct.hek, ptr %456, i64 0, i32 2
  br label %458

458:                                              ; preds = %423, %455, %452, %438, %431
  %459 = phi ptr [ %457, %455 ], [ null, %452 ], [ null, %438 ], [ null, %431 ], [ null, %423 ]
  %460 = icmp eq i64 %2, 0
  br i1 %460, label %534, label %461

461:                                              ; preds = %458
  %462 = call ptr @Perl_hv_common_key_len(ptr noundef %4, ptr noundef nonnull %26, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %463 = icmp eq ptr %462, null
  br i1 %463, label %513, label %464

464:                                              ; preds = %461
  %465 = load ptr, ptr %462, align 8, !tbaa !5
  %466 = icmp eq ptr %465, null
  br i1 %466, label %513, label %467

467:                                              ; preds = %464
  %468 = getelementptr inbounds %struct.sv, ptr %465, i64 0, i32 2
  %469 = load i32, ptr %468, align 4, !tbaa !14
  %470 = and i32 %469, 2048
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %513, label %472

472:                                              ; preds = %467
  %473 = getelementptr inbounds %struct.sv, ptr %465, i64 0, i32 3
  %474 = load ptr, ptr %473, align 8, !tbaa !17
  %475 = icmp eq ptr %474, null
  br i1 %475, label %513, label %476

476:                                              ; preds = %472
  %477 = call ptr @Perl_av_fetch(ptr noundef nonnull %474, i64 noundef 0, i32 noundef 0) #14
  %478 = icmp eq ptr %477, null
  br i1 %478, label %512, label %479

479:                                              ; preds = %476
  %480 = load ptr, ptr %477, align 8, !tbaa !5
  %481 = icmp eq ptr %480, null
  br i1 %481, label %512, label %482

482:                                              ; preds = %479
  %483 = icmp eq i32 %15, 0
  br i1 %483, label %494, label %484

484:                                              ; preds = %482
  %485 = load i32, ptr %6, align 4, !tbaa !9
  %486 = icmp sgt i32 %485, 0
  br i1 %486, label %487, label %494

487:                                              ; preds = %484
  %488 = trunc i32 %426 to i8
  switch i8 %488, label %491 [
    i8 12, label %489
    i8 11, label %490
  ]

489:                                              ; preds = %487
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.38, i64 noundef 2, i32 noundef 2) #14
  br label %492

490:                                              ; preds = %487
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.39, i64 noundef 2, i32 noundef 2) #14
  br label %492

491:                                              ; preds = %487
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.40, i64 noundef 9, i32 noundef 2) #14
  br label %492

492:                                              ; preds = %490, %491, %489
  %493 = call ptr @Perl_newSVpvn(ptr noundef %1, i64 noundef %2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %493, ptr noundef nonnull @.str.34, i64 noundef 3, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %493, ptr noundef nonnull %480, i32 noundef 2) #14
  call void @Perl_av_push(ptr noundef %5, ptr noundef %493) #14
  br label %1614

494:                                              ; preds = %484, %482
  %495 = load i8, ptr %1, align 1, !tbaa !17
  switch i8 %495, label %511 [
    i8 64, label %496
    i8 37, label %496
  ]

496:                                              ; preds = %494, %494
  %497 = getelementptr inbounds %struct.sv, ptr %480, i64 0, i32 3
  %498 = load ptr, ptr %497, align 8, !tbaa !17
  %499 = load i8, ptr %498, align 1, !tbaa !17
  %500 = icmp eq i8 %499, 92
  br i1 %500, label %501, label %510

501:                                              ; preds = %496
  %502 = getelementptr inbounds i8, ptr %498, i64 1
  %503 = load i8, ptr %502, align 1, !tbaa !17
  %504 = icmp eq i8 %503, %495
  br i1 %504, label %505, label %510

505:                                              ; preds = %501
  %506 = load ptr, ptr %480, align 8, !tbaa !20
  %507 = getelementptr inbounds %struct.xpv, ptr %506, i64 0, i32 2
  %508 = load i64, ptr %507, align 8, !tbaa !21
  %509 = add i64 %508, -1
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull %502, i64 noundef %509, i32 noundef 2) #14
  br label %1614

510:                                              ; preds = %501, %496
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef 1, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.41, i64 noundef 1, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef nonnull %3, ptr noundef nonnull %480, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.42, i64 noundef 1, i32 noundef 2) #14
  br label %1614

511:                                              ; preds = %494
  call void @Perl_sv_catsv_flags(ptr noundef nonnull %3, ptr noundef nonnull %480, i32 noundef 2) #14
  br label %1614

512:                                              ; preds = %479, %476
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.43, i64 noundef %428) #14
  br label %1614

513:                                              ; preds = %472, %467, %464, %461
  %514 = load i8, ptr %1, align 1, !tbaa !17
  switch i8 %514, label %517 [
    i8 64, label %515
    i8 37, label %515
  ]

515:                                              ; preds = %513, %513
  %516 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.44, i64 noundef 1) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %516, ptr noundef nonnull %1, i64 noundef %2, i32 noundef 2) #14
  br label %528

517:                                              ; preds = %513
  %518 = icmp eq i32 %427, 13
  %519 = icmp eq i8 %514, 42
  %520 = and i1 %518, %519
  br i1 %520, label %521, label %526

521:                                              ; preds = %517
  %522 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.44, i64 noundef 1) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %522, ptr noundef nonnull %1, i64 noundef %2, i32 noundef 2) #14
  %523 = getelementptr inbounds %struct.sv, ptr %522, i64 0, i32 3
  %524 = load ptr, ptr %523, align 8, !tbaa !17
  %525 = getelementptr inbounds i8, ptr %524, i64 1
  store i8 38, ptr %525, align 1, !tbaa !17
  br label %528

526:                                              ; preds = %517
  %527 = call ptr @Perl_newSVpvn(ptr noundef nonnull %1, i64 noundef %2) #14
  br label %528

528:                                              ; preds = %521, %526, %515
  %529 = phi ptr [ %516, %515 ], [ %522, %521 ], [ %527, %526 ]
  %530 = call ptr @Perl_newSV_type(i32 noundef 11) #14
  call void @Perl_av_push(ptr noundef %530, ptr noundef %529) #14
  %531 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %0) #16
  call void @Perl_av_push(ptr noundef %530, ptr noundef nonnull %0) #14
  %532 = call ptr @Perl_newRV(ptr noundef %530) #14
  %533 = call ptr @Perl_hv_common_key_len(ptr noundef %4, ptr noundef nonnull %26, i32 noundef 8, i32 noundef 36, ptr noundef %532, i32 noundef 0) #14
  call fastcc void @S_SvREFCNT_dec(ptr noundef %530) #16
  br label %534

534:                                              ; preds = %528, %458
  %535 = phi ptr [ %530, %528 ], [ null, %458 ]
  %536 = icmp ne ptr %459, null
  %537 = icmp eq i32 %427, 8
  %538 = and i1 %537, %536
  br i1 %538, label %539, label %542

539:                                              ; preds = %534
  %540 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %459, ptr noundef nonnull dereferenceable(7) @.str.45) #17
  %541 = icmp eq i32 %540, 0
  br label %542

542:                                              ; preds = %539, %534
  %543 = phi i1 [ false, %534 ], [ %541, %539 ]
  %544 = icmp eq i32 %15, 0
  %545 = icmp sgt i32 %19, 0
  %546 = and i1 %544, %545
  br i1 %546, label %547, label %564

547:                                              ; preds = %542
  %548 = load i32, ptr %6, align 4, !tbaa !9
  %549 = icmp slt i32 %548, %19
  br i1 %549, label %564, label %550

550:                                              ; preds = %547
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #15
  %551 = load i32, ptr %53, align 4, !tbaa !14
  %552 = and i32 %551, 2098176
  %553 = icmp eq i32 %552, 1024
  br i1 %553, label %554, label %559

554:                                              ; preds = %550
  %555 = load ptr, ptr %0, align 8, !tbaa !20
  %556 = getelementptr inbounds %struct.xpv, ptr %555, i64 0, i32 2
  %557 = load i64, ptr %556, align 8, !tbaa !21
  store i64 %557, ptr %27, align 8, !tbaa !16
  %558 = load ptr, ptr %66, align 8, !tbaa !17
  br label %561

559:                                              ; preds = %550
  %560 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %27, i32 noundef 2) #14
  br label %561

561:                                              ; preds = %559, %554
  %562 = phi ptr [ %558, %554 ], [ %560, %559 ]
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.46, i64 noundef 1, i32 noundef 2) #14
  %563 = load i64, ptr %27, align 8, !tbaa !16
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef %562, i64 noundef %563, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.46, i64 noundef 1, i32 noundef 2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #15
  br label %1614

564:                                              ; preds = %547, %542
  %565 = icmp sgt i64 %23, 0
  br i1 %565, label %566, label %571

566:                                              ; preds = %564
  %567 = load i32, ptr %6, align 4, !tbaa !9
  %568 = sext i32 %567 to i64
  %569 = icmp slt i64 %568, %23
  br i1 %569, label %571, label %570

570:                                              ; preds = %566
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, i64 noundef %23) #14
  br label %571

571:                                              ; preds = %570, %566, %564
  %572 = xor i1 %536, true
  %573 = select i1 %572, i1 true, i1 %543
  br i1 %573, label %600, label %574

574:                                              ; preds = %571
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #15
  %575 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %576 = load i32, ptr %575, align 4, !tbaa !14
  %577 = and i32 %576, 2098176
  %578 = icmp eq i32 %577, 1024
  br i1 %578, label %579, label %585

579:                                              ; preds = %574
  %580 = load ptr, ptr %18, align 8, !tbaa !20
  %581 = getelementptr inbounds %struct.xpv, ptr %580, i64 0, i32 2
  %582 = load i64, ptr %581, align 8, !tbaa !21
  store i64 %582, ptr %28, align 8, !tbaa !16
  %583 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %584 = load ptr, ptr %583, align 8, !tbaa !17
  br label %588

585:                                              ; preds = %574
  %586 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %18, ptr noundef nonnull %28, i32 noundef 2) #14
  %587 = load i64, ptr %28, align 8, !tbaa !16
  br label %588

588:                                              ; preds = %585, %579
  %589 = phi i64 [ %582, %579 ], [ %587, %585 ]
  %590 = phi ptr [ %584, %579 ], [ %586, %585 ]
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef %590, i64 noundef %589, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.48, i64 noundef 2, i32 noundef 2) #14
  %591 = icmp sgt i32 %7, 1
  br i1 %591, label %592, label %598

592:                                              ; preds = %588
  %593 = call ptr @Perl_newSVsv(ptr noundef %10) #14
  %594 = load i64, ptr %28, align 8, !tbaa !16
  %595 = trunc i64 %594 to i32
  %596 = add i32 %595, 2
  %597 = call fastcc ptr @sv_x(ptr noundef %593, ptr noundef nonnull @.str.33, i64 noundef 1, i32 noundef %596) #16
  br label %598

598:                                              ; preds = %592, %588
  %599 = phi ptr [ %593, %592 ], [ %10, %588 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #15
  br label %600

600:                                              ; preds = %571, %598
  %601 = phi ptr [ %599, %598 ], [ %10, %571 ]
  %602 = load i32, ptr %6, align 4, !tbaa !9
  %603 = add nsw i32 %602, 1
  store i32 %603, ptr %6, align 4, !tbaa !9
  %604 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %605 = load ptr, ptr %604, align 8, !tbaa !17
  %606 = load ptr, ptr %9, align 8, !tbaa !20
  %607 = getelementptr inbounds %struct.xpv, ptr %606, i64 0, i32 2
  %608 = load i64, ptr %607, align 8, !tbaa !21
  %609 = call fastcc ptr @sv_x(ptr noundef null, ptr noundef %605, i64 noundef %608, i32 noundef %603) #16
  br i1 %538, label %610, label %708

610:                                              ; preds = %600
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #15
  %611 = call ptr @Perl_get_cv(ptr noundef nonnull @.str.49, i32 noundef 0) #14
  %612 = icmp eq ptr %611, null
  br i1 %612, label %662, label %613

613:                                              ; preds = %610
  %614 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  call void @Perl_push_scope() #14
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #14
  %615 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !16
  store i64 %615, ptr @PL_tmps_floor, align 8, !tbaa !16
  %616 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %617 = getelementptr inbounds i32, ptr %616, i64 1
  store ptr %617, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %618 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !5
  %619 = icmp eq ptr %617, %618
  br i1 %619, label %620, label %622

620:                                              ; preds = %613
  %621 = call ptr @Perl_markstack_grow() #14
  br label %622

622:                                              ; preds = %613, %620
  %623 = phi ptr [ %621, %620 ], [ %617, %613 ]
  %624 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %625 = ptrtoint ptr %614 to i64
  %626 = ptrtoint ptr %624 to i64
  %627 = sub i64 %625, %626
  %628 = lshr exact i64 %627, 3
  %629 = trunc i64 %628 to i32
  store i32 %629, ptr %623, align 4, !tbaa !9
  %630 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %631 = ptrtoint ptr %630 to i64
  %632 = sub i64 %631, %625
  %633 = icmp slt i64 %632, 8
  br i1 %633, label %634, label %636

634:                                              ; preds = %622
  %635 = call ptr @Perl_stack_grow(ptr noundef %614, ptr noundef %614, i64 noundef 1) #14
  br label %636

636:                                              ; preds = %622, %634
  %637 = phi ptr [ %635, %634 ], [ %614, %622 ]
  %638 = getelementptr inbounds ptr, ptr %637, i64 1
  store ptr %0, ptr %638, align 8, !tbaa !5
  store ptr %638, ptr @PL_stack_sp, align 8, !tbaa !5
  %639 = call i32 @Perl_call_sv(ptr noundef nonnull %611, i32 noundef 3) #14
  %640 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %641 = icmp sgt i32 %639, 1
  br i1 %641, label %642, label %649

642:                                              ; preds = %636
  %643 = getelementptr inbounds ptr, ptr %640, i64 -1
  %644 = load ptr, ptr %640, align 8, !tbaa !5
  %645 = getelementptr inbounds ptr, ptr %640, i64 -2
  %646 = load ptr, ptr %643, align 8, !tbaa !5
  %647 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %644) #16
  %648 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %646) #16
  br label %649

649:                                              ; preds = %642, %636
  %650 = phi ptr [ %645, %642 ], [ %640, %636 ]
  %651 = phi ptr [ %644, %642 ], [ null, %636 ]
  %652 = phi ptr [ %646, %642 ], [ null, %636 ]
  store ptr %650, ptr @PL_stack_sp, align 8, !tbaa !5
  %653 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !16
  %654 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !16
  %655 = icmp sgt i64 %653, %654
  br i1 %655, label %656, label %657

656:                                              ; preds = %649
  call void @Perl_free_tmps() #14
  br label %657

657:                                              ; preds = %656, %649
  call void @Perl_pop_scope() #14
  %658 = icmp eq ptr %652, null
  br i1 %658, label %662, label %659

659:                                              ; preds = %657
  %660 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %652) #14
  %661 = call ptr @Perl_sv_2mortal(ptr noundef %651) #14
  br label %662

662:                                              ; preds = %610, %657, %659
  %663 = phi ptr [ %651, %659 ], [ %651, %657 ], [ null, %610 ]
  %664 = phi ptr [ %652, %659 ], [ null, %657 ], [ %0, %610 ]
  %665 = getelementptr inbounds %struct.sv, ptr %664, i64 0, i32 2
  %666 = load i32, ptr %665, align 4, !tbaa !14
  %667 = and i32 %666, 2098176
  %668 = icmp eq i32 %667, 1024
  br i1 %668, label %669, label %675

669:                                              ; preds = %662
  %670 = load ptr, ptr %664, align 8, !tbaa !20
  %671 = getelementptr inbounds %struct.xpv, ptr %670, i64 0, i32 2
  %672 = load i64, ptr %671, align 8, !tbaa !21
  store i64 %672, ptr %29, align 8, !tbaa !16
  %673 = getelementptr inbounds %struct.sv, ptr %664, i64 0, i32 3
  %674 = load ptr, ptr %673, align 8, !tbaa !17
  br label %678

675:                                              ; preds = %662
  %676 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %664, ptr noundef nonnull %29, i32 noundef 2) #14
  %677 = load i64, ptr %29, align 8, !tbaa !16
  br label %678

678:                                              ; preds = %675, %669
  %679 = phi i64 [ %672, %669 ], [ %677, %675 ]
  %680 = phi ptr [ %674, %669 ], [ %676, %675 ]
  %681 = getelementptr inbounds i8, ptr %680, i64 %679
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.50, i64 noundef 3, i32 noundef 2) #14
  %682 = icmp sgt i64 %679, 0
  br i1 %682, label %683, label %702

683:                                              ; preds = %678, %697
  %684 = phi ptr [ %699, %697 ], [ %680, %678 ]
  %685 = phi ptr [ %700, %697 ], [ %680, %678 ]
  %686 = load i8, ptr %685, align 1, !tbaa !17
  switch i8 %686, label %697 [
    i8 92, label %687
    i8 47, label %689
  ]

687:                                              ; preds = %683
  %688 = getelementptr inbounds i8, ptr %685, i64 1
  br label %697

689:                                              ; preds = %683
  %690 = ptrtoint ptr %685 to i64
  %691 = ptrtoint ptr %684 to i64
  %692 = sub i64 %690, %691
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef %684, i64 noundef %692, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.51, i64 noundef 2, i32 noundef 2) #14
  %693 = xor i64 %692, -1
  %694 = load i64, ptr %29, align 8, !tbaa !16
  %695 = add i64 %694, %693
  store i64 %695, ptr %29, align 8, !tbaa !16
  %696 = getelementptr inbounds i8, ptr %685, i64 1
  br label %697

697:                                              ; preds = %683, %689, %687
  %698 = phi ptr [ %688, %687 ], [ %685, %689 ], [ %685, %683 ]
  %699 = phi ptr [ %684, %687 ], [ %696, %689 ], [ %684, %683 ]
  %700 = getelementptr inbounds i8, ptr %698, i64 1
  %701 = icmp ult ptr %700, %681
  br i1 %701, label %683, label %702, !llvm.loop !40

702:                                              ; preds = %697, %678
  %703 = phi ptr [ %680, %678 ], [ %699, %697 ]
  %704 = load i64, ptr %29, align 8, !tbaa !16
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef %703, i64 noundef %704, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.52, i64 noundef 1, i32 noundef 2) #14
  %705 = icmp eq ptr %663, null
  br i1 %705, label %707, label %706

706:                                              ; preds = %702
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef nonnull %663, i32 noundef 2) #14
  br label %707

707:                                              ; preds = %706, %702
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #15
  br label %1151

708:                                              ; preds = %600
  %709 = icmp ult i32 %427, 8
  br i1 %709, label %710, label %724

710:                                              ; preds = %708
  %711 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.53, i64 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %711, ptr noundef %1, i64 noundef %2, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %711, ptr noundef nonnull @.str.42, i64 noundef 1, i32 noundef 2) #14
  %712 = getelementptr inbounds %struct.sv, ptr %711, i64 0, i32 3
  br i1 %536, label %713, label %718

713:                                              ; preds = %710
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.54, i64 noundef 13, i32 noundef 2) #14
  %714 = load ptr, ptr %712, align 8, !tbaa !17
  %715 = load ptr, ptr %711, align 8, !tbaa !20
  %716 = getelementptr inbounds %struct.xpv, ptr %715, i64 0, i32 2
  %717 = load i64, ptr %716, align 8, !tbaa !21
  call fastcc void @DD_dump(ptr noundef nonnull %424, ptr noundef %714, i64 noundef %717, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %601, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i64 noundef %23) #16
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.55, i64 noundef 2, i32 noundef 2) #14
  br label %723

718:                                              ; preds = %710
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.44, i64 noundef 1, i32 noundef 2) #14
  %719 = load ptr, ptr %712, align 8, !tbaa !17
  %720 = load ptr, ptr %711, align 8, !tbaa !20
  %721 = getelementptr inbounds %struct.xpv, ptr %720, i64 0, i32 2
  %722 = load i64, ptr %721, align 8, !tbaa !21
  call fastcc void @DD_dump(ptr noundef nonnull %424, ptr noundef %719, i64 noundef %722, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %601, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i64 noundef %23) #16
  br label %723

723:                                              ; preds = %718, %713
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %711) #16
  br label %1151

724:                                              ; preds = %708
  %725 = trunc i32 %426 to i8
  switch i8 %725, label %1150 [
    i8 9, label %726
    i8 11, label %733
    i8 12, label %833
    i8 13, label %1148
  ]

726:                                              ; preds = %724
  %727 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.56, i64 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %727, ptr noundef %1, i64 noundef %2, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %727, ptr noundef nonnull @.str.42, i64 noundef 1, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.44, i64 noundef 1, i32 noundef 2) #14
  %728 = getelementptr inbounds %struct.sv, ptr %727, i64 0, i32 3
  %729 = load ptr, ptr %728, align 8, !tbaa !17
  %730 = load ptr, ptr %727, align 8, !tbaa !20
  %731 = getelementptr inbounds %struct.xpv, ptr %730, i64 0, i32 2
  %732 = load i64, ptr %731, align 8, !tbaa !21
  call fastcc void @DD_dump(ptr noundef nonnull %424, ptr noundef %729, i64 noundef %732, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %601, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i64 noundef %23) #16
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %727) #16
  br label %1151

733:                                              ; preds = %724
  %734 = call i64 @Perl_av_len(ptr noundef nonnull %424) #14
  %735 = call ptr @Perl_newSViv(i64 noundef 0) #14
  %736 = add i64 %2, 28
  %737 = call ptr @Perl_safesysmalloc(i64 noundef %736) #14
  %738 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %737, ptr noundef nonnull dereferenceable(1) %1) #14
  %739 = load i8, ptr %1, align 1, !tbaa !17
  %740 = icmp eq i8 %739, 64
  br i1 %740, label %741, label %742

741:                                              ; preds = %733
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.57, i64 noundef 1, i32 noundef 2) #14
  store i8 36, ptr %737, align 1, !tbaa !17
  br label %791

742:                                              ; preds = %733
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.58, i64 noundef 1, i32 noundef 2) #14
  br i1 %460, label %765, label %743

743:                                              ; preds = %742
  %744 = getelementptr i8, ptr %1, i64 %2
  %745 = getelementptr i8, ptr %744, i64 -1
  %746 = load i8, ptr %745, align 1, !tbaa !17
  switch i8 %746, label %760 [
    i8 93, label %747
    i8 125, label %747
  ]

747:                                              ; preds = %743, %743
  %748 = icmp ugt i64 %2, 4
  br i1 %748, label %749, label %765

749:                                              ; preds = %747
  %750 = getelementptr inbounds i8, ptr %1, i64 1
  %751 = load i8, ptr %750, align 1, !tbaa !17
  %752 = icmp eq i8 %751, 123
  br i1 %752, label %760, label %753

753:                                              ; preds = %749
  %754 = load i8, ptr %1, align 1, !tbaa !17
  %755 = icmp eq i8 %754, 92
  br i1 %755, label %756, label %765

756:                                              ; preds = %753
  %757 = getelementptr inbounds i8, ptr %1, i64 2
  %758 = load i8, ptr %757, align 1, !tbaa !17
  %759 = icmp eq i8 %758, 123
  br i1 %759, label %760, label %765

760:                                              ; preds = %743, %756, %749
  %761 = getelementptr inbounds i8, ptr %737, i64 %2
  store i8 45, ptr %761, align 1, !tbaa !17
  %762 = add i64 %2, 2
  %763 = getelementptr i8, ptr %761, i64 1
  store i8 62, ptr %763, align 1, !tbaa !17
  %764 = getelementptr inbounds i8, ptr %737, i64 %762
  store i8 0, ptr %764, align 1, !tbaa !17
  br label %765

765:                                              ; preds = %742, %747, %753, %756, %760
  %766 = phi i64 [ %2, %747 ], [ %2, %753 ], [ %2, %756 ], [ %762, %760 ], [ 0, %742 ]
  %767 = load i8, ptr %737, align 1, !tbaa !17
  %768 = icmp eq i8 %767, 42
  br i1 %768, label %769, label %791

769:                                              ; preds = %765
  %770 = getelementptr i8, ptr %737, i64 %766
  %771 = getelementptr i8, ptr %770, i64 -1
  %772 = load i8, ptr %771, align 1, !tbaa !17
  %773 = icmp eq i8 %772, 125
  %774 = icmp ugt i64 %766, 7
  %775 = and i1 %774, %773
  br i1 %775, label %776, label %791

776:                                              ; preds = %769
  %777 = getelementptr inbounds i8, ptr %770, i64 -8
  %778 = call ptr @Perl_instr(ptr noundef nonnull %777, ptr noundef nonnull @.str.59) #14
  %779 = icmp eq ptr %778, null
  br i1 %779, label %780, label %788

780:                                              ; preds = %776
  %781 = getelementptr inbounds i8, ptr %770, i64 -7
  %782 = call ptr @Perl_instr(ptr noundef nonnull %781, ptr noundef nonnull @.str.60) #14
  %783 = icmp eq ptr %782, null
  br i1 %783, label %784, label %788

784:                                              ; preds = %780
  %785 = getelementptr inbounds i8, ptr %770, i64 -6
  %786 = call ptr @Perl_instr(ptr noundef nonnull %785, ptr noundef nonnull @.str.61) #14
  %787 = icmp eq ptr %786, null
  br i1 %787, label %791, label %788

788:                                              ; preds = %784, %780, %776
  store i8 45, ptr %770, align 1, !tbaa !17
  %789 = add i64 %766, 2
  %790 = getelementptr i8, ptr %770, i64 1
  store i8 62, ptr %790, align 1, !tbaa !17
  br label %791

791:                                              ; preds = %741, %788, %784, %769, %765
  %792 = phi i64 [ %789, %788 ], [ %766, %784 ], [ %766, %769 ], [ %766, %765 ], [ %2, %741 ]
  %793 = add i64 %792, 1
  %794 = getelementptr inbounds i8, ptr %737, i64 %792
  store i8 91, ptr %794, align 1, !tbaa !17
  %795 = getelementptr inbounds i8, ptr %737, i64 %793
  store i8 0, ptr %795, align 1, !tbaa !17
  %796 = call ptr @Perl_newSVsv(ptr noundef %11) #14
  call void @Perl_sv_catsv_flags(ptr noundef %796, ptr noundef %8, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %796, ptr noundef %601, i32 noundef 2) #14
  %797 = icmp slt i64 %734, 0
  br i1 %797, label %829, label %798

798:                                              ; preds = %791
  %799 = icmp sgt i32 %7, 2
  br label %800

800:                                              ; preds = %798, %818
  %801 = phi i64 [ 0, %798 ], [ %819, %818 ]
  %802 = call ptr @Perl_av_fetch(ptr noundef %424, i64 noundef %801, i32 noundef 0) #14
  %803 = icmp eq ptr %802, null
  br i1 %803, label %806, label %804

804:                                              ; preds = %800
  %805 = load ptr, ptr %802, align 8, !tbaa !5
  br label %806

806:                                              ; preds = %800, %804
  %807 = phi ptr [ %805, %804 ], [ @PL_sv_undef, %800 ]
  call void @Perl_sv_setiv(ptr noundef %735, i64 noundef %801) #14
  %808 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %795, ptr noundef nonnull dereferenceable(1) @.str.32, i64 noundef %801) #14
  %809 = sext i32 %808 to i64
  %810 = add i64 %793, %809
  %811 = add i64 %810, 1
  %812 = getelementptr inbounds i8, ptr %737, i64 %810
  store i8 93, ptr %812, align 1, !tbaa !17
  %813 = getelementptr inbounds i8, ptr %737, i64 %811
  store i8 0, ptr %813, align 1, !tbaa !17
  br i1 %799, label %814, label %815

814:                                              ; preds = %806
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %796, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %609, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.62, i64 noundef 1, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %735, i32 noundef 2) #14
  br label %815

815:                                              ; preds = %814, %806
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %796, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %609, i32 noundef 2) #14
  call fastcc void @DD_dump(ptr noundef %807, ptr noundef nonnull %737, i64 noundef %811, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %601, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i64 noundef %23) #16
  %816 = icmp slt i64 %801, %734
  br i1 %816, label %817, label %818

817:                                              ; preds = %815
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.63, i64 noundef 1, i32 noundef 2) #14
  br label %818

818:                                              ; preds = %817, %815
  %819 = add nuw i64 %801, 1
  %820 = icmp eq i64 %801, %734
  br i1 %820, label %821, label %800, !llvm.loop !41

821:                                              ; preds = %818
  %822 = load ptr, ptr %604, align 8, !tbaa !17
  %823 = load ptr, ptr %9, align 8, !tbaa !20
  %824 = getelementptr inbounds %struct.xpv, ptr %823, i64 0, i32 2
  %825 = load i64, ptr %824, align 8, !tbaa !21
  %826 = load i32, ptr %6, align 4, !tbaa !9
  %827 = add nsw i32 %826, -1
  %828 = call fastcc ptr @sv_x(ptr noundef null, ptr noundef %822, i64 noundef %825, i32 noundef %827) #16
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %796, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %828, i32 noundef 2) #14
  call fastcc void @S_SvREFCNT_dec(ptr noundef %828) #16
  br label %829

829:                                              ; preds = %791, %821
  %830 = load i8, ptr %1, align 1, !tbaa !17
  %831 = icmp eq i8 %830, 64
  %832 = select i1 %831, ptr @.str.64, ptr @.str.65
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull %832, i64 noundef 1, i32 noundef 2) #14
  call fastcc void @S_SvREFCNT_dec(ptr noundef %735) #16
  call fastcc void @S_SvREFCNT_dec(ptr noundef %796) #16
  call void @Perl_safesysfree(ptr noundef nonnull %737) #14
  br label %1151

833:                                              ; preds = %724
  %834 = call ptr @Perl_newSVpvn(ptr noundef %1, i64 noundef %2) #14
  %835 = load i8, ptr %1, align 1, !tbaa !17
  %836 = icmp eq i8 %835, 37
  br i1 %836, label %837, label %840

837:                                              ; preds = %833
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.57, i64 noundef 1, i32 noundef 2) #14
  %838 = getelementptr inbounds %struct.sv, ptr %834, i64 0, i32 3
  %839 = load ptr, ptr %838, align 8, !tbaa !17
  store i8 36, ptr %839, align 1, !tbaa !17
  br label %859

840:                                              ; preds = %833
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.41, i64 noundef 1, i32 noundef 2) #14
  br i1 %460, label %859, label %841

841:                                              ; preds = %840
  %842 = getelementptr i8, ptr %1, i64 %2
  %843 = getelementptr i8, ptr %842, i64 -1
  %844 = load i8, ptr %843, align 1, !tbaa !17
  switch i8 %844, label %858 [
    i8 93, label %845
    i8 125, label %845
  ]

845:                                              ; preds = %841, %841
  %846 = icmp ugt i64 %2, 4
  br i1 %846, label %847, label %859

847:                                              ; preds = %845
  %848 = getelementptr inbounds i8, ptr %1, i64 1
  %849 = load i8, ptr %848, align 1, !tbaa !17
  %850 = icmp eq i8 %849, 123
  br i1 %850, label %858, label %851

851:                                              ; preds = %847
  %852 = load i8, ptr %1, align 1, !tbaa !17
  %853 = icmp eq i8 %852, 92
  br i1 %853, label %854, label %861

854:                                              ; preds = %851
  %855 = getelementptr inbounds i8, ptr %1, i64 2
  %856 = load i8, ptr %855, align 1, !tbaa !17
  %857 = icmp eq i8 %856, 123
  br i1 %857, label %858, label %859

858:                                              ; preds = %841, %854, %847
  call void @Perl_sv_catpvn_flags(ptr noundef %834, ptr noundef nonnull @.str.66, i64 noundef 2, i32 noundef 2) #14
  br label %859

859:                                              ; preds = %840, %837, %858, %854, %845
  %860 = load i8, ptr %1, align 1, !tbaa !17
  br label %861

861:                                              ; preds = %859, %851
  %862 = phi i8 [ %860, %859 ], [ %852, %851 ]
  %863 = icmp eq i8 %862, 42
  br i1 %863, label %864, label %884

864:                                              ; preds = %861
  %865 = getelementptr i8, ptr %1, i64 %2
  %866 = getelementptr i8, ptr %865, i64 -1
  %867 = load i8, ptr %866, align 1, !tbaa !17
  %868 = icmp eq i8 %867, 125
  %869 = icmp ugt i64 %2, 7
  %870 = and i1 %869, %868
  br i1 %870, label %871, label %884

871:                                              ; preds = %864
  %872 = getelementptr inbounds i8, ptr %865, i64 -8
  %873 = call ptr @Perl_instr(ptr noundef nonnull %872, ptr noundef nonnull @.str.59) #14
  %874 = icmp eq ptr %873, null
  br i1 %874, label %875, label %883

875:                                              ; preds = %871
  %876 = getelementptr inbounds i8, ptr %865, i64 -7
  %877 = call ptr @Perl_instr(ptr noundef nonnull %876, ptr noundef nonnull @.str.60) #14
  %878 = icmp eq ptr %877, null
  br i1 %878, label %879, label %883

879:                                              ; preds = %875
  %880 = getelementptr inbounds i8, ptr %865, i64 -6
  %881 = call ptr @Perl_instr(ptr noundef nonnull %880, ptr noundef nonnull @.str.61) #14
  %882 = icmp eq ptr %881, null
  br i1 %882, label %884, label %883

883:                                              ; preds = %879, %875, %871
  call void @Perl_sv_catpvn_flags(ptr noundef %834, ptr noundef nonnull @.str.66, i64 noundef 2, i32 noundef 2) #14
  br label %884

884:                                              ; preds = %883, %879, %864, %861
  call void @Perl_sv_catpvn_flags(ptr noundef %834, ptr noundef nonnull @.str.41, i64 noundef 1, i32 noundef 2) #14
  %885 = call ptr @Perl_newSVsv(ptr noundef %11) #14
  call void @Perl_sv_catsv_flags(ptr noundef %885, ptr noundef %8, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %885, ptr noundef %601, i32 noundef 2) #14
  %886 = icmp eq ptr %20, null
  br i1 %886, label %966, label %887

887:                                              ; preds = %884
  %888 = icmp eq ptr %20, @PL_sv_yes
  br i1 %888, label %889, label %905

889:                                              ; preds = %887
  %890 = call ptr @Perl_newSV_type(i32 noundef 11) #14
  %891 = call i32 @Perl_hv_iterinit(ptr noundef nonnull %424) #14
  %892 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %424, i32 noundef 0) #14
  %893 = icmp eq ptr %892, null
  br i1 %893, label %900, label %894

894:                                              ; preds = %889, %894
  %895 = phi ptr [ %898, %894 ], [ %892, %889 ]
  %896 = call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %895) #14
  %897 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %896) #16
  call void @Perl_av_push(ptr noundef %890, ptr noundef %896) #14
  %898 = call ptr @Perl_hv_iternext_flags(ptr noundef %424, i32 noundef 0) #14
  %899 = icmp eq ptr %898, null
  br i1 %899, label %900, label %894, !llvm.loop !42

900:                                              ; preds = %894, %889
  %901 = getelementptr inbounds %struct.av, ptr %890, i64 0, i32 3
  %902 = load ptr, ptr %901, align 8, !tbaa !17
  %903 = call i64 @Perl_av_len(ptr noundef %890) #14
  %904 = add nsw i64 %903, 1
  call void @Perl_sortsv(ptr noundef %902, i64 noundef %904, ptr noundef nonnull @Perl_sv_cmp) #14
  br label %963

905:                                              ; preds = %887
  %906 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  call void @Perl_push_scope() #14
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #14
  %907 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !16
  store i64 %907, ptr @PL_tmps_floor, align 8, !tbaa !16
  %908 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %909 = getelementptr inbounds i32, ptr %908, i64 1
  store ptr %909, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %910 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !5
  %911 = icmp eq ptr %909, %910
  br i1 %911, label %912, label %914

912:                                              ; preds = %905
  %913 = call ptr @Perl_markstack_grow() #14
  br label %914

914:                                              ; preds = %905, %912
  %915 = phi ptr [ %913, %912 ], [ %909, %905 ]
  %916 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %917 = ptrtoint ptr %906 to i64
  %918 = ptrtoint ptr %916 to i64
  %919 = sub i64 %917, %918
  %920 = lshr exact i64 %919, 3
  %921 = trunc i64 %920 to i32
  store i32 %921, ptr %915, align 4, !tbaa !9
  %922 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %923 = ptrtoint ptr %922 to i64
  %924 = sub i64 %923, %917
  %925 = icmp slt i64 %924, 8
  br i1 %925, label %926, label %928

926:                                              ; preds = %914
  %927 = call ptr @Perl_stack_grow(ptr noundef %906, ptr noundef %906, i64 noundef 1) #14
  br label %928

928:                                              ; preds = %914, %926
  %929 = phi ptr [ %927, %926 ], [ %906, %914 ]
  %930 = call ptr @Perl_newRV(ptr noundef nonnull %424) #14
  %931 = call ptr @Perl_sv_2mortal(ptr noundef %930) #14
  %932 = getelementptr inbounds ptr, ptr %929, i64 1
  store ptr %931, ptr %932, align 8, !tbaa !5
  store ptr %932, ptr @PL_stack_sp, align 8, !tbaa !5
  %933 = call i32 @Perl_call_sv(ptr noundef nonnull %20, i32 noundef 10) #14
  %934 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %935 = icmp eq i32 %933, 0
  br i1 %935, label %952, label %936

936:                                              ; preds = %928
  %937 = getelementptr inbounds ptr, ptr %934, i64 -1
  %938 = load ptr, ptr %934, align 8, !tbaa !5
  %939 = getelementptr inbounds %struct.sv, ptr %938, i64 0, i32 2
  %940 = load i32, ptr %939, align 4, !tbaa !14
  %941 = and i32 %940, 2048
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %952, label %943

943:                                              ; preds = %936
  %944 = getelementptr inbounds %struct.sv, ptr %938, i64 0, i32 3
  %945 = load ptr, ptr %944, align 8, !tbaa !17
  %946 = getelementptr inbounds %struct.sv, ptr %945, i64 0, i32 2
  %947 = load i32, ptr %946, align 4, !tbaa !14
  %948 = and i32 %947, 255
  %949 = icmp eq i32 %948, 11
  br i1 %949, label %950, label %952

950:                                              ; preds = %943
  %951 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %945) #16
  br label %954

952:                                              ; preds = %943, %936, %928
  %953 = phi ptr [ %934, %928 ], [ %937, %936 ], [ %937, %943 ]
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.67) #14
  br label %954

954:                                              ; preds = %950, %952
  %955 = phi i1 [ true, %952 ], [ false, %950 ]
  %956 = phi ptr [ %953, %952 ], [ %937, %950 ]
  %957 = phi ptr [ null, %952 ], [ %945, %950 ]
  store ptr %956, ptr @PL_stack_sp, align 8, !tbaa !5
  %958 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !16
  %959 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !16
  %960 = icmp sgt i64 %958, %959
  br i1 %960, label %961, label %962

961:                                              ; preds = %954
  call void @Perl_free_tmps() #14
  br label %962

962:                                              ; preds = %954, %961
  call void @Perl_pop_scope() #14
  br i1 %955, label %968, label %963

963:                                              ; preds = %900, %962
  %964 = phi ptr [ %957, %962 ], [ %890, %900 ]
  %965 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %964) #14
  br label %968

966:                                              ; preds = %884
  %967 = call i32 @Perl_hv_iterinit(ptr noundef nonnull %424) #14
  br label %968

968:                                              ; preds = %962, %963, %966
  %969 = phi ptr [ %964, %963 ], [ null, %962 ], [ null, %966 ]
  %970 = icmp eq ptr %969, null
  %971 = icmp eq i32 %17, 0
  %972 = icmp ne i32 %22, 0
  %973 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %974 = icmp sgt i32 %7, 1
  br label %975

975:                                              ; preds = %1132, %968
  %976 = phi ptr [ null, %968 ], [ %986, %1132 ]
  %977 = phi i64 [ 0, %968 ], [ %1133, %1132 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #15
  br i1 %886, label %982, label %978

978:                                              ; preds = %975
  br i1 %970, label %1134, label %979

979:                                              ; preds = %978
  %980 = call i64 @Perl_av_len(ptr noundef nonnull %969) #14
  %981 = icmp sgt i64 %977, %980
  br i1 %981, label %1134, label %985

982:                                              ; preds = %975
  %983 = call ptr @Perl_hv_iternext_flags(ptr noundef %424, i32 noundef 0) #14
  %984 = icmp eq ptr %983, null
  br i1 %984, label %1134, label %985

985:                                              ; preds = %982, %979
  %986 = phi ptr [ %976, %979 ], [ %983, %982 ]
  %987 = icmp eq i64 %977, 0
  br i1 %987, label %989, label %988

988:                                              ; preds = %985
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.63, i64 noundef 1, i32 noundef 2) #14
  br label %989

989:                                              ; preds = %988, %985
  br i1 %886, label %1028, label %990

990:                                              ; preds = %989
  %991 = call ptr @Perl_av_fetch(ptr noundef %969, i64 noundef %977, i32 noundef 0) #14
  %992 = icmp eq ptr %991, null
  br i1 %992, label %995, label %993

993:                                              ; preds = %990
  %994 = load ptr, ptr %991, align 8, !tbaa !5
  br label %997

995:                                              ; preds = %990
  %996 = call ptr @Perl_sv_newmortal() #14
  br label %997

997:                                              ; preds = %995, %993
  %998 = phi ptr [ %994, %993 ], [ %996, %995 ]
  %999 = getelementptr inbounds %struct.sv, ptr %998, i64 0, i32 2
  %1000 = load i32, ptr %999, align 4, !tbaa !14
  %1001 = and i32 %1000, 2098176
  %1002 = icmp eq i32 %1001, 1024
  br i1 %1002, label %1003, label %1009

1003:                                             ; preds = %997
  %1004 = load ptr, ptr %998, align 8, !tbaa !20
  %1005 = getelementptr inbounds %struct.xpv, ptr %1004, i64 0, i32 2
  %1006 = load i64, ptr %1005, align 8, !tbaa !21
  store i64 %1006, ptr %30, align 8, !tbaa !16
  %1007 = getelementptr inbounds %struct.sv, ptr %998, i64 0, i32 3
  %1008 = load ptr, ptr %1007, align 8, !tbaa !17
  br label %1013

1009:                                             ; preds = %997
  %1010 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %998, ptr noundef nonnull %30, i32 noundef 2) #14
  %1011 = load i32, ptr %999, align 4, !tbaa !14
  %1012 = load i64, ptr %30, align 8
  br label %1013

1013:                                             ; preds = %1009, %1003
  %1014 = phi i64 [ %1006, %1003 ], [ %1012, %1009 ]
  %1015 = phi i32 [ %1000, %1003 ], [ %1011, %1009 ]
  %1016 = phi ptr [ %1008, %1003 ], [ %1010, %1009 ]
  %1017 = and i32 %1015, 536870912
  %1018 = icmp eq i32 %1017, 0
  %1019 = trunc i64 %1014 to i32
  %1020 = sub nsw i32 0, %1019
  %1021 = select i1 %1018, i32 %1019, i32 %1020
  %1022 = call ptr @Perl_hv_common_key_len(ptr noundef %424, ptr noundef %1016, i32 noundef %1021, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %1023 = icmp eq ptr %1022, null
  br i1 %1023, label %1026, label %1024

1024:                                             ; preds = %1013
  %1025 = load ptr, ptr %1022, align 8, !tbaa !5
  br label %1031

1026:                                             ; preds = %1013
  %1027 = call ptr @Perl_sv_newmortal() #14
  br label %1031

1028:                                             ; preds = %989
  %1029 = call ptr @Perl_hv_iterkeysv(ptr noundef %986) #14
  %1030 = call ptr @Perl_hv_iterval(ptr noundef %424, ptr noundef %986) #14
  br label %1031

1031:                                             ; preds = %1024, %1026, %1028
  %1032 = phi ptr [ %1030, %1028 ], [ %1025, %1024 ], [ %1027, %1026 ]
  %1033 = phi ptr [ %1029, %1028 ], [ %998, %1024 ], [ %998, %1026 ]
  %1034 = getelementptr inbounds %struct.sv, ptr %1033, i64 0, i32 2
  %1035 = load i32, ptr %1034, align 4, !tbaa !14
  %1036 = and i32 %1035, 2098176
  %1037 = icmp eq i32 %1036, 1024
  br i1 %1037, label %1038, label %1044

1038:                                             ; preds = %1031
  %1039 = load ptr, ptr %1033, align 8, !tbaa !20
  %1040 = getelementptr inbounds %struct.xpv, ptr %1039, i64 0, i32 2
  %1041 = load i64, ptr %1040, align 8, !tbaa !21
  store i64 %1041, ptr %30, align 8, !tbaa !16
  %1042 = getelementptr inbounds %struct.sv, ptr %1033, i64 0, i32 3
  %1043 = load ptr, ptr %1042, align 8, !tbaa !17
  br label %1047

1044:                                             ; preds = %1031
  %1045 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1033, ptr noundef nonnull %30, i32 noundef 2) #14
  %1046 = load i32, ptr %1034, align 4, !tbaa !14
  br label %1047

1047:                                             ; preds = %1044, %1038
  %1048 = phi i32 [ %1035, %1038 ], [ %1046, %1044 ]
  %1049 = phi ptr [ %1043, %1038 ], [ %1045, %1044 ]
  %1050 = and i32 %1048, 536870912
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1058, label %1052

1052:                                             ; preds = %1047
  %1053 = load ptr, ptr @PL_curcop, align 8, !tbaa !5
  %1054 = getelementptr inbounds %struct.cop, ptr %1053, i64 0, i32 10
  %1055 = load i32, ptr %1054, align 8, !tbaa !43
  %1056 = and i32 %1055, 8
  %1057 = icmp eq i32 %1056, 0
  br label %1058

1058:                                             ; preds = %1052, %1047
  %1059 = phi i1 [ false, %1047 ], [ %1057, %1052 ]
  %1060 = load i64, ptr %30, align 8, !tbaa !16
  %1061 = trunc i64 %1060 to i32
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %885, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %609, i32 noundef 2) #14
  br i1 %971, label %1062, label %1065

1062:                                             ; preds = %1058
  %1063 = load i64, ptr %30, align 8, !tbaa !16
  %1064 = call fastcc zeroext i1 @key_needs_quote(ptr noundef %1049, i64 noundef %1063) #16
  br i1 %1064, label %1065, label %1099

1065:                                             ; preds = %1062, %1058
  %1066 = or i1 %972, %1059
  br i1 %1066, label %1067, label %1077

1067:                                             ; preds = %1065
  %1068 = load ptr, ptr %3, align 8, !tbaa !20
  %1069 = getelementptr inbounds %struct.xpv, ptr %1068, i64 0, i32 2
  %1070 = load i64, ptr %1069, align 8, !tbaa !21
  %1071 = shl i64 %1060, 32
  %1072 = ashr exact i64 %1071, 32
  %1073 = zext i1 %1059 to i32
  %1074 = call fastcc i32 @esc_q_utf8(ptr noundef nonnull %3, ptr noundef %1049, i64 noundef %1072, i32 noundef %1073, i32 noundef %22) #16
  %1075 = load ptr, ptr %973, align 8, !tbaa !17
  %1076 = getelementptr inbounds i8, ptr %1075, i64 %1070
  br label %1102

1077:                                             ; preds = %1065
  %1078 = shl i64 %1060, 32
  %1079 = ashr exact i64 %1078, 32
  %1080 = call fastcc i32 @num_q(ptr noundef %1049, i64 noundef %1079) #16
  %1081 = add i32 %1061, 3
  %1082 = add i32 %1081, %1080
  %1083 = sext i32 %1082 to i64
  %1084 = call ptr @Perl_safesysmalloc(i64 noundef %1083) #14
  store i8 39, ptr %1084, align 1, !tbaa !17
  %1085 = icmp eq i32 %1080, 0
  %1086 = getelementptr inbounds i8, ptr %1084, i64 1
  br i1 %1085, label %1090, label %1087

1087:                                             ; preds = %1077
  %1088 = call fastcc i32 @esc_q(ptr noundef nonnull %1086, ptr noundef %1049, i64 noundef %1079) #16
  %1089 = add nsw i32 %1088, %1061
  br label %1091

1090:                                             ; preds = %1077
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1086, ptr align 1 %1049, i64 %1079, i1 false)
  br label %1091

1091:                                             ; preds = %1090, %1087
  %1092 = phi i32 [ %1089, %1087 ], [ %1061, %1090 ]
  %1093 = sext i32 %1092 to i64
  %1094 = getelementptr i8, ptr %1084, i64 %1093
  %1095 = getelementptr i8, ptr %1094, i64 1
  store i8 39, ptr %1095, align 1, !tbaa !17
  %1096 = add nsw i32 %1092, 2
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds i8, ptr %1084, i64 %1097
  store i8 0, ptr %1098, align 1, !tbaa !17
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull %1084, i64 noundef %1097, i32 noundef 2) #14
  br label %1102

1099:                                             ; preds = %1062
  %1100 = shl i64 %1060, 32
  %1101 = ashr exact i64 %1100, 32
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef %1049, i64 noundef %1101, i32 noundef 2) #14
  br label %1102

1102:                                             ; preds = %1067, %1091, %1099
  %1103 = phi i32 [ %1061, %1067 ], [ %1096, %1091 ], [ %1061, %1099 ]
  %1104 = phi ptr [ %1076, %1067 ], [ %1084, %1091 ], [ %1049, %1099 ]
  %1105 = phi ptr [ null, %1067 ], [ %1084, %1091 ], [ null, %1099 ]
  %1106 = phi i32 [ %1074, %1067 ], [ %1096, %1091 ], [ %1061, %1099 ]
  %1107 = call ptr @Perl_newSVsv(ptr noundef %834) #14
  %1108 = sext i32 %1106 to i64
  call void @Perl_sv_catpvn_flags(ptr noundef %1107, ptr noundef %1104, i64 noundef %1108, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %1107, ptr noundef nonnull @.str.42, i64 noundef 1, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %12, i32 noundef 2) #14
  br i1 %974, label %1109, label %1124

1109:                                             ; preds = %1102
  %1110 = call ptr @Perl_newSVsv(ptr noundef %601) #14
  %1111 = add nsw i32 %1103, 5
  %1112 = sext i32 %1111 to i64
  %1113 = call ptr @Perl_safesysmalloc(i64 noundef %1112) #14
  %1114 = icmp sgt i32 %1103, -4
  br i1 %1114, label %1115, label %1120

1115:                                             ; preds = %1109
  %1116 = add i32 %1103, 3
  %1117 = call i32 @llvm.smax.i32(i32 %1116, i32 0)
  %1118 = add nuw i32 %1117, 1
  %1119 = zext i32 %1118 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1113, i8 32, i64 %1119, i1 false), !tbaa !17
  br label %1120

1120:                                             ; preds = %1115, %1109
  %1121 = phi i32 [ 0, %1109 ], [ %1118, %1115 ]
  %1122 = zext nneg i32 %1121 to i64
  %1123 = getelementptr inbounds i8, ptr %1113, i64 %1122
  store i8 0, ptr %1123, align 1, !tbaa !17
  call void @Perl_sv_catpvn_flags(ptr noundef %1110, ptr noundef %1113, i64 noundef %1122, i32 noundef 2) #14
  call void @Perl_safesysfree(ptr noundef %1113) #14
  br label %1124

1124:                                             ; preds = %1102, %1120
  %1125 = phi ptr [ %1110, %1120 ], [ %601, %1102 ]
  %1126 = getelementptr inbounds %struct.sv, ptr %1107, i64 0, i32 3
  %1127 = load ptr, ptr %1126, align 8, !tbaa !17
  %1128 = load ptr, ptr %1107, align 8, !tbaa !20
  %1129 = getelementptr inbounds %struct.xpv, ptr %1128, i64 0, i32 2
  %1130 = load i64, ptr %1129, align 8, !tbaa !21
  call fastcc void @DD_dump(ptr noundef %1032, ptr noundef %1127, i64 noundef %1130, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %1125, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i64 noundef %23) #16
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %1107) #16
  call void @Perl_safesysfree(ptr noundef %1105) #14
  br i1 %974, label %1131, label %1132

1131:                                             ; preds = %1124
  call fastcc void @S_SvREFCNT_dec(ptr noundef %1125) #16
  br label %1132

1132:                                             ; preds = %1131, %1124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #15
  %1133 = add i64 %977, 1
  br label %975

1134:                                             ; preds = %979, %978, %982
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #15
  %1135 = icmp eq i64 %977, 0
  br i1 %1135, label %1144, label %1136

1136:                                             ; preds = %1134
  %1137 = load ptr, ptr %604, align 8, !tbaa !17
  %1138 = load ptr, ptr %9, align 8, !tbaa !20
  %1139 = getelementptr inbounds %struct.xpv, ptr %1138, i64 0, i32 2
  %1140 = load i64, ptr %1139, align 8, !tbaa !21
  %1141 = load i32, ptr %6, align 4, !tbaa !9
  %1142 = add nsw i32 %1141, -1
  %1143 = call fastcc ptr @sv_x(ptr noundef null, ptr noundef %1137, i64 noundef %1140, i32 noundef %1142) #16
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %885, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %1143, i32 noundef 2) #14
  call fastcc void @S_SvREFCNT_dec(ptr noundef %1143) #16
  br label %1144

1144:                                             ; preds = %1136, %1134
  %1145 = load i8, ptr %1, align 1, !tbaa !17
  %1146 = icmp eq i8 %1145, 37
  %1147 = select i1 %1146, ptr @.str.64, ptr @.str.42
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull %1147, i64 noundef 1, i32 noundef 2) #14
  call fastcc void @S_SvREFCNT_dec(ptr noundef %834) #16
  call fastcc void @S_SvREFCNT_dec(ptr noundef %885) #16
  br label %1151

1148:                                             ; preds = %724
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.68, i64 noundef 15, i32 noundef 2) #14
  br i1 %544, label %1151, label %1149

1149:                                             ; preds = %1148
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.69) #14
  br label %1151

1150:                                             ; preds = %724
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.70, i32 noundef %427) #14
  br label %1151

1151:                                             ; preds = %723, %829, %1150, %1149, %1148, %1144, %726, %707
  br i1 %573, label %1185, label %1152

1152:                                             ; preds = %1151
  %1153 = icmp sgt i32 %7, 1
  br i1 %1153, label %1154, label %1155

1154:                                             ; preds = %1152
  call fastcc void @S_SvREFCNT_dec(ptr noundef %601) #16
  br label %1155

1155:                                             ; preds = %1154, %1152
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.71, i64 noundef 3, i32 noundef 2) #14
  %1156 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %459) #17
  %1157 = shl i64 %1156, 32
  %1158 = ashr exact i64 %1157, 32
  %1159 = call fastcc i32 @num_q(ptr noundef nonnull %459, i64 noundef %1158) #16
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1171, label %1161

1161:                                             ; preds = %1155
  %1162 = trunc i64 %1156 to i32
  %1163 = add i32 %1162, 1
  %1164 = add i32 %1163, %1159
  %1165 = sext i32 %1164 to i64
  %1166 = call ptr @Perl_safesysmalloc(i64 noundef %1165) #14
  %1167 = call fastcc i32 @esc_q(ptr noundef %1166, ptr noundef nonnull %459, i64 noundef %1158) #16
  %1168 = add nsw i32 %1167, %1162
  %1169 = sext i32 %1168 to i64
  %1170 = getelementptr inbounds i8, ptr %1166, i64 %1169
  store i8 0, ptr %1170, align 1, !tbaa !17
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef %1166, i64 noundef %1169, i32 noundef 2) #14
  call void @Perl_safesysfree(ptr noundef %1166) #14
  br label %1172

1171:                                             ; preds = %1155
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull %459, i64 noundef %1156, i32 noundef 2) #14
  br label %1172

1172:                                             ; preds = %1171, %1161
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.72, i64 noundef 3, i32 noundef 2) #14
  %1173 = icmp eq ptr %14, null
  br i1 %1173, label %1185, label %1174

1174:                                             ; preds = %1172
  %1175 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %1176 = load i32, ptr %1175, align 4, !tbaa !14
  %1177 = and i32 %1176, 1024
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1185, label %1179

1179:                                             ; preds = %1174
  %1180 = load ptr, ptr %14, align 8, !tbaa !20
  %1181 = getelementptr inbounds %struct.xpv, ptr %1180, i64 0, i32 2
  %1182 = load i64, ptr %1181, align 8, !tbaa !21
  %1183 = icmp eq i64 %1182, 0
  br i1 %1183, label %1185, label %1184

1184:                                             ; preds = %1179
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.66, i64 noundef 2, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef nonnull %14, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.73, i64 noundef 2, i32 noundef 2) #14
  br label %1185

1185:                                             ; preds = %1151, %1184, %1179, %1174, %1172
  call fastcc void @S_SvREFCNT_dec(ptr noundef %609) #16
  %1186 = load i32, ptr %6, align 4, !tbaa !9
  %1187 = add nsw i32 %1186, -1
  store i32 %1187, ptr %6, align 4, !tbaa !9
  br label %1601

1188:                                             ; preds = %61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #15
  %1189 = icmp eq i64 %2, 0
  br i1 %1189, label %1247, label %1190

1190:                                             ; preds = %1188
  %1191 = ptrtoint ptr %0 to i64
  store i64 %1191, ptr %26, align 8, !tbaa !16
  %1192 = call ptr @Perl_hv_common_key_len(ptr noundef %4, ptr noundef nonnull %26, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %1193 = icmp eq ptr %1192, null
  br i1 %1193, label %1233, label %1194

1194:                                             ; preds = %1190
  %1195 = load ptr, ptr %1192, align 8, !tbaa !5
  %1196 = icmp eq ptr %1195, null
  br i1 %1196, label %1233, label %1197

1197:                                             ; preds = %1194
  %1198 = getelementptr inbounds %struct.sv, ptr %1195, i64 0, i32 2
  %1199 = load i32, ptr %1198, align 4, !tbaa !14
  %1200 = and i32 %1199, 2048
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1233, label %1202

1202:                                             ; preds = %1197
  %1203 = getelementptr inbounds %struct.sv, ptr %1195, i64 0, i32 3
  %1204 = load ptr, ptr %1203, align 8, !tbaa !17
  %1205 = icmp eq ptr %1204, null
  br i1 %1205, label %1233, label %1206

1206:                                             ; preds = %1202
  %1207 = call ptr @Perl_av_fetch(ptr noundef nonnull %1204, i64 noundef 0, i32 noundef 0) #14
  %1208 = icmp eq ptr %1207, null
  br i1 %1208, label %1247, label %1209

1209:                                             ; preds = %1206
  %1210 = load ptr, ptr %1207, align 8, !tbaa !5
  %1211 = icmp eq ptr %1210, null
  br i1 %1211, label %1247, label %1212

1212:                                             ; preds = %1209
  %1213 = call ptr @Perl_av_fetch(ptr noundef nonnull %1204, i64 noundef 2, i32 noundef 0) #14
  %1214 = icmp eq ptr %1213, null
  br i1 %1214, label %1247, label %1215

1215:                                             ; preds = %1212
  %1216 = load ptr, ptr %1213, align 8, !tbaa !5
  %1217 = icmp eq ptr %1216, null
  br i1 %1217, label %1247, label %1218

1218:                                             ; preds = %1215
  %1219 = getelementptr inbounds %struct.sv, ptr %1216, i64 0, i32 2
  %1220 = load i32, ptr %1219, align 4, !tbaa !14
  %1221 = and i32 %1220, 2097408
  %1222 = icmp eq i32 %1221, 256
  br i1 %1222, label %1223, label %1227

1223:                                             ; preds = %1218
  %1224 = load ptr, ptr %1216, align 8, !tbaa !20
  %1225 = getelementptr inbounds %struct.xpviv, ptr %1224, i64 0, i32 4
  %1226 = load i64, ptr %1225, align 8, !tbaa !17
  br label %1229

1227:                                             ; preds = %1218
  %1228 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1216, i32 noundef 2) #14
  br label %1229

1229:                                             ; preds = %1227, %1223
  %1230 = phi i64 [ %1226, %1223 ], [ %1228, %1227 ]
  %1231 = icmp sgt i64 %1230, 0
  br i1 %1231, label %1232, label %1247

1232:                                             ; preds = %1229
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.53, i64 noundef 2, i32 noundef 2) #14
  call void @Perl_sv_catsv_flags(ptr noundef nonnull %3, ptr noundef nonnull %1210, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.42, i64 noundef 1, i32 noundef 2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #15
  br label %1614

1233:                                             ; preds = %1202, %1197, %1194, %1190
  %1234 = icmp eq ptr %0, @PL_sv_undef
  br i1 %1234, label %1247, label %1235

1235:                                             ; preds = %1233
  %1236 = icmp eq i32 %21, 0
  br i1 %1236, label %1241, label %1237

1237:                                             ; preds = %1235
  %1238 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %1239 = load i32, ptr %1238, align 8, !tbaa !32
  %1240 = icmp ugt i32 %1239, 1
  br i1 %1240, label %1241, label %1247

1241:                                             ; preds = %1237, %1235
  %1242 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.44, i64 noundef 1) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %1242, ptr noundef %1, i64 noundef %2, i32 noundef 2) #14
  %1243 = call ptr @Perl_newSV_type(i32 noundef 11) #14
  call void @Perl_av_push(ptr noundef %1243, ptr noundef %1242) #14
  %1244 = call ptr @Perl_newRV(ptr noundef nonnull %0) #14
  call void @Perl_av_push(ptr noundef %1243, ptr noundef %1244) #14
  %1245 = call ptr @Perl_newRV(ptr noundef %1243) #14
  %1246 = call ptr @Perl_hv_common_key_len(ptr noundef %4, ptr noundef nonnull %26, i32 noundef 8, i32 noundef 36, ptr noundef %1245, i32 noundef 0) #14
  call fastcc void @S_SvREFCNT_dec(ptr noundef %1243) #16
  br label %1247

1247:                                             ; preds = %1229, %1215, %1212, %1209, %1206, %1241, %1237, %1233, %1188
  %1248 = phi i32 [ 8, %1241 ], [ 8, %1237 ], [ 8, %1233 ], [ 0, %1188 ], [ 8, %1206 ], [ 8, %1209 ], [ 8, %1212 ], [ 8, %1215 ], [ 8, %1229 ]
  %1249 = phi ptr [ %1243, %1241 ], [ null, %1237 ], [ null, %1233 ], [ null, %1188 ], [ %1204, %1206 ], [ %1204, %1209 ], [ %1204, %1212 ], [ %1204, %1215 ], [ %1204, %1229 ]
  %1250 = load i32, ptr %53, align 4, !tbaa !14
  %1251 = and i32 %1250, 256
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1309, label %1253

1253:                                             ; preds = %1247
  %1254 = icmp sgt i32 %1250, -1
  br i1 %1254, label %1267, label %1255

1255:                                             ; preds = %1253
  %1256 = and i32 %1250, -2145386240
  %1257 = icmp eq i32 %1256, -2147483392
  br i1 %1257, label %1258, label %1262

1258:                                             ; preds = %1255
  %1259 = load ptr, ptr %0, align 8, !tbaa !20
  %1260 = getelementptr inbounds %struct.xpvuv, ptr %1259, i64 0, i32 4
  %1261 = load i64, ptr %1260, align 8, !tbaa !17
  br label %1264

1262:                                             ; preds = %1255
  %1263 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %0, i32 noundef 2) #14
  br label %1264

1264:                                             ; preds = %1262, %1258
  %1265 = phi i64 [ %1261, %1258 ], [ %1263, %1262 ]
  %1266 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %25, i64 noundef 128, ptr noundef nonnull @.str.74, i64 noundef %1265) #14
  br label %1279

1267:                                             ; preds = %1253
  %1268 = and i32 %1250, 2097408
  %1269 = icmp eq i32 %1268, 256
  br i1 %1269, label %1270, label %1274

1270:                                             ; preds = %1267
  %1271 = load ptr, ptr %0, align 8, !tbaa !20
  %1272 = getelementptr inbounds %struct.xpviv, ptr %1271, i64 0, i32 4
  %1273 = load i64, ptr %1272, align 8, !tbaa !17
  br label %1276

1274:                                             ; preds = %1267
  %1275 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #14
  br label %1276

1276:                                             ; preds = %1274, %1270
  %1277 = phi i64 [ %1273, %1270 ], [ %1275, %1274 ]
  %1278 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %25, i64 noundef 128, ptr noundef nonnull @.str.32, i64 noundef %1277) #14
  br label %1279

1279:                                             ; preds = %1276, %1264
  %1280 = phi i32 [ %1266, %1264 ], [ %1278, %1276 ]
  %1281 = sext i32 %1280 to i64
  %1282 = load i32, ptr %53, align 4, !tbaa !14
  %1283 = and i32 %1282, 1024
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1305, label %1285

1285:                                             ; preds = %1279
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #15
  %1286 = and i32 %1282, 2098176
  %1287 = icmp eq i32 %1286, 1024
  br i1 %1287, label %1288, label %1294

1288:                                             ; preds = %1285
  %1289 = load ptr, ptr %0, align 8, !tbaa !20
  %1290 = getelementptr inbounds %struct.xpv, ptr %1289, i64 0, i32 2
  %1291 = load i64, ptr %1290, align 8, !tbaa !21
  store i64 %1291, ptr %32, align 8, !tbaa !16
  %1292 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %1293 = load ptr, ptr %1292, align 8, !tbaa !17
  br label %1297

1294:                                             ; preds = %1285
  %1295 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %32, i32 noundef 2) #14
  %1296 = load i64, ptr %32, align 8, !tbaa !16
  br label %1297

1297:                                             ; preds = %1294, %1288
  %1298 = phi i64 [ %1291, %1288 ], [ %1296, %1294 ]
  %1299 = phi ptr [ %1293, %1288 ], [ %1295, %1294 ]
  %1300 = icmp eq i64 %1298, %1281
  br i1 %1300, label %1302, label %1301

1301:                                             ; preds = %1297
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #15
  br label %1521

1302:                                             ; preds = %1297
  %1303 = call i32 @bcmp(ptr %1299, ptr nonnull %25, i64 %1281)
  %1304 = icmp eq i32 %1303, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #15
  br i1 %1304, label %1305, label %1521

1305:                                             ; preds = %1302, %1279
  %1306 = icmp ugt i32 %1280, 10
  br i1 %1306, label %1307, label %1308

1307:                                             ; preds = %1305
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %3, ptr noundef nonnull @.str.75, ptr noundef nonnull %25) #14
  br label %1600

1308:                                             ; preds = %1305
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull %25, i64 noundef %1281, i32 noundef 2) #14
  br label %1600

1309:                                             ; preds = %1247
  %1310 = icmp eq i32 %55, 9
  br i1 %1310, label %1311, label %1498

1311:                                             ; preds = %1309
  %1312 = and i32 %1250, 2098176
  %1313 = icmp eq i32 %1312, 1024
  br i1 %1313, label %1314, label %1320

1314:                                             ; preds = %1311
  %1315 = load ptr, ptr %0, align 8, !tbaa !20
  %1316 = getelementptr inbounds %struct.xpv, ptr %1315, i64 0, i32 2
  %1317 = load i64, ptr %1316, align 8, !tbaa !21
  store i64 %1317, ptr %31, align 8, !tbaa !16
  %1318 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %1319 = load ptr, ptr %1318, align 8, !tbaa !17
  br label %1323

1320:                                             ; preds = %1311
  %1321 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %31, i32 noundef 2) #14
  %1322 = load i64, ptr %31, align 8, !tbaa !16
  br label %1323

1323:                                             ; preds = %1320, %1314
  %1324 = phi i64 [ %1322, %1320 ], [ %1317, %1314 ]
  %1325 = phi ptr [ %1321, %1320 ], [ %1319, %1314 ]
  %1326 = icmp eq i64 %1324, 0
  br i1 %1326, label %1340, label %1327

1327:                                             ; preds = %1323
  %1328 = getelementptr inbounds i8, ptr %1325, i64 1
  %1329 = add i64 %1324, -1
  store i64 %1329, ptr %31, align 8, !tbaa !16
  %1330 = icmp ugt i64 %1329, 5
  br i1 %1330, label %1331, label %1340

1331:                                             ; preds = %1327
  %1332 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1328, ptr noundef nonnull dereferenceable(7) @.str.76, i64 noundef 6) #17
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1334, label %1340

1334:                                             ; preds = %1331
  %1335 = getelementptr inbounds i8, ptr %1325, i64 5
  %1336 = icmp eq i64 %1329, 6
  br i1 %1336, label %1337, label %1338

1337:                                             ; preds = %1334
  store i64 0, ptr %31, align 8, !tbaa !16
  br label %1340

1338:                                             ; preds = %1334
  %1339 = add i64 %1324, -5
  store i64 %1339, ptr %31, align 8, !tbaa !16
  br label %1340

1340:                                             ; preds = %1323, %1337, %1338, %1331, %1327
  %1341 = phi i64 [ 0, %1337 ], [ %1339, %1338 ], [ %1329, %1331 ], [ %1329, %1327 ], [ 0, %1323 ]
  %1342 = phi ptr [ %1335, %1337 ], [ %1335, %1338 ], [ %1328, %1331 ], [ %1328, %1327 ], [ %1325, %1323 ]
  %1343 = call fastcc zeroext i1 @globname_needs_quote(ptr noundef %1342, i64 noundef %1341) #16
  br i1 %1343, label %1344, label %1415

1344:                                             ; preds = %1340
  %1345 = load ptr, ptr %0, align 8, !tbaa !20
  %1346 = getelementptr inbounds %struct.xpvgv, ptr %1345, i64 0, i32 4
  %1347 = load ptr, ptr %1346, align 8, !tbaa !17
  %1348 = getelementptr inbounds %struct.hek, ptr %1347, i64 0, i32 2
  %1349 = getelementptr inbounds %struct.hek, ptr %1347, i64 0, i32 1
  %1350 = load i32, ptr %1349, align 4, !tbaa !45
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds i8, ptr %1348, i64 %1351
  %1353 = getelementptr inbounds i8, ptr %1352, i64 1
  %1354 = load i8, ptr %1353, align 1, !tbaa !17
  %1355 = and i8 %1354, 1
  %1356 = icmp eq i8 %1355, 0
  %1357 = load ptr, ptr %3, align 8, !tbaa !20
  %1358 = getelementptr inbounds %struct.xpv, ptr %1357, i64 0, i32 2
  %1359 = load i64, ptr %1358, align 8, !tbaa !21
  br i1 %1356, label %1387, label %1360

1360:                                             ; preds = %1344
  %1361 = add i64 %1359, 2
  %1362 = call ptr @Perl_sv_grow(ptr noundef nonnull %3, i64 noundef %1361) #14
  %1363 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %1364 = load ptr, ptr %1363, align 8, !tbaa !17
  %1365 = load ptr, ptr %3, align 8, !tbaa !20
  %1366 = getelementptr inbounds %struct.xpv, ptr %1365, i64 0, i32 2
  %1367 = load i64, ptr %1366, align 8, !tbaa !21
  %1368 = getelementptr inbounds i8, ptr %1364, i64 %1367
  store i8 42, ptr %1368, align 1, !tbaa !17
  %1369 = getelementptr inbounds i8, ptr %1368, i64 1
  store i8 123, ptr %1369, align 1, !tbaa !17
  %1370 = load ptr, ptr %3, align 8, !tbaa !20
  %1371 = getelementptr inbounds %struct.xpv, ptr %1370, i64 0, i32 2
  %1372 = load i64, ptr %1371, align 8, !tbaa !21
  %1373 = add i64 %1372, 2
  store i64 %1373, ptr %1371, align 8, !tbaa !21
  %1374 = load i64, ptr %31, align 8, !tbaa !16
  %1375 = call fastcc i32 @esc_q_utf8(ptr noundef nonnull %3, ptr noundef %1342, i64 noundef %1374, i32 noundef 1, i32 noundef %22) #16
  %1376 = load ptr, ptr %3, align 8, !tbaa !20
  %1377 = getelementptr inbounds %struct.xpv, ptr %1376, i64 0, i32 2
  %1378 = load i64, ptr %1377, align 8, !tbaa !21
  %1379 = add i64 %1378, 2
  %1380 = call ptr @Perl_sv_grow(ptr noundef nonnull %3, i64 noundef %1379) #14
  %1381 = load ptr, ptr %1363, align 8, !tbaa !17
  %1382 = load ptr, ptr %3, align 8, !tbaa !20
  %1383 = getelementptr inbounds %struct.xpv, ptr %1382, i64 0, i32 2
  %1384 = load i64, ptr %1383, align 8, !tbaa !21
  %1385 = getelementptr inbounds i8, ptr %1381, i64 %1384
  store i8 125, ptr %1385, align 1, !tbaa !17
  %1386 = getelementptr inbounds i8, ptr %1385, i64 1
  store i8 0, ptr %1386, align 1, !tbaa !17
  store i64 1, ptr %31, align 8, !tbaa !16
  br label %1432

1387:                                             ; preds = %1344
  %1388 = shl i64 %1341, 1
  %1389 = add i64 %1388, 6
  %1390 = add i64 %1389, %1359
  %1391 = call ptr @Perl_sv_grow(ptr noundef nonnull %3, i64 noundef %1390) #14
  %1392 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %1393 = load ptr, ptr %1392, align 8, !tbaa !17
  %1394 = load ptr, ptr %3, align 8, !tbaa !20
  %1395 = getelementptr inbounds %struct.xpv, ptr %1394, i64 0, i32 2
  %1396 = load i64, ptr %1395, align 8, !tbaa !21
  %1397 = getelementptr inbounds i8, ptr %1393, i64 %1396
  store i8 42, ptr %1397, align 1, !tbaa !17
  %1398 = getelementptr inbounds i8, ptr %1397, i64 1
  store i8 123, ptr %1398, align 1, !tbaa !17
  %1399 = getelementptr inbounds i8, ptr %1397, i64 2
  store i8 39, ptr %1399, align 1, !tbaa !17
  %1400 = getelementptr inbounds i8, ptr %1397, i64 3
  %1401 = load i64, ptr %31, align 8, !tbaa !16
  %1402 = call fastcc i32 @esc_q(ptr noundef nonnull %1400, ptr noundef %1342, i64 noundef %1401) #16
  %1403 = sext i32 %1402 to i64
  %1404 = load i64, ptr %31, align 8, !tbaa !16
  %1405 = add i64 %1404, %1403
  %1406 = add i64 %1405, 4
  store i64 %1406, ptr %31, align 8, !tbaa !16
  %1407 = getelementptr i8, ptr %1397, i64 %1405
  %1408 = getelementptr i8, ptr %1407, i64 3
  store i8 39, ptr %1408, align 1, !tbaa !17
  %1409 = load i64, ptr %31, align 8, !tbaa !16
  %1410 = add i64 %1409, 1
  store i64 %1410, ptr %31, align 8, !tbaa !16
  %1411 = getelementptr inbounds i8, ptr %1397, i64 %1409
  store i8 125, ptr %1411, align 1, !tbaa !17
  %1412 = load i64, ptr %31, align 8, !tbaa !16
  %1413 = getelementptr inbounds i8, ptr %1397, i64 %1412
  store i8 0, ptr %1413, align 1, !tbaa !17
  %1414 = load i64, ptr %31, align 8, !tbaa !16
  br label %1432

1415:                                             ; preds = %1340
  %1416 = load ptr, ptr %3, align 8, !tbaa !20
  %1417 = getelementptr inbounds %struct.xpv, ptr %1416, i64 0, i32 2
  %1418 = load i64, ptr %1417, align 8, !tbaa !21
  %1419 = add i64 %1341, 2
  %1420 = add i64 %1419, %1418
  %1421 = call ptr @Perl_sv_grow(ptr noundef nonnull %3, i64 noundef %1420) #14
  %1422 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %1423 = load ptr, ptr %1422, align 8, !tbaa !17
  %1424 = load ptr, ptr %3, align 8, !tbaa !20
  %1425 = getelementptr inbounds %struct.xpv, ptr %1424, i64 0, i32 2
  %1426 = load i64, ptr %1425, align 8, !tbaa !21
  %1427 = getelementptr inbounds i8, ptr %1423, i64 %1426
  store i8 42, ptr %1427, align 1, !tbaa !17
  %1428 = getelementptr inbounds i8, ptr %1427, i64 1
  %1429 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1428, ptr noundef nonnull dereferenceable(1) %1342) #14
  %1430 = load i64, ptr %31, align 8, !tbaa !16
  %1431 = add i64 %1430, 1
  store i64 %1431, ptr %31, align 8, !tbaa !16
  br label %1432

1432:                                             ; preds = %1415, %1387, %1360
  %1433 = phi i64 [ 1, %1360 ], [ %1414, %1387 ], [ %1431, %1415 ]
  %1434 = phi ptr [ %1385, %1360 ], [ %1397, %1387 ], [ %1427, %1415 ]
  %1435 = load ptr, ptr %3, align 8, !tbaa !20
  %1436 = getelementptr inbounds %struct.xpv, ptr %1435, i64 0, i32 2
  %1437 = load i64, ptr %1436, align 8, !tbaa !21
  %1438 = add i64 %1433, %1437
  store i64 %1438, ptr %1436, align 8, !tbaa !21
  %1439 = icmp eq i32 %15, 0
  br i1 %1439, label %1600, label %1440

1440:                                             ; preds = %1432
  %1441 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.9, i64 noundef 0) #14
  %1442 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.9, i64 noundef 0) #14
  %1443 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %1444 = icmp sgt i32 %7, 1
  %1445 = getelementptr inbounds %struct.sv, ptr %1441, i64 0, i32 3
  br label %1446

1446:                                             ; preds = %1440, %1494
  %1447 = phi i64 [ 0, %1440 ], [ %1495, %1494 ]
  %1448 = trunc i64 %1447 to i32
  %1449 = load ptr, ptr %1443, align 8, !tbaa !17
  switch i32 %1448, label %1452 [
    i32 0, label %1458
    i32 1, label %1450
  ]

1450:                                             ; preds = %1446
  %1451 = getelementptr inbounds %struct.gp, ptr %1449, i64 0, i32 6
  br label %1454

1452:                                             ; preds = %1446
  %1453 = getelementptr inbounds %struct.gp, ptr %1449, i64 0, i32 5
  br label %1454

1454:                                             ; preds = %1450, %1452
  %1455 = phi ptr [ %1451, %1450 ], [ %1453, %1452 ]
  %1456 = load ptr, ptr %1455, align 8, !tbaa !5
  %1457 = icmp eq ptr %1456, null
  br i1 %1457, label %1494, label %1472

1458:                                             ; preds = %1446
  %1459 = load ptr, ptr %1449, align 8, !tbaa !5
  %1460 = icmp eq ptr %1459, null
  br i1 %1460, label %1494, label %1461

1461:                                             ; preds = %1458
  %1462 = getelementptr inbounds %struct.sv, ptr %1459, i64 0, i32 2
  %1463 = load i32, ptr %1462, align 4, !tbaa !14
  %1464 = and i32 %1463, 65280
  %1465 = icmp ne i32 %1464, 0
  %1466 = and i32 %1463, 255
  %1467 = icmp eq i32 %1466, 8
  %1468 = or i1 %1465, %1467
  %1469 = and i32 %1463, 16777471
  %1470 = icmp eq i32 %1469, 16777226
  %1471 = or i1 %1470, %1468
  br i1 %1471, label %1472, label %1494

1472:                                             ; preds = %1454, %1461
  %1473 = phi ptr [ %1459, %1461 ], [ %1456, %1454 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #15
  store i32 0, ptr %33, align 4, !tbaa !9
  %1474 = load i64, ptr %31, align 8, !tbaa !16
  %1475 = call ptr @Perl_newSVpvn(ptr noundef nonnull %1434, i64 noundef %1474) #14
  call void @Perl_sv_setsv_flags(ptr noundef %1441, ptr noundef %1475, i32 noundef 2) #14
  %1476 = shl i64 %1447, 2
  %1477 = call ptr @llvm.load.relative.i64(ptr @reltable.DD_dump, i64 %1476)
  %1478 = getelementptr inbounds [3 x i64], ptr @DD_dump.sizes, i64 0, i64 %1447
  %1479 = load i64, ptr %1478, align 8, !tbaa !16
  call void @Perl_sv_catpvn_flags(ptr noundef %1441, ptr noundef %1477, i64 noundef %1479, i32 noundef 2) #14
  call void @Perl_sv_catpvn_flags(ptr noundef %1475, ptr noundef nonnull @.str.34, i64 noundef 3, i32 noundef 2) #14
  call void @Perl_av_push(ptr noundef %5, ptr noundef %1475) #14
  %1480 = call ptr @Perl_newRV(ptr noundef nonnull %1473) #14
  %1481 = load ptr, ptr %1442, align 8, !tbaa !20
  %1482 = getelementptr inbounds %struct.xpv, ptr %1481, i64 0, i32 2
  store i64 0, ptr %1482, align 8, !tbaa !21
  br i1 %1444, label %1483, label %1489

1483:                                             ; preds = %1472
  %1484 = load ptr, ptr %1475, align 8, !tbaa !20
  %1485 = getelementptr inbounds %struct.xpv, ptr %1484, i64 0, i32 2
  %1486 = load i64, ptr %1485, align 8, !tbaa !21
  %1487 = trunc i64 %1486 to i32
  %1488 = call fastcc ptr @sv_x(ptr noundef nonnull %1442, ptr noundef nonnull @.str.33, i64 noundef 1, i32 noundef %1487) #16
  br label %1489

1489:                                             ; preds = %1483, %1472
  %1490 = load ptr, ptr %1445, align 8, !tbaa !17
  %1491 = load ptr, ptr %1441, align 8, !tbaa !20
  %1492 = getelementptr inbounds %struct.xpv, ptr %1491, i64 0, i32 2
  %1493 = load i64, ptr %1492, align 8, !tbaa !21
  call fastcc void @DD_dump(ptr noundef %1480, ptr noundef %1490, i64 noundef %1493, ptr noundef %1475, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %33, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %1442, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i64 noundef %23) #16
  call fastcc void @S_SvREFCNT_dec(ptr noundef %1480) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #15
  br label %1494

1494:                                             ; preds = %1458, %1461, %1454, %1489
  %1495 = add nuw nsw i64 %1447, 1
  %1496 = icmp eq i64 %1495, 3
  br i1 %1496, label %1497, label %1446, !llvm.loop !47

1497:                                             ; preds = %1494
  call fastcc void @S_SvREFCNT_dec(ptr noundef %1442) #16
  call fastcc void @S_SvREFCNT_dec(ptr noundef %1441) #16
  br label %1600

1498:                                             ; preds = %1309
  %1499 = icmp eq ptr %0, @PL_sv_undef
  br i1 %1499, label %1509, label %1500

1500:                                             ; preds = %1498
  %1501 = and i32 %1250, 65024
  %1502 = icmp ne i32 %1501, 0
  %1503 = and i32 %1250, 255
  %1504 = icmp eq i32 %1503, 8
  %1505 = or i1 %1502, %1504
  %1506 = and i32 %1250, 16777471
  %1507 = icmp eq i32 %1506, 16777226
  %1508 = or i1 %1507, %1505
  br i1 %1508, label %1510, label %1509

1509:                                             ; preds = %1500, %1498
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.77, i64 noundef 5, i32 noundef 2) #14
  br label %1600

1510:                                             ; preds = %1500
  %1511 = and i32 %1250, 14680064
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1521, label %1513

1513:                                             ; preds = %1510
  %1514 = call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 86) #14
  %1515 = icmp eq ptr %1514, null
  br i1 %1515, label %1521, label %1516

1516:                                             ; preds = %1513
  %1517 = getelementptr inbounds %struct.magic, ptr %1514, i64 0, i32 7
  %1518 = load ptr, ptr %1517, align 8, !tbaa !26
  %1519 = getelementptr inbounds %struct.magic, ptr %1514, i64 0, i32 5
  %1520 = load i64, ptr %1519, align 8, !tbaa !29
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %3, ptr noundef %1518, i64 noundef %1520, i32 noundef 2) #14
  br label %1600

1521:                                             ; preds = %1302, %1301, %1510, %1513
  %1522 = load i32, ptr %53, align 4, !tbaa !14
  %1523 = and i32 %1522, 2098176
  %1524 = icmp eq i32 %1523, 1024
  br i1 %1524, label %1525, label %1531

1525:                                             ; preds = %1521
  %1526 = load ptr, ptr %0, align 8, !tbaa !20
  %1527 = getelementptr inbounds %struct.xpv, ptr %1526, i64 0, i32 2
  %1528 = load i64, ptr %1527, align 8, !tbaa !21
  store i64 %1528, ptr %31, align 8, !tbaa !16
  %1529 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %1530 = load ptr, ptr %1529, align 8, !tbaa !17
  br label %1533

1531:                                             ; preds = %1521
  %1532 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %31, i32 noundef 2) #14
  br label %1533

1533:                                             ; preds = %1531, %1525
  %1534 = phi ptr [ %1530, %1525 ], [ %1532, %1531 ]
  %1535 = icmp ne i32 %22, 0
  br i1 %1535, label %1536, label %1548

1536:                                             ; preds = %1533
  %1537 = load i64, ptr %31, align 8, !tbaa !16
  %1538 = call fastcc zeroext i1 @safe_decimal_number(ptr noundef %1534, i64 noundef %1537) #16
  br i1 %1538, label %1539, label %1540

1539:                                             ; preds = %1536
  call void @Perl_sv_catsv_flags(ptr noundef nonnull %3, ptr noundef nonnull %0, i32 noundef 2) #14
  br label %1600

1540:                                             ; preds = %1536
  %1541 = load i32, ptr %53, align 4, !tbaa !14
  %1542 = and i32 %1541, 536870912
  %1543 = icmp eq i32 %1542, 0
  br i1 %1543, label %1566, label %1544

1544:                                             ; preds = %1540
  %1545 = load ptr, ptr @PL_curcop, align 8, !tbaa !5
  %1546 = getelementptr inbounds %struct.cop, ptr %1545, i64 0, i32 10
  %1547 = load i32, ptr %1546, align 8, !tbaa !43
  br label %1560

1548:                                             ; preds = %1533
  %1549 = load i32, ptr %53, align 4, !tbaa !14
  %1550 = and i32 %1549, 536870912
  %1551 = icmp eq i32 %1550, 0
  %1552 = load i64, ptr %31, align 8, !tbaa !16
  br i1 %1551, label %1570, label %1553

1553:                                             ; preds = %1548
  %1554 = load ptr, ptr @PL_curcop, align 8, !tbaa !5
  %1555 = getelementptr inbounds %struct.cop, ptr %1554, i64 0, i32 10
  %1556 = load i32, ptr %1555, align 8, !tbaa !43
  %1557 = and i32 %1556, 8
  %1558 = icmp eq i32 %1557, 0
  %1559 = or i1 %1535, %1558
  br i1 %1559, label %1560, label %1570

1560:                                             ; preds = %1544, %1553
  %1561 = phi i32 [ %1547, %1544 ], [ %1556, %1553 ]
  %1562 = phi i64 [ %1537, %1544 ], [ %1552, %1553 ]
  %1563 = lshr i32 %1561, 3
  %1564 = and i32 %1563, 1
  %1565 = xor i32 %1564, 1
  br label %1566

1566:                                             ; preds = %1540, %1560
  %1567 = phi i64 [ %1562, %1560 ], [ %1537, %1540 ]
  %1568 = phi i32 [ %1565, %1560 ], [ 0, %1540 ]
  %1569 = call fastcc i32 @esc_q_utf8(ptr noundef nonnull %3, ptr noundef %1534, i64 noundef %1567, i32 noundef %1568, i32 noundef %22) #16
  br label %1600

1570:                                             ; preds = %1548, %1553
  %1571 = load ptr, ptr %3, align 8, !tbaa !20
  %1572 = getelementptr inbounds %struct.xpv, ptr %1571, i64 0, i32 2
  %1573 = load i64, ptr %1572, align 8, !tbaa !21
  %1574 = add i64 %1573, 3
  %1575 = shl i64 %1552, 1
  %1576 = add i64 %1574, %1575
  %1577 = call ptr @Perl_sv_grow(ptr noundef nonnull %3, i64 noundef %1576) #14
  %1578 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %1579 = load ptr, ptr %1578, align 8, !tbaa !17
  %1580 = load ptr, ptr %3, align 8, !tbaa !20
  %1581 = getelementptr inbounds %struct.xpv, ptr %1580, i64 0, i32 2
  %1582 = load i64, ptr %1581, align 8, !tbaa !21
  %1583 = getelementptr inbounds i8, ptr %1579, i64 %1582
  store i8 39, ptr %1583, align 1, !tbaa !17
  %1584 = getelementptr inbounds i8, ptr %1583, i64 1
  %1585 = load i64, ptr %31, align 8, !tbaa !16
  %1586 = call fastcc i32 @esc_q(ptr noundef nonnull %1584, ptr noundef %1534, i64 noundef %1585) #16
  %1587 = sext i32 %1586 to i64
  %1588 = load i64, ptr %31, align 8, !tbaa !16
  %1589 = add i64 %1588, %1587
  %1590 = add i64 %1589, 2
  store i64 %1590, ptr %31, align 8, !tbaa !16
  %1591 = getelementptr i8, ptr %1583, i64 %1589
  %1592 = getelementptr i8, ptr %1591, i64 1
  store i8 39, ptr %1592, align 1, !tbaa !17
  %1593 = load i64, ptr %31, align 8, !tbaa !16
  %1594 = getelementptr inbounds i8, ptr %1583, i64 %1593
  store i8 0, ptr %1594, align 1, !tbaa !17
  %1595 = load ptr, ptr %3, align 8, !tbaa !20
  %1596 = getelementptr inbounds %struct.xpv, ptr %1595, i64 0, i32 2
  %1597 = load i64, ptr %1596, align 8, !tbaa !21
  %1598 = load i64, ptr %31, align 8, !tbaa !16
  %1599 = add i64 %1598, %1597
  store i64 %1599, ptr %1596, align 8, !tbaa !21
  br label %1600

1600:                                             ; preds = %1509, %1539, %1570, %1566, %1516, %1432, %1497, %1308, %1307
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #15
  br i1 %1189, label %1614, label %1601

1601:                                             ; preds = %1185, %1600
  %1602 = phi ptr [ %535, %1185 ], [ %1249, %1600 ]
  %1603 = phi i32 [ 8, %1185 ], [ %1248, %1600 ]
  %1604 = icmp eq i32 %16, 0
  br i1 %1604, label %1607, label %1605

1605:                                             ; preds = %1601
  %1606 = call ptr @Perl_hv_common_key_len(ptr noundef %4, ptr noundef nonnull %26, i32 noundef %1603, i32 noundef 68, ptr noundef null, i32 noundef 0) #14
  br label %1614

1607:                                             ; preds = %1601
  %1608 = icmp ne i64 %2, 0
  %1609 = icmp ne ptr %1602, null
  %1610 = and i1 %1608, %1609
  br i1 %1610, label %1611, label %1614

1611:                                             ; preds = %1607
  %1612 = call ptr @Perl_av_fetch(ptr noundef nonnull %1602, i64 noundef 2, i32 noundef 1) #14
  %1613 = load ptr, ptr %1612, align 8, !tbaa !5
  call void @Perl_sv_setiv(ptr noundef %1613, i64 noundef 1) #14
  br label %1614

1614:                                             ; preds = %1232, %1600, %1607, %1611, %1605, %512, %511, %510, %505, %492, %24, %561
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %25) #15
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_fetchmeth_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !32
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !32
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_get_cv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @Perl_instr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sortsv(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_cmp(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @Perl_hv_iterval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @key_needs_quote(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = tail call fastcc zeroext i1 @safe_decimal_number(ptr noundef %0, i64 noundef %1) #16
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %0, align 1, !tbaa !17
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !9
  %10 = and i32 %9, 81920
  %11 = icmp eq i32 %10, 81920
  br i1 %11, label %12, label %23

12:                                               ; preds = %5, %16
  %13 = phi ptr [ %14, %16 ], [ %0, %5 ]
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  %15 = icmp ult ptr %14, %3
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i8, ptr %14, align 1, !tbaa !17
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !9
  %21 = and i32 %20, 16385
  %22 = icmp eq i32 %21, 16385
  br i1 %22, label %12, label %23, !llvm.loop !48

23:                                               ; preds = %12, %16, %5, %2
  %24 = phi i1 [ false, %2 ], [ true, %5 ], [ %15, %16 ], [ %15, %12 ]
  ret i1 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @esc_q_utf8(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds i8, ptr %1, i64 %2
  %7 = load ptr, ptr %0, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.xpv, ptr %7, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !21
  %10 = icmp sgt i64 %2, 0
  br i1 %10, label %11, label %113

11:                                               ; preds = %5
  %12 = icmp eq i32 %4, 0
  %13 = icmp eq i32 %3, 0
  %14 = ptrtoint ptr %6 to i64
  br label %15

15:                                               ; preds = %11, %104
  %16 = phi i64 [ 0, %11 ], [ %109, %104 ]
  %17 = phi i64 [ 0, %11 ], [ %108, %104 ]
  %18 = phi i64 [ 0, %11 ], [ %107, %104 ]
  %19 = phi i64 [ 0, %11 ], [ %106, %104 ]
  %20 = phi i64 [ 0, %11 ], [ %105, %104 ]
  %21 = phi ptr [ %1, %11 ], [ %111, %104 ]
  %22 = load i8, ptr %21, align 1, !tbaa !17
  %23 = freeze i8 %22
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !9
  %27 = and i32 %26, 16448
  %28 = icmp eq i32 %27, 16448
  br i1 %28, label %29, label %38

29:                                               ; preds = %15
  switch i8 %23, label %36 [
    i8 92, label %30
    i8 39, label %32
    i8 64, label %34
    i8 36, label %34
    i8 34, label %34
  ]

30:                                               ; preds = %29
  %31 = add i64 %19, 1
  br label %104

32:                                               ; preds = %29
  %33 = add i64 %18, 1
  br label %104

34:                                               ; preds = %29, %29, %29
  %35 = add i64 %17, 1
  br label %104

36:                                               ; preds = %29
  %37 = add i64 %16, 1
  br label %104

38:                                               ; preds = %15
  %39 = icmp slt i8 %23, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %38
  br i1 %13, label %71, label %41

41:                                               ; preds = %40
  %42 = ptrtoint ptr %21 to i64
  %43 = sub i64 %14, %42
  %44 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #14
  %45 = select i1 %44, i32 0, i32 -8161
  %46 = tail call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %21, i64 noundef %43, ptr noundef null, i32 noundef %45) #14
  %47 = icmp eq i64 %46, 0
  %48 = load i8, ptr %21, align 1, !tbaa !17
  br i1 %47, label %49, label %53

49:                                               ; preds = %41
  %50 = icmp eq i8 %48, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %49
  %52 = load i8, ptr @PL_utf8skip, align 1, !tbaa !17
  br label %65

53:                                               ; preds = %41
  %54 = zext i8 %48 to i64
  %55 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !17
  %57 = icmp ult i64 %46, 256
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = icmp ult i64 %46, 4096
  br i1 %59, label %65, label %60

60:                                               ; preds = %58
  %61 = icmp ult i64 %46, 65536
  br i1 %61, label %65, label %62

62:                                               ; preds = %60
  %63 = icmp ult i64 %46, 4294967296
  %64 = select i1 %63, i64 8, i64 32
  br label %65

65:                                               ; preds = %49, %51, %58, %60, %62, %53
  %66 = phi i8 [ %56, %53 ], [ %56, %58 ], [ %56, %62 ], [ %56, %60 ], [ %52, %51 ], [ 1, %49 ]
  %67 = phi i64 [ 2, %53 ], [ 3, %58 ], [ %64, %62 ], [ 4, %60 ], [ 2, %51 ], [ 2, %49 ]
  %68 = zext i8 %66 to i64
  %69 = add i64 %20, 4
  %70 = add i64 %69, %67
  br label %104

71:                                               ; preds = %40
  br i1 %12, label %74, label %72

72:                                               ; preds = %71
  %73 = add i64 %20, 6
  br label %104

74:                                               ; preds = %71
  %75 = add i64 %20, 4
  br label %104

76:                                               ; preds = %38
  br i1 %12, label %77, label %79

77:                                               ; preds = %76
  %78 = add i64 %16, 1
  br label %104

79:                                               ; preds = %76
  %80 = and i8 %23, 126
  %81 = icmp eq i8 %80, 12
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  switch i8 %23, label %85 [
    i8 27, label %83
    i8 10, label %83
    i8 9, label %83
    i8 8, label %83
    i8 7, label %83
  ]

83:                                               ; preds = %82, %82, %82, %82, %82, %79
  %84 = add i64 %20, 2
  br label %104

85:                                               ; preds = %82
  %86 = getelementptr inbounds i8, ptr %21, i64 1
  %87 = icmp ult ptr %86, %6
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i8, ptr %86, align 1, !tbaa !17
  %90 = add i8 %89, -48
  %91 = icmp ult i8 %90, 10
  br i1 %91, label %92, label %94

92:                                               ; preds = %88, %85
  %93 = add i64 %20, 4
  br label %104

94:                                               ; preds = %88
  %95 = icmp ult i8 %23, 8
  br i1 %95, label %96, label %98

96:                                               ; preds = %94
  %97 = add i64 %20, 2
  br label %104

98:                                               ; preds = %94
  %99 = icmp ult i8 %23, 64
  br i1 %99, label %100, label %102

100:                                              ; preds = %98
  %101 = add i64 %20, 3
  br label %104

102:                                              ; preds = %98
  %103 = add i64 %20, 4
  br label %104

104:                                              ; preds = %72, %74, %65, %83, %96, %102, %100, %92, %77, %30, %34, %36, %32
  %105 = phi i64 [ %70, %65 ], [ %73, %72 ], [ %75, %74 ], [ %84, %83 ], [ %93, %92 ], [ %97, %96 ], [ %101, %100 ], [ %103, %102 ], [ %20, %77 ], [ %20, %30 ], [ %20, %32 ], [ %20, %34 ], [ %20, %36 ]
  %106 = phi i64 [ %19, %65 ], [ %19, %72 ], [ %19, %74 ], [ %19, %83 ], [ %19, %92 ], [ %19, %96 ], [ %19, %100 ], [ %19, %102 ], [ %19, %77 ], [ %31, %30 ], [ %19, %32 ], [ %19, %34 ], [ %19, %36 ]
  %107 = phi i64 [ %18, %65 ], [ %18, %72 ], [ %18, %74 ], [ %18, %83 ], [ %18, %92 ], [ %18, %96 ], [ %18, %100 ], [ %18, %102 ], [ %18, %77 ], [ %18, %30 ], [ %33, %32 ], [ %18, %34 ], [ %18, %36 ]
  %108 = phi i64 [ %17, %65 ], [ %17, %72 ], [ %17, %74 ], [ %17, %83 ], [ %17, %92 ], [ %17, %96 ], [ %17, %100 ], [ %17, %102 ], [ %17, %77 ], [ %17, %30 ], [ %17, %32 ], [ %35, %34 ], [ %17, %36 ]
  %109 = phi i64 [ %16, %65 ], [ %16, %72 ], [ %16, %74 ], [ %16, %83 ], [ %16, %92 ], [ %16, %96 ], [ %16, %100 ], [ %16, %102 ], [ %78, %77 ], [ %16, %30 ], [ %16, %32 ], [ %16, %34 ], [ %37, %36 ]
  %110 = phi i64 [ %68, %65 ], [ 1, %72 ], [ 1, %74 ], [ 1, %83 ], [ 1, %92 ], [ 1, %96 ], [ 1, %100 ], [ 1, %102 ], [ 1, %77 ], [ 1, %30 ], [ 1, %32 ], [ 1, %34 ], [ 1, %36 ]
  %111 = getelementptr inbounds i8, ptr %21, i64 %110
  %112 = icmp ult ptr %111, %6
  br i1 %112, label %15, label %113, !llvm.loop !49

113:                                              ; preds = %104, %5
  %114 = phi i64 [ 0, %5 ], [ %105, %104 ]
  %115 = phi i64 [ 0, %5 ], [ %106, %104 ]
  %116 = phi i64 [ 0, %5 ], [ %107, %104 ]
  %117 = phi i64 [ 0, %5 ], [ %108, %104 ]
  %118 = phi i64 [ 0, %5 ], [ %109, %104 ]
  %119 = icmp ne i64 %114, 0
  %120 = icmp ne i32 %4, 0
  %121 = or i1 %120, %119
  %122 = add i64 %9, 3
  br i1 %121, label %123, label %236

123:                                              ; preds = %113
  %124 = add i64 %117, %115
  %125 = shl i64 %124, 1
  %126 = add i64 %122, %114
  %127 = add i64 %126, %116
  %128 = add i64 %127, %118
  %129 = add i64 %128, %125
  %130 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %0, i64 noundef %129) #14
  %131 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !17
  %133 = getelementptr inbounds i8, ptr %132, i64 %9
  %134 = getelementptr inbounds i8, ptr %133, i64 1
  store i8 34, ptr %133, align 1, !tbaa !17
  br i1 %10, label %135, label %233

135:                                              ; preds = %123
  %136 = icmp eq i32 %3, 0
  %137 = ptrtoint ptr %6 to i64
  br label %138

138:                                              ; preds = %135, %228
  %139 = phi ptr [ %134, %135 ], [ %230, %228 ]
  %140 = phi ptr [ %1, %135 ], [ %231, %228 ]
  %141 = load i8, ptr %140, align 1, !tbaa !17
  %142 = icmp sgt i8 %141, -1
  %143 = select i1 %136, i1 true, i1 %142
  br i1 %143, label %164, label %144

144:                                              ; preds = %138
  %145 = ptrtoint ptr %140 to i64
  %146 = sub i64 %137, %145
  %147 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #14
  %148 = select i1 %147, i32 0, i32 -8161
  %149 = tail call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %140, i64 noundef %146, ptr noundef null, i32 noundef %148) #14
  %150 = icmp ne i64 %149, 0
  %151 = load i8, ptr %140, align 1, !tbaa !17
  %152 = icmp eq i8 %151, 0
  %153 = select i1 %150, i1 true, i1 %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %144
  %155 = zext i8 %151 to i64
  %156 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !17
  %158 = zext i8 %157 to i64
  br label %159

159:                                              ; preds = %144, %154
  %160 = phi i64 [ %158, %154 ], [ 1, %144 ]
  %161 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %139, ptr noundef nonnull dereferenceable(1) @.str.78, i64 noundef %149) #14
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, ptr %139, i64 %162
  br label %228

164:                                              ; preds = %138
  %165 = zext i8 %141 to i64
  %166 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !9
  %168 = and i32 %167, 16448
  %169 = icmp eq i32 %168, 16448
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  switch i8 %141, label %173 [
    i8 92, label %171
    i8 64, label %171
    i8 36, label %171
    i8 34, label %171
  ]

171:                                              ; preds = %170, %170, %170, %170
  %172 = getelementptr inbounds i8, ptr %139, i64 1
  store i8 92, ptr %139, align 1, !tbaa !17
  br label %173

173:                                              ; preds = %170, %171
  %174 = phi ptr [ %172, %171 ], [ %139, %170 ]
  %175 = getelementptr inbounds i8, ptr %174, i64 1
  store i8 %141, ptr %174, align 1, !tbaa !17
  br label %228

176:                                              ; preds = %164
  %177 = getelementptr inbounds i8, ptr %139, i64 1
  br i1 %120, label %179, label %178

178:                                              ; preds = %176
  store i8 %141, ptr %139, align 1, !tbaa !17
  br label %228

179:                                              ; preds = %176
  store i8 92, ptr %139, align 1, !tbaa !17
  switch i8 %141, label %194 [
    i8 7, label %180
    i8 8, label %182
    i8 9, label %184
    i8 10, label %186
    i8 12, label %188
    i8 13, label %190
    i8 27, label %192
  ]

180:                                              ; preds = %179
  %181 = getelementptr inbounds i8, ptr %139, i64 2
  store i8 97, ptr %177, align 1, !tbaa !17
  br label %228

182:                                              ; preds = %179
  %183 = getelementptr inbounds i8, ptr %139, i64 2
  store i8 98, ptr %177, align 1, !tbaa !17
  br label %228

184:                                              ; preds = %179
  %185 = getelementptr inbounds i8, ptr %139, i64 2
  store i8 116, ptr %177, align 1, !tbaa !17
  br label %228

186:                                              ; preds = %179
  %187 = getelementptr inbounds i8, ptr %139, i64 2
  store i8 110, ptr %177, align 1, !tbaa !17
  br label %228

188:                                              ; preds = %179
  %189 = getelementptr inbounds i8, ptr %139, i64 2
  store i8 102, ptr %177, align 1, !tbaa !17
  br label %228

190:                                              ; preds = %179
  %191 = getelementptr inbounds i8, ptr %139, i64 2
  store i8 114, ptr %177, align 1, !tbaa !17
  br label %228

192:                                              ; preds = %179
  %193 = getelementptr inbounds i8, ptr %139, i64 2
  store i8 101, ptr %177, align 1, !tbaa !17
  br label %228

194:                                              ; preds = %179
  %195 = getelementptr inbounds i8, ptr %140, i64 1
  %196 = icmp ult ptr %195, %6
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load i8, ptr %195, align 1, !tbaa !17
  %199 = add i8 %198, -48
  %200 = icmp ult i8 %199, 10
  br label %201

201:                                              ; preds = %194, %197
  %202 = phi i1 [ %200, %197 ], [ false, %194 ]
  %203 = icmp ugt i8 %141, 7
  %204 = select i1 %203, i1 true, i1 %202
  br i1 %204, label %208, label %205

205:                                              ; preds = %201
  %206 = or disjoint i8 %141, 48
  %207 = getelementptr inbounds i8, ptr %139, i64 2
  store i8 %206, ptr %177, align 1, !tbaa !17
  br label %228

208:                                              ; preds = %201
  %209 = icmp ugt i8 %141, 63
  %210 = select i1 %209, i1 true, i1 %202
  %211 = getelementptr inbounds i8, ptr %139, i64 2
  br i1 %210, label %218, label %212

212:                                              ; preds = %208
  %213 = lshr i8 %141, 3
  %214 = or disjoint i8 %213, 48
  store i8 %214, ptr %177, align 1, !tbaa !17
  %215 = and i8 %141, 7
  %216 = or disjoint i8 %215, 48
  %217 = getelementptr inbounds i8, ptr %139, i64 3
  store i8 %216, ptr %211, align 1, !tbaa !17
  br label %228

218:                                              ; preds = %208
  %219 = lshr i8 %141, 6
  %220 = or disjoint i8 %219, 48
  store i8 %220, ptr %177, align 1, !tbaa !17
  %221 = lshr i8 %141, 3
  %222 = and i8 %221, 7
  %223 = or disjoint i8 %222, 48
  %224 = getelementptr inbounds i8, ptr %139, i64 3
  store i8 %223, ptr %211, align 1, !tbaa !17
  %225 = and i8 %141, 7
  %226 = or disjoint i8 %225, 48
  %227 = getelementptr inbounds i8, ptr %139, i64 4
  store i8 %226, ptr %224, align 1, !tbaa !17
  br label %228

228:                                              ; preds = %173, %178, %205, %218, %212, %192, %190, %188, %186, %184, %182, %180, %159
  %229 = phi i64 [ %160, %159 ], [ 1, %180 ], [ 1, %182 ], [ 1, %184 ], [ 1, %186 ], [ 1, %188 ], [ 1, %190 ], [ 1, %192 ], [ 1, %212 ], [ 1, %218 ], [ 1, %205 ], [ 1, %178 ], [ 1, %173 ]
  %230 = phi ptr [ %163, %159 ], [ %181, %180 ], [ %183, %182 ], [ %185, %184 ], [ %187, %186 ], [ %189, %188 ], [ %191, %190 ], [ %193, %192 ], [ %217, %212 ], [ %227, %218 ], [ %207, %205 ], [ %177, %178 ], [ %175, %173 ]
  %231 = getelementptr inbounds i8, ptr %140, i64 %229
  %232 = icmp ult ptr %231, %6
  br i1 %232, label %138, label %233, !llvm.loop !50

233:                                              ; preds = %228, %123
  %234 = phi ptr [ %134, %123 ], [ %230, %228 ]
  %235 = getelementptr inbounds i8, ptr %234, i64 1
  store i8 34, ptr %234, align 1, !tbaa !17
  br label %263

236:                                              ; preds = %113
  %237 = add i64 %116, %115
  %238 = shl i64 %237, 1
  %239 = add i64 %122, %117
  %240 = add i64 %239, %118
  %241 = add i64 %240, %238
  %242 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %0, i64 noundef %241) #14
  %243 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %244 = load ptr, ptr %243, align 8, !tbaa !17
  %245 = getelementptr inbounds i8, ptr %244, i64 %9
  store i8 39, ptr %245, align 1, !tbaa !17
  %246 = getelementptr inbounds i8, ptr %245, i64 1
  br i1 %10, label %247, label %259

247:                                              ; preds = %236, %254
  %248 = phi ptr [ %257, %254 ], [ %246, %236 ]
  %249 = phi ptr [ %255, %254 ], [ %245, %236 ]
  %250 = phi ptr [ %256, %254 ], [ %1, %236 ]
  %251 = load i8, ptr %250, align 1, !tbaa !17
  switch i8 %251, label %254 [
    i8 92, label %252
    i8 39, label %252
  ]

252:                                              ; preds = %247, %247
  %253 = getelementptr inbounds i8, ptr %249, i64 2
  store i8 92, ptr %248, align 1, !tbaa !17
  br label %254

254:                                              ; preds = %247, %252
  %255 = phi ptr [ %253, %252 ], [ %248, %247 ]
  store i8 %251, ptr %255, align 1, !tbaa !17
  %256 = getelementptr inbounds i8, ptr %250, i64 1
  %257 = getelementptr inbounds i8, ptr %255, i64 1
  %258 = icmp ult ptr %256, %6
  br i1 %258, label %247, label %259, !llvm.loop !51

259:                                              ; preds = %254, %236
  %260 = phi ptr [ %245, %236 ], [ %255, %254 ]
  %261 = phi ptr [ %246, %236 ], [ %257, %254 ]
  %262 = getelementptr inbounds i8, ptr %260, i64 2
  store i8 39, ptr %261, align 1, !tbaa !17
  br label %263

263:                                              ; preds = %259, %233
  %264 = phi ptr [ %133, %233 ], [ %245, %259 ]
  %265 = phi ptr [ %235, %233 ], [ %262, %259 ]
  store i8 0, ptr %265, align 1, !tbaa !17
  %266 = ptrtoint ptr %265 to i64
  %267 = ptrtoint ptr %264 to i64
  %268 = sub i64 %266, %267
  %269 = add i64 %268, %9
  %270 = load ptr, ptr %0, align 8, !tbaa !20
  %271 = getelementptr inbounds %struct.xpv, ptr %270, i64 0, i32 2
  store i64 %269, ptr %271, align 8, !tbaa !21
  %272 = trunc i64 %268 to i32
  ret i32 %272
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @num_q(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #7 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %11
  %5 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %6 = phi i64 [ %14, %11 ], [ %1, %2 ]
  %7 = phi ptr [ %13, %11 ], [ %0, %2 ]
  %8 = load i8, ptr %7, align 1, !tbaa !17
  switch i8 %8, label %11 [
    i8 39, label %9
    i8 92, label %9
  ]

9:                                                ; preds = %4, %4
  %10 = add nsw i32 %5, 1
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi i32 [ %10, %9 ], [ %5, %4 ]
  %13 = getelementptr inbounds i8, ptr %7, i64 1
  %14 = add i64 %6, -1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %4, !llvm.loop !52

16:                                               ; preds = %11, %2
  %17 = phi i32 [ 0, %2 ], [ %12, %11 ]
  ret i32 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @esc_q(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #8 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %3, %15
  %6 = phi i32 [ %18, %15 ], [ 0, %3 ]
  %7 = phi i64 [ %21, %15 ], [ %2, %3 ]
  %8 = phi ptr [ %20, %15 ], [ %1, %3 ]
  %9 = phi ptr [ %19, %15 ], [ %0, %3 ]
  %10 = load i8, ptr %8, align 1, !tbaa !17
  switch i8 %10, label %15 [
    i8 39, label %11
    i8 92, label %11
  ]

11:                                               ; preds = %5, %5
  store i8 92, ptr %9, align 1, !tbaa !17
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = add nsw i32 %6, 1
  %14 = load i8, ptr %8, align 1, !tbaa !17
  br label %15

15:                                               ; preds = %5, %11
  %16 = phi i8 [ %10, %5 ], [ %14, %11 ]
  %17 = phi ptr [ %9, %5 ], [ %12, %11 ]
  %18 = phi i32 [ %6, %5 ], [ %13, %11 ]
  store i8 %16, ptr %17, align 1, !tbaa !17
  %19 = getelementptr inbounds i8, ptr %17, i64 1
  %20 = getelementptr inbounds i8, ptr %8, i64 1
  %21 = add i64 %7, -1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %5, !llvm.loop !53

23:                                               ; preds = %15, %3
  %24 = phi i32 [ 0, %3 ], [ %18, %15 ]
  ret i32 %24
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @globname_needs_quote(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = load i8, ptr %0, align 1, !tbaa !17
  br label %5

5:                                                ; preds = %37, %2
  %6 = phi i8 [ %4, %2 ], [ 58, %37 ]
  %7 = phi ptr [ %0, %2 ], [ %28, %37 ]
  %8 = icmp eq i8 %6, 58
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  %11 = icmp ult ptr %10, %3
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load i8, ptr %10, align 1, !tbaa !17
  %14 = icmp eq i8 %13, 58
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %7, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !17
  br label %18

18:                                               ; preds = %15, %5
  %19 = phi i8 [ %17, %15 ], [ %6, %5 ]
  %20 = phi ptr [ %16, %15 ], [ %7, %5 ]
  %21 = zext i8 %19 to i64
  %22 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !9
  %24 = and i32 %23, 81920
  %25 = icmp eq i32 %24, 81920
  br i1 %25, label %26, label %39

26:                                               ; preds = %18, %30
  %27 = phi ptr [ %28, %30 ], [ %20, %18 ]
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  %29 = icmp ult ptr %28, %3
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i8, ptr %28, align 1, !tbaa !17
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !9
  %35 = and i32 %34, 16385
  %36 = icmp eq i32 %35, 16385
  br i1 %36, label %26, label %37, !llvm.loop !54

37:                                               ; preds = %30
  %38 = icmp eq i8 %31, 58
  br i1 %38, label %5, label %39

39:                                               ; preds = %18, %37, %9, %12, %26
  %40 = phi i1 [ false, %26 ], [ true, %12 ], [ true, %9 ], [ true, %37 ], [ true, %18 ]
  ret i1 %40
}

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @safe_decimal_number(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #7 {
  switch i64 %1, label %6 [
    i64 1, label %3
    i64 0, label %38
  ]

3:                                                ; preds = %2
  %4 = load i8, ptr %0, align 1, !tbaa !17
  %5 = icmp eq i8 %4, 48
  br i1 %5, label %38, label %8

6:                                                ; preds = %2
  %7 = load i8, ptr %0, align 1, !tbaa !17
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i8 [ %7, %6 ], [ %4, %3 ]
  %10 = icmp eq i8 %9, 45
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = add i64 %1, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !17
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i8 [ %16, %14 ], [ %9, %8 ]
  %19 = phi i64 [ %12, %14 ], [ %1, %8 ]
  %20 = phi ptr [ %15, %14 ], [ %0, %8 ]
  %21 = add i8 %18, -58
  %22 = icmp ult i8 %21, -9
  %23 = add i64 %19, -1
  %24 = icmp ugt i64 %23, 8
  %25 = or i1 %24, %22
  br i1 %25, label %38, label %26

26:                                               ; preds = %17
  %27 = icmp eq i64 %23, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %26, %28
  %29 = phi ptr [ %31, %28 ], [ %20, %26 ]
  %30 = phi i64 [ %35, %28 ], [ %23, %26 ]
  %31 = getelementptr inbounds i8, ptr %29, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !17
  %33 = add i8 %32, -48
  %34 = icmp ult i8 %33, 10
  %35 = add nsw i64 %30, -1
  %36 = icmp ne i64 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %28, label %38, !llvm.loop !55

38:                                               ; preds = %28, %26, %2, %11, %17, %3
  %39 = phi i1 [ true, %3 ], [ false, %17 ], [ false, %11 ], [ false, %2 ], [ true, %26 ], [ %34, %28 ]
  ret i1 %39
}

; Function Attrs: optsize
declare i64 @Perl_utf8n_to_uvchr(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !7, i64 34}
!12 = !{!"op", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !10, i64 32, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !7, i64 34, !7, i64 35}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !10, i64 12}
!15 = !{!"sv", !6, i64 0, !10, i64 8, !10, i64 12, !7, i64 16}
!16 = !{!13, !13, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !10, i64 12}
!19 = !{!"hv", !6, i64 0, !10, i64 8, !10, i64 12, !7, i64 16}
!20 = !{!15, !6, i64 0}
!21 = !{!22, !13, i64 16}
!22 = !{!"xpv", !6, i64 0, !7, i64 8, !13, i64 16, !7, i64 24}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = !{!27, !6, i64 40}
!27 = !{!"magic", !6, i64 0, !6, i64 8, !28, i64 16, !7, i64 18, !7, i64 19, !13, i64 24, !6, i64 32, !6, i64 40}
!28 = !{!"short", !7, i64 0}
!29 = !{!27, !13, i64 24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = !{!15, !10, i64 8}
!33 = !{!34, !6, i64 0}
!34 = !{!"xpvmg", !6, i64 0, !7, i64 8, !13, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!35 = !{!19, !6, i64 0}
!36 = !{!37, !13, i64 24}
!37 = !{!"xpvhv", !6, i64 0, !7, i64 8, !13, i64 16, !13, i64 24}
!38 = !{!39, !10, i64 28}
!39 = !{!"xpvhv_aux", !7, i64 0, !6, i64 8, !6, i64 16, !10, i64 24, !10, i64 28, !6, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24}
!42 = distinct !{!42, !24}
!43 = !{!44, !10, i64 56}
!44 = !{!"cop", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !10, i64 32, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !7, i64 34, !7, i64 35, !10, i64 36, !6, i64 40, !6, i64 48, !10, i64 56, !10, i64 60, !6, i64 64, !6, i64 72}
!45 = !{!46, !10, i64 4}
!46 = !{!"hek", !10, i64 0, !10, i64 4, !7, i64 8}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
