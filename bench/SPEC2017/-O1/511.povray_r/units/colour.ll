; ModuleID = 'colour.cpp'
source_filename = "colour.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Blend_Map_Entry" = type { float, i8, %union.anon }
%union.anon = type { [2 x double], [8 x i8] }
%"struct.pov::Blend_Map_Struct" = type { i32, i16, i8, i8, ptr }

@.str = private unnamed_addr constant [11 x i8] c"colour.cpp\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"blend map entry\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"blend map\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov13Create_ColourEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 20, ptr noundef nonnull @.str, i32 noundef 94, ptr noundef nonnull @.str.1)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, i8 0, i64 20, i1 false)
  ret ptr %1
}

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov11Copy_ColourEPf(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 20, ptr noundef nonnull @.str, i32 noundef 94, ptr noundef nonnull @.str.1)
  %5 = getelementptr inbounds float, ptr %4, i64 1
  %6 = getelementptr inbounds float, ptr %4, i64 2
  %7 = getelementptr inbounds float, ptr %4, i64 3
  %8 = getelementptr inbounds float, ptr %4, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  %9 = load float, ptr %0, align 4, !tbaa !34
  store float %9, ptr %4, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  store float %11, ptr %5, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  store float %13, ptr %6, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %0, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !34
  store float %15, ptr %7, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %0, i64 4
  %17 = load float, ptr %16, align 4, !tbaa !34
  store float %17, ptr %8, align 4, !tbaa !34
  br label %18

18:                                               ; preds = %1, %3
  %19 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %19
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov19Create_BMap_EntriesEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = tail call noundef ptr @_ZN3pov10pov_callocEmmPKciS1_(i64 noundef %2, i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 175, ptr noundef nonnull @.str.2)
  ret ptr %3
}

declare noundef ptr @_ZN3pov10pov_callocEmmPKciS1_(i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov17Copy_BMap_EntriesEPNS_15Blend_Map_EntryEii(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = tail call noundef ptr @_ZN3pov10pov_callocEmmPKciS1_(i64 noundef %6, i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 175, ptr noundef nonnull @.str.2)
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = zext nneg i32 %1 to i64
  br label %11

11:                                               ; preds = %9, %31
  %12 = phi i64 [ 0, %9 ], [ %32, %31 ]
  switch i32 %2, label %31 [
    i32 0, label %13
    i32 1, label %18
    i32 4, label %23
    i32 5, label %28
    i32 6, label %28
  ]

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %0, i64 %12, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = tail call noundef ptr @_ZN3pov12Copy_PigmentEPNS_14Pigment_StructE(ptr noundef %15)
  %17 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %7, i64 %12, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !38
  br label %31

18:                                               ; preds = %11
  %19 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %0, i64 %12, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = tail call noundef ptr @_ZN3pov12Copy_TnormalEPNS_14Tnormal_StructE(ptr noundef %20)
  %22 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %7, i64 %12, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !38
  br label %31

23:                                               ; preds = %11
  %24 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %0, i64 %12, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  %26 = tail call noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef %25)
  %27 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %7, i64 %12, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !38
  br label %31

28:                                               ; preds = %11, %11
  %29 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %0, i64 %12
  %30 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %7, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %29, i64 32, i1 false), !tbaa.struct !39
  br label %31

31:                                               ; preds = %13, %18, %23, %28, %11
  %32 = add nuw nsw i64 %12, 1
  %33 = icmp eq i64 %32, %10
  br i1 %33, label %34, label %11, !llvm.loop !42

34:                                               ; preds = %31, %5, %3
  %35 = phi ptr [ null, %3 ], [ %7, %5 ], [ %7, %31 ]
  ret ptr %35
}

declare noundef ptr @_ZN3pov12Copy_PigmentEPNS_14Pigment_StructE(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN3pov12Copy_TnormalEPNS_14Tnormal_StructE(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov16Create_Blend_MapEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 283, ptr noundef nonnull @.str.3)
  store i32 1, ptr %1, align 8, !tbaa !45
  %2 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %1, i64 0, i32 1
  store i16 0, ptr %2, align 4, !tbaa !49
  %3 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %1, i64 0, i32 3
  store i8 5, ptr %3, align 1, !tbaa !50
  %4 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %1, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %1, i64 0, i32 2
  store i8 0, ptr %5, align 2, !tbaa !52
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @_ZN3pov14Copy_Blend_MapEPNS_16Blend_Map_StructE(ptr noundef returned %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !45
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = add nuw nsw i32 %4, 1
  store i32 %7, ptr %0, align 8, !tbaa !45
  br label %8

8:                                                ; preds = %6, %3, %1
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov15Colour_DistanceEPfS0_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fsub float %3, %4
  %6 = tail call noundef float @llvm.fabs.f32(float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = tail call noundef float @llvm.fabs.f32(float %11)
  %13 = fadd float %6, %12
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %15, %17
  %19 = tail call noundef float @llvm.fabs.f32(float %18)
  %20 = fadd float %13, %19
  %21 = fpext float %20 to double
  ret double %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov20Colour_Distance_RGBTEPfS0_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fsub float %3, %4
  %6 = tail call noundef float @llvm.fabs.f32(float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = tail call noundef float @llvm.fabs.f32(float %11)
  %13 = fadd float %6, %12
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %15, %17
  %19 = tail call noundef float @llvm.fabs.f32(float %18)
  %20 = fadd float %13, %19
  %21 = getelementptr inbounds float, ptr %0, i64 4
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %1, i64 4
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %22, %24
  %26 = tail call noundef float @llvm.fabs.f32(float %25)
  %27 = fadd float %20, %26
  %28 = fpext float %27 to double
  ret double %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3pov10Add_ColourEPfS0_S0_(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %1, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %2, i64 3
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fadd float %20, %22
  %24 = getelementptr inbounds float, ptr %0, i64 3
  store float %23, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %1, i64 4
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %2, i64 4
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fadd float %26, %28
  %30 = getelementptr inbounds float, ptr %0, i64 4
  store float %29, ptr %30, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3pov12Scale_ColourEPfS0_d(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, double noundef %2) local_unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fpext float %4 to double
  %6 = fmul double %5, %2
  %7 = fptrunc double %6 to float
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fpext float %9 to double
  %11 = fmul double %10, %2
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fpext float %15 to double
  %17 = fmul double %16, %2
  %18 = fptrunc double %17 to float
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %1, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fpext float %21 to double
  %23 = fmul double %22, %2
  %24 = fptrunc double %23 to float
  %25 = getelementptr inbounds float, ptr %0, i64 3
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %1, i64 4
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fpext float %27 to double
  %29 = fmul double %28, %2
  %30 = fptrunc double %29 to float
  %31 = getelementptr inbounds float, ptr %0, i64 4
  store float %30, ptr %31, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3pov11Clip_ColourEPfS0_(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fcmp ogt float %3, 1.000000e+00
  %5 = fcmp olt float %3, 0.000000e+00
  %6 = select i1 %5, float 0.000000e+00, float %3
  %7 = select i1 %4, float 1.000000e+00, float %6
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fcmp ogt float %9, 1.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float 1.000000e+00, ptr %12, align 4, !tbaa !34
  br label %18

13:                                               ; preds = %2
  %14 = fcmp olt float %9, 0.000000e+00
  %15 = getelementptr inbounds float, ptr %0, i64 1
  br i1 %14, label %16, label %17

16:                                               ; preds = %13
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  br label %18

17:                                               ; preds = %13
  store float %9, ptr %15, align 4, !tbaa !34
  br label %18

18:                                               ; preds = %16, %17, %11
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fcmp ogt float %20, 1.000000e+00
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float 1.000000e+00, ptr %23, align 4, !tbaa !34
  br label %29

24:                                               ; preds = %18
  %25 = fcmp olt float %20, 0.000000e+00
  %26 = getelementptr inbounds float, ptr %0, i64 2
  br i1 %25, label %27, label %28

27:                                               ; preds = %24
  store float 0.000000e+00, ptr %26, align 4, !tbaa !34
  br label %29

28:                                               ; preds = %24
  store float %20, ptr %26, align 4, !tbaa !34
  br label %29

29:                                               ; preds = %27, %28, %22
  %30 = getelementptr inbounds float, ptr %1, i64 3
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fcmp ogt float %31, 1.000000e+00
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds float, ptr %0, i64 3
  store float 1.000000e+00, ptr %34, align 4, !tbaa !34
  br label %40

35:                                               ; preds = %29
  %36 = fcmp olt float %31, 0.000000e+00
  %37 = getelementptr inbounds float, ptr %0, i64 3
  br i1 %36, label %38, label %39

38:                                               ; preds = %35
  store float 0.000000e+00, ptr %37, align 4, !tbaa !34
  br label %40

39:                                               ; preds = %35
  store float %31, ptr %37, align 4, !tbaa !34
  br label %40

40:                                               ; preds = %38, %39, %33
  %41 = getelementptr inbounds float, ptr %1, i64 4
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fcmp ogt float %42, 1.000000e+00
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = getelementptr inbounds float, ptr %0, i64 4
  store float 1.000000e+00, ptr %45, align 4, !tbaa !34
  br label %51

46:                                               ; preds = %40
  %47 = fcmp olt float %42, 0.000000e+00
  %48 = getelementptr inbounds float, ptr %0, i64 4
  br i1 %47, label %49, label %50

49:                                               ; preds = %46
  store float 0.000000e+00, ptr %48, align 4, !tbaa !34
  br label %51

50:                                               ; preds = %46
  store float %42, ptr %48, align 4, !tbaa !34
  br label %51

51:                                               ; preds = %49, %50, %44
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov17Destroy_Blend_MapEPNS_16Blend_Map_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !45
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %0, align 8, !tbaa !45
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 4, !tbaa !49
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %0, i64 0, i32 4
  br label %16

16:                                               ; preds = %11, %31
  %17 = phi i64 [ 0, %11 ], [ %32, %31 ]
  %18 = load i8, ptr %12, align 1, !tbaa !50
  switch i8 %18, label %31 [
    i8 0, label %19
    i8 7, label %19
    i8 1, label %23
    i8 4, label %27
  ]

19:                                               ; preds = %16, %16
  %20 = load ptr, ptr %15, align 8, !tbaa !51
  %21 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %20, i64 %17, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  tail call void @_ZN3pov15Destroy_PigmentEPNS_14Pigment_StructE(ptr noundef %22)
  br label %31

23:                                               ; preds = %16
  %24 = load ptr, ptr %14, align 8, !tbaa !51
  %25 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %24, i64 %17, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  tail call void @_ZN3pov15Destroy_TnormalEPNS_14Tnormal_StructE(ptr noundef %26)
  br label %31

27:                                               ; preds = %16
  %28 = load ptr, ptr %13, align 8, !tbaa !51
  %29 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %28, i64 %17, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !38
  tail call void @_ZN3pov16Destroy_TexturesEPNS_14Texture_StructE(ptr noundef %30)
  br label %31

31:                                               ; preds = %19, %23, %16, %27
  %32 = add nuw nsw i64 %17, 1
  %33 = load i16, ptr %8, align 4, !tbaa !49
  %34 = sext i16 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %16, label %36, !llvm.loop !53

36:                                               ; preds = %31, %7
  %37 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !51
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %38, ptr noundef nonnull @.str, i32 noundef 658)
  store ptr null, ptr %37, align 8, !tbaa !51
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 660)
  br label %39

39:                                               ; preds = %3, %36, %1
  ret void
}

declare void @_ZN3pov15Destroy_PigmentEPNS_14Pigment_StructE(ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov15Destroy_TnormalEPNS_14Tnormal_StructE(ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov16Destroy_TexturesEPNS_14Texture_StructE(ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov8RGBtoHueEPf(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = fpext float %2 to double
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fpext float %5 to double
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fpext float %8 to double
  %10 = fcmp olt float %5, %8
  %11 = select i1 %10, double %9, double %6
  %12 = fcmp ogt double %11, %3
  %13 = select i1 %12, double %11, double %3
  %14 = fcmp olt float %8, %5
  %15 = select i1 %14, double %9, double %6
  %16 = fcmp olt double %15, %3
  %17 = select i1 %16, double %15, double %3
  %18 = fsub double %13, %17
  %19 = fcmp ogt double %18, 0.000000e+00
  %20 = fcmp ogt double %13, 0.000000e+00
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %39

22:                                               ; preds = %1
  %23 = fcmp oeq double %13, %3
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = fsub double %6, %9
  %26 = fdiv double %25, %18
  br label %39

27:                                               ; preds = %22
  %28 = fcmp oeq double %13, %6
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = fsub double %9, %3
  %31 = fdiv double %30, %18
  %32 = fadd double %31, 2.000000e+00
  br label %39

33:                                               ; preds = %27
  %34 = fcmp oeq double %13, %9
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = fsub double %3, %6
  %37 = fdiv double %36, %18
  %38 = fadd double %37, 4.000000e+00
  br label %39

39:                                               ; preds = %24, %33, %35, %29, %1
  %40 = phi double [ %26, %24 ], [ %32, %29 ], [ %38, %35 ], [ 3.000000e+00, %33 ], [ 3.000000e+00, %1 ]
  %41 = fmul double %40, 6.000000e+01
  %42 = fcmp olt double %41, 0.000000e+00
  %43 = fadd double %41, 3.600000e+02
  %44 = select i1 %42, double %43, double %41
  %45 = fadd double %44, 6.000000e+01
  %46 = fcmp ogt double %45, 3.600000e+02
  %47 = fadd double %45, -3.600000e+02
  %48 = select i1 %46, double %47, double %45
  %49 = fdiv double %48, 3.600000e+02
  %50 = fadd double %49, 0.000000e+00
  ret double %50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 42930506}
!8 = !{!"MaxCount", i64 10485760}
!9 = !{!"MaxInternalCount", i64 10485760}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 10485760, i32 1}
!18 = !{i32 100000, i64 10485760, i32 1}
!19 = !{i32 200000, i64 10485760, i32 1}
!20 = !{i32 300000, i64 5242880, i32 7}
!21 = !{i32 400000, i64 5242880, i32 7}
!22 = !{i32 500000, i64 5242880, i32 7}
!23 = !{i32 600000, i64 5242880, i32 7}
!24 = !{i32 700000, i64 5242880, i32 7}
!25 = !{i32 800000, i64 5242880, i32 7}
!26 = !{i32 900000, i64 5242880, i32 7}
!27 = !{i32 950000, i64 5242880, i32 7}
!28 = !{i32 990000, i64 655360, i32 8}
!29 = !{i32 999000, i64 81920, i32 12}
!30 = !{i32 999900, i64 4096, i32 13}
!31 = !{i32 999990, i64 4096, i32 13}
!32 = !{i32 999999, i64 20, i32 16}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!36, !36, i64 0}
!39 = !{i64 0, i64 4, !34, i64 4, i64 1, !38, i64 8, i64 20, !38, i64 8, i64 8, !40, i64 8, i64 8, !40, i64 8, i64 8, !40, i64 8, i64 16, !38}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !36, i64 0}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSN3pov16Blend_Map_StructE", !47, i64 0, !48, i64 4, !36, i64 6, !36, i64 7, !41, i64 8}
!47 = !{!"int", !36, i64 0}
!48 = !{!"short", !36, i64 0}
!49 = !{!46, !48, i64 4}
!50 = !{!46, !36, i64 7}
!51 = !{!46, !41, i64 8}
!52 = !{!46, !36, i64 6}
!53 = distinct !{!53, !43, !44}
