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

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_Data__Dumper(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Data__Dumper_Dumpxs, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #12
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Data__Dumper__vstring, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #12
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_Data__Dumper_Dumpxs(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %7 = load i32, ptr %5, align 4, !tbaa !39
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = ptrtoint ptr %4 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.6) #12
  br label %18

18:                                               ; preds = %17, %1
  %19 = shl i64 %13, 29
  %20 = ashr i64 %19, 32
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds ptr, ptr %4, i64 %21
  %23 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %24 = getelementptr ptr, ptr %23, i64 %9
  %25 = getelementptr ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #12
  %27 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 5
  %29 = load i8, ptr %28, align 2, !tbaa !41
  %30 = and i8 %29, 3
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %18
  %33 = zext nneg i8 %30 to i32
  br label %36

34:                                               ; preds = %18
  %35 = tail call i32 @Perl_block_gimme() #12
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !44
  %40 = and i32 %39, 2048
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %105

42:                                               ; preds = %36
  %43 = icmp slt i32 %15, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #12
  br label %45

45:                                               ; preds = %44, %42
  tail call void @Perl_push_scope() #12
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #12
  %46 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !46
  store i64 %46, ptr @PL_tmps_floor, align 8, !tbaa !46
  %47 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %48 = getelementptr inbounds i32, ptr %47, i64 1
  store ptr %48, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %49 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !35
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = tail call ptr @Perl_markstack_grow() #12
  br label %53

53:                                               ; preds = %45, %51
  %54 = phi ptr [ %52, %51 ], [ %48, %45 ]
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %56 = ptrtoint ptr %22 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = lshr exact i64 %58, 3
  %60 = trunc i64 %59 to i32
  store i32 %60, ptr %54, align 4, !tbaa !39
  %61 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %62, %56
  %64 = icmp slt i64 %63, 24
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = tail call ptr @Perl_stack_grow(ptr noundef %22, ptr noundef %22, i64 noundef 3) #12
  br label %67

67:                                               ; preds = %53, %65
  %68 = phi ptr [ %66, %65 ], [ %22, %53 ]
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  store ptr %26, ptr %69, align 8, !tbaa !35
  %70 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %71 = getelementptr ptr, ptr %70, i64 %9
  %72 = getelementptr ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  %74 = tail call ptr @Perl_newSVsv(ptr noundef %73) #12
  %75 = tail call ptr @Perl_sv_2mortal(ptr noundef %74) #12
  %76 = getelementptr inbounds ptr, ptr %68, i64 2
  store ptr %75, ptr %76, align 8, !tbaa !35
  %77 = icmp sgt i32 %15, 2
  br i1 %77, label %78, label %86

78:                                               ; preds = %67
  %79 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %80 = getelementptr ptr, ptr %79, i64 %9
  %81 = getelementptr ptr, ptr %80, i64 3
  %82 = load ptr, ptr %81, align 8, !tbaa !35
  %83 = tail call ptr @Perl_newSVsv(ptr noundef %82) #12
  %84 = tail call ptr @Perl_sv_2mortal(ptr noundef %83) #12
  %85 = getelementptr inbounds ptr, ptr %68, i64 3
  store ptr %84, ptr %85, align 8, !tbaa !35
  br label %86

86:                                               ; preds = %78, %67
  %87 = phi ptr [ %85, %78 ], [ %76, %67 ]
  store ptr %87, ptr @PL_stack_sp, align 8, !tbaa !35
  %88 = tail call i32 @Perl_call_method(ptr noundef nonnull @.str.8, i32 noundef 2) #12
  %89 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %90 = icmp eq i32 %88, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds ptr, ptr %89, i64 -1
  %93 = load ptr, ptr %89, align 8, !tbaa !35
  %94 = tail call ptr @Perl_newSVsv(ptr noundef %93) #12
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi ptr [ %94, %91 ], [ %26, %86 ]
  %97 = phi ptr [ %92, %91 ], [ %89, %86 ]
  store ptr %97, ptr @PL_stack_sp, align 8, !tbaa !35
  %98 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !46
  %99 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !46
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  tail call void @Perl_free_tmps() #12
  br label %102

102:                                              ; preds = %101, %95
  tail call void @Perl_pop_scope() #12
  br i1 %90, label %105, label %103

103:                                              ; preds = %102
  %104 = tail call ptr @Perl_sv_2mortal(ptr noundef %96) #12
  br label %105

105:                                              ; preds = %102, %103, %36
  %106 = phi ptr [ %26, %36 ], [ %96, %103 ], [ %96, %102 ]
  %107 = phi ptr [ %22, %36 ], [ %97, %103 ], [ %97, %102 ]
  %108 = tail call ptr @Perl_sv_newmortal() #12
  %109 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.9, i64 noundef 0) #12
  %110 = getelementptr inbounds %struct.sv, ptr %106, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !44
  %112 = and i32 %111, 2048
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %842, label %114

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.sv, ptr %106, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !47
  %117 = icmp eq ptr %116, null
  br i1 %117, label %842, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.hv, ptr %116, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !48
  %121 = and i32 %120, 255
  %122 = icmp eq i32 %121, 12
  br i1 %122, label %123, label %842

123:                                              ; preds = %118
  %124 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.10, i32 noundef 4, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %125 = icmp eq ptr %124, null
  br i1 %125, label %135, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %124, align 8, !tbaa !35
  %128 = getelementptr inbounds %struct.sv, ptr %127, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !44
  %130 = and i32 %129, 2048
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.sv, ptr %127, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !47
  br label %135

135:                                              ; preds = %123, %126, %132
  %136 = phi ptr [ %134, %132 ], [ null, %126 ], [ null, %123 ]
  %137 = phi i32 [ 0, %132 ], [ 1, %126 ], [ 1, %123 ]
  %138 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.11, i32 noundef 6, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %139 = icmp eq ptr %138, null
  br i1 %139, label %167, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr %138, align 8, !tbaa !35
  %142 = getelementptr inbounds %struct.sv, ptr %141, i64 0, i32 2
  %143 = load i32, ptr %142, align 4, !tbaa !44
  %144 = and i32 %143, 65280
  %145 = icmp ne i32 %144, 0
  %146 = and i32 %143, 255
  %147 = icmp eq i32 %146, 8
  %148 = or i1 %145, %147
  %149 = and i32 %143, 16777471
  %150 = icmp eq i32 %149, 16777226
  %151 = or i1 %150, %148
  br i1 %151, label %152, label %164

152:                                              ; preds = %140
  %153 = and i32 %143, 2097408
  %154 = icmp eq i32 %153, 256
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load ptr, ptr %141, align 8, !tbaa !50
  %157 = getelementptr inbounds %struct.xpviv, ptr %156, i64 0, i32 4
  %158 = load i64, ptr %157, align 8, !tbaa !47
  br label %161

159:                                              ; preds = %152
  %160 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %141, i32 noundef 2) #12
  br label %161

161:                                              ; preds = %159, %155
  %162 = phi i64 [ %158, %155 ], [ %160, %159 ]
  %163 = icmp ne i64 %162, 0
  br label %164

164:                                              ; preds = %140, %161
  %165 = phi i1 [ %163, %161 ], [ false, %140 ]
  %166 = zext i1 %165 to i32
  br label %167

167:                                              ; preds = %164, %135
  %168 = phi i32 [ %166, %164 ], [ %137, %135 ]
  %169 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.12, i32 noundef 6, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %170 = icmp eq ptr %169, null
  br i1 %170, label %180, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %169, align 8, !tbaa !35
  %173 = getelementptr inbounds %struct.sv, ptr %172, i64 0, i32 2
  %174 = load i32, ptr %173, align 4, !tbaa !44
  %175 = and i32 %174, 2048
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.sv, ptr %172, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !47
  br label %180

180:                                              ; preds = %177, %171, %167
  %181 = phi ptr [ %179, %177 ], [ null, %171 ], [ null, %167 ]
  %182 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.13, i32 noundef 5, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %183 = icmp eq ptr %182, null
  br i1 %183, label %193, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %182, align 8, !tbaa !35
  %186 = getelementptr inbounds %struct.sv, ptr %185, i64 0, i32 2
  %187 = load i32, ptr %186, align 4, !tbaa !44
  %188 = and i32 %187, 2048
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.sv, ptr %185, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !47
  br label %193

193:                                              ; preds = %190, %184, %180
  %194 = phi ptr [ %192, %190 ], [ null, %184 ], [ null, %180 ]
  %195 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.14, i32 noundef 6, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %196 = icmp eq ptr %195, null
  br i1 %196, label %212, label %197

197:                                              ; preds = %193
  %198 = load ptr, ptr %195, align 8, !tbaa !35
  %199 = getelementptr inbounds %struct.sv, ptr %198, i64 0, i32 2
  %200 = load i32, ptr %199, align 4, !tbaa !44
  %201 = and i32 %200, 2097408
  %202 = icmp eq i32 %201, 256
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load ptr, ptr %198, align 8, !tbaa !50
  %205 = getelementptr inbounds %struct.xpviv, ptr %204, i64 0, i32 4
  %206 = load i64, ptr %205, align 8, !tbaa !47
  br label %209

207:                                              ; preds = %197
  %208 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %198, i32 noundef 2) #12
  br label %209

209:                                              ; preds = %207, %203
  %210 = phi i64 [ %206, %203 ], [ %208, %207 ]
  %211 = trunc i64 %210 to i32
  br label %212

212:                                              ; preds = %209, %193
  %213 = phi i32 [ %211, %209 ], [ 2, %193 ]
  %214 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.15, i32 noundef 6, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %215 = icmp eq ptr %214, null
  br i1 %215, label %231, label %216

216:                                              ; preds = %212
  %217 = load ptr, ptr %214, align 8, !tbaa !35
  %218 = getelementptr inbounds %struct.sv, ptr %217, i64 0, i32 2
  %219 = load i32, ptr %218, align 4, !tbaa !44
  %220 = and i32 %219, 2097408
  %221 = icmp eq i32 %220, 256
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load ptr, ptr %217, align 8, !tbaa !50
  %224 = getelementptr inbounds %struct.xpviv, ptr %223, i64 0, i32 4
  %225 = load i64, ptr %224, align 8, !tbaa !47
  br label %228

226:                                              ; preds = %216
  %227 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %217, i32 noundef 2) #12
  br label %228

228:                                              ; preds = %226, %222
  %229 = phi i64 [ %225, %222 ], [ %227, %226 ]
  %230 = trunc i64 %229 to i32
  br label %231

231:                                              ; preds = %228, %212
  %232 = phi i32 [ %230, %228 ], [ 0, %212 ]
  %233 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.16, i32 noundef 5, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %234 = icmp eq ptr %233, null
  br i1 %234, label %294, label %235

235:                                              ; preds = %231
  %236 = load ptr, ptr %233, align 8, !tbaa !35
  %237 = icmp eq ptr %236, null
  br i1 %237, label %294, label %238

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.sv, ptr %236, i64 0, i32 2
  %240 = load i32, ptr %239, align 4, !tbaa !44
  %241 = and i32 %240, 2097152
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %238
  %244 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %236, i32 noundef 2) #12
  br label %294

245:                                              ; preds = %238
  %246 = and i32 %240, 65280
  %247 = icmp ne i32 %246, 0
  %248 = and i32 %240, 255
  %249 = icmp eq i32 %248, 8
  %250 = or i1 %247, %249
  %251 = and i32 %240, 16777471
  %252 = icmp eq i32 %251, 16777226
  %253 = or i1 %252, %250
  br i1 %253, label %254, label %294

254:                                              ; preds = %245
  %255 = and i32 %240, 1024
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %271, label %257

257:                                              ; preds = %254
  %258 = load ptr, ptr %236, align 8, !tbaa !50
  %259 = icmp eq ptr %258, null
  br i1 %259, label %294, label %260

260:                                              ; preds = %257
  %261 = getelementptr inbounds %struct.xpv, ptr %258, i64 0, i32 2
  %262 = load i64, ptr %261, align 8, !tbaa !51
  %263 = icmp ugt i64 %262, 1
  br i1 %263, label %294, label %264

264:                                              ; preds = %260
  %265 = icmp eq i64 %262, 0
  br i1 %265, label %294, label %266

266:                                              ; preds = %264
  %267 = getelementptr inbounds %struct.sv, ptr %236, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !47
  %269 = load i8, ptr %268, align 1, !tbaa !47
  %270 = icmp ne i8 %269, 48
  br label %294

271:                                              ; preds = %254
  %272 = and i32 %240, 768
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %292, label %274

274:                                              ; preds = %271
  %275 = and i32 %240, 256
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %274
  %278 = load ptr, ptr %236, align 8, !tbaa !50
  %279 = getelementptr inbounds %struct.xpviv, ptr %278, i64 0, i32 4
  %280 = load i64, ptr %279, align 8, !tbaa !47
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %294

282:                                              ; preds = %277, %274
  %283 = and i32 %240, 512
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %294, label %285

285:                                              ; preds = %282
  %286 = load ptr, ptr %236, align 8, !tbaa !50
  %287 = getelementptr inbounds %struct.xpvnv, ptr %286, i64 0, i32 5
  %288 = load double, ptr %287, align 8, !tbaa !47
  %289 = fcmp uno double %288, 0.000000e+00
  br i1 %289, label %294, label %290

290:                                              ; preds = %285
  %291 = fcmp une double %288, 0.000000e+00
  br label %294

292:                                              ; preds = %271
  %293 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %236, i32 noundef 0) #12
  br label %294

294:                                              ; preds = %285, %235, %277, %290, %282, %257, %264, %266, %260, %245, %292, %243, %231
  %295 = phi i1 [ false, %231 ], [ false, %235 ], [ %244, %243 ], [ %293, %292 ], [ false, %245 ], [ false, %257 ], [ true, %260 ], [ false, %264 ], [ %270, %266 ], [ true, %277 ], [ false, %282 ], [ %291, %290 ], [ true, %285 ]
  %296 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.17, i32 noundef 5, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %297 = icmp eq ptr %296, null
  br i1 %297, label %360, label %298

298:                                              ; preds = %294
  %299 = load ptr, ptr %296, align 8, !tbaa !35
  %300 = icmp eq ptr %299, null
  br i1 %300, label %357, label %301

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.sv, ptr %299, i64 0, i32 2
  %303 = load i32, ptr %302, align 4, !tbaa !44
  %304 = and i32 %303, 2097152
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %301
  %307 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %299, i32 noundef 2) #12
  br label %357

308:                                              ; preds = %301
  %309 = and i32 %303, 65280
  %310 = icmp ne i32 %309, 0
  %311 = and i32 %303, 255
  %312 = icmp eq i32 %311, 8
  %313 = or i1 %310, %312
  %314 = and i32 %303, 16777471
  %315 = icmp eq i32 %314, 16777226
  %316 = or i1 %315, %313
  br i1 %316, label %317, label %357

317:                                              ; preds = %308
  %318 = and i32 %303, 1024
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %334, label %320

320:                                              ; preds = %317
  %321 = load ptr, ptr %299, align 8, !tbaa !50
  %322 = icmp eq ptr %321, null
  br i1 %322, label %357, label %323

323:                                              ; preds = %320
  %324 = getelementptr inbounds %struct.xpv, ptr %321, i64 0, i32 2
  %325 = load i64, ptr %324, align 8, !tbaa !51
  %326 = icmp ugt i64 %325, 1
  br i1 %326, label %357, label %327

327:                                              ; preds = %323
  %328 = icmp eq i64 %325, 0
  br i1 %328, label %357, label %329

329:                                              ; preds = %327
  %330 = getelementptr inbounds %struct.sv, ptr %299, i64 0, i32 3
  %331 = load ptr, ptr %330, align 8, !tbaa !47
  %332 = load i8, ptr %331, align 1, !tbaa !47
  %333 = icmp ne i8 %332, 48
  br label %357

334:                                              ; preds = %317
  %335 = and i32 %303, 768
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %355, label %337

337:                                              ; preds = %334
  %338 = and i32 %303, 256
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %345, label %340

340:                                              ; preds = %337
  %341 = load ptr, ptr %299, align 8, !tbaa !50
  %342 = getelementptr inbounds %struct.xpviv, ptr %341, i64 0, i32 4
  %343 = load i64, ptr %342, align 8, !tbaa !47
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %345, label %357

345:                                              ; preds = %340, %337
  %346 = and i32 %303, 512
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %357, label %348

348:                                              ; preds = %345
  %349 = load ptr, ptr %299, align 8, !tbaa !50
  %350 = getelementptr inbounds %struct.xpvnv, ptr %349, i64 0, i32 5
  %351 = load double, ptr %350, align 8, !tbaa !47
  %352 = fcmp uno double %351, 0.000000e+00
  br i1 %352, label %357, label %353

353:                                              ; preds = %348
  %354 = fcmp une double %351, 0.000000e+00
  br label %357

355:                                              ; preds = %334
  %356 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %299, i32 noundef 0) #12
  br label %357

357:                                              ; preds = %348, %306, %355, %308, %323, %329, %327, %320, %345, %353, %340, %298
  %358 = phi i1 [ false, %298 ], [ %307, %306 ], [ %356, %355 ], [ false, %308 ], [ false, %320 ], [ true, %323 ], [ false, %327 ], [ %333, %329 ], [ true, %340 ], [ false, %345 ], [ %354, %353 ], [ true, %348 ]
  %359 = zext i1 %358 to i32
  br label %360

360:                                              ; preds = %357, %294
  %361 = phi i32 [ %359, %357 ], [ 0, %294 ]
  %362 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.18, i32 noundef 3, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %363 = icmp eq ptr %362, null
  br i1 %363, label %366, label %364

364:                                              ; preds = %360
  %365 = load ptr, ptr %362, align 8, !tbaa !35
  br label %366

366:                                              ; preds = %364, %360
  %367 = phi ptr [ %365, %364 ], [ @PL_sv_undef, %360 ]
  %368 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.19, i32 noundef 4, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %369 = icmp eq ptr %368, null
  br i1 %369, label %372, label %370

370:                                              ; preds = %366
  %371 = load ptr, ptr %368, align 8, !tbaa !35
  br label %372

372:                                              ; preds = %370, %366
  %373 = phi ptr [ %371, %370 ], [ @PL_sv_undef, %366 ]
  %374 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.20, i32 noundef 4, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %375 = icmp eq ptr %374, null
  br i1 %375, label %378, label %376

376:                                              ; preds = %372
  %377 = load ptr, ptr %374, align 8, !tbaa !35
  br label %378

378:                                              ; preds = %376, %372
  %379 = phi ptr [ %377, %376 ], [ @PL_sv_undef, %372 ]
  %380 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.21, i32 noundef 3, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %381 = icmp eq ptr %380, null
  br i1 %381, label %384, label %382

382:                                              ; preds = %378
  %383 = load ptr, ptr %380, align 8, !tbaa !35
  br label %384

384:                                              ; preds = %382, %378
  %385 = phi ptr [ %383, %382 ], [ @PL_sv_undef, %378 ]
  %386 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.22, i32 noundef 4, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %387 = icmp eq ptr %386, null
  br i1 %387, label %390, label %388

388:                                              ; preds = %384
  %389 = load ptr, ptr %386, align 8, !tbaa !35
  br label %390

390:                                              ; preds = %388, %384
  %391 = phi ptr [ %389, %388 ], [ @PL_sv_undef, %384 ]
  %392 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.23, i32 noundef 7, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %393 = icmp eq ptr %392, null
  br i1 %393, label %396, label %394

394:                                              ; preds = %390
  %395 = load ptr, ptr %392, align 8, !tbaa !35
  br label %396

396:                                              ; preds = %394, %390
  %397 = phi ptr [ %395, %394 ], [ @PL_sv_undef, %390 ]
  %398 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.24, i32 noundef 7, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %399 = icmp eq ptr %398, null
  br i1 %399, label %402, label %400

400:                                              ; preds = %396
  %401 = load ptr, ptr %398, align 8, !tbaa !35
  br label %402

402:                                              ; preds = %400, %396
  %403 = phi ptr [ %401, %400 ], [ @PL_sv_undef, %396 ]
  %404 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.25, i32 noundef 7, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %405 = icmp eq ptr %404, null
  br i1 %405, label %408, label %406

406:                                              ; preds = %402
  %407 = load ptr, ptr %404, align 8, !tbaa !35
  br label %408

408:                                              ; preds = %406, %402
  %409 = phi ptr [ %407, %406 ], [ @PL_sv_undef, %402 ]
  %410 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.26, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %411 = icmp eq ptr %410, null
  br i1 %411, label %474, label %412

412:                                              ; preds = %408
  %413 = load ptr, ptr %410, align 8, !tbaa !35
  %414 = icmp eq ptr %413, null
  br i1 %414, label %471, label %415

415:                                              ; preds = %412
  %416 = getelementptr inbounds %struct.sv, ptr %413, i64 0, i32 2
  %417 = load i32, ptr %416, align 4, !tbaa !44
  %418 = and i32 %417, 2097152
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %422, label %420

420:                                              ; preds = %415
  %421 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %413, i32 noundef 2) #12
  br label %471

422:                                              ; preds = %415
  %423 = and i32 %417, 65280
  %424 = icmp ne i32 %423, 0
  %425 = and i32 %417, 255
  %426 = icmp eq i32 %425, 8
  %427 = or i1 %424, %426
  %428 = and i32 %417, 16777471
  %429 = icmp eq i32 %428, 16777226
  %430 = or i1 %429, %427
  br i1 %430, label %431, label %471

431:                                              ; preds = %422
  %432 = and i32 %417, 1024
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %448, label %434

434:                                              ; preds = %431
  %435 = load ptr, ptr %413, align 8, !tbaa !50
  %436 = icmp eq ptr %435, null
  br i1 %436, label %471, label %437

437:                                              ; preds = %434
  %438 = getelementptr inbounds %struct.xpv, ptr %435, i64 0, i32 2
  %439 = load i64, ptr %438, align 8, !tbaa !51
  %440 = icmp ugt i64 %439, 1
  br i1 %440, label %471, label %441

441:                                              ; preds = %437
  %442 = icmp eq i64 %439, 0
  br i1 %442, label %471, label %443

443:                                              ; preds = %441
  %444 = getelementptr inbounds %struct.sv, ptr %413, i64 0, i32 3
  %445 = load ptr, ptr %444, align 8, !tbaa !47
  %446 = load i8, ptr %445, align 1, !tbaa !47
  %447 = icmp ne i8 %446, 48
  br label %471

448:                                              ; preds = %431
  %449 = and i32 %417, 768
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %469, label %451

451:                                              ; preds = %448
  %452 = and i32 %417, 256
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %459, label %454

454:                                              ; preds = %451
  %455 = load ptr, ptr %413, align 8, !tbaa !50
  %456 = getelementptr inbounds %struct.xpviv, ptr %455, i64 0, i32 4
  %457 = load i64, ptr %456, align 8, !tbaa !47
  %458 = icmp eq i64 %457, 0
  br i1 %458, label %459, label %471

459:                                              ; preds = %454, %451
  %460 = and i32 %417, 512
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %471, label %462

462:                                              ; preds = %459
  %463 = load ptr, ptr %413, align 8, !tbaa !50
  %464 = getelementptr inbounds %struct.xpvnv, ptr %463, i64 0, i32 5
  %465 = load double, ptr %464, align 8, !tbaa !47
  %466 = fcmp uno double %465, 0.000000e+00
  br i1 %466, label %471, label %467

467:                                              ; preds = %462
  %468 = fcmp une double %465, 0.000000e+00
  br label %471

469:                                              ; preds = %448
  %470 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %413, i32 noundef 0) #12
  br label %471

471:                                              ; preds = %462, %420, %469, %422, %437, %443, %441, %434, %459, %467, %454, %412
  %472 = phi i1 [ false, %412 ], [ %421, %420 ], [ %470, %469 ], [ false, %422 ], [ false, %434 ], [ true, %437 ], [ false, %441 ], [ %447, %443 ], [ true, %454 ], [ false, %459 ], [ %468, %467 ], [ true, %462 ]
  %473 = zext i1 %472 to i32
  br label %474

474:                                              ; preds = %471, %408
  %475 = phi i32 [ %473, %471 ], [ 0, %408 ]
  %476 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.27, i32 noundef 9, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %477 = icmp eq ptr %476, null
  br i1 %477, label %540, label %478

478:                                              ; preds = %474
  %479 = load ptr, ptr %476, align 8, !tbaa !35
  %480 = icmp eq ptr %479, null
  br i1 %480, label %537, label %481

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.sv, ptr %479, i64 0, i32 2
  %483 = load i32, ptr %482, align 4, !tbaa !44
  %484 = and i32 %483, 2097152
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %488, label %486

486:                                              ; preds = %481
  %487 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %479, i32 noundef 2) #12
  br label %537

488:                                              ; preds = %481
  %489 = and i32 %483, 65280
  %490 = icmp ne i32 %489, 0
  %491 = and i32 %483, 255
  %492 = icmp eq i32 %491, 8
  %493 = or i1 %490, %492
  %494 = and i32 %483, 16777471
  %495 = icmp eq i32 %494, 16777226
  %496 = or i1 %495, %493
  br i1 %496, label %497, label %537

497:                                              ; preds = %488
  %498 = and i32 %483, 1024
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %514, label %500

500:                                              ; preds = %497
  %501 = load ptr, ptr %479, align 8, !tbaa !50
  %502 = icmp eq ptr %501, null
  br i1 %502, label %537, label %503

503:                                              ; preds = %500
  %504 = getelementptr inbounds %struct.xpv, ptr %501, i64 0, i32 2
  %505 = load i64, ptr %504, align 8, !tbaa !51
  %506 = icmp ugt i64 %505, 1
  br i1 %506, label %537, label %507

507:                                              ; preds = %503
  %508 = icmp eq i64 %505, 0
  br i1 %508, label %537, label %509

509:                                              ; preds = %507
  %510 = getelementptr inbounds %struct.sv, ptr %479, i64 0, i32 3
  %511 = load ptr, ptr %510, align 8, !tbaa !47
  %512 = load i8, ptr %511, align 1, !tbaa !47
  %513 = icmp ne i8 %512, 48
  br label %537

514:                                              ; preds = %497
  %515 = and i32 %483, 768
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %535, label %517

517:                                              ; preds = %514
  %518 = and i32 %483, 256
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %525, label %520

520:                                              ; preds = %517
  %521 = load ptr, ptr %479, align 8, !tbaa !50
  %522 = getelementptr inbounds %struct.xpviv, ptr %521, i64 0, i32 4
  %523 = load i64, ptr %522, align 8, !tbaa !47
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %525, label %537

525:                                              ; preds = %520, %517
  %526 = and i32 %483, 512
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %537, label %528

528:                                              ; preds = %525
  %529 = load ptr, ptr %479, align 8, !tbaa !50
  %530 = getelementptr inbounds %struct.xpvnv, ptr %529, i64 0, i32 5
  %531 = load double, ptr %530, align 8, !tbaa !47
  %532 = fcmp uno double %531, 0.000000e+00
  br i1 %532, label %537, label %533

533:                                              ; preds = %528
  %534 = fcmp une double %531, 0.000000e+00
  br label %537

535:                                              ; preds = %514
  %536 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %479, i32 noundef 0) #12
  br label %537

537:                                              ; preds = %528, %486, %535, %488, %503, %509, %507, %500, %525, %533, %520, %478
  %538 = phi i1 [ false, %478 ], [ %487, %486 ], [ %536, %535 ], [ false, %488 ], [ false, %500 ], [ true, %503 ], [ false, %507 ], [ %513, %509 ], [ true, %520 ], [ false, %525 ], [ %534, %533 ], [ true, %528 ]
  %539 = zext i1 %538 to i32
  br label %540

540:                                              ; preds = %537, %474
  %541 = phi i32 [ %539, %537 ], [ 1, %474 ]
  %542 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.28, i32 noundef 5, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %543 = icmp eq ptr %542, null
  br i1 %543, label %546, label %544

544:                                              ; preds = %540
  %545 = load ptr, ptr %542, align 8, !tbaa !35
  br label %546

546:                                              ; preds = %544, %540
  %547 = phi ptr [ %545, %544 ], [ @PL_sv_undef, %540 ]
  %548 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.29, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %549 = icmp eq ptr %548, null
  br i1 %549, label %565, label %550

550:                                              ; preds = %546
  %551 = load ptr, ptr %548, align 8, !tbaa !35
  %552 = getelementptr inbounds %struct.sv, ptr %551, i64 0, i32 2
  %553 = load i32, ptr %552, align 4, !tbaa !44
  %554 = and i32 %553, 2097408
  %555 = icmp eq i32 %554, 256
  br i1 %555, label %556, label %560

556:                                              ; preds = %550
  %557 = load ptr, ptr %551, align 8, !tbaa !50
  %558 = getelementptr inbounds %struct.xpviv, ptr %557, i64 0, i32 4
  %559 = load i64, ptr %558, align 8, !tbaa !47
  br label %562

560:                                              ; preds = %550
  %561 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %551, i32 noundef 2) #12
  br label %562

562:                                              ; preds = %560, %556
  %563 = phi i64 [ %559, %556 ], [ %561, %560 ]
  %564 = trunc i64 %563 to i32
  br label %565

565:                                              ; preds = %562, %546
  %566 = phi i32 [ %564, %562 ], [ 0, %546 ]
  %567 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.30, i32 noundef 10, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %568 = icmp eq ptr %567, null
  br i1 %568, label %581, label %569

569:                                              ; preds = %565
  %570 = load ptr, ptr %567, align 8, !tbaa !35
  %571 = getelementptr inbounds %struct.sv, ptr %570, i64 0, i32 2
  %572 = load i32, ptr %571, align 4, !tbaa !44
  %573 = and i32 %572, 2097408
  %574 = icmp eq i32 %573, 256
  br i1 %574, label %575, label %579

575:                                              ; preds = %569
  %576 = load ptr, ptr %570, align 8, !tbaa !50
  %577 = getelementptr inbounds %struct.xpviv, ptr %576, i64 0, i32 4
  %578 = load i64, ptr %577, align 8, !tbaa !47
  br label %581

579:                                              ; preds = %569
  %580 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %570, i32 noundef 2) #12
  br label %581

581:                                              ; preds = %575, %579, %565
  %582 = phi i64 [ 1000, %565 ], [ %578, %575 ], [ %580, %579 ]
  %583 = tail call ptr @Perl_hv_common_key_len(ptr noundef %116, ptr noundef nonnull @.str.31, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %584 = icmp eq ptr %583, null
  br i1 %584, label %654, label %585

585:                                              ; preds = %581
  %586 = load ptr, ptr %583, align 8, !tbaa !35
  %587 = icmp eq ptr %586, null
  br i1 %587, label %654, label %588

588:                                              ; preds = %585
  %589 = getelementptr inbounds %struct.sv, ptr %586, i64 0, i32 2
  %590 = load i32, ptr %589, align 4, !tbaa !44
  %591 = and i32 %590, 2097152
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %595, label %593

593:                                              ; preds = %588
  %594 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %586, i32 noundef 2) #12
  br i1 %594, label %642, label %654

595:                                              ; preds = %588
  %596 = and i32 %590, 65280
  %597 = icmp ne i32 %596, 0
  %598 = and i32 %590, 255
  %599 = icmp eq i32 %598, 8
  %600 = or i1 %597, %599
  %601 = and i32 %590, 16777471
  %602 = icmp eq i32 %601, 16777226
  %603 = or i1 %602, %600
  br i1 %603, label %604, label %654

604:                                              ; preds = %595
  %605 = and i32 %590, 1024
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %621, label %607

607:                                              ; preds = %604
  %608 = load ptr, ptr %586, align 8, !tbaa !50
  %609 = icmp eq ptr %608, null
  br i1 %609, label %654, label %610

610:                                              ; preds = %607
  %611 = getelementptr inbounds %struct.xpv, ptr %608, i64 0, i32 2
  %612 = load i64, ptr %611, align 8, !tbaa !51
  %613 = icmp ugt i64 %612, 1
  br i1 %613, label %642, label %614

614:                                              ; preds = %610
  %615 = icmp eq i64 %612, 0
  br i1 %615, label %654, label %616

616:                                              ; preds = %614
  %617 = getelementptr inbounds %struct.sv, ptr %586, i64 0, i32 3
  %618 = load ptr, ptr %617, align 8, !tbaa !47
  %619 = load i8, ptr %618, align 1, !tbaa !47
  %620 = icmp eq i8 %619, 48
  br i1 %620, label %654, label %642

621:                                              ; preds = %604
  %622 = and i32 %590, 768
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %640, label %624

624:                                              ; preds = %621
  %625 = and i32 %590, 256
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %632, label %627

627:                                              ; preds = %624
  %628 = load ptr, ptr %586, align 8, !tbaa !50
  %629 = getelementptr inbounds %struct.xpviv, ptr %628, i64 0, i32 4
  %630 = load i64, ptr %629, align 8, !tbaa !47
  %631 = icmp eq i64 %630, 0
  br i1 %631, label %632, label %642

632:                                              ; preds = %627, %624
  %633 = and i32 %590, 512
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %654, label %635

635:                                              ; preds = %632
  %636 = load ptr, ptr %586, align 8, !tbaa !50
  %637 = getelementptr inbounds %struct.xpvnv, ptr %636, i64 0, i32 5
  %638 = load double, ptr %637, align 8, !tbaa !47
  %639 = fcmp une double %638, 0.000000e+00
  br i1 %639, label %642, label %654

640:                                              ; preds = %621
  %641 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %586, i32 noundef 0) #12
  br i1 %641, label %642, label %654

642:                                              ; preds = %616, %640, %635, %627, %610, %593
  %643 = load i32, ptr %589, align 4, !tbaa !44
  %644 = and i32 %643, 2048
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %653, label %646

646:                                              ; preds = %642
  %647 = getelementptr inbounds %struct.sv, ptr %586, i64 0, i32 3
  %648 = load ptr, ptr %647, align 8, !tbaa !47
  %649 = getelementptr inbounds %struct.sv, ptr %648, i64 0, i32 2
  %650 = load i32, ptr %649, align 4, !tbaa !44
  %651 = and i32 %650, 255
  %652 = icmp eq i32 %651, 13
  br i1 %652, label %654, label %653

653:                                              ; preds = %646, %642
  br label %654

654:                                              ; preds = %640, %635, %593, %607, %614, %616, %632, %585, %595, %653, %646, %581
  %655 = phi ptr [ %586, %646 ], [ @PL_sv_yes, %653 ], [ @PL_sv_undef, %581 ], [ null, %595 ], [ null, %585 ], [ null, %632 ], [ null, %616 ], [ null, %614 ], [ null, %607 ], [ null, %593 ], [ null, %635 ], [ null, %640 ]
  %656 = tail call ptr @Perl_newSV_type(i32 noundef 11) #12
  %657 = icmp eq ptr %181, null
  br i1 %657, label %660, label %658

658:                                              ; preds = %654
  %659 = tail call i64 @Perl_av_len(ptr noundef nonnull %181) #12
  br label %660

660:                                              ; preds = %654, %658
  %661 = phi i64 [ %659, %658 ], [ -1, %654 ]
  %662 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.9, i64 noundef 0) #12
  %663 = icmp slt i64 %661, 0
  br i1 %663, label %822, label %664

664:                                              ; preds = %660
  %665 = getelementptr inbounds %struct.sv, ptr %108, i64 0, i32 2
  %666 = getelementptr inbounds %struct.sv, ptr %108, i64 0, i32 2
  %667 = getelementptr inbounds %struct.sv, ptr %108, i64 0, i32 3
  %668 = icmp slt i32 %213, 2
  %669 = select i1 %668, i1 true, i1 %295
  %670 = getelementptr inbounds %struct.sv, ptr %108, i64 0, i32 3
  %671 = icmp eq i32 %37, 3
  br label %672

672:                                              ; preds = %664, %817
  %673 = phi ptr [ %107, %664 ], [ %819, %817 ]
  %674 = phi ptr [ %109, %664 ], [ %818, %817 ]
  %675 = phi i64 [ 0, %664 ], [ %820, %817 ]
  call void @Perl_av_clear(ptr noundef %656) #12
  %676 = call ptr @Perl_av_fetch(ptr noundef %181, i64 noundef %675, i32 noundef 0) #12
  %677 = icmp eq ptr %676, null
  br i1 %677, label %680, label %678

678:                                              ; preds = %672
  %679 = load ptr, ptr %676, align 8, !tbaa !35
  br label %680

680:                                              ; preds = %672, %678
  %681 = phi ptr [ %679, %678 ], [ @PL_sv_undef, %672 ]
  %682 = call ptr @Perl_av_fetch(ptr noundef %194, i64 noundef %675, i32 noundef 1) #12
  %683 = icmp eq ptr %682, null
  br i1 %683, label %707, label %684

684:                                              ; preds = %680
  %685 = load ptr, ptr %682, align 8, !tbaa !35
  call void @Perl_sv_setsv_flags(ptr noundef %108, ptr noundef %685, i32 noundef 2) #12
  %686 = load ptr, ptr %682, align 8, !tbaa !35
  %687 = getelementptr inbounds %struct.sv, ptr %686, i64 0, i32 2
  %688 = load i32, ptr %687, align 4, !tbaa !44
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
  br i1 %699, label %700, label %714

700:                                              ; preds = %684
  %701 = getelementptr inbounds %struct.sv, ptr %108, i64 0, i32 2
  %702 = load i32, ptr %701, align 4, !tbaa !44
  %703 = and i32 %702, 2098176
  %704 = icmp eq i32 %703, 1024
  br i1 %704, label %714, label %705

705:                                              ; preds = %700
  %706 = call ptr @Perl_sv_2pv_flags(ptr noundef %108, ptr noundef null, i32 noundef 34) #12
  br label %714

707:                                              ; preds = %680
  %708 = load i32, ptr %665, align 4, !tbaa !44
  %709 = and i32 %708, 1610547455
  store i32 %709, ptr %665, align 4, !tbaa !44
  %710 = and i32 %708, 33554432
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %714, label %712

712:                                              ; preds = %707
  %713 = call i32 @Perl_sv_backoff(ptr noundef %108) #12
  br label %714

714:                                              ; preds = %707, %712, %700, %684, %705
  %715 = load i32, ptr %666, align 4, !tbaa !44
  %716 = and i32 %715, 1024
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %738, label %718

718:                                              ; preds = %714
  %719 = load ptr, ptr %667, align 8, !tbaa !47
  %720 = load i8, ptr %719, align 1, !tbaa !47
  switch i8 %720, label %737 [
    i8 42, label %721
    i8 36, label %742
  ]

721:                                              ; preds = %718
  %722 = getelementptr inbounds %struct.sv, ptr %681, i64 0, i32 2
  %723 = load i32, ptr %722, align 4, !tbaa !44
  %724 = and i32 %723, 2048
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %736, label %726

726:                                              ; preds = %721
  %727 = getelementptr inbounds %struct.sv, ptr %681, i64 0, i32 3
  %728 = load ptr, ptr %727, align 8, !tbaa !47
  %729 = getelementptr inbounds %struct.sv, ptr %728, i64 0, i32 2
  %730 = load i32, ptr %729, align 4, !tbaa !44
  %731 = trunc i32 %730 to i8
  switch i8 %731, label %735 [
    i8 11, label %732
    i8 12, label %733
    i8 13, label %734
  ]

732:                                              ; preds = %726
  store i8 64, ptr %719, align 1, !tbaa !47
  br label %742

733:                                              ; preds = %726
  store i8 37, ptr %719, align 1, !tbaa !47
  br label %742

734:                                              ; preds = %726
  store i8 42, ptr %719, align 1, !tbaa !47
  br label %742

735:                                              ; preds = %726
  store i8 36, ptr %719, align 1, !tbaa !47
  br label %742

736:                                              ; preds = %721
  store i8 36, ptr %719, align 1, !tbaa !47
  br label %742

737:                                              ; preds = %718
  call void @Perl_sv_insert_flags(ptr noundef %108, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 1, i32 noundef 2) #12
  br label %742

738:                                              ; preds = %714
  call void @Perl_sv_setpvn(ptr noundef %108, ptr noundef nonnull @.str.5, i64 noundef 1) #12
  call void @Perl_sv_catsv_flags(ptr noundef %108, ptr noundef %397, i32 noundef 2) #12
  %739 = add nuw nsw i64 %675, 1
  %740 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef nonnull @.str.32, i64 noundef %739) #12
  %741 = sext i32 %740 to i64
  call void @Perl_sv_catpvn_flags(ptr noundef %108, ptr noundef nonnull %3, i64 noundef %741, i32 noundef 2) #12
  br label %742

742:                                              ; preds = %718, %732, %733, %734, %735, %736, %737, %738
  br i1 %669, label %759, label %743

743:                                              ; preds = %742
  %744 = load ptr, ptr %108, align 8, !tbaa !50
  %745 = getelementptr inbounds %struct.xpv, ptr %744, i64 0, i32 2
  %746 = load i64, ptr %745, align 8, !tbaa !51
  %747 = trunc i64 %746 to i32
  %748 = add i32 %747, 3
  %749 = call fastcc ptr @sv_x(ptr noundef null, ptr noundef nonnull @.str.33, i64 noundef 1, i32 noundef %748)
  %750 = call ptr @Perl_newSVsv(ptr noundef %379) #12
  call void @Perl_sv_catsv_flags(ptr noundef %750, ptr noundef %749, i32 noundef 2) #12
  %751 = icmp eq ptr %749, null
  br i1 %751, label %759, label %752

752:                                              ; preds = %743
  %753 = getelementptr inbounds %struct.sv, ptr %749, i64 0, i32 1
  %754 = load i32, ptr %753, align 8, !tbaa !53
  %755 = icmp ugt i32 %754, 1
  br i1 %755, label %756, label %758

756:                                              ; preds = %752
  %757 = add i32 %754, -1
  store i32 %757, ptr %753, align 8, !tbaa !53
  br label %759

758:                                              ; preds = %752
  call void @Perl_sv_free2(ptr noundef nonnull %749, i32 noundef %754) #12
  br label %759

759:                                              ; preds = %758, %756, %743, %742
  %760 = phi ptr [ %379, %742 ], [ %750, %743 ], [ %750, %756 ], [ %750, %758 ]
  store ptr %673, ptr @PL_stack_sp, align 8, !tbaa !35
  %761 = load ptr, ptr %670, align 8, !tbaa !47
  %762 = load ptr, ptr %108, align 8, !tbaa !50
  %763 = getelementptr inbounds %struct.xpv, ptr %762, i64 0, i32 2
  %764 = load i64, ptr %763, align 8, !tbaa !51
  call fastcc void @DD_dump(ptr noundef %681, ptr noundef %761, i64 noundef %764, ptr noundef %662, ptr noundef %136, ptr noundef %656, ptr noundef nonnull %2, i32 noundef %213, ptr noundef %367, ptr noundef %373, ptr noundef %760, ptr noundef %385, ptr noundef %391, ptr noundef %403, ptr noundef %409, i32 noundef %232, i32 noundef %475, i32 noundef %541, ptr noundef %547, i32 noundef %566, ptr noundef %655, i32 noundef %168, i32 noundef %361, i64 noundef %582)
  %765 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %766 = icmp eq ptr %760, null
  %767 = or i1 %669, %766
  br i1 %767, label %775, label %768

768:                                              ; preds = %759
  %769 = getelementptr inbounds %struct.sv, ptr %760, i64 0, i32 1
  %770 = load i32, ptr %769, align 8, !tbaa !53
  %771 = icmp ugt i32 %770, 1
  br i1 %771, label %772, label %774

772:                                              ; preds = %768
  %773 = add i32 %770, -1
  store i32 %773, ptr %769, align 8, !tbaa !53
  br label %775

774:                                              ; preds = %768
  call void @Perl_sv_free2(ptr noundef nonnull %760, i32 noundef %770) #12
  br label %775

775:                                              ; preds = %774, %772, %759
  %776 = call i64 @Perl_av_len(ptr noundef %656) #12
  %777 = icmp slt i64 %776, 0
  %778 = select i1 %777, i1 %295, i1 false
  br i1 %778, label %784, label %779

779:                                              ; preds = %775
  call void @Perl_sv_insert_flags(ptr noundef %662, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.34, i64 noundef 3, i32 noundef 2) #12
  %780 = load ptr, ptr %670, align 8, !tbaa !47
  %781 = load ptr, ptr %108, align 8, !tbaa !50
  %782 = getelementptr inbounds %struct.xpv, ptr %781, i64 0, i32 2
  %783 = load i64, ptr %782, align 8, !tbaa !51
  call void @Perl_sv_insert_flags(ptr noundef %662, i64 noundef 0, i64 noundef 0, ptr noundef %780, i64 noundef %783, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %662, ptr noundef nonnull @.str.35, i64 noundef 1, i32 noundef 2) #12
  br label %784

784:                                              ; preds = %775, %779
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef %367, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef %662, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef %385, i32 noundef 2) #12
  %785 = icmp sgt i64 %776, -1
  br i1 %785, label %786, label %801

786:                                              ; preds = %784
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef %367, i32 noundef 2) #12
  br label %787

787:                                              ; preds = %786, %797
  %788 = phi i64 [ 0, %786 ], [ %798, %797 ]
  %789 = call ptr @Perl_av_fetch(ptr noundef %656, i64 noundef %788, i32 noundef 0) #12
  %790 = icmp eq ptr %789, null
  br i1 %790, label %797, label %791

791:                                              ; preds = %787
  %792 = load ptr, ptr %789, align 8, !tbaa !35
  %793 = icmp eq ptr %792, null
  br i1 %793, label %797, label %794

794:                                              ; preds = %791
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef nonnull %792, i32 noundef 2) #12
  %795 = icmp slt i64 %788, %776
  br i1 %795, label %796, label %797

796:                                              ; preds = %794
  call void @Perl_sv_catpvn_flags(ptr noundef %674, ptr noundef nonnull @.str.35, i64 noundef 1, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef %385, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef %367, i32 noundef 2) #12
  br label %797

797:                                              ; preds = %794, %796, %791, %787
  %798 = add nuw i64 %788, 1
  %799 = icmp eq i64 %788, %776
  br i1 %799, label %800, label %787, !llvm.loop !54

800:                                              ; preds = %797
  call void @Perl_sv_catpvn_flags(ptr noundef %674, ptr noundef nonnull @.str.35, i64 noundef 1, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %674, ptr noundef %385, i32 noundef 2) #12
  br label %801

801:                                              ; preds = %800, %784
  call void @Perl_sv_setpvn(ptr noundef %662, ptr noundef nonnull @.str.9, i64 noundef 0) #12
  br i1 %671, label %802, label %817

802:                                              ; preds = %801
  %803 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %804 = ptrtoint ptr %803 to i64
  %805 = ptrtoint ptr %765 to i64
  %806 = sub i64 %804, %805
  %807 = icmp slt i64 %806, 8
  br i1 %807, label %808, label %810

808:                                              ; preds = %802
  %809 = call ptr @Perl_stack_grow(ptr noundef %765, ptr noundef %765, i64 noundef 1) #12
  br label %810

810:                                              ; preds = %802, %808
  %811 = phi ptr [ %809, %808 ], [ %765, %802 ]
  %812 = call ptr @Perl_sv_2mortal(ptr noundef %674) #12
  %813 = getelementptr inbounds ptr, ptr %811, i64 1
  store ptr %812, ptr %813, align 8, !tbaa !35
  %814 = icmp slt i64 %675, %661
  br i1 %814, label %815, label %817

815:                                              ; preds = %810
  %816 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.9, i64 noundef 0) #12
  br label %817

817:                                              ; preds = %810, %815, %801
  %818 = phi ptr [ %816, %815 ], [ %674, %810 ], [ %674, %801 ]
  %819 = phi ptr [ %813, %815 ], [ %813, %810 ], [ %765, %801 ]
  %820 = add nuw i64 %675, 1
  %821 = icmp eq i64 %675, %661
  br i1 %821, label %822, label %672, !llvm.loop !57

822:                                              ; preds = %817, %660
  %823 = phi ptr [ %109, %660 ], [ %818, %817 ]
  %824 = phi ptr [ %107, %660 ], [ %819, %817 ]
  %825 = icmp eq ptr %656, null
  br i1 %825, label %833, label %826

826:                                              ; preds = %822
  %827 = getelementptr inbounds %struct.sv, ptr %656, i64 0, i32 1
  %828 = load i32, ptr %827, align 8, !tbaa !53
  %829 = icmp ugt i32 %828, 1
  br i1 %829, label %830, label %832

830:                                              ; preds = %826
  %831 = add i32 %828, -1
  store i32 %831, ptr %827, align 8, !tbaa !53
  br label %833

832:                                              ; preds = %826
  call void @Perl_sv_free2(ptr noundef nonnull %656, i32 noundef %828) #12
  br label %833

833:                                              ; preds = %822, %830, %832
  %834 = icmp eq ptr %662, null
  br i1 %834, label %843, label %835

835:                                              ; preds = %833
  %836 = getelementptr inbounds %struct.sv, ptr %662, i64 0, i32 1
  %837 = load i32, ptr %836, align 8, !tbaa !53
  %838 = icmp ugt i32 %837, 1
  br i1 %838, label %839, label %841

839:                                              ; preds = %835
  %840 = add i32 %837, -1
  store i32 %840, ptr %836, align 8, !tbaa !53
  br label %843

841:                                              ; preds = %835
  call void @Perl_sv_free2(ptr noundef nonnull %662, i32 noundef %837) #12
  br label %843

842:                                              ; preds = %118, %114, %105
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.36) #12
  br label %843

843:                                              ; preds = %841, %839, %833, %842
  %844 = phi ptr [ %109, %842 ], [ %823, %833 ], [ %823, %839 ], [ %823, %841 ]
  %845 = phi ptr [ %107, %842 ], [ %824, %833 ], [ %824, %839 ], [ %824, %841 ]
  %846 = icmp eq i32 %37, 3
  br i1 %846, label %859, label %847

847:                                              ; preds = %843
  %848 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %849 = ptrtoint ptr %848 to i64
  %850 = ptrtoint ptr %845 to i64
  %851 = sub i64 %849, %850
  %852 = icmp slt i64 %851, 8
  br i1 %852, label %853, label %855

853:                                              ; preds = %847
  %854 = call ptr @Perl_stack_grow(ptr noundef %845, ptr noundef %845, i64 noundef 1) #12
  br label %855

855:                                              ; preds = %847, %853
  %856 = phi ptr [ %854, %853 ], [ %845, %847 ]
  %857 = call ptr @Perl_sv_2mortal(ptr noundef %844) #12
  %858 = getelementptr inbounds ptr, ptr %856, i64 1
  store ptr %857, ptr %858, align 8, !tbaa !35
  br label %859

859:                                              ; preds = %855, %843
  %860 = phi ptr [ %858, %855 ], [ %845, %843 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  store ptr %860, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Data__Dumper__vstring(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.79) #12
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !44
  %23 = and i32 %22, 14680064
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %16
  %26 = tail call ptr @Perl_mg_find(ptr noundef %20, i32 noundef 86) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 5
  %32 = load i64, ptr %31, align 8, !tbaa !61
  %33 = tail call ptr @Perl_newSVpvn(ptr noundef %30, i64 noundef %32) #12
  br label %34

34:                                               ; preds = %16, %25, %28
  %35 = phi ptr [ %33, %28 ], [ @PL_sv_undef, %25 ], [ @PL_sv_undef, %16 ]
  %36 = tail call ptr @Perl_sv_2mortal(ptr noundef %35) #12
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %38 = getelementptr inbounds ptr, ptr %37, i64 %18
  store ptr %36, ptr %38, align 8, !tbaa !35
  %39 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %40 = getelementptr inbounds ptr, ptr %39, i64 %18
  store ptr %40, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Perl_block_gimme() local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_push_scope() local_unnamed_addr #2

declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_markstack_grow() local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_call_method(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_free_tmps() local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare i64 @Perl_av_len(ptr noundef) local_unnamed_addr #2

declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_sv_backoff(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_insert_flags(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_my_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @sv_x(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !34 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.9, i64 noundef 0) #12
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %0, %4 ], [ %7, %6 ]
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %61

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !44
  %14 = and i32 %13, 268435456
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load ptr, ptr %9, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !47
  %20 = zext nneg i32 %3 to i64
  %21 = mul i64 %20, %2
  %22 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !51
  %24 = add i64 %21, 1
  %25 = add i64 %24, %23
  %26 = icmp ult i64 %19, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %16, %11
  %28 = zext nneg i32 %3 to i64
  %29 = mul i64 %28, %2
  %30 = load ptr, ptr %9, align 8, !tbaa !50
  %31 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !51
  %33 = add i64 %29, 1
  %34 = add i64 %33, %32
  %35 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %9, i64 noundef %34) #12
  br label %36

36:                                               ; preds = %16, %27
  %37 = icmp eq i64 %2, 1
  br i1 %37, label %38, label %57

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = load ptr, ptr %9, align 8, !tbaa !50
  %42 = getelementptr inbounds %struct.xpv, ptr %41, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !51
  %44 = getelementptr inbounds i8, ptr %40, i64 %43
  %45 = zext nneg i32 %3 to i64
  %46 = add i64 %43, %45
  store i64 %46, ptr %42, align 8, !tbaa !51
  %47 = getelementptr inbounds i8, ptr %44, i64 %45
  store i8 0, ptr %47, align 1, !tbaa !47
  %48 = zext nneg i32 %3 to i64
  br label %49

49:                                               ; preds = %38, %49
  %50 = phi i64 [ %48, %38 ], [ %52, %49 ]
  %51 = load i8, ptr %1, align 1, !tbaa !47
  %52 = add nsw i64 %50, -1
  %53 = and i64 %52, 4294967295
  %54 = getelementptr inbounds i8, ptr %44, i64 %53
  store i8 %51, ptr %54, align 1, !tbaa !47
  %55 = trunc i64 %50 to i32
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %49, label %61, !llvm.loop !62

57:                                               ; preds = %36, %57
  %58 = phi i32 [ %59, %57 ], [ %3, %36 ]
  tail call void @Perl_sv_catpvn_flags(ptr noundef %9, ptr noundef %1, i64 noundef %2, i32 noundef 2) #12
  %59 = add nsw i32 %58, -1
  %60 = icmp sgt i32 %58, 1
  br i1 %60, label %57, label %61, !llvm.loop !63

61:                                               ; preds = %57, %49, %8
  ret ptr %9
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @DD_dump(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i64 noundef %23) unnamed_addr #0 !prof !34 {
  %25 = alloca [128 x i8], align 16
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %25) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #12
  %34 = icmp eq ptr %0, null
  br i1 %34, label %1943, label %35

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !44
  %38 = and i32 %37, 255
  %39 = icmp ugt i32 %38, 2
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load ptr, ptr %3, align 8, !tbaa !50
  %42 = getelementptr inbounds %struct.xpv, ptr %41, i64 0, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !47
  %44 = getelementptr inbounds %struct.xpv, ptr %41, i64 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !51
  %46 = sub i64 %43, %45
  %47 = icmp ult i64 %46, 42
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = mul i64 %45, 3
  %50 = lshr i64 %49, 1
  %51 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %3, i64 noundef %50) #12
  br label %52

52:                                               ; preds = %48, %40, %35
  %53 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !44
  %55 = and i32 %54, 255
  %56 = and i32 %54, 2097152
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #12
  br label %60

60:                                               ; preds = %58, %52
  %61 = load i32, ptr %53, align 4, !tbaa !44
  %62 = and i32 %61, 2048
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %1396, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !47
  %67 = getelementptr inbounds %struct.sv, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !44
  %69 = and i32 %68, 1048576
  %70 = icmp ne i32 %69, 0
  %71 = icmp ne ptr %13, null
  %72 = and i1 %71, %70
  br i1 %72, label %73, label %417

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !44
  %76 = and i32 %75, 1024
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %417, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %13, align 8, !tbaa !50
  %80 = getelementptr inbounds %struct.xpv, ptr %79, i64 0, i32 2
  %81 = load i64, ptr %80, align 8, !tbaa !51
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %417, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %66, align 8, !tbaa !50
  %85 = load ptr, ptr %84, align 8, !tbaa !64
  %86 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !47
  %88 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef %85, ptr noundef %87, i64 noundef %81, i32 noundef -1, i32 noundef 0) #12
  %89 = icmp eq ptr %88, null
  br i1 %89, label %417, label %90

90:                                               ; preds = %83
  %91 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  tail call void @Perl_push_scope() #12
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #12
  %92 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !46
  store i64 %92, ptr @PL_tmps_floor, align 8, !tbaa !46
  %93 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %94 = getelementptr inbounds i32, ptr %93, i64 1
  store ptr %94, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %95 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !35
  %96 = icmp eq ptr %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = tail call ptr @Perl_markstack_grow() #12
  br label %99

99:                                               ; preds = %90, %97
  %100 = phi ptr [ %98, %97 ], [ %94, %90 ]
  %101 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %102 = ptrtoint ptr %91 to i64
  %103 = ptrtoint ptr %101 to i64
  %104 = sub i64 %102, %103
  %105 = lshr exact i64 %104, 3
  %106 = trunc i64 %105 to i32
  store i32 %106, ptr %100, align 4, !tbaa !39
  %107 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %108 = ptrtoint ptr %107 to i64
  %109 = sub i64 %108, %102
  %110 = icmp slt i64 %109, 8
  br i1 %110, label %111, label %113

111:                                              ; preds = %99
  %112 = tail call ptr @Perl_stack_grow(ptr noundef %91, ptr noundef %91, i64 noundef 1) #12
  br label %113

113:                                              ; preds = %99, %111
  %114 = phi ptr [ %112, %111 ], [ %91, %99 ]
  %115 = getelementptr inbounds ptr, ptr %114, i64 1
  store ptr %0, ptr %115, align 8, !tbaa !35
  store ptr %115, ptr @PL_stack_sp, align 8, !tbaa !35
  %116 = load ptr, ptr %86, align 8, !tbaa !47
  %117 = tail call i32 @Perl_call_method(ptr noundef %116, i32 noundef 13) #12
  %118 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %119 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %120 = getelementptr inbounds %struct.gv, ptr %119, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !47
  %122 = load ptr, ptr %121, align 8, !tbaa !66
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %113
  %125 = tail call ptr @Perl_gv_add_by_type(ptr noundef %119, i32 noundef 0) #12
  %126 = getelementptr inbounds %struct.gv, ptr %125, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !47
  br label %128

128:                                              ; preds = %113, %124
  %129 = phi ptr [ %127, %124 ], [ %121, %113 ]
  %130 = load ptr, ptr %129, align 8, !tbaa !35
  %131 = icmp eq ptr %130, null
  br i1 %131, label %411, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %134 = getelementptr inbounds %struct.gv, ptr %133, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !47
  %136 = load ptr, ptr %135, align 8, !tbaa !66
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = tail call ptr @Perl_gv_add_by_type(ptr noundef %133, i32 noundef 0) #12
  %140 = getelementptr inbounds %struct.gv, ptr %139, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !47
  br label %142

142:                                              ; preds = %132, %138
  %143 = phi ptr [ %141, %138 ], [ %135, %132 ]
  %144 = load ptr, ptr %143, align 8, !tbaa !35
  %145 = getelementptr inbounds %struct.sv, ptr %144, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !44
  %147 = and i32 %146, 2097152
  %148 = icmp eq i32 %147, 0
  %149 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %150 = getelementptr inbounds %struct.gv, ptr %149, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !47
  %152 = load ptr, ptr %151, align 8, !tbaa !66
  %153 = icmp eq ptr %152, null
  br i1 %148, label %163, label %154

154:                                              ; preds = %142
  br i1 %153, label %155, label %159

155:                                              ; preds = %154
  %156 = tail call ptr @Perl_gv_add_by_type(ptr noundef %149, i32 noundef 0) #12
  %157 = getelementptr inbounds %struct.gv, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !47
  br label %159

159:                                              ; preds = %154, %155
  %160 = phi ptr [ %158, %155 ], [ %151, %154 ]
  %161 = load ptr, ptr %160, align 8, !tbaa !35
  %162 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %161, i32 noundef 2) #12
  br i1 %162, label %398, label %411

163:                                              ; preds = %142
  br i1 %153, label %164, label %168

164:                                              ; preds = %163
  %165 = tail call ptr @Perl_gv_add_by_type(ptr noundef %149, i32 noundef 0) #12
  %166 = getelementptr inbounds %struct.gv, ptr %165, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !47
  br label %168

168:                                              ; preds = %163, %164
  %169 = phi ptr [ %167, %164 ], [ %151, %163 ]
  %170 = load ptr, ptr %169, align 8, !tbaa !35
  %171 = getelementptr inbounds %struct.sv, ptr %170, i64 0, i32 2
  %172 = load i32, ptr %171, align 4, !tbaa !44
  %173 = and i32 %172, 65280
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %209

175:                                              ; preds = %168
  %176 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %177 = getelementptr inbounds %struct.gv, ptr %176, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !47
  %179 = load ptr, ptr %178, align 8, !tbaa !66
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = tail call ptr @Perl_gv_add_by_type(ptr noundef %176, i32 noundef 0) #12
  %183 = getelementptr inbounds %struct.gv, ptr %182, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !47
  br label %185

185:                                              ; preds = %175, %181
  %186 = phi ptr [ %184, %181 ], [ %178, %175 ]
  %187 = load ptr, ptr %186, align 8, !tbaa !35
  %188 = getelementptr inbounds %struct.sv, ptr %187, i64 0, i32 2
  %189 = load i32, ptr %188, align 4, !tbaa !44
  %190 = and i32 %189, 255
  %191 = icmp eq i32 %190, 8
  br i1 %191, label %209, label %192

192:                                              ; preds = %185
  %193 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %194 = getelementptr inbounds %struct.gv, ptr %193, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !47
  %196 = load ptr, ptr %195, align 8, !tbaa !66
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %192
  %199 = tail call ptr @Perl_gv_add_by_type(ptr noundef %193, i32 noundef 0) #12
  %200 = getelementptr inbounds %struct.gv, ptr %199, i64 0, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !47
  br label %202

202:                                              ; preds = %192, %198
  %203 = phi ptr [ %201, %198 ], [ %195, %192 ]
  %204 = load ptr, ptr %203, align 8, !tbaa !35
  %205 = getelementptr inbounds %struct.sv, ptr %204, i64 0, i32 2
  %206 = load i32, ptr %205, align 4, !tbaa !44
  %207 = and i32 %206, 16826623
  %208 = icmp eq i32 %207, 16777226
  br i1 %208, label %209, label %411

209:                                              ; preds = %202, %185, %168
  %210 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %211 = getelementptr inbounds %struct.gv, ptr %210, i64 0, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !47
  %213 = load ptr, ptr %212, align 8, !tbaa !66
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %209
  %216 = tail call ptr @Perl_gv_add_by_type(ptr noundef %210, i32 noundef 0) #12
  %217 = getelementptr inbounds %struct.gv, ptr %216, i64 0, i32 3
  %218 = load ptr, ptr %217, align 8, !tbaa !47
  br label %219

219:                                              ; preds = %209, %215
  %220 = phi ptr [ %218, %215 ], [ %212, %209 ]
  %221 = load ptr, ptr %220, align 8, !tbaa !35
  %222 = getelementptr inbounds %struct.sv, ptr %221, i64 0, i32 2
  %223 = load i32, ptr %222, align 4, !tbaa !44
  %224 = and i32 %223, 1024
  %225 = icmp eq i32 %224, 0
  %226 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %227 = getelementptr inbounds %struct.gv, ptr %226, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !47
  %229 = load ptr, ptr %228, align 8, !tbaa !66
  %230 = icmp eq ptr %229, null
  br i1 %225, label %292, label %231

231:                                              ; preds = %219
  br i1 %230, label %232, label %236

232:                                              ; preds = %231
  %233 = tail call ptr @Perl_gv_add_by_type(ptr noundef %226, i32 noundef 0) #12
  %234 = getelementptr inbounds %struct.gv, ptr %233, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !47
  br label %236

236:                                              ; preds = %231, %232
  %237 = phi ptr [ %235, %232 ], [ %228, %231 ]
  %238 = load ptr, ptr %237, align 8, !tbaa !35
  %239 = load ptr, ptr %238, align 8, !tbaa !50
  %240 = icmp eq ptr %239, null
  br i1 %240, label %411, label %241

241:                                              ; preds = %236
  %242 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %243 = getelementptr inbounds %struct.gv, ptr %242, i64 0, i32 3
  %244 = load ptr, ptr %243, align 8, !tbaa !47
  %245 = load ptr, ptr %244, align 8, !tbaa !66
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  %248 = tail call ptr @Perl_gv_add_by_type(ptr noundef %242, i32 noundef 0) #12
  %249 = getelementptr inbounds %struct.gv, ptr %248, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !47
  br label %251

251:                                              ; preds = %241, %247
  %252 = phi ptr [ %250, %247 ], [ %244, %241 ]
  %253 = load ptr, ptr %252, align 8, !tbaa !35
  %254 = load ptr, ptr %253, align 8, !tbaa !50
  %255 = getelementptr inbounds %struct.xpv, ptr %254, i64 0, i32 2
  %256 = load i64, ptr %255, align 8, !tbaa !51
  %257 = icmp ugt i64 %256, 1
  br i1 %257, label %398, label %258

258:                                              ; preds = %251
  %259 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %260 = getelementptr inbounds %struct.gv, ptr %259, i64 0, i32 3
  %261 = load ptr, ptr %260, align 8, !tbaa !47
  %262 = load ptr, ptr %261, align 8, !tbaa !66
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %268

264:                                              ; preds = %258
  %265 = tail call ptr @Perl_gv_add_by_type(ptr noundef %259, i32 noundef 0) #12
  %266 = getelementptr inbounds %struct.gv, ptr %265, i64 0, i32 3
  %267 = load ptr, ptr %266, align 8, !tbaa !47
  br label %268

268:                                              ; preds = %258, %264
  %269 = phi ptr [ %267, %264 ], [ %261, %258 ]
  %270 = load ptr, ptr %269, align 8, !tbaa !35
  %271 = load ptr, ptr %270, align 8, !tbaa !50
  %272 = getelementptr inbounds %struct.xpv, ptr %271, i64 0, i32 2
  %273 = load i64, ptr %272, align 8, !tbaa !51
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %411, label %275

275:                                              ; preds = %268
  %276 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %277 = getelementptr inbounds %struct.gv, ptr %276, i64 0, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !47
  %279 = load ptr, ptr %278, align 8, !tbaa !66
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %285

281:                                              ; preds = %275
  %282 = tail call ptr @Perl_gv_add_by_type(ptr noundef %276, i32 noundef 0) #12
  %283 = getelementptr inbounds %struct.gv, ptr %282, i64 0, i32 3
  %284 = load ptr, ptr %283, align 8, !tbaa !47
  br label %285

285:                                              ; preds = %275, %281
  %286 = phi ptr [ %284, %281 ], [ %278, %275 ]
  %287 = load ptr, ptr %286, align 8, !tbaa !35
  %288 = getelementptr inbounds %struct.sv, ptr %287, i64 0, i32 3
  %289 = load ptr, ptr %288, align 8, !tbaa !47
  %290 = load i8, ptr %289, align 1, !tbaa !47
  %291 = icmp eq i8 %290, 48
  br i1 %291, label %411, label %398

292:                                              ; preds = %219
  br i1 %230, label %293, label %297

293:                                              ; preds = %292
  %294 = tail call ptr @Perl_gv_add_by_type(ptr noundef %226, i32 noundef 0) #12
  %295 = getelementptr inbounds %struct.gv, ptr %294, i64 0, i32 3
  %296 = load ptr, ptr %295, align 8, !tbaa !47
  br label %297

297:                                              ; preds = %292, %293
  %298 = phi ptr [ %296, %293 ], [ %228, %292 ]
  %299 = load ptr, ptr %298, align 8, !tbaa !35
  %300 = getelementptr inbounds %struct.sv, ptr %299, i64 0, i32 2
  %301 = load i32, ptr %300, align 4, !tbaa !44
  %302 = and i32 %301, 768
  %303 = icmp eq i32 %302, 0
  %304 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %305 = getelementptr inbounds %struct.gv, ptr %304, i64 0, i32 3
  %306 = load ptr, ptr %305, align 8, !tbaa !47
  %307 = load ptr, ptr %306, align 8, !tbaa !66
  %308 = icmp eq ptr %307, null
  br i1 %303, label %389, label %309

309:                                              ; preds = %297
  br i1 %308, label %310, label %314

310:                                              ; preds = %309
  %311 = tail call ptr @Perl_gv_add_by_type(ptr noundef %304, i32 noundef 0) #12
  %312 = getelementptr inbounds %struct.gv, ptr %311, i64 0, i32 3
  %313 = load ptr, ptr %312, align 8, !tbaa !47
  br label %314

314:                                              ; preds = %309, %310
  %315 = phi ptr [ %313, %310 ], [ %306, %309 ]
  %316 = load ptr, ptr %315, align 8, !tbaa !35
  %317 = getelementptr inbounds %struct.sv, ptr %316, i64 0, i32 2
  %318 = load i32, ptr %317, align 4, !tbaa !44
  %319 = and i32 %318, 256
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %338, label %321

321:                                              ; preds = %314
  %322 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %323 = getelementptr inbounds %struct.gv, ptr %322, i64 0, i32 3
  %324 = load ptr, ptr %323, align 8, !tbaa !47
  %325 = load ptr, ptr %324, align 8, !tbaa !66
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %331

327:                                              ; preds = %321
  %328 = tail call ptr @Perl_gv_add_by_type(ptr noundef %322, i32 noundef 0) #12
  %329 = getelementptr inbounds %struct.gv, ptr %328, i64 0, i32 3
  %330 = load ptr, ptr %329, align 8, !tbaa !47
  br label %331

331:                                              ; preds = %321, %327
  %332 = phi ptr [ %330, %327 ], [ %324, %321 ]
  %333 = load ptr, ptr %332, align 8, !tbaa !35
  %334 = load ptr, ptr %333, align 8, !tbaa !50
  %335 = getelementptr inbounds %struct.xpviv, ptr %334, i64 0, i32 4
  %336 = load i64, ptr %335, align 8, !tbaa !47
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %398

338:                                              ; preds = %331, %314
  %339 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %340 = getelementptr inbounds %struct.gv, ptr %339, i64 0, i32 3
  %341 = load ptr, ptr %340, align 8, !tbaa !47
  %342 = load ptr, ptr %341, align 8, !tbaa !66
  %343 = icmp eq ptr %342, null
  br i1 %343, label %344, label %348

344:                                              ; preds = %338
  %345 = tail call ptr @Perl_gv_add_by_type(ptr noundef %339, i32 noundef 0) #12
  %346 = getelementptr inbounds %struct.gv, ptr %345, i64 0, i32 3
  %347 = load ptr, ptr %346, align 8, !tbaa !47
  br label %348

348:                                              ; preds = %338, %344
  %349 = phi ptr [ %347, %344 ], [ %341, %338 ]
  %350 = load ptr, ptr %349, align 8, !tbaa !35
  %351 = getelementptr inbounds %struct.sv, ptr %350, i64 0, i32 2
  %352 = load i32, ptr %351, align 4, !tbaa !44
  %353 = and i32 %352, 512
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %411, label %355

355:                                              ; preds = %348
  %356 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %357 = getelementptr inbounds %struct.gv, ptr %356, i64 0, i32 3
  %358 = load ptr, ptr %357, align 8, !tbaa !47
  %359 = load ptr, ptr %358, align 8, !tbaa !66
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %365

361:                                              ; preds = %355
  %362 = tail call ptr @Perl_gv_add_by_type(ptr noundef %356, i32 noundef 0) #12
  %363 = getelementptr inbounds %struct.gv, ptr %362, i64 0, i32 3
  %364 = load ptr, ptr %363, align 8, !tbaa !47
  br label %365

365:                                              ; preds = %355, %361
  %366 = phi ptr [ %364, %361 ], [ %358, %355 ]
  %367 = load ptr, ptr %366, align 8, !tbaa !35
  %368 = load ptr, ptr %367, align 8, !tbaa !50
  %369 = getelementptr inbounds %struct.xpvnv, ptr %368, i64 0, i32 5
  %370 = load double, ptr %369, align 8, !tbaa !47
  %371 = fcmp uno double %370, 0.000000e+00
  br i1 %371, label %398, label %372

372:                                              ; preds = %365
  %373 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %374 = getelementptr inbounds %struct.gv, ptr %373, i64 0, i32 3
  %375 = load ptr, ptr %374, align 8, !tbaa !47
  %376 = load ptr, ptr %375, align 8, !tbaa !66
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %382

378:                                              ; preds = %372
  %379 = tail call ptr @Perl_gv_add_by_type(ptr noundef %373, i32 noundef 0) #12
  %380 = getelementptr inbounds %struct.gv, ptr %379, i64 0, i32 3
  %381 = load ptr, ptr %380, align 8, !tbaa !47
  br label %382

382:                                              ; preds = %372, %378
  %383 = phi ptr [ %381, %378 ], [ %375, %372 ]
  %384 = load ptr, ptr %383, align 8, !tbaa !35
  %385 = load ptr, ptr %384, align 8, !tbaa !50
  %386 = getelementptr inbounds %struct.xpvnv, ptr %385, i64 0, i32 5
  %387 = load double, ptr %386, align 8, !tbaa !47
  %388 = fcmp une double %387, 0.000000e+00
  br i1 %388, label %398, label %411

389:                                              ; preds = %297
  br i1 %308, label %390, label %394

390:                                              ; preds = %389
  %391 = tail call ptr @Perl_gv_add_by_type(ptr noundef %304, i32 noundef 0) #12
  %392 = getelementptr inbounds %struct.gv, ptr %391, i64 0, i32 3
  %393 = load ptr, ptr %392, align 8, !tbaa !47
  br label %394

394:                                              ; preds = %389, %390
  %395 = phi ptr [ %393, %390 ], [ %306, %389 ]
  %396 = load ptr, ptr %395, align 8, !tbaa !35
  %397 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %396, i32 noundef 0) #12
  br i1 %397, label %398, label %411

398:                                              ; preds = %365, %285, %394, %382, %331, %251, %159
  %399 = load ptr, ptr @PL_errgv, align 8, !tbaa !35
  %400 = getelementptr inbounds %struct.gv, ptr %399, i64 0, i32 3
  %401 = load ptr, ptr %400, align 8, !tbaa !47
  %402 = load ptr, ptr %401, align 8, !tbaa !66
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %408

404:                                              ; preds = %398
  %405 = tail call ptr @Perl_gv_add_by_type(ptr noundef %399, i32 noundef 0) #12
  %406 = getelementptr inbounds %struct.gv, ptr %405, i64 0, i32 3
  %407 = load ptr, ptr %406, align 8, !tbaa !47
  br label %408

408:                                              ; preds = %398, %404
  %409 = phi ptr [ %407, %404 ], [ %401, %398 ]
  %410 = load ptr, ptr %409, align 8, !tbaa !35
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.37, ptr noundef %410) #12
  br label %411

411:                                              ; preds = %394, %382, %202, %128, %408, %348, %285, %268, %236, %159
  store ptr %118, ptr @PL_stack_sp, align 8, !tbaa !35
  %412 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !46
  %413 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !46
  %414 = icmp sgt i64 %412, %413
  br i1 %414, label %415, label %416

415:                                              ; preds = %411
  tail call void @Perl_free_tmps() #12
  br label %416

416:                                              ; preds = %415, %411
  tail call void @Perl_pop_scope() #12
  br label %417

417:                                              ; preds = %416, %83, %78, %73, %64
  %418 = load ptr, ptr %65, align 8, !tbaa !47
  %419 = getelementptr inbounds %struct.sv, ptr %418, i64 0, i32 2
  %420 = load i32, ptr %419, align 4, !tbaa !44
  %421 = and i32 %420, 255
  %422 = ptrtoint ptr %418 to i64
  store i64 %422, ptr %26, align 8, !tbaa !46
  %423 = and i32 %420, 1048576
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %453, label %425

425:                                              ; preds = %417
  %426 = load ptr, ptr %418, align 8, !tbaa !50
  %427 = load ptr, ptr %426, align 8, !tbaa !64
  %428 = getelementptr inbounds %struct.hv, ptr %427, i64 0, i32 2
  %429 = load i32, ptr %428, align 4, !tbaa !48
  %430 = and i32 %429, 33554432
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %453, label %432

432:                                              ; preds = %425
  %433 = getelementptr inbounds %struct.hv, ptr %427, i64 0, i32 3
  %434 = load ptr, ptr %433, align 8, !tbaa !47
  %435 = load ptr, ptr %427, align 8, !tbaa !68
  %436 = getelementptr inbounds %struct.xpvhv, ptr %435, i64 0, i32 3
  %437 = load i64, ptr %436, align 8, !tbaa !69
  %438 = getelementptr ptr, ptr %434, i64 %437
  %439 = getelementptr ptr, ptr %438, i64 1
  %440 = load ptr, ptr %439, align 8, !tbaa !47
  %441 = icmp eq ptr %440, null
  br i1 %441, label %453, label %442

442:                                              ; preds = %432
  %443 = getelementptr i8, ptr %438, i64 36
  %444 = load i32, ptr %443, align 4, !tbaa !71
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %449, label %446

446:                                              ; preds = %442
  %447 = load ptr, ptr %440, align 8, !tbaa !35
  %448 = icmp eq ptr %447, null
  br i1 %448, label %453, label %449

449:                                              ; preds = %442, %446
  %450 = phi ptr [ %439, %442 ], [ %440, %446 ]
  %451 = load ptr, ptr %450, align 8, !tbaa !47
  %452 = getelementptr inbounds %struct.hek, ptr %451, i64 0, i32 2
  br label %453

453:                                              ; preds = %417, %449, %446, %432, %425
  %454 = phi ptr [ %452, %449 ], [ null, %446 ], [ null, %432 ], [ null, %425 ], [ null, %417 ]
  %455 = icmp eq i64 %2, 0
  br i1 %455, label %539, label %456

456:                                              ; preds = %453
  %457 = call ptr @Perl_hv_common_key_len(ptr noundef %4, ptr noundef nonnull %26, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %458 = icmp eq ptr %457, null
  br i1 %458, label %508, label %459

459:                                              ; preds = %456
  %460 = load ptr, ptr %457, align 8, !tbaa !35
  %461 = icmp eq ptr %460, null
  br i1 %461, label %508, label %462

462:                                              ; preds = %459
  %463 = getelementptr inbounds %struct.sv, ptr %460, i64 0, i32 2
  %464 = load i32, ptr %463, align 4, !tbaa !44
  %465 = and i32 %464, 2048
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %508, label %467

467:                                              ; preds = %462
  %468 = getelementptr inbounds %struct.sv, ptr %460, i64 0, i32 3
  %469 = load ptr, ptr %468, align 8, !tbaa !47
  %470 = icmp eq ptr %469, null
  br i1 %470, label %508, label %471

471:                                              ; preds = %467
  %472 = call ptr @Perl_av_fetch(ptr noundef nonnull %469, i64 noundef 0, i32 noundef 0) #12
  %473 = icmp eq ptr %472, null
  br i1 %473, label %507, label %474

474:                                              ; preds = %471
  %475 = load ptr, ptr %472, align 8, !tbaa !35
  %476 = icmp eq ptr %475, null
  br i1 %476, label %507, label %477

477:                                              ; preds = %474
  %478 = icmp eq i32 %15, 0
  br i1 %478, label %489, label %479

479:                                              ; preds = %477
  %480 = load i32, ptr %6, align 4, !tbaa !39
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %482, label %489

482:                                              ; preds = %479
  %483 = trunc i32 %420 to i8
  switch i8 %483, label %486 [
    i8 12, label %484
    i8 11, label %485
  ]

484:                                              ; preds = %482
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.38, i64 noundef 2, i32 noundef 2) #12
  br label %487

485:                                              ; preds = %482
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.39, i64 noundef 2, i32 noundef 2) #12
  br label %487

486:                                              ; preds = %482
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.40, i64 noundef 9, i32 noundef 2) #12
  br label %487

487:                                              ; preds = %485, %486, %484
  %488 = call ptr @Perl_newSVpvn(ptr noundef %1, i64 noundef %2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %488, ptr noundef nonnull @.str.34, i64 noundef 3, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %488, ptr noundef nonnull %475, i32 noundef 2) #12
  call void @Perl_av_push(ptr noundef %5, ptr noundef %488) #12
  br label %1943

489:                                              ; preds = %479, %477
  %490 = load i8, ptr %1, align 1, !tbaa !47
  switch i8 %490, label %506 [
    i8 64, label %491
    i8 37, label %491
  ]

491:                                              ; preds = %489, %489
  %492 = getelementptr inbounds %struct.sv, ptr %475, i64 0, i32 3
  %493 = load ptr, ptr %492, align 8, !tbaa !47
  %494 = load i8, ptr %493, align 1, !tbaa !47
  %495 = icmp eq i8 %494, 92
  br i1 %495, label %496, label %505

496:                                              ; preds = %491
  %497 = getelementptr inbounds i8, ptr %493, i64 1
  %498 = load i8, ptr %497, align 1, !tbaa !47
  %499 = icmp eq i8 %498, %490
  br i1 %499, label %500, label %505

500:                                              ; preds = %496
  %501 = load ptr, ptr %475, align 8, !tbaa !50
  %502 = getelementptr inbounds %struct.xpv, ptr %501, i64 0, i32 2
  %503 = load i64, ptr %502, align 8, !tbaa !51
  %504 = add i64 %503, -1
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull %497, i64 noundef %504, i32 noundef 2) #12
  br label %1943

505:                                              ; preds = %496, %491
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull %1, i64 noundef 1, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.41, i64 noundef 1, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef nonnull %475, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.42, i64 noundef 1, i32 noundef 2) #12
  br label %1943

506:                                              ; preds = %489
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef nonnull %475, i32 noundef 2) #12
  br label %1943

507:                                              ; preds = %474, %471
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.43, i64 noundef %422) #12
  br label %1943

508:                                              ; preds = %467, %462, %459, %456
  %509 = load i8, ptr %1, align 1, !tbaa !47
  switch i8 %509, label %512 [
    i8 64, label %510
    i8 37, label %510
  ]

510:                                              ; preds = %508, %508
  %511 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.44, i64 noundef 1) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %511, ptr noundef nonnull %1, i64 noundef %2, i32 noundef 2) #12
  br label %523

512:                                              ; preds = %508
  %513 = icmp eq i32 %421, 13
  %514 = icmp eq i8 %509, 42
  %515 = and i1 %513, %514
  br i1 %515, label %516, label %521

516:                                              ; preds = %512
  %517 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.44, i64 noundef 1) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %517, ptr noundef nonnull %1, i64 noundef %2, i32 noundef 2) #12
  %518 = getelementptr inbounds %struct.sv, ptr %517, i64 0, i32 3
  %519 = load ptr, ptr %518, align 8, !tbaa !47
  %520 = getelementptr inbounds i8, ptr %519, i64 1
  store i8 38, ptr %520, align 1, !tbaa !47
  br label %523

521:                                              ; preds = %512
  %522 = call ptr @Perl_newSVpvn(ptr noundef nonnull %1, i64 noundef %2) #12
  br label %523

523:                                              ; preds = %516, %521, %510
  %524 = phi ptr [ %511, %510 ], [ %517, %516 ], [ %522, %521 ]
  %525 = call ptr @Perl_newSV_type(i32 noundef 11) #12
  call void @Perl_av_push(ptr noundef %525, ptr noundef %524) #12
  %526 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %527 = load i32, ptr %526, align 8, !tbaa !53
  %528 = add i32 %527, 1
  store i32 %528, ptr %526, align 8, !tbaa !53
  call void @Perl_av_push(ptr noundef %525, ptr noundef nonnull %0) #12
  %529 = call ptr @Perl_newRV(ptr noundef %525) #12
  %530 = call ptr @Perl_hv_common_key_len(ptr noundef %4, ptr noundef nonnull %26, i32 noundef 8, i32 noundef 36, ptr noundef %529, i32 noundef 0) #12
  %531 = icmp eq ptr %525, null
  br i1 %531, label %539, label %532

532:                                              ; preds = %523
  %533 = getelementptr inbounds %struct.sv, ptr %525, i64 0, i32 1
  %534 = load i32, ptr %533, align 8, !tbaa !53
  %535 = icmp ugt i32 %534, 1
  br i1 %535, label %536, label %538

536:                                              ; preds = %532
  %537 = add i32 %534, -1
  store i32 %537, ptr %533, align 8, !tbaa !53
  br label %539

538:                                              ; preds = %532
  call void @Perl_sv_free2(ptr noundef nonnull %525, i32 noundef %534) #12
  br label %539

539:                                              ; preds = %538, %536, %523, %453
  %540 = phi ptr [ null, %453 ], [ %525, %523 ], [ %525, %536 ], [ %525, %538 ]
  %541 = icmp ne ptr %454, null
  %542 = icmp eq i32 %421, 8
  %543 = and i1 %542, %541
  br i1 %543, label %544, label %547

544:                                              ; preds = %539
  %545 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %454, ptr noundef nonnull dereferenceable(7) @.str.45) #13
  %546 = icmp eq i32 %545, 0
  br label %547

547:                                              ; preds = %544, %539
  %548 = phi i1 [ false, %539 ], [ %546, %544 ]
  %549 = icmp eq i32 %15, 0
  %550 = icmp sgt i32 %19, 0
  %551 = and i1 %549, %550
  br i1 %551, label %552, label %569

552:                                              ; preds = %547
  %553 = load i32, ptr %6, align 4, !tbaa !39
  %554 = icmp slt i32 %553, %19
  br i1 %554, label %569, label %555

555:                                              ; preds = %552
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #12
  %556 = load i32, ptr %53, align 4, !tbaa !44
  %557 = and i32 %556, 2098176
  %558 = icmp eq i32 %557, 1024
  br i1 %558, label %559, label %564

559:                                              ; preds = %555
  %560 = load ptr, ptr %0, align 8, !tbaa !50
  %561 = getelementptr inbounds %struct.xpv, ptr %560, i64 0, i32 2
  %562 = load i64, ptr %561, align 8, !tbaa !51
  store i64 %562, ptr %27, align 8, !tbaa !46
  %563 = load ptr, ptr %65, align 8, !tbaa !47
  br label %566

564:                                              ; preds = %555
  %565 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %27, i32 noundef 2) #12
  br label %566

566:                                              ; preds = %564, %559
  %567 = phi ptr [ %563, %559 ], [ %565, %564 ]
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.46, i64 noundef 1, i32 noundef 2) #12
  %568 = load i64, ptr %27, align 8, !tbaa !46
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef %567, i64 noundef %568, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.46, i64 noundef 1, i32 noundef 2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #12
  br label %1943

569:                                              ; preds = %552, %547
  %570 = icmp sgt i64 %23, 0
  br i1 %570, label %571, label %576

571:                                              ; preds = %569
  %572 = load i32, ptr %6, align 4, !tbaa !39
  %573 = sext i32 %572 to i64
  %574 = icmp slt i64 %573, %23
  br i1 %574, label %576, label %575

575:                                              ; preds = %571
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, i64 noundef %23) #12
  br label %576

576:                                              ; preds = %575, %571, %569
  %577 = xor i1 %541, true
  %578 = select i1 %577, i1 true, i1 %548
  br i1 %578, label %604, label %579

579:                                              ; preds = %576
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #12
  %580 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %581 = load i32, ptr %580, align 4, !tbaa !44
  %582 = and i32 %581, 2098176
  %583 = icmp eq i32 %582, 1024
  br i1 %583, label %584, label %590

584:                                              ; preds = %579
  %585 = load ptr, ptr %18, align 8, !tbaa !50
  %586 = getelementptr inbounds %struct.xpv, ptr %585, i64 0, i32 2
  %587 = load i64, ptr %586, align 8, !tbaa !51
  store i64 %587, ptr %28, align 8, !tbaa !46
  %588 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %589 = load ptr, ptr %588, align 8, !tbaa !47
  br label %592

590:                                              ; preds = %579
  %591 = call ptr @Perl_sv_2pv_flags(ptr noundef %18, ptr noundef nonnull %28, i32 noundef 2) #12
  br label %592

592:                                              ; preds = %590, %584
  %593 = phi ptr [ %589, %584 ], [ %591, %590 ]
  %594 = load i64, ptr %28, align 8, !tbaa !46
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef %593, i64 noundef %594, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.48, i64 noundef 2, i32 noundef 2) #12
  %595 = icmp sgt i32 %7, 1
  br i1 %595, label %596, label %602

596:                                              ; preds = %592
  %597 = call ptr @Perl_newSVsv(ptr noundef %10) #12
  %598 = load i64, ptr %28, align 8, !tbaa !46
  %599 = trunc i64 %598 to i32
  %600 = add i32 %599, 2
  %601 = call fastcc ptr @sv_x(ptr noundef %597, ptr noundef nonnull @.str.33, i64 noundef 1, i32 noundef %600)
  br label %602

602:                                              ; preds = %596, %592
  %603 = phi ptr [ %597, %596 ], [ %10, %592 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #12
  br label %604

604:                                              ; preds = %576, %602
  %605 = phi ptr [ %603, %602 ], [ %10, %576 ]
  %606 = load i32, ptr %6, align 4, !tbaa !39
  %607 = add nsw i32 %606, 1
  store i32 %607, ptr %6, align 4, !tbaa !39
  %608 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %609 = load ptr, ptr %608, align 8, !tbaa !47
  %610 = load ptr, ptr %9, align 8, !tbaa !50
  %611 = getelementptr inbounds %struct.xpv, ptr %610, i64 0, i32 2
  %612 = load i64, ptr %611, align 8, !tbaa !51
  %613 = call fastcc ptr @sv_x(ptr noundef null, ptr noundef %609, i64 noundef %612, i32 noundef %607)
  br i1 %543, label %614, label %720

614:                                              ; preds = %604
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #12
  %615 = call ptr @Perl_get_cv(ptr noundef nonnull @.str.49, i32 noundef 0) #12
  %616 = icmp eq ptr %615, null
  br i1 %616, label %675, label %617

617:                                              ; preds = %614
  %618 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  call void @Perl_push_scope() #12
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #12
  %619 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !46
  store i64 %619, ptr @PL_tmps_floor, align 8, !tbaa !46
  %620 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %621 = getelementptr inbounds i32, ptr %620, i64 1
  store ptr %621, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %622 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !35
  %623 = icmp eq ptr %621, %622
  br i1 %623, label %624, label %626

624:                                              ; preds = %617
  %625 = call ptr @Perl_markstack_grow() #12
  br label %626

626:                                              ; preds = %617, %624
  %627 = phi ptr [ %625, %624 ], [ %621, %617 ]
  %628 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %629 = ptrtoint ptr %618 to i64
  %630 = ptrtoint ptr %628 to i64
  %631 = sub i64 %629, %630
  %632 = lshr exact i64 %631, 3
  %633 = trunc i64 %632 to i32
  store i32 %633, ptr %627, align 4, !tbaa !39
  %634 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %635 = ptrtoint ptr %634 to i64
  %636 = sub i64 %635, %629
  %637 = icmp slt i64 %636, 8
  br i1 %637, label %638, label %640

638:                                              ; preds = %626
  %639 = call ptr @Perl_stack_grow(ptr noundef %618, ptr noundef %618, i64 noundef 1) #12
  br label %640

640:                                              ; preds = %626, %638
  %641 = phi ptr [ %639, %638 ], [ %618, %626 ]
  %642 = getelementptr inbounds ptr, ptr %641, i64 1
  store ptr %0, ptr %642, align 8, !tbaa !35
  store ptr %642, ptr @PL_stack_sp, align 8, !tbaa !35
  %643 = call i32 @Perl_call_sv(ptr noundef nonnull %615, i32 noundef 3) #12
  %644 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %645 = icmp sgt i32 %643, 1
  br i1 %645, label %646, label %662

646:                                              ; preds = %640
  %647 = getelementptr inbounds ptr, ptr %644, i64 -1
  %648 = load ptr, ptr %644, align 8, !tbaa !35
  %649 = getelementptr inbounds ptr, ptr %644, i64 -2
  %650 = load ptr, ptr %647, align 8, !tbaa !35
  %651 = icmp eq ptr %648, null
  br i1 %651, label %656, label %652

652:                                              ; preds = %646
  %653 = getelementptr inbounds %struct.sv, ptr %648, i64 0, i32 1
  %654 = load i32, ptr %653, align 8, !tbaa !53
  %655 = add i32 %654, 1
  store i32 %655, ptr %653, align 8, !tbaa !53
  br label %656

656:                                              ; preds = %646, %652
  %657 = icmp eq ptr %650, null
  br i1 %657, label %662, label %658

658:                                              ; preds = %656
  %659 = getelementptr inbounds %struct.sv, ptr %650, i64 0, i32 1
  %660 = load i32, ptr %659, align 8, !tbaa !53
  %661 = add i32 %660, 1
  store i32 %661, ptr %659, align 8, !tbaa !53
  br label %662

662:                                              ; preds = %658, %656, %640
  %663 = phi ptr [ %644, %640 ], [ %649, %656 ], [ %649, %658 ]
  %664 = phi ptr [ null, %640 ], [ %648, %656 ], [ %648, %658 ]
  %665 = phi ptr [ null, %640 ], [ %650, %656 ], [ %650, %658 ]
  store ptr %663, ptr @PL_stack_sp, align 8, !tbaa !35
  %666 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !46
  %667 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !46
  %668 = icmp sgt i64 %666, %667
  br i1 %668, label %669, label %670

669:                                              ; preds = %662
  call void @Perl_free_tmps() #12
  br label %670

670:                                              ; preds = %669, %662
  call void @Perl_pop_scope() #12
  %671 = icmp eq ptr %665, null
  br i1 %671, label %675, label %672

672:                                              ; preds = %670
  %673 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %665) #12
  %674 = call ptr @Perl_sv_2mortal(ptr noundef %664) #12
  br label %675

675:                                              ; preds = %614, %670, %672
  %676 = phi ptr [ %664, %672 ], [ %664, %670 ], [ null, %614 ]
  %677 = phi ptr [ %665, %672 ], [ %665, %670 ], [ %0, %614 ]
  %678 = getelementptr inbounds %struct.sv, ptr %677, i64 0, i32 2
  %679 = load i32, ptr %678, align 4, !tbaa !44
  %680 = and i32 %679, 2098176
  %681 = icmp eq i32 %680, 1024
  br i1 %681, label %682, label %688

682:                                              ; preds = %675
  %683 = load ptr, ptr %677, align 8, !tbaa !50
  %684 = getelementptr inbounds %struct.xpv, ptr %683, i64 0, i32 2
  %685 = load i64, ptr %684, align 8, !tbaa !51
  store i64 %685, ptr %29, align 8, !tbaa !46
  %686 = getelementptr inbounds %struct.sv, ptr %677, i64 0, i32 3
  %687 = load ptr, ptr %686, align 8, !tbaa !47
  br label %690

688:                                              ; preds = %675
  %689 = call ptr @Perl_sv_2pv_flags(ptr noundef %677, ptr noundef nonnull %29, i32 noundef 2) #12
  br label %690

690:                                              ; preds = %688, %682
  %691 = phi ptr [ %687, %682 ], [ %689, %688 ]
  %692 = load i64, ptr %29, align 8, !tbaa !46
  %693 = getelementptr inbounds i8, ptr %691, i64 %692
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.50, i64 noundef 3, i32 noundef 2) #12
  %694 = icmp sgt i64 %692, 0
  br i1 %694, label %695, label %714

695:                                              ; preds = %690, %709
  %696 = phi ptr [ %711, %709 ], [ %691, %690 ]
  %697 = phi ptr [ %712, %709 ], [ %691, %690 ]
  %698 = load i8, ptr %697, align 1, !tbaa !47
  switch i8 %698, label %709 [
    i8 92, label %699
    i8 47, label %701
  ]

699:                                              ; preds = %695
  %700 = getelementptr inbounds i8, ptr %697, i64 1
  br label %709

701:                                              ; preds = %695
  %702 = ptrtoint ptr %697 to i64
  %703 = ptrtoint ptr %696 to i64
  %704 = sub i64 %702, %703
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef %696, i64 noundef %704, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.51, i64 noundef 2, i32 noundef 2) #12
  %705 = xor i64 %704, -1
  %706 = load i64, ptr %29, align 8, !tbaa !46
  %707 = add i64 %706, %705
  store i64 %707, ptr %29, align 8, !tbaa !46
  %708 = getelementptr inbounds i8, ptr %697, i64 1
  br label %709

709:                                              ; preds = %695, %701, %699
  %710 = phi ptr [ %700, %699 ], [ %697, %701 ], [ %697, %695 ]
  %711 = phi ptr [ %696, %699 ], [ %708, %701 ], [ %696, %695 ]
  %712 = getelementptr inbounds i8, ptr %710, i64 1
  %713 = icmp ult ptr %712, %693
  br i1 %713, label %695, label %714, !llvm.loop !73

714:                                              ; preds = %709, %690
  %715 = phi ptr [ %691, %690 ], [ %711, %709 ]
  %716 = load i64, ptr %29, align 8, !tbaa !46
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef %715, i64 noundef %716, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.52, i64 noundef 1, i32 noundef 2) #12
  %717 = icmp eq ptr %676, null
  br i1 %717, label %719, label %718

718:                                              ; preds = %714
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef nonnull %676, i32 noundef 2) #12
  br label %719

719:                                              ; preds = %718, %714
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #12
  br label %1309

720:                                              ; preds = %604
  %721 = icmp ult i32 %421, 8
  br i1 %721, label %722, label %744

722:                                              ; preds = %720
  %723 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.53, i64 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %723, ptr noundef %1, i64 noundef %2, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %723, ptr noundef nonnull @.str.42, i64 noundef 1, i32 noundef 2) #12
  %724 = getelementptr inbounds %struct.sv, ptr %723, i64 0, i32 3
  br i1 %541, label %725, label %730

725:                                              ; preds = %722
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.54, i64 noundef 13, i32 noundef 2) #12
  %726 = load ptr, ptr %724, align 8, !tbaa !47
  %727 = load ptr, ptr %723, align 8, !tbaa !50
  %728 = getelementptr inbounds %struct.xpv, ptr %727, i64 0, i32 2
  %729 = load i64, ptr %728, align 8, !tbaa !51
  call fastcc void @DD_dump(ptr noundef %418, ptr noundef %726, i64 noundef %729, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %605, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i64 noundef %23)
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.55, i64 noundef 2, i32 noundef 2) #12
  br label %735

730:                                              ; preds = %722
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.44, i64 noundef 1, i32 noundef 2) #12
  %731 = load ptr, ptr %724, align 8, !tbaa !47
  %732 = load ptr, ptr %723, align 8, !tbaa !50
  %733 = getelementptr inbounds %struct.xpv, ptr %732, i64 0, i32 2
  %734 = load i64, ptr %733, align 8, !tbaa !51
  call fastcc void @DD_dump(ptr noundef %418, ptr noundef %731, i64 noundef %734, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %605, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i64 noundef %23)
  br label %735

735:                                              ; preds = %730, %725
  %736 = icmp eq ptr %723, null
  br i1 %736, label %1309, label %737

737:                                              ; preds = %735
  %738 = getelementptr inbounds %struct.sv, ptr %723, i64 0, i32 1
  %739 = load i32, ptr %738, align 8, !tbaa !53
  %740 = icmp ugt i32 %739, 1
  br i1 %740, label %741, label %743

741:                                              ; preds = %737
  %742 = add i32 %739, -1
  store i32 %742, ptr %738, align 8, !tbaa !53
  br label %1309

743:                                              ; preds = %737
  call void @Perl_sv_free2(ptr noundef nonnull %723, i32 noundef %739) #12
  br label %1309

744:                                              ; preds = %720
  %745 = trunc i32 %420 to i8
  switch i8 %745, label %1308 [
    i8 9, label %746
    i8 11, label %759
    i8 12, label %887
    i8 13, label %1306
  ]

746:                                              ; preds = %744
  %747 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.56, i64 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %747, ptr noundef %1, i64 noundef %2, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %747, ptr noundef nonnull @.str.42, i64 noundef 1, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.44, i64 noundef 1, i32 noundef 2) #12
  %748 = getelementptr inbounds %struct.sv, ptr %747, i64 0, i32 3
  %749 = load ptr, ptr %748, align 8, !tbaa !47
  %750 = load ptr, ptr %747, align 8, !tbaa !50
  %751 = getelementptr inbounds %struct.xpv, ptr %750, i64 0, i32 2
  %752 = load i64, ptr %751, align 8, !tbaa !51
  call fastcc void @DD_dump(ptr noundef %418, ptr noundef %749, i64 noundef %752, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %605, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i64 noundef %23)
  %753 = getelementptr inbounds %struct.sv, ptr %747, i64 0, i32 1
  %754 = load i32, ptr %753, align 8, !tbaa !53
  %755 = icmp ugt i32 %754, 1
  br i1 %755, label %756, label %758

756:                                              ; preds = %746
  %757 = add i32 %754, -1
  store i32 %757, ptr %753, align 8, !tbaa !53
  br label %1309

758:                                              ; preds = %746
  call void @Perl_sv_free2(ptr noundef nonnull %747, i32 noundef %754) #12
  br label %1309

759:                                              ; preds = %744
  %760 = call i64 @Perl_av_len(ptr noundef %418) #12
  %761 = call ptr @Perl_newSViv(i64 noundef 0) #12
  %762 = add i64 %2, 28
  %763 = call ptr @Perl_safesysmalloc(i64 noundef %762) #12
  %764 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %763, ptr noundef nonnull dereferenceable(1) %1) #12
  %765 = load i8, ptr %1, align 1, !tbaa !47
  %766 = icmp eq i8 %765, 64
  br i1 %766, label %767, label %768

767:                                              ; preds = %759
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.57, i64 noundef 1, i32 noundef 2) #12
  store i8 36, ptr %763, align 1, !tbaa !47
  br label %791

768:                                              ; preds = %759
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.58, i64 noundef 1, i32 noundef 2) #12
  br i1 %455, label %773, label %769

769:                                              ; preds = %768
  %770 = getelementptr i8, ptr %1, i64 %2
  %771 = getelementptr i8, ptr %770, i64 -1
  %772 = load i8, ptr %771, align 1, !tbaa !47
  switch i8 %772, label %786 [
    i8 93, label %773
    i8 125, label %773
  ]

773:                                              ; preds = %769, %769, %768
  %774 = icmp ugt i64 %2, 4
  br i1 %774, label %775, label %791

775:                                              ; preds = %773
  %776 = getelementptr inbounds i8, ptr %1, i64 1
  %777 = load i8, ptr %776, align 1, !tbaa !47
  %778 = icmp eq i8 %777, 123
  br i1 %778, label %786, label %779

779:                                              ; preds = %775
  %780 = load i8, ptr %1, align 1, !tbaa !47
  %781 = icmp eq i8 %780, 92
  br i1 %781, label %782, label %791

782:                                              ; preds = %779
  %783 = getelementptr inbounds i8, ptr %1, i64 2
  %784 = load i8, ptr %783, align 1, !tbaa !47
  %785 = icmp eq i8 %784, 123
  br i1 %785, label %786, label %791

786:                                              ; preds = %769, %782, %775
  %787 = getelementptr inbounds i8, ptr %763, i64 %2
  store i8 45, ptr %787, align 1, !tbaa !47
  %788 = add i64 %2, 2
  %789 = getelementptr i8, ptr %787, i64 1
  store i8 62, ptr %789, align 1, !tbaa !47
  %790 = getelementptr inbounds i8, ptr %763, i64 %788
  store i8 0, ptr %790, align 1, !tbaa !47
  br label %791

791:                                              ; preds = %782, %773, %779, %786, %767
  %792 = phi i64 [ %2, %767 ], [ %788, %786 ], [ %2, %779 ], [ %2, %773 ], [ %2, %782 ]
  %793 = load i8, ptr %763, align 1, !tbaa !47
  %794 = icmp eq i8 %793, 42
  br i1 %794, label %795, label %817

795:                                              ; preds = %791
  %796 = getelementptr i8, ptr %763, i64 %792
  %797 = getelementptr i8, ptr %796, i64 -1
  %798 = load i8, ptr %797, align 1, !tbaa !47
  %799 = icmp eq i8 %798, 125
  %800 = icmp ugt i64 %792, 7
  %801 = and i1 %800, %799
  br i1 %801, label %802, label %817

802:                                              ; preds = %795
  %803 = getelementptr inbounds i8, ptr %796, i64 -8
  %804 = call ptr @Perl_instr(ptr noundef nonnull %803, ptr noundef nonnull @.str.59) #12
  %805 = icmp eq ptr %804, null
  br i1 %805, label %806, label %814

806:                                              ; preds = %802
  %807 = getelementptr inbounds i8, ptr %796, i64 -7
  %808 = call ptr @Perl_instr(ptr noundef nonnull %807, ptr noundef nonnull @.str.60) #12
  %809 = icmp eq ptr %808, null
  br i1 %809, label %810, label %814

810:                                              ; preds = %806
  %811 = getelementptr inbounds i8, ptr %796, i64 -6
  %812 = call ptr @Perl_instr(ptr noundef nonnull %811, ptr noundef nonnull @.str.61) #12
  %813 = icmp eq ptr %812, null
  br i1 %813, label %817, label %814

814:                                              ; preds = %810, %806, %802
  store i8 45, ptr %796, align 1, !tbaa !47
  %815 = add i64 %792, 2
  %816 = getelementptr i8, ptr %796, i64 1
  store i8 62, ptr %816, align 1, !tbaa !47
  br label %817

817:                                              ; preds = %814, %810, %795, %791
  %818 = phi i64 [ %815, %814 ], [ %792, %810 ], [ %792, %795 ], [ %792, %791 ]
  %819 = add i64 %818, 1
  %820 = getelementptr inbounds i8, ptr %763, i64 %818
  store i8 91, ptr %820, align 1, !tbaa !47
  %821 = getelementptr inbounds i8, ptr %763, i64 %819
  store i8 0, ptr %821, align 1, !tbaa !47
  %822 = call ptr @Perl_newSVsv(ptr noundef %11) #12
  call void @Perl_sv_catsv_flags(ptr noundef %822, ptr noundef %8, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %822, ptr noundef %605, i32 noundef 2) #12
  %823 = icmp slt i64 %760, 0
  br i1 %823, label %847, label %824

824:                                              ; preds = %817
  %825 = icmp sgt i32 %7, 2
  br label %826

826:                                              ; preds = %824, %844
  %827 = phi i64 [ 0, %824 ], [ %845, %844 ]
  %828 = call ptr @Perl_av_fetch(ptr noundef %418, i64 noundef %827, i32 noundef 0) #12
  %829 = icmp eq ptr %828, null
  br i1 %829, label %832, label %830

830:                                              ; preds = %826
  %831 = load ptr, ptr %828, align 8, !tbaa !35
  br label %832

832:                                              ; preds = %826, %830
  %833 = phi ptr [ %831, %830 ], [ @PL_sv_undef, %826 ]
  call void @Perl_sv_setiv(ptr noundef %761, i64 noundef %827) #12
  %834 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %821, ptr noundef nonnull dereferenceable(1) @.str.32, i64 noundef %827) #12
  %835 = sext i32 %834 to i64
  %836 = add i64 %819, %835
  %837 = add i64 %836, 1
  %838 = getelementptr inbounds i8, ptr %763, i64 %836
  store i8 93, ptr %838, align 1, !tbaa !47
  %839 = getelementptr inbounds i8, ptr %763, i64 %837
  store i8 0, ptr %839, align 1, !tbaa !47
  br i1 %825, label %840, label %841

840:                                              ; preds = %832
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %822, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %613, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.62, i64 noundef 1, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %761, i32 noundef 2) #12
  br label %841

841:                                              ; preds = %840, %832
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %822, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %613, i32 noundef 2) #12
  call fastcc void @DD_dump(ptr noundef %833, ptr noundef nonnull %763, i64 noundef %837, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %605, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i64 noundef %23)
  %842 = icmp slt i64 %827, %760
  br i1 %842, label %843, label %844

843:                                              ; preds = %841
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.63, i64 noundef 1, i32 noundef 2) #12
  br label %844

844:                                              ; preds = %843, %841
  %845 = add nuw i64 %827, 1
  %846 = icmp eq i64 %827, %760
  br i1 %846, label %847, label %826, !llvm.loop !74

847:                                              ; preds = %844, %817
  %848 = icmp sgt i64 %760, -1
  br i1 %848, label %849, label %865

849:                                              ; preds = %847
  %850 = load ptr, ptr %608, align 8, !tbaa !47
  %851 = load ptr, ptr %9, align 8, !tbaa !50
  %852 = getelementptr inbounds %struct.xpv, ptr %851, i64 0, i32 2
  %853 = load i64, ptr %852, align 8, !tbaa !51
  %854 = load i32, ptr %6, align 4, !tbaa !39
  %855 = add nsw i32 %854, -1
  %856 = call fastcc ptr @sv_x(ptr noundef null, ptr noundef %850, i64 noundef %853, i32 noundef %855)
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %822, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %856, i32 noundef 2) #12
  %857 = icmp eq ptr %856, null
  br i1 %857, label %865, label %858

858:                                              ; preds = %849
  %859 = getelementptr inbounds %struct.sv, ptr %856, i64 0, i32 1
  %860 = load i32, ptr %859, align 8, !tbaa !53
  %861 = icmp ugt i32 %860, 1
  br i1 %861, label %862, label %864

862:                                              ; preds = %858
  %863 = add i32 %860, -1
  store i32 %863, ptr %859, align 8, !tbaa !53
  br label %865

864:                                              ; preds = %858
  call void @Perl_sv_free2(ptr noundef nonnull %856, i32 noundef %860) #12
  br label %865

865:                                              ; preds = %864, %862, %849, %847
  %866 = load i8, ptr %1, align 1, !tbaa !47
  %867 = icmp eq i8 %866, 64
  %868 = select i1 %867, ptr @.str.64, ptr @.str.65
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull %868, i64 noundef 1, i32 noundef 2) #12
  %869 = icmp eq ptr %761, null
  br i1 %869, label %877, label %870

870:                                              ; preds = %865
  %871 = getelementptr inbounds %struct.sv, ptr %761, i64 0, i32 1
  %872 = load i32, ptr %871, align 8, !tbaa !53
  %873 = icmp ugt i32 %872, 1
  br i1 %873, label %874, label %876

874:                                              ; preds = %870
  %875 = add i32 %872, -1
  store i32 %875, ptr %871, align 8, !tbaa !53
  br label %877

876:                                              ; preds = %870
  call void @Perl_sv_free2(ptr noundef nonnull %761, i32 noundef %872) #12
  br label %877

877:                                              ; preds = %865, %874, %876
  %878 = icmp eq ptr %822, null
  br i1 %878, label %886, label %879

879:                                              ; preds = %877
  %880 = getelementptr inbounds %struct.sv, ptr %822, i64 0, i32 1
  %881 = load i32, ptr %880, align 8, !tbaa !53
  %882 = icmp ugt i32 %881, 1
  br i1 %882, label %883, label %885

883:                                              ; preds = %879
  %884 = add i32 %881, -1
  store i32 %884, ptr %880, align 8, !tbaa !53
  br label %886

885:                                              ; preds = %879
  call void @Perl_sv_free2(ptr noundef nonnull %822, i32 noundef %881) #12
  br label %886

886:                                              ; preds = %877, %883, %885
  call void @Perl_safesysfree(ptr noundef nonnull %763) #12
  br label %1309

887:                                              ; preds = %744
  %888 = call ptr @Perl_newSVpvn(ptr noundef %1, i64 noundef %2) #12
  %889 = load i8, ptr %1, align 1, !tbaa !47
  %890 = icmp eq i8 %889, 37
  br i1 %890, label %891, label %894

891:                                              ; preds = %887
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.57, i64 noundef 1, i32 noundef 2) #12
  %892 = getelementptr inbounds %struct.sv, ptr %888, i64 0, i32 3
  %893 = load ptr, ptr %892, align 8, !tbaa !47
  store i8 36, ptr %893, align 1, !tbaa !47
  br label %913

894:                                              ; preds = %887
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.41, i64 noundef 1, i32 noundef 2) #12
  br i1 %455, label %899, label %895

895:                                              ; preds = %894
  %896 = getelementptr i8, ptr %1, i64 %2
  %897 = getelementptr i8, ptr %896, i64 -1
  %898 = load i8, ptr %897, align 1, !tbaa !47
  switch i8 %898, label %912 [
    i8 93, label %899
    i8 125, label %899
  ]

899:                                              ; preds = %895, %895, %894
  %900 = icmp ugt i64 %2, 4
  br i1 %900, label %901, label %913

901:                                              ; preds = %899
  %902 = getelementptr inbounds i8, ptr %1, i64 1
  %903 = load i8, ptr %902, align 1, !tbaa !47
  %904 = icmp eq i8 %903, 123
  br i1 %904, label %912, label %905

905:                                              ; preds = %901
  %906 = load i8, ptr %1, align 1, !tbaa !47
  %907 = icmp eq i8 %906, 92
  br i1 %907, label %908, label %913

908:                                              ; preds = %905
  %909 = getelementptr inbounds i8, ptr %1, i64 2
  %910 = load i8, ptr %909, align 1, !tbaa !47
  %911 = icmp eq i8 %910, 123
  br i1 %911, label %912, label %913

912:                                              ; preds = %895, %908, %901
  call void @Perl_sv_catpvn_flags(ptr noundef %888, ptr noundef nonnull @.str.66, i64 noundef 2, i32 noundef 2) #12
  br label %913

913:                                              ; preds = %908, %899, %905, %912, %891
  %914 = load i8, ptr %1, align 1, !tbaa !47
  %915 = icmp eq i8 %914, 42
  br i1 %915, label %916, label %936

916:                                              ; preds = %913
  %917 = getelementptr i8, ptr %1, i64 %2
  %918 = getelementptr i8, ptr %917, i64 -1
  %919 = load i8, ptr %918, align 1, !tbaa !47
  %920 = icmp eq i8 %919, 125
  %921 = icmp ugt i64 %2, 7
  %922 = and i1 %921, %920
  br i1 %922, label %923, label %936

923:                                              ; preds = %916
  %924 = getelementptr inbounds i8, ptr %917, i64 -8
  %925 = call ptr @Perl_instr(ptr noundef nonnull %924, ptr noundef nonnull @.str.59) #12
  %926 = icmp eq ptr %925, null
  br i1 %926, label %927, label %935

927:                                              ; preds = %923
  %928 = getelementptr inbounds i8, ptr %917, i64 -7
  %929 = call ptr @Perl_instr(ptr noundef nonnull %928, ptr noundef nonnull @.str.60) #12
  %930 = icmp eq ptr %929, null
  br i1 %930, label %931, label %935

931:                                              ; preds = %927
  %932 = getelementptr inbounds i8, ptr %917, i64 -6
  %933 = call ptr @Perl_instr(ptr noundef nonnull %932, ptr noundef nonnull @.str.61) #12
  %934 = icmp eq ptr %933, null
  br i1 %934, label %936, label %935

935:                                              ; preds = %931, %927, %923
  call void @Perl_sv_catpvn_flags(ptr noundef %888, ptr noundef nonnull @.str.66, i64 noundef 2, i32 noundef 2) #12
  br label %936

936:                                              ; preds = %935, %931, %916, %913
  call void @Perl_sv_catpvn_flags(ptr noundef %888, ptr noundef nonnull @.str.41, i64 noundef 1, i32 noundef 2) #12
  %937 = call ptr @Perl_newSVsv(ptr noundef %11) #12
  call void @Perl_sv_catsv_flags(ptr noundef %937, ptr noundef %8, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %937, ptr noundef %605, i32 noundef 2) #12
  %938 = icmp eq ptr %20, null
  br i1 %938, label %1031, label %939

939:                                              ; preds = %936
  %940 = icmp eq ptr %20, @PL_sv_yes
  br i1 %940, label %941, label %962

941:                                              ; preds = %939
  %942 = call ptr @Perl_newSV_type(i32 noundef 11) #12
  %943 = call i32 @Perl_hv_iterinit(ptr noundef %418) #12
  %944 = call ptr @Perl_hv_iternext_flags(ptr noundef %418, i32 noundef 0) #12
  %945 = icmp eq ptr %944, null
  br i1 %945, label %957, label %946

946:                                              ; preds = %941, %954
  %947 = phi ptr [ %955, %954 ], [ %944, %941 ]
  %948 = call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %947) #12
  %949 = icmp eq ptr %948, null
  br i1 %949, label %954, label %950

950:                                              ; preds = %946
  %951 = getelementptr inbounds %struct.sv, ptr %948, i64 0, i32 1
  %952 = load i32, ptr %951, align 8, !tbaa !53
  %953 = add i32 %952, 1
  store i32 %953, ptr %951, align 8, !tbaa !53
  br label %954

954:                                              ; preds = %946, %950
  call void @Perl_av_push(ptr noundef %942, ptr noundef %948) #12
  %955 = call ptr @Perl_hv_iternext_flags(ptr noundef %418, i32 noundef 0) #12
  %956 = icmp eq ptr %955, null
  br i1 %956, label %957, label %946, !llvm.loop !75

957:                                              ; preds = %954, %941
  %958 = getelementptr inbounds %struct.av, ptr %942, i64 0, i32 3
  %959 = load ptr, ptr %958, align 8, !tbaa !47
  %960 = call i64 @Perl_av_len(ptr noundef %942) #12
  %961 = add nsw i64 %960, 1
  call void @Perl_sortsv(ptr noundef %959, i64 noundef %961, ptr noundef nonnull @Perl_sv_cmp) #12
  br label %962

962:                                              ; preds = %957, %939
  %963 = phi ptr [ %942, %957 ], [ null, %939 ]
  br i1 %940, label %1026, label %964

964:                                              ; preds = %962
  %965 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  call void @Perl_push_scope() #12
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #12
  %966 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !46
  store i64 %966, ptr @PL_tmps_floor, align 8, !tbaa !46
  %967 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %968 = getelementptr inbounds i32, ptr %967, i64 1
  store ptr %968, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %969 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !35
  %970 = icmp eq ptr %968, %969
  br i1 %970, label %971, label %973

971:                                              ; preds = %964
  %972 = call ptr @Perl_markstack_grow() #12
  br label %973

973:                                              ; preds = %964, %971
  %974 = phi ptr [ %972, %971 ], [ %968, %964 ]
  %975 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %976 = ptrtoint ptr %965 to i64
  %977 = ptrtoint ptr %975 to i64
  %978 = sub i64 %976, %977
  %979 = lshr exact i64 %978, 3
  %980 = trunc i64 %979 to i32
  store i32 %980, ptr %974, align 4, !tbaa !39
  %981 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %982 = ptrtoint ptr %981 to i64
  %983 = sub i64 %982, %976
  %984 = icmp slt i64 %983, 8
  br i1 %984, label %985, label %987

985:                                              ; preds = %973
  %986 = call ptr @Perl_stack_grow(ptr noundef %965, ptr noundef %965, i64 noundef 1) #12
  br label %987

987:                                              ; preds = %973, %985
  %988 = phi ptr [ %986, %985 ], [ %965, %973 ]
  %989 = call ptr @Perl_newRV(ptr noundef %418) #12
  %990 = call ptr @Perl_sv_2mortal(ptr noundef %989) #12
  %991 = getelementptr inbounds ptr, ptr %988, i64 1
  store ptr %990, ptr %991, align 8, !tbaa !35
  store ptr %991, ptr @PL_stack_sp, align 8, !tbaa !35
  %992 = call i32 @Perl_call_sv(ptr noundef nonnull %20, i32 noundef 10) #12
  %993 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %994 = icmp eq i32 %992, 0
  br i1 %994, label %1015, label %995

995:                                              ; preds = %987
  %996 = getelementptr inbounds ptr, ptr %993, i64 -1
  %997 = load ptr, ptr %993, align 8, !tbaa !35
  %998 = getelementptr inbounds %struct.sv, ptr %997, i64 0, i32 2
  %999 = load i32, ptr %998, align 4, !tbaa !44
  %1000 = and i32 %999, 2048
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1015, label %1002

1002:                                             ; preds = %995
  %1003 = getelementptr inbounds %struct.sv, ptr %997, i64 0, i32 3
  %1004 = load ptr, ptr %1003, align 8, !tbaa !47
  %1005 = getelementptr inbounds %struct.sv, ptr %1004, i64 0, i32 2
  %1006 = load i32, ptr %1005, align 4, !tbaa !44
  %1007 = and i32 %1006, 255
  %1008 = icmp eq i32 %1007, 11
  br i1 %1008, label %1009, label %1015

1009:                                             ; preds = %1002
  %1010 = icmp eq ptr %1004, null
  br i1 %1010, label %1015, label %1011

1011:                                             ; preds = %1009
  %1012 = getelementptr inbounds %struct.sv, ptr %1004, i64 0, i32 1
  %1013 = load i32, ptr %1012, align 8, !tbaa !53
  %1014 = add i32 %1013, 1
  store i32 %1014, ptr %1012, align 8, !tbaa !53
  br label %1015

1015:                                             ; preds = %1011, %1009, %995, %1002, %987
  %1016 = phi ptr [ %963, %1002 ], [ %963, %995 ], [ %963, %987 ], [ %1004, %1009 ], [ %1004, %1011 ]
  %1017 = phi ptr [ %996, %1002 ], [ %996, %995 ], [ %993, %987 ], [ %996, %1009 ], [ %996, %1011 ]
  %1018 = icmp eq ptr %1016, null
  br i1 %1018, label %1019, label %1020

1019:                                             ; preds = %1015
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.67) #12
  br label %1020

1020:                                             ; preds = %1019, %1015
  store ptr %1017, ptr @PL_stack_sp, align 8, !tbaa !35
  %1021 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !46
  %1022 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !46
  %1023 = icmp sgt i64 %1021, %1022
  br i1 %1023, label %1024, label %1025

1024:                                             ; preds = %1020
  call void @Perl_free_tmps() #12
  br label %1025

1025:                                             ; preds = %1024, %1020
  call void @Perl_pop_scope() #12
  br label %1026

1026:                                             ; preds = %1025, %962
  %1027 = phi ptr [ %1016, %1025 ], [ %963, %962 ]
  %1028 = icmp eq ptr %1027, null
  br i1 %1028, label %1033, label %1029

1029:                                             ; preds = %1026
  %1030 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %1027) #12
  br label %1033

1031:                                             ; preds = %936
  %1032 = call i32 @Perl_hv_iterinit(ptr noundef %418) #12
  br label %1033

1033:                                             ; preds = %1026, %1029, %1031
  %1034 = phi ptr [ %1027, %1029 ], [ null, %1026 ], [ null, %1031 ]
  %1035 = icmp eq ptr %1034, null
  %1036 = icmp eq i32 %17, 0
  %1037 = icmp slt i32 %7, 2
  br label %1038

1038:                                             ; preds = %1263, %1033
  %1039 = phi ptr [ null, %1033 ], [ %1264, %1263 ]
  %1040 = phi i64 [ 0, %1033 ], [ %1266, %1263 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #12
  br i1 %938, label %1045, label %1041

1041:                                             ; preds = %1038
  br i1 %1035, label %1263, label %1042

1042:                                             ; preds = %1041
  %1043 = call i64 @Perl_av_len(ptr noundef nonnull %1034) #12
  %1044 = icmp sgt i64 %1040, %1043
  br i1 %1044, label %1263, label %1048

1045:                                             ; preds = %1038
  %1046 = call ptr @Perl_hv_iternext_flags(ptr noundef %418, i32 noundef 0) #12
  %1047 = icmp eq ptr %1046, null
  br i1 %1047, label %1263, label %1048

1048:                                             ; preds = %1045, %1042
  %1049 = phi ptr [ %1039, %1042 ], [ %1046, %1045 ]
  %1050 = icmp eq i64 %1040, 0
  br i1 %1050, label %1052, label %1051

1051:                                             ; preds = %1048
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.63, i64 noundef 1, i32 noundef 2) #12
  br label %1052

1052:                                             ; preds = %1051, %1048
  br i1 %938, label %1089, label %1053

1053:                                             ; preds = %1052
  %1054 = call ptr @Perl_av_fetch(ptr noundef %1034, i64 noundef %1040, i32 noundef 0) #12
  %1055 = icmp eq ptr %1054, null
  br i1 %1055, label %1058, label %1056

1056:                                             ; preds = %1053
  %1057 = load ptr, ptr %1054, align 8, !tbaa !35
  br label %1060

1058:                                             ; preds = %1053
  %1059 = call ptr @Perl_sv_newmortal() #12
  br label %1060

1060:                                             ; preds = %1058, %1056
  %1061 = phi ptr [ %1057, %1056 ], [ %1059, %1058 ]
  %1062 = getelementptr inbounds %struct.sv, ptr %1061, i64 0, i32 2
  %1063 = load i32, ptr %1062, align 4, !tbaa !44
  %1064 = and i32 %1063, 2098176
  %1065 = icmp eq i32 %1064, 1024
  br i1 %1065, label %1066, label %1072

1066:                                             ; preds = %1060
  %1067 = load ptr, ptr %1061, align 8, !tbaa !50
  %1068 = getelementptr inbounds %struct.xpv, ptr %1067, i64 0, i32 2
  %1069 = load i64, ptr %1068, align 8, !tbaa !51
  store i64 %1069, ptr %30, align 8, !tbaa !46
  %1070 = getelementptr inbounds %struct.sv, ptr %1061, i64 0, i32 3
  %1071 = load ptr, ptr %1070, align 8, !tbaa !47
  br label %1074

1072:                                             ; preds = %1060
  %1073 = call ptr @Perl_sv_2pv_flags(ptr noundef %1061, ptr noundef nonnull %30, i32 noundef 2) #12
  br label %1074

1074:                                             ; preds = %1072, %1066
  %1075 = phi ptr [ %1071, %1066 ], [ %1073, %1072 ]
  %1076 = load i32, ptr %1062, align 4, !tbaa !44
  %1077 = and i32 %1076, 536870912
  %1078 = icmp eq i32 %1077, 0
  %1079 = load i64, ptr %30, align 8
  %1080 = trunc i64 %1079 to i32
  %1081 = sub nsw i32 0, %1080
  %1082 = select i1 %1078, i32 %1080, i32 %1081
  %1083 = call ptr @Perl_hv_common_key_len(ptr noundef %418, ptr noundef %1075, i32 noundef %1082, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %1084 = icmp eq ptr %1083, null
  br i1 %1084, label %1087, label %1085

1085:                                             ; preds = %1074
  %1086 = load ptr, ptr %1083, align 8, !tbaa !35
  br label %1092

1087:                                             ; preds = %1074
  %1088 = call ptr @Perl_sv_newmortal() #12
  br label %1092

1089:                                             ; preds = %1052
  %1090 = call ptr @Perl_hv_iterkeysv(ptr noundef %1049) #12
  %1091 = call ptr @Perl_hv_iterval(ptr noundef %418, ptr noundef %1049) #12
  br label %1092

1092:                                             ; preds = %1085, %1087, %1089
  %1093 = phi ptr [ %1091, %1089 ], [ %1086, %1085 ], [ %1088, %1087 ]
  %1094 = phi ptr [ %1090, %1089 ], [ %1061, %1085 ], [ %1061, %1087 ]
  %1095 = getelementptr inbounds %struct.sv, ptr %1094, i64 0, i32 2
  %1096 = load i32, ptr %1095, align 4, !tbaa !44
  %1097 = and i32 %1096, 2098176
  %1098 = icmp eq i32 %1097, 1024
  br i1 %1098, label %1099, label %1105

1099:                                             ; preds = %1092
  %1100 = load ptr, ptr %1094, align 8, !tbaa !50
  %1101 = getelementptr inbounds %struct.xpv, ptr %1100, i64 0, i32 2
  %1102 = load i64, ptr %1101, align 8, !tbaa !51
  store i64 %1102, ptr %30, align 8, !tbaa !46
  %1103 = getelementptr inbounds %struct.sv, ptr %1094, i64 0, i32 3
  %1104 = load ptr, ptr %1103, align 8, !tbaa !47
  br label %1107

1105:                                             ; preds = %1092
  %1106 = call ptr @Perl_sv_2pv_flags(ptr noundef %1094, ptr noundef nonnull %30, i32 noundef 2) #12
  br label %1107

1107:                                             ; preds = %1105, %1099
  %1108 = phi ptr [ %1104, %1099 ], [ %1106, %1105 ]
  %1109 = load i32, ptr %1095, align 4, !tbaa !44
  %1110 = and i32 %1109, 536870912
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1118, label %1112

1112:                                             ; preds = %1107
  %1113 = load ptr, ptr @PL_curcop, align 8, !tbaa !35
  %1114 = getelementptr inbounds %struct.cop, ptr %1113, i64 0, i32 10
  %1115 = load i32, ptr %1114, align 8, !tbaa !76
  %1116 = and i32 %1115, 8
  %1117 = icmp eq i32 %1116, 0
  br label %1118

1118:                                             ; preds = %1112, %1107
  %1119 = phi i1 [ false, %1107 ], [ %1117, %1112 ]
  %1120 = load i64, ptr %30, align 8, !tbaa !46
  %1121 = trunc i64 %1120 to i32
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %937, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %613, i32 noundef 2) #12
  br i1 %1036, label %1122, label %1144

1122:                                             ; preds = %1118
  %1123 = load i64, ptr %30, align 8, !tbaa !46
  %1124 = getelementptr inbounds i8, ptr %1108, i64 %1123
  %1125 = call fastcc zeroext i1 @safe_decimal_number(ptr noundef %1108, i64 noundef %1123)
  br i1 %1125, label %1213, label %1126

1126:                                             ; preds = %1122
  %1127 = load i8, ptr %1108, align 1, !tbaa !47
  %1128 = zext i8 %1127 to i64
  %1129 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1128
  %1130 = load i32, ptr %1129, align 4, !tbaa !39
  %1131 = and i32 %1130, 81920
  %1132 = icmp eq i32 %1131, 81920
  br i1 %1132, label %1133, label %1144

1133:                                             ; preds = %1126, %1137
  %1134 = phi ptr [ %1135, %1137 ], [ %1108, %1126 ]
  %1135 = getelementptr inbounds i8, ptr %1134, i64 1
  %1136 = icmp ult ptr %1135, %1124
  br i1 %1136, label %1137, label %1213

1137:                                             ; preds = %1133
  %1138 = load i8, ptr %1135, align 1, !tbaa !47
  %1139 = zext i8 %1138 to i64
  %1140 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1139
  %1141 = load i32, ptr %1140, align 4, !tbaa !39
  %1142 = and i32 %1141, 16385
  %1143 = icmp eq i32 %1142, 16385
  br i1 %1143, label %1133, label %1144, !llvm.loop !78

1144:                                             ; preds = %1137, %1126, %1118
  %1145 = icmp ne i32 %22, 0
  %1146 = or i1 %1145, %1119
  br i1 %1146, label %1147, label %1158

1147:                                             ; preds = %1144
  %1148 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %1149 = load ptr, ptr %3, align 8, !tbaa !50
  %1150 = getelementptr inbounds %struct.xpv, ptr %1149, i64 0, i32 2
  %1151 = load i64, ptr %1150, align 8, !tbaa !51
  %1152 = shl i64 %1120, 32
  %1153 = ashr exact i64 %1152, 32
  %1154 = zext i1 %1119 to i32
  %1155 = call fastcc i32 @esc_q_utf8(ptr noundef nonnull %3, ptr noundef %1108, i64 noundef %1153, i32 noundef %1154, i32 noundef %22)
  %1156 = load ptr, ptr %1148, align 8, !tbaa !47
  %1157 = getelementptr inbounds i8, ptr %1156, i64 %1151
  br label %1216

1158:                                             ; preds = %1144
  %1159 = shl i64 %1120, 32
  %1160 = ashr exact i64 %1159, 32
  %1161 = icmp eq i64 %1159, 0
  br i1 %1161, label %1174, label %1162

1162:                                             ; preds = %1158, %1169
  %1163 = phi i32 [ %1170, %1169 ], [ 0, %1158 ]
  %1164 = phi i64 [ %1172, %1169 ], [ %1160, %1158 ]
  %1165 = phi ptr [ %1171, %1169 ], [ %1108, %1158 ]
  %1166 = load i8, ptr %1165, align 1, !tbaa !47
  switch i8 %1166, label %1169 [
    i8 39, label %1167
    i8 92, label %1167
  ]

1167:                                             ; preds = %1162, %1162
  %1168 = add nsw i32 %1163, 1
  br label %1169

1169:                                             ; preds = %1167, %1162
  %1170 = phi i32 [ %1168, %1167 ], [ %1163, %1162 ]
  %1171 = getelementptr inbounds i8, ptr %1165, i64 1
  %1172 = add i64 %1164, -1
  %1173 = icmp eq i64 %1172, 0
  br i1 %1173, label %1174, label %1162, !llvm.loop !79

1174:                                             ; preds = %1169, %1158
  %1175 = phi i32 [ 0, %1158 ], [ %1170, %1169 ]
  %1176 = add i32 %1121, 3
  %1177 = add i32 %1176, %1175
  %1178 = sext i32 %1177 to i64
  %1179 = call ptr @Perl_safesysmalloc(i64 noundef %1178) #12
  store i8 39, ptr %1179, align 1, !tbaa !47
  %1180 = icmp eq i32 %1175, 0
  br i1 %1180, label %1203, label %1181

1181:                                             ; preds = %1174
  %1182 = icmp eq i64 %1159, 0
  br i1 %1182, label %1200, label %1183

1183:                                             ; preds = %1181, %1193
  %1184 = phi i32 [ %1195, %1193 ], [ 0, %1181 ]
  %1185 = phi i64 [ %1198, %1193 ], [ %1160, %1181 ]
  %1186 = phi ptr [ %1197, %1193 ], [ %1108, %1181 ]
  %1187 = phi ptr [ %1194, %1193 ], [ %1179, %1181 ]
  %1188 = getelementptr inbounds i8, ptr %1187, i64 1
  %1189 = load i8, ptr %1186, align 1, !tbaa !47
  switch i8 %1189, label %1193 [
    i8 39, label %1190
    i8 92, label %1190
  ]

1190:                                             ; preds = %1183, %1183
  store i8 92, ptr %1188, align 1, !tbaa !47
  %1191 = getelementptr inbounds i8, ptr %1187, i64 2
  %1192 = add nsw i32 %1184, 1
  br label %1193

1193:                                             ; preds = %1190, %1183
  %1194 = phi ptr [ %1188, %1183 ], [ %1191, %1190 ]
  %1195 = phi i32 [ %1184, %1183 ], [ %1192, %1190 ]
  %1196 = load i8, ptr %1186, align 1, !tbaa !47
  store i8 %1196, ptr %1194, align 1, !tbaa !47
  %1197 = getelementptr inbounds i8, ptr %1186, i64 1
  %1198 = add i64 %1185, -1
  %1199 = icmp eq i64 %1198, 0
  br i1 %1199, label %1200, label %1183, !llvm.loop !80

1200:                                             ; preds = %1193, %1181
  %1201 = phi i32 [ 0, %1181 ], [ %1195, %1193 ]
  %1202 = add nsw i32 %1201, %1121
  br label %1205

1203:                                             ; preds = %1174
  %1204 = getelementptr inbounds i8, ptr %1179, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1204, ptr align 1 %1108, i64 %1160, i1 false)
  br label %1205

1205:                                             ; preds = %1203, %1200
  %1206 = phi i32 [ %1202, %1200 ], [ %1121, %1203 ]
  %1207 = sext i32 %1206 to i64
  %1208 = getelementptr i8, ptr %1179, i64 %1207
  %1209 = getelementptr i8, ptr %1208, i64 1
  store i8 39, ptr %1209, align 1, !tbaa !47
  %1210 = add nsw i32 %1206, 2
  %1211 = sext i32 %1210 to i64
  %1212 = getelementptr inbounds i8, ptr %1179, i64 %1211
  store i8 0, ptr %1212, align 1, !tbaa !47
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull %1179, i64 noundef %1211, i32 noundef 2) #12
  br label %1216

1213:                                             ; preds = %1133, %1122
  %1214 = shl i64 %1120, 32
  %1215 = ashr exact i64 %1214, 32
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef %1108, i64 noundef %1215, i32 noundef 2) #12
  br label %1216

1216:                                             ; preds = %1147, %1205, %1213
  %1217 = phi i32 [ %1121, %1147 ], [ %1210, %1205 ], [ %1121, %1213 ]
  %1218 = phi ptr [ %1157, %1147 ], [ %1179, %1205 ], [ %1108, %1213 ]
  %1219 = phi ptr [ null, %1147 ], [ %1179, %1205 ], [ null, %1213 ]
  %1220 = phi i32 [ %1155, %1147 ], [ %1210, %1205 ], [ %1121, %1213 ]
  %1221 = call ptr @Perl_newSVsv(ptr noundef %888) #12
  %1222 = sext i32 %1220 to i64
  call void @Perl_sv_catpvn_flags(ptr noundef %1221, ptr noundef %1218, i64 noundef %1222, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %1221, ptr noundef nonnull @.str.42, i64 noundef 1, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %12, i32 noundef 2) #12
  br i1 %1037, label %1240, label %1223

1223:                                             ; preds = %1216
  %1224 = call ptr @Perl_newSVsv(ptr noundef %605) #12
  %1225 = add nsw i32 %1217, 5
  %1226 = sext i32 %1225 to i64
  %1227 = call ptr @Perl_safesysmalloc(i64 noundef %1226) #12
  %1228 = icmp sgt i32 %1217, -4
  br i1 %1228, label %1229, label %1236

1229:                                             ; preds = %1223
  %1230 = add i32 %1217, 3
  %1231 = call i32 @llvm.smax.i32(i32 %1230, i32 0)
  %1232 = add nuw i32 %1231, 1
  %1233 = zext i32 %1232 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1227, i8 32, i64 %1233, i1 false), !tbaa !47
  %1234 = call i32 @llvm.smax.i32(i32 %1230, i32 0)
  %1235 = add nuw i32 %1234, 1
  br label %1236

1236:                                             ; preds = %1229, %1223
  %1237 = phi i32 [ 0, %1223 ], [ %1235, %1229 ]
  %1238 = zext nneg i32 %1237 to i64
  %1239 = getelementptr inbounds i8, ptr %1227, i64 %1238
  store i8 0, ptr %1239, align 1, !tbaa !47
  call void @Perl_sv_catpvn_flags(ptr noundef %1224, ptr noundef %1227, i64 noundef %1238, i32 noundef 2) #12
  call void @Perl_safesysfree(ptr noundef %1227) #12
  br label %1240

1240:                                             ; preds = %1216, %1236
  %1241 = phi ptr [ %1224, %1236 ], [ %605, %1216 ]
  %1242 = getelementptr inbounds %struct.sv, ptr %1221, i64 0, i32 3
  %1243 = load ptr, ptr %1242, align 8, !tbaa !47
  %1244 = load ptr, ptr %1221, align 8, !tbaa !50
  %1245 = getelementptr inbounds %struct.xpv, ptr %1244, i64 0, i32 2
  %1246 = load i64, ptr %1245, align 8, !tbaa !51
  call fastcc void @DD_dump(ptr noundef %1093, ptr noundef %1243, i64 noundef %1246, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %1241, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i64 noundef %23)
  %1247 = getelementptr inbounds %struct.sv, ptr %1221, i64 0, i32 1
  %1248 = load i32, ptr %1247, align 8, !tbaa !53
  %1249 = icmp ugt i32 %1248, 1
  br i1 %1249, label %1250, label %1252

1250:                                             ; preds = %1240
  %1251 = add i32 %1248, -1
  store i32 %1251, ptr %1247, align 8, !tbaa !53
  br label %1253

1252:                                             ; preds = %1240
  call void @Perl_sv_free2(ptr noundef nonnull %1221, i32 noundef %1248) #12
  br label %1253

1253:                                             ; preds = %1250, %1252
  call void @Perl_safesysfree(ptr noundef %1219) #12
  %1254 = icmp eq ptr %1241, null
  %1255 = or i1 %1037, %1254
  br i1 %1255, label %1263, label %1256

1256:                                             ; preds = %1253
  %1257 = getelementptr inbounds %struct.sv, ptr %1241, i64 0, i32 1
  %1258 = load i32, ptr %1257, align 8, !tbaa !53
  %1259 = icmp ugt i32 %1258, 1
  br i1 %1259, label %1260, label %1262

1260:                                             ; preds = %1256
  %1261 = add i32 %1258, -1
  store i32 %1261, ptr %1257, align 8, !tbaa !53
  br label %1263

1262:                                             ; preds = %1256
  call void @Perl_sv_free2(ptr noundef nonnull %1241, i32 noundef %1258) #12
  br label %1263

1263:                                             ; preds = %1045, %1262, %1260, %1253, %1041, %1042
  %1264 = phi ptr [ %1039, %1042 ], [ %1039, %1041 ], [ %1049, %1253 ], [ %1049, %1260 ], [ %1049, %1262 ], [ null, %1045 ]
  %1265 = phi i1 [ false, %1042 ], [ false, %1041 ], [ true, %1253 ], [ true, %1260 ], [ true, %1262 ], [ false, %1045 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #12
  %1266 = add i64 %1040, 1
  br i1 %1265, label %1038, label %1267, !llvm.loop !81

1267:                                             ; preds = %1263
  %1268 = icmp eq i64 %1040, 0
  br i1 %1268, label %1285, label %1269

1269:                                             ; preds = %1267
  %1270 = load ptr, ptr %608, align 8, !tbaa !47
  %1271 = load ptr, ptr %9, align 8, !tbaa !50
  %1272 = getelementptr inbounds %struct.xpv, ptr %1271, i64 0, i32 2
  %1273 = load i64, ptr %1272, align 8, !tbaa !51
  %1274 = load i32, ptr %6, align 4, !tbaa !39
  %1275 = add nsw i32 %1274, -1
  %1276 = call fastcc ptr @sv_x(ptr noundef null, ptr noundef %1270, i64 noundef %1273, i32 noundef %1275)
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %937, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef %1276, i32 noundef 2) #12
  %1277 = icmp eq ptr %1276, null
  br i1 %1277, label %1285, label %1278

1278:                                             ; preds = %1269
  %1279 = getelementptr inbounds %struct.sv, ptr %1276, i64 0, i32 1
  %1280 = load i32, ptr %1279, align 8, !tbaa !53
  %1281 = icmp ugt i32 %1280, 1
  br i1 %1281, label %1282, label %1284

1282:                                             ; preds = %1278
  %1283 = add i32 %1280, -1
  store i32 %1283, ptr %1279, align 8, !tbaa !53
  br label %1285

1284:                                             ; preds = %1278
  call void @Perl_sv_free2(ptr noundef nonnull %1276, i32 noundef %1280) #12
  br label %1285

1285:                                             ; preds = %1284, %1282, %1269, %1267
  %1286 = load i8, ptr %1, align 1, !tbaa !47
  %1287 = icmp eq i8 %1286, 37
  %1288 = select i1 %1287, ptr @.str.64, ptr @.str.42
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull %1288, i64 noundef 1, i32 noundef 2) #12
  %1289 = icmp eq ptr %888, null
  br i1 %1289, label %1297, label %1290

1290:                                             ; preds = %1285
  %1291 = getelementptr inbounds %struct.sv, ptr %888, i64 0, i32 1
  %1292 = load i32, ptr %1291, align 8, !tbaa !53
  %1293 = icmp ugt i32 %1292, 1
  br i1 %1293, label %1294, label %1296

1294:                                             ; preds = %1290
  %1295 = add i32 %1292, -1
  store i32 %1295, ptr %1291, align 8, !tbaa !53
  br label %1297

1296:                                             ; preds = %1290
  call void @Perl_sv_free2(ptr noundef nonnull %888, i32 noundef %1292) #12
  br label %1297

1297:                                             ; preds = %1285, %1294, %1296
  %1298 = icmp eq ptr %937, null
  br i1 %1298, label %1309, label %1299

1299:                                             ; preds = %1297
  %1300 = getelementptr inbounds %struct.sv, ptr %937, i64 0, i32 1
  %1301 = load i32, ptr %1300, align 8, !tbaa !53
  %1302 = icmp ugt i32 %1301, 1
  br i1 %1302, label %1303, label %1305

1303:                                             ; preds = %1299
  %1304 = add i32 %1301, -1
  store i32 %1304, ptr %1300, align 8, !tbaa !53
  br label %1309

1305:                                             ; preds = %1299
  call void @Perl_sv_free2(ptr noundef nonnull %937, i32 noundef %1301) #12
  br label %1309

1306:                                             ; preds = %744
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.68, i64 noundef 15, i32 noundef 2) #12
  br i1 %549, label %1309, label %1307

1307:                                             ; preds = %1306
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.69) #12
  br label %1309

1308:                                             ; preds = %744
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.70, i32 noundef %421) #12
  br label %1309

1309:                                             ; preds = %1305, %1303, %1297, %758, %756, %743, %741, %735, %886, %1308, %1307, %1306, %719
  br i1 %578, label %1384, label %1310

1310:                                             ; preds = %1309
  %1311 = icmp slt i32 %7, 2
  %1312 = icmp eq ptr %605, null
  %1313 = or i1 %1311, %1312
  br i1 %1313, label %1321, label %1314

1314:                                             ; preds = %1310
  %1315 = getelementptr inbounds %struct.sv, ptr %605, i64 0, i32 1
  %1316 = load i32, ptr %1315, align 8, !tbaa !53
  %1317 = icmp ugt i32 %1316, 1
  br i1 %1317, label %1318, label %1320

1318:                                             ; preds = %1314
  %1319 = add i32 %1316, -1
  store i32 %1319, ptr %1315, align 8, !tbaa !53
  br label %1321

1320:                                             ; preds = %1314
  call void @Perl_sv_free2(ptr noundef nonnull %605, i32 noundef %1316) #12
  br label %1321

1321:                                             ; preds = %1320, %1318, %1310
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.71, i64 noundef 3, i32 noundef 2) #12
  %1322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %454) #13
  %1323 = shl i64 %1322, 32
  %1324 = ashr exact i64 %1323, 32
  %1325 = icmp eq i64 %1323, 0
  br i1 %1325, label %1338, label %1326

1326:                                             ; preds = %1321, %1333
  %1327 = phi i32 [ %1334, %1333 ], [ 0, %1321 ]
  %1328 = phi i64 [ %1336, %1333 ], [ %1324, %1321 ]
  %1329 = phi ptr [ %1335, %1333 ], [ %454, %1321 ]
  %1330 = load i8, ptr %1329, align 1, !tbaa !47
  switch i8 %1330, label %1333 [
    i8 39, label %1331
    i8 92, label %1331
  ]

1331:                                             ; preds = %1326, %1326
  %1332 = add nsw i32 %1327, 1
  br label %1333

1333:                                             ; preds = %1331, %1326
  %1334 = phi i32 [ %1332, %1331 ], [ %1327, %1326 ]
  %1335 = getelementptr inbounds i8, ptr %1329, i64 1
  %1336 = add i64 %1328, -1
  %1337 = icmp eq i64 %1336, 0
  br i1 %1337, label %1338, label %1326, !llvm.loop !79

1338:                                             ; preds = %1333, %1321
  %1339 = phi i32 [ 0, %1321 ], [ %1334, %1333 ]
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1370, label %1341

1341:                                             ; preds = %1338
  %1342 = trunc i64 %1322 to i32
  %1343 = add i32 %1342, 1
  %1344 = add i32 %1343, %1339
  %1345 = sext i32 %1344 to i64
  %1346 = call ptr @Perl_safesysmalloc(i64 noundef %1345) #12
  %1347 = icmp eq i64 %1323, 0
  br i1 %1347, label %1365, label %1348

1348:                                             ; preds = %1341, %1357
  %1349 = phi i32 [ %1359, %1357 ], [ 0, %1341 ]
  %1350 = phi i64 [ %1363, %1357 ], [ %1324, %1341 ]
  %1351 = phi ptr [ %1362, %1357 ], [ %454, %1341 ]
  %1352 = phi ptr [ %1361, %1357 ], [ %1346, %1341 ]
  %1353 = load i8, ptr %1351, align 1, !tbaa !47
  switch i8 %1353, label %1357 [
    i8 39, label %1354
    i8 92, label %1354
  ]

1354:                                             ; preds = %1348, %1348
  store i8 92, ptr %1352, align 1, !tbaa !47
  %1355 = getelementptr inbounds i8, ptr %1352, i64 1
  %1356 = add nsw i32 %1349, 1
  br label %1357

1357:                                             ; preds = %1354, %1348
  %1358 = phi ptr [ %1352, %1348 ], [ %1355, %1354 ]
  %1359 = phi i32 [ %1349, %1348 ], [ %1356, %1354 ]
  %1360 = load i8, ptr %1351, align 1, !tbaa !47
  store i8 %1360, ptr %1358, align 1, !tbaa !47
  %1361 = getelementptr inbounds i8, ptr %1358, i64 1
  %1362 = getelementptr inbounds i8, ptr %1351, i64 1
  %1363 = add i64 %1350, -1
  %1364 = icmp eq i64 %1363, 0
  br i1 %1364, label %1365, label %1348, !llvm.loop !80

1365:                                             ; preds = %1357, %1341
  %1366 = phi i32 [ 0, %1341 ], [ %1359, %1357 ]
  %1367 = add nsw i32 %1366, %1342
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds i8, ptr %1346, i64 %1368
  store i8 0, ptr %1369, align 1, !tbaa !47
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef %1346, i64 noundef %1368, i32 noundef 2) #12
  call void @Perl_safesysfree(ptr noundef %1346) #12
  br label %1371

1370:                                             ; preds = %1338
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull %454, i64 noundef %1322, i32 noundef 2) #12
  br label %1371

1371:                                             ; preds = %1370, %1365
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.72, i64 noundef 3, i32 noundef 2) #12
  %1372 = icmp eq ptr %14, null
  br i1 %1372, label %1384, label %1373

1373:                                             ; preds = %1371
  %1374 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %1375 = load i32, ptr %1374, align 4, !tbaa !44
  %1376 = and i32 %1375, 1024
  %1377 = icmp eq i32 %1376, 0
  br i1 %1377, label %1384, label %1378

1378:                                             ; preds = %1373
  %1379 = load ptr, ptr %14, align 8, !tbaa !50
  %1380 = getelementptr inbounds %struct.xpv, ptr %1379, i64 0, i32 2
  %1381 = load i64, ptr %1380, align 8, !tbaa !51
  %1382 = icmp eq i64 %1381, 0
  br i1 %1382, label %1384, label %1383

1383:                                             ; preds = %1378
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.66, i64 noundef 2, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef nonnull %14, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.73, i64 noundef 2, i32 noundef 2) #12
  br label %1384

1384:                                             ; preds = %1371, %1373, %1378, %1383, %1309
  %1385 = icmp eq ptr %613, null
  br i1 %1385, label %1393, label %1386

1386:                                             ; preds = %1384
  %1387 = getelementptr inbounds %struct.sv, ptr %613, i64 0, i32 1
  %1388 = load i32, ptr %1387, align 8, !tbaa !53
  %1389 = icmp ugt i32 %1388, 1
  br i1 %1389, label %1390, label %1392

1390:                                             ; preds = %1386
  %1391 = add i32 %1388, -1
  store i32 %1391, ptr %1387, align 8, !tbaa !53
  br label %1393

1392:                                             ; preds = %1386
  call void @Perl_sv_free2(ptr noundef nonnull %613, i32 noundef %1388) #12
  br label %1393

1393:                                             ; preds = %1384, %1390, %1392
  %1394 = load i32, ptr %6, align 4, !tbaa !39
  %1395 = add nsw i32 %1394, -1
  store i32 %1395, ptr %6, align 4, !tbaa !39
  br label %1927

1396:                                             ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #12
  %1397 = icmp eq i64 %2, 0
  br i1 %1397, label %1463, label %1398

1398:                                             ; preds = %1396
  %1399 = ptrtoint ptr %0 to i64
  store i64 %1399, ptr %26, align 8, !tbaa !46
  %1400 = call ptr @Perl_hv_common_key_len(ptr noundef %4, ptr noundef nonnull %26, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %1401 = icmp eq ptr %1400, null
  br i1 %1401, label %1441, label %1402

1402:                                             ; preds = %1398
  %1403 = load ptr, ptr %1400, align 8, !tbaa !35
  %1404 = icmp eq ptr %1403, null
  br i1 %1404, label %1441, label %1405

1405:                                             ; preds = %1402
  %1406 = getelementptr inbounds %struct.sv, ptr %1403, i64 0, i32 2
  %1407 = load i32, ptr %1406, align 4, !tbaa !44
  %1408 = and i32 %1407, 2048
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %1441, label %1410

1410:                                             ; preds = %1405
  %1411 = getelementptr inbounds %struct.sv, ptr %1403, i64 0, i32 3
  %1412 = load ptr, ptr %1411, align 8, !tbaa !47
  %1413 = icmp eq ptr %1412, null
  br i1 %1413, label %1441, label %1414

1414:                                             ; preds = %1410
  %1415 = call ptr @Perl_av_fetch(ptr noundef nonnull %1412, i64 noundef 0, i32 noundef 0) #12
  %1416 = icmp eq ptr %1415, null
  br i1 %1416, label %1463, label %1417

1417:                                             ; preds = %1414
  %1418 = load ptr, ptr %1415, align 8, !tbaa !35
  %1419 = icmp eq ptr %1418, null
  br i1 %1419, label %1463, label %1420

1420:                                             ; preds = %1417
  %1421 = call ptr @Perl_av_fetch(ptr noundef nonnull %1412, i64 noundef 2, i32 noundef 0) #12
  %1422 = icmp eq ptr %1421, null
  br i1 %1422, label %1463, label %1423

1423:                                             ; preds = %1420
  %1424 = load ptr, ptr %1421, align 8, !tbaa !35
  %1425 = icmp eq ptr %1424, null
  br i1 %1425, label %1463, label %1426

1426:                                             ; preds = %1423
  %1427 = getelementptr inbounds %struct.sv, ptr %1424, i64 0, i32 2
  %1428 = load i32, ptr %1427, align 4, !tbaa !44
  %1429 = and i32 %1428, 2097408
  %1430 = icmp eq i32 %1429, 256
  br i1 %1430, label %1431, label %1435

1431:                                             ; preds = %1426
  %1432 = load ptr, ptr %1424, align 8, !tbaa !50
  %1433 = getelementptr inbounds %struct.xpviv, ptr %1432, i64 0, i32 4
  %1434 = load i64, ptr %1433, align 8, !tbaa !47
  br label %1437

1435:                                             ; preds = %1426
  %1436 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1424, i32 noundef 2) #12
  br label %1437

1437:                                             ; preds = %1435, %1431
  %1438 = phi i64 [ %1434, %1431 ], [ %1436, %1435 ]
  %1439 = icmp sgt i64 %1438, 0
  br i1 %1439, label %1440, label %1463

1440:                                             ; preds = %1437
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.53, i64 noundef 2, i32 noundef 2) #12
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef nonnull %1418, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.42, i64 noundef 1, i32 noundef 2) #12
  br label %1922

1441:                                             ; preds = %1410, %1405, %1402, %1398
  %1442 = icmp eq ptr %0, @PL_sv_undef
  br i1 %1442, label %1463, label %1443

1443:                                             ; preds = %1441
  %1444 = icmp eq i32 %21, 0
  br i1 %1444, label %1449, label %1445

1445:                                             ; preds = %1443
  %1446 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %1447 = load i32, ptr %1446, align 8, !tbaa !53
  %1448 = icmp ugt i32 %1447, 1
  br i1 %1448, label %1449, label %1463

1449:                                             ; preds = %1445, %1443
  %1450 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.44, i64 noundef 1) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %1450, ptr noundef %1, i64 noundef %2, i32 noundef 2) #12
  %1451 = call ptr @Perl_newSV_type(i32 noundef 11) #12
  call void @Perl_av_push(ptr noundef %1451, ptr noundef %1450) #12
  %1452 = call ptr @Perl_newRV(ptr noundef nonnull %0) #12
  call void @Perl_av_push(ptr noundef %1451, ptr noundef %1452) #12
  %1453 = call ptr @Perl_newRV(ptr noundef %1451) #12
  %1454 = call ptr @Perl_hv_common_key_len(ptr noundef %4, ptr noundef nonnull %26, i32 noundef 8, i32 noundef 36, ptr noundef %1453, i32 noundef 0) #12
  %1455 = icmp eq ptr %1451, null
  br i1 %1455, label %1463, label %1456

1456:                                             ; preds = %1449
  %1457 = getelementptr inbounds %struct.sv, ptr %1451, i64 0, i32 1
  %1458 = load i32, ptr %1457, align 8, !tbaa !53
  %1459 = icmp ugt i32 %1458, 1
  br i1 %1459, label %1460, label %1462

1460:                                             ; preds = %1456
  %1461 = add i32 %1458, -1
  store i32 %1461, ptr %1457, align 8, !tbaa !53
  br label %1463

1462:                                             ; preds = %1456
  call void @Perl_sv_free2(ptr noundef nonnull %1451, i32 noundef %1458) #12
  br label %1463

1463:                                             ; preds = %1449, %1462, %1460, %1437, %1423, %1420, %1417, %1414, %1445, %1441, %1396
  %1464 = phi i64 [ 8, %1445 ], [ 8, %1441 ], [ 0, %1396 ], [ 8, %1414 ], [ 8, %1417 ], [ 8, %1420 ], [ 8, %1423 ], [ 8, %1437 ], [ 8, %1460 ], [ 8, %1462 ], [ 8, %1449 ]
  %1465 = phi ptr [ null, %1445 ], [ null, %1441 ], [ null, %1396 ], [ %1412, %1414 ], [ %1412, %1417 ], [ %1412, %1420 ], [ %1412, %1423 ], [ %1412, %1437 ], [ %1451, %1460 ], [ %1451, %1462 ], [ %1451, %1449 ]
  %1466 = load i32, ptr %53, align 4, !tbaa !44
  %1467 = and i32 %1466, 256
  %1468 = icmp eq i32 %1467, 0
  br i1 %1468, label %1529, label %1469

1469:                                             ; preds = %1463
  %1470 = icmp sgt i32 %1466, -1
  br i1 %1470, label %1483, label %1471

1471:                                             ; preds = %1469
  %1472 = and i32 %1466, -2145386240
  %1473 = icmp eq i32 %1472, -2147483392
  br i1 %1473, label %1474, label %1478

1474:                                             ; preds = %1471
  %1475 = load ptr, ptr %0, align 8, !tbaa !50
  %1476 = getelementptr inbounds %struct.xpvuv, ptr %1475, i64 0, i32 4
  %1477 = load i64, ptr %1476, align 8, !tbaa !47
  br label %1480

1478:                                             ; preds = %1471
  %1479 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %0, i32 noundef 2) #12
  br label %1480

1480:                                             ; preds = %1478, %1474
  %1481 = phi i64 [ %1477, %1474 ], [ %1479, %1478 ]
  %1482 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %25, i64 noundef 128, ptr noundef nonnull @.str.74, i64 noundef %1481) #12
  br label %1495

1483:                                             ; preds = %1469
  %1484 = and i32 %1466, 2097408
  %1485 = icmp eq i32 %1484, 256
  br i1 %1485, label %1486, label %1490

1486:                                             ; preds = %1483
  %1487 = load ptr, ptr %0, align 8, !tbaa !50
  %1488 = getelementptr inbounds %struct.xpviv, ptr %1487, i64 0, i32 4
  %1489 = load i64, ptr %1488, align 8, !tbaa !47
  br label %1492

1490:                                             ; preds = %1483
  %1491 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #12
  br label %1492

1492:                                             ; preds = %1490, %1486
  %1493 = phi i64 [ %1489, %1486 ], [ %1491, %1490 ]
  %1494 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %25, i64 noundef 128, ptr noundef nonnull @.str.32, i64 noundef %1493) #12
  br label %1495

1495:                                             ; preds = %1492, %1480
  %1496 = phi i32 [ %1482, %1480 ], [ %1494, %1492 ]
  %1497 = sext i32 %1496 to i64
  %1498 = load i32, ptr %53, align 4, !tbaa !44
  %1499 = and i32 %1498, 1024
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %1523, label %1501

1501:                                             ; preds = %1495
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #12
  %1502 = and i32 %1498, 2098176
  %1503 = icmp eq i32 %1502, 1024
  br i1 %1503, label %1504, label %1510

1504:                                             ; preds = %1501
  %1505 = load ptr, ptr %0, align 8, !tbaa !50
  %1506 = getelementptr inbounds %struct.xpv, ptr %1505, i64 0, i32 2
  %1507 = load i64, ptr %1506, align 8, !tbaa !51
  store i64 %1507, ptr %32, align 8, !tbaa !46
  %1508 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %1509 = load ptr, ptr %1508, align 8, !tbaa !47
  br label %1512

1510:                                             ; preds = %1501
  %1511 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %32, i32 noundef 2) #12
  br label %1512

1512:                                             ; preds = %1510, %1504
  %1513 = phi ptr [ %1509, %1504 ], [ %1511, %1510 ]
  %1514 = load i64, ptr %32, align 8, !tbaa !46
  %1515 = icmp eq i64 %1514, %1497
  br i1 %1515, label %1516, label %1520

1516:                                             ; preds = %1512
  %1517 = call i32 @bcmp(ptr %1513, ptr nonnull %25, i64 %1497)
  %1518 = icmp eq i32 %1517, 0
  %1519 = select i1 %1518, i32 0, i32 33
  br label %1520

1520:                                             ; preds = %1516, %1512
  %1521 = phi i1 [ false, %1512 ], [ %1518, %1516 ]
  %1522 = phi i32 [ 33, %1512 ], [ %1519, %1516 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #12
  br i1 %1521, label %1523, label %1527

1523:                                             ; preds = %1520, %1495
  %1524 = icmp ugt i32 %1496, 10
  br i1 %1524, label %1525, label %1526

1525:                                             ; preds = %1523
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %3, ptr noundef nonnull @.str.75, ptr noundef nonnull %25) #12
  br label %1527

1526:                                             ; preds = %1523
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull %25, i64 noundef %1497, i32 noundef 2) #12
  br label %1527

1527:                                             ; preds = %1525, %1526, %1520
  %1528 = phi i32 [ %1522, %1520 ], [ 0, %1526 ], [ 0, %1525 ]
  switch i32 %1528, label %1922 [
    i32 0, label %1921
    i32 33, label %1825
  ]

1529:                                             ; preds = %1463
  %1530 = icmp eq i32 %55, 9
  br i1 %1530, label %1531, label %1802

1531:                                             ; preds = %1529
  %1532 = and i32 %1466, 2098176
  %1533 = icmp eq i32 %1532, 1024
  br i1 %1533, label %1534, label %1540

1534:                                             ; preds = %1531
  %1535 = load ptr, ptr %0, align 8, !tbaa !50
  %1536 = getelementptr inbounds %struct.xpv, ptr %1535, i64 0, i32 2
  %1537 = load i64, ptr %1536, align 8, !tbaa !51
  store i64 %1537, ptr %31, align 8, !tbaa !46
  %1538 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %1539 = load ptr, ptr %1538, align 8, !tbaa !47
  br label %1542

1540:                                             ; preds = %1531
  %1541 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %31, i32 noundef 2) #12
  br label %1542

1542:                                             ; preds = %1540, %1534
  %1543 = phi ptr [ %1539, %1534 ], [ %1541, %1540 ]
  %1544 = load i64, ptr %31, align 8, !tbaa !46
  %1545 = icmp eq i64 %1544, 0
  br i1 %1545, label %1549, label %1546

1546:                                             ; preds = %1542
  %1547 = getelementptr inbounds i8, ptr %1543, i64 1
  %1548 = add i64 %1544, -1
  store i64 %1548, ptr %31, align 8, !tbaa !46
  br label %1549

1549:                                             ; preds = %1546, %1542
  %1550 = phi ptr [ %1547, %1546 ], [ %1543, %1542 ]
  %1551 = load i64, ptr %31, align 8, !tbaa !46
  %1552 = icmp ugt i64 %1551, 5
  br i1 %1552, label %1553, label %1562

1553:                                             ; preds = %1549
  %1554 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1550, ptr noundef nonnull dereferenceable(7) @.str.76, i64 noundef 6) #13
  %1555 = icmp eq i32 %1554, 0
  br i1 %1555, label %1556, label %1562

1556:                                             ; preds = %1553
  %1557 = getelementptr inbounds i8, ptr %1550, i64 4
  %1558 = icmp eq i64 %1551, 6
  br i1 %1558, label %1559, label %1560

1559:                                             ; preds = %1556
  store i64 0, ptr %31, align 8, !tbaa !46
  br label %1562

1560:                                             ; preds = %1556
  %1561 = add i64 %1551, -4
  store i64 %1561, ptr %31, align 8, !tbaa !46
  br label %1562

1562:                                             ; preds = %1559, %1560, %1553, %1549
  %1563 = phi ptr [ %1557, %1559 ], [ %1557, %1560 ], [ %1550, %1553 ], [ %1550, %1549 ]
  %1564 = load i64, ptr %31, align 8, !tbaa !46
  %1565 = getelementptr inbounds i8, ptr %1563, i64 %1564
  br label %1566

1566:                                             ; preds = %1596, %1562
  %1567 = phi ptr [ %1563, %1562 ], [ %1587, %1596 ]
  %1568 = load i8, ptr %1567, align 1, !tbaa !47
  %1569 = icmp eq i8 %1568, 58
  br i1 %1569, label %1570, label %1577

1570:                                             ; preds = %1566
  %1571 = getelementptr inbounds i8, ptr %1567, i64 1
  %1572 = icmp ult ptr %1571, %1565
  br i1 %1572, label %1573, label %1598

1573:                                             ; preds = %1570
  %1574 = getelementptr inbounds i8, ptr %1567, i64 2
  %1575 = load i8, ptr %1571, align 1, !tbaa !47
  %1576 = icmp eq i8 %1575, 58
  br i1 %1576, label %1577, label %1598

1577:                                             ; preds = %1573, %1566
  %1578 = phi ptr [ %1574, %1573 ], [ %1567, %1566 ]
  %1579 = load i8, ptr %1578, align 1, !tbaa !47
  %1580 = zext i8 %1579 to i64
  %1581 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1580
  %1582 = load i32, ptr %1581, align 4, !tbaa !39
  %1583 = and i32 %1582, 81920
  %1584 = icmp eq i32 %1583, 81920
  br i1 %1584, label %1585, label %1598

1585:                                             ; preds = %1577, %1589
  %1586 = phi ptr [ %1587, %1589 ], [ %1578, %1577 ]
  %1587 = getelementptr inbounds i8, ptr %1586, i64 1
  %1588 = icmp ult ptr %1587, %1565
  br i1 %1588, label %1589, label %1689

1589:                                             ; preds = %1585
  %1590 = load i8, ptr %1587, align 1, !tbaa !47
  %1591 = zext i8 %1590 to i64
  %1592 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1591
  %1593 = load i32, ptr %1592, align 4, !tbaa !39
  %1594 = and i32 %1593, 16385
  %1595 = icmp eq i32 %1594, 16385
  br i1 %1595, label %1585, label %1596, !llvm.loop !82

1596:                                             ; preds = %1589
  %1597 = icmp eq i8 %1590, 58
  br i1 %1597, label %1566, label %1598

1598:                                             ; preds = %1596, %1573, %1577, %1570
  %1599 = load ptr, ptr %0, align 8, !tbaa !50
  %1600 = getelementptr inbounds %struct.xpvgv, ptr %1599, i64 0, i32 4
  %1601 = load ptr, ptr %1600, align 8, !tbaa !47
  %1602 = getelementptr inbounds %struct.hek, ptr %1601, i64 0, i32 2
  %1603 = getelementptr inbounds %struct.hek, ptr %1601, i64 0, i32 1
  %1604 = load i32, ptr %1603, align 4, !tbaa !83
  %1605 = sext i32 %1604 to i64
  %1606 = getelementptr inbounds i8, ptr %1602, i64 %1605
  %1607 = getelementptr inbounds i8, ptr %1606, i64 1
  %1608 = load i8, ptr %1607, align 1, !tbaa !47
  %1609 = and i8 %1608, 1
  %1610 = icmp eq i8 %1609, 0
  %1611 = load ptr, ptr %3, align 8, !tbaa !50
  %1612 = getelementptr inbounds %struct.xpv, ptr %1611, i64 0, i32 2
  %1613 = load i64, ptr %1612, align 8, !tbaa !51
  br i1 %1610, label %1641, label %1614

1614:                                             ; preds = %1598
  %1615 = add i64 %1613, 2
  %1616 = call ptr @Perl_sv_grow(ptr noundef nonnull %3, i64 noundef %1615) #12
  %1617 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %1618 = load ptr, ptr %1617, align 8, !tbaa !47
  %1619 = load ptr, ptr %3, align 8, !tbaa !50
  %1620 = getelementptr inbounds %struct.xpv, ptr %1619, i64 0, i32 2
  %1621 = load i64, ptr %1620, align 8, !tbaa !51
  %1622 = getelementptr inbounds i8, ptr %1618, i64 %1621
  store i8 42, ptr %1622, align 1, !tbaa !47
  %1623 = getelementptr inbounds i8, ptr %1622, i64 1
  store i8 123, ptr %1623, align 1, !tbaa !47
  %1624 = load ptr, ptr %3, align 8, !tbaa !50
  %1625 = getelementptr inbounds %struct.xpv, ptr %1624, i64 0, i32 2
  %1626 = load i64, ptr %1625, align 8, !tbaa !51
  %1627 = add i64 %1626, 2
  store i64 %1627, ptr %1625, align 8, !tbaa !51
  %1628 = load i64, ptr %31, align 8, !tbaa !46
  %1629 = call fastcc i32 @esc_q_utf8(ptr noundef nonnull %3, ptr noundef %1563, i64 noundef %1628, i32 noundef 1, i32 noundef %22)
  %1630 = load ptr, ptr %3, align 8, !tbaa !50
  %1631 = getelementptr inbounds %struct.xpv, ptr %1630, i64 0, i32 2
  %1632 = load i64, ptr %1631, align 8, !tbaa !51
  %1633 = add i64 %1632, 2
  %1634 = call ptr @Perl_sv_grow(ptr noundef nonnull %3, i64 noundef %1633) #12
  %1635 = load ptr, ptr %1617, align 8, !tbaa !47
  %1636 = load ptr, ptr %3, align 8, !tbaa !50
  %1637 = getelementptr inbounds %struct.xpv, ptr %1636, i64 0, i32 2
  %1638 = load i64, ptr %1637, align 8, !tbaa !51
  %1639 = getelementptr inbounds i8, ptr %1635, i64 %1638
  store i8 125, ptr %1639, align 1, !tbaa !47
  %1640 = getelementptr inbounds i8, ptr %1639, i64 1
  store i8 0, ptr %1640, align 1, !tbaa !47
  store i64 1, ptr %31, align 8, !tbaa !46
  br label %1706

1641:                                             ; preds = %1598
  %1642 = shl i64 %1564, 1
  %1643 = add i64 %1642, 6
  %1644 = add i64 %1643, %1613
  %1645 = call ptr @Perl_sv_grow(ptr noundef nonnull %3, i64 noundef %1644) #12
  %1646 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %1647 = load ptr, ptr %1646, align 8, !tbaa !47
  %1648 = load ptr, ptr %3, align 8, !tbaa !50
  %1649 = getelementptr inbounds %struct.xpv, ptr %1648, i64 0, i32 2
  %1650 = load i64, ptr %1649, align 8, !tbaa !51
  %1651 = getelementptr inbounds i8, ptr %1647, i64 %1650
  store i8 42, ptr %1651, align 1, !tbaa !47
  %1652 = getelementptr inbounds i8, ptr %1651, i64 1
  store i8 123, ptr %1652, align 1, !tbaa !47
  %1653 = getelementptr inbounds i8, ptr %1651, i64 2
  store i8 39, ptr %1653, align 1, !tbaa !47
  %1654 = load i64, ptr %31, align 8, !tbaa !46
  %1655 = icmp eq i64 %1654, 0
  br i1 %1655, label %1677, label %1656

1656:                                             ; preds = %1641
  %1657 = getelementptr inbounds i8, ptr %1651, i64 3
  br label %1658

1658:                                             ; preds = %1656, %1667
  %1659 = phi i32 [ %1669, %1667 ], [ 0, %1656 ]
  %1660 = phi i64 [ %1673, %1667 ], [ %1654, %1656 ]
  %1661 = phi ptr [ %1672, %1667 ], [ %1563, %1656 ]
  %1662 = phi ptr [ %1671, %1667 ], [ %1657, %1656 ]
  %1663 = load i8, ptr %1661, align 1, !tbaa !47
  switch i8 %1663, label %1667 [
    i8 39, label %1664
    i8 92, label %1664
  ]

1664:                                             ; preds = %1658, %1658
  store i8 92, ptr %1662, align 1, !tbaa !47
  %1665 = getelementptr inbounds i8, ptr %1662, i64 1
  %1666 = add nsw i32 %1659, 1
  br label %1667

1667:                                             ; preds = %1664, %1658
  %1668 = phi ptr [ %1662, %1658 ], [ %1665, %1664 ]
  %1669 = phi i32 [ %1659, %1658 ], [ %1666, %1664 ]
  %1670 = load i8, ptr %1661, align 1, !tbaa !47
  store i8 %1670, ptr %1668, align 1, !tbaa !47
  %1671 = getelementptr inbounds i8, ptr %1668, i64 1
  %1672 = getelementptr inbounds i8, ptr %1661, i64 1
  %1673 = add i64 %1660, -1
  %1674 = icmp eq i64 %1673, 0
  br i1 %1674, label %1675, label %1658, !llvm.loop !80

1675:                                             ; preds = %1667
  %1676 = sext i32 %1669 to i64
  br label %1677

1677:                                             ; preds = %1675, %1641
  %1678 = phi i64 [ 0, %1641 ], [ %1676, %1675 ]
  %1679 = load i64, ptr %31, align 8, !tbaa !46
  %1680 = add i64 %1679, %1678
  %1681 = add i64 %1680, 4
  store i64 %1681, ptr %31, align 8, !tbaa !46
  %1682 = getelementptr i8, ptr %1651, i64 %1680
  %1683 = getelementptr i8, ptr %1682, i64 3
  store i8 39, ptr %1683, align 1, !tbaa !47
  %1684 = load i64, ptr %31, align 8, !tbaa !46
  %1685 = add i64 %1684, 1
  store i64 %1685, ptr %31, align 8, !tbaa !46
  %1686 = getelementptr inbounds i8, ptr %1651, i64 %1684
  store i8 125, ptr %1686, align 1, !tbaa !47
  %1687 = load i64, ptr %31, align 8, !tbaa !46
  %1688 = getelementptr inbounds i8, ptr %1651, i64 %1687
  store i8 0, ptr %1688, align 1, !tbaa !47
  br label %1706

1689:                                             ; preds = %1585
  %1690 = load ptr, ptr %3, align 8, !tbaa !50
  %1691 = getelementptr inbounds %struct.xpv, ptr %1690, i64 0, i32 2
  %1692 = load i64, ptr %1691, align 8, !tbaa !51
  %1693 = add i64 %1564, 2
  %1694 = add i64 %1693, %1692
  %1695 = call ptr @Perl_sv_grow(ptr noundef nonnull %3, i64 noundef %1694) #12
  %1696 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %1697 = load ptr, ptr %1696, align 8, !tbaa !47
  %1698 = load ptr, ptr %3, align 8, !tbaa !50
  %1699 = getelementptr inbounds %struct.xpv, ptr %1698, i64 0, i32 2
  %1700 = load i64, ptr %1699, align 8, !tbaa !51
  %1701 = getelementptr inbounds i8, ptr %1697, i64 %1700
  store i8 42, ptr %1701, align 1, !tbaa !47
  %1702 = getelementptr inbounds i8, ptr %1701, i64 1
  %1703 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1702, ptr noundef nonnull dereferenceable(1) %1563) #12
  %1704 = load i64, ptr %31, align 8, !tbaa !46
  %1705 = add i64 %1704, 1
  store i64 %1705, ptr %31, align 8, !tbaa !46
  br label %1706

1706:                                             ; preds = %1689, %1677, %1614
  %1707 = phi ptr [ %1639, %1614 ], [ %1651, %1677 ], [ %1701, %1689 ]
  %1708 = load ptr, ptr %3, align 8, !tbaa !50
  %1709 = getelementptr inbounds %struct.xpv, ptr %1708, i64 0, i32 2
  %1710 = load i64, ptr %1709, align 8, !tbaa !51
  %1711 = load i64, ptr %31, align 8, !tbaa !46
  %1712 = add i64 %1711, %1710
  store i64 %1712, ptr %1709, align 8, !tbaa !51
  %1713 = icmp eq i32 %15, 0
  br i1 %1713, label %1921, label %1714

1714:                                             ; preds = %1706
  %1715 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.9, i64 noundef 0) #12
  %1716 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.9, i64 noundef 0) #12
  %1717 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %1718 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %1719 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %1720 = icmp sgt i32 %7, 1
  %1721 = getelementptr inbounds %struct.sv, ptr %1715, i64 0, i32 3
  br label %1722

1722:                                             ; preds = %1714, %1781
  %1723 = phi i64 [ 0, %1714 ], [ %1782, %1781 ]
  %1724 = icmp eq i64 %1723, 0
  br i1 %1724, label %1725, label %1727

1725:                                             ; preds = %1722
  %1726 = load ptr, ptr %1719, align 8, !tbaa !47
  br label %1735

1727:                                             ; preds = %1722
  %1728 = icmp eq i64 %1723, 1
  br i1 %1728, label %1729, label %1732

1729:                                             ; preds = %1727
  %1730 = load ptr, ptr %1718, align 8, !tbaa !47
  %1731 = getelementptr inbounds %struct.gp, ptr %1730, i64 0, i32 6
  br label %1735

1732:                                             ; preds = %1727
  %1733 = load ptr, ptr %1717, align 8, !tbaa !47
  %1734 = getelementptr inbounds %struct.gp, ptr %1733, i64 0, i32 5
  br label %1735

1735:                                             ; preds = %1729, %1732, %1725
  %1736 = phi ptr [ %1726, %1725 ], [ %1731, %1729 ], [ %1734, %1732 ]
  %1737 = load ptr, ptr %1736, align 8, !tbaa !35
  %1738 = icmp eq ptr %1737, null
  br i1 %1738, label %1781, label %1739

1739:                                             ; preds = %1735
  br i1 %1724, label %1740, label %1751

1740:                                             ; preds = %1739
  %1741 = getelementptr inbounds %struct.sv, ptr %1737, i64 0, i32 2
  %1742 = load i32, ptr %1741, align 4, !tbaa !44
  %1743 = and i32 %1742, 65280
  %1744 = icmp ne i32 %1743, 0
  %1745 = and i32 %1742, 255
  %1746 = icmp eq i32 %1745, 8
  %1747 = or i1 %1744, %1746
  %1748 = and i32 %1742, 16777471
  %1749 = icmp eq i32 %1748, 16777226
  %1750 = or i1 %1749, %1747
  br i1 %1750, label %1751, label %1781

1751:                                             ; preds = %1740, %1739
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #12
  store i32 0, ptr %33, align 4, !tbaa !39
  %1752 = load i64, ptr %31, align 8, !tbaa !46
  %1753 = call ptr @Perl_newSVpvn(ptr noundef nonnull %1707, i64 noundef %1752) #12
  call void @Perl_sv_setsv_flags(ptr noundef %1715, ptr noundef %1753, i32 noundef 2) #12
  %1754 = shl i64 %1723, 2
  %1755 = call ptr @llvm.load.relative.i64(ptr @reltable.DD_dump, i64 %1754)
  %1756 = getelementptr inbounds [3 x i64], ptr @DD_dump.sizes, i64 0, i64 %1723
  %1757 = load i64, ptr %1756, align 8, !tbaa !46
  call void @Perl_sv_catpvn_flags(ptr noundef %1715, ptr noundef %1755, i64 noundef %1757, i32 noundef 2) #12
  call void @Perl_sv_catpvn_flags(ptr noundef %1753, ptr noundef nonnull @.str.34, i64 noundef 3, i32 noundef 2) #12
  call void @Perl_av_push(ptr noundef %5, ptr noundef %1753) #12
  %1758 = call ptr @Perl_newRV(ptr noundef nonnull %1737) #12
  %1759 = load ptr, ptr %1716, align 8, !tbaa !50
  %1760 = getelementptr inbounds %struct.xpv, ptr %1759, i64 0, i32 2
  store i64 0, ptr %1760, align 8, !tbaa !51
  br i1 %1720, label %1761, label %1767

1761:                                             ; preds = %1751
  %1762 = load ptr, ptr %1753, align 8, !tbaa !50
  %1763 = getelementptr inbounds %struct.xpv, ptr %1762, i64 0, i32 2
  %1764 = load i64, ptr %1763, align 8, !tbaa !51
  %1765 = trunc i64 %1764 to i32
  %1766 = call fastcc ptr @sv_x(ptr noundef nonnull %1716, ptr noundef nonnull @.str.33, i64 noundef 1, i32 noundef %1765)
  br label %1767

1767:                                             ; preds = %1761, %1751
  %1768 = load ptr, ptr %1721, align 8, !tbaa !47
  %1769 = load ptr, ptr %1715, align 8, !tbaa !50
  %1770 = getelementptr inbounds %struct.xpv, ptr %1769, i64 0, i32 2
  %1771 = load i64, ptr %1770, align 8, !tbaa !51
  call fastcc void @DD_dump(ptr noundef %1758, ptr noundef %1768, i64 noundef %1771, ptr noundef %1753, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %33, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %1716, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i64 noundef %23)
  %1772 = icmp eq ptr %1758, null
  br i1 %1772, label %1780, label %1773

1773:                                             ; preds = %1767
  %1774 = getelementptr inbounds %struct.sv, ptr %1758, i64 0, i32 1
  %1775 = load i32, ptr %1774, align 8, !tbaa !53
  %1776 = icmp ugt i32 %1775, 1
  br i1 %1776, label %1777, label %1779

1777:                                             ; preds = %1773
  %1778 = add i32 %1775, -1
  store i32 %1778, ptr %1774, align 8, !tbaa !53
  br label %1780

1779:                                             ; preds = %1773
  call void @Perl_sv_free2(ptr noundef nonnull %1758, i32 noundef %1775) #12
  br label %1780

1780:                                             ; preds = %1767, %1777, %1779
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #12
  br label %1781

1781:                                             ; preds = %1740, %1735, %1780
  %1782 = add nuw nsw i64 %1723, 1
  %1783 = icmp eq i64 %1782, 3
  br i1 %1783, label %1784, label %1722, !llvm.loop !85

1784:                                             ; preds = %1781
  %1785 = icmp eq ptr %1716, null
  br i1 %1785, label %1793, label %1786

1786:                                             ; preds = %1784
  %1787 = getelementptr inbounds %struct.sv, ptr %1716, i64 0, i32 1
  %1788 = load i32, ptr %1787, align 8, !tbaa !53
  %1789 = icmp ugt i32 %1788, 1
  br i1 %1789, label %1790, label %1792

1790:                                             ; preds = %1786
  %1791 = add i32 %1788, -1
  store i32 %1791, ptr %1787, align 8, !tbaa !53
  br label %1793

1792:                                             ; preds = %1786
  call void @Perl_sv_free2(ptr noundef nonnull %1716, i32 noundef %1788) #12
  br label %1793

1793:                                             ; preds = %1784, %1790, %1792
  %1794 = icmp eq ptr %1715, null
  br i1 %1794, label %1921, label %1795

1795:                                             ; preds = %1793
  %1796 = getelementptr inbounds %struct.sv, ptr %1715, i64 0, i32 1
  %1797 = load i32, ptr %1796, align 8, !tbaa !53
  %1798 = icmp ugt i32 %1797, 1
  br i1 %1798, label %1799, label %1801

1799:                                             ; preds = %1795
  %1800 = add i32 %1797, -1
  store i32 %1800, ptr %1796, align 8, !tbaa !53
  br label %1921

1801:                                             ; preds = %1795
  call void @Perl_sv_free2(ptr noundef nonnull %1715, i32 noundef %1797) #12
  br label %1921

1802:                                             ; preds = %1529
  %1803 = icmp eq ptr %0, @PL_sv_undef
  br i1 %1803, label %1813, label %1804

1804:                                             ; preds = %1802
  %1805 = and i32 %1466, 65024
  %1806 = icmp ne i32 %1805, 0
  %1807 = and i32 %1466, 255
  %1808 = icmp eq i32 %1807, 8
  %1809 = or i1 %1806, %1808
  %1810 = and i32 %1466, 16777471
  %1811 = icmp eq i32 %1810, 16777226
  %1812 = or i1 %1811, %1809
  br i1 %1812, label %1814, label %1813

1813:                                             ; preds = %1804, %1802
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef nonnull @.str.77, i64 noundef 5, i32 noundef 2) #12
  br label %1921

1814:                                             ; preds = %1804
  %1815 = and i32 %1466, 14680064
  %1816 = icmp eq i32 %1815, 0
  br i1 %1816, label %1825, label %1817

1817:                                             ; preds = %1814
  %1818 = call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 86) #12
  %1819 = icmp eq ptr %1818, null
  br i1 %1819, label %1825, label %1820

1820:                                             ; preds = %1817
  %1821 = getelementptr inbounds %struct.magic, ptr %1818, i64 0, i32 7
  %1822 = load ptr, ptr %1821, align 8, !tbaa !58
  %1823 = getelementptr inbounds %struct.magic, ptr %1818, i64 0, i32 5
  %1824 = load i64, ptr %1823, align 8, !tbaa !61
  call void @Perl_sv_catpvn_flags(ptr noundef %3, ptr noundef %1822, i64 noundef %1824, i32 noundef 2) #12
  br label %1921

1825:                                             ; preds = %1814, %1817, %1527
  %1826 = load i32, ptr %53, align 4, !tbaa !44
  %1827 = and i32 %1826, 2098176
  %1828 = icmp eq i32 %1827, 1024
  br i1 %1828, label %1829, label %1835

1829:                                             ; preds = %1825
  %1830 = load ptr, ptr %0, align 8, !tbaa !50
  %1831 = getelementptr inbounds %struct.xpv, ptr %1830, i64 0, i32 2
  %1832 = load i64, ptr %1831, align 8, !tbaa !51
  store i64 %1832, ptr %31, align 8, !tbaa !46
  %1833 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %1834 = load ptr, ptr %1833, align 8, !tbaa !47
  br label %1837

1835:                                             ; preds = %1825
  %1836 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %31, i32 noundef 2) #12
  br label %1837

1837:                                             ; preds = %1835, %1829
  %1838 = phi ptr [ %1834, %1829 ], [ %1836, %1835 ]
  %1839 = icmp ne i32 %22, 0
  br i1 %1839, label %1840, label %1844

1840:                                             ; preds = %1837
  %1841 = load i64, ptr %31, align 8, !tbaa !46
  %1842 = call fastcc zeroext i1 @safe_decimal_number(ptr noundef %1838, i64 noundef %1841)
  br i1 %1842, label %1843, label %1844

1843:                                             ; preds = %1840
  call void @Perl_sv_catsv_flags(ptr noundef %3, ptr noundef nonnull %0, i32 noundef 2) #12
  br label %1921

1844:                                             ; preds = %1840, %1837
  %1845 = load i32, ptr %53, align 4, !tbaa !44
  %1846 = and i32 %1845, 536870912
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1855, label %1848

1848:                                             ; preds = %1844
  %1849 = load ptr, ptr @PL_curcop, align 8, !tbaa !35
  %1850 = getelementptr inbounds %struct.cop, ptr %1849, i64 0, i32 10
  %1851 = load i32, ptr %1850, align 8, !tbaa !76
  %1852 = and i32 %1851, 8
  %1853 = icmp eq i32 %1852, 0
  %1854 = or i1 %1839, %1853
  br i1 %1854, label %1856, label %1871

1855:                                             ; preds = %1844
  br i1 %1839, label %1856, label %1871

1856:                                             ; preds = %1855, %1848
  %1857 = load i64, ptr %31, align 8, !tbaa !46
  br i1 %1847, label %1865, label %1858

1858:                                             ; preds = %1856
  %1859 = load ptr, ptr @PL_curcop, align 8, !tbaa !35
  %1860 = getelementptr inbounds %struct.cop, ptr %1859, i64 0, i32 10
  %1861 = load i32, ptr %1860, align 8, !tbaa !76
  %1862 = lshr i32 %1861, 3
  %1863 = and i32 %1862, 1
  %1864 = xor i32 %1863, 1
  br label %1865

1865:                                             ; preds = %1858, %1856
  %1866 = phi i32 [ 0, %1856 ], [ %1864, %1858 ]
  %1867 = call fastcc i32 @esc_q_utf8(ptr noundef %3, ptr noundef %1838, i64 noundef %1857, i32 noundef %1866, i32 noundef %22)
  %1868 = sext i32 %1867 to i64
  %1869 = load i64, ptr %31, align 8, !tbaa !46
  %1870 = add i64 %1869, %1868
  store i64 %1870, ptr %31, align 8, !tbaa !46
  br label %1921

1871:                                             ; preds = %1855, %1848
  %1872 = load ptr, ptr %3, align 8, !tbaa !50
  %1873 = getelementptr inbounds %struct.xpv, ptr %1872, i64 0, i32 2
  %1874 = load i64, ptr %1873, align 8, !tbaa !51
  %1875 = add i64 %1874, 3
  %1876 = load i64, ptr %31, align 8, !tbaa !46
  %1877 = shl i64 %1876, 1
  %1878 = add i64 %1875, %1877
  %1879 = call ptr @Perl_sv_grow(ptr noundef nonnull %3, i64 noundef %1878) #12
  %1880 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %1881 = load ptr, ptr %1880, align 8, !tbaa !47
  %1882 = load ptr, ptr %3, align 8, !tbaa !50
  %1883 = getelementptr inbounds %struct.xpv, ptr %1882, i64 0, i32 2
  %1884 = load i64, ptr %1883, align 8, !tbaa !51
  %1885 = getelementptr inbounds i8, ptr %1881, i64 %1884
  store i8 39, ptr %1885, align 1, !tbaa !47
  %1886 = load i64, ptr %31, align 8, !tbaa !46
  %1887 = icmp eq i64 %1886, 0
  br i1 %1887, label %1907, label %1888

1888:                                             ; preds = %1871, %1898
  %1889 = phi i32 [ %1900, %1898 ], [ 0, %1871 ]
  %1890 = phi i64 [ %1903, %1898 ], [ %1886, %1871 ]
  %1891 = phi ptr [ %1902, %1898 ], [ %1838, %1871 ]
  %1892 = phi ptr [ %1899, %1898 ], [ %1885, %1871 ]
  %1893 = getelementptr inbounds i8, ptr %1892, i64 1
  %1894 = load i8, ptr %1891, align 1, !tbaa !47
  switch i8 %1894, label %1898 [
    i8 39, label %1895
    i8 92, label %1895
  ]

1895:                                             ; preds = %1888, %1888
  store i8 92, ptr %1893, align 1, !tbaa !47
  %1896 = getelementptr inbounds i8, ptr %1892, i64 2
  %1897 = add nsw i32 %1889, 1
  br label %1898

1898:                                             ; preds = %1895, %1888
  %1899 = phi ptr [ %1893, %1888 ], [ %1896, %1895 ]
  %1900 = phi i32 [ %1889, %1888 ], [ %1897, %1895 ]
  %1901 = load i8, ptr %1891, align 1, !tbaa !47
  store i8 %1901, ptr %1899, align 1, !tbaa !47
  %1902 = getelementptr inbounds i8, ptr %1891, i64 1
  %1903 = add i64 %1890, -1
  %1904 = icmp eq i64 %1903, 0
  br i1 %1904, label %1905, label %1888, !llvm.loop !80

1905:                                             ; preds = %1898
  %1906 = sext i32 %1900 to i64
  br label %1907

1907:                                             ; preds = %1905, %1871
  %1908 = phi i64 [ 0, %1871 ], [ %1906, %1905 ]
  %1909 = load i64, ptr %31, align 8, !tbaa !46
  %1910 = add i64 %1909, %1908
  %1911 = add i64 %1910, 2
  store i64 %1911, ptr %31, align 8, !tbaa !46
  %1912 = getelementptr i8, ptr %1885, i64 %1910
  %1913 = getelementptr i8, ptr %1912, i64 1
  store i8 39, ptr %1913, align 1, !tbaa !47
  %1914 = load i64, ptr %31, align 8, !tbaa !46
  %1915 = getelementptr inbounds i8, ptr %1885, i64 %1914
  store i8 0, ptr %1915, align 1, !tbaa !47
  %1916 = load ptr, ptr %3, align 8, !tbaa !50
  %1917 = getelementptr inbounds %struct.xpv, ptr %1916, i64 0, i32 2
  %1918 = load i64, ptr %1917, align 8, !tbaa !51
  %1919 = load i64, ptr %31, align 8, !tbaa !46
  %1920 = add i64 %1919, %1918
  store i64 %1920, ptr %1917, align 8, !tbaa !51
  br label %1921

1921:                                             ; preds = %1801, %1799, %1793, %1706, %1820, %1865, %1907, %1843, %1813, %1527
  br label %1922

1922:                                             ; preds = %1440, %1921, %1527
  %1923 = phi i32 [ %1528, %1527 ], [ 0, %1921 ], [ 1, %1440 ]
  %1924 = phi i64 [ %1464, %1527 ], [ %1464, %1921 ], [ 8, %1440 ]
  %1925 = phi ptr [ %1465, %1527 ], [ %1465, %1921 ], [ %1412, %1440 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #12
  %1926 = icmp eq i32 %1923, 0
  br i1 %1926, label %1927, label %1943

1927:                                             ; preds = %1922, %1393
  %1928 = phi i64 [ 8, %1393 ], [ %1924, %1922 ]
  %1929 = phi ptr [ %540, %1393 ], [ %1925, %1922 ]
  %1930 = icmp eq i64 %1928, 0
  br i1 %1930, label %1943, label %1931

1931:                                             ; preds = %1927
  %1932 = icmp eq i32 %16, 0
  br i1 %1932, label %1936, label %1933

1933:                                             ; preds = %1931
  %1934 = trunc i64 %1928 to i32
  %1935 = call ptr @Perl_hv_common_key_len(ptr noundef %4, ptr noundef nonnull %26, i32 noundef %1934, i32 noundef 68, ptr noundef null, i32 noundef 0) #12
  br label %1943

1936:                                             ; preds = %1931
  %1937 = icmp ne i64 %2, 0
  %1938 = icmp ne ptr %1929, null
  %1939 = and i1 %1937, %1938
  br i1 %1939, label %1940, label %1943

1940:                                             ; preds = %1936
  %1941 = call ptr @Perl_av_fetch(ptr noundef nonnull %1929, i64 noundef 2, i32 noundef 1) #12
  %1942 = load ptr, ptr %1941, align 8, !tbaa !35
  call void @Perl_sv_setiv(ptr noundef %1942, i64 noundef 1) #12
  br label %1943

1943:                                             ; preds = %1927, %1936, %1940, %1933, %507, %506, %505, %500, %487, %24, %1922, %566
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %25) #12
  ret void
}

declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_fetchmeth_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare ptr @Perl_get_cv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

declare ptr @Perl_instr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

declare void @Perl_sortsv(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Perl_sv_cmp(ptr noundef, ptr noundef) #2

declare ptr @Perl_hv_iterval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @esc_q_utf8(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !prof !34 {
  %6 = getelementptr inbounds i8, ptr %1, i64 %2
  %7 = load ptr, ptr %0, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.xpv, ptr %7, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !51
  %10 = icmp sgt i64 %2, 0
  br i1 %10, label %11, label %115

11:                                               ; preds = %5
  %12 = icmp eq i32 %4, 0
  %13 = icmp eq i32 %3, 0
  %14 = ptrtoint ptr %6 to i64
  %15 = icmp eq i32 %4, 0
  br label %16

16:                                               ; preds = %11, %105
  %17 = phi i64 [ 0, %11 ], [ %110, %105 ]
  %18 = phi i64 [ 0, %11 ], [ %109, %105 ]
  %19 = phi i64 [ 0, %11 ], [ %108, %105 ]
  %20 = phi i64 [ 0, %11 ], [ %107, %105 ]
  %21 = phi i64 [ 0, %11 ], [ %106, %105 ]
  %22 = phi ptr [ %1, %11 ], [ %113, %105 ]
  %23 = load i8, ptr %22, align 1, !tbaa !47
  %24 = freeze i8 %23
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !39
  %28 = and i32 %27, 16448
  %29 = icmp eq i32 %28, 16448
  br i1 %29, label %30, label %39

30:                                               ; preds = %16
  switch i8 %24, label %37 [
    i8 92, label %31
    i8 39, label %33
    i8 64, label %35
    i8 36, label %35
    i8 34, label %35
  ]

31:                                               ; preds = %30
  %32 = add i64 %20, 1
  br label %105

33:                                               ; preds = %30
  %34 = add i64 %19, 1
  br label %105

35:                                               ; preds = %30, %30, %30
  %36 = add i64 %18, 1
  br label %105

37:                                               ; preds = %30
  %38 = add i64 %17, 1
  br label %105

39:                                               ; preds = %16
  %40 = icmp slt i8 %24, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %39
  br i1 %13, label %72, label %42

42:                                               ; preds = %41
  %43 = ptrtoint ptr %22 to i64
  %44 = sub i64 %14, %43
  %45 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #12
  %46 = select i1 %45, i32 0, i32 -8161
  %47 = tail call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %22, i64 noundef %44, ptr noundef null, i32 noundef %46) #12
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i8, ptr %22, align 1, !tbaa !47
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49, %42
  %53 = load i8, ptr %22, align 1, !tbaa !47
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !47
  %57 = zext i8 %56 to i64
  br label %58

58:                                               ; preds = %49, %52
  %59 = phi i64 [ %57, %52 ], [ 1, %49 ]
  %60 = icmp ult i64 %47, 256
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = icmp ult i64 %47, 4096
  br i1 %62, label %68, label %63

63:                                               ; preds = %61
  %64 = icmp ult i64 %47, 65536
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = icmp ult i64 %47, 4294967296
  %67 = select i1 %66, i64 8, i64 32
  br label %68

68:                                               ; preds = %61, %63, %65, %58
  %69 = phi i64 [ 2, %58 ], [ 3, %61 ], [ %67, %65 ], [ 4, %63 ]
  %70 = add i64 %21, 4
  %71 = add i64 %70, %69
  br label %105

72:                                               ; preds = %41
  br i1 %15, label %75, label %73

73:                                               ; preds = %72
  %74 = add i64 %21, 6
  br label %105

75:                                               ; preds = %72
  %76 = add i64 %21, 4
  br label %105

77:                                               ; preds = %39
  br i1 %12, label %78, label %80

78:                                               ; preds = %77
  %79 = add i64 %17, 1
  br label %105

80:                                               ; preds = %77
  %81 = and i8 %24, 126
  %82 = icmp eq i8 %81, 12
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  switch i8 %24, label %86 [
    i8 27, label %84
    i8 10, label %84
    i8 9, label %84
    i8 8, label %84
    i8 7, label %84
  ]

84:                                               ; preds = %83, %83, %83, %83, %83, %80
  %85 = add i64 %21, 2
  br label %105

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, ptr %22, i64 1
  %88 = icmp ult ptr %87, %6
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i8, ptr %87, align 1, !tbaa !47
  %91 = add i8 %90, -48
  %92 = icmp ult i8 %91, 10
  br i1 %92, label %93, label %95

93:                                               ; preds = %89, %86
  %94 = add i64 %21, 4
  br label %105

95:                                               ; preds = %89
  %96 = icmp ult i8 %24, 8
  br i1 %96, label %97, label %99

97:                                               ; preds = %95
  %98 = add i64 %21, 2
  br label %105

99:                                               ; preds = %95
  %100 = icmp ult i8 %24, 64
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = add i64 %21, 3
  br label %105

103:                                              ; preds = %99
  %104 = add i64 %21, 4
  br label %105

105:                                              ; preds = %73, %75, %68, %84, %97, %103, %101, %93, %78, %31, %35, %37, %33
  %106 = phi i64 [ %71, %68 ], [ %74, %73 ], [ %76, %75 ], [ %85, %84 ], [ %94, %93 ], [ %98, %97 ], [ %102, %101 ], [ %104, %103 ], [ %21, %78 ], [ %21, %31 ], [ %21, %33 ], [ %21, %35 ], [ %21, %37 ]
  %107 = phi i64 [ %20, %68 ], [ %20, %73 ], [ %20, %75 ], [ %20, %84 ], [ %20, %93 ], [ %20, %97 ], [ %20, %101 ], [ %20, %103 ], [ %20, %78 ], [ %32, %31 ], [ %20, %33 ], [ %20, %35 ], [ %20, %37 ]
  %108 = phi i64 [ %19, %68 ], [ %19, %73 ], [ %19, %75 ], [ %19, %84 ], [ %19, %93 ], [ %19, %97 ], [ %19, %101 ], [ %19, %103 ], [ %19, %78 ], [ %19, %31 ], [ %34, %33 ], [ %19, %35 ], [ %19, %37 ]
  %109 = phi i64 [ %18, %68 ], [ %18, %73 ], [ %18, %75 ], [ %18, %84 ], [ %18, %93 ], [ %18, %97 ], [ %18, %101 ], [ %18, %103 ], [ %18, %78 ], [ %18, %31 ], [ %18, %33 ], [ %36, %35 ], [ %18, %37 ]
  %110 = phi i64 [ %17, %68 ], [ %17, %73 ], [ %17, %75 ], [ %17, %84 ], [ %17, %93 ], [ %17, %97 ], [ %17, %101 ], [ %17, %103 ], [ %79, %78 ], [ %17, %31 ], [ %17, %33 ], [ %17, %35 ], [ %38, %37 ]
  %111 = phi i64 [ %59, %68 ], [ 1, %73 ], [ 1, %75 ], [ 1, %84 ], [ 1, %93 ], [ 1, %97 ], [ 1, %101 ], [ 1, %103 ], [ 1, %78 ], [ 1, %31 ], [ 1, %33 ], [ 1, %35 ], [ 1, %37 ]
  %112 = and i64 %111, 4294967295
  %113 = getelementptr inbounds i8, ptr %22, i64 %112
  %114 = icmp ult ptr %113, %6
  br i1 %114, label %16, label %115, !llvm.loop !86

115:                                              ; preds = %105, %5
  %116 = phi i64 [ 0, %5 ], [ %106, %105 ]
  %117 = phi i64 [ 0, %5 ], [ %107, %105 ]
  %118 = phi i64 [ 0, %5 ], [ %108, %105 ]
  %119 = phi i64 [ 0, %5 ], [ %109, %105 ]
  %120 = phi i64 [ 0, %5 ], [ %110, %105 ]
  %121 = icmp ne i64 %116, 0
  %122 = icmp ne i32 %4, 0
  %123 = or i1 %122, %121
  %124 = add i64 %9, 3
  br i1 %123, label %125, label %242

125:                                              ; preds = %115
  %126 = add i64 %119, %117
  %127 = shl i64 %126, 1
  %128 = add i64 %124, %116
  %129 = add i64 %128, %118
  %130 = add i64 %129, %120
  %131 = add i64 %130, %127
  %132 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %0, i64 noundef %131) #12
  %133 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !47
  %135 = getelementptr inbounds i8, ptr %134, i64 %9
  %136 = getelementptr inbounds i8, ptr %135, i64 1
  store i8 34, ptr %135, align 1, !tbaa !47
  %137 = icmp sgt i64 %2, 0
  br i1 %137, label %138, label %239

138:                                              ; preds = %125
  %139 = icmp eq i32 %3, 0
  %140 = ptrtoint ptr %6 to i64
  br label %141

141:                                              ; preds = %138, %233
  %142 = phi ptr [ %136, %138 ], [ %235, %233 ]
  %143 = phi ptr [ %1, %138 ], [ %237, %233 ]
  br i1 %139, label %168, label %144

144:                                              ; preds = %141
  %145 = load i8, ptr %143, align 1, !tbaa !47
  %146 = icmp sgt i8 %145, -1
  br i1 %146, label %168, label %147

147:                                              ; preds = %144
  %148 = ptrtoint ptr %143 to i64
  %149 = sub i64 %140, %148
  %150 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #12
  %151 = select i1 %150, i32 0, i32 -8161
  %152 = tail call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %143, i64 noundef %149, ptr noundef null, i32 noundef %151) #12
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i8, ptr %143, align 1, !tbaa !47
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154, %147
  %158 = load i8, ptr %143, align 1, !tbaa !47
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !47
  %162 = zext i8 %161 to i64
  br label %163

163:                                              ; preds = %154, %157
  %164 = phi i64 [ %162, %157 ], [ 1, %154 ]
  %165 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %142, ptr noundef nonnull dereferenceable(1) @.str.78, i64 noundef %152) #12
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, ptr %142, i64 %166
  br label %233

168:                                              ; preds = %144, %141
  %169 = load i8, ptr %143, align 1, !tbaa !47
  %170 = zext i8 %169 to i64
  %171 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !39
  %173 = and i32 %172, 16448
  %174 = icmp eq i32 %173, 16448
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  switch i8 %169, label %178 [
    i8 92, label %176
    i8 64, label %176
    i8 36, label %176
    i8 34, label %176
  ]

176:                                              ; preds = %175, %175, %175, %175
  %177 = getelementptr inbounds i8, ptr %142, i64 1
  store i8 92, ptr %142, align 1, !tbaa !47
  br label %178

178:                                              ; preds = %175, %176
  %179 = phi ptr [ %177, %176 ], [ %142, %175 ]
  %180 = getelementptr inbounds i8, ptr %179, i64 1
  store i8 %169, ptr %179, align 1, !tbaa !47
  br label %233

181:                                              ; preds = %168
  %182 = getelementptr inbounds i8, ptr %142, i64 1
  br i1 %122, label %184, label %183

183:                                              ; preds = %181
  store i8 %169, ptr %142, align 1, !tbaa !47
  br label %233

184:                                              ; preds = %181
  store i8 92, ptr %142, align 1, !tbaa !47
  switch i8 %169, label %199 [
    i8 7, label %185
    i8 8, label %187
    i8 9, label %189
    i8 10, label %191
    i8 12, label %193
    i8 13, label %195
    i8 27, label %197
  ]

185:                                              ; preds = %184
  %186 = getelementptr inbounds i8, ptr %142, i64 2
  store i8 97, ptr %182, align 1, !tbaa !47
  br label %233

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %142, i64 2
  store i8 98, ptr %182, align 1, !tbaa !47
  br label %233

189:                                              ; preds = %184
  %190 = getelementptr inbounds i8, ptr %142, i64 2
  store i8 116, ptr %182, align 1, !tbaa !47
  br label %233

191:                                              ; preds = %184
  %192 = getelementptr inbounds i8, ptr %142, i64 2
  store i8 110, ptr %182, align 1, !tbaa !47
  br label %233

193:                                              ; preds = %184
  %194 = getelementptr inbounds i8, ptr %142, i64 2
  store i8 102, ptr %182, align 1, !tbaa !47
  br label %233

195:                                              ; preds = %184
  %196 = getelementptr inbounds i8, ptr %142, i64 2
  store i8 114, ptr %182, align 1, !tbaa !47
  br label %233

197:                                              ; preds = %184
  %198 = getelementptr inbounds i8, ptr %142, i64 2
  store i8 101, ptr %182, align 1, !tbaa !47
  br label %233

199:                                              ; preds = %184
  %200 = getelementptr inbounds i8, ptr %143, i64 1
  %201 = icmp ult ptr %200, %6
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load i8, ptr %200, align 1, !tbaa !47
  %204 = add i8 %203, -48
  %205 = icmp ult i8 %204, 10
  br label %206

206:                                              ; preds = %199, %202
  %207 = phi i1 [ %205, %202 ], [ false, %199 ]
  %208 = icmp ugt i8 %169, 7
  %209 = select i1 %208, i1 true, i1 %207
  br i1 %209, label %213, label %210

210:                                              ; preds = %206
  %211 = or disjoint i8 %169, 48
  %212 = getelementptr inbounds i8, ptr %142, i64 2
  store i8 %211, ptr %182, align 1, !tbaa !47
  br label %233

213:                                              ; preds = %206
  %214 = icmp ugt i8 %169, 63
  %215 = select i1 %214, i1 true, i1 %207
  %216 = getelementptr inbounds i8, ptr %142, i64 2
  br i1 %215, label %223, label %217

217:                                              ; preds = %213
  %218 = lshr i8 %169, 3
  %219 = or disjoint i8 %218, 48
  store i8 %219, ptr %182, align 1, !tbaa !47
  %220 = and i8 %169, 7
  %221 = or disjoint i8 %220, 48
  %222 = getelementptr inbounds i8, ptr %142, i64 3
  store i8 %221, ptr %216, align 1, !tbaa !47
  br label %233

223:                                              ; preds = %213
  %224 = lshr i8 %169, 6
  %225 = or disjoint i8 %224, 48
  store i8 %225, ptr %182, align 1, !tbaa !47
  %226 = lshr i8 %169, 3
  %227 = and i8 %226, 7
  %228 = or disjoint i8 %227, 48
  %229 = getelementptr inbounds i8, ptr %142, i64 3
  store i8 %228, ptr %216, align 1, !tbaa !47
  %230 = and i8 %169, 7
  %231 = or disjoint i8 %230, 48
  %232 = getelementptr inbounds i8, ptr %142, i64 4
  store i8 %231, ptr %229, align 1, !tbaa !47
  br label %233

233:                                              ; preds = %178, %183, %210, %223, %217, %197, %195, %193, %191, %189, %187, %185, %163
  %234 = phi i64 [ %164, %163 ], [ 1, %185 ], [ 1, %187 ], [ 1, %189 ], [ 1, %191 ], [ 1, %193 ], [ 1, %195 ], [ 1, %197 ], [ 1, %217 ], [ 1, %223 ], [ 1, %210 ], [ 1, %183 ], [ 1, %178 ]
  %235 = phi ptr [ %167, %163 ], [ %186, %185 ], [ %188, %187 ], [ %190, %189 ], [ %192, %191 ], [ %194, %193 ], [ %196, %195 ], [ %198, %197 ], [ %222, %217 ], [ %232, %223 ], [ %212, %210 ], [ %182, %183 ], [ %180, %178 ]
  %236 = and i64 %234, 4294967295
  %237 = getelementptr inbounds i8, ptr %143, i64 %236
  %238 = icmp ult ptr %237, %6
  br i1 %238, label %141, label %239, !llvm.loop !87

239:                                              ; preds = %233, %125
  %240 = phi ptr [ %136, %125 ], [ %235, %233 ]
  %241 = getelementptr inbounds i8, ptr %240, i64 1
  store i8 34, ptr %240, align 1, !tbaa !47
  br label %270

242:                                              ; preds = %115
  %243 = add i64 %118, %117
  %244 = shl i64 %243, 1
  %245 = add i64 %124, %119
  %246 = add i64 %245, %120
  %247 = add i64 %246, %244
  %248 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %0, i64 noundef %247) #12
  %249 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !47
  %251 = getelementptr inbounds i8, ptr %250, i64 %9
  store i8 39, ptr %251, align 1, !tbaa !47
  %252 = getelementptr inbounds i8, ptr %251, i64 1
  %253 = icmp sgt i64 %2, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %242, %261
  %255 = phi ptr [ %264, %261 ], [ %252, %242 ]
  %256 = phi ptr [ %262, %261 ], [ %251, %242 ]
  %257 = phi ptr [ %263, %261 ], [ %1, %242 ]
  %258 = load i8, ptr %257, align 1, !tbaa !47
  switch i8 %258, label %261 [
    i8 92, label %259
    i8 39, label %259
  ]

259:                                              ; preds = %254, %254
  %260 = getelementptr inbounds i8, ptr %256, i64 2
  store i8 92, ptr %255, align 1, !tbaa !47
  br label %261

261:                                              ; preds = %254, %259
  %262 = phi ptr [ %260, %259 ], [ %255, %254 ]
  store i8 %258, ptr %262, align 1, !tbaa !47
  %263 = getelementptr inbounds i8, ptr %257, i64 1
  %264 = getelementptr inbounds i8, ptr %262, i64 1
  %265 = icmp ult ptr %263, %6
  br i1 %265, label %254, label %266, !llvm.loop !88

266:                                              ; preds = %261, %242
  %267 = phi ptr [ %251, %242 ], [ %262, %261 ]
  %268 = phi ptr [ %252, %242 ], [ %264, %261 ]
  %269 = getelementptr inbounds i8, ptr %267, i64 2
  store i8 39, ptr %268, align 1, !tbaa !47
  br label %270

270:                                              ; preds = %266, %239
  %271 = phi ptr [ %135, %239 ], [ %251, %266 ]
  %272 = phi ptr [ %241, %239 ], [ %269, %266 ]
  store i8 0, ptr %272, align 1, !tbaa !47
  %273 = ptrtoint ptr %272 to i64
  %274 = ptrtoint ptr %271 to i64
  %275 = sub i64 %273, %274
  %276 = add i64 %275, %9
  %277 = load ptr, ptr %0, align 8, !tbaa !50
  %278 = getelementptr inbounds %struct.xpv, ptr %277, i64 0, i32 2
  store i64 %276, ptr %278, align 8, !tbaa !51
  %279 = trunc i64 %275 to i32
  ret i32 %279
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_catpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i1 @safe_decimal_number(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #7 !prof !34 {
  switch i64 %1, label %8 [
    i64 1, label %3
    i64 0, label %14
  ]

3:                                                ; preds = %2
  %4 = load i8, ptr %0, align 1, !tbaa !47
  %5 = icmp eq i8 %4, 48
  br i1 %5, label %37, label %6

6:                                                ; preds = %3
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2, %6
  %9 = load i8, ptr %0, align 1, !tbaa !47
  %10 = icmp eq i8 %9, 45
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  %13 = add i64 %1, -1
  br label %14

14:                                               ; preds = %8, %6, %2, %11
  %15 = phi ptr [ %12, %11 ], [ %0, %2 ], [ %0, %6 ], [ %0, %8 ]
  %16 = phi i64 [ %13, %11 ], [ %1, %2 ], [ 0, %6 ], [ %1, %8 ]
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = load i8, ptr %15, align 1, !tbaa !47
  %20 = add i8 %19, -58
  %21 = icmp ult i8 %20, -9
  %22 = add i64 %16, -1
  %23 = icmp ugt i64 %22, 8
  %24 = or i1 %23, %21
  br i1 %24, label %37, label %25

25:                                               ; preds = %18
  %26 = icmp eq i64 %22, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %25, %27
  %28 = phi ptr [ %30, %27 ], [ %15, %25 ]
  %29 = phi i64 [ %34, %27 ], [ %22, %25 ]
  %30 = getelementptr inbounds i8, ptr %28, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !47
  %32 = add i8 %31, -48
  %33 = icmp ult i8 %32, 10
  %34 = add nsw i64 %29, -1
  %35 = icmp ne i64 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %27, label %37, !llvm.loop !89

37:                                               ; preds = %27, %25, %14, %18, %3
  %38 = phi i1 [ true, %3 ], [ false, %18 ], [ false, %14 ], [ true, %25 ], [ %33, %27 ]
  ret i1 %38
}

declare i64 @Perl_utf8n_to_uvchr(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #11

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!42, !37, i64 34}
!42 = !{!"op", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !40, i64 32, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !37, i64 34, !37, i64 35}
!43 = !{!"long", !37, i64 0}
!44 = !{!45, !40, i64 12}
!45 = !{!"sv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!46 = !{!43, !43, i64 0}
!47 = !{!37, !37, i64 0}
!48 = !{!49, !40, i64 12}
!49 = !{!"hv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!50 = !{!45, !36, i64 0}
!51 = !{!52, !43, i64 16}
!52 = !{!"xpv", !36, i64 0, !37, i64 8, !43, i64 16, !37, i64 24}
!53 = !{!45, !40, i64 8}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !55, !56}
!58 = !{!59, !36, i64 40}
!59 = !{!"magic", !36, i64 0, !36, i64 8, !60, i64 16, !37, i64 18, !37, i64 19, !43, i64 24, !36, i64 32, !36, i64 40}
!60 = !{!"short", !37, i64 0}
!61 = !{!59, !43, i64 24}
!62 = distinct !{!62, !55, !56}
!63 = distinct !{!63, !55, !56}
!64 = !{!65, !36, i64 0}
!65 = !{!"xpvmg", !36, i64 0, !37, i64 8, !43, i64 16, !37, i64 24, !37, i64 32, !37, i64 40}
!66 = !{!67, !36, i64 0}
!67 = !{!"gp", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !40, i64 64, !40, i64 67, !36, i64 72}
!68 = !{!49, !36, i64 0}
!69 = !{!70, !43, i64 24}
!70 = !{!"xpvhv", !36, i64 0, !37, i64 8, !43, i64 16, !43, i64 24}
!71 = !{!72, !40, i64 28}
!72 = !{!"xpvhv_aux", !37, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !36, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52}
!73 = distinct !{!73, !55, !56}
!74 = distinct !{!74, !55, !56}
!75 = distinct !{!75, !55, !56}
!76 = !{!77, !40, i64 56}
!77 = !{!"cop", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !40, i64 32, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !37, i64 34, !37, i64 35, !40, i64 36, !36, i64 40, !36, i64 48, !40, i64 56, !40, i64 60, !36, i64 64, !36, i64 72}
!78 = distinct !{!78, !55, !56}
!79 = distinct !{!79, !55, !56}
!80 = distinct !{!80, !55, !56}
!81 = distinct !{!81, !56}
!82 = distinct !{!82, !55, !56}
!83 = !{!84, !40, i64 4}
!84 = !{!"hek", !40, i64 0, !40, i64 4, !37, i64 8}
!85 = distinct !{!85, !55, !56}
!86 = distinct !{!86, !55, !56}
!87 = distinct !{!87, !55, !56}
!88 = distinct !{!88, !55, !56}
!89 = distinct !{!89, !55, !56}
