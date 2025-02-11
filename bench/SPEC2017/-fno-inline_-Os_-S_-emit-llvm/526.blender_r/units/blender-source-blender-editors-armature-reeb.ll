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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @REEB_freeArc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 9
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #12
  %3 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !13
  tail call void %7(ptr noundef nonnull %4) #12
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @BLI_ghash_free(ptr noundef nonnull %10, ptr noundef null, ptr noundef null) #12
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !13
  tail call void %14(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @REEB_freeGraph(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ReebGraph, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @BLI_freeNode(ptr noundef %0, ptr noundef nonnull %6) #12
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !15

9:                                                ; preds = %5, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #12
  %10 = load ptr, ptr %0, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %14, %12 ], [ %10, %9 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @REEB_freeArc(ptr noundef nonnull %13) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !llvm.loop !20

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.ReebGraph, ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  tail call void @BLI_edgehash_free(ptr noundef %18, ptr noundef null) #12
  %19 = getelementptr inbounds %struct.ReebGraph, ptr %0, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  tail call void @REEB_freeGraph(ptr noundef nonnull %20) #13
  br label %23

23:                                               ; preds = %22, %16
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !13
  tail call void %24(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare void @BLI_freeNode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @newReebGraph() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !13
  %2 = tail call ptr %1(i64 noundef 104, ptr noundef nonnull @.str) #12
  %3 = getelementptr inbounds %struct.ReebGraph, ptr %2, i64 0, i32 8
  store i32 0, ptr %3, align 4, !tbaa !23
  %4 = tail call ptr @BLI_edgehash_new(ptr noundef nonnull @__func__.newReebGraph) #12
  %5 = getelementptr inbounds %struct.ReebGraph, ptr %2, i64 0, i32 9
  store ptr %4, ptr %5, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.ReebGraph, ptr %2, i64 0, i32 3
  store ptr @REEB_freeArc, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.ReebGraph, ptr %2, i64 0, i32 4
  store ptr null, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.ReebGraph, ptr %2, i64 0, i32 5
  store ptr @REEB_RadialSymmetry, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.ReebGraph, ptr %2, i64 0, i32 6
  store ptr @REEB_AxialSymmetry, ptr %9, align 8, !tbaa !27
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BLI_edgehash_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @REEB_RadialSymmetry(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.ReebArcIterator, align 8
  %8 = alloca %struct.ReebArcIterator, align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.ReebArcIterator, align 8
  %12 = alloca %struct.ReebArcIterator, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %13 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %13) #13
  %14 = add i32 %2, -1
  %15 = icmp sgt i32 %2, 1
  br i1 %15, label %16, label %165

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 2
  %18 = zext nneg i32 %14 to i64
  br label %23

19:                                               ; preds = %101
  br i1 %15, label %20, label %165

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 2
  %22 = zext nneg i32 %14 to i64
  br label %103

23:                                               ; preds = %16, %101
  %24 = phi i64 [ 0, %16 ], [ %25, %101 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  %25 = add nuw nsw i64 %24, 1
  %26 = getelementptr inbounds %struct.RadialArc, ptr %1, i64 %24
  %27 = getelementptr inbounds %struct.RadialArc, ptr %1, i64 %24, i32 1
  %28 = getelementptr inbounds %struct.RadialArc, ptr %1, i64 %25
  %29 = getelementptr inbounds %struct.RadialArc, ptr %1, i64 %25, i32 1
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %27, ptr noundef nonnull %29) #13
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  %30 = load ptr, ptr %26, align 8, !tbaa !28
  %31 = call ptr @BLI_otherNode(ptr noundef %30, ptr noundef %0) #12
  %32 = load ptr, ptr %28, align 8, !tbaa !28
  %33 = call ptr @BLI_otherNode(ptr noundef %32, ptr noundef %0) #12
  %34 = load ptr, ptr %26, align 8, !tbaa !28
  %35 = load ptr, ptr %28, align 8, !tbaa !28
  %36 = getelementptr inbounds %struct.ReebNode, ptr %31, i64 0, i32 2
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %36, ptr noundef nonnull %17, ptr noundef nonnull %6) #12
  %37 = getelementptr inbounds %struct.ReebNode, ptr %33, i64 0, i32 2
  %38 = trunc i64 %24 to i32
  %39 = add i32 %38, 2
  %40 = sitofp i32 %39 to float
  %41 = fdiv float 1.000000e+00, %40
  call void @interp_v3_v3v3(ptr noundef nonnull %37, ptr noundef nonnull %37, ptr noundef nonnull %36, float noundef %41) #12
  %42 = getelementptr inbounds %struct.ReebArc, ptr %34, i64 0, i32 10
  %43 = load i32, ptr %42, align 8, !tbaa !30
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %101

45:                                               ; preds = %23
  %46 = getelementptr inbounds %struct.ReebArc, ptr %35, i64 0, i32 10
  %47 = load i32, ptr %46, align 8, !tbaa !30
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %101

49:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %8) #14
  call void @initArcIterator(ptr noundef nonnull %7, ptr noundef nonnull %34, ptr noundef %0) #13
  call void @initArcIterator(ptr noundef nonnull %8, ptr noundef nonnull %35, ptr noundef %0) #13
  %50 = call ptr @IT_next(ptr noundef nonnull %7) #12
  %51 = call ptr @IT_next(ptr noundef nonnull %8) #12
  %52 = icmp ne ptr %51, null
  %53 = icmp ne ptr %50, null
  %54 = select i1 %53, i1 %52, i1 false
  br i1 %54, label %55, label %63

55:                                               ; preds = %49, %60
  %56 = phi ptr [ %61, %60 ], [ %50, %49 ]
  %57 = load float, ptr %56, align 4, !tbaa !31
  %58 = load float, ptr %51, align 4, !tbaa !31
  %59 = fcmp uge float %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = call ptr @IT_next(ptr noundef nonnull %7) #12
  %62 = icmp eq ptr %61, null
  br i1 %62, label %100, label %55, !llvm.loop !33

63:                                               ; preds = %55, %49
  %64 = phi ptr [ %50, %49 ], [ %56, %55 ]
  %65 = phi i1 [ %53, %49 ], [ true, %55 ]
  %66 = select i1 %65, i1 %52, i1 false
  br i1 %66, label %67, label %75

67:                                               ; preds = %63, %72
  %68 = phi ptr [ %73, %72 ], [ %51, %63 ]
  %69 = load float, ptr %68, align 4, !tbaa !31
  %70 = load float, ptr %64, align 4, !tbaa !31
  %71 = fcmp olt float %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = call ptr @IT_next(ptr noundef nonnull %8) #12
  %74 = icmp eq ptr %73, null
  br i1 %74, label %100, label %67, !llvm.loop !34

75:                                               ; preds = %67, %63
  %76 = phi ptr [ %51, %63 ], [ %68, %67 ]
  %77 = icmp ne ptr %64, null
  %78 = icmp ne ptr %76, null
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %100

80:                                               ; preds = %75, %80
  %81 = phi ptr [ %95, %80 ], [ %64, %75 ]
  %82 = phi ptr [ %96, %80 ], [ %76, %75 ]
  %83 = getelementptr inbounds %struct.EmbedBucket, ptr %81, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !35
  %85 = getelementptr inbounds %struct.EmbedBucket, ptr %82, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !35
  %87 = add nsw i32 %86, %84
  store i32 %87, ptr %85, align 4, !tbaa !35
  %88 = getelementptr inbounds %struct.EmbedBucket, ptr %81, i64 0, i32 2
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %88, ptr noundef nonnull %17, ptr noundef nonnull %6) #12
  %89 = getelementptr inbounds %struct.EmbedBucket, ptr %82, i64 0, i32 2
  %90 = load i32, ptr %83, align 4, !tbaa !35
  %91 = sitofp i32 %90 to float
  %92 = load i32, ptr %85, align 4, !tbaa !35
  %93 = sitofp i32 %92 to float
  %94 = fdiv float %91, %93
  call void @interp_v3_v3v3(ptr noundef nonnull %89, ptr noundef nonnull %89, ptr noundef nonnull %88, float noundef %94) #12
  %95 = call ptr @IT_next(ptr noundef nonnull %7) #12
  %96 = call ptr @IT_next(ptr noundef nonnull %8) #12
  %97 = icmp ne ptr %95, null
  %98 = icmp ne ptr %96, null
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %80, label %100, !llvm.loop !36

100:                                              ; preds = %60, %72, %80, %75
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #14
  br label %101

101:                                              ; preds = %100, %45, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  %102 = icmp eq i64 %25, %18
  br i1 %102, label %19, label %23, !llvm.loop !37

103:                                              ; preds = %20, %162
  %104 = phi i64 [ %22, %20 ], [ %163, %162 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  %105 = getelementptr inbounds %struct.RadialArc, ptr %1, i64 %104
  %106 = getelementptr inbounds %struct.RadialArc, ptr %1, i64 %104, i32 1
  %107 = getelementptr %struct.RadialArc, ptr %105, i64 -1
  %108 = getelementptr %struct.RadialArc, ptr %105, i64 -1, i32 1
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %106, ptr noundef %108) #13
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  %109 = load ptr, ptr %105, align 8, !tbaa !28
  %110 = call ptr @BLI_otherNode(ptr noundef %109, ptr noundef %0) #12
  %111 = load ptr, ptr %107, align 8, !tbaa !28
  %112 = call ptr @BLI_otherNode(ptr noundef %111, ptr noundef %0) #12
  %113 = load ptr, ptr %105, align 8, !tbaa !28
  %114 = load ptr, ptr %107, align 8, !tbaa !28
  %115 = getelementptr inbounds %struct.ReebNode, ptr %112, i64 0, i32 2
  %116 = getelementptr inbounds %struct.ReebNode, ptr %110, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %115, ptr noundef nonnull %116) #13
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %115, ptr noundef nonnull %21, ptr noundef nonnull %10) #12
  %117 = getelementptr inbounds %struct.ReebArc, ptr %113, i64 0, i32 10
  %118 = load i32, ptr %117, align 8, !tbaa !30
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %162

120:                                              ; preds = %103
  %121 = getelementptr inbounds %struct.ReebArc, ptr %114, i64 0, i32 10
  %122 = load i32, ptr %121, align 8, !tbaa !30
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %162

124:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %12) #14
  call void @initArcIterator(ptr noundef nonnull %11, ptr noundef nonnull %113, ptr noundef %0) #13
  call void @initArcIterator(ptr noundef nonnull %12, ptr noundef nonnull %114, ptr noundef %0) #13
  %125 = call ptr @IT_next(ptr noundef nonnull %11) #12
  %126 = call ptr @IT_next(ptr noundef nonnull %12) #12
  %127 = icmp eq ptr %125, null
  br i1 %127, label %136, label %128

128:                                              ; preds = %124, %133
  %129 = phi ptr [ %134, %133 ], [ %125, %124 ]
  %130 = load float, ptr %129, align 4, !tbaa !31
  %131 = load float, ptr %126, align 4, !tbaa !31
  %132 = fcmp olt float %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = call ptr @IT_next(ptr noundef nonnull %11) #12
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %128, !llvm.loop !38

136:                                              ; preds = %124
  %137 = icmp eq ptr %126, null
  br i1 %137, label %161, label %138

138:                                              ; preds = %133, %128, %136
  %139 = phi ptr [ null, %136 ], [ %129, %128 ], [ null, %133 ]
  br label %140

140:                                              ; preds = %138, %145
  %141 = phi ptr [ %146, %145 ], [ %126, %138 ]
  %142 = load float, ptr %141, align 4, !tbaa !31
  %143 = load float, ptr %139, align 4, !tbaa !31
  %144 = fcmp olt float %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = call ptr @IT_next(ptr noundef nonnull %12) #12
  %147 = icmp eq ptr %146, null
  br i1 %147, label %161, label %140, !llvm.loop !39

148:                                              ; preds = %140, %148
  %149 = phi ptr [ %157, %148 ], [ %141, %140 ]
  %150 = phi ptr [ %156, %148 ], [ %139, %140 ]
  %151 = getelementptr inbounds %struct.EmbedBucket, ptr %150, i64 0, i32 1
  %152 = load i32, ptr %151, align 4, !tbaa !35
  %153 = getelementptr inbounds %struct.EmbedBucket, ptr %149, i64 0, i32 1
  store i32 %152, ptr %153, align 4, !tbaa !35
  %154 = getelementptr inbounds %struct.EmbedBucket, ptr %149, i64 0, i32 2
  %155 = getelementptr inbounds %struct.EmbedBucket, ptr %150, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %154, ptr noundef nonnull %155) #13
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %154, ptr noundef nonnull %21, ptr noundef nonnull %10) #12
  %156 = call ptr @IT_next(ptr noundef nonnull %11) #12
  %157 = call ptr @IT_next(ptr noundef nonnull %12) #12
  %158 = icmp ne ptr %156, null
  %159 = icmp ne ptr %157, null
  %160 = select i1 %158, i1 %159, i1 false
  br i1 %160, label %148, label %161, !llvm.loop !40

161:                                              ; preds = %145, %148, %136
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %11) #14
  br label %162

162:                                              ; preds = %161, %120, %103
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  %163 = add nsw i64 %104, -1
  %164 = icmp sgt i64 %104, 1
  br i1 %164, label %103, label %165, !llvm.loop !41

165:                                              ; preds = %162, %3, %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @REEB_AxialSymmetry(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.ReebArcIterator, align 8
  %9 = alloca %struct.ReebArcIterator, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %10 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %10) #13
  %11 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %11) #13
  %12 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 2
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %7, ptr noundef nonnull %12, ptr noundef nonnull %6) #12
  %13 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2
  call fastcc void @add_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %7) #13
  call fastcc void @mul_v3_fl(ptr noundef nonnull %13) #13
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %13) #13
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %6) #12
  %14 = getelementptr inbounds %struct.ReebArc, ptr %3, i64 0, i32 10
  %15 = load i32, ptr %14, align 8, !tbaa !30
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %67

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ReebArc, ptr %4, i64 0, i32 10
  %19 = load i32, ptr %18, align 8, !tbaa !30
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #14
  call void @initArcIterator(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %0) #13
  call void @initArcIterator(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef %0) #13
  %22 = call ptr @IT_next(ptr noundef nonnull %8) #12
  %23 = call ptr @IT_next(ptr noundef nonnull %9) #12
  %24 = icmp eq ptr %22, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %21, %30
  %26 = phi ptr [ %31, %30 ], [ %22, %21 ]
  %27 = load float, ptr %26, align 4, !tbaa !31
  %28 = load float, ptr %23, align 4, !tbaa !31
  %29 = fcmp olt float %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = call ptr @IT_next(ptr noundef nonnull %8) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %25, !llvm.loop !42

33:                                               ; preds = %21
  %34 = icmp eq ptr %23, null
  br i1 %34, label %66, label %35

35:                                               ; preds = %30, %25, %33
  %36 = phi ptr [ null, %33 ], [ %26, %25 ], [ null, %30 ]
  br label %37

37:                                               ; preds = %35, %42
  %38 = phi ptr [ %43, %42 ], [ %23, %35 ]
  %39 = load float, ptr %38, align 4, !tbaa !31
  %40 = load float, ptr %36, align 4, !tbaa !31
  %41 = fcmp olt float %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = call ptr @IT_next(ptr noundef nonnull %9) #12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %66, label %37, !llvm.loop !43

45:                                               ; preds = %37, %45
  %46 = phi ptr [ %62, %45 ], [ %38, %37 ]
  %47 = phi ptr [ %61, %45 ], [ %36, %37 ]
  %48 = getelementptr inbounds %struct.EmbedBucket, ptr %46, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !35
  %50 = getelementptr inbounds %struct.EmbedBucket, ptr %47, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !35
  %52 = add nsw i32 %51, %49
  store i32 %52, ptr %50, align 4, !tbaa !35
  %53 = getelementptr inbounds %struct.EmbedBucket, ptr %46, i64 0, i32 2
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %53, ptr noundef nonnull %12, ptr noundef nonnull %6) #12
  %54 = getelementptr inbounds %struct.EmbedBucket, ptr %47, i64 0, i32 2
  %55 = load i32, ptr %48, align 4, !tbaa !35
  %56 = sitofp i32 %55 to float
  %57 = load i32, ptr %50, align 4, !tbaa !35
  %58 = sitofp i32 %57 to float
  %59 = fdiv float %56, %58
  call void @interp_v3_v3v3(ptr noundef nonnull %54, ptr noundef nonnull %54, ptr noundef nonnull %53, float noundef %59) #12
  %60 = load i32, ptr %50, align 4, !tbaa !35
  store i32 %60, ptr %48, align 4, !tbaa !35
  call fastcc void @copy_v3_v3(ptr noundef nonnull %53, ptr noundef nonnull %54) #13
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %53, ptr noundef nonnull %12, ptr noundef nonnull %6) #12
  %61 = call ptr @IT_next(ptr noundef nonnull %8) #12
  %62 = call ptr @IT_next(ptr noundef nonnull %9) #12
  %63 = icmp ne ptr %61, null
  %64 = icmp ne ptr %62, null
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %45, label %66, !llvm.loop !44

66:                                               ; preds = %42, %45, %33
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %8) #14
  br label %67

67:                                               ; preds = %66, %17, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_flagMultiArcs(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %2 ]
  tail call void @BLI_flagArcs(ptr noundef nonnull %5, i32 noundef %1) #12
  %6 = getelementptr inbounds %struct.ReebGraph, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !45

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_flagArcs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BIF_otherNodeFromIndex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ReebNode, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !47
  %7 = getelementptr inbounds %struct.ReebNode, ptr %1, i64 0, i32 11
  %8 = load i32, ptr %7, align 4, !tbaa !47
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  br label %13

13:                                               ; preds = %2, %10
  %14 = phi ptr [ %12, %10 ], [ %4, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BIF_NodeFromIndex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ReebNode, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !47
  %7 = getelementptr inbounds %struct.ReebNode, ptr %1, i64 0, i32 11
  %8 = load i32, ptr %7, align 4, !tbaa !47
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  br label %13

13:                                               ; preds = %2, %10
  %14 = phi ptr [ %12, %10 ], [ %4, %2 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BIF_lowestLevelNode(ptr noundef readonly %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.ReebNode, ptr %3, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !51

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BIF_graphForMultiNode(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ReebNode, ptr %1, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !52
  br label %7

7:                                                ; preds = %4, %12
  %8 = phi ptr [ %0, %4 ], [ %14, %12 ]
  %9 = getelementptr inbounds %struct.ReebGraph, ptr %8, i64 0, i32 10
  %10 = load i32, ptr %9, align 8, !tbaa !53
  %11 = icmp eq i32 %10, %6
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ReebGraph, ptr %8, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !54

16:                                               ; preds = %7, %12, %2
  %17 = phi ptr [ null, %2 ], [ null, %12 ], [ %8, %7 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !55
  store float %3, ptr %0, align 4, !tbaa !55
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !55
  %5 = load float, ptr %2, align 4, !tbaa !55
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !55
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !55
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !55
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !55
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !55
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !55
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !55
  %15 = load float, ptr %8, align 4, !tbaa !55
  %16 = load float, ptr %2, align 4, !tbaa !55
  %17 = load float, ptr %1, align 4, !tbaa !55
  %18 = load float, ptr %6, align 4, !tbaa !55
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !55
  %23 = load float, ptr %1, align 4, !tbaa !55
  %24 = load float, ptr %10, align 4, !tbaa !55
  %25 = load float, ptr %4, align 4, !tbaa !55
  %26 = load float, ptr %2, align 4, !tbaa !55
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_otherNode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_mirrorAlongAxis(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @initArcIterator(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #5 {
  tail call fastcc void @initIteratorFct(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  store ptr %1, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, %2
  %8 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !30
  %10 = add nsw i32 %9, -1
  %11 = select i1 %7, i32 0, i32 %10
  %12 = select i1 %7, i32 %10, i32 0
  %13 = select i1 %7, i32 1, i32 -1
  %14 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  store i32 %11, ptr %14, align 8
  %15 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 14
  store i32 %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 15
  store i32 %13, ptr %16, align 8
  %17 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !30
  %19 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 10
  store i32 %18, ptr %19, align 4, !tbaa !58
  %20 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  store i32 -1, ptr %20, align 8, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare ptr @IT_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !55
  %4 = load float, ptr %0, align 4, !tbaa !55
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !55
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !55
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !55
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !55
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !55
  %3 = fmul <2 x float> %2, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %3, ptr %0, align 4, !tbaa !55
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !55
  %6 = fmul float %5, 5.000000e-01
  store float %6, ptr %4, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @initIteratorFct(ptr nocapture noundef writeonly %0) unnamed_addr #6 {
  store ptr @headNode, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 1
  store ptr @tailNode, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 2
  store ptr @peekBucket, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 3
  store ptr @nextBucket, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 4
  store ptr @nextNBucket, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 5
  store ptr @previousBucket, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 6
  store ptr @iteratorStopped, ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @initArcIteratorStart(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3) local_unnamed_addr #5 {
  tail call fastcc void @initIteratorFct(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  store ptr %1, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, %2
  %9 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 10
  %10 = load i32, ptr %9, align 8, !tbaa !30
  %11 = add nsw i32 %10, -1
  %12 = xor i32 %3, -1
  %13 = add i32 %10, %12
  %14 = select i1 %8, i32 %3, i32 %13
  %15 = select i1 %8, i32 %11, i32 0
  %16 = select i1 %8, i32 1, i32 -1
  %17 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  store i32 %14, ptr %17, align 8
  %18 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 14
  store i32 %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 15
  store i32 %16, ptr %19, align 8
  %20 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  store i32 -1, ptr %20, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !30
  %23 = sub nsw i32 %22, %3
  %24 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 10
  store i32 %23, ptr %24, align 4, !tbaa !58
  %25 = icmp sgt i32 %22, %3
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 %15, ptr %17, align 8, !tbaa !67
  br label %27

27:                                               ; preds = %26, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @initArcIterator2(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  tail call fastcc void @initIteratorFct(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  store ptr %1, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  store i32 %2, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 14
  store i32 %3, ptr %7, align 4, !tbaa !68
  %8 = icmp sgt i32 %3, %2
  %9 = select i1 %8, i32 1, i32 -1
  %10 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 15
  store i32 %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  store i32 -1, ptr %11, align 8, !tbaa !59
  %12 = sub nsw i32 %3, %2
  %13 = tail call i32 @llvm.abs.i32(i32 %12, i1 true)
  %14 = add nuw nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 10
  store i32 %14, ptr %15, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @BIF_ReebGraphMultiFromEditMesh(ptr nocapture noundef readnone %0) local_unnamed_addr #8 {
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @headNode(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = icmp slt i32 %3, %5
  %7 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.ReebArc, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.ReebArc, ptr %8, i64 0, i32 3
  %11 = select i1 %6, ptr %9, ptr %10
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.ReebNode, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 7
  store ptr %13, ptr %14, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.ReebNode, ptr %12, i64 0, i32 10
  %16 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 8
  store ptr %15, ptr %16, align 8, !tbaa !70
  %17 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 9
  store float 0.000000e+00, ptr %17, align 8, !tbaa !71
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @tailNode(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = icmp slt i32 %3, %5
  %7 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.ReebArc, ptr %8, i64 0, i32 3
  %10 = getelementptr inbounds %struct.ReebArc, ptr %8, i64 0, i32 2
  %11 = select i1 %6, ptr %9, ptr %10
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.ReebNode, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 7
  store ptr %13, ptr %14, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.ReebNode, ptr %12, i64 0, i32 10
  %16 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 8
  store ptr %15, ptr %16, align 8, !tbaa !70
  %17 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 9
  store float 0.000000e+00, ptr %17, align 8, !tbaa !71
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @peekBucket(ptr nocapture noundef %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = add nsw i32 %4, %1
  %6 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !58
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.ReebArc, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 15
  %17 = load i32, ptr %16, align 8, !tbaa !72
  %18 = mul nsw i32 %17, %5
  %19 = add nsw i32 %18, %15
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.EmbedBucket, ptr %13, i64 %20
  br label %22

22:                                               ; preds = %9, %2
  %23 = phi ptr [ %21, %9 ], [ null, %2 ]
  tail call fastcc void @setIteratorValues(ptr noundef nonnull %0, ptr noundef %23) #13
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @nextBucket(ptr nocapture noundef %0) #10 {
  %2 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 4, !tbaa !58
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.ReebArc, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !67
  %15 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !72
  %17 = mul nsw i32 %16, %4
  %18 = add nsw i32 %17, %14
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.EmbedBucket, ptr %12, i64 %19
  br label %21

21:                                               ; preds = %8, %1
  %22 = phi ptr [ %20, %8 ], [ null, %1 ]
  tail call fastcc void @setIteratorValues(ptr noundef nonnull %0, ptr noundef %22) #13
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @nextNBucket(ptr nocapture noundef %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = add nsw i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !58
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.ReebArc, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 15
  %17 = load i32, ptr %16, align 8, !tbaa !72
  %18 = mul nsw i32 %17, %5
  %19 = add nsw i32 %18, %15
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.EmbedBucket, ptr %13, i64 %20
  br label %22

22:                                               ; preds = %9, %2
  %23 = phi ptr [ %21, %9 ], [ null, %2 ]
  tail call fastcc void @setIteratorValues(ptr noundef nonnull %0, ptr noundef %23) #13
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @previousBucket(ptr nocapture noundef %0) #10 {
  %2 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = add nsw i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.ReebArc, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !72
  %15 = mul nsw i32 %14, %6
  %16 = add nsw i32 %15, %12
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.EmbedBucket, ptr %10, i64 %17
  br label %19

19:                                               ; preds = %5, %1
  %20 = phi ptr [ %18, %5 ], [ null, %1 ]
  tail call fastcc void @setIteratorValues(ptr noundef nonnull %0, ptr noundef %20) #13
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @iteratorStopped(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !58
  %6 = icmp sge i32 %3, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @setIteratorValues(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #6 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %struct.EmbedBucket, ptr %1, i64 0, i32 2
  %5 = getelementptr inbounds %struct.EmbedBucket, ptr %1, i64 0, i32 3
  %6 = select i1 %3, ptr null, ptr %4
  %7 = select i1 %3, ptr null, ptr %5
  %8 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 7
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 8
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds %struct.ReebArcIterator, ptr %0, i64 0, i32 9
  store float 0.000000e+00, ptr %10, align 8, !tbaa !71
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 80}
!6 = !{!"ReebArc", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !11, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !12, i64 56, !10, i64 72, !7, i64 80, !7, i64 88, !11, i64 96, !7, i64 104}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"float", !8, i64 0}
!12 = !{!"ListBase", !7, i64 0, !7, i64 8}
!13 = !{!7, !7, i64 0}
!14 = !{!6, !7, i64 88}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !7, i64 0}
!18 = !{!"ReebGraph", !12, i64 0, !12, i64 16, !11, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !10, i64 72, !10, i64 76, !7, i64 80, !10, i64 88, !7, i64 96}
!19 = !{!6, !7, i64 0}
!20 = distinct !{!20, !16}
!21 = !{!18, !7, i64 80}
!22 = !{!18, !7, i64 96}
!23 = !{!18, !10, i64 76}
!24 = !{!18, !7, i64 40}
!25 = !{!18, !7, i64 48}
!26 = !{!18, !7, i64 56}
!27 = !{!18, !7, i64 64}
!28 = !{!29, !7, i64 0}
!29 = !{!"RadialArc", !7, i64 0, !8, i64 8}
!30 = !{!6, !10, i64 72}
!31 = !{!32, !11, i64 0}
!32 = !{!"EmbedBucket", !11, i64 0, !10, i64 4, !8, i64 8, !8, i64 20}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = !{!32, !10, i64 4}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = !{!6, !7, i64 16}
!47 = !{!48, !10, i64 84}
!48 = !{!"ReebNode", !7, i64 0, !7, i64 8, !8, i64 16, !10, i64 28, !10, i64 32, !7, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !8, i64 60, !8, i64 72, !10, i64 84, !11, i64 88, !10, i64 92, !7, i64 96, !7, i64 104}
!49 = !{!6, !7, i64 24}
!50 = !{!48, !7, i64 96}
!51 = distinct !{!51, !16}
!52 = !{!48, !10, i64 92}
!53 = !{!18, !10, i64 88}
!54 = distinct !{!54, !16}
!55 = !{!11, !11, i64 0}
!56 = !{!57, !7, i64 88}
!57 = !{!"ReebArcIterator", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !11, i64 72, !10, i64 76, !10, i64 80, !7, i64 88, !10, i64 96, !10, i64 100, !10, i64 104}
!58 = !{!57, !10, i64 76}
!59 = !{!57, !10, i64 80}
!60 = !{!57, !7, i64 0}
!61 = !{!57, !7, i64 8}
!62 = !{!57, !7, i64 16}
!63 = !{!57, !7, i64 24}
!64 = !{!57, !7, i64 32}
!65 = !{!57, !7, i64 40}
!66 = !{!57, !7, i64 48}
!67 = !{!57, !10, i64 96}
!68 = !{!57, !10, i64 100}
!69 = !{!57, !7, i64 56}
!70 = !{!57, !7, i64 64}
!71 = !{!57, !11, i64 72}
!72 = !{!57, !10, i64 104}
