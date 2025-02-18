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

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_scanfill_vert_add(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef 56) #11
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 3
  %8 = load float, ptr %1, align 4, !tbaa !42
  store float %8, ptr %7, align 4, !tbaa !42
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !42
  %11 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 3, i64 1
  store float %10, ptr %11, align 4, !tbaa !42
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !42
  %14 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 3, i64 2
  store float %13, ptr %14, align 4, !tbaa !42
  %15 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 4
  store float 0.000000e+00, ptr %15, align 4, !tbaa !42
  %16 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 4, i64 1
  store float 0.000000e+00, ptr %16, align 4, !tbaa !42
  %17 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 5
  store i32 0, ptr %17, align 4, !tbaa !44
  %18 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 6
  store i16 %19, ptr %20, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 7
  store i8 0, ptr %21, align 2, !tbaa !49
  %22 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 8
  store i8 0, ptr %22, align 1
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_scanfill_edge_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr @BLI_memarena_alloc(ptr noundef %5, i64 noundef 40) #11
  %7 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.ScanFillEdge, ptr %6, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.ScanFillEdge, ptr %6, i64 0, i32 3
  store ptr %2, ptr %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.ScanFillEdge, ptr %6, i64 0, i32 4
  store i16 %11, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.ScanFillEdge, ptr %6, i64 0, i32 5
  store i8 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.ScanFillEdge, ptr %6, i64 0, i32 6
  store i8 0, ptr %14, align 1, !tbaa !41
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_scanfill_begin(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %2 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 3
  store i16 -1, ptr %2, align 8, !tbaa !47
  %3 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BLI_scanfill_begin) #11
  %4 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 4
  store ptr %3, ptr %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BLI_scanfill_begin_arena(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %3 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 3
  store i16 -1, ptr %3, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 4
  store ptr %1, ptr %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_scanfill_end(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @BLI_memarena_free(ptr noundef %3) #11
  store ptr null, ptr %2, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  ret void
}

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BLI_scanfill_end_arena(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_memarena_clear(ptr noundef %1) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  ret void
}

declare void @BLI_memarena_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_scanfill_calc_ex(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #11
  %8 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %3, %11
  %12 = phi ptr [ %25, %11 ], [ %9, %3 ]
  %13 = getelementptr inbounds %struct.ScanFillEdge, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.ScanFillVert, ptr %14, i64 0, i32 8
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, -16
  %18 = or disjoint i8 %17, 1
  store i8 %18, ptr %15, align 1
  %19 = getelementptr inbounds %struct.ScanFillEdge, ptr %12, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.ScanFillVert, ptr %20, i64 0, i32 8
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, -16
  %24 = or disjoint i8 %23, 1
  store i8 %24, ptr %21, align 1
  %25 = load ptr, ptr %12, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %11, !llvm.loop !55

27:                                               ; preds = %11, %3
  br label %28

28:                                               ; preds = %27, %32
  %29 = phi ptr [ %30, %32 ], [ %0, %27 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = icmp eq ptr %30, null
  br i1 %31, label %1297, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ScanFillVert, ptr %30, i64 0, i32 8
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 15
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %37, label %28, !llvm.loop !58

37:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %38 = icmp eq ptr %2, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %37
  %40 = load float, ptr %2, align 4, !tbaa !42
  store float %40, ptr %7, align 4, !tbaa !42
  %41 = getelementptr inbounds float, ptr %2, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !42
  %43 = getelementptr inbounds float, ptr %7, i64 1
  store float %42, ptr %43, align 4, !tbaa !42
  %44 = getelementptr inbounds float, ptr %2, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !42
  %46 = getelementptr inbounds float, ptr %7, i64 2
  store float %45, ptr %46, align 4, !tbaa !42
  br label %114

47:                                               ; preds = %37
  store float 0.000000e+00, ptr %7, align 4, !tbaa !42
  %48 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %48, align 4, !tbaa !42
  %49 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %49, align 4, !tbaa !42
  %50 = load ptr, ptr %0, align 8, !tbaa !54
  %51 = icmp eq ptr %50, null
  br i1 %51, label %114, label %52

52:                                               ; preds = %47
  %53 = load float, ptr %48, align 4, !tbaa !42
  %54 = load float, ptr %7, align 4, !tbaa !42
  %55 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !59
  %57 = getelementptr inbounds %struct.ScanFillVert, ptr %56, i64 0, i32 3
  br label %58

58:                                               ; preds = %52, %107
  %59 = phi ptr [ %112, %107 ], [ %50, %52 ]
  %60 = phi ptr [ %111, %107 ], [ %57, %52 ]
  %61 = phi float [ %110, %107 ], [ %54, %52 ]
  %62 = phi float [ %109, %107 ], [ %53, %52 ]
  %63 = phi float [ %108, %107 ], [ 0.000000e+00, %52 ]
  %64 = getelementptr inbounds %struct.ScanFillVert, ptr %59, i64 0, i32 3
  %65 = load float, ptr %60, align 4, !tbaa !42
  %66 = load float, ptr %64, align 4, !tbaa !42
  %67 = fsub float %65, %66
  %68 = tail call float @llvm.fabs.f32(float %67)
  %69 = fcmp ugt float %68, 0x3EFF751040000000
  br i1 %69, label %86, label %70

70:                                               ; preds = %58
  %71 = getelementptr inbounds float, ptr %60, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !42
  %73 = getelementptr inbounds %struct.ScanFillVert, ptr %59, i64 0, i32 3, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !42
  %75 = fsub float %72, %74
  %76 = tail call float @llvm.fabs.f32(float %75)
  %77 = fcmp ugt float %76, 0x3EFF751040000000
  br i1 %77, label %86, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds float, ptr %60, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !42
  %81 = getelementptr inbounds %struct.ScanFillVert, ptr %59, i64 0, i32 3, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !42
  %83 = fsub float %80, %82
  %84 = tail call float @llvm.fabs.f32(float %83)
  %85 = fcmp ugt float %84, 0x3EFF751040000000
  br i1 %85, label %86, label %107

86:                                               ; preds = %78, %70, %58
  %87 = getelementptr inbounds float, ptr %60, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !42
  %89 = getelementptr inbounds %struct.ScanFillVert, ptr %59, i64 0, i32 3, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !42
  %91 = fsub float %88, %90
  %92 = getelementptr inbounds float, ptr %60, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !42
  %94 = getelementptr inbounds %struct.ScanFillVert, ptr %59, i64 0, i32 3, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !42
  %96 = fadd float %93, %95
  %97 = tail call float @llvm.fmuladd.f32(float %91, float %96, float %61)
  store float %97, ptr %7, align 4, !tbaa !42
  %98 = fsub float %93, %95
  %99 = load float, ptr %60, align 4, !tbaa !42
  %100 = fadd float %66, %99
  %101 = tail call float @llvm.fmuladd.f32(float %98, float %100, float %62)
  store float %101, ptr %48, align 4, !tbaa !42
  %102 = load float, ptr %60, align 4, !tbaa !42
  %103 = fsub float %102, %66
  %104 = load float, ptr %87, align 4, !tbaa !42
  %105 = fadd float %90, %104
  %106 = tail call float @llvm.fmuladd.f32(float %103, float %105, float %63)
  store float %106, ptr %49, align 4, !tbaa !42
  br label %107

107:                                              ; preds = %78, %86
  %108 = phi float [ %106, %86 ], [ %63, %78 ]
  %109 = phi float [ %101, %86 ], [ %62, %78 ]
  %110 = phi float [ %97, %86 ], [ %61, %78 ]
  %111 = phi ptr [ %64, %86 ], [ %60, %78 ]
  %112 = load ptr, ptr %59, align 8, !tbaa !54
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %58, !llvm.loop !60

114:                                              ; preds = %107, %47, %39
  %115 = load float, ptr %7, align 4, !tbaa !42
  %116 = getelementptr inbounds float, ptr %7, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !42
  %118 = fmul float %117, %117
  %119 = tail call float @llvm.fmuladd.f32(float %115, float %115, float %118)
  %120 = getelementptr inbounds float, ptr %7, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !42
  %122 = tail call float @llvm.fmuladd.f32(float %121, float %121, float %119)
  %123 = fcmp ogt float %122, 0x38AA95A5C0000000
  br i1 %123, label %124, label %133

124:                                              ; preds = %114
  %125 = tail call float @sqrtf(float noundef %122) #11
  %126 = fdiv float 1.000000e+00, %125
  %127 = load float, ptr %7, align 4, !tbaa !42
  %128 = fmul float %127, %126
  store float %128, ptr %7, align 4, !tbaa !42
  %129 = load float, ptr %116, align 4, !tbaa !42
  %130 = fmul float %126, %129
  store float %130, ptr %116, align 4, !tbaa !42
  %131 = load float, ptr %120, align 4, !tbaa !42
  %132 = fmul float %126, %131
  br label %134

133:                                              ; preds = %114
  store float 0.000000e+00, ptr %7, align 4, !tbaa !42
  store float 0.000000e+00, ptr %116, align 4, !tbaa !42
  br label %134

134:                                              ; preds = %124, %133
  %135 = phi float [ 0.000000e+00, %133 ], [ %132, %124 ]
  %136 = phi float [ 0.000000e+00, %133 ], [ %125, %124 ]
  store float %135, ptr %120, align 4, !tbaa !42
  %137 = fcmp une float %136, 0.000000e+00
  br i1 %137, label %138, label %1296

138:                                              ; preds = %134
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  %139 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 3
  %140 = load i16, ptr %139, align 8, !tbaa !47
  %141 = icmp eq i16 %140, -1
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = add i16 %140, 1
  store i16 -1, ptr %139, align 8, !tbaa !47
  br label %144

144:                                              ; preds = %142, %138
  %145 = phi i16 [ %143, %142 ], [ 0, %138 ]
  %146 = and i32 %1, 4
  %147 = icmp ne i32 %146, 0
  %148 = icmp eq i16 %145, 0
  %149 = and i1 %147, %148
  %150 = load ptr, ptr %0, align 8, !tbaa !54
  %151 = icmp eq ptr %150, null
  br i1 %149, label %152, label %222

152:                                              ; preds = %144
  br i1 %151, label %246, label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1, i32 1
  br label %155

155:                                              ; preds = %153, %218
  %156 = phi ptr [ %150, %153 ], [ %220, %218 ]
  %157 = phi i16 [ %145, %153 ], [ %219, %218 ]
  %158 = getelementptr inbounds %struct.ScanFillVert, ptr %156, i64 0, i32 4
  %159 = getelementptr inbounds %struct.ScanFillVert, ptr %156, i64 0, i32 3
  call void @mul_v2_m3v3(ptr noundef nonnull %158, ptr noundef nonnull %6, ptr noundef nonnull %159) #11
  %160 = getelementptr inbounds %struct.ScanFillVert, ptr %156, i64 0, i32 6
  %161 = load i16, ptr %160, align 8, !tbaa !48
  %162 = icmp eq i16 %161, -1
  br i1 %162, label %163, label %218

163:                                              ; preds = %155
  store i16 %157, ptr %160, align 8, !tbaa !48
  br label %167

164:                                              ; preds = %210, %167
  %165 = phi i8 [ 0, %167 ], [ %211, %210 ]
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %216, label %167, !llvm.loop !61

167:                                              ; preds = %163, %164
  %168 = phi i32 [ 0, %163 ], [ %169, %164 ]
  %169 = add i32 %168, 1
  %170 = and i32 %168, 1
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %171, ptr %8, ptr %154
  %173 = load ptr, ptr %172, align 8, !tbaa !54
  %174 = icmp eq ptr %173, null
  br i1 %174, label %164, label %175

175:                                              ; preds = %167, %210
  %176 = phi ptr [ %214, %210 ], [ %173, %167 ]
  %177 = phi i8 [ %211, %210 ], [ 0, %167 ]
  %178 = getelementptr inbounds %struct.ScanFillEdge, ptr %176, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !50
  %180 = getelementptr inbounds %struct.ScanFillVert, ptr %179, i64 0, i32 6
  %181 = load i16, ptr %180, align 8, !tbaa !48
  %182 = icmp eq i16 %181, -1
  br i1 %182, label %183, label %189

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.ScanFillEdge, ptr %176, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !52
  %186 = getelementptr inbounds %struct.ScanFillVert, ptr %185, i64 0, i32 6
  %187 = load i16, ptr %186, align 8, !tbaa !48
  %188 = icmp eq i16 %187, %157
  br i1 %188, label %205, label %189

189:                                              ; preds = %183, %175
  %190 = getelementptr inbounds %struct.ScanFillEdge, ptr %176, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !52
  %192 = getelementptr inbounds %struct.ScanFillVert, ptr %191, i64 0, i32 6
  %193 = load i16, ptr %192, align 8, !tbaa !48
  %194 = icmp eq i16 %193, -1
  %195 = icmp eq i16 %181, %157
  %196 = select i1 %194, i1 %195, i1 false
  br i1 %196, label %205, label %197

197:                                              ; preds = %189
  %198 = getelementptr inbounds %struct.ScanFillEdge, ptr %176, i64 0, i32 4
  %199 = load i16, ptr %198, align 8, !tbaa !53
  %200 = icmp eq i16 %199, -1
  %201 = icmp eq i16 %181, %157
  %202 = select i1 %200, i1 %201, i1 false
  %203 = icmp eq i16 %193, %157
  %204 = select i1 %202, i1 %203, i1 false
  br i1 %204, label %208, label %210

205:                                              ; preds = %189, %183
  %206 = phi ptr [ %180, %183 ], [ %192, %189 ]
  store i16 %157, ptr %206, align 8, !tbaa !48
  %207 = getelementptr inbounds %struct.ScanFillEdge, ptr %176, i64 0, i32 4
  br label %208

208:                                              ; preds = %205, %197
  %209 = phi ptr [ %198, %197 ], [ %207, %205 ]
  store i16 %157, ptr %209, align 8, !tbaa !53
  br label %210

210:                                              ; preds = %208, %197
  %211 = phi i8 [ %177, %197 ], [ 1, %208 ]
  %212 = getelementptr inbounds %struct.ScanFillEdge, ptr %176, i64 0, i32 1
  %213 = select i1 %171, ptr %176, ptr %212
  %214 = load ptr, ptr %213, align 8, !tbaa !54
  %215 = icmp eq ptr %214, null
  br i1 %215, label %164, label %175, !llvm.loop !62

216:                                              ; preds = %164
  %217 = add i16 %157, 1
  br label %218

218:                                              ; preds = %155, %216
  %219 = phi i16 [ %217, %216 ], [ %157, %155 ]
  %220 = load ptr, ptr %156, align 8, !tbaa !54
  %221 = icmp eq ptr %220, null
  br i1 %221, label %246, label %155, !llvm.loop !63

222:                                              ; preds = %144
  br i1 %148, label %224, label %223

223:                                              ; preds = %222
  br i1 %151, label %246, label %225

224:                                              ; preds = %222
  br i1 %151, label %231, label %234

225:                                              ; preds = %223, %225
  %226 = phi ptr [ %229, %225 ], [ %150, %223 ]
  %227 = getelementptr inbounds %struct.ScanFillVert, ptr %226, i64 0, i32 4
  %228 = getelementptr inbounds %struct.ScanFillVert, ptr %226, i64 0, i32 3
  call void @mul_v2_m3v3(ptr noundef nonnull %227, ptr noundef nonnull %6, ptr noundef nonnull %228) #11
  %229 = load ptr, ptr %226, align 8, !tbaa !54
  %230 = icmp eq ptr %229, null
  br i1 %230, label %246, label %225, !llvm.loop !64

231:                                              ; preds = %234, %224
  %232 = load ptr, ptr %8, align 8, !tbaa !54
  %233 = icmp eq ptr %232, null
  br i1 %233, label %246, label %241

234:                                              ; preds = %224, %234
  %235 = phi ptr [ %239, %234 ], [ %150, %224 ]
  %236 = getelementptr inbounds %struct.ScanFillVert, ptr %235, i64 0, i32 4
  %237 = getelementptr inbounds %struct.ScanFillVert, ptr %235, i64 0, i32 3
  call void @mul_v2_m3v3(ptr noundef nonnull %236, ptr noundef nonnull %6, ptr noundef nonnull %237) #11
  %238 = getelementptr inbounds %struct.ScanFillVert, ptr %235, i64 0, i32 6
  store i16 0, ptr %238, align 8, !tbaa !48
  %239 = load ptr, ptr %235, align 8, !tbaa !54
  %240 = icmp eq ptr %239, null
  br i1 %240, label %231, label %234, !llvm.loop !65

241:                                              ; preds = %231, %241
  %242 = phi ptr [ %244, %241 ], [ %232, %231 ]
  %243 = getelementptr inbounds %struct.ScanFillEdge, ptr %242, i64 0, i32 4
  store i16 0, ptr %243, align 8, !tbaa !53
  %244 = load ptr, ptr %242, align 8, !tbaa !54
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %241, !llvm.loop !66

246:                                              ; preds = %225, %241, %218, %223, %231, %152
  %247 = phi i16 [ %145, %152 ], [ 1, %231 ], [ %145, %223 ], [ %219, %218 ], [ 1, %241 ], [ %145, %225 ]
  %248 = and i32 %1, 16
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = load ptr, ptr %8, align 8, !tbaa !54
  %252 = icmp eq ptr %251, null
  br i1 %252, label %455, label %441

253:                                              ; preds = %246, %269
  %254 = phi ptr [ %255, %269 ], [ %8, %246 ]
  %255 = load ptr, ptr %254, align 8, !tbaa !54
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %262

257:                                              ; preds = %253
  %258 = load ptr, ptr %0, align 8, !tbaa !54
  %259 = icmp eq ptr %258, null
  br i1 %259, label %276, label %260

260:                                              ; preds = %257
  %261 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 4
  br label %278

262:                                              ; preds = %253
  %263 = getelementptr inbounds %struct.ScanFillEdge, ptr %255, i64 0, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !50
  %265 = getelementptr inbounds %struct.ScanFillVert, ptr %264, i64 0, i32 7
  %266 = load i8, ptr %265, align 2, !tbaa !49
  %267 = add i8 %266, 1
  store i8 %267, ptr %265, align 2, !tbaa !49
  %268 = icmp ugt i8 %266, -6
  br i1 %268, label %1297, label %269

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.ScanFillEdge, ptr %255, i64 0, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !52
  %272 = getelementptr inbounds %struct.ScanFillVert, ptr %271, i64 0, i32 7
  %273 = load i8, ptr %272, align 2, !tbaa !49
  %274 = add i8 %273, 1
  store i8 %274, ptr %272, align 2, !tbaa !49
  %275 = icmp ugt i8 %273, -6
  br i1 %275, label %1297, label %253, !llvm.loop !67

276:                                              ; preds = %399, %257
  %277 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1, i32 1
  br label %405

278:                                              ; preds = %260, %399
  %279 = phi ptr [ %258, %260 ], [ %400, %399 ]
  %280 = getelementptr inbounds %struct.ScanFillVert, ptr %279, i64 0, i32 7
  %281 = load i8, ptr %280, align 2, !tbaa !49
  %282 = icmp eq i8 %281, 1
  br i1 %282, label %283, label %399

283:                                              ; preds = %278, %289
  %284 = phi ptr [ %285, %289 ], [ %8, %278 ]
  %285 = load ptr, ptr %284, align 8, !tbaa !54
  %286 = getelementptr inbounds %struct.ScanFillEdge, ptr %285, i64 0, i32 2
  %287 = load ptr, ptr %286, align 8, !tbaa !50
  %288 = icmp eq ptr %287, %279
  br i1 %288, label %294, label %289

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.ScanFillEdge, ptr %285, i64 0, i32 3
  %291 = load ptr, ptr %290, align 8, !tbaa !52
  %292 = icmp eq ptr %291, %279
  br i1 %292, label %293, label %283, !llvm.loop !68

293:                                              ; preds = %289
  br i1 %288, label %294, label %298

294:                                              ; preds = %283, %293
  %295 = getelementptr inbounds %struct.ScanFillEdge, ptr %285, i64 0, i32 2
  %296 = getelementptr inbounds %struct.ScanFillEdge, ptr %285, i64 0, i32 3
  %297 = load ptr, ptr %296, align 8, !tbaa !52
  store ptr %297, ptr %295, align 8, !tbaa !50
  store ptr %279, ptr %296, align 8, !tbaa !52
  br label %298

298:                                              ; preds = %294, %293
  %299 = load ptr, ptr %8, align 8, !tbaa !54
  %300 = icmp eq ptr %299, null
  br i1 %300, label %399, label %301

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.ScanFillVert, ptr %279, i64 0, i32 6
  %303 = getelementptr inbounds %struct.ScanFillVert, ptr %279, i64 0, i32 4
  %304 = getelementptr inbounds %struct.ScanFillVert, ptr %279, i64 0, i32 4, i64 1
  %305 = getelementptr inbounds %struct.ScanFillVert, ptr %279, i64 0, i32 4, i64 1
  %306 = getelementptr inbounds %struct.ScanFillVert, ptr %279, i64 0, i32 4, i64 1
  br label %307

307:                                              ; preds = %301, %390
  %308 = phi ptr [ %299, %301 ], [ %392, %390 ]
  %309 = phi ptr [ %285, %301 ], [ %391, %390 ]
  %310 = getelementptr inbounds %struct.ScanFillEdge, ptr %308, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !50
  %312 = icmp eq ptr %279, %311
  br i1 %312, label %390, label %313

313:                                              ; preds = %307
  %314 = getelementptr inbounds %struct.ScanFillEdge, ptr %308, i64 0, i32 3
  %315 = load ptr, ptr %314, align 8, !tbaa !52
  %316 = icmp eq ptr %279, %315
  br i1 %316, label %390, label %317

317:                                              ; preds = %313
  %318 = load i16, ptr %302, align 8, !tbaa !48
  %319 = getelementptr inbounds %struct.ScanFillEdge, ptr %308, i64 0, i32 4
  %320 = load i16, ptr %319, align 8, !tbaa !53
  %321 = icmp eq i16 %318, %320
  br i1 %321, label %322, label %390

322:                                              ; preds = %317
  %323 = getelementptr inbounds %struct.ScanFillVert, ptr %311, i64 0, i32 4
  %324 = load float, ptr %303, align 4, !tbaa !42
  %325 = load float, ptr %323, align 4, !tbaa !42
  %326 = fsub float %324, %325
  %327 = call float @llvm.fabs.f32(float %326)
  %328 = fcmp ugt float %327, 0x3EFF751040000000
  br i1 %328, label %336, label %329

329:                                              ; preds = %322
  %330 = load float, ptr %304, align 4, !tbaa !42
  %331 = getelementptr inbounds %struct.ScanFillVert, ptr %311, i64 0, i32 4, i64 1
  %332 = load float, ptr %331, align 4, !tbaa !42
  %333 = fsub float %330, %332
  %334 = call float @llvm.fabs.f32(float %333)
  %335 = fcmp ugt float %334, 0x3EFF751040000000
  br i1 %335, label %336, label %342

336:                                              ; preds = %329, %322
  %337 = getelementptr inbounds %struct.ScanFillVert, ptr %315, i64 0, i32 4
  %338 = load float, ptr %337, align 4, !tbaa !42
  %339 = fsub float %324, %338
  %340 = call float @llvm.fabs.f32(float %339)
  %341 = fcmp ugt float %340, 0x3EFF751040000000
  br i1 %341, label %351, label %344

342:                                              ; preds = %329
  %343 = getelementptr inbounds %struct.ScanFillEdge, ptr %309, i64 0, i32 3
  store ptr %311, ptr %343, align 8, !tbaa !52
  br label %394

344:                                              ; preds = %336
  %345 = load float, ptr %305, align 4, !tbaa !42
  %346 = getelementptr inbounds %struct.ScanFillVert, ptr %315, i64 0, i32 4, i64 1
  %347 = load float, ptr %346, align 4, !tbaa !42
  %348 = fsub float %345, %347
  %349 = call float @llvm.fabs.f32(float %348)
  %350 = fcmp ugt float %349, 0x3EFF751040000000
  br i1 %350, label %351, label %358

351:                                              ; preds = %344, %336
  %352 = fcmp olt float %325, %338
  %353 = select i1 %352, float %325, float %338
  %354 = select i1 %352, float %338, float %325
  %355 = fcmp ult float %324, %353
  %356 = fcmp ugt float %324, %354
  %357 = or i1 %355, %356
  br i1 %357, label %390, label %362

358:                                              ; preds = %344
  %359 = getelementptr inbounds %struct.ScanFillEdge, ptr %308, i64 0, i32 3
  %360 = getelementptr inbounds %struct.ScanFillEdge, ptr %309, i64 0, i32 3
  store ptr %315, ptr %360, align 8, !tbaa !52
  %361 = load ptr, ptr %359, align 8, !tbaa !52
  br label %394

362:                                              ; preds = %351
  %363 = getelementptr inbounds %struct.ScanFillVert, ptr %311, i64 0, i32 4, i64 1
  %364 = load float, ptr %363, align 4, !tbaa !42
  %365 = getelementptr inbounds %struct.ScanFillVert, ptr %315, i64 0, i32 4, i64 1
  %366 = load float, ptr %365, align 4, !tbaa !42
  %367 = fcmp olt float %364, %366
  %368 = select i1 %367, float %364, float %366
  %369 = select i1 %367, float %366, float %364
  %370 = load float, ptr %306, align 4, !tbaa !42
  %371 = fcmp ult float %370, %368
  %372 = fcmp ugt float %370, %369
  %373 = or i1 %371, %372
  br i1 %373, label %390, label %374

374:                                              ; preds = %362
  %375 = call float @dist_squared_to_line_v2(ptr noundef nonnull %323, ptr noundef nonnull %337, ptr noundef nonnull %303) #11
  %376 = fcmp uge float %375, 0x3E0EEC7BC0000000
  br i1 %376, label %388, label %377

377:                                              ; preds = %374
  %378 = load ptr, ptr %310, align 8, !tbaa !50
  %379 = load ptr, ptr %261, align 8, !tbaa !34
  %380 = call ptr @BLI_memarena_alloc(ptr noundef %379, i64 noundef 40) #11
  call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %380) #11
  %381 = getelementptr inbounds %struct.ScanFillEdge, ptr %380, i64 0, i32 2
  store ptr %378, ptr %381, align 8, !tbaa !50
  %382 = getelementptr inbounds %struct.ScanFillEdge, ptr %380, i64 0, i32 3
  store ptr %279, ptr %382, align 8, !tbaa !52
  %383 = load i16, ptr %139, align 8, !tbaa !47
  %384 = getelementptr inbounds %struct.ScanFillEdge, ptr %380, i64 0, i32 4
  store i16 %383, ptr %384, align 8, !tbaa !53
  %385 = getelementptr inbounds %struct.ScanFillEdge, ptr %380, i64 0, i32 5
  store i8 0, ptr %385, align 2
  %386 = getelementptr inbounds %struct.ScanFillEdge, ptr %380, i64 0, i32 6
  store i8 0, ptr %386, align 1, !tbaa !41
  %387 = load i16, ptr %319, align 8, !tbaa !53
  store i16 %387, ptr %384, align 8, !tbaa !53
  store ptr %279, ptr %310, align 8, !tbaa !50
  store i8 3, ptr %280, align 2, !tbaa !49
  br label %388

388:                                              ; preds = %377, %374
  %389 = phi ptr [ %380, %377 ], [ %309, %374 ]
  br i1 %376, label %390, label %399

390:                                              ; preds = %351, %362, %388, %317, %313, %307
  %391 = phi ptr [ %389, %388 ], [ %309, %317 ], [ %309, %313 ], [ %309, %307 ], [ %309, %362 ], [ %309, %351 ]
  %392 = load ptr, ptr %308, align 8, !tbaa !54
  %393 = icmp eq ptr %392, null
  br i1 %393, label %399, label %307, !llvm.loop !69

394:                                              ; preds = %342, %358
  %395 = phi ptr [ %311, %342 ], [ %361, %358 ]
  %396 = getelementptr inbounds %struct.ScanFillVert, ptr %395, i64 0, i32 7
  %397 = load i8, ptr %396, align 2, !tbaa !49
  %398 = add i8 %397, 1
  store i8 %398, ptr %396, align 2, !tbaa !49
  store i8 0, ptr %280, align 2, !tbaa !49
  br label %399

399:                                              ; preds = %390, %388, %394, %298, %278
  %400 = load ptr, ptr %279, align 8, !tbaa !54
  %401 = icmp eq ptr %400, null
  br i1 %401, label %276, label %278, !llvm.loop !70

402:                                              ; preds = %435, %405
  %403 = phi i8 [ 0, %405 ], [ %436, %435 ]
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %438, label %405, !llvm.loop !71

405:                                              ; preds = %276, %402
  %406 = phi i32 [ 0, %276 ], [ %407, %402 ]
  %407 = add i32 %406, 1
  %408 = and i32 %406, 1
  %409 = icmp eq i32 %408, 0
  %410 = select i1 %409, ptr %8, ptr %277
  %411 = load ptr, ptr %410, align 8, !tbaa !54
  %412 = icmp eq ptr %411, null
  br i1 %412, label %402, label %413

413:                                              ; preds = %405, %435
  %414 = phi i8 [ %436, %435 ], [ 0, %405 ]
  %415 = phi ptr [ %418, %435 ], [ %411, %405 ]
  %416 = getelementptr inbounds %struct.ScanFillEdge, ptr %415, i64 0, i32 1
  %417 = select i1 %409, ptr %415, ptr %416
  %418 = load ptr, ptr %417, align 8, !tbaa !54
  %419 = getelementptr inbounds %struct.ScanFillEdge, ptr %415, i64 0, i32 2
  %420 = load ptr, ptr %419, align 8, !tbaa !50
  %421 = getelementptr inbounds %struct.ScanFillVert, ptr %420, i64 0, i32 7
  %422 = load i8, ptr %421, align 2, !tbaa !49
  %423 = icmp eq i8 %422, 1
  %424 = getelementptr inbounds %struct.ScanFillEdge, ptr %415, i64 0, i32 3
  %425 = load ptr, ptr %424, align 8, !tbaa !52
  %426 = getelementptr inbounds %struct.ScanFillVert, ptr %425, i64 0, i32 7
  %427 = load i8, ptr %426, align 2, !tbaa !49
  br i1 %423, label %430, label %428

428:                                              ; preds = %413
  %429 = icmp eq i8 %427, 1
  br i1 %429, label %430, label %435

430:                                              ; preds = %428, %413
  %431 = phi i8 [ %427, %413 ], [ %422, %428 ]
  %432 = phi ptr [ %426, %413 ], [ %421, %428 ]
  %433 = phi ptr [ %420, %413 ], [ %425, %428 ]
  %434 = add i8 %431, -1
  store i8 %434, ptr %432, align 2, !tbaa !49
  call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef %433) #11
  call void @BLI_remlink(ptr noundef nonnull %8, ptr noundef nonnull %415) #11
  br label %435

435:                                              ; preds = %430, %428
  %436 = phi i8 [ %414, %428 ], [ 1, %430 ]
  %437 = icmp eq ptr %418, null
  br i1 %437, label %402, label %413, !llvm.loop !72

438:                                              ; preds = %402
  %439 = load ptr, ptr %8, align 8, !tbaa !73
  %440 = icmp eq ptr %439, null
  br i1 %440, label %1297, label %455

441:                                              ; preds = %250, %441
  %442 = phi ptr [ %453, %441 ], [ %251, %250 ]
  %443 = getelementptr inbounds %struct.ScanFillEdge, ptr %442, i64 0, i32 2
  %444 = load ptr, ptr %443, align 8, !tbaa !50
  %445 = getelementptr inbounds %struct.ScanFillVert, ptr %444, i64 0, i32 7
  %446 = load i8, ptr %445, align 2, !tbaa !49
  %447 = add i8 %446, 1
  store i8 %447, ptr %445, align 2, !tbaa !49
  %448 = getelementptr inbounds %struct.ScanFillEdge, ptr %442, i64 0, i32 3
  %449 = load ptr, ptr %448, align 8, !tbaa !52
  %450 = getelementptr inbounds %struct.ScanFillVert, ptr %449, i64 0, i32 7
  %451 = load i8, ptr %450, align 2, !tbaa !49
  %452 = add i8 %451, 1
  store i8 %452, ptr %450, align 2, !tbaa !49
  %453 = load ptr, ptr %442, align 8, !tbaa !54
  %454 = icmp eq ptr %453, null
  br i1 %454, label %455, label %441, !llvm.loop !74

455:                                              ; preds = %441, %250, %438
  %456 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %457 = zext i16 %247 to i64
  %458 = mul nuw nsw i64 %457, 28
  %459 = call ptr %456(i64 noundef %458, ptr noundef nonnull @.str) #11
  %460 = icmp eq i16 %247, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %464, %455
  %462 = load ptr, ptr %8, align 8, !tbaa !54
  %463 = icmp eq ptr %462, null
  br i1 %463, label %477, label %480

464:                                              ; preds = %455, %464
  %465 = phi i16 [ %475, %464 ], [ 0, %455 ]
  %466 = phi ptr [ %474, %464 ], [ %459, %455 ]
  %467 = getelementptr inbounds %struct.PolyFill, ptr %466, i64 0, i32 1
  store i32 0, ptr %467, align 4, !tbaa !75
  store i32 0, ptr %466, align 4, !tbaa !77
  %468 = getelementptr inbounds %struct.PolyFill, ptr %466, i64 0, i32 2
  %469 = getelementptr inbounds %struct.PolyFill, ptr %466, i64 0, i32 2, i64 1
  store float 0x4415AF1D80000000, ptr %469, align 4, !tbaa !42
  store float 0x4415AF1D80000000, ptr %468, align 4, !tbaa !42
  %470 = getelementptr inbounds %struct.PolyFill, ptr %466, i64 0, i32 3
  %471 = getelementptr inbounds %struct.PolyFill, ptr %466, i64 0, i32 3, i64 1
  store float 0xC415AF1D80000000, ptr %471, align 4, !tbaa !42
  store float 0xC415AF1D80000000, ptr %470, align 4, !tbaa !42
  %472 = getelementptr inbounds %struct.PolyFill, ptr %466, i64 0, i32 5
  store i8 0, ptr %472, align 2, !tbaa !78
  %473 = getelementptr inbounds %struct.PolyFill, ptr %466, i64 0, i32 4
  store i16 %465, ptr %473, align 4, !tbaa !79
  %474 = getelementptr inbounds %struct.PolyFill, ptr %466, i64 1
  %475 = add nuw i16 %465, 1
  %476 = icmp eq i16 %475, %247
  br i1 %476, label %461, label %464, !llvm.loop !80

477:                                              ; preds = %480, %461
  %478 = load ptr, ptr %0, align 8, !tbaa !54
  %479 = icmp eq ptr %478, null
  br i1 %479, label %528, label %490

480:                                              ; preds = %461, %480
  %481 = phi ptr [ %488, %480 ], [ %462, %461 ]
  %482 = getelementptr inbounds %struct.ScanFillEdge, ptr %481, i64 0, i32 4
  %483 = load i16, ptr %482, align 8, !tbaa !53
  %484 = zext i16 %483 to i64
  %485 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %484
  %486 = load i32, ptr %485, align 4, !tbaa !77
  %487 = add i32 %486, 1
  store i32 %487, ptr %485, align 4, !tbaa !77
  %488 = load ptr, ptr %481, align 8, !tbaa !54
  %489 = icmp eq ptr %488, null
  br i1 %489, label %477, label %480, !llvm.loop !81

490:                                              ; preds = %477, %525
  %491 = phi ptr [ %526, %525 ], [ %478, %477 ]
  %492 = getelementptr inbounds %struct.ScanFillVert, ptr %491, i64 0, i32 6
  %493 = load i16, ptr %492, align 8, !tbaa !48
  %494 = zext i16 %493 to i64
  %495 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %494, i32 1
  %496 = load i32, ptr %495, align 4, !tbaa !75
  %497 = add i32 %496, 1
  store i32 %497, ptr %495, align 4, !tbaa !75
  %498 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %494, i32 2
  %499 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %494, i32 3
  %500 = load float, ptr %498, align 4, !tbaa !42
  %501 = getelementptr inbounds %struct.ScanFillVert, ptr %491, i64 0, i32 4
  %502 = load float, ptr %501, align 4, !tbaa !42
  %503 = fcmp olt float %500, %502
  %504 = select i1 %503, float %500, float %502
  store float %504, ptr %498, align 4, !tbaa !42
  %505 = getelementptr inbounds float, ptr %498, i64 1
  %506 = load float, ptr %505, align 4, !tbaa !42
  %507 = getelementptr inbounds %struct.ScanFillVert, ptr %491, i64 0, i32 4, i64 1
  %508 = load float, ptr %507, align 4, !tbaa !42
  %509 = fcmp olt float %506, %508
  %510 = select i1 %509, float %506, float %508
  store float %510, ptr %505, align 4, !tbaa !42
  %511 = load float, ptr %499, align 4, !tbaa !42
  %512 = load float, ptr %501, align 4, !tbaa !42
  %513 = fcmp ogt float %511, %512
  %514 = select i1 %513, float %511, float %512
  store float %514, ptr %499, align 4, !tbaa !42
  %515 = getelementptr inbounds float, ptr %499, i64 1
  %516 = load float, ptr %515, align 4, !tbaa !42
  %517 = load float, ptr %507, align 4, !tbaa !42
  %518 = fcmp ogt float %516, %517
  %519 = select i1 %518, float %516, float %517
  store float %519, ptr %515, align 4, !tbaa !42
  %520 = getelementptr inbounds %struct.ScanFillVert, ptr %491, i64 0, i32 7
  %521 = load i8, ptr %520, align 2, !tbaa !49
  %522 = icmp ugt i8 %521, 2
  br i1 %522, label %523, label %525

523:                                              ; preds = %490
  %524 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %494, i32 5
  store i8 1, ptr %524, align 2, !tbaa !78
  br label %525

525:                                              ; preds = %490, %523
  %526 = load ptr, ptr %491, align 8, !tbaa !54
  %527 = icmp eq ptr %526, null
  br i1 %527, label %528, label %490, !llvm.loop !82

528:                                              ; preds = %525, %477
  %529 = and i32 %1, 8
  %530 = icmp ne i32 %529, 0
  %531 = icmp ugt i16 %247, 1
  %532 = select i1 %530, i1 %531, i1 false
  br i1 %532, label %533, label %671

533:                                              ; preds = %528
  call void @qsort(ptr noundef %459, i64 noundef %457, i64 noundef 28, ptr noundef nonnull @vergpoly) #11
  %534 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %535 = shl nuw nsw i64 %457, 1
  %536 = call ptr %534(i64 noundef %535, ptr noundef nonnull @.str.1) #11
  %537 = zext i16 %247 to i64
  br label %538

538:                                              ; preds = %533, %663
  %539 = phi i64 [ 1, %533 ], [ %667, %663 ]
  %540 = phi ptr [ %536, %533 ], [ %664, %663 ]
  %541 = phi i16 [ 0, %533 ], [ %665, %663 ]
  %542 = phi ptr [ %459, %533 ], [ %666, %663 ]
  %543 = add nuw i16 %541, 1
  %544 = icmp ult i16 %543, %247
  br i1 %544, label %545, label %550

545:                                              ; preds = %538
  %546 = getelementptr inbounds %struct.PolyFill, ptr %542, i64 0, i32 3
  %547 = getelementptr inbounds %struct.PolyFill, ptr %542, i64 0, i32 3, i64 1
  %548 = getelementptr inbounds %struct.PolyFill, ptr %542, i64 0, i32 2
  %549 = getelementptr inbounds %struct.PolyFill, ptr %542, i64 0, i32 2, i64 1
  br label %563

550:                                              ; preds = %613, %538
  %551 = phi ptr [ %540, %538 ], [ %614, %613 ]
  %552 = icmp eq ptr %551, %536
  br i1 %552, label %663, label %553

553:                                              ; preds = %550
  %554 = load ptr, ptr %0, align 8, !tbaa !54
  %555 = icmp eq ptr %554, null
  %556 = getelementptr inbounds %struct.PolyFill, ptr %542, i64 0, i32 4
  %557 = load ptr, ptr %8, align 8, !tbaa !54
  %558 = icmp eq ptr %557, null
  %559 = getelementptr inbounds %struct.PolyFill, ptr %542, i64 0, i32 4
  %560 = getelementptr inbounds %struct.PolyFill, ptr %542, i64 0, i32 1
  %561 = getelementptr inbounds %struct.PolyFill, ptr %542, i64 0, i32 5
  %562 = load i8, ptr %561, align 2, !tbaa !78
  br label %617

563:                                              ; preds = %545, %613
  %564 = phi i64 [ %539, %545 ], [ %615, %613 ]
  %565 = phi ptr [ %540, %545 ], [ %614, %613 ]
  %566 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %564
  %567 = load i32, ptr %566, align 4, !tbaa !77
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %613, label %569

569:                                              ; preds = %563
  %570 = load i32, ptr %542, align 4, !tbaa !77
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %613, label %572

572:                                              ; preds = %569
  %573 = load float, ptr %546, align 4, !tbaa !42
  %574 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %564, i32 2
  %575 = load float, ptr %574, align 4, !tbaa !42
  %576 = fcmp olt float %573, %575
  br i1 %576, label %613, label %577

577:                                              ; preds = %572
  %578 = load float, ptr %547, align 4, !tbaa !42
  %579 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %564, i32 2, i64 1
  %580 = load float, ptr %579, align 4, !tbaa !42
  %581 = fcmp olt float %578, %580
  br i1 %581, label %613, label %582

582:                                              ; preds = %577
  %583 = load float, ptr %548, align 4, !tbaa !42
  %584 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %564, i32 3
  %585 = load float, ptr %584, align 4, !tbaa !42
  %586 = fcmp ogt float %583, %585
  br i1 %586, label %613, label %587

587:                                              ; preds = %582
  %588 = load float, ptr %549, align 4, !tbaa !42
  %589 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %564, i32 3, i64 1
  %590 = load float, ptr %589, align 4, !tbaa !42
  %591 = fcmp ogt float %588, %590
  br i1 %591, label %613, label %592

592:                                              ; preds = %587
  %593 = fcmp olt float %573, %585
  br i1 %593, label %594, label %595

594:                                              ; preds = %592
  store float %585, ptr %546, align 4, !tbaa !42
  br label %595

595:                                              ; preds = %594, %592
  %596 = load float, ptr %547, align 4, !tbaa !42
  %597 = load float, ptr %589, align 4, !tbaa !42
  %598 = fcmp olt float %596, %597
  br i1 %598, label %599, label %600

599:                                              ; preds = %595
  store float %597, ptr %547, align 4, !tbaa !42
  br label %600

600:                                              ; preds = %599, %595
  %601 = load float, ptr %548, align 4, !tbaa !42
  %602 = load float, ptr %574, align 4, !tbaa !42
  %603 = fcmp ogt float %601, %602
  br i1 %603, label %604, label %605

604:                                              ; preds = %600
  store float %602, ptr %548, align 4, !tbaa !42
  br label %605

605:                                              ; preds = %604, %600
  %606 = load float, ptr %549, align 4, !tbaa !42
  %607 = load float, ptr %579, align 4, !tbaa !42
  %608 = fcmp ogt float %606, %607
  br i1 %608, label %609, label %610

609:                                              ; preds = %605
  store float %607, ptr %549, align 4, !tbaa !42
  br label %610

610:                                              ; preds = %609, %605
  %611 = trunc i64 %564 to i16
  store i16 %611, ptr %565, align 2, !tbaa !83
  %612 = getelementptr inbounds i16, ptr %565, i64 1
  br label %613

613:                                              ; preds = %569, %563, %572, %577, %582, %587, %610
  %614 = phi ptr [ %612, %610 ], [ %565, %587 ], [ %565, %582 ], [ %565, %577 ], [ %565, %572 ], [ %565, %563 ], [ %565, %569 ]
  %615 = add nuw nsw i64 %564, 1
  %616 = icmp ult i64 %615, %537
  br i1 %616, label %563, label %550, !llvm.loop !84

617:                                              ; preds = %553, %651
  %618 = phi i8 [ %562, %553 ], [ %661, %651 ]
  %619 = phi ptr [ %551, %553 ], [ %620, %651 ]
  %620 = getelementptr inbounds i16, ptr %619, i64 -1
  %621 = load i16, ptr %620, align 2, !tbaa !83
  %622 = zext i16 %621 to i64
  %623 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %622
  br i1 %555, label %627, label %624

624:                                              ; preds = %617
  %625 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %622, i32 4
  %626 = load i16, ptr %625, align 4, !tbaa !79
  br label %631

627:                                              ; preds = %638, %617
  br i1 %558, label %651, label %628

628:                                              ; preds = %627
  %629 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %622, i32 4
  %630 = load i16, ptr %629, align 4, !tbaa !79
  br label %641

631:                                              ; preds = %624, %638
  %632 = phi ptr [ %554, %624 ], [ %639, %638 ]
  %633 = getelementptr inbounds %struct.ScanFillVert, ptr %632, i64 0, i32 6
  %634 = load i16, ptr %633, align 8, !tbaa !48
  %635 = icmp eq i16 %634, %626
  br i1 %635, label %636, label %638

636:                                              ; preds = %631
  %637 = load i16, ptr %556, align 4, !tbaa !79
  store i16 %637, ptr %633, align 8, !tbaa !48
  br label %638

638:                                              ; preds = %636, %631
  %639 = load ptr, ptr %632, align 8, !tbaa !54
  %640 = icmp eq ptr %639, null
  br i1 %640, label %627, label %631, !llvm.loop !85

641:                                              ; preds = %628, %648
  %642 = phi ptr [ %557, %628 ], [ %649, %648 ]
  %643 = getelementptr inbounds %struct.ScanFillEdge, ptr %642, i64 0, i32 4
  %644 = load i16, ptr %643, align 8, !tbaa !53
  %645 = icmp eq i16 %644, %630
  br i1 %645, label %646, label %648

646:                                              ; preds = %641
  %647 = load i16, ptr %559, align 4, !tbaa !79
  store i16 %647, ptr %643, align 8, !tbaa !53
  br label %648

648:                                              ; preds = %646, %641
  %649 = load ptr, ptr %642, align 8, !tbaa !54
  %650 = icmp eq ptr %649, null
  br i1 %650, label %651, label %641, !llvm.loop !86

651:                                              ; preds = %648, %627
  %652 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %622, i32 1
  %653 = load i32, ptr %652, align 4, !tbaa !75
  %654 = load i32, ptr %560, align 4, !tbaa !75
  %655 = add i32 %654, %653
  store i32 %655, ptr %560, align 4, !tbaa !75
  %656 = load i32, ptr %623, align 4, !tbaa !77
  %657 = load i32, ptr %542, align 4, !tbaa !77
  %658 = add i32 %657, %656
  store i32 %658, ptr %542, align 4, !tbaa !77
  store i32 0, ptr %623, align 4, !tbaa !77
  store i32 0, ptr %652, align 4, !tbaa !75
  %659 = getelementptr inbounds %struct.PolyFill, ptr %459, i64 %622, i32 5
  %660 = load i8, ptr %659, align 2, !tbaa !78
  %661 = or i8 %660, %618
  store i8 %661, ptr %561, align 2, !tbaa !78
  %662 = icmp eq ptr %620, %536
  br i1 %662, label %663, label %617, !llvm.loop !87

663:                                              ; preds = %651, %550
  %664 = phi ptr [ %551, %550 ], [ %620, %651 ]
  %665 = add nuw i16 %541, 1
  %666 = getelementptr inbounds %struct.PolyFill, ptr %542, i64 1
  %667 = add nuw nsw i64 %539, 1
  %668 = icmp eq i16 %665, %247
  br i1 %668, label %669, label %538, !llvm.loop !88

669:                                              ; preds = %663
  %670 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %670(ptr noundef %536) #11
  br label %671

671:                                              ; preds = %669, %528
  %672 = load ptr, ptr %0, align 8, !tbaa !89
  store ptr %672, ptr %4, align 8, !tbaa !73
  %673 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %674 = load ptr, ptr %673, align 8, !tbaa !59
  %675 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  store ptr %674, ptr %675, align 8, !tbaa !90
  %676 = load ptr, ptr %8, align 8, !tbaa !91
  store ptr %676, ptr %5, align 8, !tbaa !73
  %677 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1, i32 1
  %678 = load ptr, ptr %677, align 8, !tbaa !92
  %679 = getelementptr inbounds %struct.ListBase, ptr %5, i64 0, i32 1
  store ptr %678, ptr %679, align 8, !tbaa !90
  %680 = icmp eq i16 %247, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br i1 %680, label %1293, label %681

681:                                              ; preds = %671
  %682 = and i32 %1, 2
  %683 = icmp eq i32 %682, 0
  %684 = icmp eq i32 %529, 0
  %685 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 4
  %686 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 4
  %687 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 2
  br label %688

688:                                              ; preds = %681, %1288
  %689 = phi i16 [ 0, %681 ], [ %1291, %1288 ]
  %690 = phi i32 [ 0, %681 ], [ %1289, %1288 ]
  %691 = phi ptr [ %459, %681 ], [ %1290, %1288 ]
  %692 = load i32, ptr %691, align 4, !tbaa !77
  %693 = icmp ugt i32 %692, 1
  br i1 %693, label %694, label %1288

694:                                              ; preds = %688
  %695 = getelementptr inbounds %struct.PolyFill, ptr %691, i64 0, i32 4
  %696 = load i16, ptr %695, align 4, !tbaa !79
  call void @BLI_movelisttolist(ptr noundef nonnull %4, ptr noundef nonnull %0) #11
  call void @BLI_movelisttolist(ptr noundef nonnull %5, ptr noundef nonnull %8) #11
  %697 = load ptr, ptr %4, align 8, !tbaa !73
  %698 = icmp eq ptr %697, null
  br i1 %698, label %708, label %699

699:                                              ; preds = %694, %706
  %700 = phi ptr [ %701, %706 ], [ %697, %694 ]
  %701 = load ptr, ptr %700, align 8, !tbaa !93
  %702 = getelementptr inbounds %struct.ScanFillVert, ptr %700, i64 0, i32 6
  %703 = load i16, ptr %702, align 8, !tbaa !48
  %704 = icmp eq i16 %703, %696
  br i1 %704, label %705, label %706

705:                                              ; preds = %699
  call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %700) #11
  call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef nonnull %700) #11
  br label %706

706:                                              ; preds = %705, %699
  %707 = icmp eq ptr %701, null
  br i1 %707, label %708, label %699, !llvm.loop !94

708:                                              ; preds = %706, %694
  %709 = load ptr, ptr %5, align 8, !tbaa !73
  %710 = icmp eq ptr %709, null
  br i1 %710, label %720, label %711

711:                                              ; preds = %708, %718
  %712 = phi ptr [ %713, %718 ], [ %709, %708 ]
  %713 = load ptr, ptr %712, align 8, !tbaa !95
  %714 = getelementptr inbounds %struct.ScanFillEdge, ptr %712, i64 0, i32 4
  %715 = load i16, ptr %714, align 8, !tbaa !53
  %716 = icmp eq i16 %715, %696
  br i1 %716, label %717, label %718

717:                                              ; preds = %711
  call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %712) #11
  call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef nonnull %712) #11
  br label %718

718:                                              ; preds = %717, %711
  %719 = icmp eq ptr %713, null
  br i1 %719, label %720, label %711, !llvm.loop !96

720:                                              ; preds = %718, %708
  %721 = load i16, ptr %695, align 4, !tbaa !79
  br i1 %683, label %791, label %722

722:                                              ; preds = %720
  %723 = load ptr, ptr %8, align 8, !tbaa !54
  %724 = icmp eq ptr %723, null
  br i1 %724, label %791, label %725

725:                                              ; preds = %722, %788
  %726 = phi ptr [ %789, %788 ], [ %723, %722 ]
  %727 = getelementptr inbounds %struct.ScanFillEdge, ptr %726, i64 0, i32 2
  %728 = load ptr, ptr %727, align 8, !tbaa !50
  %729 = getelementptr inbounds %struct.ScanFillVert, ptr %728, i64 0, i32 4
  %730 = getelementptr inbounds %struct.ScanFillEdge, ptr %726, i64 0, i32 3
  %731 = load ptr, ptr %730, align 8, !tbaa !52
  %732 = getelementptr inbounds %struct.ScanFillVert, ptr %731, i64 0, i32 4
  %733 = load float, ptr %729, align 4, !tbaa !42
  %734 = load float, ptr %732, align 4, !tbaa !42
  %735 = fcmp oeq float %733, %734
  br i1 %735, label %736, label %743

736:                                              ; preds = %725
  %737 = getelementptr inbounds %struct.ScanFillVert, ptr %728, i64 0, i32 4, i64 1
  %738 = load float, ptr %737, align 4, !tbaa !42
  %739 = getelementptr inbounds %struct.ScanFillVert, ptr %731, i64 0, i32 4, i64 1
  %740 = load float, ptr %739, align 4, !tbaa !42
  %741 = fcmp oeq float %738, %740
  %742 = zext i1 %741 to i8
  br label %743

743:                                              ; preds = %736, %725
  %744 = phi i8 [ 0, %725 ], [ %742, %736 ]
  %745 = icmp eq i8 %744, 0
  br i1 %745, label %788, label %746

746:                                              ; preds = %743
  %747 = getelementptr inbounds %struct.ScanFillVert, ptr %728, i64 0, i32 8
  %748 = load i8, ptr %747, align 1
  %749 = and i8 %748, 15
  %750 = icmp eq i8 %749, 2
  br i1 %750, label %751, label %762

751:                                              ; preds = %746
  %752 = getelementptr inbounds %struct.ScanFillVert, ptr %731, i64 0, i32 8
  %753 = load i8, ptr %752, align 1
  %754 = and i8 %753, 15
  %755 = icmp eq i8 %754, 2
  br i1 %755, label %762, label %756

756:                                              ; preds = %751
  %757 = and i8 %753, -16
  %758 = or disjoint i8 %757, 2
  store i8 %758, ptr %752, align 1
  %759 = load ptr, ptr %727, align 8, !tbaa !50
  %760 = getelementptr inbounds %struct.ScanFillVert, ptr %759, i64 0, i32 2
  %761 = load ptr, ptr %730, align 8, !tbaa !52
  br label %783

762:                                              ; preds = %751, %746
  %763 = getelementptr inbounds %struct.ScanFillVert, ptr %731, i64 0, i32 8
  %764 = load i8, ptr %763, align 1
  %765 = and i8 %764, 15
  %766 = icmp ne i8 %765, 2
  %767 = or i1 %750, %766
  br i1 %767, label %774, label %768

768:                                              ; preds = %762
  %769 = and i8 %748, -16
  %770 = or disjoint i8 %769, 2
  store i8 %770, ptr %747, align 1
  %771 = load ptr, ptr %730, align 8, !tbaa !52
  %772 = getelementptr inbounds %struct.ScanFillVert, ptr %771, i64 0, i32 2
  %773 = load ptr, ptr %727, align 8, !tbaa !50
  br label %783

774:                                              ; preds = %762
  %775 = xor i1 %750, true
  %776 = or i1 %766, %775
  br i1 %776, label %779, label %777

777:                                              ; preds = %774
  %778 = getelementptr inbounds %struct.ScanFillVert, ptr %731, i64 0, i32 2
  br label %783

779:                                              ; preds = %774
  %780 = and i8 %764, -16
  %781 = or disjoint i8 %780, 2
  store i8 %781, ptr %763, align 1
  %782 = load ptr, ptr %730, align 8, !tbaa !52
  br label %783

783:                                              ; preds = %756, %768, %777, %779
  %784 = phi ptr [ %782, %779 ], [ %728, %777 ], [ %773, %768 ], [ %761, %756 ]
  %785 = phi ptr [ %727, %779 ], [ %778, %777 ], [ %772, %768 ], [ %760, %756 ]
  %786 = load ptr, ptr %785, align 8, !tbaa !41
  %787 = getelementptr inbounds %struct.ScanFillVert, ptr %784, i64 0, i32 2
  store ptr %786, ptr %787, align 8, !tbaa !41
  br label %788

788:                                              ; preds = %783, %743
  %789 = load ptr, ptr %726, align 8, !tbaa !54
  %790 = icmp eq ptr %789, null
  br i1 %790, label %791, label %725, !llvm.loop !97

791:                                              ; preds = %788, %722, %720
  %792 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %793 = getelementptr inbounds %struct.PolyFill, ptr %691, i64 0, i32 1
  %794 = load i32, ptr %793, align 4, !tbaa !75
  %795 = zext i32 %794 to i64
  %796 = mul nuw nsw i64 %795, 24
  %797 = call ptr %792(i64 noundef %796, ptr noundef nonnull @.str.2) #11
  %798 = load ptr, ptr %0, align 8, !tbaa !54
  %799 = icmp eq ptr %798, null
  br i1 %799, label %822, label %800

800:                                              ; preds = %791, %817
  %801 = phi ptr [ %820, %817 ], [ %798, %791 ]
  %802 = phi ptr [ %819, %817 ], [ %797, %791 ]
  %803 = phi i32 [ %818, %817 ], [ 0, %791 ]
  %804 = getelementptr inbounds %struct.ScanFillVert, ptr %801, i64 0, i32 6
  %805 = load i16, ptr %804, align 8, !tbaa !48
  %806 = icmp eq i16 %805, %721
  br i1 %806, label %807, label %817

807:                                              ; preds = %800
  %808 = getelementptr inbounds %struct.ScanFillVert, ptr %801, i64 0, i32 8
  %809 = load i8, ptr %808, align 1
  %810 = and i8 %809, 15
  %811 = icmp eq i8 %810, 2
  br i1 %811, label %817, label %812

812:                                              ; preds = %807
  %813 = add i32 %803, 1
  %814 = and i8 %809, -16
  store i8 %814, ptr %808, align 1
  store ptr %801, ptr %802, align 8, !tbaa !98
  %815 = getelementptr inbounds %struct.ScanFillVertLink, ptr %802, i64 0, i32 1
  %816 = getelementptr inbounds %struct.ScanFillVertLink, ptr %802, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %815, i8 0, i64 16, i1 false)
  br label %817

817:                                              ; preds = %812, %807, %800
  %818 = phi i32 [ %813, %812 ], [ %803, %807 ], [ %803, %800 ]
  %819 = phi ptr [ %816, %812 ], [ %802, %807 ], [ %802, %800 ]
  %820 = load ptr, ptr %801, align 8, !tbaa !54
  %821 = icmp eq ptr %820, null
  br i1 %821, label %822, label %800, !llvm.loop !100

822:                                              ; preds = %817, %791
  %823 = phi i32 [ 0, %791 ], [ %818, %817 ]
  %824 = zext i32 %823 to i64
  call void @qsort(ptr noundef %797, i64 noundef %824, i64 noundef 24, ptr noundef nonnull @vergscdata) #11
  %825 = load ptr, ptr %8, align 8, !tbaa !91
  %826 = icmp eq ptr %825, null
  br i1 %683, label %888, label %827

827:                                              ; preds = %822
  br i1 %826, label %901, label %828

828:                                              ; preds = %827, %886
  %829 = phi ptr [ %830, %886 ], [ %825, %827 ]
  %830 = load ptr, ptr %829, align 8, !tbaa !95
  call void @BLI_remlink(ptr noundef nonnull %8, ptr noundef nonnull %829) #11
  %831 = getelementptr inbounds %struct.ScanFillEdge, ptr %829, i64 0, i32 2
  %832 = load ptr, ptr %831, align 8, !tbaa !50
  %833 = getelementptr inbounds %struct.ScanFillVert, ptr %832, i64 0, i32 8
  %834 = load i8, ptr %833, align 1
  %835 = and i8 %834, 15
  %836 = icmp eq i8 %835, 2
  br i1 %836, label %837, label %855

837:                                              ; preds = %828
  %838 = load ptr, ptr %831, align 8, !tbaa !50
  %839 = getelementptr inbounds %struct.ScanFillVert, ptr %838, i64 0, i32 8
  %840 = load i8, ptr %839, align 1
  %841 = and i8 %840, 15
  %842 = icmp eq i8 %841, 2
  br i1 %842, label %843, label %855

843:                                              ; preds = %837, %850
  %844 = phi ptr [ %846, %850 ], [ %838, %837 ]
  %845 = getelementptr inbounds %struct.ScanFillVert, ptr %844, i64 0, i32 2
  %846 = load ptr, ptr %845, align 8, !tbaa !41
  %847 = icmp eq ptr %846, %832
  %848 = icmp eq ptr %844, %846
  %849 = or i1 %847, %848
  br i1 %849, label %855, label %850

850:                                              ; preds = %843
  store ptr %846, ptr %831, align 8, !tbaa !50
  %851 = getelementptr inbounds %struct.ScanFillVert, ptr %846, i64 0, i32 8
  %852 = load i8, ptr %851, align 1
  %853 = and i8 %852, 15
  %854 = icmp eq i8 %853, 2
  br i1 %854, label %843, label %855, !llvm.loop !101

855:                                              ; preds = %850, %843, %837, %828
  %856 = getelementptr inbounds %struct.ScanFillEdge, ptr %829, i64 0, i32 3
  %857 = load ptr, ptr %856, align 8, !tbaa !52
  %858 = getelementptr inbounds %struct.ScanFillVert, ptr %857, i64 0, i32 8
  %859 = load i8, ptr %858, align 1
  %860 = and i8 %859, 15
  %861 = icmp eq i8 %860, 2
  br i1 %861, label %862, label %880

862:                                              ; preds = %855
  %863 = load ptr, ptr %856, align 8, !tbaa !52
  %864 = getelementptr inbounds %struct.ScanFillVert, ptr %863, i64 0, i32 8
  %865 = load i8, ptr %864, align 1
  %866 = and i8 %865, 15
  %867 = icmp eq i8 %866, 2
  br i1 %867, label %868, label %880

868:                                              ; preds = %862, %875
  %869 = phi ptr [ %871, %875 ], [ %863, %862 ]
  %870 = getelementptr inbounds %struct.ScanFillVert, ptr %869, i64 0, i32 2
  %871 = load ptr, ptr %870, align 8, !tbaa !41
  %872 = icmp eq ptr %871, %857
  %873 = icmp eq ptr %869, %871
  %874 = or i1 %872, %873
  br i1 %874, label %880, label %875

875:                                              ; preds = %868
  store ptr %871, ptr %856, align 8, !tbaa !52
  %876 = getelementptr inbounds %struct.ScanFillVert, ptr %871, i64 0, i32 8
  %877 = load i8, ptr %876, align 1
  %878 = and i8 %877, 15
  %879 = icmp eq i8 %878, 2
  br i1 %879, label %868, label %880, !llvm.loop !102

880:                                              ; preds = %875, %868, %862, %855
  %881 = load ptr, ptr %831, align 8, !tbaa !50
  %882 = load ptr, ptr %856, align 8, !tbaa !52
  %883 = icmp eq ptr %881, %882
  br i1 %883, label %886, label %884

884:                                              ; preds = %880
  %885 = call fastcc ptr @addedgetoscanlist(ptr noundef %797, ptr noundef nonnull %829, i32 noundef %823)
  br label %886

886:                                              ; preds = %884, %880
  %887 = icmp eq ptr %830, null
  br i1 %887, label %901, label %828, !llvm.loop !103

888:                                              ; preds = %822
  br i1 %826, label %901, label %889

889:                                              ; preds = %888, %899
  %890 = phi ptr [ %891, %899 ], [ %825, %888 ]
  %891 = load ptr, ptr %890, align 8, !tbaa !95
  call void @BLI_remlink(ptr noundef nonnull %8, ptr noundef nonnull %890) #11
  %892 = getelementptr inbounds %struct.ScanFillEdge, ptr %890, i64 0, i32 2
  %893 = load ptr, ptr %892, align 8, !tbaa !50
  %894 = getelementptr inbounds %struct.ScanFillEdge, ptr %890, i64 0, i32 3
  %895 = load ptr, ptr %894, align 8, !tbaa !52
  %896 = icmp eq ptr %893, %895
  br i1 %896, label %899, label %897

897:                                              ; preds = %889
  %898 = call fastcc ptr @addedgetoscanlist(ptr noundef %797, ptr noundef nonnull %890, i32 noundef %823)
  br label %899

899:                                              ; preds = %897, %889
  %900 = icmp eq ptr %891, null
  br i1 %900, label %901, label %889, !llvm.loop !104

901:                                              ; preds = %886, %899, %827, %888
  %902 = getelementptr inbounds %struct.PolyFill, ptr %691, i64 0, i32 5
  %903 = load i8, ptr %902, align 2, !tbaa !78
  %904 = icmp eq i8 %903, 0
  %905 = shl i32 %823, 1
  %906 = add i32 %823, -2
  %907 = select i1 %684, i32 %906, i32 %905
  %908 = icmp eq i32 %823, 0
  br i1 %908, label %1284, label %909

909:                                              ; preds = %901, %1278
  %910 = phi ptr [ %1281, %1278 ], [ %797, %901 ]
  %911 = phi i32 [ %1280, %1278 ], [ 0, %901 ]
  %912 = phi i32 [ %1282, %1278 ], [ 0, %901 ]
  %913 = getelementptr inbounds %struct.ScanFillVertLink, ptr %910, i64 0, i32 1
  %914 = load ptr, ptr %913, align 8, !tbaa !105
  %915 = icmp eq ptr %914, null
  br i1 %915, label %916, label %922

916:                                              ; preds = %956, %909
  %917 = load ptr, ptr %913, align 8, !tbaa !105
  %918 = icmp eq ptr %917, null
  br i1 %918, label %1278, label %919

919:                                              ; preds = %916
  %920 = add i32 %912, 1
  %921 = icmp ult i32 %920, %823
  br label %961

922:                                              ; preds = %909, %956
  %923 = phi ptr [ %924, %956 ], [ %914, %909 ]
  %924 = load ptr, ptr %923, align 8, !tbaa !95
  %925 = getelementptr inbounds %struct.ScanFillEdge, ptr %923, i64 0, i32 2
  %926 = load ptr, ptr %925, align 8, !tbaa !50
  %927 = getelementptr inbounds %struct.ScanFillVert, ptr %926, i64 0, i32 7
  %928 = load i8, ptr %927, align 2, !tbaa !49
  %929 = icmp eq i8 %928, 1
  br i1 %929, label %936, label %930

930:                                              ; preds = %922
  %931 = getelementptr inbounds %struct.ScanFillEdge, ptr %923, i64 0, i32 3
  %932 = load ptr, ptr %931, align 8, !tbaa !52
  %933 = getelementptr inbounds %struct.ScanFillVert, ptr %932, i64 0, i32 7
  %934 = load i8, ptr %933, align 2, !tbaa !49
  %935 = icmp eq i8 %934, 1
  br i1 %935, label %936, label %951

936:                                              ; preds = %930, %922
  call void @BLI_remlink(ptr noundef nonnull %913, ptr noundef nonnull %923) #11
  call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef nonnull %923) #11
  %937 = load ptr, ptr %925, align 8, !tbaa !50
  %938 = getelementptr inbounds %struct.ScanFillVert, ptr %937, i64 0, i32 7
  %939 = load i8, ptr %938, align 2, !tbaa !49
  %940 = icmp ugt i8 %939, 1
  br i1 %940, label %941, label %943

941:                                              ; preds = %936
  %942 = add i8 %939, -1
  store i8 %942, ptr %938, align 2, !tbaa !49
  br label %943

943:                                              ; preds = %941, %936
  %944 = getelementptr inbounds %struct.ScanFillEdge, ptr %923, i64 0, i32 3
  %945 = load ptr, ptr %944, align 8, !tbaa !52
  %946 = getelementptr inbounds %struct.ScanFillVert, ptr %945, i64 0, i32 7
  %947 = load i8, ptr %946, align 2, !tbaa !49
  %948 = icmp ugt i8 %947, 1
  br i1 %948, label %949, label %956

949:                                              ; preds = %943
  %950 = add i8 %947, -1
  store i8 %950, ptr %946, align 2, !tbaa !49
  br label %956

951:                                              ; preds = %930
  %952 = getelementptr inbounds %struct.ScanFillVert, ptr %932, i64 0, i32 8
  %953 = load i8, ptr %952, align 1
  %954 = and i8 %953, -16
  %955 = or disjoint i8 %954, 1
  store i8 %955, ptr %952, align 1
  br label %956

956:                                              ; preds = %951, %949, %943
  %957 = icmp eq ptr %924, null
  br i1 %957, label %916, label %922, !llvm.loop !106

958:                                              ; preds = %1276, %1243
  %959 = load ptr, ptr %913, align 8, !tbaa !105
  %960 = icmp eq ptr %959, null
  br i1 %960, label %1278, label %961, !llvm.loop !107

961:                                              ; preds = %919, %958
  %962 = phi ptr [ %917, %919 ], [ %959, %958 ]
  %963 = phi i32 [ %911, %919 ], [ %1244, %958 ]
  %964 = load ptr, ptr %962, align 8, !tbaa !95
  %965 = icmp ult i32 %963, %907
  br i1 %965, label %966, label %1278

966:                                              ; preds = %961
  %967 = icmp eq ptr %964, null
  br i1 %967, label %968, label %983

968:                                              ; preds = %966
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %913, i8 0, i64 16, i1 false)
  call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef nonnull %962) #11
  %969 = getelementptr inbounds %struct.ScanFillEdge, ptr %962, i64 0, i32 3
  %970 = load ptr, ptr %969, align 8, !tbaa !52
  %971 = getelementptr inbounds %struct.ScanFillVert, ptr %970, i64 0, i32 8
  %972 = load i8, ptr %971, align 1
  %973 = and i8 %972, -16
  store i8 %973, ptr %971, align 1
  %974 = getelementptr inbounds %struct.ScanFillEdge, ptr %962, i64 0, i32 2
  %975 = load ptr, ptr %974, align 8, !tbaa !50
  %976 = getelementptr inbounds %struct.ScanFillVert, ptr %975, i64 0, i32 7
  %977 = load i8, ptr %976, align 2, !tbaa !49
  %978 = add i8 %977, -1
  store i8 %978, ptr %976, align 2, !tbaa !49
  %979 = load ptr, ptr %969, align 8, !tbaa !52
  %980 = getelementptr inbounds %struct.ScanFillVert, ptr %979, i64 0, i32 7
  %981 = load i8, ptr %980, align 2, !tbaa !49
  %982 = add i8 %981, -1
  store i8 %982, ptr %980, align 2, !tbaa !49
  br label %1243

983:                                              ; preds = %966
  %984 = getelementptr inbounds %struct.ScanFillEdge, ptr %962, i64 0, i32 3
  %985 = load ptr, ptr %984, align 8, !tbaa !52
  %986 = getelementptr inbounds %struct.ScanFillEdge, ptr %962, i64 0, i32 2
  %987 = load ptr, ptr %986, align 8, !tbaa !50
  %988 = getelementptr inbounds %struct.ScanFillEdge, ptr %964, i64 0, i32 3
  %989 = load ptr, ptr %988, align 8, !tbaa !52
  %990 = icmp ne ptr %985, %987
  %991 = icmp ne ptr %987, %989
  %992 = select i1 %990, i1 %991, i1 false
  br i1 %992, label %993, label %1241

993:                                              ; preds = %983
  %994 = getelementptr inbounds %struct.ScanFillVert, ptr %985, i64 0, i32 4
  %995 = getelementptr inbounds %struct.ScanFillVert, ptr %985, i64 0, i32 4, i64 1
  %996 = load float, ptr %995, align 4, !tbaa !42
  %997 = getelementptr inbounds %struct.ScanFillVert, ptr %989, i64 0, i32 4
  %998 = getelementptr inbounds %struct.ScanFillVert, ptr %989, i64 0, i32 4, i64 1
  %999 = load float, ptr %998, align 4, !tbaa !42
  %1000 = fcmp olt float %996, %999
  %1001 = select i1 %1000, float %996, float %999
  br i1 %921, label %1002, label %1110

1002:                                             ; preds = %993
  %1003 = getelementptr inbounds %struct.ScanFillVert, ptr %987, i64 0, i32 4
  %1004 = getelementptr inbounds %struct.ScanFillVert, ptr %985, i64 0, i32 4, i64 1
  %1005 = getelementptr inbounds %struct.ScanFillVert, ptr %987, i64 0, i32 4, i64 1
  %1006 = getelementptr inbounds %struct.ScanFillVert, ptr %989, i64 0, i32 4, i64 1
  br label %1007

1007:                                             ; preds = %1002, %1104
  %1008 = phi i32 [ %920, %1002 ], [ %1108, %1104 ]
  %1009 = phi ptr [ %910, %1002 ], [ %1013, %1104 ]
  %1010 = phi i8 [ 0, %1002 ], [ %1107, %1104 ]
  %1011 = phi float [ 0x40091EB860000000, %1002 ], [ %1106, %1104 ]
  %1012 = phi ptr [ null, %1002 ], [ %1105, %1104 ]
  %1013 = getelementptr inbounds %struct.ScanFillVertLink, ptr %1009, i64 1
  %1014 = load ptr, ptr %1013, align 8, !tbaa !98
  %1015 = getelementptr inbounds %struct.ScanFillVert, ptr %1014, i64 0, i32 8
  %1016 = load i8, ptr %1015, align 1
  %1017 = and i8 %1016, 15
  %1018 = icmp eq i8 %1017, 0
  br i1 %1018, label %1019, label %1104

1019:                                             ; preds = %1007
  %1020 = getelementptr inbounds %struct.ScanFillVert, ptr %1014, i64 0, i32 4, i64 1
  %1021 = load float, ptr %1020, align 4, !tbaa !42
  %1022 = fcmp ugt float %1021, %1001
  br i1 %1022, label %1023, label %1110

1023:                                             ; preds = %1019
  %1024 = getelementptr inbounds %struct.ScanFillVert, ptr %1014, i64 0, i32 4
  %1025 = load float, ptr %1003, align 4, !tbaa !42
  %1026 = load float, ptr %994, align 4, !tbaa !42
  %1027 = fsub float %1025, %1026
  %1028 = load float, ptr %1004, align 4, !tbaa !42
  %1029 = getelementptr inbounds %struct.ScanFillVert, ptr %1014, i64 0, i32 4, i64 1
  %1030 = load float, ptr %1029, align 4, !tbaa !42
  %1031 = fsub float %1028, %1030
  %1032 = load float, ptr %1005, align 4, !tbaa !42
  %1033 = fsub float %1028, %1032
  %1034 = load float, ptr %1024, align 4, !tbaa !42
  %1035 = fsub float %1026, %1034
  %1036 = fmul float %1033, %1035
  %1037 = call float @llvm.fmuladd.f32(float %1027, float %1031, float %1036)
  %1038 = fcmp olt float %1037, 0.000000e+00
  br i1 %1038, label %1104, label %1039

1039:                                             ; preds = %1023
  %1040 = fcmp oeq float %1037, 0.000000e+00
  br i1 %1040, label %1041, label %1049

1041:                                             ; preds = %1039
  %1042 = fcmp oeq float %1026, %1034
  %1043 = fcmp oeq float %1028, %1030
  %1044 = select i1 %1042, i1 %1043, i1 false
  br i1 %1044, label %1104, label %1045

1045:                                             ; preds = %1041
  %1046 = fcmp oeq float %1025, %1034
  %1047 = fcmp oeq float %1032, %1030
  %1048 = select i1 %1046, i1 %1047, i1 false
  br i1 %1048, label %1104, label %1049

1049:                                             ; preds = %1045, %1039
  %1050 = load float, ptr %997, align 4, !tbaa !42
  %1051 = fsub float %1050, %1025
  %1052 = fsub float %1032, %1030
  %1053 = load float, ptr %1006, align 4, !tbaa !42
  %1054 = fsub float %1032, %1053
  %1055 = fsub float %1025, %1034
  %1056 = fmul float %1055, %1054
  %1057 = call float @llvm.fmuladd.f32(float %1051, float %1052, float %1056)
  %1058 = fcmp olt float %1057, 0.000000e+00
  br i1 %1058, label %1104, label %1059

1059:                                             ; preds = %1049
  %1060 = fcmp oeq float %1057, 0.000000e+00
  br i1 %1060, label %1061, label %1069

1061:                                             ; preds = %1059
  %1062 = fcmp oeq float %1025, %1034
  %1063 = fcmp oeq float %1032, %1030
  %1064 = select i1 %1062, i1 %1063, i1 false
  br i1 %1064, label %1104, label %1065

1065:                                             ; preds = %1061
  %1066 = fcmp oeq float %1050, %1034
  %1067 = fcmp oeq float %1053, %1030
  %1068 = select i1 %1066, i1 %1067, i1 false
  br i1 %1068, label %1104, label %1069

1069:                                             ; preds = %1065, %1059
  %1070 = fsub float %1026, %1050
  %1071 = fsub float %1053, %1030
  %1072 = fsub float %1053, %1028
  %1073 = fsub float %1050, %1034
  %1074 = fmul float %1073, %1072
  %1075 = call float @llvm.fmuladd.f32(float %1070, float %1071, float %1074)
  %1076 = fcmp olt float %1075, 0.000000e+00
  br i1 %1076, label %1104, label %1077

1077:                                             ; preds = %1069
  %1078 = fcmp oeq float %1075, 0.000000e+00
  br i1 %1078, label %1079, label %1087

1079:                                             ; preds = %1077
  %1080 = fcmp oeq float %1050, %1034
  %1081 = fcmp oeq float %1053, %1030
  %1082 = select i1 %1080, i1 %1081, i1 false
  br i1 %1082, label %1104, label %1083

1083:                                             ; preds = %1079
  %1084 = fcmp oeq float %1026, %1034
  %1085 = fcmp oeq float %1028, %1030
  %1086 = select i1 %1084, i1 %1085, i1 false
  br i1 %1086, label %1104, label %1087

1087:                                             ; preds = %1083, %1077
  %1088 = icmp eq ptr %1012, null
  br i1 %1088, label %1104, label %1089

1089:                                             ; preds = %1087
  %1090 = icmp eq i8 %1010, 0
  br i1 %1090, label %1091, label %1095

1091:                                             ; preds = %1089
  %1092 = load ptr, ptr %1012, align 8, !tbaa !98
  %1093 = getelementptr inbounds %struct.ScanFillVert, ptr %1092, i64 0, i32 4
  %1094 = call float @angle_v2v2v2(ptr noundef nonnull %1003, ptr noundef nonnull %994, ptr noundef nonnull %1093) #11
  br label %1095

1095:                                             ; preds = %1091, %1089
  %1096 = phi float [ %1094, %1091 ], [ %1011, %1089 ]
  %1097 = phi i8 [ 1, %1091 ], [ %1010, %1089 ]
  %1098 = load ptr, ptr %1013, align 8, !tbaa !98
  %1099 = getelementptr inbounds %struct.ScanFillVert, ptr %1098, i64 0, i32 4
  %1100 = call float @angle_v2v2v2(ptr noundef nonnull %1003, ptr noundef nonnull %994, ptr noundef nonnull %1099) #11
  %1101 = fcmp olt float %1100, %1096
  %1102 = select i1 %1101, ptr %1013, ptr %1012
  %1103 = select i1 %1101, float %1100, float %1096
  br label %1104

1104:                                             ; preds = %1083, %1079, %1069, %1065, %1061, %1049, %1045, %1041, %1023, %1095, %1087, %1007
  %1105 = phi ptr [ %1102, %1095 ], [ %1012, %1007 ], [ %1013, %1087 ], [ %1012, %1023 ], [ %1012, %1041 ], [ %1012, %1045 ], [ %1012, %1049 ], [ %1012, %1061 ], [ %1012, %1065 ], [ %1012, %1069 ], [ %1012, %1079 ], [ %1012, %1083 ]
  %1106 = phi float [ %1103, %1095 ], [ %1011, %1007 ], [ %1011, %1087 ], [ %1011, %1023 ], [ %1011, %1041 ], [ %1011, %1045 ], [ %1011, %1049 ], [ %1011, %1061 ], [ %1011, %1065 ], [ %1011, %1069 ], [ %1011, %1079 ], [ %1011, %1083 ]
  %1107 = phi i8 [ %1097, %1095 ], [ %1010, %1007 ], [ %1010, %1087 ], [ %1010, %1023 ], [ %1010, %1041 ], [ %1010, %1045 ], [ %1010, %1049 ], [ %1010, %1061 ], [ %1010, %1065 ], [ %1010, %1069 ], [ %1010, %1079 ], [ %1010, %1083 ]
  %1108 = add nuw i32 %1008, 1
  %1109 = icmp eq i32 %1108, %823
  br i1 %1109, label %1110, label %1007, !llvm.loop !108

1110:                                             ; preds = %1104, %1019, %993
  %1111 = phi ptr [ null, %993 ], [ %1105, %1104 ], [ %1012, %1019 ]
  %1112 = icmp eq ptr %1111, null
  br i1 %1112, label %1135, label %1113

1113:                                             ; preds = %1110
  %1114 = load ptr, ptr %1111, align 8, !tbaa !98
  %1115 = load ptr, ptr %685, align 8, !tbaa !34
  %1116 = call ptr @BLI_memarena_alloc(ptr noundef %1115, i64 noundef 40) #11
  call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %1116) #11
  %1117 = getelementptr inbounds %struct.ScanFillEdge, ptr %1116, i64 0, i32 2
  store ptr %987, ptr %1117, align 8, !tbaa !50
  %1118 = getelementptr inbounds %struct.ScanFillEdge, ptr %1116, i64 0, i32 3
  store ptr %1114, ptr %1118, align 8, !tbaa !52
  %1119 = load i16, ptr %139, align 8, !tbaa !47
  %1120 = getelementptr inbounds %struct.ScanFillEdge, ptr %1116, i64 0, i32 4
  store i16 %1119, ptr %1120, align 8, !tbaa !53
  %1121 = getelementptr inbounds %struct.ScanFillEdge, ptr %1116, i64 0, i32 5
  store i8 0, ptr %1121, align 2
  %1122 = getelementptr inbounds %struct.ScanFillEdge, ptr %1116, i64 0, i32 6
  store i8 0, ptr %1122, align 1, !tbaa !41
  call void @BLI_remlink(ptr noundef nonnull %8, ptr noundef %1116) #11
  call void @BLI_insertlinkbefore(ptr noundef nonnull %913, ptr noundef nonnull %964, ptr noundef %1116) #11
  %1123 = load ptr, ptr %1118, align 8, !tbaa !52
  %1124 = getelementptr inbounds %struct.ScanFillVert, ptr %1123, i64 0, i32 8
  %1125 = load i8, ptr %1124, align 1
  %1126 = and i8 %1125, -16
  %1127 = or disjoint i8 %1126, 1
  store i8 %1127, ptr %1124, align 1
  %1128 = load i8, ptr %1121, align 2
  %1129 = and i8 %1128, -16
  %1130 = or disjoint i8 %1129, 2
  store i8 %1130, ptr %1121, align 2
  %1131 = load ptr, ptr %1117, align 8, !tbaa !50
  %1132 = getelementptr inbounds %struct.ScanFillVert, ptr %1131, i64 0, i32 7
  %1133 = load i8, ptr %1132, align 2, !tbaa !49
  %1134 = add i8 %1133, 1
  store i8 %1134, ptr %1132, align 2, !tbaa !49
  br label %1233

1135:                                             ; preds = %1110
  %1136 = load ptr, ptr %686, align 8, !tbaa !34
  %1137 = call ptr @BLI_memarena_alloc(ptr noundef %1136, i64 noundef 40) #11
  call void @BLI_addtail(ptr noundef nonnull %687, ptr noundef %1137) #11
  %1138 = getelementptr inbounds %struct.ScanFillFace, ptr %1137, i64 0, i32 2
  store ptr %985, ptr %1138, align 8, !tbaa !109
  %1139 = getelementptr inbounds %struct.ScanFillFace, ptr %1137, i64 0, i32 3
  store ptr %987, ptr %1139, align 8, !tbaa !111
  %1140 = getelementptr inbounds %struct.ScanFillFace, ptr %1137, i64 0, i32 4
  store ptr %989, ptr %1140, align 8, !tbaa !112
  %1141 = add i32 %963, 1
  call void @BLI_remlink(ptr noundef nonnull %913, ptr noundef nonnull %962) #11
  call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef nonnull %962) #11
  %1142 = load ptr, ptr %984, align 8, !tbaa !52
  %1143 = getelementptr inbounds %struct.ScanFillVert, ptr %1142, i64 0, i32 8
  %1144 = load i8, ptr %1143, align 1
  %1145 = and i8 %1144, -16
  store i8 %1145, ptr %1143, align 1
  %1146 = load ptr, ptr %986, align 8, !tbaa !50
  %1147 = getelementptr inbounds %struct.ScanFillVert, ptr %1146, i64 0, i32 7
  %1148 = load i8, ptr %1147, align 2, !tbaa !49
  %1149 = add i8 %1148, -1
  store i8 %1149, ptr %1147, align 2, !tbaa !49
  %1150 = load ptr, ptr %984, align 8, !tbaa !52
  %1151 = getelementptr inbounds %struct.ScanFillVert, ptr %1150, i64 0, i32 7
  %1152 = load i8, ptr %1151, align 2, !tbaa !49
  %1153 = add i8 %1152, -1
  store i8 %1153, ptr %1151, align 2, !tbaa !49
  %1154 = getelementptr inbounds %struct.ScanFillEdge, ptr %964, i64 0, i32 5
  %1155 = load i8, ptr %1154, align 2
  %1156 = and i8 %1155, 15
  %1157 = or i8 %1156, %903
  %1158 = icmp eq i8 %1157, 0
  br i1 %1158, label %1159, label %1173

1159:                                             ; preds = %1135
  call void @BLI_remlink(ptr noundef nonnull %913, ptr noundef nonnull %964) #11
  call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef nonnull %964) #11
  %1160 = load ptr, ptr %988, align 8, !tbaa !52
  %1161 = getelementptr inbounds %struct.ScanFillVert, ptr %1160, i64 0, i32 8
  %1162 = load i8, ptr %1161, align 1
  %1163 = and i8 %1162, -16
  store i8 %1163, ptr %1161, align 1
  %1164 = getelementptr inbounds %struct.ScanFillEdge, ptr %964, i64 0, i32 2
  %1165 = load ptr, ptr %1164, align 8, !tbaa !50
  %1166 = getelementptr inbounds %struct.ScanFillVert, ptr %1165, i64 0, i32 7
  %1167 = load i8, ptr %1166, align 2, !tbaa !49
  %1168 = add i8 %1167, -1
  store i8 %1168, ptr %1166, align 2, !tbaa !49
  %1169 = load ptr, ptr %988, align 8, !tbaa !52
  %1170 = getelementptr inbounds %struct.ScanFillVert, ptr %1169, i64 0, i32 7
  %1171 = load i8, ptr %1170, align 2, !tbaa !49
  %1172 = add i8 %1171, -1
  store i8 %1172, ptr %1170, align 2, !tbaa !49
  br label %1173

1173:                                             ; preds = %1159, %1135
  %1174 = load ptr, ptr %686, align 8, !tbaa !34
  %1175 = call ptr @BLI_memarena_alloc(ptr noundef %1174, i64 noundef 40) #11
  call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %1175) #11
  %1176 = getelementptr inbounds %struct.ScanFillEdge, ptr %1175, i64 0, i32 2
  store ptr %985, ptr %1176, align 8, !tbaa !50
  %1177 = getelementptr inbounds %struct.ScanFillEdge, ptr %1175, i64 0, i32 3
  store ptr %989, ptr %1177, align 8, !tbaa !52
  %1178 = load i16, ptr %139, align 8, !tbaa !47
  %1179 = getelementptr inbounds %struct.ScanFillEdge, ptr %1175, i64 0, i32 4
  store i16 %1178, ptr %1179, align 8, !tbaa !53
  %1180 = getelementptr inbounds %struct.ScanFillEdge, ptr %1175, i64 0, i32 5
  store i8 0, ptr %1180, align 2
  %1181 = getelementptr inbounds %struct.ScanFillEdge, ptr %1175, i64 0, i32 6
  store i8 0, ptr %1181, align 1, !tbaa !41
  call void @BLI_remlink(ptr noundef nonnull %8, ptr noundef %1175) #11
  %1182 = load i8, ptr %1180, align 2
  %1183 = and i8 %1182, -16
  %1184 = or disjoint i8 %1183, 2
  store i8 %1184, ptr %1180, align 2
  %1185 = load ptr, ptr %1176, align 8, !tbaa !50
  %1186 = getelementptr inbounds %struct.ScanFillVert, ptr %1185, i64 0, i32 7
  %1187 = load i8, ptr %1186, align 2, !tbaa !49
  %1188 = add i8 %1187, 1
  store i8 %1188, ptr %1186, align 2, !tbaa !49
  %1189 = load ptr, ptr %1177, align 8, !tbaa !52
  %1190 = getelementptr inbounds %struct.ScanFillVert, ptr %1189, i64 0, i32 7
  %1191 = load i8, ptr %1190, align 2, !tbaa !49
  %1192 = add i8 %1191, 1
  store i8 %1192, ptr %1190, align 2, !tbaa !49
  %1193 = call fastcc ptr @addedgetoscanlist(ptr noundef %797, ptr noundef %1175, i32 noundef %823)
  %1194 = icmp eq ptr %1193, null
  br i1 %1194, label %1241, label %1195

1195:                                             ; preds = %1173
  %1196 = load ptr, ptr %1176, align 8, !tbaa !50
  %1197 = getelementptr inbounds %struct.ScanFillVert, ptr %1196, i64 0, i32 7
  %1198 = load i8, ptr %1197, align 2, !tbaa !49
  %1199 = add i8 %1198, -1
  store i8 %1199, ptr %1197, align 2, !tbaa !49
  %1200 = load ptr, ptr %1177, align 8, !tbaa !52
  %1201 = getelementptr inbounds %struct.ScanFillVert, ptr %1200, i64 0, i32 7
  %1202 = load i8, ptr %1201, align 2, !tbaa !49
  %1203 = add i8 %1202, -1
  store i8 %1203, ptr %1201, align 2, !tbaa !49
  %1204 = getelementptr inbounds %struct.ScanFillVertLink, ptr %1193, i64 0, i32 1
  %1205 = load ptr, ptr %1204, align 8, !tbaa !54
  %1206 = icmp eq ptr %1205, null
  br i1 %1206, label %1241, label %1207

1207:                                             ; preds = %1195, %1230
  %1208 = phi ptr [ %1231, %1230 ], [ %1205, %1195 ]
  %1209 = getelementptr inbounds %struct.ScanFillEdge, ptr %1208, i64 0, i32 2
  %1210 = load ptr, ptr %1209, align 8, !tbaa !50
  %1211 = icmp eq ptr %1210, %985
  br i1 %1211, label %1212, label %1216

1212:                                             ; preds = %1207
  %1213 = getelementptr inbounds %struct.ScanFillEdge, ptr %1208, i64 0, i32 3
  %1214 = load ptr, ptr %1213, align 8, !tbaa !52
  %1215 = icmp eq ptr %1214, %989
  br i1 %1215, label %1222, label %1216

1216:                                             ; preds = %1212, %1207
  %1217 = icmp eq ptr %1210, %989
  br i1 %1217, label %1218, label %1230

1218:                                             ; preds = %1216
  %1219 = getelementptr inbounds %struct.ScanFillEdge, ptr %1208, i64 0, i32 3
  %1220 = load ptr, ptr %1219, align 8, !tbaa !52
  %1221 = icmp eq ptr %1220, %985
  br i1 %1221, label %1222, label %1230

1222:                                             ; preds = %1218, %1212
  br i1 %904, label %1223, label %1241

1223:                                             ; preds = %1222
  %1224 = getelementptr inbounds %struct.ScanFillEdge, ptr %1208, i64 0, i32 2
  call void @BLI_remlink(ptr noundef nonnull %1204, ptr noundef nonnull %1208) #11
  call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef nonnull %1208) #11
  %1225 = load ptr, ptr %1224, align 8, !tbaa !50
  %1226 = getelementptr inbounds %struct.ScanFillVert, ptr %1225, i64 0, i32 7
  %1227 = load i8, ptr %1226, align 2, !tbaa !49
  %1228 = add i8 %1227, -1
  store i8 %1228, ptr %1226, align 2, !tbaa !49
  %1229 = getelementptr inbounds %struct.ScanFillEdge, ptr %1208, i64 0, i32 3
  br label %1233

1230:                                             ; preds = %1218, %1216
  %1231 = load ptr, ptr %1208, align 8, !tbaa !54
  %1232 = icmp eq ptr %1231, null
  br i1 %1232, label %1241, label %1207, !llvm.loop !113

1233:                                             ; preds = %1113, %1223
  %1234 = phi ptr [ %1118, %1113 ], [ %1229, %1223 ]
  %1235 = phi i8 [ 1, %1113 ], [ -1, %1223 ]
  %1236 = phi i32 [ %963, %1113 ], [ %1141, %1223 ]
  %1237 = load ptr, ptr %1234, align 8, !tbaa !52
  %1238 = getelementptr inbounds %struct.ScanFillVert, ptr %1237, i64 0, i32 7
  %1239 = load i8, ptr %1238, align 2, !tbaa !49
  %1240 = add i8 %1239, %1235
  store i8 %1240, ptr %1238, align 2, !tbaa !49
  br label %1241

1241:                                             ; preds = %1230, %1233, %1195, %1222, %1173, %983
  %1242 = phi i32 [ %963, %983 ], [ %1141, %1222 ], [ %1141, %1173 ], [ %1141, %1195 ], [ %1236, %1233 ], [ %1141, %1230 ]
  br i1 %992, label %1243, label %1278

1243:                                             ; preds = %1241, %968
  %1244 = phi i32 [ %963, %968 ], [ %1242, %1241 ]
  %1245 = load ptr, ptr %913, align 8, !tbaa !105
  %1246 = icmp eq ptr %1245, null
  br i1 %1246, label %958, label %1247

1247:                                             ; preds = %1243, %1276
  %1248 = phi ptr [ %1249, %1276 ], [ %1245, %1243 ]
  %1249 = load ptr, ptr %1248, align 8, !tbaa !95
  %1250 = getelementptr inbounds %struct.ScanFillEdge, ptr %1248, i64 0, i32 2
  %1251 = load ptr, ptr %1250, align 8, !tbaa !50
  %1252 = getelementptr inbounds %struct.ScanFillVert, ptr %1251, i64 0, i32 7
  %1253 = load i8, ptr %1252, align 2, !tbaa !49
  %1254 = icmp ult i8 %1253, 2
  br i1 %1254, label %1261, label %1255

1255:                                             ; preds = %1247
  %1256 = getelementptr inbounds %struct.ScanFillEdge, ptr %1248, i64 0, i32 3
  %1257 = load ptr, ptr %1256, align 8, !tbaa !52
  %1258 = getelementptr inbounds %struct.ScanFillVert, ptr %1257, i64 0, i32 7
  %1259 = load i8, ptr %1258, align 2, !tbaa !49
  %1260 = icmp ult i8 %1259, 2
  br i1 %1260, label %1261, label %1276

1261:                                             ; preds = %1255, %1247
  call void @BLI_remlink(ptr noundef nonnull %913, ptr noundef nonnull %1248) #11
  call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef nonnull %1248) #11
  %1262 = load ptr, ptr %1250, align 8, !tbaa !50
  %1263 = getelementptr inbounds %struct.ScanFillVert, ptr %1262, i64 0, i32 7
  %1264 = load i8, ptr %1263, align 2, !tbaa !49
  %1265 = icmp ugt i8 %1264, 1
  br i1 %1265, label %1266, label %1268

1266:                                             ; preds = %1261
  %1267 = add i8 %1264, -1
  store i8 %1267, ptr %1263, align 2, !tbaa !49
  br label %1268

1268:                                             ; preds = %1266, %1261
  %1269 = getelementptr inbounds %struct.ScanFillEdge, ptr %1248, i64 0, i32 3
  %1270 = load ptr, ptr %1269, align 8, !tbaa !52
  %1271 = getelementptr inbounds %struct.ScanFillVert, ptr %1270, i64 0, i32 7
  %1272 = load i8, ptr %1271, align 2, !tbaa !49
  %1273 = icmp ugt i8 %1272, 1
  br i1 %1273, label %1274, label %1276

1274:                                             ; preds = %1268
  %1275 = add i8 %1272, -1
  store i8 %1275, ptr %1271, align 2, !tbaa !49
  br label %1276

1276:                                             ; preds = %1274, %1268, %1255
  %1277 = icmp eq ptr %1249, null
  br i1 %1277, label %958, label %1247, !llvm.loop !114

1278:                                             ; preds = %958, %961, %1241, %916
  %1279 = phi i32 [ %912, %916 ], [ %912, %958 ], [ %823, %961 ], [ %912, %1241 ]
  %1280 = phi i32 [ %911, %916 ], [ %1244, %958 ], [ %963, %961 ], [ %1242, %1241 ]
  %1281 = getelementptr inbounds %struct.ScanFillVertLink, ptr %910, i64 1
  %1282 = add i32 %1279, 1
  %1283 = icmp ult i32 %1282, %823
  br i1 %1283, label %909, label %1284, !llvm.loop !115

1284:                                             ; preds = %1278, %901
  %1285 = phi i32 [ 0, %901 ], [ %1280, %1278 ]
  %1286 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %1286(ptr noundef %797) #11
  %1287 = add i32 %1285, %690
  br label %1288

1288:                                             ; preds = %1284, %688
  %1289 = phi i32 [ %1287, %1284 ], [ %690, %688 ]
  %1290 = getelementptr inbounds %struct.PolyFill, ptr %691, i64 1
  %1291 = add nuw i16 %689, 1
  %1292 = icmp eq i16 %1291, %247
  br i1 %1292, label %1293, label %688, !llvm.loop !116

1293:                                             ; preds = %1288, %671
  %1294 = phi i32 [ 0, %671 ], [ %1289, %1288 ]
  call void @BLI_movelisttolist(ptr noundef nonnull %0, ptr noundef nonnull %4) #11
  call void @BLI_movelisttolist(ptr noundef nonnull %8, ptr noundef nonnull %5) #11
  %1295 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %1295(ptr noundef %459) #11
  br label %1297

1296:                                             ; preds = %134
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  br label %1297

1297:                                             ; preds = %28, %262, %269, %1296, %438, %1293
  %1298 = phi i32 [ %1294, %1293 ], [ 0, %438 ], [ 0, %1296 ], [ 0, %269 ], [ 0, %262 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret i32 %1298
}

declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @vergpoly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 2
  %4 = load float, ptr %3, align 4, !tbaa !42
  %5 = getelementptr inbounds %struct.PolyFill, ptr %1, i64 0, i32 2
  %6 = load float, ptr %5, align 4, !tbaa !42
  %7 = fcmp ogt float %4, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = fcmp olt float %4, %6
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !42
  %13 = getelementptr inbounds %struct.PolyFill, ptr %1, i64 0, i32 2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !42
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

declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_scanfill_calc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BLI_scanfill_calc_ex(ptr noundef %0, i32 noundef %1, ptr noundef null)
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

declare float @dist_squared_to_line_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @vergscdata(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load ptr, ptr %0, align 8, !tbaa !98
  %4 = getelementptr inbounds %struct.ScanFillVert, ptr %3, i64 0, i32 4
  %5 = getelementptr inbounds %struct.ScanFillVert, ptr %3, i64 0, i32 4, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.ScanFillVert, ptr %7, i64 0, i32 4
  %9 = getelementptr inbounds %struct.ScanFillVert, ptr %7, i64 0, i32 4, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !42
  %11 = fcmp olt float %6, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = fcmp ogt float %6, %10
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load float, ptr %4, align 4, !tbaa !42
  %16 = load float, ptr %8, align 4, !tbaa !42
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

; Function Attrs: nounwind uwtable
define internal fastcc ptr @addedgetoscanlist(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ScanFillEdge, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 4, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !42
  %8 = getelementptr inbounds %struct.ScanFillEdge, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.ScanFillVert, ptr %9, i64 0, i32 4, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !42
  %12 = fcmp oeq float %7, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ScanFillVert, ptr %9, i64 0, i32 4
  %15 = getelementptr inbounds %struct.ScanFillVert, ptr %5, i64 0, i32 4
  %16 = load float, ptr %15, align 4, !tbaa !42
  %17 = load float, ptr %14, align 4, !tbaa !42
  %18 = fcmp ogt float %16, %17
  br i1 %18, label %21, label %22

19:                                               ; preds = %3
  %20 = fcmp olt float %7, %11
  br i1 %20, label %21, label %22

21:                                               ; preds = %19, %13
  store ptr %9, ptr %4, align 8, !tbaa !50
  store ptr %5, ptr %8, align 8, !tbaa !52
  br label %22

22:                                               ; preds = %21, %19, %13
  %23 = load ptr, ptr %4, align 8, !tbaa !50
  %24 = icmp eq i32 %2, 0
  br i1 %24, label %64, label %25

25:                                               ; preds = %22
  %26 = zext i32 %2 to i64
  %27 = getelementptr inbounds %struct.ScanFillVert, ptr %23, i64 0, i32 4
  %28 = getelementptr inbounds %struct.ScanFillVert, ptr %23, i64 0, i32 4, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !42
  br label %30

30:                                               ; preds = %25, %58
  %31 = phi i64 [ 0, %25 ], [ %60, %58 ]
  %32 = phi i64 [ %26, %25 ], [ %59, %58 ]
  %33 = add i64 %31, %32
  %34 = lshr i64 %33, 1
  %35 = mul i64 %34, 24
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !98
  %38 = getelementptr inbounds %struct.ScanFillVert, ptr %37, i64 0, i32 4
  %39 = getelementptr inbounds %struct.ScanFillVert, ptr %37, i64 0, i32 4, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !42
  %41 = fcmp olt float %29, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %30
  %43 = fcmp ogt float %29, %40
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = load float, ptr %27, align 4, !tbaa !42
  %46 = load float, ptr %38, align 4, !tbaa !42
  %47 = fcmp ogt float %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = fcmp olt float %45, %46
  %50 = sext i1 %49 to i32
  br label %51

51:                                               ; preds = %30, %42, %44, %48
  %52 = phi i32 [ 1, %30 ], [ -1, %42 ], [ 1, %44 ], [ %50, %48 ]
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = icmp eq i32 %52, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %54
  %57 = add nuw i64 %34, 1
  br label %58

58:                                               ; preds = %56, %51
  %59 = phi i64 [ %32, %56 ], [ %34, %51 ]
  %60 = phi i64 [ %57, %56 ], [ %31, %51 ]
  %61 = icmp ult i64 %60, %59
  br i1 %61, label %30, label %64, !llvm.loop !117

62:                                               ; preds = %54
  %63 = getelementptr inbounds i8, ptr %0, i64 %35
  br label %64

64:                                               ; preds = %58, %22, %62
  %65 = phi ptr [ %63, %62 ], [ null, %22 ], [ null, %58 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %1)
  br label %115

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.ScanFillVertLink, ptr %65, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !105
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ScanFillVertLink, ptr %65, i64 0, i32 2
  store ptr %1, ptr %74, align 8, !tbaa !118
  store ptr %1, ptr %70, align 8, !tbaa !105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %115

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.ScanFillVert, ptr %23, i64 0, i32 4
  %77 = load float, ptr %76, align 4, !tbaa !42
  %78 = getelementptr inbounds %struct.ScanFillVert, ptr %23, i64 0, i32 4, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !42
  %80 = load ptr, ptr %8, align 8, !tbaa !52
  %81 = getelementptr inbounds %struct.ScanFillVert, ptr %80, i64 0, i32 4
  %82 = getelementptr inbounds %struct.ScanFillVert, ptr %80, i64 0, i32 4, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !42
  %84 = fsub float %83, %79
  %85 = fcmp oeq float %84, 0.000000e+00
  %86 = load float, ptr %81, align 4, !tbaa !42
  %87 = fsub float %86, %77
  %88 = fmul float %87, 1.000000e+10
  %89 = fsub float %77, %86
  %90 = fdiv float %89, %84
  %91 = select i1 %85, float %88, float %90
  br label %92

92:                                               ; preds = %100, %75
  %93 = phi ptr [ %70, %75 ], [ %94, %100 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !54
  %95 = icmp eq ptr %94, null
  br i1 %95, label %114, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.ScanFillEdge, ptr %94, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !52
  %99 = icmp eq ptr %98, %80
  br i1 %99, label %115, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.ScanFillVert, ptr %98, i64 0, i32 4
  %102 = getelementptr inbounds %struct.ScanFillVert, ptr %98, i64 0, i32 4, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !42
  %104 = fsub float %103, %79
  %105 = fcmp oeq float %104, 0.000000e+00
  %106 = load float, ptr %101, align 4, !tbaa !42
  %107 = fsub float %106, %77
  %108 = fmul float %107, 1.000000e+10
  %109 = fsub float %77, %106
  %110 = fdiv float %109, %104
  %111 = select i1 %105, float %108, float %110
  %112 = fcmp ogt float %111, %91
  br i1 %112, label %113, label %92, !llvm.loop !119

113:                                              ; preds = %100
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %70, ptr noundef nonnull %94, ptr noundef %1) #11
  br label %115

114:                                              ; preds = %92
  tail call void @BLI_addtail(ptr noundef nonnull %70, ptr noundef %1) #11
  br label %115

115:                                              ; preds = %96, %73, %114, %113, %67
  %116 = phi ptr [ null, %67 ], [ null, %113 ], [ null, %114 ], [ null, %73 ], [ %65, %96 ]
  ret ptr %116
}

declare float @angle_v2v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }

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
!34 = !{!35, !37, i64 56}
!35 = !{!"ScanFillContext", !36, i64 0, !36, i64 16, !36, i64 32, !40, i64 48, !37, i64 56}
!36 = !{!"ListBase", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!38, !38, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !38, i64 0}
!44 = !{!45, !46, i64 44}
!45 = !{!"ScanFillVert", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 24, !38, i64 36, !46, i64 44, !40, i64 48, !38, i64 50, !46, i64 51, !46, i64 51}
!46 = !{!"int", !38, i64 0}
!47 = !{!35, !40, i64 48}
!48 = !{!45, !40, i64 48}
!49 = !{!45, !38, i64 50}
!50 = !{!51, !37, i64 16}
!51 = !{!"ScanFillEdge", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !46, i64 34, !46, i64 34, !38, i64 35}
!52 = !{!51, !37, i64 24}
!53 = !{!51, !40, i64 32}
!54 = !{!37, !37, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !56, !57}
!59 = !{!35, !37, i64 8}
!60 = distinct !{!60, !56, !57}
!61 = distinct !{!61, !56, !57}
!62 = distinct !{!62, !56, !57}
!63 = distinct !{!63, !56, !57}
!64 = distinct !{!64, !56, !57}
!65 = distinct !{!65, !56, !57}
!66 = distinct !{!66, !56, !57}
!67 = distinct !{!67, !56, !57}
!68 = distinct !{!68, !56, !57}
!69 = distinct !{!69, !56, !57}
!70 = distinct !{!70, !56, !57}
!71 = distinct !{!71, !56, !57}
!72 = distinct !{!72, !56, !57}
!73 = !{!36, !37, i64 0}
!74 = distinct !{!74, !56, !57}
!75 = !{!76, !46, i64 4}
!76 = !{!"PolyFill", !46, i64 0, !46, i64 4, !38, i64 8, !38, i64 16, !40, i64 24, !38, i64 26}
!77 = !{!76, !46, i64 0}
!78 = !{!76, !38, i64 26}
!79 = !{!76, !40, i64 24}
!80 = distinct !{!80, !56, !57}
!81 = distinct !{!81, !56, !57}
!82 = distinct !{!82, !56, !57}
!83 = !{!40, !40, i64 0}
!84 = distinct !{!84, !56, !57}
!85 = distinct !{!85, !56, !57}
!86 = distinct !{!86, !56, !57}
!87 = distinct !{!87, !56, !57}
!88 = distinct !{!88, !56, !57}
!89 = !{!35, !37, i64 0}
!90 = !{!36, !37, i64 8}
!91 = !{!35, !37, i64 16}
!92 = !{!35, !37, i64 24}
!93 = !{!45, !37, i64 0}
!94 = distinct !{!94, !56, !57}
!95 = !{!51, !37, i64 0}
!96 = distinct !{!96, !56, !57}
!97 = distinct !{!97, !56, !57}
!98 = !{!99, !37, i64 0}
!99 = !{!"ScanFillVertLink", !37, i64 0, !37, i64 8, !37, i64 16}
!100 = distinct !{!100, !56, !57}
!101 = distinct !{!101, !56, !57}
!102 = distinct !{!102, !56, !57}
!103 = distinct !{!103, !56, !57}
!104 = distinct !{!104, !56, !57}
!105 = !{!99, !37, i64 8}
!106 = distinct !{!106, !56, !57}
!107 = distinct !{!107, !56, !57}
!108 = distinct !{!108, !56, !57}
!109 = !{!110, !37, i64 16}
!110 = !{!"ScanFillFace", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!111 = !{!110, !37, i64 24}
!112 = !{!110, !37, i64 32}
!113 = distinct !{!113, !56, !57}
!114 = distinct !{!114, !56, !57}
!115 = distinct !{!115, !56, !57}
!116 = distinct !{!116, !56, !57}
!117 = distinct !{!117, !56, !57}
!118 = !{!99, !37, i64 16}
!119 = distinct !{!119, !56, !57}
