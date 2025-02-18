; ModuleID = 'blender/source/blender/editors/armature/reeb.c'
source_filename = "blender/source/blender/editors/armature/reeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ReebArc = type { ptr, ptr, ptr, ptr, i32, float, i32, i32, i32, %struct.ListBase, i32, ptr, ptr, float, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.ReebGraph = type { %struct.ListBase, %struct.ListBase, float, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.ReebArcIterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, i32, i32, ptr, i32, i32, i32 }
%struct.BNode = type { ptr, ptr, [3 x float], i32, i32, ptr, i32, i32, i32, [3 x float] }
%struct.RadialArc = type { ptr, [3 x float] }
%struct.ReebNode = type { ptr, ptr, [3 x float], i32, i32, ptr, i32, i32, i32, [3 x float], [3 x float], i32, float, i32, ptr, ptr }
%struct.EmbedBucket = type { float, i32, [3 x float], [3 x float] }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"reeb graph\00", align 1
@__func__.newReebGraph = private unnamed_addr constant [13 x i8] c"newReebGraph\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @REEB_freeArc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 9
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #12
  %3 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %7(ptr noundef nonnull %4) #12
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @BLI_ghash_free(ptr noundef nonnull %10, ptr noundef null, ptr noundef null) #12
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %14(ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @REEB_freeGraph(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ReebGraph, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @BLI_freeNode(ptr noundef %0, ptr noundef nonnull %6) #12
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !44

9:                                                ; preds = %5, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #12
  %10 = load ptr, ptr %0, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %9, %26
  %13 = phi ptr [ %14, %26 ], [ %10, %9 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.ReebArc, ptr %13, i64 0, i32 9
  tail call void @BLI_freelistN(ptr noundef nonnull %15) #12
  %16 = getelementptr inbounds %struct.ReebArc, ptr %13, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %20(ptr noundef nonnull %17) #12
  br label %21

21:                                               ; preds = %19, %12
  %22 = getelementptr inbounds %struct.ReebArc, ptr %13, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @BLI_ghash_free(ptr noundef nonnull %23, ptr noundef null, ptr noundef null) #12
  br label %26

26:                                               ; preds = %21, %25
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %27(ptr noundef nonnull %13) #12
  %28 = icmp eq ptr %14, null
  br i1 %28, label %29, label %12, !llvm.loop !50

29:                                               ; preds = %26, %9
  %30 = getelementptr inbounds %struct.ReebGraph, ptr %0, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  tail call void @BLI_edgehash_free(ptr noundef %31, ptr noundef null) #12
  %32 = getelementptr inbounds %struct.ReebGraph, ptr %0, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  tail call void @REEB_freeGraph(ptr noundef nonnull %33)
  br label %36

36:                                               ; preds = %35, %29
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %37(ptr noundef nonnull %0) #12
  ret void
}

declare void @BLI_freeNode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @newReebGraph() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %2 = tail call ptr %1(i64 noundef 104, ptr noundef nonnull @.str) #12
  %3 = getelementptr inbounds %struct.ReebGraph, ptr %2, i64 0, i32 8
  store i32 0, ptr %3, align 4, !tbaa !53
  %4 = tail call ptr @BLI_edgehash_new(ptr noundef nonnull @__func__.newReebGraph) #12
  %5 = getelementptr inbounds %struct.ReebGraph, ptr %2, i64 0, i32 9
  store ptr %4, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.ReebGraph, ptr %2, i64 0, i32 3
  store ptr @REEB_freeArc, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.ReebGraph, ptr %2, i64 0, i32 4
  store ptr null, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.ReebGraph, ptr %2, i64 0, i32 5
  store ptr @REEB_RadialSymmetry, ptr %8, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.ReebGraph, ptr %2, i64 0, i32 6
  store ptr @REEB_AxialSymmetry, ptr %9, align 8, !tbaa !57
  ret ptr %2
}

declare ptr @BLI_edgehash_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @REEB_RadialSymmetry(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca %struct.ReebArcIterator, align 8
  %6 = alloca %struct.ReebArcIterator, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.ReebArcIterator, align 8
  %9 = alloca %struct.ReebArcIterator, align 8
  %10 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 9
  %11 = load float, ptr %10, align 4, !tbaa !58
  %12 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 9, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !58
  %14 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 9, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !58
  %16 = add i32 %2, -1
  %17 = icmp sgt i32 %2, 1
  br i1 %17, label %18, label %53

18:                                               ; preds = %3
  %19 = getelementptr inbounds float, ptr %4, i64 1
  %20 = getelementptr inbounds float, ptr %4, i64 2
  %21 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 1
  %23 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 2
  %24 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 3
  %25 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 4
  %26 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 5
  %27 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 6
  %28 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 12
  %29 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 13
  %30 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 14
  %31 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 15
  %32 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 13
  %33 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 14
  %34 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 15
  %35 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 10
  %36 = getelementptr inbounds %struct.ReebArcIterator, ptr %5, i64 0, i32 11
  %37 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 1
  %38 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 2
  %39 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 3
  %40 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 4
  %41 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 5
  %42 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 6
  %43 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 12
  %44 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 13
  %45 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 14
  %46 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 15
  %47 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 13
  %48 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 14
  %49 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 15
  %50 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 10
  %51 = getelementptr inbounds %struct.ReebArcIterator, ptr %6, i64 0, i32 11
  %52 = zext i32 %16 to i64
  br label %90

53:                                               ; preds = %218, %3
  %54 = icmp sgt i32 %2, 1
  br i1 %54, label %55, label %344

55:                                               ; preds = %53
  %56 = getelementptr inbounds float, ptr %7, i64 1
  %57 = getelementptr inbounds float, ptr %7, i64 2
  %58 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 2
  %59 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 1
  %60 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 2
  %61 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 3
  %62 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 4
  %63 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 5
  %64 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 6
  %65 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 12
  %66 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 13
  %67 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 14
  %68 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 15
  %69 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 13
  %70 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 14
  %71 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 15
  %72 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 10
  %73 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 11
  %74 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 1
  %75 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 2
  %76 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 3
  %77 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 4
  %78 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 5
  %79 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 6
  %80 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 12
  %81 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 13
  %82 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 14
  %83 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 15
  %84 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 13
  %85 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 14
  %86 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 15
  %87 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 10
  %88 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 11
  %89 = zext i32 %16 to i64
  br label %220

90:                                               ; preds = %18, %218
  %91 = phi i64 [ 0, %18 ], [ %92, %218 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %92 = add nuw nsw i64 %91, 1
  %93 = getelementptr inbounds %struct.RadialArc, ptr %1, i64 %91
  %94 = getelementptr inbounds %struct.RadialArc, ptr %1, i64 %91, i32 1
  %95 = getelementptr inbounds %struct.RadialArc, ptr %1, i64 %92
  %96 = getelementptr inbounds %struct.RadialArc, ptr %1, i64 %92, i32 1
  %97 = load float, ptr %94, align 4, !tbaa !58
  %98 = load float, ptr %96, align 4, !tbaa !58
  %99 = fadd float %97, %98
  %100 = getelementptr inbounds float, ptr %94, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !58
  %102 = getelementptr inbounds float, ptr %96, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !58
  %104 = fadd float %101, %103
  %105 = getelementptr inbounds float, ptr %94, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !58
  %107 = getelementptr inbounds float, ptr %96, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !58
  %109 = fadd float %106, %108
  %110 = fneg float %109
  %111 = fmul float %13, %110
  %112 = call float @llvm.fmuladd.f32(float %104, float %15, float %111)
  store float %112, ptr %4, align 4, !tbaa !58
  %113 = fneg float %99
  %114 = fmul float %15, %113
  %115 = call float @llvm.fmuladd.f32(float %109, float %11, float %114)
  store float %115, ptr %19, align 4, !tbaa !58
  %116 = fneg float %104
  %117 = fmul float %11, %116
  %118 = call float @llvm.fmuladd.f32(float %99, float %13, float %117)
  store float %118, ptr %20, align 4, !tbaa !58
  %119 = load ptr, ptr %93, align 8, !tbaa !59
  %120 = call ptr @BLI_otherNode(ptr noundef %119, ptr noundef %0) #12
  %121 = load ptr, ptr %95, align 8, !tbaa !59
  %122 = call ptr @BLI_otherNode(ptr noundef %121, ptr noundef %0) #12
  %123 = load ptr, ptr %93, align 8, !tbaa !59
  %124 = load ptr, ptr %95, align 8, !tbaa !59
  %125 = getelementptr inbounds %struct.ReebNode, ptr %120, i64 0, i32 2
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %125, ptr noundef nonnull %21, ptr noundef nonnull %4) #12
  %126 = getelementptr inbounds %struct.ReebNode, ptr %122, i64 0, i32 2
  %127 = trunc i64 %91 to i32
  %128 = add i32 %127, 2
  %129 = sitofp i32 %128 to float
  %130 = fdiv float 1.000000e+00, %129
  call void @interp_v3_v3v3(ptr noundef nonnull %126, ptr noundef nonnull %126, ptr noundef nonnull %125, float noundef %130) #12
  %131 = getelementptr inbounds %struct.ReebArc, ptr %123, i64 0, i32 10
  %132 = load i32, ptr %131, align 8, !tbaa !61
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %218

134:                                              ; preds = %90
  %135 = getelementptr inbounds %struct.ReebArc, ptr %124, i64 0, i32 10
  %136 = load i32, ptr %135, align 8, !tbaa !61
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %218

138:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #12
  store ptr @headNode, ptr %5, align 8, !tbaa !62
  store ptr @tailNode, ptr %22, align 8, !tbaa !64
  store ptr @peekBucket, ptr %23, align 8, !tbaa !65
  store ptr @nextBucket, ptr %24, align 8, !tbaa !66
  store ptr @nextNBucket, ptr %25, align 8, !tbaa !67
  store ptr @previousBucket, ptr %26, align 8, !tbaa !68
  store ptr @iteratorStopped, ptr %27, align 8, !tbaa !69
  store ptr %123, ptr %28, align 8, !tbaa !70
  %139 = getelementptr inbounds %struct.ReebArc, ptr %123, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !71
  %141 = icmp eq ptr %140, %0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  store i32 0, ptr %32, align 8, !tbaa !72
  %143 = load i32, ptr %131, align 8, !tbaa !61
  %144 = add nsw i32 %143, -1
  store i32 %144, ptr %33, align 4, !tbaa !73
  store i32 1, ptr %34, align 8, !tbaa !74
  br label %148

145:                                              ; preds = %138
  %146 = load i32, ptr %131, align 8, !tbaa !61
  %147 = add nsw i32 %146, -1
  store i32 %147, ptr %29, align 8, !tbaa !72
  store i32 0, ptr %30, align 4, !tbaa !73
  store i32 -1, ptr %31, align 8, !tbaa !74
  br label %148

148:                                              ; preds = %142, %145
  %149 = load i32, ptr %131, align 8, !tbaa !61
  store i32 %149, ptr %35, align 4, !tbaa !75
  store i32 -1, ptr %36, align 8, !tbaa !76
  store ptr @headNode, ptr %6, align 8, !tbaa !62
  store ptr @tailNode, ptr %37, align 8, !tbaa !64
  store ptr @peekBucket, ptr %38, align 8, !tbaa !65
  store ptr @nextBucket, ptr %39, align 8, !tbaa !66
  store ptr @nextNBucket, ptr %40, align 8, !tbaa !67
  store ptr @previousBucket, ptr %41, align 8, !tbaa !68
  store ptr @iteratorStopped, ptr %42, align 8, !tbaa !69
  store ptr %124, ptr %43, align 8, !tbaa !70
  %150 = getelementptr inbounds %struct.ReebArc, ptr %124, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !71
  %152 = icmp eq ptr %151, %0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  store i32 0, ptr %47, align 8, !tbaa !72
  %154 = load i32, ptr %135, align 8, !tbaa !61
  %155 = add nsw i32 %154, -1
  store i32 %155, ptr %48, align 4, !tbaa !73
  store i32 1, ptr %49, align 8, !tbaa !74
  br label %159

156:                                              ; preds = %148
  %157 = load i32, ptr %135, align 8, !tbaa !61
  %158 = add nsw i32 %157, -1
  store i32 %158, ptr %44, align 8, !tbaa !72
  store i32 0, ptr %45, align 4, !tbaa !73
  store i32 -1, ptr %46, align 8, !tbaa !74
  br label %159

159:                                              ; preds = %153, %156
  %160 = load i32, ptr %135, align 8, !tbaa !61
  store i32 %160, ptr %50, align 4, !tbaa !75
  store i32 -1, ptr %51, align 8, !tbaa !76
  %161 = call ptr @IT_next(ptr noundef nonnull %5) #12
  %162 = call ptr @IT_next(ptr noundef nonnull %6) #12
  %163 = icmp ne ptr %162, null
  %164 = icmp ne ptr %161, null
  %165 = select i1 %164, i1 %163, i1 false
  br i1 %165, label %166, label %178

166:                                              ; preds = %159
  %167 = load float, ptr %161, align 4, !tbaa !77
  %168 = load float, ptr %162, align 4, !tbaa !77
  %169 = fcmp olt float %167, %168
  br i1 %169, label %174, label %178

170:                                              ; preds = %174
  %171 = load float, ptr %175, align 4, !tbaa !77
  %172 = load float, ptr %162, align 4, !tbaa !77
  %173 = fcmp olt float %171, %172
  br i1 %173, label %174, label %178, !llvm.loop !79

174:                                              ; preds = %166, %170
  %175 = call ptr @IT_next(ptr noundef nonnull %5) #12
  %176 = icmp ne ptr %175, null
  %177 = select i1 %176, i1 %163, i1 false
  br i1 %177, label %170, label %178, !llvm.loop !79

178:                                              ; preds = %174, %170, %166, %159
  %179 = phi ptr [ %161, %159 ], [ %161, %166 ], [ %175, %170 ], [ %175, %174 ]
  %180 = phi i1 [ %164, %159 ], [ %164, %166 ], [ %176, %170 ], [ %176, %174 ]
  %181 = icmp ne ptr %162, null
  %182 = select i1 %180, i1 %181, i1 false
  br i1 %182, label %183, label %192

183:                                              ; preds = %178, %188
  %184 = phi ptr [ %189, %188 ], [ %162, %178 ]
  %185 = load float, ptr %184, align 4, !tbaa !77
  %186 = load float, ptr %179, align 4, !tbaa !77
  %187 = fcmp olt float %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = call ptr @IT_next(ptr noundef nonnull %6) #12
  %190 = icmp ne ptr %189, null
  %191 = select i1 %180, i1 %190, i1 false
  br i1 %191, label %183, label %192, !llvm.loop !80

192:                                              ; preds = %183, %188, %178
  %193 = phi ptr [ %162, %178 ], [ %184, %183 ], [ %189, %188 ]
  %194 = icmp ne ptr %179, null
  %195 = icmp ne ptr %193, null
  %196 = select i1 %194, i1 %195, i1 false
  br i1 %196, label %197, label %217

197:                                              ; preds = %192, %197
  %198 = phi ptr [ %212, %197 ], [ %179, %192 ]
  %199 = phi ptr [ %213, %197 ], [ %193, %192 ]
  %200 = getelementptr inbounds %struct.EmbedBucket, ptr %198, i64 0, i32 1
  %201 = load i32, ptr %200, align 4, !tbaa !81
  %202 = getelementptr inbounds %struct.EmbedBucket, ptr %199, i64 0, i32 1
  %203 = load i32, ptr %202, align 4, !tbaa !81
  %204 = add nsw i32 %203, %201
  store i32 %204, ptr %202, align 4, !tbaa !81
  %205 = getelementptr inbounds %struct.EmbedBucket, ptr %198, i64 0, i32 2
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %205, ptr noundef nonnull %21, ptr noundef nonnull %4) #12
  %206 = getelementptr inbounds %struct.EmbedBucket, ptr %199, i64 0, i32 2
  %207 = load i32, ptr %200, align 4, !tbaa !81
  %208 = sitofp i32 %207 to float
  %209 = load i32, ptr %202, align 4, !tbaa !81
  %210 = sitofp i32 %209 to float
  %211 = fdiv float %208, %210
  call void @interp_v3_v3v3(ptr noundef nonnull %206, ptr noundef nonnull %206, ptr noundef nonnull %205, float noundef %211) #12
  %212 = call ptr @IT_next(ptr noundef nonnull %5) #12
  %213 = call ptr @IT_next(ptr noundef nonnull %6) #12
  %214 = icmp ne ptr %212, null
  %215 = icmp ne ptr %213, null
  %216 = select i1 %214, i1 %215, i1 false
  br i1 %216, label %197, label %217, !llvm.loop !82

217:                                              ; preds = %197, %192
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #12
  br label %218

218:                                              ; preds = %217, %134, %90
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  %219 = icmp eq i64 %92, %52
  br i1 %219, label %53, label %90, !llvm.loop !83

220:                                              ; preds = %55, %341
  %221 = phi i64 [ %89, %55 ], [ %342, %341 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %222 = getelementptr %struct.RadialArc, ptr %1, i64 %221
  %223 = getelementptr inbounds %struct.RadialArc, ptr %1, i64 %221, i32 1
  %224 = getelementptr %struct.RadialArc, ptr %222, i64 -1
  %225 = getelementptr %struct.RadialArc, ptr %222, i64 -1, i32 1
  %226 = load float, ptr %223, align 4, !tbaa !58
  %227 = load float, ptr %225, align 4, !tbaa !58
  %228 = fadd float %226, %227
  %229 = getelementptr inbounds float, ptr %223, i64 1
  %230 = load float, ptr %229, align 4, !tbaa !58
  %231 = getelementptr %struct.RadialArc, ptr %222, i64 -1, i32 1, i64 1
  %232 = load float, ptr %231, align 4, !tbaa !58
  %233 = fadd float %230, %232
  %234 = getelementptr inbounds float, ptr %223, i64 2
  %235 = load float, ptr %234, align 4, !tbaa !58
  %236 = getelementptr %struct.RadialArc, ptr %222, i64 -1, i32 1, i64 2
  %237 = load float, ptr %236, align 4, !tbaa !58
  %238 = fadd float %235, %237
  %239 = fneg float %238
  %240 = fmul float %13, %239
  %241 = call float @llvm.fmuladd.f32(float %233, float %15, float %240)
  store float %241, ptr %7, align 4, !tbaa !58
  %242 = fneg float %228
  %243 = fmul float %15, %242
  %244 = call float @llvm.fmuladd.f32(float %238, float %11, float %243)
  store float %244, ptr %56, align 4, !tbaa !58
  %245 = fneg float %233
  %246 = fmul float %11, %245
  %247 = call float @llvm.fmuladd.f32(float %228, float %13, float %246)
  store float %247, ptr %57, align 4, !tbaa !58
  %248 = load ptr, ptr %222, align 8, !tbaa !59
  %249 = call ptr @BLI_otherNode(ptr noundef %248, ptr noundef %0) #12
  %250 = load ptr, ptr %224, align 8, !tbaa !59
  %251 = call ptr @BLI_otherNode(ptr noundef %250, ptr noundef %0) #12
  %252 = load ptr, ptr %222, align 8, !tbaa !59
  %253 = load ptr, ptr %224, align 8, !tbaa !59
  %254 = getelementptr inbounds %struct.ReebNode, ptr %251, i64 0, i32 2
  %255 = getelementptr inbounds %struct.ReebNode, ptr %249, i64 0, i32 2
  %256 = load float, ptr %255, align 4, !tbaa !58
  store float %256, ptr %254, align 4, !tbaa !58
  %257 = getelementptr inbounds %struct.ReebNode, ptr %249, i64 0, i32 2, i64 1
  %258 = load float, ptr %257, align 4, !tbaa !58
  %259 = getelementptr inbounds %struct.ReebNode, ptr %251, i64 0, i32 2, i64 1
  store float %258, ptr %259, align 4, !tbaa !58
  %260 = getelementptr inbounds %struct.ReebNode, ptr %249, i64 0, i32 2, i64 2
  %261 = load float, ptr %260, align 4, !tbaa !58
  %262 = getelementptr inbounds %struct.ReebNode, ptr %251, i64 0, i32 2, i64 2
  store float %261, ptr %262, align 4, !tbaa !58
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %254, ptr noundef nonnull %58, ptr noundef nonnull %7) #12
  %263 = getelementptr inbounds %struct.ReebArc, ptr %252, i64 0, i32 10
  %264 = load i32, ptr %263, align 8, !tbaa !61
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %341

266:                                              ; preds = %220
  %267 = getelementptr inbounds %struct.ReebArc, ptr %253, i64 0, i32 10
  %268 = load i32, ptr %267, align 8, !tbaa !61
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %341

270:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #12
  store ptr @headNode, ptr %8, align 8, !tbaa !62
  store ptr @tailNode, ptr %59, align 8, !tbaa !64
  store ptr @peekBucket, ptr %60, align 8, !tbaa !65
  store ptr @nextBucket, ptr %61, align 8, !tbaa !66
  store ptr @nextNBucket, ptr %62, align 8, !tbaa !67
  store ptr @previousBucket, ptr %63, align 8, !tbaa !68
  store ptr @iteratorStopped, ptr %64, align 8, !tbaa !69
  store ptr %252, ptr %65, align 8, !tbaa !70
  %271 = getelementptr inbounds %struct.ReebArc, ptr %252, i64 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !71
  %273 = icmp eq ptr %272, %0
  br i1 %273, label %274, label %277

274:                                              ; preds = %270
  store i32 0, ptr %69, align 8, !tbaa !72
  %275 = load i32, ptr %263, align 8, !tbaa !61
  %276 = add nsw i32 %275, -1
  store i32 %276, ptr %70, align 4, !tbaa !73
  store i32 1, ptr %71, align 8, !tbaa !74
  br label %280

277:                                              ; preds = %270
  %278 = load i32, ptr %263, align 8, !tbaa !61
  %279 = add nsw i32 %278, -1
  store i32 %279, ptr %66, align 8, !tbaa !72
  store i32 0, ptr %67, align 4, !tbaa !73
  store i32 -1, ptr %68, align 8, !tbaa !74
  br label %280

280:                                              ; preds = %274, %277
  %281 = load i32, ptr %263, align 8, !tbaa !61
  store i32 %281, ptr %72, align 4, !tbaa !75
  store i32 -1, ptr %73, align 8, !tbaa !76
  store ptr @headNode, ptr %9, align 8, !tbaa !62
  store ptr @tailNode, ptr %74, align 8, !tbaa !64
  store ptr @peekBucket, ptr %75, align 8, !tbaa !65
  store ptr @nextBucket, ptr %76, align 8, !tbaa !66
  store ptr @nextNBucket, ptr %77, align 8, !tbaa !67
  store ptr @previousBucket, ptr %78, align 8, !tbaa !68
  store ptr @iteratorStopped, ptr %79, align 8, !tbaa !69
  store ptr %253, ptr %80, align 8, !tbaa !70
  %282 = getelementptr inbounds %struct.ReebArc, ptr %253, i64 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !71
  %284 = icmp eq ptr %283, %0
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  store i32 0, ptr %84, align 8, !tbaa !72
  %286 = load i32, ptr %267, align 8, !tbaa !61
  %287 = add nsw i32 %286, -1
  store i32 %287, ptr %85, align 4, !tbaa !73
  store i32 1, ptr %86, align 8, !tbaa !74
  br label %291

288:                                              ; preds = %280
  %289 = load i32, ptr %267, align 8, !tbaa !61
  %290 = add nsw i32 %289, -1
  store i32 %290, ptr %81, align 8, !tbaa !72
  store i32 0, ptr %82, align 4, !tbaa !73
  store i32 -1, ptr %83, align 8, !tbaa !74
  br label %291

291:                                              ; preds = %285, %288
  %292 = load i32, ptr %267, align 8, !tbaa !61
  store i32 %292, ptr %87, align 4, !tbaa !75
  store i32 -1, ptr %88, align 8, !tbaa !76
  %293 = call ptr @IT_next(ptr noundef nonnull %8) #12
  %294 = call ptr @IT_next(ptr noundef nonnull %9) #12
  %295 = icmp eq ptr %293, null
  br i1 %295, label %304, label %296

296:                                              ; preds = %291, %301
  %297 = phi ptr [ %302, %301 ], [ %293, %291 ]
  %298 = load float, ptr %297, align 4, !tbaa !77
  %299 = load float, ptr %294, align 4, !tbaa !77
  %300 = fcmp olt float %298, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = call ptr @IT_next(ptr noundef nonnull %8) #12
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %296, !llvm.loop !84

304:                                              ; preds = %296, %301, %291
  %305 = phi ptr [ %293, %291 ], [ %297, %296 ], [ %302, %301 ]
  %306 = icmp eq ptr %294, null
  br i1 %306, label %315, label %307

307:                                              ; preds = %304, %312
  %308 = phi ptr [ %313, %312 ], [ %294, %304 ]
  %309 = load float, ptr %308, align 4, !tbaa !77
  %310 = load float, ptr %305, align 4, !tbaa !77
  %311 = fcmp olt float %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %307
  %313 = call ptr @IT_next(ptr noundef nonnull %9) #12
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %307, !llvm.loop !85

315:                                              ; preds = %307, %312, %304
  %316 = phi ptr [ %294, %304 ], [ %308, %307 ], [ %313, %312 ]
  %317 = icmp ne ptr %305, null
  %318 = icmp ne ptr %316, null
  %319 = select i1 %317, i1 %318, i1 false
  br i1 %319, label %320, label %340

320:                                              ; preds = %315, %320
  %321 = phi ptr [ %336, %320 ], [ %316, %315 ]
  %322 = phi ptr [ %335, %320 ], [ %305, %315 ]
  %323 = getelementptr inbounds %struct.EmbedBucket, ptr %322, i64 0, i32 1
  %324 = load i32, ptr %323, align 4, !tbaa !81
  %325 = getelementptr inbounds %struct.EmbedBucket, ptr %321, i64 0, i32 1
  store i32 %324, ptr %325, align 4, !tbaa !81
  %326 = getelementptr inbounds %struct.EmbedBucket, ptr %321, i64 0, i32 2
  %327 = getelementptr inbounds %struct.EmbedBucket, ptr %322, i64 0, i32 2
  %328 = load float, ptr %327, align 4, !tbaa !58
  store float %328, ptr %326, align 4, !tbaa !58
  %329 = getelementptr inbounds %struct.EmbedBucket, ptr %322, i64 0, i32 2, i64 1
  %330 = load float, ptr %329, align 4, !tbaa !58
  %331 = getelementptr inbounds %struct.EmbedBucket, ptr %321, i64 0, i32 2, i64 1
  store float %330, ptr %331, align 4, !tbaa !58
  %332 = getelementptr inbounds %struct.EmbedBucket, ptr %322, i64 0, i32 2, i64 2
  %333 = load float, ptr %332, align 4, !tbaa !58
  %334 = getelementptr inbounds %struct.EmbedBucket, ptr %321, i64 0, i32 2, i64 2
  store float %333, ptr %334, align 4, !tbaa !58
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %326, ptr noundef nonnull %58, ptr noundef nonnull %7) #12
  %335 = call ptr @IT_next(ptr noundef nonnull %8) #12
  %336 = call ptr @IT_next(ptr noundef nonnull %9) #12
  %337 = icmp ne ptr %335, null
  %338 = icmp ne ptr %336, null
  %339 = select i1 %337, i1 %338, i1 false
  br i1 %339, label %320, label %340, !llvm.loop !86

340:                                              ; preds = %320, %315
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %8) #12
  br label %341

341:                                              ; preds = %340, %266, %220
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  %342 = add nsw i64 %221, -1
  %343 = icmp sgt i64 %221, 1
  br i1 %343, label %220, label %344, !llvm.loop !87

344:                                              ; preds = %341, %53
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @REEB_AxialSymmetry(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.ReebArcIterator, align 8
  %9 = alloca %struct.ReebArcIterator, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %10 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 9
  %11 = load float, ptr %10, align 4, !tbaa !58
  store float %11, ptr %6, align 4, !tbaa !58
  %12 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 9, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !58
  %14 = getelementptr inbounds float, ptr %6, i64 1
  store float %13, ptr %14, align 4, !tbaa !58
  %15 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 9, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !58
  %17 = getelementptr inbounds float, ptr %6, i64 2
  store float %16, ptr %17, align 4, !tbaa !58
  %18 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !58
  store float %19, ptr %7, align 4, !tbaa !58
  %20 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !58
  %22 = getelementptr inbounds float, ptr %7, i64 1
  store float %21, ptr %22, align 4, !tbaa !58
  %23 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 2, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !58
  %25 = getelementptr inbounds float, ptr %7, i64 2
  store float %24, ptr %25, align 4, !tbaa !58
  %26 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 2
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %7, ptr noundef nonnull %26, ptr noundef nonnull %6) #12
  %27 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2
  %28 = load float, ptr %7, align 4, !tbaa !58
  %29 = load float, ptr %27, align 4, !tbaa !58
  %30 = fadd float %28, %29
  store float %30, ptr %27, align 4, !tbaa !58
  %31 = load float, ptr %22, align 4, !tbaa !58
  %32 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !58
  %34 = fadd float %31, %33
  store float %34, ptr %32, align 4, !tbaa !58
  %35 = load float, ptr %25, align 4, !tbaa !58
  %36 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !58
  %38 = fadd float %35, %37
  store float %38, ptr %36, align 4, !tbaa !58
  %39 = fmul float %30, 5.000000e-01
  store float %39, ptr %27, align 4, !tbaa !58
  %40 = fmul float %34, 5.000000e-01
  store float %40, ptr %32, align 4, !tbaa !58
  %41 = fmul float %38, 5.000000e-01
  store float %41, ptr %36, align 4, !tbaa !58
  store float %39, ptr %18, align 4, !tbaa !58
  %42 = load float, ptr %32, align 4, !tbaa !58
  store float %42, ptr %20, align 4, !tbaa !58
  %43 = load float, ptr %36, align 4, !tbaa !58
  store float %43, ptr %23, align 4, !tbaa !58
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %18, ptr noundef nonnull %26, ptr noundef nonnull %6) #12
  %44 = getelementptr inbounds %struct.ReebArc, ptr %3, i64 0, i32 10
  %45 = load i32, ptr %44, align 8, !tbaa !61
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %154

47:                                               ; preds = %5
  %48 = getelementptr inbounds %struct.ReebArc, ptr %4, i64 0, i32 10
  %49 = load i32, ptr %48, align 8, !tbaa !61
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %154

51:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #12
  store ptr @headNode, ptr %8, align 8, !tbaa !62
  %52 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 1
  store ptr @tailNode, ptr %52, align 8, !tbaa !64
  %53 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 2
  store ptr @peekBucket, ptr %53, align 8, !tbaa !65
  %54 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 3
  store ptr @nextBucket, ptr %54, align 8, !tbaa !66
  %55 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 4
  store ptr @nextNBucket, ptr %55, align 8, !tbaa !67
  %56 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 5
  store ptr @previousBucket, ptr %56, align 8, !tbaa !68
  %57 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 6
  store ptr @iteratorStopped, ptr %57, align 8, !tbaa !69
  %58 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 12
  store ptr %3, ptr %58, align 8, !tbaa !70
  %59 = getelementptr inbounds %struct.ReebArc, ptr %3, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !71
  %61 = icmp eq ptr %60, %0
  %62 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 14
  %63 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 15
  br i1 %61, label %64, label %67

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 13
  store i32 0, ptr %65, align 8, !tbaa !72
  %66 = add nsw i32 %45, -1
  br label %70

67:                                               ; preds = %51
  %68 = add nsw i32 %45, -1
  %69 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 13
  store i32 %68, ptr %69, align 8, !tbaa !72
  br label %70

70:                                               ; preds = %64, %67
  %71 = phi i32 [ %66, %64 ], [ 0, %67 ]
  %72 = phi i32 [ 1, %64 ], [ -1, %67 ]
  store i32 %71, ptr %62, align 4, !tbaa !73
  store i32 %72, ptr %63, align 8, !tbaa !74
  %73 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 10
  store i32 %45, ptr %73, align 4, !tbaa !75
  %74 = getelementptr inbounds %struct.ReebArcIterator, ptr %8, i64 0, i32 11
  store i32 -1, ptr %74, align 8, !tbaa !76
  store ptr @headNode, ptr %9, align 8, !tbaa !62
  %75 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 1
  store ptr @tailNode, ptr %75, align 8, !tbaa !64
  %76 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 2
  store ptr @peekBucket, ptr %76, align 8, !tbaa !65
  %77 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 3
  store ptr @nextBucket, ptr %77, align 8, !tbaa !66
  %78 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 4
  store ptr @nextNBucket, ptr %78, align 8, !tbaa !67
  %79 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 5
  store ptr @previousBucket, ptr %79, align 8, !tbaa !68
  %80 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 6
  store ptr @iteratorStopped, ptr %80, align 8, !tbaa !69
  %81 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 12
  store ptr %4, ptr %81, align 8, !tbaa !70
  %82 = getelementptr inbounds %struct.ReebArc, ptr %4, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !71
  %84 = icmp eq ptr %83, %0
  br i1 %84, label %85, label %88

85:                                               ; preds = %70
  %86 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 13
  store i32 0, ptr %86, align 8, !tbaa !72
  %87 = add nsw i32 %49, -1
  br label %91

88:                                               ; preds = %70
  %89 = add nsw i32 %49, -1
  %90 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 13
  store i32 %89, ptr %90, align 8, !tbaa !72
  br label %91

91:                                               ; preds = %85, %88
  %92 = phi i32 [ %87, %85 ], [ 0, %88 ]
  %93 = phi i32 [ 1, %85 ], [ -1, %88 ]
  %94 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 14
  store i32 %92, ptr %94, align 4, !tbaa !73
  %95 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 15
  store i32 %93, ptr %95, align 8, !tbaa !74
  %96 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 10
  store i32 %49, ptr %96, align 4, !tbaa !75
  %97 = getelementptr inbounds %struct.ReebArcIterator, ptr %9, i64 0, i32 11
  store i32 -1, ptr %97, align 8, !tbaa !76
  %98 = call ptr @IT_next(ptr noundef nonnull %8) #12
  %99 = call ptr @IT_next(ptr noundef nonnull %9) #12
  %100 = icmp eq ptr %98, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %91, %106
  %102 = phi ptr [ %107, %106 ], [ %98, %91 ]
  %103 = load float, ptr %102, align 4, !tbaa !77
  %104 = load float, ptr %99, align 4, !tbaa !77
  %105 = fcmp olt float %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = call ptr @IT_next(ptr noundef nonnull %8) #12
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %101, !llvm.loop !88

109:                                              ; preds = %101, %106, %91
  %110 = phi ptr [ %98, %91 ], [ %102, %101 ], [ %107, %106 ]
  %111 = icmp eq ptr %99, null
  br i1 %111, label %120, label %112

112:                                              ; preds = %109, %117
  %113 = phi ptr [ %118, %117 ], [ %99, %109 ]
  %114 = load float, ptr %113, align 4, !tbaa !77
  %115 = load float, ptr %110, align 4, !tbaa !77
  %116 = fcmp olt float %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = call ptr @IT_next(ptr noundef nonnull %9) #12
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %112, !llvm.loop !89

120:                                              ; preds = %112, %117, %109
  %121 = phi ptr [ %99, %109 ], [ %113, %112 ], [ %118, %117 ]
  %122 = icmp ne ptr %110, null
  %123 = icmp ne ptr %121, null
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %125, label %153

125:                                              ; preds = %120, %125
  %126 = phi ptr [ %149, %125 ], [ %121, %120 ]
  %127 = phi ptr [ %148, %125 ], [ %110, %120 ]
  %128 = getelementptr inbounds %struct.EmbedBucket, ptr %126, i64 0, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !81
  %130 = getelementptr inbounds %struct.EmbedBucket, ptr %127, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !81
  %132 = add nsw i32 %131, %129
  store i32 %132, ptr %130, align 4, !tbaa !81
  %133 = getelementptr inbounds %struct.EmbedBucket, ptr %126, i64 0, i32 2
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %133, ptr noundef nonnull %26, ptr noundef nonnull %6) #12
  %134 = getelementptr inbounds %struct.EmbedBucket, ptr %127, i64 0, i32 2
  %135 = load i32, ptr %128, align 4, !tbaa !81
  %136 = sitofp i32 %135 to float
  %137 = load i32, ptr %130, align 4, !tbaa !81
  %138 = sitofp i32 %137 to float
  %139 = fdiv float %136, %138
  call void @interp_v3_v3v3(ptr noundef nonnull %134, ptr noundef nonnull %134, ptr noundef nonnull %133, float noundef %139) #12
  %140 = load i32, ptr %130, align 4, !tbaa !81
  store i32 %140, ptr %128, align 4, !tbaa !81
  %141 = load float, ptr %134, align 4, !tbaa !58
  store float %141, ptr %133, align 4, !tbaa !58
  %142 = getelementptr inbounds %struct.EmbedBucket, ptr %127, i64 0, i32 2, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !58
  %144 = getelementptr inbounds %struct.EmbedBucket, ptr %126, i64 0, i32 2, i64 1
  store float %143, ptr %144, align 4, !tbaa !58
  %145 = getelementptr inbounds %struct.EmbedBucket, ptr %127, i64 0, i32 2, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !58
  %147 = getelementptr inbounds %struct.EmbedBucket, ptr %126, i64 0, i32 2, i64 2
  store float %146, ptr %147, align 4, !tbaa !58
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %133, ptr noundef nonnull %26, ptr noundef nonnull %6) #12
  %148 = call ptr @IT_next(ptr noundef nonnull %8) #12
  %149 = call ptr @IT_next(ptr noundef nonnull %9) #12
  %150 = icmp ne ptr %148, null
  %151 = icmp ne ptr %149, null
  %152 = select i1 %150, i1 %151, i1 false
  br i1 %152, label %125, label %153, !llvm.loop !90

153:                                              ; preds = %125, %120
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %8) #12
  br label %154

154:                                              ; preds = %153, %47, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BIF_flagMultiArcs(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %2 ]
  tail call void @BLI_flagArcs(ptr noundef nonnull %5, i32 noundef %1) #12
  %6 = getelementptr inbounds %struct.ReebGraph, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !91

9:                                                ; preds = %4, %2
  ret void
}

declare void @BLI_flagArcs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BIF_otherNodeFromIndex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.ReebNode, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !92
  %7 = getelementptr inbounds %struct.ReebNode, ptr %1, i64 0, i32 11
  %8 = load i32, ptr %7, align 4, !tbaa !92
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  br label %13

13:                                               ; preds = %2, %10
  %14 = phi ptr [ %12, %10 ], [ %4, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BIF_NodeFromIndex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.ReebNode, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !92
  %7 = getelementptr inbounds %struct.ReebNode, ptr %1, i64 0, i32 11
  %8 = load i32, ptr %7, align 4, !tbaa !92
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  br label %13

13:                                               ; preds = %2, %10
  %14 = phi ptr [ %12, %10 ], [ %4, %2 ]
  ret ptr %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BIF_lowestLevelNode(ptr noundef readonly %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.ReebNode, ptr %3, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !96

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BIF_graphForMultiNode(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ReebNode, ptr %1, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !97
  br label %7

7:                                                ; preds = %4, %12
  %8 = phi ptr [ %0, %4 ], [ %14, %12 ]
  %9 = getelementptr inbounds %struct.ReebGraph, ptr %8, i64 0, i32 10
  %10 = load i32, ptr %9, align 8, !tbaa !98
  %11 = icmp eq i32 %10, %6
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ReebGraph, ptr %8, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !99

16:                                               ; preds = %7, %12, %2
  %17 = phi ptr [ %0, %2 ], [ %8, %7 ], [ %14, %12 ]
  ret ptr %17
}

declare ptr @BLI_otherNode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_mirrorAlongAxis(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @initArcIterator(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #5 {
  store ptr @headNode, ptr %0, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 1
  store ptr @tailNode, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 2
  store ptr @peekBucket, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 3
  store ptr @nextBucket, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 4
  store ptr @nextNBucket, ptr %7, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 5
  store ptr @previousBucket, ptr %8, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 6
  store ptr @iteratorStopped, ptr %9, align 8, !tbaa !69
  %10 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  store ptr %1, ptr %10, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  store i32 0, ptr %15, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !61
  %18 = add nsw i32 %17, -1
  br label %24

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 10
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = add nsw i32 %21, -1
  %23 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  store i32 %22, ptr %23, align 8, !tbaa !72
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i32 [ 0, %19 ], [ %18, %14 ]
  %26 = phi i32 [ -1, %19 ], [ 1, %14 ]
  %27 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 15
  %28 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 14
  store i32 %25, ptr %28, align 4, !tbaa !73
  store i32 %26, ptr %27, align 8, !tbaa !74
  %29 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 10
  %30 = load i32, ptr %29, align 8, !tbaa !61
  %31 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 10
  store i32 %30, ptr %31, align 4, !tbaa !75
  %32 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  store i32 -1, ptr %32, align 8, !tbaa !76
  ret void
}

declare ptr @IT_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @initArcIteratorStart(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3) local_unnamed_addr #5 {
  store ptr @headNode, ptr %0, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 1
  store ptr @tailNode, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 2
  store ptr @peekBucket, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 3
  store ptr @nextBucket, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 4
  store ptr @nextNBucket, ptr %8, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 5
  store ptr @previousBucket, ptr %9, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 6
  store ptr @iteratorStopped, ptr %10, align 8, !tbaa !69
  %11 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  store ptr %1, ptr %11, align 8, !tbaa !70
  %12 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  store i32 %3, ptr %16, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !61
  %19 = add nsw i32 %18, -1
  br label %26

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !61
  %23 = xor i32 %3, -1
  %24 = add i32 %22, %23
  %25 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  store i32 %24, ptr %25, align 8, !tbaa !72
  br label %26

26:                                               ; preds = %20, %15
  %27 = phi i32 [ 0, %20 ], [ %19, %15 ]
  %28 = phi i32 [ -1, %20 ], [ 1, %15 ]
  %29 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 14
  store i32 %27, ptr %29, align 4, !tbaa !73
  %30 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 15
  store i32 %28, ptr %30, align 8, !tbaa !74
  %31 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  store i32 -1, ptr %31, align 8, !tbaa !76
  %32 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 10
  %33 = load i32, ptr %32, align 8, !tbaa !61
  %34 = sub nsw i32 %33, %3
  %35 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 10
  store i32 %34, ptr %35, align 4, !tbaa !75
  %36 = icmp sgt i32 %33, %3
  br i1 %36, label %41, label %37

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 14
  %39 = load i32, ptr %38, align 4, !tbaa !73
  %40 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  store i32 %39, ptr %40, align 8, !tbaa !72
  br label %41

41:                                               ; preds = %37, %26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @initArcIterator2(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  store ptr @headNode, ptr %0, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 1
  store ptr @tailNode, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 2
  store ptr @peekBucket, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 3
  store ptr @nextBucket, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 4
  store ptr @nextNBucket, ptr %8, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 5
  store ptr @previousBucket, ptr %9, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 6
  store ptr @iteratorStopped, ptr %10, align 8, !tbaa !69
  %11 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  store ptr %1, ptr %11, align 8, !tbaa !70
  %12 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  store i32 %2, ptr %12, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 14
  store i32 %3, ptr %13, align 4, !tbaa !73
  %14 = icmp sgt i32 %3, %2
  %15 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 15
  %16 = select i1 %14, i32 1, i32 -1
  store i32 %16, ptr %15, align 8, !tbaa !74
  %17 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  store i32 -1, ptr %17, align 8, !tbaa !76
  %18 = sub nsw i32 %3, %2
  %19 = tail call i32 @llvm.abs.i32(i32 %18, i1 true)
  %20 = add nuw nsw i32 %19, 1
  %21 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 10
  store i32 %20, ptr %21, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @BIF_ReebGraphMultiFromEditMesh(ptr nocapture noundef readnone %0) local_unnamed_addr #8 {
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @headNode(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 4, !tbaa !73
  %6 = icmp slt i32 %3, %5
  %7 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.ReebArc, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.ReebArc, ptr %8, i64 0, i32 3
  %11 = select i1 %6, ptr %9, ptr %10
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.ReebNode, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 7
  store ptr %13, ptr %14, align 8, !tbaa !100
  %15 = getelementptr inbounds %struct.ReebNode, ptr %12, i64 0, i32 10
  %16 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 8
  store ptr %15, ptr %16, align 8, !tbaa !101
  %17 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 9
  store float 0.000000e+00, ptr %17, align 8, !tbaa !102
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @tailNode(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 4, !tbaa !73
  %6 = icmp slt i32 %3, %5
  %7 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.ReebArc, ptr %8, i64 0, i32 3
  %10 = getelementptr inbounds %struct.ReebArc, ptr %8, i64 0, i32 2
  %11 = select i1 %6, ptr %9, ptr %10
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.ReebNode, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 7
  store ptr %13, ptr %14, align 8, !tbaa !100
  %15 = getelementptr inbounds %struct.ReebNode, ptr %12, i64 0, i32 10
  %16 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 8
  store ptr %15, ptr %16, align 8, !tbaa !101
  %17 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 9
  store float 0.000000e+00, ptr %17, align 8, !tbaa !102
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @peekBucket(ptr nocapture noundef %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = add nsw i32 %4, %1
  %6 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !75
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = getelementptr inbounds %struct.ReebArc, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 15
  %17 = load i32, ptr %16, align 8, !tbaa !74
  %18 = mul nsw i32 %17, %5
  %19 = add nsw i32 %18, %15
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.EmbedBucket, ptr %13, i64 %20
  br label %22

22:                                               ; preds = %9, %2
  %23 = phi ptr [ %21, %9 ], [ null, %2 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.EmbedBucket, ptr %23, i64 0, i32 2
  %27 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 7
  store ptr %26, ptr %27, align 8, !tbaa !100
  %28 = getelementptr inbounds %struct.EmbedBucket, ptr %23, i64 0, i32 3
  %29 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 8
  store ptr %28, ptr %29, align 8, !tbaa !101
  br label %32

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  br label %32

32:                                               ; preds = %25, %30
  %33 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 9
  store float 0.000000e+00, ptr %33, align 8, !tbaa !102
  ret ptr %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @nextBucket(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !76
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 4, !tbaa !75
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct.ReebArc, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !72
  %15 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !74
  %17 = mul nsw i32 %16, %4
  %18 = add nsw i32 %17, %14
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.EmbedBucket, ptr %12, i64 %19
  br label %21

21:                                               ; preds = %8, %1
  %22 = phi ptr [ %20, %8 ], [ null, %1 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.EmbedBucket, ptr %22, i64 0, i32 2
  %26 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 7
  store ptr %25, ptr %26, align 8, !tbaa !100
  %27 = getelementptr inbounds %struct.EmbedBucket, ptr %22, i64 0, i32 3
  %28 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 8
  store ptr %27, ptr %28, align 8, !tbaa !101
  br label %31

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  br label %31

31:                                               ; preds = %24, %29
  %32 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 9
  store float 0.000000e+00, ptr %32, align 8, !tbaa !102
  ret ptr %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @nextNBucket(ptr nocapture noundef %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = add nsw i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !75
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = getelementptr inbounds %struct.ReebArc, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 15
  %17 = load i32, ptr %16, align 8, !tbaa !74
  %18 = mul nsw i32 %17, %5
  %19 = add nsw i32 %18, %15
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.EmbedBucket, ptr %13, i64 %20
  br label %22

22:                                               ; preds = %9, %2
  %23 = phi ptr [ %21, %9 ], [ null, %2 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.EmbedBucket, ptr %23, i64 0, i32 2
  %27 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 7
  store ptr %26, ptr %27, align 8, !tbaa !100
  %28 = getelementptr inbounds %struct.EmbedBucket, ptr %23, i64 0, i32 3
  %29 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 8
  store ptr %28, ptr %29, align 8, !tbaa !101
  br label %32

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  br label %32

32:                                               ; preds = %25, %30
  %33 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 9
  store float 0.000000e+00, ptr %33, align 8, !tbaa !102
  ret ptr %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @previousBucket(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !76
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = add nsw i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.ReebArc, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !74
  %15 = mul nsw i32 %14, %6
  %16 = add nsw i32 %15, %12
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.EmbedBucket, ptr %10, i64 %17
  br label %19

19:                                               ; preds = %5, %1
  %20 = phi ptr [ %18, %5 ], [ null, %1 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.EmbedBucket, ptr %20, i64 0, i32 2
  %24 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 7
  store ptr %23, ptr %24, align 8, !tbaa !100
  %25 = getelementptr inbounds %struct.EmbedBucket, ptr %20, i64 0, i32 3
  %26 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 8
  store ptr %25, ptr %26, align 8, !tbaa !101
  br label %29

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  br label %29

29:                                               ; preds = %22, %27
  %30 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 9
  store float 0.000000e+00, ptr %30, align 8, !tbaa !102
  ret ptr %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @iteratorStopped(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !75
  %6 = icmp sge i32 %3, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 80}
!35 = !{!"ReebArc", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !40, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !41, i64 56, !39, i64 72, !36, i64 80, !36, i64 88, !40, i64 96, !36, i64 104}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!36, !36, i64 0}
!43 = !{!35, !36, i64 88}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!48, !36, i64 0}
!48 = !{!"ReebGraph", !41, i64 0, !41, i64 16, !40, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !39, i64 76, !36, i64 80, !39, i64 88, !36, i64 96}
!49 = !{!35, !36, i64 0}
!50 = distinct !{!50, !45, !46}
!51 = !{!48, !36, i64 80}
!52 = !{!48, !36, i64 96}
!53 = !{!48, !39, i64 76}
!54 = !{!48, !36, i64 40}
!55 = !{!48, !36, i64 48}
!56 = !{!48, !36, i64 56}
!57 = !{!48, !36, i64 64}
!58 = !{!40, !40, i64 0}
!59 = !{!60, !36, i64 0}
!60 = !{!"RadialArc", !36, i64 0, !37, i64 8}
!61 = !{!35, !39, i64 72}
!62 = !{!63, !36, i64 0}
!63 = !{!"ReebArcIterator", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !40, i64 72, !39, i64 76, !39, i64 80, !36, i64 88, !39, i64 96, !39, i64 100, !39, i64 104}
!64 = !{!63, !36, i64 8}
!65 = !{!63, !36, i64 16}
!66 = !{!63, !36, i64 24}
!67 = !{!63, !36, i64 32}
!68 = !{!63, !36, i64 40}
!69 = !{!63, !36, i64 48}
!70 = !{!63, !36, i64 88}
!71 = !{!35, !36, i64 16}
!72 = !{!63, !39, i64 96}
!73 = !{!63, !39, i64 100}
!74 = !{!63, !39, i64 104}
!75 = !{!63, !39, i64 76}
!76 = !{!63, !39, i64 80}
!77 = !{!78, !40, i64 0}
!78 = !{!"EmbedBucket", !40, i64 0, !39, i64 4, !37, i64 8, !37, i64 20}
!79 = distinct !{!79, !45, !46}
!80 = distinct !{!80, !45, !46}
!81 = !{!78, !39, i64 4}
!82 = distinct !{!82, !45, !46}
!83 = distinct !{!83, !45, !46}
!84 = distinct !{!84, !45, !46}
!85 = distinct !{!85, !45, !46}
!86 = distinct !{!86, !45, !46}
!87 = distinct !{!87, !45, !46}
!88 = distinct !{!88, !45, !46}
!89 = distinct !{!89, !45, !46}
!90 = distinct !{!90, !45, !46}
!91 = distinct !{!91, !45, !46}
!92 = !{!93, !39, i64 84}
!93 = !{!"ReebNode", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 28, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !37, i64 60, !37, i64 72, !39, i64 84, !40, i64 88, !39, i64 92, !36, i64 96, !36, i64 104}
!94 = !{!35, !36, i64 24}
!95 = !{!93, !36, i64 96}
!96 = distinct !{!96, !45, !46}
!97 = !{!93, !39, i64 92}
!98 = !{!48, !39, i64 88}
!99 = distinct !{!99, !45, !46}
!100 = !{!63, !36, i64 56}
!101 = !{!63, !36, i64 64}
!102 = !{!63, !40, i64 72}
