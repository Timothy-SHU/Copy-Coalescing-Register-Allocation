; ModuleID = 'pp_sort.c'
source_filename = "pp_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.off_runs = type { i64, i64 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.listop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
%struct.cv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.1, ptr, %union.anon.2, %union.anon.3, %union.anon.4, ptr, %union.anon.5, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon.1 = type { i64 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.7, %union._xivu, %union._xnvu }
%union.anon.7 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.gv = type { ptr, i32, i32, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.8 }
%union.anon.8 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], ptr, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.context = type { %union.anon.11 }
%union.anon.11 = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block = type { i8, i8, i16, i32, ptr, i32, i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.block_sub }
%struct.block_sub = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.padlist = type { i64, ptr, i32, i32 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.18, %union._xivu }
%union.anon.18 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.19, %union._xivu, %union._xnvu }
%union.anon.19 = type { i64 }
%struct.partition_stack_entry = type { i32, i32, i32 }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_sortcop = external global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Undefined sort subroutine \22%-p\22 called\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Undefined subroutine in sort\00", align 1
@PL_top_env = external local_unnamed_addr global ptr, align 8
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_firstgv = external global ptr, align 8
@PL_secondgv = external global ptr, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_markstack = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@PL_curpm = external local_unnamed_addr global ptr, align 8
@PL_comppad = external local_unnamed_addr global ptr, align 8
@PL_curpad = external global ptr, align 8
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@PL_scopestack = external local_unnamed_addr global ptr, align 8
@PL_sort_RealCmp = external local_unnamed_addr global ptr, align 8
@PL_runops = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"Sort subroutine didn't return single value\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_sortsv(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @Perl_sortsv_flags(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 0) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_sortsv_flags(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @S_qsortsv(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #6
  br label %9

8:                                                ; preds = %4
  tail call fastcc void @S_mergesortsv(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #6
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_qsortsv(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [200 x ptr], align 16
  %6 = and i32 %3, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %63, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %5) #7
  %9 = icmp ult i64 %1, 2
  br i1 %9, label %62, label %10

10:                                               ; preds = %8
  %11 = icmp ult i64 %1, 201
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = shl i64 %1, 3
  %14 = tail call ptr @Perl_safesysmalloc(i64 noundef %13) #8
  br label %15

15:                                               ; preds = %10, %12
  %16 = phi ptr [ %14, %12 ], [ %5, %10 ]
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %16, %15 ], [ %23, %17 ]
  %19 = phi ptr [ %0, %15 ], [ %22, %17 ]
  %20 = phi i64 [ %1, %15 ], [ %21, %17 ]
  %21 = add i64 %20, -1
  %22 = getelementptr inbounds ptr, ptr %19, i64 1
  %23 = getelementptr inbounds ptr, ptr %18, i64 1
  store ptr %19, ptr %18, align 8, !tbaa !5
  %24 = icmp eq i64 %21, 0
  br i1 %24, label %25, label %17, !llvm.loop !9

25:                                               ; preds = %17
  %26 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !5
  store ptr %2, ptr @PL_sort_RealCmp, align 8, !tbaa !5
  %27 = and i32 %3, 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr @cmpindir, ptr @cmpindir_desc
  call fastcc void @S_qsortsvu(ptr noundef %16, i64 noundef %1, ptr noundef nonnull %29) #6
  %30 = ptrtoint ptr %0 to i64
  br label %31

31:                                               ; preds = %25, %56
  %32 = phi i64 [ %1, %25 ], [ %33, %56 ]
  %33 = add i64 %32, -1
  %34 = getelementptr inbounds ptr, ptr %16, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %36, %30
  %38 = ashr exact i64 %37, 3
  %39 = icmp eq i64 %33, %38
  br i1 %39, label %56, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds i8, ptr %0, i64 %37
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  br label %43

43:                                               ; preds = %43, %40
  %44 = phi i64 [ %38, %40 ], [ %52, %43 ]
  %45 = getelementptr inbounds ptr, ptr %16, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds ptr, ptr %0, i64 %44
  store ptr %47, ptr %48, align 8, !tbaa !5
  %49 = load ptr, ptr %45, align 8, !tbaa !5
  %50 = ptrtoint ptr %49 to i64
  %51 = sub i64 %50, %30
  %52 = ashr exact i64 %51, 3
  store ptr %48, ptr %45, align 8, !tbaa !5
  %53 = icmp eq i64 %52, %33
  br i1 %53, label %54, label %43, !llvm.loop !11

54:                                               ; preds = %43
  %55 = getelementptr inbounds ptr, ptr %0, i64 %33
  store ptr %42, ptr %55, align 8, !tbaa !5
  br label %56

56:                                               ; preds = %54, %31
  %57 = icmp eq i64 %33, 0
  br i1 %57, label %58, label %31, !llvm.loop !12

58:                                               ; preds = %56
  %59 = icmp eq ptr %16, %5
  br i1 %59, label %61, label %60

60:                                               ; preds = %58
  call void @Perl_safesysfree(ptr noundef nonnull %16) #8
  br label %61

61:                                               ; preds = %60, %58
  store ptr %26, ptr @PL_sort_RealCmp, align 8, !tbaa !5
  br label %62

62:                                               ; preds = %8, %61
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %5) #7
  br label %69

63:                                               ; preds = %4
  %64 = and i32 %3, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !5
  store ptr %2, ptr @PL_sort_RealCmp, align 8, !tbaa !5
  tail call fastcc void @S_qsortsvu(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @cmp_desc) #6
  store ptr %67, ptr @PL_sort_RealCmp, align 8, !tbaa !5
  br label %69

68:                                               ; preds = %63
  tail call fastcc void @S_qsortsvu(ptr noundef %0, i64 noundef %1, ptr noundef %2) #6
  br label %69

69:                                               ; preds = %62, %66, %68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_mergesortsv(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [200 x ptr], align 16
  %6 = alloca [3 x ptr], align 16
  %7 = alloca [60 x %struct.off_runs], align 16
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %7) #7
  %8 = icmp ult i64 %1, 2
  br i1 %8, label %277, label %9

9:                                                ; preds = %4
  %10 = and i32 %3, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !5
  store ptr %2, ptr @PL_sort_RealCmp, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %13, %12 ], [ null, %9 ]
  %16 = phi ptr [ @cmp_desc, %12 ], [ %2, %9 ]
  %17 = icmp ult i64 %1, 201
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = shl i64 %1, 3
  %20 = tail call ptr @Perl_safesysmalloc(i64 noundef %19) #8
  br label %21

21:                                               ; preds = %14, %18
  %22 = phi ptr [ %20, %18 ], [ %5, %14 ]
  %23 = call fastcc i64 @dynprep(ptr noundef %0, ptr noundef %22, i64 noundef %1, ptr noundef %16) #6
  %24 = getelementptr inbounds %struct.off_runs, ptr %7, i64 0, i32 1
  store i64 %23, ptr %24, align 8, !tbaa !13
  store i64 0, ptr %7, align 16, !tbaa !16
  %25 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 2
  store ptr %0, ptr %25, align 16, !tbaa !5
  store ptr %0, ptr %6, align 16, !tbaa !5
  %26 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 1
  store ptr %22, ptr %26, align 8, !tbaa !5
  %27 = ptrtoint ptr %22 to i64
  br label %28

28:                                               ; preds = %265, %21
  %29 = phi i64 [ %23, %21 ], [ %270, %265 ]
  %30 = phi i64 [ 0, %21 ], [ %266, %265 ]
  %31 = phi i32 [ 0, %21 ], [ %267, %265 ]
  %32 = phi ptr [ %7, %21 ], [ %268, %265 ]
  %33 = icmp eq i64 %29, 0
  br i1 %33, label %34, label %197

34:                                               ; preds = %28
  %35 = and i32 %31, 1
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = add nuw nsw i32 %35, 1
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  br label %43

43:                                               ; preds = %190, %34
  %44 = phi i32 [ %31, %34 ], [ %188, %190 ]
  %45 = phi ptr [ %32, %34 ], [ %191, %190 ]
  %46 = phi ptr [ %38, %34 ], [ %47, %190 ]
  %47 = phi ptr [ %42, %34 ], [ %46, %190 ]
  %48 = load i64, ptr %45, align 8, !tbaa !16
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = getelementptr inbounds ptr, ptr %47, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = ptrtoint ptr %51 to i64
  %53 = ptrtoint ptr %47 to i64
  %54 = sub i64 %52, %53
  %55 = getelementptr inbounds i8, ptr %46, i64 %54
  %56 = load ptr, ptr %51, align 8, !tbaa !5
  %57 = ptrtoint ptr %56 to i64
  %58 = sub i64 %57, %53
  %59 = getelementptr inbounds i8, ptr %46, i64 %58
  %60 = icmp ult ptr %49, %55
  %61 = icmp slt i64 %54, %58
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %162

63:                                               ; preds = %43, %151
  %64 = phi ptr [ %158, %151 ], [ %50, %43 ]
  %65 = phi ptr [ %155, %151 ], [ %55, %43 ]
  %66 = phi ptr [ %154, %151 ], [ %49, %43 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  %68 = load ptr, ptr %65, align 8, !tbaa !5
  %69 = call i32 %16(ptr noundef %67, ptr noundef %68) #8
  %70 = icmp slt i32 %69, 1
  %71 = sext i1 %70 to i32
  %72 = select i1 %70, ptr %55, ptr %59
  %73 = select i1 %70, ptr %66, ptr %65
  %74 = select i1 %70, ptr %65, ptr %66
  %75 = getelementptr inbounds ptr, ptr %73, i64 1
  %76 = icmp ult ptr %75, %72
  br i1 %76, label %77, label %82

77:                                               ; preds = %63
  %78 = load ptr, ptr %74, align 8, !tbaa !5
  %79 = load ptr, ptr %75, align 8, !tbaa !5
  %80 = call i32 %16(ptr noundef %78, ptr noundef %79) #8
  %81 = icmp sgt i32 %80, %71
  br i1 %81, label %98, label %107

82:                                               ; preds = %98, %63
  %83 = phi ptr [ %73, %63 ], [ %101, %98 ]
  %84 = getelementptr inbounds ptr, ptr %72, i64 -1
  %85 = icmp ugt ptr %84, %83
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load ptr, ptr %74, align 8, !tbaa !5
  %88 = load ptr, ptr %84, align 8, !tbaa !5
  %89 = call i32 %16(ptr noundef %87, ptr noundef %88) #8
  %90 = icmp sgt i32 %89, %71
  br i1 %90, label %91, label %107

91:                                               ; preds = %86, %82
  br label %107

92:                                               ; preds = %98
  %93 = add nuw nsw i64 %99, 1
  %94 = load ptr, ptr %74, align 8, !tbaa !5
  %95 = load ptr, ptr %105, align 8, !tbaa !5
  %96 = call i32 %16(ptr noundef %94, ptr noundef %95) #8
  %97 = icmp sgt i32 %96, %71
  br i1 %97, label %98, label %107

98:                                               ; preds = %77, %92
  %99 = phi i64 [ %93, %92 ], [ 0, %77 ]
  %100 = phi i64 [ %104, %92 ], [ 1, %77 ]
  %101 = phi ptr [ %105, %92 ], [ %75, %77 ]
  %102 = icmp ugt i64 %99, 4
  %103 = zext i1 %102 to i64
  %104 = shl nsw i64 %100, %103
  %105 = getelementptr inbounds ptr, ptr %101, i64 %104
  %106 = icmp ult ptr %105, %72
  br i1 %106, label %92, label %82

107:                                              ; preds = %92, %77, %86, %91
  %108 = phi ptr [ %72, %91 ], [ %84, %86 ], [ %75, %77 ], [ %105, %92 ]
  %109 = phi ptr [ %84, %91 ], [ %83, %86 ], [ %73, %77 ], [ %101, %92 ]
  %110 = getelementptr inbounds ptr, ptr %109, i64 1
  %111 = icmp ult ptr %110, %108
  br i1 %111, label %112, label %130

112:                                              ; preds = %107, %112
  %113 = phi ptr [ %128, %112 ], [ %110, %107 ]
  %114 = phi ptr [ %127, %112 ], [ %108, %107 ]
  %115 = ptrtoint ptr %114 to i64
  %116 = ptrtoint ptr %113 to i64
  %117 = sub i64 %115, %116
  %118 = ashr exact i64 %117, 3
  %119 = add nsw i64 %118, -1
  %120 = sdiv i64 %119, 2
  %121 = getelementptr inbounds ptr, ptr %113, i64 %120
  %122 = load ptr, ptr %74, align 8, !tbaa !5
  %123 = load ptr, ptr %121, align 8, !tbaa !5
  %124 = call i32 %16(ptr noundef %122, ptr noundef %123) #8
  %125 = icmp sgt i32 %124, %71
  %126 = getelementptr inbounds ptr, ptr %121, i64 1
  %127 = select i1 %125, ptr %114, ptr %121
  %128 = select i1 %125, ptr %126, ptr %113
  %129 = icmp ult ptr %128, %127
  br i1 %129, label %112, label %130, !llvm.loop !17

130:                                              ; preds = %112, %107
  %131 = phi ptr [ %108, %107 ], [ %127, %112 ]
  %132 = icmp eq ptr %74, %66
  br i1 %132, label %133, label %142

133:                                              ; preds = %130, %133
  %134 = phi ptr [ %136, %133 ], [ %65, %130 ]
  %135 = phi ptr [ %138, %133 ], [ %64, %130 ]
  %136 = getelementptr inbounds ptr, ptr %134, i64 1
  %137 = load ptr, ptr %134, align 8, !tbaa !5
  %138 = getelementptr inbounds ptr, ptr %135, i64 1
  store ptr %137, ptr %135, align 8, !tbaa !5
  %139 = icmp ult ptr %136, %131
  br i1 %139, label %133, label %140, !llvm.loop !18

140:                                              ; preds = %133
  %141 = getelementptr inbounds ptr, ptr %66, i64 1
  br label %151

142:                                              ; preds = %130, %142
  %143 = phi ptr [ %145, %142 ], [ %66, %130 ]
  %144 = phi ptr [ %147, %142 ], [ %64, %130 ]
  %145 = getelementptr inbounds ptr, ptr %143, i64 1
  %146 = load ptr, ptr %143, align 8, !tbaa !5
  %147 = getelementptr inbounds ptr, ptr %144, i64 1
  store ptr %146, ptr %144, align 8, !tbaa !5
  %148 = icmp ult ptr %145, %131
  br i1 %148, label %142, label %149, !llvm.loop !19

149:                                              ; preds = %142
  %150 = getelementptr inbounds ptr, ptr %65, i64 1
  br label %151

151:                                              ; preds = %149, %140
  %152 = phi ptr [ %65, %149 ], [ %66, %140 ]
  %153 = phi ptr [ %147, %149 ], [ %138, %140 ]
  %154 = phi ptr [ %145, %149 ], [ %141, %140 ]
  %155 = phi ptr [ %150, %149 ], [ %136, %140 ]
  %156 = phi ptr [ %144, %149 ], [ %135, %140 ]
  %157 = load ptr, ptr %152, align 8, !tbaa !5
  store ptr %157, ptr %153, align 8, !tbaa !5
  %158 = getelementptr inbounds ptr, ptr %156, i64 2
  %159 = icmp ult ptr %154, %55
  %160 = icmp ult ptr %155, %59
  %161 = select i1 %159, i1 %160, i1 false
  br i1 %161, label %63, label %162, !llvm.loop !20

162:                                              ; preds = %151, %43
  %163 = phi ptr [ %49, %43 ], [ %154, %151 ]
  %164 = phi ptr [ %55, %43 ], [ %155, %151 ]
  %165 = phi ptr [ %50, %43 ], [ %158, %151 ]
  %166 = phi i1 [ %61, %43 ], [ %160, %151 ]
  %167 = icmp eq ptr %163, %55
  br i1 %167, label %168, label %176

168:                                              ; preds = %162
  br i1 %166, label %169, label %183

169:                                              ; preds = %168, %169
  %170 = phi ptr [ %172, %169 ], [ %164, %168 ]
  %171 = phi ptr [ %174, %169 ], [ %165, %168 ]
  %172 = getelementptr inbounds ptr, ptr %170, i64 1
  %173 = load ptr, ptr %170, align 8, !tbaa !5
  %174 = getelementptr inbounds ptr, ptr %171, i64 1
  store ptr %173, ptr %171, align 8, !tbaa !5
  %175 = icmp ult ptr %172, %59
  br i1 %175, label %169, label %183, !llvm.loop !21

176:                                              ; preds = %162, %176
  %177 = phi ptr [ %179, %176 ], [ %163, %162 ]
  %178 = phi ptr [ %181, %176 ], [ %165, %162 ]
  %179 = getelementptr inbounds ptr, ptr %177, i64 1
  %180 = load ptr, ptr %177, align 8, !tbaa !5
  %181 = getelementptr inbounds ptr, ptr %178, i64 1
  store ptr %180, ptr %178, align 8, !tbaa !5
  %182 = icmp ult ptr %179, %55
  br i1 %182, label %176, label %183, !llvm.loop !22

183:                                              ; preds = %176, %169, %168
  %184 = phi ptr [ %165, %168 ], [ %174, %169 ], [ %181, %176 ]
  %185 = ptrtoint ptr %184 to i64
  %186 = sub i64 %185, %53
  %187 = getelementptr inbounds i8, ptr %46, i64 %186
  store ptr %187, ptr %49, align 8, !tbaa !5
  %188 = add nsw i32 %44, -1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %271, label %190

190:                                              ; preds = %183
  %191 = getelementptr inbounds %struct.off_runs, ptr %45, i64 -1
  %192 = getelementptr %struct.off_runs, ptr %45, i64 -1, i32 1
  %193 = load i64, ptr %192, align 8, !tbaa !13
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %43, label %195, !llvm.loop !23

195:                                              ; preds = %190
  %196 = ashr exact i64 %58, 3
  br label %197

197:                                              ; preds = %195, %28
  %198 = phi i64 [ %30, %28 ], [ %196, %195 ]
  %199 = phi i32 [ %31, %28 ], [ %188, %195 ]
  %200 = phi ptr [ %32, %28 ], [ %191, %195 ]
  %201 = phi i64 [ %29, %28 ], [ %193, %195 ]
  %202 = getelementptr inbounds %struct.off_runs, ptr %200, i64 0, i32 1
  store i64 0, ptr %202, align 8, !tbaa !13
  %203 = icmp sgt i64 %201, 2
  br i1 %203, label %204, label %214

204:                                              ; preds = %197, %204
  %205 = phi i64 [ %212, %204 ], [ %201, %197 ]
  %206 = phi ptr [ %209, %204 ], [ %200, %197 ]
  %207 = phi i32 [ %208, %204 ], [ %199, %197 ]
  %208 = add nsw i32 %207, 1
  %209 = getelementptr inbounds %struct.off_runs, ptr %206, i64 1
  store i64 %198, ptr %209, align 8, !tbaa !16
  %210 = lshr i64 %205, 1
  %211 = getelementptr inbounds %struct.off_runs, ptr %206, i64 1, i32 1
  store i64 %210, ptr %211, align 8, !tbaa !13
  %212 = sub nsw i64 %205, %210
  %213 = icmp sgt i64 %212, 2
  br i1 %213, label %204, label %214, !llvm.loop !24

214:                                              ; preds = %204, %197
  %215 = phi i32 [ %199, %197 ], [ %208, %204 ]
  %216 = phi ptr [ %200, %197 ], [ %209, %204 ]
  %217 = phi i64 [ %201, %197 ], [ %212, %204 ]
  %218 = and i32 %215, 1
  %219 = icmp eq i64 %217, 1
  br i1 %219, label %220, label %240

220:                                              ; preds = %214
  %221 = icmp eq i32 %218, 0
  br i1 %221, label %238, label %222

222:                                              ; preds = %220
  %223 = getelementptr ptr, ptr %0, i64 %198
  %224 = getelementptr inbounds ptr, ptr %22, i64 %198
  %225 = load ptr, ptr %224, align 8, !tbaa !5
  %226 = ptrtoint ptr %225 to i64
  %227 = sub i64 %226, %27
  %228 = getelementptr inbounds i8, ptr %0, i64 %227
  br label %229

229:                                              ; preds = %229, %222
  %230 = phi ptr [ %223, %222 ], [ %232, %229 ]
  %231 = phi ptr [ %224, %222 ], [ %234, %229 ]
  %232 = getelementptr inbounds ptr, ptr %230, i64 1
  %233 = load ptr, ptr %230, align 8, !tbaa !5
  %234 = getelementptr inbounds ptr, ptr %231, i64 1
  store ptr %233, ptr %231, align 8, !tbaa !5
  %235 = icmp ult ptr %232, %228
  br i1 %235, label %229, label %236, !llvm.loop !25

236:                                              ; preds = %229
  %237 = ashr exact i64 %227, 3
  store ptr %228, ptr %223, align 8, !tbaa !5
  br label %265

238:                                              ; preds = %220
  %239 = icmp eq i32 %215, 0
  br i1 %239, label %271, label %265

240:                                              ; preds = %214
  %241 = add nsw i32 %215, 1
  %242 = getelementptr inbounds %struct.off_runs, ptr %216, i64 1
  store i64 %198, ptr %242, align 8, !tbaa !16
  %243 = getelementptr inbounds %struct.off_runs, ptr %216, i64 1, i32 1
  store i64 0, ptr %243, align 8, !tbaa !13
  %244 = icmp eq i32 %218, 0
  br i1 %244, label %245, label %265

245:                                              ; preds = %240
  %246 = getelementptr ptr, ptr %0, i64 %198
  %247 = getelementptr inbounds ptr, ptr %22, i64 %198
  %248 = load ptr, ptr %247, align 8, !tbaa !5
  %249 = ptrtoint ptr %248 to i64
  %250 = sub i64 %249, %27
  %251 = ashr exact i64 %250, 3
  %252 = load ptr, ptr %248, align 8, !tbaa !5
  %253 = ptrtoint ptr %252 to i64
  %254 = sub i64 %253, %27
  %255 = getelementptr inbounds i8, ptr %0, i64 %254
  br label %256

256:                                              ; preds = %256, %245
  %257 = phi ptr [ %246, %245 ], [ %259, %256 ]
  %258 = phi ptr [ %247, %245 ], [ %261, %256 ]
  %259 = getelementptr inbounds ptr, ptr %257, i64 1
  %260 = load ptr, ptr %257, align 8, !tbaa !5
  %261 = getelementptr inbounds ptr, ptr %258, i64 1
  store ptr %260, ptr %258, align 8, !tbaa !5
  %262 = icmp ult ptr %259, %255
  br i1 %262, label %256, label %263, !llvm.loop !26

263:                                              ; preds = %256
  %264 = getelementptr inbounds i8, ptr %0, i64 %250
  store ptr %264, ptr %246, align 8, !tbaa !5
  store ptr %255, ptr %264, align 8, !tbaa !5
  br label %265

265:                                              ; preds = %238, %236, %263, %240
  %266 = phi i64 [ %237, %236 ], [ %198, %240 ], [ %251, %263 ], [ %198, %238 ]
  %267 = phi i32 [ %215, %236 ], [ %241, %240 ], [ %241, %263 ], [ %215, %238 ]
  %268 = phi ptr [ %216, %236 ], [ %242, %240 ], [ %242, %263 ], [ %216, %238 ]
  %269 = getelementptr inbounds %struct.off_runs, ptr %268, i64 0, i32 1
  %270 = load i64, ptr %269, align 8, !tbaa !13
  br label %28

271:                                              ; preds = %238, %183
  %272 = icmp eq ptr %22, %5
  br i1 %272, label %274, label %273

273:                                              ; preds = %271
  call void @Perl_safesysfree(ptr noundef %22) #8
  br label %274

274:                                              ; preds = %273, %271
  %275 = icmp eq i32 %3, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %274
  store ptr %15, ptr @PL_sort_RealCmp, align 8, !tbaa !5
  br label %277

277:                                              ; preds = %274, %276, %4
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %5) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_sort() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %4 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %7 = load i32, ptr %5, align 4, !tbaa !27
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = ptrtoint ptr %9 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #7
  %12 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.op, ptr %12, i64 0, i32 5
  %14 = load i8, ptr %13, align 2, !tbaa !29
  %15 = and i8 %14, 3
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %0
  %18 = zext nneg i8 %15 to i32
  br label %24

19:                                               ; preds = %0
  %20 = tail call i32 @Perl_block_gimme() #8
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 5
  %23 = load i8, ptr %22, align 2, !tbaa !29
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i8 [ %14, %17 ], [ %23, %19 ]
  %26 = phi ptr [ %12, %17 ], [ %21, %19 ]
  %27 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %28 = load ptr, ptr %26, align 8, !tbaa !31
  %29 = getelementptr inbounds %struct.op, ptr %26, i64 0, i32 6
  %30 = load i8, ptr %29, align 1, !tbaa !32
  %31 = zext i8 %30 to i32
  %32 = lshr i32 %31, 4
  %33 = and i32 %32, 1
  %34 = lshr i32 %31, 3
  %35 = and i32 %34, 4
  %36 = or disjoint i32 %33, %35
  %37 = lshr i32 %31, 5
  %38 = and i32 %37, 2
  %39 = or disjoint i32 %36, %38
  %40 = icmp eq i32 %27, 3
  br i1 %40, label %54, label %41

41:                                               ; preds = %24
  %42 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %43 = ptrtoint ptr %42 to i64
  %44 = sub i64 %43, %10
  %45 = icmp slt i64 %44, 8
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = tail call ptr @Perl_stack_grow(ptr noundef %9, ptr noundef %9, i64 noundef 1) #8
  %48 = load ptr, ptr @PL_op, align 8, !tbaa !5
  br label %49

49:                                               ; preds = %41, %46
  %50 = phi ptr [ %48, %46 ], [ %26, %41 ]
  %51 = phi ptr [ %47, %46 ], [ %9, %41 ]
  %52 = getelementptr inbounds ptr, ptr %51, i64 1
  store ptr @PL_sv_undef, ptr %52, align 8, !tbaa !5
  store ptr %52, ptr @PL_stack_sp, align 8, !tbaa !5
  %53 = load ptr, ptr %50, align 8, !tbaa !31
  br label %812

54:                                               ; preds = %24
  tail call void @Perl_push_scope() #8
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_sortcop) #8
  %55 = and i8 %25, 64
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %164, label %57

57:                                               ; preds = %54
  %58 = icmp sgt i8 %25, -1
  br i1 %58, label %66, label %59

59:                                               ; preds = %57
  %60 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %61 = getelementptr inbounds %struct.listop, ptr %60, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !33
  %63 = getelementptr inbounds %struct.op, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = load ptr, ptr %64, align 8, !tbaa !31
  store ptr %65, ptr @PL_sortcop, align 8, !tbaa !5
  br label %165

66:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %67 = load ptr, ptr %11, align 8, !tbaa !5
  %68 = call ptr @Perl_sv_2cv(ptr noundef %67, ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef 1) #8
  br label %69

69:                                               ; preds = %145, %66
  %70 = phi i1 [ true, %66 ], [ false, %145 ]
  %71 = phi i8 [ 0, %66 ], [ %107, %145 ]
  %72 = phi ptr [ %68, %66 ], [ %146, %145 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %106, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.cv, ptr %72, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !27
  %77 = and i32 %76, 1024
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %74
  %80 = and i32 %76, 2098176
  %81 = icmp eq i32 %80, 1024
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !36
  br label %87

85:                                               ; preds = %79
  %86 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %72, ptr noundef null, i32 noundef 34) #8
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi ptr [ %84, %82 ], [ %86, %85 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %88, ptr noundef nonnull dereferenceable(3) @.str) #9
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i8 1, i8 %71
  br label %94

94:                                               ; preds = %90, %87, %74
  %95 = phi i8 [ %93, %90 ], [ %71, %87 ], [ %71, %74 ]
  %96 = load ptr, ptr %72, align 8, !tbaa !37
  %97 = getelementptr inbounds %struct.xpvcv, ptr %96, i64 0, i32 12
  %98 = load i32, ptr %97, align 4, !tbaa !39
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  %101 = getelementptr inbounds %struct.xpvcv, ptr %96, i64 0, i32 6
  %102 = load ptr, ptr %101, align 8, !tbaa !36
  %103 = icmp eq ptr %102, null
  br i1 %100, label %105, label %104

104:                                              ; preds = %94
  br i1 %103, label %106, label %161

105:                                              ; preds = %94
  br i1 %103, label %106, label %156

106:                                              ; preds = %104, %69, %105
  %107 = phi i8 [ %95, %105 ], [ %71, %69 ], [ %95, %104 ]
  %108 = load ptr, ptr %1, align 8, !tbaa !5
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load ptr, ptr %72, align 8, !tbaa !37
  %112 = getelementptr inbounds %struct.xpvcv, ptr %111, i64 0, i32 12
  %113 = load i32, ptr %112, align 4, !tbaa !39
  %114 = and i32 %113, 128
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %110
  %117 = call fastcc ptr @S_CvGV(ptr noundef nonnull %72) #6
  store ptr %117, ptr %1, align 8, !tbaa !5
  %118 = icmp eq ptr %117, null
  br i1 %118, label %154, label %119

119:                                              ; preds = %116, %106
  %120 = phi ptr [ %117, %116 ], [ %108, %106 ]
  br i1 %70, label %121, label %150

121:                                              ; preds = %119
  %122 = load ptr, ptr %120, align 8, !tbaa !41
  %123 = getelementptr inbounds %struct.xpvgv, ptr %122, i64 0, i32 5
  %124 = load ptr, ptr %123, align 8, !tbaa !36
  %125 = getelementptr inbounds %struct.xpvgv, ptr %122, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !36
  %127 = getelementptr inbounds %struct.hek, ptr %126, i64 0, i32 2
  %128 = getelementptr inbounds %struct.hek, ptr %126, i64 0, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !43
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %127, i64 %130
  %132 = getelementptr inbounds i8, ptr %131, i64 1
  %133 = load i8, ptr %132, align 1, !tbaa !36
  %134 = and i8 %133, 1
  %135 = zext nneg i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 29
  %137 = call ptr @Perl_gv_autoload_pvn(ptr noundef %124, ptr noundef nonnull %127, i64 noundef %130, i32 noundef %136) #8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %150, label %139

139:                                              ; preds = %121
  %140 = getelementptr inbounds %struct.gv, ptr %137, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !36
  %142 = getelementptr inbounds %struct.gp, ptr %141, i64 0, i32 3
  %143 = load i32, ptr %142, align 8, !tbaa !45
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %139, %147
  %146 = phi ptr [ null, %139 ], [ %149, %147 ]
  br label %69

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.gp, ptr %141, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !47
  br label %145

150:                                              ; preds = %121, %119
  %151 = call ptr @Perl_sv_newmortal() #8
  %152 = load ptr, ptr %1, align 8, !tbaa !5
  call void @Perl_gv_efullname4(ptr noundef %151, ptr noundef %152, ptr noundef null, i1 noundef zeroext true) #8
  %153 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.1, ptr noundef %151) #8
  br label %159

154:                                              ; preds = %116, %110
  %155 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.2) #8
  br label %159

156:                                              ; preds = %105
  %157 = getelementptr inbounds %struct.xpvcv, ptr %96, i64 0, i32 5
  %158 = load ptr, ptr %157, align 8, !tbaa !36
  br label %161

159:                                              ; preds = %150, %154
  %160 = phi ptr [ %155, %154 ], [ %153, %150 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  br label %812

161:                                              ; preds = %104, %156
  %162 = phi i32 [ 0, %156 ], [ 1, %104 ]
  %163 = phi ptr [ %158, %156 ], [ %72, %104 ]
  store ptr %163, ptr @PL_sortcop, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  br label %165

164:                                              ; preds = %54
  store ptr null, ptr @PL_sortcop, align 8, !tbaa !5
  br label %165

165:                                              ; preds = %161, %59, %164
  %166 = phi i32 [ 0, %59 ], [ %162, %161 ], [ 0, %164 ]
  %167 = phi i8 [ 0, %59 ], [ %95, %161 ], [ 0, %164 ]
  %168 = phi ptr [ null, %59 ], [ %72, %161 ], [ null, %164 ]
  %169 = phi ptr [ %9, %59 ], [ %11, %161 ], [ %9, %164 ]
  %170 = and i32 %31, 8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %239, label %172

172:                                              ; preds = %165
  %173 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %174 = getelementptr inbounds i32, ptr %173, i64 -1
  store ptr %174, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %175 = load ptr, ptr %3, align 8, !tbaa !5
  %176 = getelementptr inbounds %struct.sv, ptr %175, i64 0, i32 2
  %177 = load i32, ptr %176, align 4, !tbaa !27
  %178 = and i32 %177, 8388608
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %172
  %181 = call i32 @Perl_mg_size(ptr noundef nonnull %175) #8
  %182 = sext i32 %181 to i64
  %183 = load i32, ptr %176, align 4, !tbaa !48
  br label %188

184:                                              ; preds = %172
  %185 = load ptr, ptr %175, align 8, !tbaa !50
  %186 = getelementptr inbounds %struct.xpvav, ptr %185, i64 0, i32 2
  %187 = load i64, ptr %186, align 8, !tbaa !51
  br label %188

188:                                              ; preds = %184, %180
  %189 = phi i32 [ %183, %180 ], [ %177, %184 ]
  %190 = phi i64 [ %182, %180 ], [ %187, %184 ]
  %191 = add i64 %190, 1
  %192 = and i32 %189, 14680064
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %230, label %194

194:                                              ; preds = %188
  %195 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %196 = ptrtoint ptr %195 to i64
  %197 = ptrtoint ptr %3 to i64
  %198 = sub i64 %196, %197
  %199 = ashr exact i64 %198, 3
  %200 = icmp sgt i64 %199, %190
  br i1 %200, label %209, label %201

201:                                              ; preds = %194
  %202 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %203 = ptrtoint ptr %169 to i64
  %204 = ptrtoint ptr %202 to i64
  %205 = sub i64 %203, %204
  %206 = call ptr @Perl_stack_grow(ptr noundef nonnull %3, ptr noundef nonnull %3, i64 noundef %191) #8
  %207 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %208 = getelementptr inbounds i8, ptr %207, i64 %205
  br label %209

209:                                              ; preds = %194, %201
  %210 = phi ptr [ %208, %201 ], [ %169, %194 ]
  %211 = phi ptr [ %206, %201 ], [ %3, %194 ]
  %212 = icmp slt i64 %190, 0
  br i1 %212, label %225, label %213

213:                                              ; preds = %209, %220
  %214 = phi ptr [ %222, %220 ], [ %211, %209 ]
  %215 = phi i64 [ %223, %220 ], [ 0, %209 ]
  %216 = call ptr @Perl_av_fetch(ptr noundef %175, i64 noundef %215, i32 noundef 0) #8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %220, label %218

218:                                              ; preds = %213
  %219 = load ptr, ptr %216, align 8, !tbaa !5
  br label %220

220:                                              ; preds = %213, %218
  %221 = phi ptr [ %219, %218 ], [ null, %213 ]
  %222 = getelementptr inbounds ptr, ptr %214, i64 1
  store ptr %221, ptr %214, align 8, !tbaa !5
  %223 = add nuw i64 %215, 1
  %224 = icmp eq i64 %215, %190
  br i1 %224, label %225, label %213, !llvm.loop !53

225:                                              ; preds = %220, %209
  %226 = phi ptr [ %211, %209 ], [ %222, %220 ]
  %227 = getelementptr inbounds ptr, ptr %226, i64 -1
  %228 = sub i64 0, %190
  %229 = getelementptr inbounds ptr, ptr %227, i64 %228
  br label %245

230:                                              ; preds = %188
  %231 = and i32 %189, 134283264
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %230
  call void @Perl_croak_no_modify() #8
  br label %236

234:                                              ; preds = %230
  %235 = or disjoint i32 %189, 134283264
  store i32 %235, ptr %176, align 4, !tbaa !48
  call void @Perl_save_pushptr(ptr noundef nonnull %175, i32 noundef 21) #8
  br label %236

236:                                              ; preds = %234, %233
  %237 = getelementptr inbounds %struct.av, ptr %175, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !36
  br label %245

239:                                              ; preds = %165
  %240 = getelementptr inbounds ptr, ptr %169, i64 1
  %241 = ptrtoint ptr %3 to i64
  %242 = ptrtoint ptr %169 to i64
  %243 = sub i64 %241, %242
  %244 = ashr exact i64 %243, 3
  br label %245

245:                                              ; preds = %225, %236, %239
  %246 = phi i1 [ true, %225 ], [ false, %236 ], [ true, %239 ]
  %247 = phi ptr [ %175, %225 ], [ %175, %236 ], [ null, %239 ]
  %248 = phi i64 [ %191, %225 ], [ %191, %236 ], [ %244, %239 ]
  %249 = phi ptr [ %229, %225 ], [ %238, %236 ], [ %240, %239 ]
  %250 = phi ptr [ %229, %225 ], [ %238, %236 ], [ %11, %239 ]
  %251 = phi ptr [ %210, %225 ], [ %169, %236 ], [ %169, %239 ]
  %252 = phi ptr [ %227, %225 ], [ %3, %236 ], [ %3, %239 ]
  %253 = load ptr, ptr @PL_sortcop, align 8
  %254 = icmp ne ptr %253, null
  %255 = select i1 %246, i1 %254, i1 false
  %256 = icmp sgt i64 %248, 0
  br i1 %256, label %257, label %351

257:                                              ; preds = %245
  %258 = and i32 %31, 1
  %259 = icmp eq i32 %258, 0
  %260 = and i32 %31, 2
  %261 = icmp eq i32 %260, 0
  br label %262

262:                                              ; preds = %257, %344
  %263 = phi ptr [ %250, %257 ], [ %348, %344 ]
  %264 = phi ptr [ %249, %257 ], [ %269, %344 ]
  %265 = phi i64 [ %248, %257 ], [ %347, %344 ]
  %266 = phi i64 [ %248, %257 ], [ %349, %344 ]
  %267 = phi i32 [ 0, %257 ], [ %346, %344 ]
  %268 = phi i32 [ 1, %257 ], [ %345, %344 ]
  %269 = getelementptr inbounds ptr, ptr %264, i64 1
  %270 = load ptr, ptr %264, align 8, !tbaa !5
  store ptr %270, ptr %263, align 8, !tbaa !5
  %271 = icmp eq ptr %270, null
  br i1 %271, label %342, label %272

272:                                              ; preds = %262
  br i1 %255, label %273, label %280

273:                                              ; preds = %272
  %274 = getelementptr inbounds %struct.sv, ptr %270, i64 0, i32 2
  %275 = load i32, ptr %274, align 4, !tbaa !54
  %276 = and i32 %275, 131072
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %273
  %279 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %270, i32 noundef 1538) #8
  store ptr %279, ptr %263, align 8, !tbaa !5
  br label %280

280:                                              ; preds = %278, %273, %272
  %281 = phi ptr [ %279, %278 ], [ %270, %273 ], [ %270, %272 ]
  %282 = getelementptr inbounds %struct.sv, ptr %281, i64 0, i32 2
  %283 = load i32, ptr %282, align 4, !tbaa !54
  %284 = and i32 %283, -524289
  store i32 %284, ptr %282, align 4, !tbaa !54
  %285 = load ptr, ptr @PL_sortcop, align 8, !tbaa !5
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %338

287:                                              ; preds = %280
  br i1 %259, label %311, label %288

288:                                              ; preds = %287
  br i1 %261, label %294, label %289

289:                                              ; preds = %288
  %290 = and i32 %283, 256
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %316

292:                                              ; preds = %289
  %293 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %281, i32 noundef 8194) #8
  br label %316

294:                                              ; preds = %288
  %295 = and i32 %283, 512
  %296 = icmp ne i32 %295, 0
  %297 = and i32 %283, -2147483392
  %298 = icmp eq i32 %297, 256
  %299 = or i1 %296, %298
  br i1 %299, label %302, label %300

300:                                              ; preds = %294
  %301 = call double @Perl_sv_2nv_flags(ptr noundef nonnull %281, i32 noundef 8194) #8
  br label %302

302:                                              ; preds = %300, %294
  %303 = icmp eq i32 %268, 0
  br i1 %303, label %316, label %304

304:                                              ; preds = %302
  %305 = load ptr, ptr %263, align 8, !tbaa !5
  %306 = getelementptr inbounds %struct.sv, ptr %305, i64 0, i32 2
  %307 = load i32, ptr %306, align 4, !tbaa !54
  %308 = and i32 %307, -2147483392
  %309 = icmp eq i32 %308, 256
  %310 = zext i1 %309 to i32
  br label %316

311:                                              ; preds = %287
  %312 = and i32 %283, 1024
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %281, ptr noundef null, i32 noundef 8226) #8
  br label %316

316:                                              ; preds = %304, %311, %314, %292, %289, %302
  %317 = phi i32 [ %268, %289 ], [ %268, %292 ], [ 0, %302 ], [ %268, %311 ], [ %268, %314 ], [ %310, %304 ]
  %318 = load ptr, ptr %263, align 8, !tbaa !5
  %319 = getelementptr inbounds %struct.sv, ptr %318, i64 0, i32 2
  %320 = load i32, ptr %319, align 4, !tbaa !54
  %321 = and i32 %320, 2048
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %338, label %323

323:                                              ; preds = %316
  %324 = getelementptr inbounds %struct.sv, ptr %318, i64 0, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !36
  %326 = getelementptr inbounds %struct.sv, ptr %325, i64 0, i32 2
  %327 = load i32, ptr %326, align 4, !tbaa !54
  %328 = and i32 %327, 1048576
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %338, label %330

330:                                              ; preds = %323
  %331 = load ptr, ptr %325, align 8, !tbaa !56
  %332 = load ptr, ptr %331, align 8, !tbaa !57
  %333 = getelementptr inbounds %struct.hv, ptr %332, i64 0, i32 2
  %334 = load i32, ptr %333, align 4, !tbaa !59
  %335 = and i32 %334, 268435456
  %336 = icmp eq i32 %335, 0
  %337 = select i1 %336, i32 %267, i32 1
  br label %338

338:                                              ; preds = %330, %316, %323, %280
  %339 = phi i32 [ %268, %280 ], [ %317, %323 ], [ %317, %316 ], [ %317, %330 ]
  %340 = phi i32 [ %267, %280 ], [ %267, %323 ], [ %267, %316 ], [ %337, %330 ]
  %341 = getelementptr inbounds ptr, ptr %263, i64 1
  br label %344

342:                                              ; preds = %262
  %343 = add nsw i64 %265, -1
  br label %344

344:                                              ; preds = %338, %342
  %345 = phi i32 [ %339, %338 ], [ %268, %342 ]
  %346 = phi i32 [ %340, %338 ], [ %267, %342 ]
  %347 = phi i64 [ %265, %338 ], [ %343, %342 ]
  %348 = phi ptr [ %341, %338 ], [ %263, %342 ]
  %349 = add nsw i64 %266, -1
  %350 = icmp sgt i64 %266, 1
  br i1 %350, label %262, label %351, !llvm.loop !61

351:                                              ; preds = %344, %245
  %352 = phi i32 [ 1, %245 ], [ %345, %344 ]
  %353 = phi i32 [ 0, %245 ], [ %346, %344 ]
  %354 = phi i64 [ %248, %245 ], [ %347, %344 ]
  %355 = phi ptr [ %250, %245 ], [ %348, %344 ]
  br i1 %246, label %360, label %356

356:                                              ; preds = %351
  %357 = add nsw i64 %354, -1
  %358 = load ptr, ptr %247, align 8, !tbaa !50
  %359 = getelementptr inbounds %struct.xpvav, ptr %358, i64 0, i32 2
  store i64 %357, ptr %359, align 8, !tbaa !51
  br label %360

360:                                              ; preds = %356, %351
  %361 = icmp sgt i64 %354, 1
  br i1 %361, label %362, label %769

362:                                              ; preds = %360
  %363 = load ptr, ptr @PL_sortcop, align 8, !tbaa !5
  %364 = icmp eq ptr %363, null
  br i1 %364, label %710, label %365

365:                                              ; preds = %362
  %366 = load ptr, ptr @PL_top_env, align 8, !tbaa !5
  %367 = getelementptr inbounds %struct.jmpenv, ptr %366, i64 0, i32 3
  %368 = load i8, ptr %367, align 4, !tbaa !62, !range !65, !noundef !66
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #8
  %369 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !67
  store i64 %369, ptr @PL_tmps_floor, align 8, !tbaa !67
  %370 = load ptr, ptr @PL_op, align 8, !tbaa !5
  call void @Perl_save_pushptr(ptr noundef %370, i32 noundef 18) #8
  %371 = load ptr, ptr @PL_top_env, align 8, !tbaa !5
  %372 = getelementptr inbounds %struct.jmpenv, ptr %371, i64 0, i32 3
  store i8 1, ptr %372, align 4, !tbaa !62
  %373 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !5
  %374 = getelementptr inbounds %struct.stackinfo, ptr %373, i64 0, i32 3
  %375 = load ptr, ptr %374, align 8, !tbaa !68
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %382

377:                                              ; preds = %365
  %378 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #8
  %379 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !5
  %380 = getelementptr inbounds %struct.stackinfo, ptr %378, i64 0, i32 2
  store ptr %379, ptr %380, align 8, !tbaa !70
  %381 = getelementptr inbounds %struct.stackinfo, ptr %379, i64 0, i32 3
  store ptr %378, ptr %381, align 8, !tbaa !68
  br label %382

382:                                              ; preds = %377, %365
  %383 = phi ptr [ %375, %365 ], [ %378, %377 ]
  %384 = getelementptr inbounds %struct.stackinfo, ptr %383, i64 0, i32 6
  store i32 3, ptr %384, align 8, !tbaa !71
  %385 = getelementptr inbounds %struct.stackinfo, ptr %383, i64 0, i32 4
  store i32 -1, ptr %385, align 8, !tbaa !72
  %386 = load ptr, ptr %383, align 8, !tbaa !73
  %387 = load ptr, ptr %386, align 8, !tbaa !50
  %388 = getelementptr inbounds %struct.xpvav, ptr %387, i64 0, i32 2
  store i64 0, ptr %388, align 8, !tbaa !51
  %389 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %390 = ptrtoint ptr %252 to i64
  %391 = ptrtoint ptr %389 to i64
  %392 = sub i64 %390, %391
  %393 = ashr exact i64 %392, 3
  %394 = load ptr, ptr @PL_curstack, align 8, !tbaa !5
  %395 = load ptr, ptr %394, align 8, !tbaa !50
  %396 = getelementptr inbounds %struct.xpvav, ptr %395, i64 0, i32 2
  store i64 %393, ptr %396, align 8, !tbaa !51
  %397 = getelementptr inbounds %struct.av, ptr %386, i64 0, i32 3
  %398 = load ptr, ptr %397, align 8, !tbaa !36
  store ptr %398, ptr @PL_stack_base, align 8, !tbaa !5
  %399 = load ptr, ptr %383, align 8, !tbaa !73
  %400 = load ptr, ptr %399, align 8, !tbaa !50
  %401 = getelementptr inbounds %struct.xpvav, ptr %400, i64 0, i32 3
  %402 = load i64, ptr %401, align 8, !tbaa !74
  %403 = getelementptr inbounds ptr, ptr %398, i64 %402
  store ptr %403, ptr @PL_stack_max, align 8, !tbaa !5
  %404 = load ptr, ptr %383, align 8, !tbaa !73
  %405 = load ptr, ptr %404, align 8, !tbaa !50
  %406 = getelementptr inbounds %struct.xpvav, ptr %405, i64 0, i32 2
  %407 = load i64, ptr %406, align 8, !tbaa !51
  %408 = getelementptr inbounds ptr, ptr %398, i64 %407
  store ptr %408, ptr @PL_stack_sp, align 8, !tbaa !5
  %409 = load ptr, ptr %383, align 8, !tbaa !73
  store ptr %409, ptr @PL_curstack, align 8, !tbaa !5
  store ptr %383, ptr @PL_curstackinfo, align 8, !tbaa !5
  %410 = and i8 %167, 1
  %411 = icmp ne i8 %410, 0
  %412 = icmp ne i32 %166, 0
  %413 = or i1 %412, %411
  br i1 %413, label %428, label %414

414:                                              ; preds = %382
  call void @Perl_save_generic_svref(ptr noundef nonnull @PL_firstgv) #8
  call void @Perl_save_generic_svref(ptr noundef nonnull @PL_secondgv) #8
  %415 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.3, i64 noundef 1, i32 noundef 129, i32 noundef 3) #8
  %416 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %415) #6
  store ptr %415, ptr @PL_firstgv, align 8, !tbaa !5
  %417 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.4, i64 noundef 1, i32 noundef 129, i32 noundef 3) #8
  %418 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %417) #6
  store ptr %417, ptr @PL_secondgv, align 8, !tbaa !5
  %419 = load ptr, ptr @PL_firstgv, align 8, !tbaa !5
  %420 = getelementptr inbounds %struct.gv, ptr %419, i64 0, i32 3
  %421 = load ptr, ptr %420, align 8, !tbaa !36
  call void @Perl_save_sptr(ptr noundef %421) #8
  %422 = load ptr, ptr @PL_secondgv, align 8, !tbaa !5
  %423 = getelementptr inbounds %struct.gv, ptr %422, i64 0, i32 3
  %424 = load ptr, ptr %423, align 8, !tbaa !36
  call void @Perl_save_sptr(ptr noundef %424) #8
  %425 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !5
  %426 = getelementptr inbounds %struct.stackinfo, ptr %425, i64 0, i32 4
  %427 = load i32, ptr %426, align 8, !tbaa !72
  br label %428

428:                                              ; preds = %414, %382
  %429 = phi i32 [ %427, %414 ], [ -1, %382 ]
  %430 = phi ptr [ %425, %414 ], [ %383, %382 ]
  %431 = getelementptr inbounds %struct.stackinfo, ptr %430, i64 0, i32 5
  %432 = load i32, ptr %431, align 4, !tbaa !75
  %433 = icmp slt i32 %429, %432
  br i1 %433, label %434, label %437

434:                                              ; preds = %428
  %435 = getelementptr inbounds %struct.stackinfo, ptr %430, i64 0, i32 4
  %436 = add nsw i32 %429, 1
  store i32 %436, ptr %435, align 8, !tbaa !72
  br label %441

437:                                              ; preds = %428
  %438 = call i32 @Perl_cxinc() #8
  %439 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !5
  %440 = getelementptr inbounds %struct.stackinfo, ptr %439, i64 0, i32 4
  store i32 %438, ptr %440, align 8, !tbaa !72
  br label %441

441:                                              ; preds = %437, %434
  %442 = phi i32 [ %438, %437 ], [ %436, %434 ]
  %443 = phi ptr [ %439, %437 ], [ %430, %434 ]
  %444 = getelementptr inbounds %struct.stackinfo, ptr %443, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !76
  %446 = sext i32 %442 to i64
  %447 = getelementptr inbounds %struct.context, ptr %445, i64 %446
  store i8 0, ptr %447, align 8, !tbaa !36
  %448 = getelementptr inbounds %struct.block, ptr %447, i64 0, i32 3
  store i32 0, ptr %448, align 4, !tbaa !36
  %449 = load ptr, ptr @PL_curcop, align 8, !tbaa !5
  %450 = getelementptr inbounds %struct.block, ptr %447, i64 0, i32 4
  store ptr %449, ptr %450, align 8, !tbaa !36
  %451 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %452 = load ptr, ptr @PL_markstack, align 8, !tbaa !5
  %453 = ptrtoint ptr %451 to i64
  %454 = ptrtoint ptr %452 to i64
  %455 = sub i64 %453, %454
  %456 = lshr exact i64 %455, 2
  %457 = trunc i64 %456 to i32
  %458 = getelementptr inbounds %struct.block, ptr %447, i64 0, i32 5
  store i32 %457, ptr %458, align 8, !tbaa !36
  %459 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !27
  %460 = getelementptr inbounds %struct.block, ptr %447, i64 0, i32 6
  store i32 %459, ptr %460, align 4, !tbaa !36
  %461 = load ptr, ptr @PL_curpm, align 8, !tbaa !5
  %462 = getelementptr inbounds %struct.block, ptr %447, i64 0, i32 7
  store ptr %461, ptr %462, align 8, !tbaa !36
  %463 = getelementptr inbounds %struct.block, ptr %447, i64 0, i32 1
  store i8 3, ptr %463, align 1, !tbaa !36
  %464 = icmp sgt i8 %25, -1
  br i1 %464, label %465, label %551

465:                                              ; preds = %441
  store i8 8, ptr %447, align 8, !tbaa !36
  store i8 2, ptr %463, align 1, !tbaa !36
  %466 = call fastcc ptr @S_CvDEPTHp(ptr noundef %168) #6
  %467 = load i32, ptr %466, align 4, !tbaa !27
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %473, label %469

469:                                              ; preds = %465
  %470 = getelementptr inbounds %struct.sv, ptr %168, i64 0, i32 1
  %471 = load i32, ptr %470, align 8, !tbaa !77
  %472 = add i32 %471, 1
  store i32 %472, ptr %470, align 8, !tbaa !77
  br label %473

473:                                              ; preds = %469, %465
  %474 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %475 = getelementptr inbounds %struct.op, ptr %474, i64 0, i32 5
  %476 = load i8, ptr %475, align 2, !tbaa !29
  %477 = and i8 %476, 3
  %478 = icmp eq i8 %477, 0
  br i1 %478, label %479, label %487

479:                                              ; preds = %473
  %480 = getelementptr inbounds %struct.op, ptr %474, i64 0, i32 6
  %481 = load i8, ptr %480, align 1, !tbaa !32
  %482 = and i8 %481, -127
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %487, label %484

484:                                              ; preds = %479
  %485 = call i32 @Perl_was_lvalue_sub() #8
  %486 = and i32 %485, 255
  br label %487

487:                                              ; preds = %484, %479, %473
  %488 = phi i32 [ 129, %473 ], [ %486, %484 ], [ 0, %479 ]
  %489 = getelementptr inbounds %struct.block, ptr %447, i64 0, i32 8
  %490 = getelementptr inbounds %struct.block, ptr %447, i64 0, i32 8, i32 0, i32 1
  store ptr %168, ptr %490, align 8, !tbaa !36
  %491 = call fastcc ptr @S_CvDEPTHp(ptr noundef %168) #6
  %492 = load i32, ptr %491, align 4, !tbaa !27
  %493 = getelementptr inbounds %struct.block, ptr %447, i64 0, i32 8, i32 0, i32 4
  store i32 %492, ptr %493, align 8, !tbaa !36
  %494 = shl nuw nsw i8 %410, 5
  %495 = load i8, ptr %447, align 8, !tbaa !36
  %496 = or i8 %495, %494
  store i8 %496, ptr %447, align 8, !tbaa !36
  store ptr null, ptr %489, align 8, !tbaa !36
  %497 = call fastcc ptr @S_CvDEPTHp(ptr noundef %168) #6
  %498 = load i32, ptr %497, align 4, !tbaa !27
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %504

500:                                              ; preds = %487
  %501 = getelementptr inbounds %struct.sv, ptr %168, i64 0, i32 1
  %502 = load i32, ptr %501, align 8, !tbaa !77
  %503 = add i32 %502, 2
  store i32 %503, ptr %501, align 8, !tbaa !77
  call void @Perl_save_pushptr(ptr noundef %168, i32 noundef 11) #8
  br label %504

504:                                              ; preds = %500, %487
  %505 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %506 = getelementptr inbounds %struct.op, ptr %505, i64 0, i32 6
  %507 = load i8, ptr %506, align 1, !tbaa !32
  %508 = zext i8 %507 to i32
  %509 = or i32 %488, 48
  %510 = and i32 %509, %508
  %511 = trunc i32 %510 to i16
  %512 = getelementptr inbounds %struct.block, ptr %447, i64 0, i32 2
  store i16 %511, ptr %512, align 2, !tbaa !36
  br i1 %412, label %551, label %513

513:                                              ; preds = %504
  %514 = load ptr, ptr %168, align 8, !tbaa !37
  %515 = getelementptr inbounds %struct.xpvcv, ptr %514, i64 0, i32 9
  %516 = load ptr, ptr %515, align 8, !tbaa !36
  %517 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %168) #6
  %518 = load i32, ptr %517, align 4, !tbaa !27
  %519 = add nsw i32 %518, 1
  store i32 %519, ptr %517, align 4, !tbaa !27
  %520 = icmp sgt i32 %518, 0
  br i1 %520, label %521, label %524

521:                                              ; preds = %513
  %522 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %168) #6
  %523 = load i32, ptr %522, align 4, !tbaa !27
  call void @Perl_pad_push(ptr noundef %516, i32 noundef %523) #8
  br label %524

524:                                              ; preds = %521, %513
  %525 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  call void @Perl_save_pushptr(ptr noundef %525, i32 noundef 7) #8
  %526 = getelementptr inbounds %struct.padlist, ptr %516, i64 0, i32 1
  %527 = load ptr, ptr %526, align 8, !tbaa !78
  %528 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %168) #6
  %529 = load i32, ptr %528, align 4, !tbaa !27
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds ptr, ptr %527, i64 %530
  %532 = load ptr, ptr %531, align 8, !tbaa !5
  store ptr %532, ptr @PL_comppad, align 8, !tbaa !5
  %533 = getelementptr inbounds %struct.av, ptr %532, i64 0, i32 3
  %534 = load ptr, ptr %533, align 8, !tbaa !36
  store ptr %534, ptr @PL_curpad, align 8, !tbaa !5
  br i1 %411, label %535, label %551

535:                                              ; preds = %524
  %536 = load ptr, ptr %534, align 8, !tbaa !5
  %537 = load ptr, ptr @PL_defgv, align 8, !tbaa !5
  %538 = getelementptr inbounds %struct.gv, ptr %537, i64 0, i32 3
  %539 = load ptr, ptr %538, align 8, !tbaa !36
  %540 = getelementptr inbounds %struct.gp, ptr %539, i64 0, i32 6
  %541 = load ptr, ptr %540, align 8, !tbaa !80
  %542 = getelementptr inbounds %struct.block, ptr %447, i64 0, i32 8, i32 0, i32 2
  store ptr %541, ptr %542, align 8, !tbaa !36
  %543 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %536) #6
  %544 = load ptr, ptr @PL_defgv, align 8, !tbaa !5
  %545 = getelementptr inbounds %struct.gv, ptr %544, i64 0, i32 3
  %546 = load ptr, ptr %545, align 8, !tbaa !36
  %547 = getelementptr inbounds %struct.gp, ptr %546, i64 0, i32 6
  store ptr %536, ptr %547, align 8, !tbaa !80
  %548 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %549 = getelementptr inbounds %struct.block, ptr %447, i64 0, i32 8, i32 0, i32 5
  store ptr %548, ptr %549, align 8, !tbaa !36
  %550 = getelementptr inbounds %struct.block, ptr %447, i64 0, i32 8, i32 0, i32 3
  store ptr %536, ptr %550, align 8, !tbaa !36
  br label %551

551:                                              ; preds = %524, %535, %504, %441
  %552 = load i8, ptr %447, align 8, !tbaa !36
  %553 = or i8 %552, 16
  store i8 %553, ptr %447, align 8, !tbaa !36
  %554 = sub nsw i64 0, %354
  %555 = getelementptr inbounds ptr, ptr %355, i64 %554
  %556 = select i1 %411, ptr @S_sortcv_stacked, ptr @S_sortcv
  %557 = select i1 %412, ptr @S_sortcv_xsub, ptr %556
  call void @Perl_sortsv_flags(ptr noundef nonnull %555, i64 noundef %354, ptr noundef nonnull %557, i32 noundef %39) #6
  br i1 %464, label %558, label %655

558:                                              ; preds = %551
  %559 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !5
  %560 = getelementptr inbounds %struct.stackinfo, ptr %559, i64 0, i32 1
  %561 = load ptr, ptr %560, align 8, !tbaa !76
  %562 = getelementptr inbounds %struct.stackinfo, ptr %559, i64 0, i32 4
  %563 = load i32, ptr %562, align 8, !tbaa !72
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.context, ptr %561, i64 %564
  %566 = getelementptr inbounds %struct.block, ptr %565, i64 0, i32 8, i32 0, i32 4
  %567 = load i32, ptr %566, align 8, !tbaa !36
  %568 = getelementptr inbounds %struct.block, ptr %565, i64 0, i32 2
  %569 = load i16, ptr %568, align 2, !tbaa !36
  %570 = and i16 %569, 256
  %571 = icmp eq i16 %570, 0
  br i1 %571, label %572, label %634

572:                                              ; preds = %558
  %573 = or disjoint i16 %569, 256
  store i16 %573, ptr %568, align 2, !tbaa !36
  %574 = load i8, ptr %565, align 8, !tbaa !36
  %575 = and i8 %574, 32
  %576 = icmp eq i8 %575, 0
  br i1 %576, label %634, label %577

577:                                              ; preds = %572
  %578 = load ptr, ptr @PL_defgv, align 8, !tbaa !5
  %579 = getelementptr inbounds %struct.gv, ptr %578, i64 0, i32 3
  %580 = load ptr, ptr %579, align 8, !tbaa !36
  %581 = getelementptr inbounds %struct.gp, ptr %580, i64 0, i32 6
  %582 = load ptr, ptr %581, align 8, !tbaa !80
  call fastcc void @S_SvREFCNT_dec(ptr noundef %582) #6
  %583 = getelementptr inbounds %struct.block, ptr %565, i64 0, i32 8, i32 0, i32 2
  %584 = load ptr, ptr %583, align 8, !tbaa !36
  %585 = load ptr, ptr @PL_defgv, align 8, !tbaa !5
  %586 = getelementptr inbounds %struct.gv, ptr %585, i64 0, i32 3
  %587 = load ptr, ptr %586, align 8, !tbaa !36
  %588 = getelementptr inbounds %struct.gp, ptr %587, i64 0, i32 6
  store ptr %584, ptr %588, align 8, !tbaa !80
  %589 = getelementptr inbounds %struct.block, ptr %565, i64 0, i32 8, i32 0, i32 3
  %590 = load ptr, ptr %589, align 8, !tbaa !36
  %591 = getelementptr inbounds %struct.av, ptr %590, i64 0, i32 2
  %592 = load i32, ptr %591, align 4, !tbaa !48
  %593 = and i32 %592, 1073741824
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %613, label %595

595:                                              ; preds = %577
  %596 = load ptr, ptr %590, align 8, !tbaa !50
  %597 = getelementptr inbounds %struct.xpvav, ptr %596, i64 0, i32 2
  %598 = load i64, ptr %597, align 8, !tbaa !51
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %590) #6
  %599 = call ptr @Perl_newSV_type(i32 noundef 11) #8
  store ptr %599, ptr %589, align 8, !tbaa !36
  call void @Perl_av_extend(ptr noundef %599, i64 noundef %598) #8
  %600 = load ptr, ptr %589, align 8, !tbaa !36
  %601 = getelementptr inbounds %struct.av, ptr %600, i64 0, i32 2
  %602 = load i32, ptr %601, align 4, !tbaa !48
  %603 = and i32 %602, -1073741825
  store i32 %603, ptr %601, align 4, !tbaa !48
  %604 = load ptr, ptr %589, align 8, !tbaa !36
  %605 = getelementptr inbounds %struct.av, ptr %604, i64 0, i32 2
  %606 = load i32, ptr %605, align 4, !tbaa !48
  %607 = or i32 %606, -2147483648
  store i32 %607, ptr %605, align 4, !tbaa !48
  %608 = load ptr, ptr %589, align 8, !tbaa !36
  %609 = getelementptr inbounds %struct.block, ptr %565, i64 0, i32 8, i32 0, i32 5
  %610 = load ptr, ptr %609, align 8, !tbaa !36
  %611 = getelementptr inbounds %struct.av, ptr %610, i64 0, i32 3
  %612 = load ptr, ptr %611, align 8, !tbaa !36
  store ptr %608, ptr %612, align 8, !tbaa !5
  br label %634

613:                                              ; preds = %577
  %614 = getelementptr inbounds %struct.av, ptr %590, i64 0, i32 3
  %615 = load ptr, ptr %614, align 8, !tbaa !36
  %616 = load ptr, ptr %590, align 8, !tbaa !50
  %617 = getelementptr inbounds %struct.xpvav, ptr %616, i64 0, i32 4
  %618 = load ptr, ptr %617, align 8, !tbaa !81
  %619 = ptrtoint ptr %615 to i64
  %620 = ptrtoint ptr %618 to i64
  %621 = sub i64 %619, %620
  %622 = ashr exact i64 %621, 3
  %623 = getelementptr inbounds %struct.xpvav, ptr %616, i64 0, i32 3
  %624 = load i64, ptr %623, align 8, !tbaa !74
  %625 = add nsw i64 %622, %624
  store i64 %625, ptr %623, align 8, !tbaa !74
  %626 = load ptr, ptr %589, align 8, !tbaa !36
  %627 = load ptr, ptr %626, align 8, !tbaa !50
  %628 = getelementptr inbounds %struct.xpvav, ptr %627, i64 0, i32 4
  %629 = load ptr, ptr %628, align 8, !tbaa !81
  %630 = getelementptr inbounds %struct.av, ptr %626, i64 0, i32 3
  store ptr %629, ptr %630, align 8, !tbaa !36
  %631 = load ptr, ptr %589, align 8, !tbaa !36
  %632 = load ptr, ptr %631, align 8, !tbaa !50
  %633 = getelementptr inbounds %struct.xpvav, ptr %632, i64 0, i32 2
  store i64 -1, ptr %633, align 8, !tbaa !51
  br label %634

634:                                              ; preds = %572, %613, %595, %558
  %635 = getelementptr inbounds %struct.block, ptr %565, i64 0, i32 8, i32 0, i32 1
  %636 = load ptr, ptr %635, align 8, !tbaa !36
  %637 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !27
  %638 = load ptr, ptr @PL_scopestack, align 8, !tbaa !5
  %639 = getelementptr inbounds %struct.block, ptr %565, i64 0, i32 6
  %640 = load i32, ptr %639, align 4, !tbaa !36
  %641 = sext i32 %640 to i64
  %642 = getelementptr i32, ptr %638, i64 %641
  %643 = getelementptr i32, ptr %642, i64 -1
  %644 = load i32, ptr %643, align 4, !tbaa !27
  %645 = icmp sgt i32 %637, %644
  br i1 %645, label %646, label %647

646:                                              ; preds = %634
  call void @Perl_leave_scope(i32 noundef %644) #8
  br label %647

647:                                              ; preds = %646, %634
  %648 = icmp eq ptr %636, null
  br i1 %648, label %653, label %649

649:                                              ; preds = %647
  %650 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %636) #6
  store i32 %567, ptr %650, align 4, !tbaa !27
  %651 = icmp eq i32 %567, 0
  %652 = select i1 %651, ptr %636, ptr null
  br label %653

653:                                              ; preds = %649, %647
  %654 = phi ptr [ null, %647 ], [ %652, %649 ]
  call fastcc void @S_SvREFCNT_dec(ptr noundef %654) #6
  br label %655

655:                                              ; preds = %653, %551
  %656 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !5
  %657 = getelementptr inbounds %struct.stackinfo, ptr %656, i64 0, i32 1
  %658 = load ptr, ptr %657, align 8, !tbaa !76
  %659 = getelementptr inbounds %struct.stackinfo, ptr %656, i64 0, i32 4
  %660 = load i32, ptr %659, align 8, !tbaa !72
  %661 = add nsw i32 %660, -1
  store i32 %661, ptr %659, align 8, !tbaa !72
  %662 = sext i32 %660 to i64
  %663 = getelementptr inbounds %struct.context, ptr %658, i64 %662
  %664 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %665 = getelementptr inbounds %struct.block, ptr %663, i64 0, i32 3
  %666 = load i32, ptr %665, align 4, !tbaa !36
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds ptr, ptr %664, i64 %667
  %669 = getelementptr inbounds %struct.block, ptr %663, i64 0, i32 4
  %670 = load ptr, ptr %669, align 8, !tbaa !36
  store ptr %670, ptr @PL_curcop, align 8, !tbaa !5
  %671 = load ptr, ptr @PL_markstack, align 8, !tbaa !5
  %672 = getelementptr inbounds %struct.block, ptr %663, i64 0, i32 5
  %673 = load i32, ptr %672, align 8, !tbaa !36
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i32, ptr %671, i64 %674
  store ptr %675, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %676 = getelementptr inbounds %struct.block, ptr %663, i64 0, i32 6
  %677 = load i32, ptr %676, align 4, !tbaa !36
  store i32 %677, ptr @PL_scopestack_ix, align 4, !tbaa !27
  %678 = getelementptr inbounds %struct.block, ptr %663, i64 0, i32 7
  %679 = load ptr, ptr %678, align 8, !tbaa !36
  store ptr %679, ptr @PL_curpm, align 8, !tbaa !5
  store ptr %668, ptr @PL_stack_sp, align 8, !tbaa !5
  %680 = getelementptr inbounds %struct.stackinfo, ptr %656, i64 0, i32 2
  %681 = load ptr, ptr %680, align 8, !tbaa !70
  %682 = icmp eq ptr %681, null
  br i1 %682, label %683, label %685

683:                                              ; preds = %655
  call void @Perl_croak_popstack() #8
  %684 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %685

685:                                              ; preds = %655, %683
  %686 = phi ptr [ %664, %655 ], [ %684, %683 ]
  %687 = ptrtoint ptr %668 to i64
  %688 = ptrtoint ptr %686 to i64
  %689 = sub i64 %687, %688
  %690 = ashr exact i64 %689, 3
  %691 = load ptr, ptr @PL_curstack, align 8, !tbaa !5
  %692 = load ptr, ptr %691, align 8, !tbaa !50
  %693 = getelementptr inbounds %struct.xpvav, ptr %692, i64 0, i32 2
  store i64 %690, ptr %693, align 8, !tbaa !51
  %694 = load ptr, ptr %681, align 8, !tbaa !73
  %695 = getelementptr inbounds %struct.av, ptr %694, i64 0, i32 3
  %696 = load ptr, ptr %695, align 8, !tbaa !36
  store ptr %696, ptr @PL_stack_base, align 8, !tbaa !5
  %697 = load ptr, ptr %681, align 8, !tbaa !73
  %698 = load ptr, ptr %697, align 8, !tbaa !50
  %699 = getelementptr inbounds %struct.xpvav, ptr %698, i64 0, i32 3
  %700 = load i64, ptr %699, align 8, !tbaa !74
  %701 = getelementptr inbounds ptr, ptr %696, i64 %700
  store ptr %701, ptr @PL_stack_max, align 8, !tbaa !5
  %702 = load ptr, ptr %681, align 8, !tbaa !73
  %703 = load ptr, ptr %702, align 8, !tbaa !50
  %704 = getelementptr inbounds %struct.xpvav, ptr %703, i64 0, i32 2
  %705 = load i64, ptr %704, align 8, !tbaa !51
  %706 = getelementptr inbounds ptr, ptr %696, i64 %705
  store ptr %706, ptr @PL_stack_sp, align 8, !tbaa !5
  %707 = load ptr, ptr %681, align 8, !tbaa !73
  store ptr %707, ptr @PL_curstack, align 8, !tbaa !5
  store ptr %681, ptr @PL_curstackinfo, align 8, !tbaa !5
  %708 = load ptr, ptr @PL_top_env, align 8, !tbaa !5
  %709 = getelementptr inbounds %struct.jmpenv, ptr %708, i64 0, i32 3
  store i8 %368, ptr %709, align 4, !tbaa !62
  br label %752

710:                                              ; preds = %362
  %711 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %712 = ptrtoint ptr %711 to i64
  %713 = ptrtoint ptr %252 to i64
  %714 = sub i64 %712, %713
  %715 = icmp slt i64 %714, 160
  br i1 %715, label %716, label %724

716:                                              ; preds = %710
  %717 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %718 = ptrtoint ptr %251 to i64
  %719 = ptrtoint ptr %717 to i64
  %720 = sub i64 %718, %719
  %721 = call ptr @Perl_stack_grow(ptr noundef %252, ptr noundef %252, i64 noundef 20) #8
  %722 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %723 = getelementptr inbounds i8, ptr %722, i64 %720
  br label %724

724:                                              ; preds = %710, %716
  %725 = phi ptr [ %723, %716 ], [ %251, %710 ]
  br i1 %246, label %729, label %726

726:                                              ; preds = %724
  %727 = getelementptr inbounds %struct.av, ptr %247, i64 0, i32 3
  %728 = load ptr, ptr %727, align 8, !tbaa !36
  br label %733

729:                                              ; preds = %724
  %730 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %731 = getelementptr inbounds ptr, ptr %730, i64 %8
  %732 = getelementptr inbounds ptr, ptr %731, i64 1
  br label %733

733:                                              ; preds = %729, %726
  %734 = phi ptr [ %728, %726 ], [ %732, %729 ]
  %735 = and i32 %31, 1
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %747, label %737

737:                                              ; preds = %733
  %738 = and i32 %31, 2
  %739 = icmp ne i32 %738, 0
  %740 = icmp ne i32 %352, 0
  %741 = select i1 %739, i1 true, i1 %740
  %742 = icmp eq i32 %353, 0
  br i1 %741, label %743, label %745

743:                                              ; preds = %737
  %744 = select i1 %742, ptr @S_sv_i_ncmp, ptr @S_amagic_i_ncmp
  br label %750

745:                                              ; preds = %737
  %746 = select i1 %742, ptr @S_sv_ncmp, ptr @S_amagic_ncmp
  br label %750

747:                                              ; preds = %733
  %748 = icmp eq i32 %353, 0
  %749 = select i1 %748, ptr @Perl_sv_cmp, ptr @S_amagic_cmp
  br label %750

750:                                              ; preds = %743, %745, %747
  %751 = phi ptr [ %749, %747 ], [ %744, %743 ], [ %746, %745 ]
  call void @Perl_sortsv_flags(ptr noundef %734, i64 noundef %354, ptr noundef nonnull %751, i32 noundef %39) #6
  br label %752

752:                                              ; preds = %750, %685
  %753 = phi ptr [ %555, %685 ], [ %734, %750 ]
  %754 = phi ptr [ %251, %685 ], [ %725, %750 ]
  %755 = and i32 %31, 4
  %756 = icmp ne i32 %755, 0
  %757 = getelementptr inbounds ptr, ptr %753, i64 %354
  %758 = getelementptr inbounds ptr, ptr %757, i64 -1
  %759 = icmp ult ptr %753, %758
  %760 = select i1 %756, i1 %759, i1 false
  br i1 %760, label %761, label %769

761:                                              ; preds = %752, %761
  %762 = phi ptr [ %767, %761 ], [ %758, %752 ]
  %763 = phi ptr [ %766, %761 ], [ %753, %752 ]
  %764 = load ptr, ptr %763, align 8, !tbaa !5
  %765 = load ptr, ptr %762, align 8, !tbaa !5
  %766 = getelementptr inbounds ptr, ptr %763, i64 1
  store ptr %765, ptr %763, align 8, !tbaa !5
  store ptr %764, ptr %762, align 8, !tbaa !5
  %767 = getelementptr inbounds ptr, ptr %762, i64 -1
  %768 = icmp ult ptr %766, %767
  br i1 %768, label %761, label %769, !llvm.loop !82

769:                                              ; preds = %761, %752, %360
  %770 = phi ptr [ %251, %360 ], [ %754, %752 ], [ %754, %761 ]
  br i1 %246, label %775, label %771

771:                                              ; preds = %769
  %772 = getelementptr inbounds %struct.av, ptr %247, i64 0, i32 2
  %773 = load i32, ptr %772, align 4, !tbaa !48
  %774 = and i32 %773, -134283265
  store i32 %774, ptr %772, align 4, !tbaa !48
  br label %807

775:                                              ; preds = %769
  %776 = icmp eq ptr %247, null
  br i1 %776, label %807, label %777

777:                                              ; preds = %775
  %778 = getelementptr inbounds ptr, ptr %770, i64 1
  %779 = icmp sgt i64 %354, 0
  br i1 %779, label %780, label %806

780:                                              ; preds = %777, %780
  %781 = phi i64 [ %785, %780 ], [ 0, %777 ]
  %782 = getelementptr inbounds ptr, ptr %778, i64 %781
  %783 = load ptr, ptr %782, align 8, !tbaa !5
  %784 = call ptr @Perl_newSVsv(ptr noundef %783) #8
  store ptr %784, ptr %782, align 8, !tbaa !5
  %785 = add nuw nsw i64 %781, 1
  %786 = icmp eq i64 %785, %354
  br i1 %786, label %787, label %780, !llvm.loop !83

787:                                              ; preds = %780
  call void @Perl_av_clear(ptr noundef nonnull %247) #8
  call void @Perl_av_extend(ptr noundef nonnull %247, i64 noundef %354) #8
  br i1 %779, label %788, label %807

788:                                              ; preds = %787, %803
  %789 = phi i64 [ %804, %803 ], [ 0, %787 ]
  %790 = getelementptr inbounds ptr, ptr %778, i64 %789
  %791 = load ptr, ptr %790, align 8, !tbaa !5
  %792 = call ptr @Perl_av_store(ptr noundef nonnull %247, i64 noundef %789, ptr noundef %791) #8
  %793 = getelementptr inbounds %struct.sv, ptr %791, i64 0, i32 2
  %794 = load i32, ptr %793, align 4, !tbaa !54
  %795 = and i32 %794, 4194304
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %799, label %797

797:                                              ; preds = %788
  %798 = call i32 @Perl_mg_set(ptr noundef nonnull %791) #8
  br label %799

799:                                              ; preds = %797, %788
  %800 = icmp eq ptr %792, null
  br i1 %800, label %801, label %803

801:                                              ; preds = %799
  %802 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %791) #8
  br label %803

803:                                              ; preds = %801, %799
  %804 = add nuw nsw i64 %789, 1
  %805 = icmp eq i64 %804, %354
  br i1 %805, label %807, label %788, !llvm.loop !84

806:                                              ; preds = %777
  call void @Perl_av_clear(ptr noundef nonnull %247) #8
  call void @Perl_av_extend(ptr noundef nonnull %247, i64 noundef %354) #8
  br label %807

807:                                              ; preds = %803, %806, %787, %775, %771
  %808 = phi i64 [ %354, %775 ], [ 0, %771 ], [ %354, %787 ], [ %354, %806 ], [ %354, %803 ]
  call void @Perl_pop_scope() #8
  %809 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %810 = getelementptr inbounds ptr, ptr %809, i64 %8
  %811 = getelementptr inbounds ptr, ptr %810, i64 %808
  store ptr %811, ptr @PL_stack_sp, align 8, !tbaa !5
  br label %812

812:                                              ; preds = %159, %807, %49
  %813 = phi ptr [ %53, %49 ], [ %28, %807 ], [ %160, %159 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #7
  ret ptr %813
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @Perl_sv_2cv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !37
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !39
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #8
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @Perl_gv_autoload_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_no_modify() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_generic_svref(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !77
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_sptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_cxinc() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @S_CvDEPTHp(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !37
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 13
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @Perl_was_lvalue_sub() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pad_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_sortcv_xsub(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !27
  %4 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !27
  %5 = load ptr, ptr @PL_sortcop, align 8, !tbaa !5
  %6 = load ptr, ptr @PL_curpm, align 8, !tbaa !5
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %8 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %9 = getelementptr inbounds i32, ptr %8, i64 1
  store ptr %9, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %10 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !5
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = tail call ptr @Perl_markstack_grow() #8
  %14 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi ptr [ %14, %12 ], [ %7, %2 ]
  %17 = phi ptr [ %13, %12 ], [ %9, %2 ]
  %18 = ptrtoint ptr %7 to i64
  %19 = ptrtoint ptr %16 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 3
  %22 = trunc i64 %21 to i32
  store i32 %22, ptr %17, align 4, !tbaa !27
  %23 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %24 = ptrtoint ptr %23 to i64
  %25 = sub i64 %24, %18
  %26 = icmp slt i64 %25, 16
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = tail call ptr @Perl_stack_grow(ptr noundef %7, ptr noundef %7, i64 noundef 2) #8
  br label %29

29:                                               ; preds = %15, %27
  %30 = phi ptr [ %28, %27 ], [ %7, %15 ]
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  store ptr %0, ptr %31, align 8, !tbaa !5
  %32 = getelementptr inbounds ptr, ptr %30, i64 2
  store ptr %1, ptr %32, align 8, !tbaa !5
  store ptr %32, ptr @PL_stack_sp, align 8, !tbaa !5
  %33 = load ptr, ptr %5, align 8, !tbaa !37
  %34 = getelementptr inbounds %struct.xpvcv, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !36
  tail call void %35(ptr noundef nonnull %5) #8
  %36 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %38 = getelementptr inbounds ptr, ptr %37, i64 1
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #8
  %41 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  br label %42

42:                                               ; preds = %40, %29
  %43 = phi ptr [ %41, %40 ], [ %36, %29 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !54
  %47 = and i32 %46, 2097408
  %48 = icmp eq i32 %47, 256
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load ptr, ptr %44, align 8, !tbaa !56
  %51 = getelementptr inbounds %struct.xpviv, ptr %50, i64 0, i32 4
  %52 = load i64, ptr %51, align 8, !tbaa !36
  br label %55

53:                                               ; preds = %42
  %54 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %44, i32 noundef 2) #8
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i64 [ %52, %49 ], [ %54, %53 ]
  %57 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !27
  %58 = icmp sgt i32 %57, %4
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %59
  tail call void @Perl_pop_scope() #8
  %60 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !27
  %61 = icmp sgt i32 %60, %4
  br i1 %61, label %59, label %62, !llvm.loop !85

62:                                               ; preds = %59, %55
  %63 = trunc i64 %56 to i32
  tail call void @Perl_leave_scope(i32 noundef %3) #8
  store ptr %6, ptr @PL_curpm, align 8, !tbaa !5
  ret i32 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_sortcv_stacked(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !27
  %4 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !27
  %5 = load ptr, ptr @PL_defgv, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.gv, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = load ptr, ptr @PL_curpm, align 8, !tbaa !5
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %12 = load ptr, ptr @PL_curcop, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.av, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !48
  %15 = and i32 %14, 1073741824
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  tail call void @Perl_av_clear(ptr noundef nonnull %9) #8
  %18 = load i32, ptr %13, align 4, !tbaa !48
  %19 = and i32 %18, 1073741823
  %20 = or disjoint i32 %19, -2147483648
  store i32 %20, ptr %13, align 4, !tbaa !48
  br label %21

21:                                               ; preds = %17, %2
  %22 = load ptr, ptr %9, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.xpvav, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !74
  %25 = icmp slt i64 %24, 1
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.xpvav, ptr %22, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = getelementptr inbounds %struct.av, ptr %9, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !36
  %31 = icmp eq ptr %30, %28
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = ptrtoint ptr %30 to i64
  %34 = ptrtoint ptr %28 to i64
  %35 = sub i64 %33, %34
  %36 = ashr exact i64 %35, 3
  %37 = add nsw i64 %36, %24
  store i64 %37, ptr %23, align 8, !tbaa !74
  store ptr %28, ptr %29, align 8, !tbaa !36
  %38 = load i64, ptr %23, align 8, !tbaa !74
  %39 = icmp slt i64 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %26, %32
  store i64 1, ptr %23, align 8, !tbaa !74
  %41 = tail call ptr @Perl_safesysrealloc(ptr noundef %28, i64 noundef 16) #8
  store ptr %41, ptr %29, align 8, !tbaa !36
  %42 = load ptr, ptr %9, align 8, !tbaa !50
  %43 = getelementptr inbounds %struct.xpvav, ptr %42, i64 0, i32 4
  store ptr %41, ptr %43, align 8, !tbaa !81
  br label %44

44:                                               ; preds = %32, %40, %21
  %45 = phi ptr [ %22, %32 ], [ %42, %40 ], [ %22, %21 ]
  %46 = getelementptr inbounds %struct.xpvav, ptr %45, i64 0, i32 2
  store i64 1, ptr %46, align 8, !tbaa !51
  %47 = getelementptr inbounds %struct.av, ptr %9, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !36
  store ptr %0, ptr %48, align 8, !tbaa !5
  %49 = load ptr, ptr %47, align 8, !tbaa !36
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  store ptr %1, ptr %50, align 8, !tbaa !5
  %51 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  store ptr %51, ptr @PL_stack_sp, align 8, !tbaa !5
  %52 = load ptr, ptr @PL_sortcop, align 8, !tbaa !5
  store ptr %52, ptr @PL_op, align 8, !tbaa !5
  %53 = load ptr, ptr @PL_runops, align 8, !tbaa !5
  %54 = tail call i32 %53() #8
  store ptr %11, ptr @PL_op, align 8, !tbaa !5
  store ptr %12, ptr @PL_curcop, align 8, !tbaa !5
  %55 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  store ptr null, ptr @PL_curpad, align 8, !tbaa !5
  %56 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %56, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %44
  %61 = load i32, ptr getelementptr inbounds (%struct.sv, ptr @PL_sv_undef, i64 0, i32 2), align 4, !tbaa !54
  %62 = and i32 %61, 2097408
  %63 = icmp eq i32 %62, 256
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load ptr, ptr @PL_sv_undef, align 8, !tbaa !56
  %66 = getelementptr inbounds %struct.xpviv, ptr %65, i64 0, i32 4
  %67 = load i64, ptr %66, align 8, !tbaa !36
  br label %82

68:                                               ; preds = %60
  %69 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull @PL_sv_undef, i32 noundef 2) #8
  br label %82

70:                                               ; preds = %44
  %71 = load ptr, ptr %56, align 8, !tbaa !5
  %72 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !54
  %74 = and i32 %73, 2097408
  %75 = icmp eq i32 %74, 256
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load ptr, ptr %71, align 8, !tbaa !56
  %78 = getelementptr inbounds %struct.xpviv, ptr %77, i64 0, i32 4
  %79 = load i64, ptr %78, align 8, !tbaa !36
  br label %82

80:                                               ; preds = %70
  %81 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %71, i32 noundef 2) #8
  br label %82

82:                                               ; preds = %76, %80, %64, %68
  %83 = phi i64 [ %67, %64 ], [ %69, %68 ], [ %79, %76 ], [ %81, %80 ]
  store ptr %55, ptr @PL_curpad, align 8, !tbaa !5
  %84 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !27
  %85 = icmp sgt i32 %84, %4
  br i1 %85, label %86, label %89

86:                                               ; preds = %82, %86
  tail call void @Perl_pop_scope() #8
  %87 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !27
  %88 = icmp sgt i32 %87, %4
  br i1 %88, label %86, label %89, !llvm.loop !86

89:                                               ; preds = %86, %82
  %90 = trunc i64 %83 to i32
  tail call void @Perl_leave_scope(i32 noundef %3) #8
  store ptr %10, ptr @PL_curpm, align 8, !tbaa !5
  ret i32 %90
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_sortcv(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !27
  %4 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !27
  %5 = load ptr, ptr @PL_curpm, align 8, !tbaa !5
  %6 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %7 = load ptr, ptr @PL_curcop, align 8, !tbaa !5
  %8 = load ptr, ptr @PL_firstgv, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.gv, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  store ptr %0, ptr %10, align 8, !tbaa !87
  %11 = load ptr, ptr @PL_secondgv, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.gv, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  store ptr %1, ptr %13, align 8, !tbaa !87
  %14 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !5
  %15 = load ptr, ptr @PL_sortcop, align 8, !tbaa !5
  store ptr %15, ptr @PL_op, align 8, !tbaa !5
  %16 = load ptr, ptr @PL_runops, align 8, !tbaa !5
  %17 = tail call i32 %16() #8
  store ptr %6, ptr @PL_op, align 8, !tbaa !5
  store ptr %7, ptr @PL_curcop, align 8, !tbaa !5
  %18 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load ptr, ptr %18, align 8, !tbaa !5
  br label %24

24:                                               ; preds = %2, %22
  %25 = phi ptr [ %23, %22 ], [ @PL_sv_undef, %2 ]
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !54
  %28 = and i32 %27, 768
  %29 = icmp ne i32 %28, 0
  %30 = and i32 %27, 2097152
  %31 = icmp eq i32 %30, 0
  %32 = and i1 %29, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = and i32 %27, 256
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %25, align 8, !tbaa !56
  %38 = getelementptr inbounds %struct.xpviv, ptr %37, i64 0, i32 4
  %39 = load i64, ptr %38, align 8, !tbaa !36
  br label %54

40:                                               ; preds = %33
  %41 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %25, i32 noundef 2) #8
  br label %54

42:                                               ; preds = %24
  tail call void @Perl_push_scope() #8
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_curpad) #8
  store ptr null, ptr @PL_curpad, align 8, !tbaa !5
  %43 = load i32, ptr %26, align 4, !tbaa !54
  %44 = and i32 %43, 2097408
  %45 = icmp eq i32 %44, 256
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load ptr, ptr %25, align 8, !tbaa !56
  %48 = getelementptr inbounds %struct.xpviv, ptr %47, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !36
  br label %52

50:                                               ; preds = %42
  %51 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %25, i32 noundef 2) #8
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %49, %46 ], [ %51, %50 ]
  tail call void @Perl_pop_scope() #8
  br label %54

54:                                               ; preds = %36, %40, %52
  %55 = phi i64 [ %53, %52 ], [ %39, %36 ], [ %41, %40 ]
  %56 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !27
  %57 = icmp sgt i32 %56, %4
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %58
  tail call void @Perl_pop_scope() #8
  %59 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !27
  %60 = icmp sgt i32 %59, %4
  br i1 %60, label %58, label %61, !llvm.loop !88

61:                                               ; preds = %58, %54
  %62 = trunc i64 %55 to i32
  tail call void @Perl_leave_scope(i32 noundef %3) #8
  store ptr %5, ptr @PL_curpm, align 8, !tbaa !5
  ret i32 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !77
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #8
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !77
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !77
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #8
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_leave_scope(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_popstack() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_amagic_i_ncmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !54
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !54
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 8, !tbaa !56
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !59
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %14, %7, %2
  %22 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !54
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %72, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !54
  %31 = and i32 %30, 1048576
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %72, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 8, !tbaa !56
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !59
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %72, label %40

40:                                               ; preds = %14, %33
  %41 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 58, i32 noundef 0) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %72, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !54
  %46 = and i32 %45, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %41, align 8, !tbaa !56
  %50 = getelementptr inbounds %struct.xpviv, ptr %49, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !36
  %52 = trunc i64 %51 to i32
  %53 = icmp ne i32 %52, 0
  %54 = sext i1 %53 to i32
  %55 = icmp slt i32 %52, 1
  %56 = select i1 %55, i32 %54, i32 1
  br label %74

57:                                               ; preds = %43
  %58 = and i32 %45, 2097664
  %59 = icmp eq i32 %58, 512
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load ptr, ptr %41, align 8, !tbaa !56
  %62 = getelementptr inbounds %struct.xpvnv, ptr %61, i64 0, i32 5
  %63 = load double, ptr %62, align 8, !tbaa !36
  br label %66

64:                                               ; preds = %57
  %65 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %41, i32 noundef 2) #8
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi double [ %63, %60 ], [ %65, %64 ]
  %68 = fcmp ogt double %67, 0.000000e+00
  %69 = fcmp une double %67, 0.000000e+00
  %70 = sext i1 %69 to i32
  %71 = select i1 %68, i32 1, i32 %70
  br label %74

72:                                               ; preds = %21, %26, %33, %40
  %73 = tail call i32 @S_sv_i_ncmp(ptr noundef nonnull %0, ptr noundef %1) #6, !range !89
  br label %74

74:                                               ; preds = %72, %66, %48
  %75 = phi i32 [ %56, %48 ], [ %71, %66 ], [ %73, %72 ]
  ret i32 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_sv_i_ncmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !54
  %5 = and i32 %4, 2097408
  %6 = icmp eq i32 %5, 256
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.xpviv, ptr %8, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !36
  br label %13

11:                                               ; preds = %2
  %12 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #8
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i64 [ %10, %7 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !54
  %17 = and i32 %16, 2097408
  %18 = icmp eq i32 %17, 256
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load ptr, ptr %1, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.xpviv, ptr %20, i64 0, i32 4
  %22 = load i64, ptr %21, align 8, !tbaa !36
  br label %25

23:                                               ; preds = %13
  %24 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1, i32 noundef 2) #8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i64 [ %22, %19 ], [ %24, %23 ]
  %27 = icmp slt i64 %14, %26
  %28 = icmp sgt i64 %14, %26
  %29 = zext i1 %28 to i32
  %30 = select i1 %27, i32 -1, i32 %29
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_amagic_ncmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !54
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !54
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 8, !tbaa !56
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !59
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %14, %7, %2
  %22 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !54
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %72, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !54
  %31 = and i32 %30, 1048576
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %72, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 8, !tbaa !56
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !59
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %72, label %40

40:                                               ; preds = %14, %33
  %41 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 58, i32 noundef 0) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %72, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !54
  %46 = and i32 %45, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %41, align 8, !tbaa !56
  %50 = getelementptr inbounds %struct.xpviv, ptr %49, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !36
  %52 = trunc i64 %51 to i32
  %53 = icmp ne i32 %52, 0
  %54 = sext i1 %53 to i32
  %55 = icmp slt i32 %52, 1
  %56 = select i1 %55, i32 %54, i32 1
  br label %74

57:                                               ; preds = %43
  %58 = and i32 %45, 2097664
  %59 = icmp eq i32 %58, 512
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load ptr, ptr %41, align 8, !tbaa !56
  %62 = getelementptr inbounds %struct.xpvnv, ptr %61, i64 0, i32 5
  %63 = load double, ptr %62, align 8, !tbaa !36
  br label %66

64:                                               ; preds = %57
  %65 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %41, i32 noundef 2) #8
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi double [ %63, %60 ], [ %65, %64 ]
  %68 = fcmp ogt double %67, 0.000000e+00
  %69 = fcmp une double %67, 0.000000e+00
  %70 = sext i1 %69 to i32
  %71 = select i1 %68, i32 1, i32 %70
  br label %74

72:                                               ; preds = %21, %26, %33, %40
  %73 = tail call i32 @S_sv_ncmp(ptr noundef nonnull %0, ptr noundef %1) #6, !range !89
  br label %74

74:                                               ; preds = %72, %66, %48
  %75 = phi i32 [ %56, %48 ], [ %71, %66 ], [ %73, %72 ]
  ret i32 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_sv_ncmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !54
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.xpvnv, ptr %8, i64 0, i32 5
  %10 = load double, ptr %9, align 8, !tbaa !36
  br label %21

11:                                               ; preds = %2
  %12 = and i32 %4, -2147483392
  %13 = icmp eq i32 %12, 256
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !56
  %16 = getelementptr inbounds %struct.xpviv, ptr %15, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !36
  %18 = sitofp i64 %17 to double
  br label %21

19:                                               ; preds = %11
  %20 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %0, i32 noundef 2) #8
  br label %21

21:                                               ; preds = %14, %19, %7
  %22 = phi double [ %10, %7 ], [ %18, %14 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !54
  %25 = and i32 %24, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %1, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct.xpvnv, ptr %28, i64 0, i32 5
  %30 = load double, ptr %29, align 8, !tbaa !36
  br label %41

31:                                               ; preds = %21
  %32 = and i32 %24, -2147483392
  %33 = icmp eq i32 %32, 256
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load ptr, ptr %1, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.xpviv, ptr %35, i64 0, i32 4
  %37 = load i64, ptr %36, align 8, !tbaa !36
  %38 = sitofp i64 %37 to double
  br label %41

39:                                               ; preds = %31
  %40 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %1, i32 noundef 2) #8
  br label %41

41:                                               ; preds = %34, %39, %27
  %42 = phi double [ %30, %27 ], [ %38, %34 ], [ %40, %39 ]
  %43 = fcmp uno double %22, 0.000000e+00
  %44 = fcmp uno double %42, 0.000000e+00
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 41) #8
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  tail call void @Perl_report_uninit(ptr noundef null) #8
  br label %54

49:                                               ; preds = %41
  %50 = fcmp olt double %22, %42
  %51 = fcmp ogt double %22, %42
  %52 = zext i1 %51 to i32
  %53 = select i1 %50, i32 -1, i32 %52
  br label %54

54:                                               ; preds = %46, %48, %49
  %55 = phi i32 [ %53, %49 ], [ 0, %48 ], [ 0, %46 ]
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_amagic_cmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !54
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !54
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 8, !tbaa !56
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !59
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %14, %7, %2
  %22 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !54
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %72, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !54
  %31 = and i32 %30, 1048576
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %72, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 8, !tbaa !56
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !59
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %72, label %40

40:                                               ; preds = %14, %33
  %41 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 59, i32 noundef 0) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %72, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !54
  %46 = and i32 %45, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %41, align 8, !tbaa !56
  %50 = getelementptr inbounds %struct.xpviv, ptr %49, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !36
  %52 = trunc i64 %51 to i32
  %53 = icmp ne i32 %52, 0
  %54 = sext i1 %53 to i32
  %55 = icmp slt i32 %52, 1
  %56 = select i1 %55, i32 %54, i32 1
  br label %74

57:                                               ; preds = %43
  %58 = and i32 %45, 2097664
  %59 = icmp eq i32 %58, 512
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load ptr, ptr %41, align 8, !tbaa !56
  %62 = getelementptr inbounds %struct.xpvnv, ptr %61, i64 0, i32 5
  %63 = load double, ptr %62, align 8, !tbaa !36
  br label %66

64:                                               ; preds = %57
  %65 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %41, i32 noundef 2) #8
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi double [ %63, %60 ], [ %65, %64 ]
  %68 = fcmp ogt double %67, 0.000000e+00
  %69 = fcmp une double %67, 0.000000e+00
  %70 = sext i1 %69 to i32
  %71 = select i1 %68, i32 1, i32 %70
  br label %74

72:                                               ; preds = %21, %26, %33, %40
  %73 = tail call i32 @Perl_sv_cmp_flags(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2) #8
  br label %74

74:                                               ; preds = %72, %66, %48
  %75 = phi i32 [ %56, %48 ], [ %71, %66 ], [ %73, %72 ]
  ret i32 %75
}

; Function Attrs: optsize
declare i32 @Perl_sv_cmp(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_qsortsvu(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [32 x %struct.partition_stack_entry], align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %4) #7
  %5 = icmp ult i64 %1, 2
  br i1 %5, label %362, label %6

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 255
  br i1 %7, label %8, label %20

8:                                                ; preds = %6, %8
  %9 = phi i64 [ %10, %8 ], [ %1, %6 ]
  %10 = add i64 %9, -1
  %11 = uitofp i64 %9 to double
  %12 = tail call double @spec_rand() #8
  %13 = fmul double %12, %11
  %14 = fptoui double %13 to i64
  %15 = getelementptr inbounds ptr, ptr %0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds ptr, ptr %0, i64 %10
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  store ptr %18, ptr %15, align 8, !tbaa !5
  store ptr %16, ptr %17, align 8, !tbaa !5
  %19 = icmp ugt i64 %10, 1
  br i1 %19, label %8, label %20, !llvm.loop !90

20:                                               ; preds = %8, %6
  %21 = trunc i64 %1 to i32
  %22 = add i32 %21, -1
  %23 = getelementptr ptr, ptr %0, i64 1
  br label %24

24:                                               ; preds = %293, %20
  %25 = phi i32 [ 6, %20 ], [ %294, %293 ]
  %26 = phi i32 [ %22, %20 ], [ %295, %293 ]
  %27 = phi i32 [ 0, %20 ], [ %296, %293 ]
  %28 = phi i32 [ 0, %20 ], [ %297, %293 ]
  br label %29

29:                                               ; preds = %24, %298
  %30 = phi i32 [ %267, %298 ], [ %25, %24 ]
  %31 = phi i32 [ %299, %298 ], [ %26, %24 ]
  %32 = phi i32 [ %36, %298 ], [ %27, %24 ]
  %33 = add i32 %31, 1
  br label %34

34:                                               ; preds = %29, %301
  %35 = phi i32 [ %267, %301 ], [ %30, %29 ]
  %36 = phi i32 [ %302, %301 ], [ %32, %29 ]
  %37 = sub nsw i32 %31, %36
  %38 = icmp slt i32 %37, %35
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = icmp slt i32 %36, %31
  br i1 %40, label %41, label %351

41:                                               ; preds = %39
  %42 = sext i32 %36 to i64
  %43 = add i32 %36, -1
  br label %314

44:                                               ; preds = %34
  %45 = add nsw i32 %36, %31
  %46 = sdiv i32 %45, 2
  %47 = add nsw i32 %46, -1
  %48 = add nsw i32 %46, 1
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds ptr, ptr %0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = sext i32 %46 to i64
  %53 = getelementptr inbounds ptr, ptr %0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = tail call i32 %2(ptr noundef %51, ptr noundef %54) #8
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %44
  %58 = load ptr, ptr %53, align 8, !tbaa !5
  %59 = sext i32 %48 to i64
  %60 = getelementptr inbounds ptr, ptr %0, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = tail call i32 %2(ptr noundef %58, ptr noundef %61) #8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %117, label %64

64:                                               ; preds = %57
  %65 = icmp sgt i32 %62, 0
  br i1 %65, label %66, label %117

66:                                               ; preds = %64
  %67 = load ptr, ptr %50, align 8, !tbaa !5
  %68 = load ptr, ptr %60, align 8, !tbaa !5
  %69 = tail call i32 %2(ptr noundef %67, ptr noundef %68) #8
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load <2 x ptr>, ptr %53, align 8, !tbaa !5
  %73 = shufflevector <2 x ptr> %72, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %73, ptr %53, align 8, !tbaa !5
  br label %117

74:                                               ; preds = %66
  %75 = icmp eq i32 %69, 0
  %76 = load ptr, ptr %53, align 8, !tbaa !5
  br i1 %75, label %77, label %79

77:                                               ; preds = %74
  %78 = load ptr, ptr %60, align 8, !tbaa !5
  store ptr %78, ptr %53, align 8, !tbaa !5
  store ptr %76, ptr %60, align 8, !tbaa !5
  br label %117

79:                                               ; preds = %74
  %80 = load ptr, ptr %50, align 8, !tbaa !5
  store ptr %80, ptr %53, align 8, !tbaa !5
  %81 = load ptr, ptr %60, align 8, !tbaa !5
  store ptr %81, ptr %50, align 8, !tbaa !5
  store ptr %76, ptr %60, align 8, !tbaa !5
  br label %117

82:                                               ; preds = %44
  %83 = icmp eq i32 %55, 0
  %84 = load ptr, ptr %53, align 8, !tbaa !5
  %85 = sext i32 %48 to i64
  %86 = getelementptr inbounds ptr, ptr %0, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = tail call i32 %2(ptr noundef %84, ptr noundef %87) #8
  %89 = icmp slt i32 %88, 0
  br i1 %83, label %90, label %96

90:                                               ; preds = %82
  br i1 %89, label %117, label %91

91:                                               ; preds = %90
  %92 = icmp eq i32 %88, 0
  br i1 %92, label %117, label %93

93:                                               ; preds = %91
  %94 = load ptr, ptr %50, align 8, !tbaa !5
  %95 = load ptr, ptr %86, align 8, !tbaa !5
  store ptr %95, ptr %50, align 8, !tbaa !5
  store ptr %94, ptr %86, align 8, !tbaa !5
  br label %117

96:                                               ; preds = %82
  br i1 %89, label %97, label %112

97:                                               ; preds = %96
  %98 = load ptr, ptr %50, align 8, !tbaa !5
  %99 = load ptr, ptr %86, align 8, !tbaa !5
  %100 = tail call i32 %2(ptr noundef %98, ptr noundef %99) #8
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load <2 x ptr>, ptr %50, align 8, !tbaa !5
  %104 = shufflevector <2 x ptr> %103, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %104, ptr %50, align 8, !tbaa !5
  br label %117

105:                                              ; preds = %97
  %106 = icmp eq i32 %100, 0
  %107 = load ptr, ptr %50, align 8, !tbaa !5
  %108 = load ptr, ptr %53, align 8, !tbaa !5
  store ptr %108, ptr %50, align 8, !tbaa !5
  br i1 %106, label %109, label %110

109:                                              ; preds = %105
  store ptr %107, ptr %53, align 8, !tbaa !5
  br label %117

110:                                              ; preds = %105
  %111 = load ptr, ptr %86, align 8, !tbaa !5
  store ptr %111, ptr %53, align 8, !tbaa !5
  store ptr %107, ptr %86, align 8, !tbaa !5
  br label %117

112:                                              ; preds = %96
  %113 = icmp eq i32 %88, 0
  %114 = load ptr, ptr %50, align 8, !tbaa !5
  %115 = load ptr, ptr %86, align 8, !tbaa !5
  store ptr %115, ptr %50, align 8, !tbaa !5
  store ptr %114, ptr %86, align 8, !tbaa !5
  %116 = select i1 %113, i32 %47, i32 %46
  br label %117

117:                                              ; preds = %112, %91, %90, %57, %93, %102, %110, %109, %71, %79, %77, %64
  %118 = phi i32 [ 1, %71 ], [ 1, %77 ], [ 1, %79 ], [ 0, %64 ], [ 1, %93 ], [ 1, %102 ], [ 1, %109 ], [ 1, %110 ], [ 0, %57 ], [ 0, %90 ], [ 0, %91 ], [ 1, %112 ]
  %119 = phi i32 [ %46, %71 ], [ %47, %77 ], [ %46, %79 ], [ %46, %64 ], [ %46, %93 ], [ %46, %102 ], [ %46, %109 ], [ %46, %110 ], [ %46, %57 ], [ %47, %90 ], [ %47, %91 ], [ %116, %112 ]
  %120 = phi i32 [ %46, %71 ], [ %46, %77 ], [ %46, %79 ], [ %46, %64 ], [ %48, %93 ], [ %46, %102 ], [ %48, %109 ], [ %46, %110 ], [ %48, %57 ], [ %46, %90 ], [ %48, %91 ], [ %46, %112 ]
  %121 = add nsw i32 %46, -2
  %122 = add nsw i32 %46, 2
  %123 = sext i32 %36 to i64
  %124 = add i32 %36, -1
  br label %125

125:                                              ; preds = %257, %117
  %126 = phi i32 [ %118, %117 ], [ %263, %257 ]
  %127 = phi i32 [ %119, %117 ], [ %259, %257 ]
  %128 = phi i32 [ %120, %117 ], [ %260, %257 ]
  %129 = phi i32 [ %121, %117 ], [ %261, %257 ]
  %130 = phi i32 [ %122, %117 ], [ %262, %257 ]
  %131 = icmp slt i32 %129, %36
  br i1 %131, label %162, label %132

132:                                              ; preds = %125
  %133 = sext i32 %129 to i64
  br label %134

134:                                              ; preds = %132, %157
  %135 = phi i64 [ %133, %132 ], [ %160, %157 ]
  %136 = phi i32 [ %127, %132 ], [ %159, %157 ]
  %137 = phi i32 [ %126, %132 ], [ %158, %157 ]
  %138 = getelementptr inbounds ptr, ptr %0, i64 %135
  %139 = load ptr, ptr %138, align 8, !tbaa !5
  %140 = sext i32 %136 to i64
  %141 = getelementptr inbounds ptr, ptr %0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !5
  %143 = tail call i32 %2(ptr noundef %139, ptr noundef %142) #8
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %134
  %146 = icmp eq i32 %143, 0
  %147 = trunc i64 %135 to i32
  br i1 %146, label %148, label %162

148:                                              ; preds = %145
  %149 = add nsw i32 %136, -1
  %150 = icmp eq i32 %149, %147
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = add nsw i32 %137, 1
  %153 = load ptr, ptr %138, align 8, !tbaa !5
  %154 = sext i32 %149 to i64
  %155 = getelementptr inbounds ptr, ptr %0, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !5
  store ptr %156, ptr %138, align 8, !tbaa !5
  store ptr %153, ptr %155, align 8, !tbaa !5
  br label %157

157:                                              ; preds = %148, %151, %134
  %158 = phi i32 [ %137, %134 ], [ %152, %151 ], [ %137, %148 ]
  %159 = phi i32 [ %136, %134 ], [ %149, %151 ], [ %147, %148 ]
  %160 = add nsw i64 %135, -1
  %161 = icmp sgt i64 %135, %123
  br i1 %161, label %134, label %162, !llvm.loop !91

162:                                              ; preds = %157, %145, %125
  %163 = phi i32 [ %126, %125 ], [ %137, %145 ], [ %158, %157 ]
  %164 = phi i32 [ %127, %125 ], [ %136, %145 ], [ %159, %157 ]
  %165 = phi i32 [ %129, %125 ], [ %147, %145 ], [ %124, %157 ]
  %166 = phi i1 [ true, %125 ], [ false, %145 ], [ true, %157 ]
  %167 = icmp sgt i32 %130, %31
  br i1 %167, label %199, label %168

168:                                              ; preds = %162
  %169 = sext i32 %130 to i64
  br label %170

170:                                              ; preds = %168, %193
  %171 = phi i64 [ %169, %168 ], [ %196, %193 ]
  %172 = phi i32 [ %128, %168 ], [ %195, %193 ]
  %173 = phi i32 [ %163, %168 ], [ %194, %193 ]
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds ptr, ptr %0, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !5
  %177 = getelementptr inbounds ptr, ptr %0, i64 %171
  %178 = load ptr, ptr %177, align 8, !tbaa !5
  %179 = tail call i32 %2(ptr noundef %176, ptr noundef %178) #8
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %170
  %182 = icmp eq i32 %179, 0
  br i1 %182, label %183, label %203

183:                                              ; preds = %181
  %184 = add nsw i32 %172, 1
  %185 = trunc i64 %171 to i32
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %193, label %187

187:                                              ; preds = %183
  %188 = add nsw i32 %173, 1
  %189 = sext i32 %184 to i64
  %190 = getelementptr inbounds ptr, ptr %0, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !5
  %192 = load ptr, ptr %177, align 8, !tbaa !5
  store ptr %192, ptr %190, align 8, !tbaa !5
  store ptr %191, ptr %177, align 8, !tbaa !5
  br label %193

193:                                              ; preds = %183, %187, %170
  %194 = phi i32 [ %173, %170 ], [ %188, %187 ], [ %173, %183 ]
  %195 = phi i32 [ %172, %170 ], [ %184, %187 ], [ %185, %183 ]
  %196 = add nsw i64 %171, 1
  %197 = trunc i64 %196 to i32
  %198 = icmp eq i32 %33, %197
  br i1 %198, label %199, label %170, !llvm.loop !92

199:                                              ; preds = %193, %162
  %200 = phi i32 [ %163, %162 ], [ %194, %193 ]
  %201 = phi i32 [ %128, %162 ], [ %195, %193 ]
  %202 = phi i32 [ %130, %162 ], [ %33, %193 ]
  br i1 %166, label %264, label %215

203:                                              ; preds = %181
  %204 = trunc i64 %171 to i32
  br i1 %166, label %232, label %205

205:                                              ; preds = %203
  %206 = sext i32 %165 to i64
  %207 = getelementptr inbounds ptr, ptr %0, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !5
  %209 = shl i64 %171, 32
  %210 = ashr exact i64 %209, 32
  %211 = getelementptr inbounds ptr, ptr %0, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !5
  store ptr %212, ptr %207, align 8, !tbaa !5
  store ptr %208, ptr %211, align 8, !tbaa !5
  %213 = add nsw i32 %165, -1
  %214 = add nsw i32 %204, 1
  br label %257

215:                                              ; preds = %199
  %216 = add nsw i32 %164, -1
  %217 = icmp eq i32 %216, %165
  %218 = sext i32 %165 to i64
  %219 = getelementptr inbounds ptr, ptr %0, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !5
  br i1 %217, label %225, label %221

221:                                              ; preds = %215
  %222 = sext i32 %216 to i64
  %223 = getelementptr inbounds ptr, ptr %0, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !5
  store ptr %224, ptr %219, align 8, !tbaa !5
  br label %225

225:                                              ; preds = %215, %221
  %226 = phi ptr [ %223, %221 ], [ %219, %215 ]
  %227 = sext i32 %201 to i64
  %228 = getelementptr inbounds ptr, ptr %0, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !5
  store ptr %229, ptr %226, align 8, !tbaa !5
  store ptr %220, ptr %228, align 8, !tbaa !5
  %230 = add nsw i32 %201, -1
  %231 = add nsw i32 %165, -1
  br label %257

232:                                              ; preds = %203
  %233 = add nsw i32 %172, 1
  %234 = icmp eq i32 %233, %204
  br i1 %234, label %235, label %243

235:                                              ; preds = %232
  %236 = shl i64 %171, 32
  %237 = ashr exact i64 %236, 32
  %238 = getelementptr inbounds ptr, ptr %0, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !5
  %240 = sext i32 %164 to i64
  %241 = getelementptr inbounds ptr, ptr %0, i64 %240
  %242 = load ptr, ptr %241, align 8, !tbaa !5
  store ptr %242, ptr %238, align 8, !tbaa !5
  store ptr %239, ptr %241, align 8, !tbaa !5
  br label %254

243:                                              ; preds = %232
  %244 = sext i32 %233 to i64
  %245 = getelementptr inbounds ptr, ptr %0, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !5
  %247 = sext i32 %164 to i64
  %248 = getelementptr inbounds ptr, ptr %0, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !5
  store ptr %249, ptr %245, align 8, !tbaa !5
  %250 = shl i64 %171, 32
  %251 = ashr exact i64 %250, 32
  %252 = getelementptr inbounds ptr, ptr %0, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !5
  store ptr %253, ptr %248, align 8, !tbaa !5
  store ptr %246, ptr %252, align 8, !tbaa !5
  br label %254

254:                                              ; preds = %243, %235
  %255 = add nsw i32 %164, 1
  %256 = add nsw i32 %204, 1
  br label %257

257:                                              ; preds = %254, %225, %205
  %258 = phi i32 [ %173, %205 ], [ %200, %225 ], [ %173, %254 ]
  %259 = phi i32 [ %164, %205 ], [ %216, %225 ], [ %255, %254 ]
  %260 = phi i32 [ %172, %205 ], [ %230, %225 ], [ %233, %254 ]
  %261 = phi i32 [ %213, %205 ], [ %231, %225 ], [ %165, %254 ]
  %262 = phi i32 [ %214, %205 ], [ %202, %225 ], [ %256, %254 ]
  %263 = add nsw i32 %258, 1
  br label %125

264:                                              ; preds = %199
  %265 = icmp slt i32 %200, 3
  %266 = shl nsw i32 %35, 1
  %267 = select i1 %265, i32 %266, i32 6
  %268 = icmp slt i32 %36, %164
  %269 = icmp slt i32 %201, %31
  br i1 %268, label %270, label %300

270:                                              ; preds = %264
  br i1 %269, label %271, label %298

271:                                              ; preds = %270
  %272 = sub nsw i32 %31, %201
  %273 = sub nsw i32 %164, %36
  %274 = icmp sgt i32 %272, %273
  br i1 %274, label %275, label %282

275:                                              ; preds = %271
  %276 = add nsw i32 %201, 1
  %277 = sext i32 %28 to i64
  %278 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %277
  store i32 %276, ptr %278, align 4, !tbaa !93
  %279 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %277, i32 1
  store i32 %31, ptr %279, align 4, !tbaa !95
  %280 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %277, i32 2
  store i32 %267, ptr %280, align 4, !tbaa !96
  %281 = add nsw i32 %164, -1
  br label %289

282:                                              ; preds = %271
  %283 = sext i32 %28 to i64
  %284 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %283
  store i32 %36, ptr %284, align 4, !tbaa !93
  %285 = add nsw i32 %164, -1
  %286 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %283, i32 1
  store i32 %285, ptr %286, align 4, !tbaa !95
  %287 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %283, i32 2
  store i32 %267, ptr %287, align 4, !tbaa !96
  %288 = add nsw i32 %201, 1
  br label %289

289:                                              ; preds = %282, %275
  %290 = phi i32 [ %281, %275 ], [ %31, %282 ]
  %291 = phi i32 [ %36, %275 ], [ %288, %282 ]
  %292 = add nsw i32 %28, 1
  br label %293

293:                                              ; preds = %289, %305, %353
  %294 = phi i32 [ %361, %353 ], [ %313, %305 ], [ %267, %289 ]
  %295 = phi i32 [ %359, %353 ], [ %311, %305 ], [ %290, %289 ]
  %296 = phi i32 [ %357, %353 ], [ %309, %305 ], [ %291, %289 ]
  %297 = phi i32 [ %354, %353 ], [ %306, %305 ], [ %292, %289 ]
  br label %24

298:                                              ; preds = %270
  %299 = add nsw i32 %164, -1
  br label %29

300:                                              ; preds = %264
  br i1 %269, label %301, label %303

301:                                              ; preds = %300
  %302 = add nsw i32 %201, 1
  br label %34

303:                                              ; preds = %300
  %304 = icmp eq i32 %28, 0
  br i1 %304, label %362, label %305

305:                                              ; preds = %303
  %306 = add nsw i32 %28, -1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !93
  %310 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %307, i32 1
  %311 = load i32, ptr %310, align 4, !tbaa !95
  %312 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %307, i32 2
  %313 = load i32, ptr %312, align 4, !tbaa !96
  br label %293

314:                                              ; preds = %41, %348
  %315 = phi i64 [ %42, %41 ], [ %316, %348 ]
  %316 = add nsw i64 %315, 1
  %317 = getelementptr inbounds ptr, ptr %0, i64 %316
  %318 = icmp slt i64 %315, %42
  %319 = trunc i64 %315 to i32
  br i1 %318, label %348, label %320

320:                                              ; preds = %314, %327
  %321 = phi i64 [ %328, %327 ], [ %315, %314 ]
  %322 = load ptr, ptr %317, align 8, !tbaa !5
  %323 = getelementptr inbounds ptr, ptr %0, i64 %321
  %324 = load ptr, ptr %323, align 8, !tbaa !5
  %325 = tail call i32 %2(ptr noundef %322, ptr noundef %324) #8
  %326 = icmp sgt i32 %325, -1
  br i1 %326, label %330, label %327

327:                                              ; preds = %320
  %328 = add nsw i64 %321, -1
  %329 = icmp sgt i64 %321, %42
  br i1 %329, label %320, label %332, !llvm.loop !97

330:                                              ; preds = %320
  %331 = trunc i64 %321 to i32
  br label %332

332:                                              ; preds = %327, %330
  %333 = phi i32 [ %331, %330 ], [ %43, %327 ]
  %334 = icmp eq i32 %333, %319
  br i1 %334, label %348, label %335

335:                                              ; preds = %332
  %336 = load ptr, ptr %317, align 8, !tbaa !5
  %337 = sext i32 %333 to i64
  %338 = icmp sgt i64 %315, %337
  br i1 %338, label %339, label %346

339:                                              ; preds = %335, %339
  %340 = phi i64 [ %344, %339 ], [ %315, %335 ]
  %341 = getelementptr inbounds ptr, ptr %0, i64 %340
  %342 = load ptr, ptr %341, align 8, !tbaa !5
  %343 = getelementptr ptr, ptr %341, i64 1
  store ptr %342, ptr %343, align 8, !tbaa !5
  %344 = add nsw i64 %340, -1
  %345 = icmp sgt i64 %344, %337
  br i1 %345, label %339, label %346, !llvm.loop !98

346:                                              ; preds = %339, %335
  %347 = getelementptr ptr, ptr %23, i64 %337
  store ptr %336, ptr %347, align 8, !tbaa !5
  br label %348

348:                                              ; preds = %314, %346, %332
  %349 = trunc i64 %316 to i32
  %350 = icmp eq i32 %31, %349
  br i1 %350, label %351, label %314, !llvm.loop !99

351:                                              ; preds = %348, %39
  %352 = icmp eq i32 %28, 0
  br i1 %352, label %362, label %353

353:                                              ; preds = %351
  %354 = add nsw i32 %28, -1
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %355
  %357 = load i32, ptr %356, align 4, !tbaa !93
  %358 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %355, i32 1
  %359 = load i32, ptr %358, align 4, !tbaa !95
  %360 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %355, i32 2
  %361 = load i32, ptr %360, align 4, !tbaa !96
  br label %293

362:                                              ; preds = %351, %303, %3
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %4) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @cmpindir_desc(ptr noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !5
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = tail call i32 %3(ptr noundef %4, ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = sub nsw i32 0, %6
  br label %15

10:                                               ; preds = %2
  %11 = icmp ugt ptr %0, %1
  %12 = icmp ult ptr %0, %1
  %13 = sext i1 %12 to i32
  %14 = select i1 %11, i32 1, i32 %13
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %9, %8 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @cmpindir(ptr noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !5
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = tail call i32 %3(ptr noundef %4, ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  %8 = icmp ugt ptr %0, %1
  %9 = icmp ult ptr %0, %1
  %10 = sext i1 %9 to i32
  %11 = select i1 %8, i32 1, i32 %10
  %12 = select i1 %7, i32 %11, i32 %6
  ret i32 %12
}

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @cmp_desc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !5
  %4 = tail call i32 %3(ptr noundef %0, ptr noundef %1) #8
  %5 = sub nsw i32 0, %4
  ret i32 %5
}

; Function Attrs: optsize
declare double @spec_rand() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @dynprep(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds ptr, ptr %0, i64 %2
  %6 = load ptr, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds ptr, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = tail call i32 %3(ptr noundef %6, ptr noundef %8) #8
  %10 = icmp sgt i64 %2, 0
  br i1 %10, label %11, label %136

11:                                               ; preds = %4
  %12 = icmp sgt i32 %9, 0
  br label %13

13:                                               ; preds = %11, %131
  %14 = phi i1 [ %134, %131 ], [ %12, %11 ]
  %15 = phi ptr [ %132, %131 ], [ %0, %11 ]
  %16 = phi i64 [ %133, %131 ], [ 0, %11 ]
  %17 = phi ptr [ %121, %131 ], [ %1, %11 ]
  br label %18

18:                                               ; preds = %13, %23
  %19 = phi ptr [ %20, %23 ], [ %15, %13 ]
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = getelementptr inbounds ptr, ptr %19, i64 3
  %22 = icmp ult ptr %21, %5
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load ptr, ptr %20, align 8, !tbaa !5
  %25 = load ptr, ptr %21, align 8, !tbaa !5
  %26 = tail call i32 %3(ptr noundef %24, ptr noundef %25) #8
  %27 = icmp slt i32 %26, 1
  %28 = xor i1 %14, %27
  br i1 %28, label %18, label %29, !llvm.loop !100

29:                                               ; preds = %23, %18
  %30 = icmp eq ptr %21, %5
  %31 = getelementptr inbounds ptr, ptr %19, i64 1
  br label %32

32:                                               ; preds = %129, %29
  %33 = phi ptr [ %15, %29 ], [ %105, %129 ]
  %34 = phi ptr [ %17, %29 ], [ %121, %129 ]
  %35 = phi i64 [ %16, %29 ], [ %122, %129 ]
  %36 = phi ptr [ %15, %29 ], [ %104, %129 ]
  %37 = getelementptr inbounds ptr, ptr %36, i64 16
  %38 = icmp ult ptr %37, %20
  br i1 %38, label %39, label %64

39:                                               ; preds = %32, %47
  %40 = phi ptr [ %48, %47 ], [ %37, %32 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 -1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = load ptr, ptr %40, align 8, !tbaa !5
  %44 = tail call i32 %3(ptr noundef %42, ptr noundef %43) #8
  %45 = icmp slt i32 %44, 1
  %46 = xor i1 %14, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = getelementptr inbounds ptr, ptr %40, i64 -2
  %49 = icmp ugt ptr %48, %33
  br i1 %49, label %39, label %50, !llvm.loop !101

50:                                               ; preds = %39, %47
  %51 = phi ptr [ %48, %47 ], [ %40, %39 ]
  %52 = icmp ugt ptr %51, %33
  br i1 %52, label %64, label %53

53:                                               ; preds = %50, %57
  %54 = phi ptr [ %55, %57 ], [ %37, %50 ]
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = icmp ult ptr %54, %19
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = getelementptr inbounds ptr, ptr %54, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = load ptr, ptr %55, align 8, !tbaa !5
  %61 = tail call i32 %3(ptr noundef %59, ptr noundef %60) #8
  %62 = icmp slt i32 %61, 1
  %63 = xor i1 %14, %62
  br i1 %63, label %53, label %64, !llvm.loop !102

64:                                               ; preds = %57, %53, %32, %50
  %65 = phi ptr [ %33, %50 ], [ %33, %32 ], [ %54, %53 ], [ %54, %57 ]
  %66 = phi ptr [ %51, %50 ], [ %20, %32 ], [ %55, %53 ], [ %55, %57 ]
  %67 = phi ptr [ %37, %50 ], [ %20, %32 ], [ %55, %53 ], [ %55, %57 ]
  %68 = icmp ugt ptr %65, %36
  br i1 %68, label %69, label %101

69:                                               ; preds = %64
  %70 = getelementptr inbounds ptr, ptr %65, i64 2
  %71 = icmp eq ptr %65, %19
  %72 = select i1 %71, i1 %30, i1 false
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load ptr, ptr %31, align 8, !tbaa !5
  %75 = load ptr, ptr %70, align 8, !tbaa !5
  %76 = tail call i32 %3(ptr noundef %74, ptr noundef %75) #8
  %77 = icmp slt i32 %76, 1
  %78 = xor i1 %14, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %73, %69
  %81 = phi ptr [ %5, %79 ], [ %70, %73 ], [ %70, %69 ]
  %82 = phi ptr [ %5, %79 ], [ %67, %73 ], [ %67, %69 ]
  %83 = phi ptr [ %5, %79 ], [ %66, %73 ], [ %66, %69 ]
  %84 = ptrtoint ptr %81 to i64
  %85 = ptrtoint ptr %36 to i64
  %86 = sub i64 %84, %85
  %87 = ashr exact i64 %86, 3
  %88 = getelementptr inbounds ptr, ptr %34, i64 %87
  store ptr %88, ptr %34, align 8, !tbaa !5
  %89 = add nsw i64 %35, 1
  %90 = getelementptr inbounds ptr, ptr %81, i64 -1
  %91 = icmp ult ptr %36, %90
  %92 = select i1 %14, i1 %91, i1 false
  br i1 %92, label %93, label %101

93:                                               ; preds = %80, %93
  %94 = phi ptr [ %99, %93 ], [ %90, %80 ]
  %95 = phi ptr [ %98, %93 ], [ %36, %80 ]
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = load ptr, ptr %94, align 8, !tbaa !5
  %98 = getelementptr inbounds ptr, ptr %95, i64 1
  store ptr %97, ptr %95, align 8, !tbaa !5
  store ptr %96, ptr %94, align 8, !tbaa !5
  %99 = getelementptr inbounds ptr, ptr %94, i64 -1
  %100 = icmp ult ptr %98, %99
  br i1 %100, label %93, label %101, !llvm.loop !103

101:                                              ; preds = %93, %80, %64
  %102 = phi ptr [ %65, %64 ], [ %81, %80 ], [ %81, %93 ]
  %103 = phi ptr [ %34, %64 ], [ %88, %80 ], [ %88, %93 ]
  %104 = phi ptr [ %66, %64 ], [ %83, %80 ], [ %83, %93 ]
  %105 = phi ptr [ %67, %64 ], [ %82, %80 ], [ %82, %93 ]
  %106 = phi i64 [ %35, %64 ], [ %89, %80 ], [ %89, %93 ]
  %107 = icmp ult ptr %102, %104
  br i1 %107, label %108, label %120

108:                                              ; preds = %101, %117
  %109 = phi i64 [ %113, %117 ], [ %106, %101 ]
  %110 = phi ptr [ %112, %117 ], [ %103, %101 ]
  %111 = phi ptr [ %118, %117 ], [ %102, %101 ]
  %112 = getelementptr inbounds ptr, ptr %110, i64 2
  store ptr %112, ptr %110, align 8, !tbaa !5
  %113 = add nsw i64 %109, 1
  br i1 %14, label %114, label %117

114:                                              ; preds = %108
  %115 = load <2 x ptr>, ptr %111, align 8, !tbaa !5
  %116 = shufflevector <2 x ptr> %115, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %116, ptr %111, align 8, !tbaa !5
  br label %117

117:                                              ; preds = %108, %114
  %118 = getelementptr inbounds ptr, ptr %111, i64 2
  %119 = icmp ult ptr %118, %104
  br i1 %119, label %108, label %120, !llvm.loop !104

120:                                              ; preds = %117, %101
  %121 = phi ptr [ %103, %101 ], [ %112, %117 ]
  %122 = phi i64 [ %106, %101 ], [ %113, %117 ]
  %123 = icmp eq ptr %104, %20
  %124 = select i1 %123, i1 %30, i1 false
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = getelementptr inbounds ptr, ptr %121, i64 1
  store ptr %126, ptr %121, align 8, !tbaa !5
  %127 = add nsw i64 %122, 1
  %128 = getelementptr inbounds ptr, ptr %19, i64 3
  br label %131

129:                                              ; preds = %120
  %130 = icmp ult ptr %104, %20
  br i1 %130, label %32, label %131, !llvm.loop !105

131:                                              ; preds = %129, %125
  %132 = phi ptr [ %128, %125 ], [ %104, %129 ]
  %133 = phi i64 [ %127, %125 ], [ %122, %129 ]
  %134 = xor i1 %14, true
  %135 = icmp ult ptr %132, %5
  br i1 %135, label %13, label %136, !llvm.loop !106

136:                                              ; preds = %131, %4
  %137 = phi i64 [ 0, %4 ], [ %133, %131 ]
  ret i64 %137
}

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_report_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_amagic_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_cmp_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize willreturn memory(read) }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = !{!14, !15, i64 8}
!14 = !{!"", !15, i64 0, !15, i64 8}
!15 = !{!"long", !7, i64 0}
!16 = !{!14, !15, i64 0}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !7, i64 0}
!29 = !{!30, !7, i64 34}
!30 = !{!"op", !6, i64 0, !6, i64 8, !6, i64 16, !15, i64 24, !28, i64 32, !28, i64 33, !28, i64 33, !28, i64 33, !28, i64 33, !28, i64 33, !28, i64 33, !28, i64 33, !7, i64 34, !7, i64 35}
!31 = !{!30, !6, i64 0}
!32 = !{!30, !7, i64 35}
!33 = !{!34, !6, i64 40}
!34 = !{!"listop", !6, i64 0, !6, i64 8, !6, i64 16, !15, i64 24, !28, i64 32, !28, i64 33, !28, i64 33, !28, i64 33, !28, i64 33, !28, i64 33, !28, i64 33, !28, i64 33, !7, i64 34, !7, i64 35, !6, i64 40, !6, i64 48}
!35 = !{!30, !6, i64 8}
!36 = !{!7, !7, i64 0}
!37 = !{!38, !6, i64 0}
!38 = !{!"cv", !6, i64 0, !28, i64 8, !28, i64 12, !7, i64 16}
!39 = !{!40, !28, i64 92}
!40 = !{!"xpvcv", !6, i64 0, !7, i64 8, !15, i64 16, !7, i64 24, !6, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !6, i64 64, !7, i64 72, !6, i64 80, !28, i64 88, !28, i64 92, !28, i64 96}
!41 = !{!42, !6, i64 0}
!42 = !{!"gv", !6, i64 0, !28, i64 8, !28, i64 12, !7, i64 16}
!43 = !{!44, !28, i64 4}
!44 = !{!"hek", !28, i64 0, !28, i64 4, !7, i64 8}
!45 = !{!46, !28, i64 24}
!46 = !{!"gp", !6, i64 0, !6, i64 8, !6, i64 16, !28, i64 24, !28, i64 28, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !28, i64 64, !28, i64 67, !6, i64 72}
!47 = !{!46, !6, i64 16}
!48 = !{!49, !28, i64 12}
!49 = !{!"av", !6, i64 0, !28, i64 8, !28, i64 12, !7, i64 16}
!50 = !{!49, !6, i64 0}
!51 = !{!52, !15, i64 16}
!52 = !{!"xpvav", !6, i64 0, !7, i64 8, !15, i64 16, !15, i64 24, !6, i64 32}
!53 = distinct !{!53, !10}
!54 = !{!55, !28, i64 12}
!55 = !{!"sv", !6, i64 0, !28, i64 8, !28, i64 12, !7, i64 16}
!56 = !{!55, !6, i64 0}
!57 = !{!58, !6, i64 0}
!58 = !{!"xpvmg", !6, i64 0, !7, i64 8, !15, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!59 = !{!60, !28, i64 12}
!60 = !{!"hv", !6, i64 0, !28, i64 8, !28, i64 12, !7, i64 16}
!61 = distinct !{!61, !10}
!62 = !{!63, !64, i64 212}
!63 = !{!"jmpenv", !7, i64 0, !6, i64 200, !28, i64 208, !64, i64 212}
!64 = !{!"_Bool", !7, i64 0}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!15, !15, i64 0}
!68 = !{!69, !6, i64 24}
!69 = !{!"stackinfo", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !28, i64 32, !28, i64 36, !28, i64 40, !28, i64 44}
!70 = !{!69, !6, i64 16}
!71 = !{!69, !28, i64 40}
!72 = !{!69, !28, i64 32}
!73 = !{!69, !6, i64 0}
!74 = !{!52, !15, i64 24}
!75 = !{!69, !28, i64 36}
!76 = !{!69, !6, i64 8}
!77 = !{!55, !28, i64 8}
!78 = !{!79, !6, i64 8}
!79 = !{!"padlist", !15, i64 0, !6, i64 8, !28, i64 16, !28, i64 20}
!80 = !{!46, !6, i64 40}
!81 = !{!52, !6, i64 32}
!82 = distinct !{!82, !10}
!83 = distinct !{!83, !10}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, !10}
!86 = distinct !{!86, !10}
!87 = !{!46, !6, i64 0}
!88 = distinct !{!88, !10}
!89 = !{i32 -1, i32 2}
!90 = distinct !{!90, !10}
!91 = distinct !{!91, !10}
!92 = distinct !{!92, !10}
!93 = !{!94, !28, i64 0}
!94 = !{!"partition_stack_entry", !28, i64 0, !28, i64 4, !28, i64 8}
!95 = !{!94, !28, i64 4}
!96 = !{!94, !28, i64 8}
!97 = distinct !{!97, !10}
!98 = distinct !{!98, !10}
!99 = distinct !{!99, !10}
!100 = distinct !{!100, !10}
!101 = distinct !{!101, !10}
!102 = distinct !{!102, !10}
!103 = distinct !{!103, !10}
!104 = distinct !{!104, !10}
!105 = distinct !{!105, !10}
!106 = distinct !{!106, !10}
