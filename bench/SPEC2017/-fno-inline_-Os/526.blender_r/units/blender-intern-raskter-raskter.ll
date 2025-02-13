; ModuleID = 'blender/intern/raskter/raskter.c'
source_filename = "blender/intern/raskter/raskter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.r_FillContext = type { ptr, ptr, %struct.r_BufferStats }
%struct.r_BufferStats = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.PolyVert = type { i32, i32 }
%struct.e_Status = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PLX_raskterize(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.r_FillContext, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %7 = insertelement <2 x i32> poison, i32 %3, i64 0
  %8 = insertelement <2 x i32> %7, i32 %4, i64 1
  %9 = sitofp <2 x i32> %8 to <2 x float>
  %10 = sext i32 %1 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.r_FillContext, ptr %6, i64 0, i32 2
  store ptr %2, ptr %15, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.r_FillContext, ptr %6, i64 0, i32 2, i32 1
  store i32 %3, ptr %16, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct.r_FillContext, ptr %6, i64 0, i32 2, i32 2
  store i32 %4, ptr %17, align 4, !tbaa !42
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = zext nneg i32 %1 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %28, %21 ]
  %23 = getelementptr inbounds [2 x float], ptr %0, i64 %22
  %24 = getelementptr inbounds %struct.PolyVert, ptr %12, i64 %22
  %25 = load <2 x float>, ptr %23, align 4, !tbaa !43
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %9, <2 x float> <float 5.000000e-01, float 5.000000e-01>)
  %27 = fptosi <2 x float> %26 to <2 x i32>
  store <2 x i32> %27, ptr %24, align 4, !tbaa !45
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !46

30:                                               ; preds = %21, %14
  %31 = call fastcc i32 @rast_scan_fill(ptr noundef nonnull %6, ptr noundef nonnull %12, i32 noundef %1) #9
  tail call void @free(ptr noundef nonnull %12) #10
  br label %32

32:                                               ; preds = %5, %30
  %33 = phi i32 [ %31, %30 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #7
  ret i32 %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @rast_scan_fill(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !48 {
  %4 = icmp slt i32 %2, 3
  br i1 %4, label %206, label %5

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  %7 = mul nuw nsw i64 %6, 40
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %206, label %10

10:                                               ; preds = %5
  tail call fastcc void @preprocess_all_edges(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %8) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @free(ptr noundef nonnull %8) #10
  br label %206

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.r_FillContext, ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.e_Status, ptr %11, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !51
  %18 = getelementptr inbounds %struct.r_FillContext, ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %struct.r_FillContext, ptr %0, i64 0, i32 2, i32 1
  %20 = getelementptr inbounds %struct.r_FillContext, ptr %0, i64 0, i32 2, i32 2
  br label %21

21:                                               ; preds = %202, %14
  %22 = phi ptr [ %11, %14 ], [ %204, %202 ]
  %23 = phi i32 [ %17, %14 ], [ %203, %202 ]
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load ptr, ptr %15, align 8, !tbaa !53
  %27 = icmp eq ptr %26, null
  br i1 %27, label %205, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %19, align 8, !tbaa !41
  %30 = mul nsw i32 %29, %23
  %31 = load ptr, ptr %18, align 8, !tbaa !34
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds float, ptr %31, i64 %32
  br label %74

34:                                               ; preds = %21, %53
  %35 = phi ptr [ %59, %53 ], [ %15, %21 ]
  %36 = phi ptr [ %57, %53 ], [ %22, %21 ]
  %37 = getelementptr inbounds %struct.e_Status, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !51
  %39 = icmp eq i32 %38, %23
  br i1 %39, label %40, label %66

40:                                               ; preds = %34
  %41 = load i32, ptr %36, align 8, !tbaa !54
  %42 = load ptr, ptr %35, align 8, !tbaa !53
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %42, align 8, !tbaa !54
  %46 = icmp slt i32 %45, %41
  br i1 %46, label %61, label %53

47:                                               ; preds = %61
  %48 = load i32, ptr %64, align 8, !tbaa !54
  %49 = icmp slt i32 %48, %41
  br i1 %49, label %61, label %50

50:                                               ; preds = %61, %47
  %51 = phi ptr [ null, %61 ], [ %64, %47 ]
  %52 = getelementptr inbounds %struct.e_Status, ptr %62, i64 0, i32 8
  br label %53

53:                                               ; preds = %50, %44, %40
  %54 = phi ptr [ %35, %40 ], [ %35, %44 ], [ %52, %50 ]
  %55 = phi ptr [ null, %40 ], [ %42, %44 ], [ %51, %50 ]
  %56 = getelementptr inbounds %struct.e_Status, ptr %36, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !55
  store ptr %36, ptr %54, align 8, !tbaa !53
  %58 = load ptr, ptr %0, align 8, !tbaa !49
  %59 = getelementptr inbounds %struct.e_Status, ptr %58, i64 0, i32 8
  store ptr %55, ptr %59, align 8, !tbaa !55
  store ptr %57, ptr %0, align 8, !tbaa !49
  %60 = icmp eq ptr %57, null
  br i1 %60, label %66, label %34, !llvm.loop !56

61:                                               ; preds = %44, %47
  %62 = phi ptr [ %64, %47 ], [ %42, %44 ]
  %63 = getelementptr inbounds %struct.e_Status, ptr %62, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !53
  %65 = icmp eq ptr %64, null
  br i1 %65, label %50, label %47

66:                                               ; preds = %34, %53
  %67 = load ptr, ptr %15, align 8, !tbaa !53
  %68 = load i32, ptr %19, align 8, !tbaa !41
  %69 = mul nsw i32 %68, %23
  %70 = load ptr, ptr %18, align 8, !tbaa !34
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds float, ptr %70, i64 %71
  %73 = icmp eq ptr %67, null
  br i1 %73, label %202, label %74

74:                                               ; preds = %28, %66
  %75 = phi ptr [ %33, %28 ], [ %72, %66 ]
  %76 = phi i32 [ %29, %28 ], [ %68, %66 ]
  %77 = phi ptr [ %26, %28 ], [ %67, %66 ]
  %78 = getelementptr float, ptr %75, i64 -1
  %79 = icmp sgt i32 %23, -1
  br label %83

80:                                               ; preds = %106
  %81 = load ptr, ptr %15, align 8, !tbaa !53
  %82 = icmp eq ptr %81, null
  br i1 %82, label %202, label %110

83:                                               ; preds = %74, %106
  %84 = phi ptr [ %77, %74 ], [ %108, %106 ]
  %85 = getelementptr inbounds %struct.e_Status, ptr %84, i64 0, i32 8
  %86 = load ptr, ptr %85, align 8, !tbaa !55
  %87 = load i32, ptr %86, align 8, !tbaa !54
  %88 = tail call i32 @llvm.smin.i32(i32 %87, i32 %76)
  %89 = sext i32 %88 to i64
  %90 = getelementptr float, ptr %78, i64 %89
  br i1 %79, label %91, label %106

91:                                               ; preds = %83
  %92 = load i32, ptr %84, align 8, !tbaa !54
  %93 = tail call i32 @llvm.smax.i32(i32 %92, i32 0)
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds float, ptr %75, i64 %94
  %96 = load i32, ptr %20, align 4, !tbaa !42
  %97 = icmp sge i32 %23, %96
  %98 = icmp ugt ptr %95, %90
  %99 = select i1 %97, i1 true, i1 %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %91, %100
  %101 = phi ptr [ %102, %100 ], [ %95, %91 ]
  %102 = getelementptr inbounds float, ptr %101, i64 1
  %103 = load float, ptr %101, align 4, !tbaa !43
  %104 = fadd float %103, 1.000000e+00
  store float %104, ptr %101, align 4, !tbaa !43
  %105 = icmp ugt ptr %102, %90
  br i1 %105, label %106, label %100, !llvm.loop !57

106:                                              ; preds = %100, %83, %91
  %107 = getelementptr inbounds %struct.e_Status, ptr %86, i64 0, i32 8
  %108 = load ptr, ptr %107, align 8, !tbaa !53
  %109 = icmp eq ptr %108, null
  br i1 %109, label %80, label %83, !llvm.loop !58

110:                                              ; preds = %80, %141
  %111 = phi ptr [ %142, %141 ], [ %81, %80 ]
  %112 = phi ptr [ %143, %141 ], [ %15, %80 ]
  %113 = getelementptr inbounds %struct.e_Status, ptr %111, i64 0, i32 7
  %114 = load i32, ptr %113, align 4, !tbaa !59
  %115 = add nsw i32 %114, -1
  store i32 %115, ptr %113, align 4, !tbaa !59
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.e_Status, ptr %111, i64 0, i32 8
  %119 = load ptr, ptr %118, align 8, !tbaa !55
  store ptr %119, ptr %112, align 8, !tbaa !53
  br label %141

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.e_Status, ptr %111, i64 0, i32 2
  %122 = load i32, ptr %121, align 8, !tbaa !60
  %123 = load i32, ptr %111, align 8, !tbaa !54
  %124 = add nsw i32 %123, %122
  store i32 %124, ptr %111, align 8, !tbaa !54
  %125 = getelementptr inbounds %struct.e_Status, ptr %111, i64 0, i32 5
  %126 = load i32, ptr %125, align 4, !tbaa !61
  %127 = getelementptr inbounds %struct.e_Status, ptr %111, i64 0, i32 4
  %128 = load i32, ptr %127, align 8, !tbaa !62
  %129 = add nsw i32 %128, %126
  store i32 %129, ptr %127, align 8, !tbaa !62
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %120
  %132 = getelementptr inbounds %struct.e_Status, ptr %111, i64 0, i32 3
  %133 = load i32, ptr %132, align 4, !tbaa !63
  %134 = add nsw i32 %133, %124
  store i32 %134, ptr %111, align 8, !tbaa !54
  %135 = getelementptr inbounds %struct.e_Status, ptr %111, i64 0, i32 6
  %136 = load i32, ptr %135, align 8, !tbaa !64
  %137 = sub nsw i32 %129, %136
  store i32 %137, ptr %127, align 8, !tbaa !62
  br label %138

138:                                              ; preds = %131, %120
  %139 = getelementptr inbounds %struct.e_Status, ptr %111, i64 0, i32 8
  %140 = load ptr, ptr %139, align 8, !tbaa !53
  br label %141

141:                                              ; preds = %138, %117
  %142 = phi ptr [ %140, %138 ], [ %119, %117 ]
  %143 = phi ptr [ %139, %138 ], [ %112, %117 ]
  %144 = icmp eq ptr %142, null
  br i1 %144, label %145, label %110, !llvm.loop !65

145:                                              ; preds = %141
  %146 = load ptr, ptr %15, align 8, !tbaa !53
  %147 = icmp eq ptr %146, null
  br i1 %147, label %202, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.e_Status, ptr %146, i64 0, i32 8
  %150 = load ptr, ptr %149, align 8, !tbaa !55
  %151 = icmp eq ptr %150, null
  br i1 %151, label %172, label %152

152:                                              ; preds = %148, %165
  %153 = phi ptr [ %170, %165 ], [ %150, %148 ]
  %154 = phi ptr [ %169, %165 ], [ %149, %148 ]
  %155 = phi ptr [ %168, %165 ], [ %146, %148 ]
  %156 = phi ptr [ %167, %165 ], [ %15, %148 ]
  %157 = load i32, ptr %155, align 8, !tbaa !54
  %158 = load i32, ptr %153, align 8, !tbaa !54
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %152
  store ptr %153, ptr %156, align 8, !tbaa !53
  %161 = load ptr, ptr %154, align 8, !tbaa !55
  %162 = getelementptr inbounds %struct.e_Status, ptr %161, i64 0, i32 8
  %163 = load ptr, ptr %162, align 8, !tbaa !55
  store ptr %155, ptr %162, align 8, !tbaa !55
  store ptr %163, ptr %154, align 8, !tbaa !55
  %164 = load ptr, ptr %156, align 8, !tbaa !53
  br label %165

165:                                              ; preds = %152, %160
  %166 = phi ptr [ %155, %152 ], [ %164, %160 ]
  %167 = getelementptr inbounds %struct.e_Status, ptr %166, i64 0, i32 8
  %168 = load ptr, ptr %167, align 8, !tbaa !53
  %169 = getelementptr inbounds %struct.e_Status, ptr %168, i64 0, i32 8
  %170 = load ptr, ptr %169, align 8, !tbaa !55
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %152, !llvm.loop !66

172:                                              ; preds = %165, %148
  br label %173

173:                                              ; preds = %172, %200
  %174 = load ptr, ptr %15, align 8, !tbaa !53
  %175 = getelementptr inbounds %struct.e_Status, ptr %174, i64 0, i32 8
  %176 = load ptr, ptr %175, align 8, !tbaa !55
  %177 = icmp eq ptr %176, null
  br i1 %177, label %202, label %178

178:                                              ; preds = %173, %192
  %179 = phi ptr [ %198, %192 ], [ %176, %173 ]
  %180 = phi ptr [ %197, %192 ], [ %175, %173 ]
  %181 = phi ptr [ %196, %192 ], [ %174, %173 ]
  %182 = phi ptr [ %195, %192 ], [ %15, %173 ]
  %183 = phi i32 [ %194, %192 ], [ 0, %173 ]
  %184 = load i32, ptr %181, align 8, !tbaa !54
  %185 = load i32, ptr %179, align 8, !tbaa !54
  %186 = icmp sgt i32 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %178
  store ptr %179, ptr %182, align 8, !tbaa !53
  %188 = load ptr, ptr %180, align 8, !tbaa !55
  %189 = getelementptr inbounds %struct.e_Status, ptr %188, i64 0, i32 8
  %190 = load ptr, ptr %189, align 8, !tbaa !55
  store ptr %181, ptr %189, align 8, !tbaa !55
  store ptr %190, ptr %180, align 8, !tbaa !55
  %191 = load ptr, ptr %182, align 8, !tbaa !53
  br label %192

192:                                              ; preds = %178, %187
  %193 = phi ptr [ %191, %187 ], [ %181, %178 ]
  %194 = phi i32 [ 1, %187 ], [ %183, %178 ]
  %195 = getelementptr inbounds %struct.e_Status, ptr %193, i64 0, i32 8
  %196 = load ptr, ptr %195, align 8, !tbaa !53
  %197 = getelementptr inbounds %struct.e_Status, ptr %196, i64 0, i32 8
  %198 = load ptr, ptr %197, align 8, !tbaa !55
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %178, !llvm.loop !67

200:                                              ; preds = %192
  %201 = icmp eq i32 %194, 0
  br i1 %201, label %202, label %173

202:                                              ; preds = %173, %200, %66, %80, %145
  %203 = add nsw i32 %23, 1
  %204 = load ptr, ptr %0, align 8, !tbaa !49
  br label %21, !llvm.loop !68

205:                                              ; preds = %25
  tail call void @free(ptr noundef %8) #10
  br label %206

206:                                              ; preds = %5, %3, %205, %13
  %207 = phi i32 [ 1, %13 ], [ 1, %205 ], [ 1, %3 ], [ 0, %5 ]
  ret i32 %207
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @preprocess_all_edges(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #5 !PGOFuncName !69 {
  store ptr null, ptr %0, align 8, !tbaa !49
  %5 = load i32, ptr %1, align 4, !tbaa !70
  %6 = getelementptr inbounds %struct.r_FillContext, ptr %0, i64 0, i32 2, i32 6
  store i32 %5, ptr %6, align 4, !tbaa !72
  %7 = getelementptr inbounds %struct.r_FillContext, ptr %0, i64 0, i32 2, i32 5
  store i32 %5, ptr %7, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.PolyVert, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !74
  %10 = getelementptr inbounds %struct.r_FillContext, ptr %0, i64 0, i32 2, i32 4
  store i32 %9, ptr %10, align 4, !tbaa !75
  %11 = getelementptr inbounds %struct.r_FillContext, ptr %0, i64 0, i32 2, i32 3
  store i32 %9, ptr %11, align 8, !tbaa !76
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %13, label %118

13:                                               ; preds = %4
  %14 = zext nneg i32 %2 to i64
  br label %15

15:                                               ; preds = %13, %114
  %16 = phi i64 [ 0, %13 ], [ %116, %114 ]
  %17 = phi i32 [ %9, %13 ], [ %39, %114 ]
  %18 = phi i32 [ %5, %13 ], [ %31, %114 ]
  %19 = phi ptr [ %3, %13 ], [ %115, %114 ]
  %20 = getelementptr inbounds %struct.PolyVert, ptr %1, i64 %16
  %21 = load i32, ptr %20, align 4, !tbaa !70
  %22 = getelementptr inbounds %struct.PolyVert, ptr %1, i64 %16, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !74
  %24 = icmp slt i32 %21, %18
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  store i32 %21, ptr %6, align 4, !tbaa !72
  br label %30

26:                                               ; preds = %15
  %27 = load i32, ptr %7, align 8, !tbaa !73
  %28 = icmp sgt i32 %21, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 %21, ptr %7, align 8, !tbaa !73
  br label %30

30:                                               ; preds = %26, %29, %25
  %31 = phi i32 [ %18, %26 ], [ %18, %29 ], [ %21, %25 ]
  %32 = icmp slt i32 %23, %17
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 %23, ptr %10, align 4, !tbaa !75
  br label %38

34:                                               ; preds = %30
  %35 = load i32, ptr %11, align 8, !tbaa !76
  %36 = icmp sgt i32 %23, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 %23, ptr %11, align 8, !tbaa !76
  br label %38

38:                                               ; preds = %34, %37, %33
  %39 = phi i32 [ %17, %34 ], [ %17, %37 ], [ %23, %33 ]
  %40 = icmp eq i64 %16, 0
  %41 = select i1 %40, i64 %14, i64 %16
  %42 = getelementptr %struct.PolyVert, ptr %1, i64 %41
  %43 = getelementptr %struct.PolyVert, ptr %42, i64 -1
  %44 = load i32, ptr %43, align 4, !tbaa !70
  %45 = getelementptr %struct.PolyVert, ptr %42, i64 -1, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !74
  %47 = icmp sgt i32 %23, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %38
  %50 = phi i32 [ %23, %48 ], [ %46, %38 ]
  %51 = phi i32 [ %21, %48 ], [ %44, %38 ]
  %52 = phi i32 [ %46, %48 ], [ %23, %38 ]
  %53 = phi i32 [ %44, %48 ], [ %21, %38 ]
  %54 = sub nsw i32 %50, %52
  %55 = icmp eq i32 %50, %52
  br i1 %55, label %114, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.e_Status, ptr %19, i64 1
  %58 = sub nsw i32 %51, %53
  %59 = icmp sgt i32 %58, 0
  %60 = getelementptr inbounds %struct.e_Status, ptr %19, i64 0, i32 3
  br i1 %59, label %61, label %65

61:                                               ; preds = %56
  store i32 1, ptr %60, align 4, !tbaa !63
  store i32 %53, ptr %19, align 8, !tbaa !54
  %62 = getelementptr inbounds %struct.e_Status, ptr %19, i64 0, i32 1
  store i32 %52, ptr %62, align 4, !tbaa !51
  %63 = getelementptr inbounds %struct.e_Status, ptr %19, i64 0, i32 7
  store i32 %54, ptr %63, align 4, !tbaa !59
  %64 = getelementptr inbounds %struct.e_Status, ptr %19, i64 0, i32 6
  store i32 %54, ptr %64, align 8, !tbaa !64
  br label %73

65:                                               ; preds = %56
  store i32 -1, ptr %60, align 4, !tbaa !63
  %66 = sub nsw i32 0, %58
  store i32 %53, ptr %19, align 8, !tbaa !54
  %67 = getelementptr inbounds %struct.e_Status, ptr %19, i64 0, i32 1
  store i32 %52, ptr %67, align 4, !tbaa !51
  %68 = getelementptr inbounds %struct.e_Status, ptr %19, i64 0, i32 7
  store i32 %54, ptr %68, align 4, !tbaa !59
  %69 = getelementptr inbounds %struct.e_Status, ptr %19, i64 0, i32 6
  store i32 %54, ptr %69, align 8, !tbaa !64
  %70 = icmp eq i32 %58, 0
  %71 = sub i32 1, %54
  %72 = select i1 %70, i32 0, i32 %71
  br label %73

73:                                               ; preds = %65, %61
  %74 = phi i32 [ 0, %61 ], [ %72, %65 ]
  %75 = phi i32 [ 1, %61 ], [ -1, %65 ]
  %76 = phi i32 [ %58, %61 ], [ %66, %65 ]
  %77 = getelementptr inbounds %struct.e_Status, ptr %19, i64 0, i32 4
  store i32 %74, ptr %77, align 8, !tbaa !62
  %78 = icmp slt i32 %54, %76
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = srem i32 %76, %54
  %81 = sdiv i32 %76, %54
  %82 = mul nsw i32 %75, %81
  br label %83

83:                                               ; preds = %73, %79
  %84 = phi i32 [ %80, %79 ], [ %76, %73 ]
  %85 = phi i32 [ %82, %79 ], [ 0, %73 ]
  %86 = getelementptr inbounds %struct.e_Status, ptr %19, i64 0, i32 5
  store i32 %84, ptr %86, align 4
  %87 = getelementptr inbounds %struct.e_Status, ptr %19, i64 0, i32 2
  store i32 %85, ptr %87, align 8
  %88 = load ptr, ptr %0, align 8, !tbaa !53
  %89 = icmp eq ptr %88, null
  br i1 %89, label %106, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.e_Status, ptr %88, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !51
  %93 = icmp sgt i32 %92, %52
  br i1 %93, label %106, label %98

94:                                               ; preds = %110
  %95 = getelementptr inbounds %struct.e_Status, ptr %112, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !51
  %97 = icmp sgt i32 %96, %52
  br i1 %97, label %106, label %98

98:                                               ; preds = %90, %94
  %99 = phi i32 [ %96, %94 ], [ %92, %90 ]
  %100 = phi ptr [ %111, %94 ], [ %0, %90 ]
  %101 = phi ptr [ %112, %94 ], [ %88, %90 ]
  %102 = icmp eq i32 %99, %52
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i32, ptr %101, align 8, !tbaa !54
  %105 = icmp slt i32 %104, %53
  br i1 %105, label %110, label %106

106:                                              ; preds = %103, %94, %110, %90, %83
  %107 = phi ptr [ %0, %83 ], [ %0, %90 ], [ %111, %110 ], [ %111, %94 ], [ %100, %103 ]
  %108 = phi ptr [ null, %83 ], [ %88, %90 ], [ null, %110 ], [ %112, %94 ], [ %101, %103 ]
  %109 = getelementptr inbounds %struct.e_Status, ptr %19, i64 0, i32 8
  store ptr %108, ptr %109, align 8, !tbaa !55
  store ptr %19, ptr %107, align 8, !tbaa !53
  br label %114

110:                                              ; preds = %103, %98
  %111 = getelementptr inbounds %struct.e_Status, ptr %101, i64 0, i32 8
  %112 = load ptr, ptr %111, align 8, !tbaa !53
  %113 = icmp eq ptr %112, null
  br i1 %113, label %106, label %94

114:                                              ; preds = %49, %106
  %115 = phi ptr [ %57, %106 ], [ %19, %49 ]
  %116 = add nuw nsw i64 %16, 1
  %117 = icmp eq i64 %116, %14
  br i1 %117, label %118, label %15, !llvm.loop !77

118:                                              ; preds = %114, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize allocsize(0) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }

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
!34 = !{!35, !36, i64 16}
!35 = !{!"r_FillContext", !36, i64 0, !36, i64 8, !39, i64 16}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"r_BufferStats", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28}
!40 = !{!"int", !37, i64 0}
!41 = !{!35, !40, i64 24}
!42 = !{!35, !40, i64 28}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !37, i64 0}
!45 = !{!40, !40, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"raskter.c:rast_scan_fill"}
!49 = !{!35, !36, i64 0}
!50 = !{!35, !36, i64 8}
!51 = !{!52, !40, i64 4}
!52 = !{!"e_Status", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32}
!53 = !{!36, !36, i64 0}
!54 = !{!52, !40, i64 0}
!55 = !{!52, !36, i64 32}
!56 = distinct !{!56, !47}
!57 = distinct !{!57, !47}
!58 = distinct !{!58, !47}
!59 = !{!52, !40, i64 28}
!60 = !{!52, !40, i64 8}
!61 = !{!52, !40, i64 20}
!62 = !{!52, !40, i64 16}
!63 = !{!52, !40, i64 12}
!64 = !{!52, !40, i64 24}
!65 = distinct !{!65, !47}
!66 = distinct !{!66, !47}
!67 = distinct !{!67, !47}
!68 = distinct !{!68, !47}
!69 = !{!"raskter.c:preprocess_all_edges"}
!70 = !{!71, !40, i64 0}
!71 = !{!"PolyVert", !40, i64 0, !40, i64 4}
!72 = !{!35, !40, i64 44}
!73 = !{!35, !40, i64 40}
!74 = !{!71, !40, i64 4}
!75 = !{!35, !40, i64 36}
!76 = !{!35, !40, i64 32}
!77 = distinct !{!77, !47}
