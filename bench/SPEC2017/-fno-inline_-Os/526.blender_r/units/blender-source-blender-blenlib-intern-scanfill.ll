; ModuleID = 'blender/source/blender/blenlib/intern/scanfill.c'
source_filename = "blender/source/blender/blenlib/intern/scanfill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ScanFillContext = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, i16, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.ScanFillVert = type { ptr, ptr, %union.anon, [3 x float], [2 x float], i32, i16, i8, i8 }
%union.anon = type { ptr }
%struct.ScanFillEdge = type { ptr, ptr, ptr, ptr, i16, i8, %union.anon.0 }
%union.anon.0 = type { i8 }
%struct.PolyFill = type { i32, i32, [2 x float], [2 x float], i16, i8 }
%struct.ScanFillVertLink = type { ptr, ptr, ptr }
%struct.ScanFillFace = type { ptr, ptr, ptr, ptr, ptr }

@__func__.BLI_scanfill_begin = private unnamed_addr constant [19 x i8] c"BLI_scanfill_begin\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"edgefill\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"polycache\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"Scanfill1\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error in search edge: %p\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_scanfill_vert_add(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef 56) #15
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %1) #16
  %8 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 4
  tail call fastcc void @zero_v2(ptr noundef nonnull %8) #16
  %9 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 5
  store i32 0, ptr %9, align 4, !tbaa !42
  %10 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 6
  store i16 %11, ptr %12, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 7
  store i8 0, ptr %13, align 2, !tbaa !47
  %14 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 8
  store i8 0, ptr %14, align 1
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !48 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  store float %3, ptr %0, align 4, !tbaa !49
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !51 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_scanfill_edge_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr @BLI_memarena_alloc(ptr noundef %5, i64 noundef 40) #15
  %7 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %6) #15
  %8 = getelementptr inbounds %struct.ScanFillEdge, ptr %6, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.ScanFillEdge, ptr %6, i64 0, i32 3
  store ptr %2, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.ScanFillEdge, ptr %6, i64 0, i32 4
  store i16 %11, ptr %12, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.ScanFillEdge, ptr %6, i64 0, i32 5
  store i8 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.ScanFillEdge, ptr %6, i64 0, i32 6
  store i8 0, ptr %14, align 1, !tbaa !41
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_scanfill_begin(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %2 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 3
  store i16 -1, ptr %2, align 8, !tbaa !45
  %3 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BLI_scanfill_begin) #15
  %4 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 4
  store ptr %3, ptr %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BLI_scanfill_begin_arena(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 56, i1 false)
  %3 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 3
  store i16 -1, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 4
  store ptr %1, ptr %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_scanfill_end(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @BLI_memarena_free(ptr noundef %3) #15
  store ptr null, ptr %2, align 8, !tbaa !34
  tail call fastcc void @BLI_listbase_clear(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %4) #16
  %5 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 2
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !56 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_scanfill_end_arena(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_memarena_clear(ptr noundef %1) #15
  tail call fastcc void @BLI_listbase_clear(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %3) #16
  %4 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 2
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @BLI_memarena_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_scanfill_calc_ex(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 16
  %5 = alloca %struct.ListBase, align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #17
  %8 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %3, %11
  %12 = phi ptr [ %25, %11 ], [ %9, %3 ]
  %13 = getelementptr inbounds %struct.ScanFillEdge, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.ScanFillVert, ptr %14, i64 0, i32 8
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, -16
  %18 = or disjoint i8 %17, 1
  store i8 %18, ptr %15, align 1
  %19 = getelementptr inbounds %struct.ScanFillEdge, ptr %12, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.ScanFillVert, ptr %20, i64 0, i32 8
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, -16
  %24 = or disjoint i8 %23, 1
  store i8 %24, ptr %21, align 1
  %25 = load ptr, ptr %12, align 8, !tbaa !57
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %11, !llvm.loop !58

27:                                               ; preds = %11, %3
  br label %28

28:                                               ; preds = %27, %32
  %29 = phi ptr [ %30, %32 ], [ %0, %27 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = icmp eq ptr %30, null
  br i1 %31, label %377, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ScanFillVert, ptr %30, i64 0, i32 8
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 15
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %37, label %28, !llvm.loop !60

37:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  %38 = icmp eq ptr %2, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %2) #16
  br label %58

40:                                               ; preds = %37
  call fastcc void @zero_v3(ptr noundef nonnull %7) #16
  %41 = load ptr, ptr %0, align 8, !tbaa !57
  %42 = icmp eq ptr %41, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !61
  %46 = getelementptr inbounds %struct.ScanFillVert, ptr %45, i64 0, i32 3
  br label %47

47:                                               ; preds = %43, %54
  %48 = phi ptr [ %56, %54 ], [ %41, %43 ]
  %49 = phi ptr [ %55, %54 ], [ %46, %43 ]
  %50 = getelementptr inbounds %struct.ScanFillVert, ptr %48, i64 0, i32 3
  %51 = tail call fastcc zeroext i8 @compare_v3v3(ptr noundef %49, ptr noundef nonnull %50) #16
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  call fastcc void @add_newell_cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef %49, ptr noundef nonnull %50) #16
  br label %54

54:                                               ; preds = %47, %53
  %55 = phi ptr [ %49, %47 ], [ %50, %53 ]
  %56 = load ptr, ptr %48, align 8, !tbaa !57
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %47, !llvm.loop !62

58:                                               ; preds = %54, %40, %39
  %59 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #16
  %60 = fcmp une float %59, 0.000000e+00
  br i1 %60, label %61, label %376

61:                                               ; preds = %58
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  %62 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 3
  %63 = load i16, ptr %62, align 8, !tbaa !45
  %64 = icmp eq i16 %63, -1
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = add nuw i16 %63, 1
  store i16 -1, ptr %62, align 8, !tbaa !45
  %67 = load ptr, ptr %0, align 8, !tbaa !57
  %68 = icmp eq ptr %67, null
  br i1 %68, label %162, label %141

69:                                               ; preds = %61
  %70 = and i32 %1, 4
  %71 = icmp eq i32 %70, 0
  %72 = load ptr, ptr %0, align 8, !tbaa !57
  %73 = icmp eq ptr %72, null
  br i1 %71, label %77, label %74

74:                                               ; preds = %69
  br i1 %73, label %162, label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1, i32 1
  br label %78

77:                                               ; preds = %69
  br i1 %73, label %147, label %150

78:                                               ; preds = %75, %137
  %79 = phi ptr [ %72, %75 ], [ %139, %137 ]
  %80 = phi i16 [ 0, %75 ], [ %138, %137 ]
  %81 = getelementptr inbounds %struct.ScanFillVert, ptr %79, i64 0, i32 4
  %82 = getelementptr inbounds %struct.ScanFillVert, ptr %79, i64 0, i32 3
  call void @mul_v2_m3v3(ptr noundef nonnull %81, ptr noundef nonnull %6, ptr noundef nonnull %82) #15
  %83 = getelementptr inbounds %struct.ScanFillVert, ptr %79, i64 0, i32 6
  %84 = load i16, ptr %83, align 8, !tbaa !46
  %85 = icmp eq i16 %84, -1
  br i1 %85, label %86, label %137

86:                                               ; preds = %78
  store i16 %80, ptr %83, align 8, !tbaa !46
  br label %89

87:                                               ; preds = %129
  %88 = icmp eq i8 %130, 0
  br i1 %88, label %135, label %89, !llvm.loop !63

89:                                               ; preds = %86, %87
  %90 = phi i32 [ 0, %86 ], [ %91, %87 ]
  %91 = add i32 %90, 1
  %92 = and i32 %90, 1
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, ptr %8, ptr %76
  %95 = load ptr, ptr %94, align 8, !tbaa !57
  %96 = icmp eq ptr %95, null
  br i1 %96, label %135, label %97

97:                                               ; preds = %89, %129
  %98 = phi ptr [ %133, %129 ], [ %95, %89 ]
  %99 = phi i8 [ %130, %129 ], [ 0, %89 ]
  %100 = getelementptr inbounds %struct.ScanFillEdge, ptr %98, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !52
  %102 = getelementptr inbounds %struct.ScanFillVert, ptr %101, i64 0, i32 6
  %103 = load i16, ptr %102, align 8, !tbaa !46
  %104 = icmp eq i16 %103, -1
  %105 = getelementptr inbounds %struct.ScanFillEdge, ptr %98, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !54
  %107 = getelementptr inbounds %struct.ScanFillVert, ptr %106, i64 0, i32 6
  %108 = load i16, ptr %107, align 8, !tbaa !46
  %109 = icmp eq i16 %108, %80
  %110 = select i1 %104, i1 %109, i1 false
  br i1 %110, label %124, label %111

111:                                              ; preds = %97
  %112 = icmp eq i16 %108, -1
  %113 = icmp eq i16 %103, %80
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.ScanFillVert, ptr %106, i64 0, i32 6
  br label %124

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.ScanFillEdge, ptr %98, i64 0, i32 4
  %119 = load i16, ptr %118, align 8, !tbaa !55
  %120 = icmp eq i16 %119, -1
  %121 = select i1 %120, i1 %113, i1 false
  %122 = icmp eq i16 %108, %80
  %123 = select i1 %121, i1 %122, i1 false
  br i1 %123, label %127, label %129

124:                                              ; preds = %97, %115
  %125 = phi ptr [ %116, %115 ], [ %102, %97 ]
  store i16 %80, ptr %125, align 8, !tbaa !46
  %126 = getelementptr inbounds %struct.ScanFillEdge, ptr %98, i64 0, i32 4
  br label %127

127:                                              ; preds = %124, %117
  %128 = phi ptr [ %118, %117 ], [ %126, %124 ]
  store i16 %80, ptr %128, align 8, !tbaa !55
  br label %129

129:                                              ; preds = %127, %117
  %130 = phi i8 [ %99, %117 ], [ 1, %127 ]
  %131 = getelementptr inbounds %struct.ScanFillEdge, ptr %98, i64 0, i32 1
  %132 = select i1 %93, ptr %98, ptr %131
  %133 = load ptr, ptr %132, align 8, !tbaa !57
  %134 = icmp eq ptr %133, null
  br i1 %134, label %87, label %97, !llvm.loop !64

135:                                              ; preds = %89, %87
  %136 = add i16 %80, 1
  br label %137

137:                                              ; preds = %78, %135
  %138 = phi i16 [ %136, %135 ], [ %80, %78 ]
  %139 = load ptr, ptr %79, align 8, !tbaa !57
  %140 = icmp eq ptr %139, null
  br i1 %140, label %162, label %78, !llvm.loop !65

141:                                              ; preds = %65, %141
  %142 = phi ptr [ %145, %141 ], [ %67, %65 ]
  %143 = getelementptr inbounds %struct.ScanFillVert, ptr %142, i64 0, i32 4
  %144 = getelementptr inbounds %struct.ScanFillVert, ptr %142, i64 0, i32 3
  call void @mul_v2_m3v3(ptr noundef nonnull %143, ptr noundef nonnull %6, ptr noundef nonnull %144) #15
  %145 = load ptr, ptr %142, align 8, !tbaa !57
  %146 = icmp eq ptr %145, null
  br i1 %146, label %162, label %141, !llvm.loop !66

147:                                              ; preds = %150, %77
  %148 = load ptr, ptr %8, align 8, !tbaa !57
  %149 = icmp eq ptr %148, null
  br i1 %149, label %162, label %157

150:                                              ; preds = %77, %150
  %151 = phi ptr [ %155, %150 ], [ %72, %77 ]
  %152 = getelementptr inbounds %struct.ScanFillVert, ptr %151, i64 0, i32 4
  %153 = getelementptr inbounds %struct.ScanFillVert, ptr %151, i64 0, i32 3
  call void @mul_v2_m3v3(ptr noundef nonnull %152, ptr noundef nonnull %6, ptr noundef nonnull %153) #15
  %154 = getelementptr inbounds %struct.ScanFillVert, ptr %151, i64 0, i32 6
  store i16 0, ptr %154, align 8, !tbaa !46
  %155 = load ptr, ptr %151, align 8, !tbaa !57
  %156 = icmp eq ptr %155, null
  br i1 %156, label %147, label %150, !llvm.loop !67

157:                                              ; preds = %147, %157
  %158 = phi ptr [ %160, %157 ], [ %148, %147 ]
  %159 = getelementptr inbounds %struct.ScanFillEdge, ptr %158, i64 0, i32 4
  store i16 0, ptr %159, align 8, !tbaa !55
  %160 = load ptr, ptr %158, align 8, !tbaa !57
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %157, !llvm.loop !68

162:                                              ; preds = %141, %137, %157, %65, %74, %147
  %163 = phi i16 [ 1, %147 ], [ 0, %74 ], [ %66, %65 ], [ 1, %157 ], [ %138, %137 ], [ %66, %141 ]
  %164 = and i32 %1, 16
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load ptr, ptr %8, align 8, !tbaa !57
  %168 = icmp eq ptr %167, null
  br i1 %168, label %241, label %227

169:                                              ; preds = %162, %180
  %170 = phi ptr [ %171, %180 ], [ %8, %162 ]
  %171 = load ptr, ptr %170, align 8, !tbaa !57
  %172 = icmp eq ptr %171, null
  br i1 %172, label %187, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.ScanFillEdge, ptr %171, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !52
  %176 = getelementptr inbounds %struct.ScanFillVert, ptr %175, i64 0, i32 7
  %177 = load i8, ptr %176, align 2, !tbaa !47
  %178 = add i8 %177, 1
  store i8 %178, ptr %176, align 2, !tbaa !47
  %179 = icmp ugt i8 %177, -6
  br i1 %179, label %377, label %180

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.ScanFillEdge, ptr %171, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !54
  %183 = getelementptr inbounds %struct.ScanFillVert, ptr %182, i64 0, i32 7
  %184 = load i8, ptr %183, align 2, !tbaa !47
  %185 = add i8 %184, 1
  store i8 %185, ptr %183, align 2, !tbaa !47
  %186 = icmp ugt i8 %184, -6
  br i1 %186, label %377, label %169, !llvm.loop !69

187:                                              ; preds = %169
  call fastcc void @testvertexnearedge(ptr noundef %0) #16
  %188 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1, i32 1
  br label %191

189:                                              ; preds = %221
  %190 = icmp eq i8 %222, 0
  br i1 %190, label %224, label %191, !llvm.loop !70

191:                                              ; preds = %187, %189
  %192 = phi i32 [ 0, %187 ], [ %193, %189 ]
  %193 = add i32 %192, 1
  %194 = and i32 %192, 1
  %195 = icmp eq i32 %194, 0
  %196 = select i1 %195, ptr %8, ptr %188
  %197 = load ptr, ptr %196, align 8, !tbaa !57
  %198 = icmp eq ptr %197, null
  br i1 %198, label %224, label %199

199:                                              ; preds = %191, %221
  %200 = phi i8 [ %222, %221 ], [ 0, %191 ]
  %201 = phi ptr [ %204, %221 ], [ %197, %191 ]
  %202 = getelementptr inbounds %struct.ScanFillEdge, ptr %201, i64 0, i32 1
  %203 = select i1 %195, ptr %201, ptr %202
  %204 = load ptr, ptr %203, align 8, !tbaa !57
  %205 = getelementptr inbounds %struct.ScanFillEdge, ptr %201, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !52
  %207 = getelementptr inbounds %struct.ScanFillVert, ptr %206, i64 0, i32 7
  %208 = load i8, ptr %207, align 2, !tbaa !47
  %209 = icmp eq i8 %208, 1
  %210 = getelementptr inbounds %struct.ScanFillEdge, ptr %201, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !54
  %212 = getelementptr inbounds %struct.ScanFillVert, ptr %211, i64 0, i32 7
  %213 = load i8, ptr %212, align 2, !tbaa !47
  br i1 %209, label %216, label %214

214:                                              ; preds = %199
  %215 = icmp eq i8 %213, 1
  br i1 %215, label %216, label %221

216:                                              ; preds = %214, %199
  %217 = phi i8 [ %213, %199 ], [ %208, %214 ]
  %218 = phi ptr [ %212, %199 ], [ %207, %214 ]
  %219 = phi ptr [ %206, %199 ], [ %211, %214 ]
  %220 = add i8 %217, -1
  store i8 %220, ptr %218, align 2, !tbaa !47
  call void @BLI_remlink(ptr noundef %0, ptr noundef nonnull %219) #15
  call void @BLI_remlink(ptr noundef nonnull %8, ptr noundef nonnull %201) #15
  br label %221

221:                                              ; preds = %216, %214
  %222 = phi i8 [ %200, %214 ], [ 1, %216 ]
  %223 = icmp eq ptr %204, null
  br i1 %223, label %189, label %199, !llvm.loop !71

224:                                              ; preds = %191, %189
  %225 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %8) #16, !range !72
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %241, label %377

227:                                              ; preds = %166, %227
  %228 = phi ptr [ %239, %227 ], [ %167, %166 ]
  %229 = getelementptr inbounds %struct.ScanFillEdge, ptr %228, i64 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !52
  %231 = getelementptr inbounds %struct.ScanFillVert, ptr %230, i64 0, i32 7
  %232 = load i8, ptr %231, align 2, !tbaa !47
  %233 = add i8 %232, 1
  store i8 %233, ptr %231, align 2, !tbaa !47
  %234 = getelementptr inbounds %struct.ScanFillEdge, ptr %228, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !54
  %236 = getelementptr inbounds %struct.ScanFillVert, ptr %235, i64 0, i32 7
  %237 = load i8, ptr %236, align 2, !tbaa !47
  %238 = add i8 %237, 1
  store i8 %238, ptr %236, align 2, !tbaa !47
  %239 = load ptr, ptr %228, align 8, !tbaa !57
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %227, !llvm.loop !73

241:                                              ; preds = %227, %166, %224
  %242 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !57
  %243 = zext i16 %163 to i64
  %244 = mul nuw nsw i64 %243, 28
  %245 = call ptr %242(i64 noundef %244, ptr noundef nonnull @.str) #15
  %246 = icmp eq i16 %163, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %250, %241
  %248 = load ptr, ptr %8, align 8, !tbaa !57
  %249 = icmp eq ptr %248, null
  br i1 %249, label %260, label %263

250:                                              ; preds = %241, %250
  %251 = phi i16 [ %258, %250 ], [ 0, %241 ]
  %252 = phi ptr [ %257, %250 ], [ %245, %241 ]
  %253 = getelementptr inbounds %struct.PolyFill, ptr %252, i64 0, i32 1
  store i32 0, ptr %253, align 4, !tbaa !74
  store i32 0, ptr %252, align 4, !tbaa !76
  %254 = getelementptr inbounds %struct.PolyFill, ptr %252, i64 0, i32 2
  store <4 x float> <float 0x4415AF1D80000000, float 0x4415AF1D80000000, float 0xC415AF1D80000000, float 0xC415AF1D80000000>, ptr %254, align 4, !tbaa !49
  %255 = getelementptr inbounds %struct.PolyFill, ptr %252, i64 0, i32 5
  store i8 0, ptr %255, align 2, !tbaa !77
  %256 = getelementptr inbounds %struct.PolyFill, ptr %252, i64 0, i32 4
  store i16 %251, ptr %256, align 4, !tbaa !78
  %257 = getelementptr inbounds %struct.PolyFill, ptr %252, i64 1
  %258 = add nuw i16 %251, 1
  %259 = icmp eq i16 %258, %163
  br i1 %259, label %247, label %250, !llvm.loop !79

260:                                              ; preds = %263, %247
  %261 = load ptr, ptr %0, align 8, !tbaa !57
  %262 = icmp eq ptr %261, null
  br i1 %262, label %311, label %273

263:                                              ; preds = %247, %263
  %264 = phi ptr [ %271, %263 ], [ %248, %247 ]
  %265 = getelementptr inbounds %struct.ScanFillEdge, ptr %264, i64 0, i32 4
  %266 = load i16, ptr %265, align 8, !tbaa !55
  %267 = zext i16 %266 to i64
  %268 = getelementptr inbounds %struct.PolyFill, ptr %245, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !76
  %270 = add i32 %269, 1
  store i32 %270, ptr %268, align 4, !tbaa !76
  %271 = load ptr, ptr %264, align 8, !tbaa !57
  %272 = icmp eq ptr %271, null
  br i1 %272, label %260, label %263, !llvm.loop !80

273:                                              ; preds = %260, %308
  %274 = phi ptr [ %309, %308 ], [ %261, %260 ]
  %275 = getelementptr inbounds %struct.ScanFillVert, ptr %274, i64 0, i32 6
  %276 = load i16, ptr %275, align 8, !tbaa !46
  %277 = zext i16 %276 to i64
  %278 = getelementptr inbounds %struct.PolyFill, ptr %245, i64 %277, i32 1
  %279 = load i32, ptr %278, align 4, !tbaa !74
  %280 = add i32 %279, 1
  store i32 %280, ptr %278, align 4, !tbaa !74
  %281 = getelementptr inbounds %struct.PolyFill, ptr %245, i64 %277, i32 2
  %282 = getelementptr inbounds %struct.PolyFill, ptr %245, i64 %277, i32 3
  %283 = load float, ptr %281, align 4, !tbaa !49
  %284 = getelementptr inbounds %struct.ScanFillVert, ptr %274, i64 0, i32 4
  %285 = load float, ptr %284, align 4, !tbaa !49
  %286 = fcmp olt float %283, %285
  %287 = select i1 %286, float %283, float %285
  store float %287, ptr %281, align 4, !tbaa !49
  %288 = getelementptr inbounds float, ptr %281, i64 1
  %289 = load float, ptr %288, align 4, !tbaa !49
  %290 = getelementptr inbounds %struct.ScanFillVert, ptr %274, i64 0, i32 4, i64 1
  %291 = load float, ptr %290, align 4, !tbaa !49
  %292 = fcmp olt float %289, %291
  %293 = select i1 %292, float %289, float %291
  store float %293, ptr %288, align 4, !tbaa !49
  %294 = load float, ptr %282, align 4, !tbaa !49
  %295 = load float, ptr %284, align 4, !tbaa !49
  %296 = fcmp ogt float %294, %295
  %297 = select i1 %296, float %294, float %295
  store float %297, ptr %282, align 4, !tbaa !49
  %298 = getelementptr inbounds float, ptr %282, i64 1
  %299 = load float, ptr %298, align 4, !tbaa !49
  %300 = load float, ptr %290, align 4, !tbaa !49
  %301 = fcmp ogt float %299, %300
  %302 = select i1 %301, float %299, float %300
  store float %302, ptr %298, align 4, !tbaa !49
  %303 = getelementptr inbounds %struct.ScanFillVert, ptr %274, i64 0, i32 7
  %304 = load i8, ptr %303, align 2, !tbaa !47
  %305 = icmp ugt i8 %304, 2
  br i1 %305, label %306, label %308

306:                                              ; preds = %273
  %307 = getelementptr inbounds %struct.PolyFill, ptr %245, i64 %277, i32 5
  store i8 1, ptr %307, align 2, !tbaa !77
  br label %308

308:                                              ; preds = %273, %306
  %309 = load ptr, ptr %274, align 8, !tbaa !57
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %273, !llvm.loop !81

311:                                              ; preds = %308, %260
  %312 = and i32 %1, 8
  %313 = icmp ne i32 %312, 0
  %314 = icmp ugt i16 %163, 1
  %315 = select i1 %313, i1 %314, i1 false
  br i1 %315, label %316, label %354

316:                                              ; preds = %311
  call void @qsort(ptr noundef %245, i64 noundef %243, i64 noundef 28, ptr noundef nonnull @vergpoly) #15
  %317 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %318 = shl nuw nsw i64 %243, 1
  %319 = call ptr %317(i64 noundef %318, ptr noundef nonnull @.str.1) #15
  br label %320

320:                                              ; preds = %316, %348
  %321 = phi i64 [ 1, %316 ], [ %350, %348 ]
  %322 = phi i16 [ 0, %316 ], [ %324, %348 ]
  %323 = phi ptr [ %245, %316 ], [ %349, %348 ]
  %324 = add nuw i16 %322, 1
  %325 = icmp ult i16 %324, %163
  br i1 %325, label %328, label %348

326:                                              ; preds = %337
  %327 = icmp eq ptr %338, %319
  br i1 %327, label %348, label %341

328:                                              ; preds = %320, %337
  %329 = phi i64 [ %339, %337 ], [ %321, %320 ]
  %330 = phi ptr [ %338, %337 ], [ %319, %320 ]
  %331 = getelementptr inbounds %struct.PolyFill, ptr %245, i64 %329
  %332 = call fastcc zeroext i8 @boundisect(ptr noundef %323, ptr noundef nonnull %331) #16, !range !72
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %328
  %335 = trunc i64 %329 to i16
  store i16 %335, ptr %330, align 2, !tbaa !82
  %336 = getelementptr inbounds i16, ptr %330, i64 1
  br label %337

337:                                              ; preds = %328, %334
  %338 = phi ptr [ %336, %334 ], [ %330, %328 ]
  %339 = add nuw nsw i64 %329, 1
  %340 = icmp ult i64 %339, %243
  br i1 %340, label %328, label %326, !llvm.loop !83

341:                                              ; preds = %326, %341
  %342 = phi ptr [ %343, %341 ], [ %338, %326 ]
  %343 = getelementptr inbounds i16, ptr %342, i64 -1
  %344 = load i16, ptr %343, align 2, !tbaa !82
  %345 = zext i16 %344 to i64
  %346 = getelementptr inbounds %struct.PolyFill, ptr %245, i64 %345
  call fastcc void @mergepolysSimp(ptr noundef nonnull %0, ptr noundef %323, ptr noundef %346) #16
  %347 = icmp eq ptr %343, %319
  br i1 %347, label %348, label %341, !llvm.loop !84

348:                                              ; preds = %341, %320, %326
  %349 = getelementptr inbounds %struct.PolyFill, ptr %323, i64 1
  %350 = add nuw nsw i64 %321, 1
  %351 = icmp eq i16 %324, %163
  br i1 %351, label %352, label %320, !llvm.loop !85

352:                                              ; preds = %348
  %353 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %353(ptr noundef %319) #15
  br label %354

354:                                              ; preds = %352, %311
  %355 = load <2 x ptr>, ptr %0, align 8, !tbaa !57
  store <2 x ptr> %355, ptr %4, align 16, !tbaa !57
  %356 = load <2 x ptr>, ptr %8, align 8, !tbaa !57
  store <2 x ptr> %356, ptr %5, align 16, !tbaa !57
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %0) #16
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %8) #16
  br i1 %246, label %373, label %357

357:                                              ; preds = %354, %368
  %358 = phi i16 [ %371, %368 ], [ 0, %354 ]
  %359 = phi i32 [ %369, %368 ], [ 0, %354 ]
  %360 = phi ptr [ %370, %368 ], [ %245, %354 ]
  %361 = load i32, ptr %360, align 4, !tbaa !76
  %362 = icmp ugt i32 %361, 1
  br i1 %362, label %363, label %368

363:                                              ; preds = %357
  %364 = getelementptr inbounds %struct.PolyFill, ptr %360, i64 0, i32 4
  %365 = load i16, ptr %364, align 4, !tbaa !78
  call fastcc void @splitlist(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef zeroext %365) #16
  %366 = call fastcc i32 @scanfill(ptr noundef nonnull %0, ptr noundef nonnull %360, i32 noundef %1) #16
  %367 = add i32 %366, %359
  br label %368

368:                                              ; preds = %363, %357
  %369 = phi i32 [ %367, %363 ], [ %359, %357 ]
  %370 = getelementptr inbounds %struct.PolyFill, ptr %360, i64 1
  %371 = add nuw i16 %358, 1
  %372 = icmp eq i16 %371, %163
  br i1 %372, label %373, label %357, !llvm.loop !86

373:                                              ; preds = %368, %354
  %374 = phi i32 [ 0, %354 ], [ %369, %368 ]
  call void @BLI_movelisttolist(ptr noundef nonnull %0, ptr noundef nonnull %4) #15
  call void @BLI_movelisttolist(ptr noundef nonnull %8, ptr noundef nonnull %5) #15
  %375 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %375(ptr noundef %245) #15
  br label %377

376:                                              ; preds = %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  br label %377

377:                                              ; preds = %28, %173, %180, %376, %224, %373
  %378 = phi i32 [ %374, %373 ], [ 0, %224 ], [ 0, %376 ], [ 0, %180 ], [ 0, %173 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret i32 %378
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !87 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !49
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @compare_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !88 {
  %3 = load float, ptr %0, align 4, !tbaa !49
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = fsub float %3, %4
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = fcmp ugt float %6, 0x3EFF751040000000
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = fsub float %10, %12
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ugt float %14, 0x3EFF751040000000
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !49
  %21 = fsub float %18, %20
  %22 = tail call float @llvm.fabs.f32(float %21)
  %23 = fcmp ugt float %22, 0x3EFF751040000000
  br i1 %23, label %24, label %25

24:                                               ; preds = %8, %16, %2
  br label %25

25:                                               ; preds = %16, %24
  %26 = phi i8 [ 0, %24 ], [ 1, %16 ]
  ret i8 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_newell_cross_v3_v3v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !89 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = getelementptr inbounds float, ptr %2, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = fadd float %10, %12
  %14 = load float, ptr %0, align 4, !tbaa !49
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %14)
  store float %15, ptr %0, align 4, !tbaa !49
  %16 = load float, ptr %9, align 4, !tbaa !49
  %17 = load float, ptr %11, align 4, !tbaa !49
  %18 = fsub float %16, %17
  %19 = load float, ptr %1, align 4, !tbaa !49
  %20 = load float, ptr %2, align 4, !tbaa !49
  %21 = fadd float %19, %20
  %22 = getelementptr inbounds float, ptr %0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !49
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %21, float %23)
  store float %24, ptr %22, align 4, !tbaa !49
  %25 = load float, ptr %1, align 4, !tbaa !49
  %26 = load float, ptr %2, align 4, !tbaa !49
  %27 = fsub float %25, %26
  %28 = load float, ptr %4, align 4, !tbaa !49
  %29 = load float, ptr %6, align 4, !tbaa !49
  %30 = fadd float %28, %29
  %31 = getelementptr inbounds float, ptr %0, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !49
  %33 = tail call float @llvm.fmuladd.f32(float %27, float %30, float %32)
  store float %33, ptr %31, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !90 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #16
  ret float %2
}

; Function Attrs: optsize
declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @testvertexnearedge(ptr noundef %0) unnamed_addr #0 !PGOFuncName !91 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = icmp eq ptr %2, null
  br i1 %3, label %86, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %4, %83
  %7 = phi ptr [ %2, %4 ], [ %84, %83 ]
  %8 = getelementptr inbounds %struct.ScanFillVert, ptr %7, i64 0, i32 7
  %9 = load i8, ptr %8, align 2, !tbaa !47
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %83

11:                                               ; preds = %6, %17
  %12 = phi ptr [ %13, %17 ], [ %5, %6 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.ScanFillEdge, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = icmp eq ptr %15, %7
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ScanFillEdge, ptr %13, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = icmp eq ptr %19, %7
  br i1 %20, label %25, label %11, !llvm.loop !92

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.ScanFillEdge, ptr %13, i64 0, i32 2
  %23 = getelementptr inbounds %struct.ScanFillEdge, ptr %13, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  store ptr %24, ptr %22, align 8, !tbaa !52
  store ptr %7, ptr %23, align 8, !tbaa !54
  br label %25

25:                                               ; preds = %17, %21
  %26 = load ptr, ptr %5, align 8, !tbaa !57
  %27 = icmp eq ptr %26, null
  br i1 %27, label %83, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ScanFillVert, ptr %7, i64 0, i32 6
  %30 = getelementptr inbounds %struct.ScanFillVert, ptr %7, i64 0, i32 4
  br label %31

31:                                               ; preds = %28, %78
  %32 = phi ptr [ %26, %28 ], [ %79, %78 ]
  %33 = getelementptr inbounds %struct.ScanFillEdge, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  %35 = icmp eq ptr %7, %34
  br i1 %35, label %78, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ScanFillEdge, ptr %32, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = icmp eq ptr %7, %38
  br i1 %39, label %78, label %40

40:                                               ; preds = %36
  %41 = load i16, ptr %29, align 8, !tbaa !46
  %42 = getelementptr inbounds %struct.ScanFillEdge, ptr %32, i64 0, i32 4
  %43 = load i16, ptr %42, align 8, !tbaa !55
  %44 = icmp eq i16 %41, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ScanFillVert, ptr %34, i64 0, i32 4
  %47 = tail call fastcc zeroext i8 @compare_v2v2(ptr noundef nonnull %30, ptr noundef nonnull %46) #16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ScanFillEdge, ptr %13, i64 0, i32 3
  store ptr %34, ptr %50, align 8, !tbaa !54
  %51 = getelementptr inbounds %struct.ScanFillVert, ptr %34, i64 0, i32 7
  %52 = load i8, ptr %51, align 2, !tbaa !47
  %53 = add i8 %52, 1
  store i8 %53, ptr %51, align 2, !tbaa !47
  br label %81

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.ScanFillVert, ptr %38, i64 0, i32 4
  %56 = tail call fastcc zeroext i8 @compare_v2v2(ptr noundef nonnull %30, ptr noundef nonnull %55) #16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ScanFillEdge, ptr %32, i64 0, i32 3
  %60 = getelementptr inbounds %struct.ScanFillEdge, ptr %13, i64 0, i32 3
  store ptr %38, ptr %60, align 8, !tbaa !54
  %61 = load ptr, ptr %59, align 8, !tbaa !54
  %62 = getelementptr inbounds %struct.ScanFillVert, ptr %61, i64 0, i32 7
  %63 = load i8, ptr %62, align 2, !tbaa !47
  %64 = add i8 %63, 1
  store i8 %64, ptr %62, align 2, !tbaa !47
  br label %81

65:                                               ; preds = %54
  %66 = tail call fastcc zeroext i8 @boundinsideEV(ptr noundef nonnull %32, ptr noundef nonnull %7) #16, !range !72
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = tail call float @dist_squared_to_line_v2(ptr noundef nonnull %46, ptr noundef nonnull %55, ptr noundef nonnull %30) #15
  %70 = fcmp olt float %69, 0x3E0EEC7BC0000000
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.ScanFillEdge, ptr %32, i64 0, i32 2
  %73 = getelementptr inbounds %struct.ScanFillEdge, ptr %32, i64 0, i32 4
  %74 = load ptr, ptr %72, align 8, !tbaa !52
  %75 = tail call ptr @BLI_scanfill_edge_add(ptr noundef nonnull %0, ptr noundef %74, ptr noundef nonnull %7) #16
  %76 = load i16, ptr %73, align 8, !tbaa !55
  %77 = getelementptr inbounds %struct.ScanFillEdge, ptr %75, i64 0, i32 4
  store i16 %76, ptr %77, align 8, !tbaa !55
  store ptr %7, ptr %72, align 8, !tbaa !52
  br label %81

78:                                               ; preds = %68, %31, %36, %40, %65
  %79 = load ptr, ptr %32, align 8, !tbaa !57
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %31, !llvm.loop !93

81:                                               ; preds = %49, %58, %71
  %82 = phi i8 [ 3, %71 ], [ 0, %58 ], [ 0, %49 ]
  store i8 %82, ptr %8, align 2, !tbaa !47
  br label %83

83:                                               ; preds = %78, %81, %25, %6
  %84 = load ptr, ptr %7, align 8, !tbaa !57
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %6, !llvm.loop !94

86:                                               ; preds = %83, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !95 {
  %2 = load ptr, ptr %0, align 8, !tbaa !96
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vergpoly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !97 {
  %3 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 2
  %4 = load float, ptr %3, align 4, !tbaa !49
  %5 = getelementptr inbounds %struct.PolyFill, ptr %1, i64 0, i32 2
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = fcmp ogt float %4, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = fcmp olt float %4, %6
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds %struct.PolyFill, ptr %1, i64 0, i32 2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = fcmp ogt float %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = fcmp olt float %12, %14
  %18 = sext i1 %17 to i32
  br label %19

19:                                               ; preds = %16, %10, %8, %2
  %20 = phi i32 [ 1, %2 ], [ -1, %8 ], [ 1, %10 ], [ %18, %16 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @boundisect(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !98 {
  %3 = load i32, ptr %1, align 4, !tbaa !76
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %48, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 4, !tbaa !76
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = getelementptr inbounds %struct.PolyFill, ptr %1, i64 0, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = fcmp olt float %10, %12
  br i1 %13, label %48, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 3, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !49
  %17 = getelementptr inbounds %struct.PolyFill, ptr %1, i64 0, i32 2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = fcmp olt float %16, %18
  br i1 %19, label %48, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 2
  %22 = load float, ptr %21, align 4, !tbaa !49
  %23 = getelementptr inbounds %struct.PolyFill, ptr %1, i64 0, i32 3
  %24 = load float, ptr %23, align 4, !tbaa !49
  %25 = fcmp ogt float %22, %24
  br i1 %25, label %48, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !49
  %29 = getelementptr inbounds %struct.PolyFill, ptr %1, i64 0, i32 3, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !49
  %31 = fcmp ogt float %28, %30
  br i1 %31, label %48, label %32

32:                                               ; preds = %26
  %33 = fcmp olt float %10, %24
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  store float %24, ptr %9, align 4, !tbaa !49
  %35 = load float, ptr %29, align 4, !tbaa !49
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi float [ %35, %34 ], [ %30, %32 ]
  %38 = fcmp olt float %16, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store float %37, ptr %15, align 4, !tbaa !49
  br label %40

40:                                               ; preds = %39, %36
  %41 = load float, ptr %11, align 4, !tbaa !49
  %42 = fcmp ogt float %22, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store float %41, ptr %21, align 4, !tbaa !49
  br label %44

44:                                               ; preds = %43, %40
  %45 = load float, ptr %17, align 4, !tbaa !49
  %46 = fcmp ogt float %28, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store float %45, ptr %27, align 4, !tbaa !49
  br label %48

48:                                               ; preds = %44, %47, %26, %20, %14, %8, %2, %5
  %49 = phi i8 [ 0, %5 ], [ 0, %2 ], [ 0, %8 ], [ 0, %14 ], [ 0, %20 ], [ 0, %26 ], [ 1, %47 ], [ 1, %44 ]
  ret i8 %49
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mergepolysSimp(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #9 !PGOFuncName !99 {
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.PolyFill, ptr %2, i64 0, i32 4
  %8 = load i16, ptr %7, align 4, !tbaa !78
  %9 = getelementptr inbounds %struct.PolyFill, ptr %1, i64 0, i32 4
  br label %10

10:                                               ; preds = %6, %17
  %11 = phi ptr [ %4, %6 ], [ %18, %17 ]
  %12 = getelementptr inbounds %struct.ScanFillVert, ptr %11, i64 0, i32 6
  %13 = load i16, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i16 %13, %8
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i16, ptr %9, align 4, !tbaa !78
  store i16 %16, ptr %12, align 8, !tbaa !46
  br label %17

17:                                               ; preds = %10, %15
  %18 = load ptr, ptr %11, align 8, !tbaa !57
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %10, !llvm.loop !100

20:                                               ; preds = %17, %3
  %21 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.PolyFill, ptr %2, i64 0, i32 4
  %26 = load i16, ptr %25, align 4, !tbaa !78
  %27 = getelementptr inbounds %struct.PolyFill, ptr %1, i64 0, i32 4
  br label %28

28:                                               ; preds = %24, %35
  %29 = phi ptr [ %22, %24 ], [ %36, %35 ]
  %30 = getelementptr inbounds %struct.ScanFillEdge, ptr %29, i64 0, i32 4
  %31 = load i16, ptr %30, align 8, !tbaa !55
  %32 = icmp eq i16 %31, %26
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i16, ptr %27, align 4, !tbaa !78
  store i16 %34, ptr %30, align 8, !tbaa !55
  br label %35

35:                                               ; preds = %28, %33
  %36 = load ptr, ptr %29, align 8, !tbaa !57
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %28, !llvm.loop !101

38:                                               ; preds = %35, %20
  %39 = getelementptr inbounds %struct.PolyFill, ptr %2, i64 0, i32 1
  %40 = load <2 x i32>, ptr %2, align 4, !tbaa !102
  %41 = load <2 x i32>, ptr %1, align 4, !tbaa !102
  %42 = add <2 x i32> %41, %40
  store <2 x i32> %42, ptr %1, align 4, !tbaa !102
  store i32 0, ptr %2, align 4, !tbaa !76
  store i32 0, ptr %39, align 4, !tbaa !74
  %43 = getelementptr inbounds %struct.PolyFill, ptr %1, i64 0, i32 5
  %44 = load i8, ptr %43, align 2, !tbaa !77
  %45 = getelementptr inbounds %struct.PolyFill, ptr %2, i64 0, i32 5
  %46 = load i8, ptr %45, align 2, !tbaa !77
  %47 = or i8 %46, %44
  store i8 %47, ptr %43, align 2, !tbaa !77
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @splitlist(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !103 {
  tail call void @BLI_movelisttolist(ptr noundef %1, ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  tail call void @BLI_movelisttolist(ptr noundef %2, ptr noundef nonnull %5) #15
  %6 = load ptr, ptr %1, align 8, !tbaa !96
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %15
  %9 = phi ptr [ %10, %15 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !104
  %11 = getelementptr inbounds %struct.ScanFillVert, ptr %9, i64 0, i32 6
  %12 = load i16, ptr %11, align 8, !tbaa !46
  %13 = icmp eq i16 %12, %3
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %9) #15
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %9) #15
  br label %15

15:                                               ; preds = %8, %14
  %16 = icmp eq ptr %10, null
  br i1 %16, label %17, label %8, !llvm.loop !105

17:                                               ; preds = %15, %4
  %18 = load ptr, ptr %2, align 8, !tbaa !96
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %17, %27
  %21 = phi ptr [ %22, %27 ], [ %18, %17 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = getelementptr inbounds %struct.ScanFillEdge, ptr %21, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !55
  %25 = icmp eq i16 %24, %3
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %21) #15
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef nonnull %21) #15
  br label %27

27:                                               ; preds = %20, %26
  %28 = icmp eq ptr %22, null
  br i1 %28, label %29, label %20, !llvm.loop !107

29:                                               ; preds = %27, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @scanfill(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !108 {
  %4 = getelementptr inbounds %struct.PolyFill, ptr %1, i64 0, i32 4
  %5 = load i16, ptr %4, align 4, !tbaa !78
  %6 = and i32 %2, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %59, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = icmp eq ptr %10, null
  br i1 %11, label %59, label %12

12:                                               ; preds = %8, %56
  %13 = phi ptr [ %57, %56 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.ScanFillEdge, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.ScanFillVert, ptr %15, i64 0, i32 4
  %17 = getelementptr inbounds %struct.ScanFillEdge, ptr %13, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.ScanFillVert, ptr %18, i64 0, i32 4
  %20 = tail call fastcc zeroext i8 @equals_v2v2(ptr noundef nonnull %16, ptr noundef nonnull %19) #16, !range !72
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.ScanFillVert, ptr %15, i64 0, i32 8
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 15
  %26 = icmp eq i8 %25, 2
  %27 = getelementptr inbounds %struct.ScanFillVert, ptr %18, i64 0, i32 8
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 15
  %30 = icmp eq i8 %29, 2
  br i1 %26, label %31, label %38

31:                                               ; preds = %22
  br i1 %30, label %45, label %32

32:                                               ; preds = %31
  %33 = and i8 %28, -16
  %34 = or disjoint i8 %33, 2
  store i8 %34, ptr %27, align 1
  %35 = load ptr, ptr %14, align 8, !tbaa !52
  %36 = getelementptr inbounds %struct.ScanFillVert, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %17, align 8, !tbaa !54
  br label %51

38:                                               ; preds = %22
  br i1 %30, label %39, label %47

39:                                               ; preds = %38
  %40 = and i8 %24, -16
  %41 = or disjoint i8 %40, 2
  store i8 %41, ptr %23, align 1
  %42 = load ptr, ptr %17, align 8, !tbaa !54
  %43 = getelementptr inbounds %struct.ScanFillVert, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %14, align 8, !tbaa !52
  br label %51

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.ScanFillVert, ptr %18, i64 0, i32 2
  br label %51

47:                                               ; preds = %38
  %48 = and i8 %28, -16
  %49 = or disjoint i8 %48, 2
  store i8 %49, ptr %27, align 1
  %50 = load ptr, ptr %17, align 8, !tbaa !54
  br label %51

51:                                               ; preds = %32, %45, %47, %39
  %52 = phi ptr [ %44, %39 ], [ %50, %47 ], [ %15, %45 ], [ %37, %32 ]
  %53 = phi ptr [ %43, %39 ], [ %14, %47 ], [ %46, %45 ], [ %36, %32 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !41
  %55 = getelementptr inbounds %struct.ScanFillVert, ptr %52, i64 0, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !41
  br label %56

56:                                               ; preds = %51, %12
  %57 = load ptr, ptr %13, align 8, !tbaa !57
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %12, !llvm.loop !109

59:                                               ; preds = %56, %8, %3
  %60 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !57
  %61 = getelementptr inbounds %struct.PolyFill, ptr %1, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !74
  %63 = zext i32 %62 to i64
  %64 = mul nuw nsw i64 %63, 24
  %65 = tail call ptr %60(i64 noundef %64, ptr noundef nonnull @.str.2) #15
  %66 = load ptr, ptr %0, align 8, !tbaa !57
  %67 = icmp eq ptr %66, null
  br i1 %67, label %90, label %68

68:                                               ; preds = %59, %85
  %69 = phi ptr [ %88, %85 ], [ %66, %59 ]
  %70 = phi ptr [ %87, %85 ], [ %65, %59 ]
  %71 = phi i32 [ %86, %85 ], [ 0, %59 ]
  %72 = getelementptr inbounds %struct.ScanFillVert, ptr %69, i64 0, i32 6
  %73 = load i16, ptr %72, align 8, !tbaa !46
  %74 = icmp eq i16 %73, %5
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.ScanFillVert, ptr %69, i64 0, i32 8
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, 15
  %79 = icmp eq i8 %78, 2
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = add i32 %71, 1
  %82 = and i8 %77, -16
  store i8 %82, ptr %76, align 1
  store ptr %69, ptr %70, align 8, !tbaa !110
  %83 = getelementptr inbounds %struct.ScanFillVertLink, ptr %70, i64 0, i32 1
  %84 = getelementptr inbounds %struct.ScanFillVertLink, ptr %70, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %83, i8 0, i64 16, i1 false)
  br label %85

85:                                               ; preds = %68, %80, %75
  %86 = phi i32 [ %81, %80 ], [ %71, %75 ], [ %71, %68 ]
  %87 = phi ptr [ %84, %80 ], [ %70, %75 ], [ %70, %68 ]
  %88 = load ptr, ptr %69, align 8, !tbaa !57
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %68, !llvm.loop !112

90:                                               ; preds = %85, %59
  %91 = phi i32 [ 0, %59 ], [ %86, %85 ]
  %92 = zext i32 %91 to i64
  tail call void @qsort(ptr noundef %65, i64 noundef %92, i64 noundef 24, ptr noundef nonnull @vergscdata) #15
  %93 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !113
  %95 = icmp eq ptr %94, null
  br i1 %7, label %145, label %96

96:                                               ; preds = %90
  br i1 %95, label %158, label %97

97:                                               ; preds = %96, %143
  %98 = phi ptr [ %99, %143 ], [ %94, %96 ]
  %99 = load ptr, ptr %98, align 8, !tbaa !106
  tail call void @BLI_remlink(ptr noundef nonnull %93, ptr noundef nonnull %98) #15
  %100 = getelementptr inbounds %struct.ScanFillEdge, ptr %98, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !52
  %102 = getelementptr inbounds %struct.ScanFillVert, ptr %101, i64 0, i32 8
  %103 = load i8, ptr %102, align 1
  %104 = and i8 %103, 15
  %105 = icmp eq i8 %104, 2
  br i1 %105, label %106, label %118

106:                                              ; preds = %97, %113
  %107 = phi ptr [ %109, %113 ], [ %101, %97 ]
  %108 = getelementptr inbounds %struct.ScanFillVert, ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !41
  %110 = icmp eq ptr %109, %101
  %111 = icmp eq ptr %107, %109
  %112 = or i1 %110, %111
  br i1 %112, label %118, label %113

113:                                              ; preds = %106
  store ptr %109, ptr %100, align 8, !tbaa !52
  %114 = getelementptr inbounds %struct.ScanFillVert, ptr %109, i64 0, i32 8
  %115 = load i8, ptr %114, align 1
  %116 = and i8 %115, 15
  %117 = icmp eq i8 %116, 2
  br i1 %117, label %106, label %118, !llvm.loop !114

118:                                              ; preds = %106, %113, %97
  %119 = phi ptr [ %101, %97 ], [ %107, %106 ], [ %109, %113 ]
  %120 = getelementptr inbounds %struct.ScanFillEdge, ptr %98, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !54
  %122 = getelementptr inbounds %struct.ScanFillVert, ptr %121, i64 0, i32 8
  %123 = load i8, ptr %122, align 1
  %124 = and i8 %123, 15
  %125 = icmp eq i8 %124, 2
  br i1 %125, label %126, label %138

126:                                              ; preds = %118, %133
  %127 = phi ptr [ %129, %133 ], [ %121, %118 ]
  %128 = getelementptr inbounds %struct.ScanFillVert, ptr %127, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !41
  %130 = icmp eq ptr %129, %121
  %131 = icmp eq ptr %127, %129
  %132 = or i1 %130, %131
  br i1 %132, label %138, label %133

133:                                              ; preds = %126
  store ptr %129, ptr %120, align 8, !tbaa !54
  %134 = getelementptr inbounds %struct.ScanFillVert, ptr %129, i64 0, i32 8
  %135 = load i8, ptr %134, align 1
  %136 = and i8 %135, 15
  %137 = icmp eq i8 %136, 2
  br i1 %137, label %126, label %138, !llvm.loop !115

138:                                              ; preds = %126, %133, %118
  %139 = phi ptr [ %121, %118 ], [ %127, %126 ], [ %129, %133 ]
  %140 = icmp eq ptr %119, %139
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = tail call fastcc ptr @addedgetoscanlist(ptr noundef %65, ptr noundef nonnull %98, i32 noundef %91) #16
  br label %143

143:                                              ; preds = %138, %141
  %144 = icmp eq ptr %99, null
  br i1 %144, label %158, label %97, !llvm.loop !116

145:                                              ; preds = %90
  br i1 %95, label %158, label %146

146:                                              ; preds = %145, %156
  %147 = phi ptr [ %148, %156 ], [ %94, %145 ]
  %148 = load ptr, ptr %147, align 8, !tbaa !106
  tail call void @BLI_remlink(ptr noundef nonnull %93, ptr noundef nonnull %147) #15
  %149 = getelementptr inbounds %struct.ScanFillEdge, ptr %147, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !52
  %151 = getelementptr inbounds %struct.ScanFillEdge, ptr %147, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !54
  %153 = icmp eq ptr %150, %152
  br i1 %153, label %156, label %154

154:                                              ; preds = %146
  %155 = tail call fastcc ptr @addedgetoscanlist(ptr noundef %65, ptr noundef nonnull %147, i32 noundef %91) #16
  br label %156

156:                                              ; preds = %146, %154
  %157 = icmp eq ptr %148, null
  br i1 %157, label %158, label %146, !llvm.loop !117

158:                                              ; preds = %143, %156, %96, %145
  %159 = getelementptr inbounds %struct.PolyFill, ptr %1, i64 0, i32 5
  %160 = load i8, ptr %159, align 2, !tbaa !77
  %161 = icmp eq i8 %160, 0
  %162 = and i32 %2, 8
  %163 = icmp eq i32 %162, 0
  %164 = shl i32 %91, 1
  %165 = add i32 %91, -2
  %166 = select i1 %163, i32 %165, i32 %164
  %167 = icmp eq i32 %91, 0
  br i1 %167, label %469, label %168

168:                                              ; preds = %158
  %169 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  br label %170

170:                                              ; preds = %168, %463
  %171 = phi ptr [ %65, %168 ], [ %466, %463 ]
  %172 = phi i32 [ 0, %168 ], [ %464, %463 ]
  %173 = phi i32 [ 0, %168 ], [ %467, %463 ]
  %174 = getelementptr inbounds %struct.ScanFillVertLink, ptr %171, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !118
  %176 = icmp eq ptr %175, null
  br i1 %176, label %463, label %183

177:                                              ; preds = %217
  %178 = load ptr, ptr %174, align 8, !tbaa !118
  %179 = icmp eq ptr %178, null
  br i1 %179, label %463, label %180

180:                                              ; preds = %177
  %181 = add i32 %173, 1
  %182 = icmp ult i32 %181, %91
  br label %222

183:                                              ; preds = %170, %217
  %184 = phi ptr [ %185, %217 ], [ %175, %170 ]
  %185 = load ptr, ptr %184, align 8, !tbaa !106
  %186 = getelementptr inbounds %struct.ScanFillEdge, ptr %184, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !52
  %188 = getelementptr inbounds %struct.ScanFillVert, ptr %187, i64 0, i32 7
  %189 = load i8, ptr %188, align 2, !tbaa !47
  %190 = icmp eq i8 %189, 1
  br i1 %190, label %197, label %191

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.ScanFillEdge, ptr %184, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !54
  %194 = getelementptr inbounds %struct.ScanFillVert, ptr %193, i64 0, i32 7
  %195 = load i8, ptr %194, align 2, !tbaa !47
  %196 = icmp eq i8 %195, 1
  br i1 %196, label %197, label %212

197:                                              ; preds = %191, %183
  tail call void @BLI_remlink(ptr noundef nonnull %174, ptr noundef nonnull %184) #15
  tail call void @BLI_addtail(ptr noundef nonnull %169, ptr noundef nonnull %184) #15
  %198 = load ptr, ptr %186, align 8, !tbaa !52
  %199 = getelementptr inbounds %struct.ScanFillVert, ptr %198, i64 0, i32 7
  %200 = load i8, ptr %199, align 2, !tbaa !47
  %201 = icmp ugt i8 %200, 1
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = add i8 %200, -1
  store i8 %203, ptr %199, align 2, !tbaa !47
  br label %204

204:                                              ; preds = %202, %197
  %205 = getelementptr inbounds %struct.ScanFillEdge, ptr %184, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !54
  %207 = getelementptr inbounds %struct.ScanFillVert, ptr %206, i64 0, i32 7
  %208 = load i8, ptr %207, align 2, !tbaa !47
  %209 = icmp ugt i8 %208, 1
  br i1 %209, label %210, label %217

210:                                              ; preds = %204
  %211 = add i8 %208, -1
  store i8 %211, ptr %207, align 2, !tbaa !47
  br label %217

212:                                              ; preds = %191
  %213 = getelementptr inbounds %struct.ScanFillVert, ptr %193, i64 0, i32 8
  %214 = load i8, ptr %213, align 1
  %215 = and i8 %214, -16
  %216 = or disjoint i8 %215, 1
  store i8 %216, ptr %213, align 1
  br label %217

217:                                              ; preds = %212, %210, %204
  %218 = icmp eq ptr %185, null
  br i1 %218, label %177, label %183, !llvm.loop !119

219:                                              ; preds = %461
  %220 = load ptr, ptr %174, align 8, !tbaa !118
  %221 = icmp eq ptr %220, null
  br i1 %221, label %463, label %222, !llvm.loop !120

222:                                              ; preds = %180, %219
  %223 = phi ptr [ %178, %180 ], [ %220, %219 ]
  %224 = phi i32 [ %172, %180 ], [ %429, %219 ]
  %225 = load ptr, ptr %223, align 8, !tbaa !106
  %226 = icmp ult i32 %224, %166
  br i1 %226, label %227, label %463

227:                                              ; preds = %222
  %228 = icmp eq ptr %225, null
  br i1 %228, label %229, label %240

229:                                              ; preds = %227
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %174, i8 0, i64 16, i1 false)
  tail call void @BLI_addtail(ptr noundef nonnull %169, ptr noundef nonnull %223) #15
  %230 = getelementptr inbounds %struct.ScanFillEdge, ptr %223, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !54
  %232 = getelementptr inbounds %struct.ScanFillVert, ptr %231, i64 0, i32 8
  %233 = load i8, ptr %232, align 1
  %234 = and i8 %233, -16
  store i8 %234, ptr %232, align 1
  %235 = getelementptr inbounds %struct.ScanFillEdge, ptr %223, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !52
  %237 = getelementptr inbounds %struct.ScanFillVert, ptr %236, i64 0, i32 7
  %238 = load i8, ptr %237, align 2, !tbaa !47
  %239 = add i8 %238, -1
  store i8 %239, ptr %237, align 2, !tbaa !47
  br label %420

240:                                              ; preds = %227
  %241 = getelementptr inbounds %struct.ScanFillEdge, ptr %223, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !54
  %243 = getelementptr inbounds %struct.ScanFillEdge, ptr %223, i64 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !52
  %245 = getelementptr inbounds %struct.ScanFillEdge, ptr %225, i64 0, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !54
  %247 = icmp eq ptr %242, %244
  %248 = icmp eq ptr %244, %246
  %249 = select i1 %247, i1 true, i1 %248
  br i1 %249, label %463, label %250

250:                                              ; preds = %240
  %251 = getelementptr inbounds %struct.ScanFillVert, ptr %242, i64 0, i32 4
  %252 = getelementptr inbounds %struct.ScanFillVert, ptr %242, i64 0, i32 4, i64 1
  %253 = load float, ptr %252, align 4, !tbaa !49
  %254 = getelementptr inbounds %struct.ScanFillVert, ptr %246, i64 0, i32 4
  %255 = getelementptr inbounds %struct.ScanFillVert, ptr %246, i64 0, i32 4, i64 1
  %256 = load float, ptr %255, align 4, !tbaa !49
  %257 = tail call fastcc float @min_ff(float noundef %253, float noundef %256) #16
  br i1 %182, label %258, label %331

258:                                              ; preds = %250
  %259 = getelementptr inbounds %struct.ScanFillVert, ptr %244, i64 0, i32 4
  br label %260

260:                                              ; preds = %258, %304
  %261 = phi i32 [ %181, %258 ], [ %308, %304 ]
  %262 = phi ptr [ %171, %258 ], [ %266, %304 ]
  %263 = phi i8 [ 0, %258 ], [ %307, %304 ]
  %264 = phi float [ 0x40091EB860000000, %258 ], [ %306, %304 ]
  %265 = phi ptr [ null, %258 ], [ %305, %304 ]
  %266 = getelementptr inbounds %struct.ScanFillVertLink, ptr %262, i64 1
  %267 = load ptr, ptr %266, align 8, !tbaa !110
  %268 = getelementptr inbounds %struct.ScanFillVert, ptr %267, i64 0, i32 8
  %269 = load i8, ptr %268, align 1
  %270 = and i8 %269, 15
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %272, label %304

272:                                              ; preds = %260
  %273 = getelementptr inbounds %struct.ScanFillVert, ptr %267, i64 0, i32 4, i64 1
  %274 = load float, ptr %273, align 4, !tbaa !49
  %275 = fcmp ugt float %274, %257
  br i1 %275, label %276, label %310

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.ScanFillVert, ptr %267, i64 0, i32 4
  %278 = tail call fastcc zeroext i8 @testedgeside(ptr noundef nonnull %251, ptr noundef nonnull %259, ptr noundef nonnull %277) #16, !range !72
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %304, label %280

280:                                              ; preds = %276
  %281 = tail call fastcc zeroext i8 @testedgeside(ptr noundef nonnull %259, ptr noundef nonnull %254, ptr noundef nonnull %277) #16, !range !72
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %304, label %283

283:                                              ; preds = %280
  %284 = tail call fastcc zeroext i8 @testedgeside(ptr noundef nonnull %254, ptr noundef nonnull %251, ptr noundef nonnull %277) #16, !range !72
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %304, label %286

286:                                              ; preds = %283
  %287 = icmp eq ptr %265, null
  br i1 %287, label %304, label %288

288:                                              ; preds = %286
  %289 = icmp eq i8 %263, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %288
  %291 = load ptr, ptr %265, align 8, !tbaa !110
  %292 = getelementptr inbounds %struct.ScanFillVert, ptr %291, i64 0, i32 4
  %293 = tail call float @angle_v2v2v2(ptr noundef nonnull %259, ptr noundef nonnull %251, ptr noundef nonnull %292) #15
  %294 = load ptr, ptr %266, align 8, !tbaa !110
  br label %295

295:                                              ; preds = %290, %288
  %296 = phi ptr [ %294, %290 ], [ %267, %288 ]
  %297 = phi float [ %293, %290 ], [ %264, %288 ]
  %298 = phi i8 [ 1, %290 ], [ %263, %288 ]
  %299 = getelementptr inbounds %struct.ScanFillVert, ptr %296, i64 0, i32 4
  %300 = tail call float @angle_v2v2v2(ptr noundef nonnull %259, ptr noundef nonnull %251, ptr noundef nonnull %299) #15
  %301 = fcmp olt float %300, %297
  %302 = select i1 %301, ptr %266, ptr %265
  %303 = select i1 %301, float %300, float %297
  br label %304

304:                                              ; preds = %286, %260, %280, %295, %283, %276
  %305 = phi ptr [ %302, %295 ], [ %265, %283 ], [ %265, %280 ], [ %265, %276 ], [ %265, %260 ], [ %266, %286 ]
  %306 = phi float [ %303, %295 ], [ %264, %283 ], [ %264, %280 ], [ %264, %276 ], [ %264, %260 ], [ %264, %286 ]
  %307 = phi i8 [ %298, %295 ], [ %263, %283 ], [ %263, %280 ], [ %263, %276 ], [ %263, %260 ], [ %263, %286 ]
  %308 = add nuw i32 %261, 1
  %309 = icmp eq i32 %308, %91
  br i1 %309, label %310, label %260, !llvm.loop !121

310:                                              ; preds = %304, %272
  %311 = phi ptr [ %305, %304 ], [ %265, %272 ]
  %312 = icmp eq ptr %311, null
  br i1 %312, label %331, label %313

313:                                              ; preds = %310
  %314 = load ptr, ptr %311, align 8, !tbaa !110
  %315 = tail call ptr @BLI_scanfill_edge_add(ptr noundef nonnull %0, ptr noundef %244, ptr noundef %314) #16
  tail call void @BLI_remlink(ptr noundef nonnull %169, ptr noundef %315) #15
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %174, ptr noundef nonnull %225, ptr noundef %315) #15
  %316 = getelementptr inbounds %struct.ScanFillEdge, ptr %315, i64 0, i32 3
  %317 = load ptr, ptr %316, align 8, !tbaa !54
  %318 = getelementptr inbounds %struct.ScanFillVert, ptr %317, i64 0, i32 8
  %319 = load i8, ptr %318, align 1
  %320 = and i8 %319, -16
  %321 = or disjoint i8 %320, 1
  store i8 %321, ptr %318, align 1
  %322 = getelementptr inbounds %struct.ScanFillEdge, ptr %315, i64 0, i32 5
  %323 = load i8, ptr %322, align 2
  %324 = and i8 %323, -16
  %325 = or disjoint i8 %324, 2
  store i8 %325, ptr %322, align 2
  %326 = getelementptr inbounds %struct.ScanFillEdge, ptr %315, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !52
  %328 = getelementptr inbounds %struct.ScanFillVert, ptr %327, i64 0, i32 7
  %329 = load i8, ptr %328, align 2, !tbaa !47
  %330 = add i8 %329, 1
  store i8 %330, ptr %328, align 2, !tbaa !47
  br label %420

331:                                              ; preds = %250, %310
  tail call fastcc void @addfillface(ptr noundef nonnull %0, ptr noundef %242, ptr noundef %244, ptr noundef %246) #16
  %332 = add i32 %224, 1
  tail call void @BLI_remlink(ptr noundef nonnull %174, ptr noundef nonnull %223) #15
  tail call void @BLI_addtail(ptr noundef nonnull %169, ptr noundef nonnull %223) #15
  %333 = load ptr, ptr %241, align 8, !tbaa !54
  %334 = getelementptr inbounds %struct.ScanFillVert, ptr %333, i64 0, i32 8
  %335 = load i8, ptr %334, align 1
  %336 = and i8 %335, -16
  store i8 %336, ptr %334, align 1
  %337 = load ptr, ptr %243, align 8, !tbaa !52
  %338 = getelementptr inbounds %struct.ScanFillVert, ptr %337, i64 0, i32 7
  %339 = load i8, ptr %338, align 2, !tbaa !47
  %340 = add i8 %339, -1
  store i8 %340, ptr %338, align 2, !tbaa !47
  %341 = load ptr, ptr %241, align 8, !tbaa !54
  %342 = getelementptr inbounds %struct.ScanFillVert, ptr %341, i64 0, i32 7
  %343 = load i8, ptr %342, align 2, !tbaa !47
  %344 = add i8 %343, -1
  store i8 %344, ptr %342, align 2, !tbaa !47
  %345 = getelementptr inbounds %struct.ScanFillEdge, ptr %225, i64 0, i32 5
  %346 = load i8, ptr %345, align 2
  %347 = and i8 %346, 15
  %348 = or i8 %347, %160
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %350, label %364

350:                                              ; preds = %331
  tail call void @BLI_remlink(ptr noundef nonnull %174, ptr noundef nonnull %225) #15
  tail call void @BLI_addtail(ptr noundef nonnull %169, ptr noundef nonnull %225) #15
  %351 = load ptr, ptr %245, align 8, !tbaa !54
  %352 = getelementptr inbounds %struct.ScanFillVert, ptr %351, i64 0, i32 8
  %353 = load i8, ptr %352, align 1
  %354 = and i8 %353, -16
  store i8 %354, ptr %352, align 1
  %355 = getelementptr inbounds %struct.ScanFillEdge, ptr %225, i64 0, i32 2
  %356 = load ptr, ptr %355, align 8, !tbaa !52
  %357 = getelementptr inbounds %struct.ScanFillVert, ptr %356, i64 0, i32 7
  %358 = load i8, ptr %357, align 2, !tbaa !47
  %359 = add i8 %358, -1
  store i8 %359, ptr %357, align 2, !tbaa !47
  %360 = load ptr, ptr %245, align 8, !tbaa !54
  %361 = getelementptr inbounds %struct.ScanFillVert, ptr %360, i64 0, i32 7
  %362 = load i8, ptr %361, align 2, !tbaa !47
  %363 = add i8 %362, -1
  store i8 %363, ptr %361, align 2, !tbaa !47
  br label %364

364:                                              ; preds = %350, %331
  %365 = tail call ptr @BLI_scanfill_edge_add(ptr noundef nonnull %0, ptr noundef %242, ptr noundef %246) #16
  tail call void @BLI_remlink(ptr noundef nonnull %169, ptr noundef %365) #15
  %366 = getelementptr inbounds %struct.ScanFillEdge, ptr %365, i64 0, i32 5
  %367 = load i8, ptr %366, align 2
  %368 = and i8 %367, -16
  %369 = or disjoint i8 %368, 2
  store i8 %369, ptr %366, align 2
  %370 = getelementptr inbounds %struct.ScanFillEdge, ptr %365, i64 0, i32 2
  %371 = load ptr, ptr %370, align 8, !tbaa !52
  %372 = getelementptr inbounds %struct.ScanFillVert, ptr %371, i64 0, i32 7
  %373 = load i8, ptr %372, align 2, !tbaa !47
  %374 = add i8 %373, 1
  store i8 %374, ptr %372, align 2, !tbaa !47
  %375 = getelementptr inbounds %struct.ScanFillEdge, ptr %365, i64 0, i32 3
  %376 = load ptr, ptr %375, align 8, !tbaa !54
  %377 = getelementptr inbounds %struct.ScanFillVert, ptr %376, i64 0, i32 7
  %378 = load i8, ptr %377, align 2, !tbaa !47
  %379 = add i8 %378, 1
  store i8 %379, ptr %377, align 2, !tbaa !47
  %380 = tail call fastcc ptr @addedgetoscanlist(ptr noundef %65, ptr noundef %365, i32 noundef %91) #16
  %381 = icmp eq ptr %380, null
  br i1 %381, label %428, label %382

382:                                              ; preds = %364
  %383 = load ptr, ptr %370, align 8, !tbaa !52
  %384 = getelementptr inbounds %struct.ScanFillVert, ptr %383, i64 0, i32 7
  %385 = load i8, ptr %384, align 2, !tbaa !47
  %386 = add i8 %385, -1
  store i8 %386, ptr %384, align 2, !tbaa !47
  %387 = load ptr, ptr %375, align 8, !tbaa !54
  %388 = getelementptr inbounds %struct.ScanFillVert, ptr %387, i64 0, i32 7
  %389 = load i8, ptr %388, align 2, !tbaa !47
  %390 = add i8 %389, -1
  store i8 %390, ptr %388, align 2, !tbaa !47
  %391 = getelementptr inbounds %struct.ScanFillVertLink, ptr %380, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !57
  %393 = icmp eq ptr %392, null
  br i1 %393, label %428, label %394

394:                                              ; preds = %382, %417
  %395 = phi ptr [ %418, %417 ], [ %392, %382 ]
  %396 = getelementptr inbounds %struct.ScanFillEdge, ptr %395, i64 0, i32 2
  %397 = load ptr, ptr %396, align 8, !tbaa !52
  %398 = icmp eq ptr %397, %242
  br i1 %398, label %399, label %403

399:                                              ; preds = %394
  %400 = getelementptr inbounds %struct.ScanFillEdge, ptr %395, i64 0, i32 3
  %401 = load ptr, ptr %400, align 8, !tbaa !54
  %402 = icmp eq ptr %401, %246
  br i1 %402, label %409, label %403

403:                                              ; preds = %399, %394
  %404 = icmp eq ptr %397, %246
  br i1 %404, label %405, label %417

405:                                              ; preds = %403
  %406 = getelementptr inbounds %struct.ScanFillEdge, ptr %395, i64 0, i32 3
  %407 = load ptr, ptr %406, align 8, !tbaa !54
  %408 = icmp eq ptr %407, %242
  br i1 %408, label %409, label %417

409:                                              ; preds = %405, %399
  br i1 %161, label %410, label %428

410:                                              ; preds = %409
  %411 = getelementptr inbounds %struct.ScanFillEdge, ptr %395, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %391, ptr noundef nonnull %395) #15
  tail call void @BLI_addtail(ptr noundef nonnull %169, ptr noundef nonnull %395) #15
  %412 = load ptr, ptr %411, align 8, !tbaa !52
  %413 = getelementptr inbounds %struct.ScanFillVert, ptr %412, i64 0, i32 7
  %414 = load i8, ptr %413, align 2, !tbaa !47
  %415 = add i8 %414, -1
  store i8 %415, ptr %413, align 2, !tbaa !47
  %416 = getelementptr inbounds %struct.ScanFillEdge, ptr %395, i64 0, i32 3
  br label %420

417:                                              ; preds = %403, %405
  %418 = load ptr, ptr %395, align 8, !tbaa !57
  %419 = icmp eq ptr %418, null
  br i1 %419, label %428, label %394, !llvm.loop !122

420:                                              ; preds = %229, %410, %313
  %421 = phi ptr [ %230, %229 ], [ %416, %410 ], [ %316, %313 ]
  %422 = phi i8 [ -1, %229 ], [ -1, %410 ], [ 1, %313 ]
  %423 = phi i32 [ %224, %229 ], [ %332, %410 ], [ %224, %313 ]
  %424 = load ptr, ptr %421, align 8, !tbaa !54
  %425 = getelementptr inbounds %struct.ScanFillVert, ptr %424, i64 0, i32 7
  %426 = load i8, ptr %425, align 2, !tbaa !47
  %427 = add i8 %426, %422
  store i8 %427, ptr %425, align 2, !tbaa !47
  br label %428

428:                                              ; preds = %417, %420, %382, %409, %364
  %429 = phi i32 [ %332, %364 ], [ %332, %409 ], [ %332, %382 ], [ %423, %420 ], [ %332, %417 ]
  %430 = load ptr, ptr %174, align 8, !tbaa !118
  %431 = icmp eq ptr %430, null
  br i1 %431, label %463, label %432

432:                                              ; preds = %428, %461
  %433 = phi ptr [ %434, %461 ], [ %430, %428 ]
  %434 = load ptr, ptr %433, align 8, !tbaa !106
  %435 = getelementptr inbounds %struct.ScanFillEdge, ptr %433, i64 0, i32 2
  %436 = load ptr, ptr %435, align 8, !tbaa !52
  %437 = getelementptr inbounds %struct.ScanFillVert, ptr %436, i64 0, i32 7
  %438 = load i8, ptr %437, align 2, !tbaa !47
  %439 = icmp ult i8 %438, 2
  br i1 %439, label %446, label %440

440:                                              ; preds = %432
  %441 = getelementptr inbounds %struct.ScanFillEdge, ptr %433, i64 0, i32 3
  %442 = load ptr, ptr %441, align 8, !tbaa !54
  %443 = getelementptr inbounds %struct.ScanFillVert, ptr %442, i64 0, i32 7
  %444 = load i8, ptr %443, align 2, !tbaa !47
  %445 = icmp ult i8 %444, 2
  br i1 %445, label %446, label %461

446:                                              ; preds = %440, %432
  tail call void @BLI_remlink(ptr noundef nonnull %174, ptr noundef nonnull %433) #15
  tail call void @BLI_addtail(ptr noundef nonnull %169, ptr noundef nonnull %433) #15
  %447 = load ptr, ptr %435, align 8, !tbaa !52
  %448 = getelementptr inbounds %struct.ScanFillVert, ptr %447, i64 0, i32 7
  %449 = load i8, ptr %448, align 2, !tbaa !47
  %450 = icmp ugt i8 %449, 1
  br i1 %450, label %451, label %453

451:                                              ; preds = %446
  %452 = add i8 %449, -1
  store i8 %452, ptr %448, align 2, !tbaa !47
  br label %453

453:                                              ; preds = %451, %446
  %454 = getelementptr inbounds %struct.ScanFillEdge, ptr %433, i64 0, i32 3
  %455 = load ptr, ptr %454, align 8, !tbaa !54
  %456 = getelementptr inbounds %struct.ScanFillVert, ptr %455, i64 0, i32 7
  %457 = load i8, ptr %456, align 2, !tbaa !47
  %458 = icmp ugt i8 %457, 1
  br i1 %458, label %459, label %461

459:                                              ; preds = %453
  %460 = add i8 %457, -1
  store i8 %460, ptr %456, align 2, !tbaa !47
  br label %461

461:                                              ; preds = %440, %459, %453
  %462 = icmp eq ptr %434, null
  br i1 %462, label %219, label %432, !llvm.loop !123

463:                                              ; preds = %219, %222, %240, %428, %170, %177
  %464 = phi i32 [ %172, %177 ], [ %172, %170 ], [ %429, %428 ], [ %224, %240 ], [ %224, %222 ], [ %429, %219 ]
  %465 = phi i32 [ %173, %177 ], [ %173, %170 ], [ %173, %428 ], [ %173, %240 ], [ %91, %222 ], [ %173, %219 ]
  %466 = getelementptr inbounds %struct.ScanFillVertLink, ptr %171, i64 1
  %467 = add i32 %465, 1
  %468 = icmp ult i32 %467, %91
  br i1 %468, label %170, label %469, !llvm.loop !124

469:                                              ; preds = %463, %158
  %470 = phi i32 [ 0, %158 ], [ %464, %463 ]
  %471 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %471(ptr noundef %65) #15
  ret i32 %470
}

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_scanfill_calc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BLI_scanfill_calc_ex(ptr noundef %0, i32 noundef %1, ptr noundef null) #16
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !125 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !126 {
  %3 = load float, ptr %0, align 4, !tbaa !49
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !127 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !49
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @compare_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !128 {
  %3 = load float, ptr %0, align 4, !tbaa !49
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = fsub float %3, %4
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = fcmp ugt float %6, 0x3EFF751040000000
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = fsub float %10, %12
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ugt float %14, 0x3EFF751040000000
  br i1 %15, label %16, label %17

16:                                               ; preds = %8, %2
  br label %17

17:                                               ; preds = %8, %16
  %18 = phi i8 [ 0, %16 ], [ 1, %8 ]
  ret i8 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @boundinsideEV(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !129 {
  %3 = getelementptr inbounds %struct.ScanFillEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.ScanFillVert, ptr %4, i64 0, i32 4
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = getelementptr inbounds %struct.ScanFillEdge, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.ScanFillVert, ptr %8, i64 0, i32 4
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fcmp olt float %6, %10
  %12 = select i1 %11, float %6, float %10
  %13 = select i1 %11, float %10, float %6
  %14 = getelementptr inbounds %struct.ScanFillVert, ptr %1, i64 0, i32 4
  %15 = load float, ptr %14, align 4, !tbaa !49
  %16 = fcmp ult float %15, %12
  %17 = fcmp ugt float %15, %13
  %18 = or i1 %16, %17
  br i1 %18, label %32, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ScanFillVert, ptr %4, i64 0, i32 4, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !49
  %22 = getelementptr inbounds %struct.ScanFillVert, ptr %8, i64 0, i32 4, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !49
  %24 = fcmp olt float %21, %23
  %25 = select i1 %24, float %21, float %23
  %26 = select i1 %24, float %23, float %21
  %27 = getelementptr inbounds %struct.ScanFillVert, ptr %1, i64 0, i32 4, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !49
  %29 = fcmp ult float %28, %25
  %30 = fcmp ugt float %28, %26
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19, %2
  br label %33

33:                                               ; preds = %19, %32
  %34 = phi i8 [ 0, %32 ], [ 1, %19 ]
  ret i8 %34
}

; Function Attrs: optsize
declare float @dist_squared_to_line_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !130 {
  %3 = load float, ptr %0, align 4, !tbaa !49
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fcmp oeq float %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i8 [ 0, %2 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @vergscdata(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !PGOFuncName !131 {
  %3 = load ptr, ptr %0, align 8, !tbaa !110
  %4 = getelementptr inbounds %struct.ScanFillVert, ptr %3, i64 0, i32 4
  %5 = getelementptr inbounds %struct.ScanFillVert, ptr %3, i64 0, i32 4, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = load ptr, ptr %1, align 8, !tbaa !110
  %8 = getelementptr inbounds %struct.ScanFillVert, ptr %7, i64 0, i32 4
  %9 = getelementptr inbounds %struct.ScanFillVert, ptr %7, i64 0, i32 4, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fcmp olt float %6, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = fcmp ogt float %6, %10
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load float, ptr %4, align 4, !tbaa !49
  %16 = load float, ptr %8, align 4, !tbaa !49
  %17 = fcmp ogt float %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = fcmp olt float %15, %16
  %20 = sext i1 %19 to i32
  br label %21

21:                                               ; preds = %18, %14, %12, %2
  %22 = phi i32 [ 1, %2 ], [ -1, %12 ], [ 1, %14 ], [ %20, %18 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @addedgetoscanlist(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !132 {
  %4 = alloca %struct.ScanFillVertLink, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.ScanFillEdge, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.ScanFillVert, ptr %6, i64 0, i32 4, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds %struct.ScanFillEdge, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.ScanFillVert, ptr %10, i64 0, i32 4, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = fcmp oeq float %8, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ScanFillVert, ptr %10, i64 0, i32 4
  %16 = getelementptr inbounds %struct.ScanFillVert, ptr %6, i64 0, i32 4
  %17 = load float, ptr %16, align 4, !tbaa !49
  %18 = load float, ptr %15, align 4, !tbaa !49
  %19 = fcmp ogt float %17, %18
  br i1 %19, label %22, label %23

20:                                               ; preds = %3
  %21 = fcmp olt float %8, %12
  br i1 %21, label %22, label %23

22:                                               ; preds = %20, %14
  store ptr %10, ptr %5, align 8, !tbaa !52
  store ptr %6, ptr %9, align 8, !tbaa !54
  br label %23

23:                                               ; preds = %22, %20, %14
  %24 = phi ptr [ %6, %20 ], [ %6, %14 ], [ %10, %22 ]
  store ptr %24, ptr %4, align 8, !tbaa !110
  %25 = zext i32 %2 to i64
  %26 = call ptr @bsearch(ptr noundef nonnull %4, ptr noundef %0, i64 noundef %25, i64 noundef 24, ptr noundef nonnull @vergscdata) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %1) #16
  br label %33

30:                                               ; preds = %23
  %31 = call fastcc zeroext i8 @addedgetoscanvert(ptr noundef nonnull %26, ptr noundef nonnull %1) #16, !range !72
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %28
  br label %34

34:                                               ; preds = %30, %33
  %35 = phi ptr [ null, %33 ], [ %26, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret ptr %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #13 !PGOFuncName !133 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @testedgeside(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !134 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %0, align 4, !tbaa !49
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = fsub float %8, %13
  %15 = load float, ptr %2, align 4, !tbaa !49
  %16 = fsub float %5, %15
  %17 = fmul float %14, %16
  %18 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %17)
  %19 = fcmp olt float %18, 0.000000e+00
  br i1 %19, label %31, label %20

20:                                               ; preds = %3
  %21 = fcmp oeq float %18, 0.000000e+00
  br i1 %21, label %22, label %30

22:                                               ; preds = %20
  %23 = fcmp oeq float %5, %15
  %24 = fcmp oeq float %8, %10
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = fcmp oeq float %4, %15
  %28 = fcmp oeq float %13, %10
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %31, label %30

30:                                               ; preds = %20, %26
  br label %31

31:                                               ; preds = %26, %22, %3, %30
  %32 = phi i8 [ 1, %30 ], [ 0, %3 ], [ 0, %22 ], [ 0, %26 ]
  ret i8 %32
}

; Function Attrs: optsize
declare float @angle_v2v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @addfillface(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !135 {
  %5 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr @BLI_memarena_alloc(ptr noundef %6, i64 noundef 40) #15
  %8 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %7) #15
  %9 = getelementptr inbounds %struct.ScanFillFace, ptr %7, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !136
  %10 = getelementptr inbounds %struct.ScanFillFace, ptr %7, i64 0, i32 3
  store ptr %2, ptr %10, align 8, !tbaa !138
  %11 = getelementptr inbounds %struct.ScanFillFace, ptr %7, i64 0, i32 4
  store ptr %3, ptr %11, align 8, !tbaa !139
  ret void
}

; Function Attrs: optsize
declare ptr @bsearch(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @addedgetoscanvert(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !140 {
  %3 = getelementptr inbounds %struct.ScanFillVertLink, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ScanFillVertLink, ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !141
  store ptr %1, ptr %3, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %51

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ScanFillEdge, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.ScanFillVert, ptr %10, i64 0, i32 4
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds %struct.ScanFillVert, ptr %10, i64 0, i32 4, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = getelementptr inbounds %struct.ScanFillEdge, ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.ScanFillVert, ptr %16, i64 0, i32 4
  %18 = getelementptr inbounds %struct.ScanFillVert, ptr %16, i64 0, i32 4, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !49
  %20 = fsub float %19, %14
  %21 = fcmp oeq float %20, 0.000000e+00
  %22 = load float, ptr %17, align 4, !tbaa !49
  %23 = fsub float %22, %12
  %24 = fmul float %23, 1.000000e+10
  %25 = fsub float %12, %22
  %26 = fdiv float %25, %20
  %27 = select i1 %21, float %24, float %26
  br label %28

28:                                               ; preds = %36, %8
  %29 = phi ptr [ %3, %8 ], [ %30, %36 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ScanFillEdge, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  %35 = icmp eq ptr %34, %16
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ScanFillVert, ptr %34, i64 0, i32 4
  %38 = getelementptr inbounds %struct.ScanFillVert, ptr %34, i64 0, i32 4, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !49
  %40 = fsub float %39, %14
  %41 = fcmp oeq float %40, 0.000000e+00
  %42 = load float, ptr %37, align 4, !tbaa !49
  %43 = fsub float %42, %12
  %44 = fmul float %43, 1.000000e+10
  %45 = fsub float %12, %42
  %46 = fdiv float %45, %40
  %47 = select i1 %41, float %44, float %46
  %48 = fcmp ogt float %47, %27
  br i1 %48, label %49, label %28, !llvm.loop !142

49:                                               ; preds = %36
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %3, ptr noundef nonnull %30, ptr noundef %1) #15
  br label %51

50:                                               ; preds = %28
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %1) #15
  br label %51

51:                                               ; preds = %32, %49, %50, %6
  %52 = phi i8 [ 1, %6 ], [ 1, %50 ], [ 1, %49 ], [ 0, %32 ]
  ret i8 %52
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !37, i64 56}
!35 = !{!"ScanFillContext", !36, i64 0, !36, i64 16, !36, i64 32, !40, i64 48, !37, i64 56}
!36 = !{!"ListBase", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!38, !38, i64 0}
!42 = !{!43, !44, i64 44}
!43 = !{!"ScanFillVert", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 24, !38, i64 36, !44, i64 44, !40, i64 48, !38, i64 50, !44, i64 51, !44, i64 51}
!44 = !{!"int", !38, i64 0}
!45 = !{!35, !40, i64 48}
!46 = !{!43, !40, i64 48}
!47 = !{!43, !38, i64 50}
!48 = !{!"scanfill.c:copy_v3_v3"}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !38, i64 0}
!51 = !{!"scanfill.c:zero_v2"}
!52 = !{!53, !37, i64 16}
!53 = !{!"ScanFillEdge", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !44, i64 34, !44, i64 34, !38, i64 35}
!54 = !{!53, !37, i64 24}
!55 = !{!53, !40, i64 32}
!56 = !{!"scanfill.c:BLI_listbase_clear"}
!57 = !{!37, !37, i64 0}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = distinct !{!60, !59}
!61 = !{!35, !37, i64 8}
!62 = distinct !{!62, !59}
!63 = distinct !{!63, !59}
!64 = distinct !{!64, !59}
!65 = distinct !{!65, !59}
!66 = distinct !{!66, !59}
!67 = distinct !{!67, !59}
!68 = distinct !{!68, !59}
!69 = distinct !{!69, !59}
!70 = distinct !{!70, !59}
!71 = distinct !{!71, !59}
!72 = !{i8 0, i8 2}
!73 = distinct !{!73, !59}
!74 = !{!75, !44, i64 4}
!75 = !{!"PolyFill", !44, i64 0, !44, i64 4, !38, i64 8, !38, i64 16, !40, i64 24, !38, i64 26}
!76 = !{!75, !44, i64 0}
!77 = !{!75, !38, i64 26}
!78 = !{!75, !40, i64 24}
!79 = distinct !{!79, !59}
!80 = distinct !{!80, !59}
!81 = distinct !{!81, !59}
!82 = !{!40, !40, i64 0}
!83 = distinct !{!83, !59}
!84 = distinct !{!84, !59}
!85 = distinct !{!85, !59}
!86 = distinct !{!86, !59}
!87 = !{!"scanfill.c:zero_v3"}
!88 = !{!"scanfill.c:compare_v3v3"}
!89 = !{!"scanfill.c:add_newell_cross_v3_v3v3"}
!90 = !{!"scanfill.c:normalize_v3"}
!91 = !{!"scanfill.c:testvertexnearedge"}
!92 = distinct !{!92, !59}
!93 = distinct !{!93, !59}
!94 = distinct !{!94, !59}
!95 = !{!"scanfill.c:BLI_listbase_is_empty"}
!96 = !{!36, !37, i64 0}
!97 = !{!"scanfill.c:vergpoly"}
!98 = !{!"scanfill.c:boundisect"}
!99 = !{!"scanfill.c:mergepolysSimp"}
!100 = distinct !{!100, !59}
!101 = distinct !{!101, !59}
!102 = !{!44, !44, i64 0}
!103 = !{!"scanfill.c:splitlist"}
!104 = !{!43, !37, i64 0}
!105 = distinct !{!105, !59}
!106 = !{!53, !37, i64 0}
!107 = distinct !{!107, !59}
!108 = !{!"scanfill.c:scanfill"}
!109 = distinct !{!109, !59}
!110 = !{!111, !37, i64 0}
!111 = !{!"ScanFillVertLink", !37, i64 0, !37, i64 8, !37, i64 16}
!112 = distinct !{!112, !59}
!113 = !{!35, !37, i64 16}
!114 = distinct !{!114, !59}
!115 = distinct !{!115, !59}
!116 = distinct !{!116, !59}
!117 = distinct !{!117, !59}
!118 = !{!111, !37, i64 8}
!119 = distinct !{!119, !59}
!120 = distinct !{!120, !59}
!121 = distinct !{!121, !59}
!122 = distinct !{!122, !59}
!123 = distinct !{!123, !59}
!124 = distinct !{!124, !59}
!125 = !{!"scanfill.c:normalize_v3_v3"}
!126 = !{!"scanfill.c:dot_v3v3"}
!127 = !{!"scanfill.c:mul_v3_v3fl"}
!128 = !{!"scanfill.c:compare_v2v2"}
!129 = !{!"scanfill.c:boundinsideEV"}
!130 = !{!"scanfill.c:equals_v2v2"}
!131 = !{!"scanfill.c:vergscdata"}
!132 = !{!"scanfill.c:addedgetoscanlist"}
!133 = !{!"scanfill.c:min_ff"}
!134 = !{!"scanfill.c:testedgeside"}
!135 = !{!"scanfill.c:addfillface"}
!136 = !{!137, !37, i64 16}
!137 = !{!"ScanFillFace", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!138 = !{!137, !37, i64 24}
!139 = !{!137, !37, i64 32}
!140 = !{!"scanfill.c:addedgetoscanvert"}
!141 = !{!111, !37, i64 16}
!142 = distinct !{!142, !59}
