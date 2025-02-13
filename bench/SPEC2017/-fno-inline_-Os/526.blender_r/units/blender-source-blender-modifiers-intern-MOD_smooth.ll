; ModuleID = 'blender/source/blender/modifiers/intern/MOD_smooth.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_smooth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.SmoothModifierData = type { %struct.ModifierData, float, [64 x i8], i16, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MDeformVert = type { ptr, i32, i32 }

@modifierType_Smooth = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Smooth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SmoothModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 184, i32 1, i32 11, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr @isDisabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"smoothmodifier_f\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"smoothmodifier_uc\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 !PGOFuncName !35 {
  %7 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  tail call fastcc void @smoothModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef %3, i32 noundef %4) #9
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  tail call void %11(ptr noundef %7) #8
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !44 {
  %7 = tail call ptr @get_dm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  tail call fastcc void @smoothModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef %4, i32 noundef %5) #9
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  tail call void %11(ptr noundef %7) #8
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !45 {
  %2 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 1
  store float 5.000000e-01, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 4
  store i16 1, ptr %3, align 2, !tbaa !50
  %4 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 3
  store i16 14, ptr %4, align 4, !tbaa !51
  %5 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 2
  store i8 0, ptr %5, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !53 {
  %3 = getelementptr inbounds %struct.SmoothModifierData, ptr %1, i64 0, i32 2
  %4 = load i8, ptr %3, align 4, !tbaa !52
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 !PGOFuncName !54 {
  %3 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 4, !tbaa !51
  %5 = and i16 %4, 14
  %6 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !46
  %8 = fcmp oeq float %7, 0.000000e+00
  %9 = icmp eq i16 %5, 0
  %10 = select i1 %8, i1 true, i1 %9
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @smoothModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !55 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store ptr null, ptr %6, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %10 = sext i32 %4 to i64
  %11 = mul nsw i64 %10, 12
  %12 = tail call ptr %9(i64 noundef %11, ptr noundef nonnull @.str) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %189, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %16 = tail call ptr %15(i64 noundef %10, ptr noundef nonnull @.str.1) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %19(ptr noundef nonnull %12) #8
  br label %189

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 1
  %22 = load float, ptr %21, align 8, !tbaa !46
  %23 = fsub float 1.000000e+00, %22
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = tail call i32 %25(ptr noundef %2) #8
  %27 = icmp eq i32 %26, %4
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 32
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = tail call ptr %30(ptr noundef nonnull %2) #8
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  %34 = tail call i32 %33(ptr noundef nonnull %2) #8
  br label %35

35:                                               ; preds = %20, %28
  %36 = phi i32 [ %34, %28 ], [ 0, %20 ]
  %37 = phi ptr [ %31, %28 ], [ null, %20 ]
  %38 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 2
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %38, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  %39 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 4
  %40 = load i16, ptr %39, align 2, !tbaa !50
  %41 = icmp sgt i16 %40, 0
  br i1 %41, label %42, label %186

42:                                               ; preds = %35
  %43 = icmp sgt i32 %36, 0
  %44 = icmp sgt i32 %4, 0
  %45 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 3
  %46 = zext nneg i32 %36 to i64
  %47 = zext nneg i32 %4 to i64
  %48 = zext nneg i32 %4 to i64
  br label %49

49:                                               ; preds = %42, %181
  %50 = phi i32 [ 0, %42 ], [ %182, %181 ]
  br i1 %43, label %51, label %81

51:                                               ; preds = %49, %78
  %52 = phi i64 [ %79, %78 ], [ 0, %49 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %53 = getelementptr inbounds %struct.MEdge, ptr %37, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !60
  %55 = getelementptr inbounds %struct.MEdge, ptr %37, i64 %52, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !62
  %57 = zext i32 %54 to i64
  %58 = getelementptr inbounds [3 x float], ptr %3, i64 %57
  %59 = zext i32 %56 to i64
  %60 = getelementptr inbounds [3 x float], ptr %3, i64 %59
  call void @mid_v3_v3v3(ptr noundef nonnull %8, ptr noundef %58, ptr noundef %60) #8
  %61 = mul i32 %56, 3
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr %12, i64 %62
  %64 = getelementptr inbounds i8, ptr %16, i64 %57
  %65 = load i8, ptr %64, align 1, !tbaa !52
  %66 = icmp eq i8 %65, -1
  br i1 %66, label %72, label %67

67:                                               ; preds = %51
  %68 = mul i32 %54, 3
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds float, ptr %12, i64 %69
  %71 = add nuw i8 %65, 1
  store i8 %71, ptr %64, align 1, !tbaa !52
  call fastcc void @add_v3_v3(ptr noundef nonnull %70, ptr noundef nonnull %8) #9
  br label %72

72:                                               ; preds = %67, %51
  %73 = getelementptr inbounds i8, ptr %16, i64 %59
  %74 = load i8, ptr %73, align 1, !tbaa !52
  %75 = icmp eq i8 %74, -1
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = add nuw i8 %74, 1
  store i8 %77, ptr %73, align 1, !tbaa !52
  call fastcc void @add_v3_v3(ptr noundef nonnull %63, ptr noundef nonnull %8) #9
  br label %78

78:                                               ; preds = %76, %72
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  %79 = add nuw nsw i64 %52, 1
  %80 = icmp eq i64 %79, %46
  br i1 %80, label %81, label %51, !llvm.loop !63

81:                                               ; preds = %78, %49
  %82 = load ptr, ptr %6, align 8, !tbaa !56
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  br i1 %44, label %95, label %181

85:                                               ; preds = %81
  br i1 %44, label %86, label %181

86:                                               ; preds = %85
  %87 = load i16, ptr %45, align 4, !tbaa !51
  %88 = zext i16 %87 to i32
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  %91 = and i32 %88, 4
  %92 = icmp eq i32 %91, 0
  %93 = and i32 %88, 8
  %94 = icmp eq i32 %93, 0
  br label %146

95:                                               ; preds = %84, %142
  %96 = phi i64 [ %143, %142 ], [ 0, %84 ]
  %97 = phi ptr [ %144, %142 ], [ %82, %84 ]
  %98 = load i16, ptr %45, align 4, !tbaa !51
  %99 = getelementptr inbounds [3 x float], ptr %3, i64 %96
  %100 = mul nuw nsw i64 %96, 3
  %101 = getelementptr inbounds float, ptr %12, i64 %100
  %102 = load i32, ptr %7, align 4, !tbaa !65
  %103 = call float @defvert_find_weight(ptr noundef nonnull %97, i32 noundef %102) #8
  %104 = fcmp ugt float %103, 0.000000e+00
  br i1 %104, label %105, label %142

105:                                              ; preds = %95
  %106 = fmul float %22, %103
  %107 = fsub float 1.000000e+00, %106
  %108 = getelementptr inbounds i8, ptr %16, i64 %96
  %109 = load i8, ptr %108, align 1, !tbaa !52
  %110 = icmp eq i8 %109, 0
  %111 = uitofp i8 %109 to float
  %112 = fdiv float %106, %111
  %113 = select i1 %110, float 0.000000e+00, float %112
  %114 = zext i16 %98 to i32
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %105
  %118 = load float, ptr %99, align 4, !tbaa !66
  %119 = load float, ptr %101, align 4, !tbaa !66
  %120 = fmul float %113, %119
  %121 = call float @llvm.fmuladd.f32(float %107, float %118, float %120)
  store float %121, ptr %99, align 4, !tbaa !66
  br label %122

122:                                              ; preds = %117, %105
  %123 = and i32 %114, 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds float, ptr %99, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !66
  %128 = getelementptr inbounds float, ptr %101, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !66
  %130 = fmul float %113, %129
  %131 = call float @llvm.fmuladd.f32(float %107, float %127, float %130)
  store float %131, ptr %126, align 4, !tbaa !66
  br label %132

132:                                              ; preds = %125, %122
  %133 = and i32 %114, 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds float, ptr %99, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !66
  %138 = getelementptr inbounds float, ptr %101, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !66
  %140 = fmul float %113, %139
  %141 = call float @llvm.fmuladd.f32(float %107, float %137, float %140)
  store float %141, ptr %136, align 4, !tbaa !66
  br label %142

142:                                              ; preds = %132, %135, %95
  %143 = add nuw nsw i64 %96, 1
  %144 = getelementptr inbounds %struct.MDeformVert, ptr %97, i64 1
  %145 = icmp eq i64 %143, %47
  br i1 %145, label %181, label %95, !llvm.loop !67

146:                                              ; preds = %86, %178
  %147 = phi i64 [ 0, %86 ], [ %179, %178 ]
  %148 = getelementptr inbounds [3 x float], ptr %3, i64 %147
  %149 = mul nuw nsw i64 %147, 3
  %150 = getelementptr inbounds float, ptr %12, i64 %149
  %151 = getelementptr inbounds i8, ptr %16, i64 %147
  %152 = load i8, ptr %151, align 1, !tbaa !52
  %153 = icmp eq i8 %152, 0
  %154 = uitofp i8 %152 to float
  %155 = fdiv float %22, %154
  %156 = select i1 %153, float 0.000000e+00, float %155
  br i1 %90, label %162, label %157

157:                                              ; preds = %146
  %158 = load float, ptr %148, align 4, !tbaa !66
  %159 = load float, ptr %150, align 4, !tbaa !66
  %160 = fmul float %156, %159
  %161 = call float @llvm.fmuladd.f32(float %23, float %158, float %160)
  store float %161, ptr %148, align 4, !tbaa !66
  br label %162

162:                                              ; preds = %157, %146
  br i1 %92, label %170, label %163

163:                                              ; preds = %162
  %164 = getelementptr inbounds float, ptr %148, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !66
  %166 = getelementptr inbounds float, ptr %150, i64 1
  %167 = load float, ptr %166, align 4, !tbaa !66
  %168 = fmul float %156, %167
  %169 = call float @llvm.fmuladd.f32(float %23, float %165, float %168)
  store float %169, ptr %164, align 4, !tbaa !66
  br label %170

170:                                              ; preds = %163, %162
  br i1 %94, label %178, label %171

171:                                              ; preds = %170
  %172 = getelementptr inbounds float, ptr %148, i64 2
  %173 = load float, ptr %172, align 4, !tbaa !66
  %174 = getelementptr inbounds float, ptr %150, i64 2
  %175 = load float, ptr %174, align 4, !tbaa !66
  %176 = fmul float %156, %175
  %177 = call float @llvm.fmuladd.f32(float %23, float %173, float %176)
  store float %177, ptr %172, align 4, !tbaa !66
  br label %178

178:                                              ; preds = %171, %170
  %179 = add nuw nsw i64 %147, 1
  %180 = icmp eq i64 %179, %48
  br i1 %180, label %181, label %146, !llvm.loop !68

181:                                              ; preds = %142, %178, %84, %85
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %12, i8 0, i64 %11, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %16, i8 0, i64 %10, i1 false)
  %182 = add nuw nsw i32 %50, 1
  %183 = load i16, ptr %39, align 2, !tbaa !50
  %184 = sext i16 %183 to i32
  %185 = icmp slt i32 %182, %184
  br i1 %185, label %49, label %186, !llvm.loop !69

186:                                              ; preds = %181, %35
  %187 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %187(ptr noundef nonnull %12) #8
  %188 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %188(ptr noundef nonnull %16) #8
  br label %189

189:                                              ; preds = %5, %186, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !70 {
  %3 = load float, ptr %1, align 4, !tbaa !66
  %4 = load float, ptr %0, align 4, !tbaa !66
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !66
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !66
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !66
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !66
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !66
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!34 = !{!"MOD_smooth.c:copyData"}
!35 = !{!"MOD_smooth.c:deformVerts"}
!36 = !{!37, !39, i64 1680}
!37 = !{!"DerivedMesh", !38, i64 0, !38, i64 200, !38, i64 400, !38, i64 600, !38, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !39, i64 1032, !39, i64 1040, !42, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!38 = !{!"CustomData", !39, i64 0, !40, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !39, i64 184, !39, i64 192}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!"float", !40, i64 0}
!44 = !{!"MOD_smooth.c:deformVertsEM"}
!45 = !{!"MOD_smooth.c:initData"}
!46 = !{!47, !43, i64 112}
!47 = !{!"SmoothModifierData", !48, i64 0, !43, i64 112, !40, i64 116, !49, i64 180, !49, i64 182}
!48 = !{!"ModifierData", !39, i64 0, !39, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!49 = !{!"short", !40, i64 0}
!50 = !{!47, !49, i64 182}
!51 = !{!47, !49, i64 180}
!52 = !{!40, !40, i64 0}
!53 = !{!"MOD_smooth.c:requiredDataMask"}
!54 = !{!"MOD_smooth.c:isDisabled"}
!55 = !{!"MOD_smooth.c:smoothModifier_do"}
!56 = !{!39, !39, i64 0}
!57 = !{!37, !39, i64 1104}
!58 = !{!37, !39, i64 1176}
!59 = !{!37, !39, i64 1112}
!60 = !{!61, !42, i64 0}
!61 = !{!"MEdge", !42, i64 0, !42, i64 4, !40, i64 8, !40, i64 9, !49, i64 10}
!62 = !{!61, !42, i64 4}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!42, !42, i64 0}
!66 = !{!43, !43, i64 0}
!67 = distinct !{!67, !64}
!68 = distinct !{!68, !64}
!69 = distinct !{!69, !64}
!70 = !{!"MOD_smooth.c:add_v3_v3"}
