; ModuleID = 'colour.cpp'
source_filename = "colour.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Blend_Map_Entry" = type { float, i8, %union.anon }
%union.anon = type { [2 x double], [8 x i8] }
%"struct.pov::Blend_Map_Struct" = type { i32, i16, i8, i8, ptr }

$_ZN3pov12Make_ColourAEPffffff = comdat any

$_ZN3pov13Assign_ColourEPfS0_ = comdat any

$_ZSt4fabsf = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_ZSt3minIdERKT_S2_S2_ = comdat any

@.str = private unnamed_addr constant [11 x i8] c"colour.cpp\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"blend map entry\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"blend map\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov13Create_ColourEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 20, ptr noundef nonnull @.str, i32 noundef 94, ptr noundef nonnull @.str.1) #7
  tail call void @_ZN3pov12Make_ColourAEPffffff(ptr noundef %1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #7
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov12Make_ColourAEPffffff(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #3 comdat {
  store float %1, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 1
  store float %2, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 2
  store float %3, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 3
  store float %4, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %0, i64 4
  store float %5, ptr %10, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov11Copy_ColourEPf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef ptr @_ZN3pov13Create_ColourEv() #7
  tail call void @_ZN3pov13Assign_ColourEPfS0_(ptr noundef %4, ptr noundef nonnull %0) #7
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13Assign_ColourEPfS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 4
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %0, i64 4
  store float %14, ptr %15, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov19Create_BMap_EntriesEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = tail call noundef ptr @_ZN3pov10pov_callocEmmPKciS1_(i64 noundef %2, i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 175, ptr noundef nonnull @.str.2) #7
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_callocEmmPKciS1_(i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov17Copy_BMap_EntriesEPNS_15Blend_Map_EntryEii(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN3pov19Create_BMap_EntriesEi(i32 noundef %1) #7
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  %9 = zext nneg i32 %1 to i64
  br label %10

10:                                               ; preds = %8, %30
  %11 = phi i64 [ 0, %8 ], [ %31, %30 ]
  switch i32 %2, label %30 [
    i32 0, label %12
    i32 1, label %17
    i32 4, label %22
    i32 5, label %27
    i32 6, label %27
  ]

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %0, i64 %11, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = tail call noundef ptr @_ZN3pov12Copy_PigmentEPNS_14Pigment_StructE(ptr noundef %14) #7
  %16 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %6, i64 %11, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !38
  br label %30

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %0, i64 %11, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = tail call noundef ptr @_ZN3pov12Copy_TnormalEPNS_14Tnormal_StructE(ptr noundef %19) #7
  %21 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %6, i64 %11, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !38
  br label %30

22:                                               ; preds = %10
  %23 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %0, i64 %11, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = tail call noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef %24) #7
  %26 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %6, i64 %11, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !38
  br label %30

27:                                               ; preds = %10, %10
  %28 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %0, i64 %11
  %29 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %6, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false), !tbaa.struct !39
  br label %30

30:                                               ; preds = %12, %17, %22, %27, %10
  %31 = add nuw nsw i64 %11, 1
  %32 = icmp eq i64 %31, %9
  br i1 %32, label %33, label %10, !llvm.loop !42

33:                                               ; preds = %30, %5, %3
  %34 = phi ptr [ null, %3 ], [ %6, %5 ], [ %6, %30 ]
  ret ptr %34
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov12Copy_PigmentEPNS_14Pigment_StructE(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN3pov12Copy_TnormalEPNS_14Tnormal_StructE(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov16Create_Blend_MapEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 283, ptr noundef nonnull @.str.3) #7
  store i32 1, ptr %1, align 8, !tbaa !44
  %2 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %1, i64 0, i32 1
  store i16 0, ptr %2, align 4, !tbaa !48
  %3 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %1, i64 0, i32 3
  store i8 5, ptr %3, align 1, !tbaa !49
  %4 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %1, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %1, i64 0, i32 2
  store i8 0, ptr %5, align 2, !tbaa !51
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @_ZN3pov14Copy_Blend_MapEPNS_16Blend_Map_StructE(ptr noundef returned %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !44
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = add nuw nsw i32 %4, 1
  store i32 %7, ptr %0, align 8, !tbaa !44
  br label %8

8:                                                ; preds = %6, %3, %1
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov15Colour_DistanceEPfS0_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fsub float %3, %4
  %6 = tail call noundef float @_ZSt4fabsf(float noundef %5) #7
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = tail call noundef float @_ZSt4fabsf(float noundef %11) #7
  %13 = fadd float %6, %12
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %15, %17
  %19 = tail call noundef float @_ZSt4fabsf(float noundef %18) #7
  %20 = fadd float %13, %19
  %21 = fpext float %20 to double
  ret double %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef float @_ZSt4fabsf(float noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call float @llvm.fabs.f32(float %0)
  ret float %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov20Colour_Distance_RGBTEPfS0_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fsub float %3, %4
  %6 = tail call noundef float @_ZSt4fabsf(float noundef %5) #7
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = tail call noundef float @_ZSt4fabsf(float noundef %11) #7
  %13 = fadd float %6, %12
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %15, %17
  %19 = tail call noundef float @_ZSt4fabsf(float noundef %18) #7
  %20 = fadd float %13, %19
  %21 = getelementptr inbounds float, ptr %0, i64 4
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %1, i64 4
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %22, %24
  %26 = tail call noundef float @_ZSt4fabsf(float noundef %25) #7
  %27 = fadd float %20, %26
  %28 = fpext float %27 to double
  ret double %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3pov10Add_ColourEPfS0_S0_(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3pov12Scale_ColourEPfS0_d(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, double noundef %2) local_unnamed_addr #5 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3pov11Clip_ColourEPfS0_(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov17Destroy_Blend_MapEPNS_16Blend_Map_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !44
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %0, align 8, !tbaa !44
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 4, !tbaa !48
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %0, i64 0, i32 4
  br label %14

14:                                               ; preds = %11, %29
  %15 = phi i64 [ 0, %11 ], [ %30, %29 ]
  %16 = load i8, ptr %12, align 1, !tbaa !49
  switch i8 %16, label %29 [
    i8 0, label %17
    i8 7, label %17
    i8 1, label %21
    i8 4, label %25
  ]

17:                                               ; preds = %14, %14
  %18 = load ptr, ptr %13, align 8, !tbaa !50
  %19 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %18, i64 %15, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  tail call void @_ZN3pov15Destroy_PigmentEPNS_14Pigment_StructE(ptr noundef %20) #7
  br label %29

21:                                               ; preds = %14
  %22 = load ptr, ptr %13, align 8, !tbaa !50
  %23 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %22, i64 %15, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  tail call void @_ZN3pov15Destroy_TnormalEPNS_14Tnormal_StructE(ptr noundef %24) #7
  br label %29

25:                                               ; preds = %14
  %26 = load ptr, ptr %13, align 8, !tbaa !50
  %27 = getelementptr inbounds %"struct.pov::Blend_Map_Entry", ptr %26, i64 %15, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  tail call void @_ZN3pov16Destroy_TexturesEPNS_14Texture_StructE(ptr noundef %28) #7
  br label %29

29:                                               ; preds = %17, %21, %14, %25
  %30 = add nuw nsw i64 %15, 1
  %31 = load i16, ptr %8, align 4, !tbaa !48
  %32 = sext i16 %31 to i64
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %14, label %34, !llvm.loop !52

34:                                               ; preds = %29, %7
  %35 = getelementptr inbounds %"struct.pov::Blend_Map_Struct", ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %36, ptr noundef nonnull @.str, i32 noundef 658) #7
  store ptr null, ptr %35, align 8, !tbaa !50
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 660) #7
  br label %37

37:                                               ; preds = %3, %34, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov15Destroy_PigmentEPNS_14Pigment_StructE(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov15Destroy_TnormalEPNS_14Tnormal_StructE(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov16Destroy_TexturesEPNS_14Texture_StructE(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov8RGBtoHueEPf(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %5 = load float, ptr %0, align 4, !tbaa !34
  %6 = fpext float %5 to double
  store double %6, ptr %2, align 8, !tbaa !53
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fpext float %8 to double
  store double %9, ptr %3, align 8, !tbaa !53
  %10 = getelementptr inbounds float, ptr %0, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fpext float %11 to double
  store double %12, ptr %4, align 8, !tbaa !53
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %13) #7
  %15 = load double, ptr %14, align 8, !tbaa !53
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %16) #7
  %18 = load double, ptr %17, align 8, !tbaa !53
  %19 = fsub double %15, %18
  %20 = fcmp ogt double %19, 0.000000e+00
  %21 = fcmp ogt double %15, 0.000000e+00
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %44

23:                                               ; preds = %1
  %24 = load double, ptr %2, align 8, !tbaa !53
  %25 = fcmp oeq double %24, %15
  %26 = load double, ptr %3, align 8, !tbaa !53
  br i1 %25, label %27, label %31

27:                                               ; preds = %23
  %28 = load double, ptr %4, align 8, !tbaa !53
  %29 = fsub double %26, %28
  %30 = fdiv double %29, %19
  br label %44

31:                                               ; preds = %23
  %32 = fcmp oeq double %26, %15
  %33 = load double, ptr %4, align 8, !tbaa !53
  br i1 %32, label %34, label %38

34:                                               ; preds = %31
  %35 = fsub double %33, %24
  %36 = fdiv double %35, %19
  %37 = fadd double %36, 2.000000e+00
  br label %44

38:                                               ; preds = %31
  %39 = fcmp oeq double %33, %15
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = fsub double %24, %26
  %42 = fdiv double %41, %19
  %43 = fadd double %42, 4.000000e+00
  br label %44

44:                                               ; preds = %27, %38, %40, %34, %1
  %45 = phi double [ %30, %27 ], [ %37, %34 ], [ %43, %40 ], [ 3.000000e+00, %38 ], [ 3.000000e+00, %1 ]
  %46 = fmul double %45, 6.000000e+01
  %47 = fcmp olt double %46, 0.000000e+00
  %48 = fadd double %46, 3.600000e+02
  %49 = select i1 %47, double %48, double %46
  %50 = fadd double %49, 6.000000e+01
  %51 = fcmp ogt double %50, 3.600000e+02
  %52 = fadd double %50, -3.600000e+02
  %53 = select i1 %51, double %52, double %50
  %54 = fdiv double %53, 3.600000e+02
  %55 = fadd double %54, 0.000000e+00
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret double %55
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %0, align 8, !tbaa !53
  %4 = load double, ptr %1, align 8, !tbaa !53
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !53
  %4 = load double, ptr %0, align 8, !tbaa !53
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 37113910}
!4 = !{!"MaxCount", i64 10485760}
!5 = !{!"MaxInternalCount", i64 10485760}
!6 = !{!"MaxFunctionCount", i64 163840}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 10485760, i32 3}
!14 = !{i32 100000, i64 10485760, i32 3}
!15 = !{i32 200000, i64 10485760, i32 3}
!16 = !{i32 300000, i64 10485760, i32 3}
!17 = !{i32 400000, i64 10485760, i32 3}
!18 = !{i32 500000, i64 10485760, i32 3}
!19 = !{i32 600000, i64 10485760, i32 3}
!20 = !{i32 700000, i64 10485760, i32 3}
!21 = !{i32 800000, i64 10485760, i32 3}
!22 = !{i32 900000, i64 5242880, i32 4}
!23 = !{i32 950000, i64 5242880, i32 4}
!24 = !{i32 990000, i64 163840, i32 6}
!25 = !{i32 999000, i64 81920, i32 7}
!26 = !{i32 999900, i64 4096, i32 8}
!27 = !{i32 999990, i64 4096, i32 8}
!28 = !{i32 999999, i64 21, i32 9}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!36, !36, i64 0}
!39 = !{i64 0, i64 4, !34, i64 4, i64 1, !38, i64 8, i64 20, !38, i64 8, i64 8, !40, i64 8, i64 8, !40, i64 8, i64 8, !40, i64 8, i64 16, !38}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !36, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!45, !46, i64 0}
!45 = !{!"_ZTSN3pov16Blend_Map_StructE", !46, i64 0, !47, i64 4, !36, i64 6, !36, i64 7, !41, i64 8}
!46 = !{!"int", !36, i64 0}
!47 = !{!"short", !36, i64 0}
!48 = !{!45, !47, i64 4}
!49 = !{!45, !36, i64 7}
!50 = !{!45, !41, i64 8}
!51 = !{!45, !36, i64 6}
!52 = distinct !{!52, !43}
!53 = !{!54, !54, i64 0}
!54 = !{!"double", !36, i64 0}
