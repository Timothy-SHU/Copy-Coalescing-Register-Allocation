; ModuleID = 'blender/source/blender/blenlib/intern/rand.c'
source_filename = "blender/source/blender/blenlib/intern/rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RNG = type { i64 }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"rng\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@hash = external local_unnamed_addr global [0 x i8], align 1
@theBLI_rng.0 = internal unnamed_addr global i64 611330372042337130, align 8
@rng_tab = internal unnamed_addr global [1 x %struct.RNG] zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"random_array\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_rng_new(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 8, ptr noundef nonnull @.str) #15
  %4 = zext i32 %0 to i64
  %5 = shl nuw nsw i64 %4, 16
  %6 = or disjoint i64 %5, 13070
  store i64 %6, ptr %3, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BLI_rng_seed(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = zext i32 %1 to i64
  %4 = shl nuw nsw i64 %3, 16
  %5 = or disjoint i64 %4, 13070
  store i64 %5, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_rng_new_srandom(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 8, ptr noundef nonnull @.str) #15
  %4 = and i32 %0, 255
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !41
  %8 = zext i8 %7 to i32
  %9 = add i32 %8, %0
  %10 = zext i32 %9 to i64
  %11 = mul i64 %10, 245109059551232
  %12 = add i64 %11, 48083817484545
  %13 = and i64 %12, 281474976665857
  store i64 %13, ptr %3, align 8, !tbaa !38
  %14 = lshr i64 %13, 17
  %15 = and i64 %14, 255
  %16 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !41
  %18 = zext i8 %17 to i64
  %19 = add nuw nsw i64 %14, %18
  %20 = mul i64 %19, 245109059551232
  %21 = add i64 %20, 48083817484545
  %22 = and i64 %21, 281474976665857
  store i64 %22, ptr %3, align 8, !tbaa !38
  %23 = lshr i64 %22, 17
  %24 = and i64 %23, 255
  %25 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !41
  %27 = zext i8 %26 to i64
  %28 = add nuw nsw i64 %23, %27
  %29 = shl nuw nsw i64 %28, 16
  %30 = or disjoint i64 %29, 13070
  store i64 %30, ptr %3, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @BLI_rng_srandom(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = and i32 %1, 255
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !41
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = mul i64 %9, 245109059551232
  %11 = add i64 %10, 48083817484545
  %12 = and i64 %11, 281474976665857
  store i64 %12, ptr %0, align 8, !tbaa !38
  %13 = lshr i64 %12, 17
  %14 = and i64 %13, 255
  %15 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !41
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %13, %17
  %19 = mul i64 %18, 245109059551232
  %20 = add i64 %19, 48083817484545
  %21 = and i64 %20, 281474976665857
  store i64 %21, ptr %0, align 8, !tbaa !38
  %22 = lshr i64 %21, 17
  %23 = and i64 %22, 255
  %24 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !41
  %26 = zext i8 %25 to i64
  %27 = add nuw nsw i64 %22, %26
  %28 = shl nuw nsw i64 %27, 16
  %29 = or disjoint i64 %28, 13070
  store i64 %29, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_rng_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @BLI_rng_get_uint(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8, !tbaa !38
  %3 = mul i64 %2, 25214903917
  %4 = add i64 %3, 11
  %5 = and i64 %4, 281474976710655
  store i64 %5, ptr %0, align 8, !tbaa !38
  %6 = lshr i64 %5, 17
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @BLI_rng_get_int(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8, !tbaa !38
  %3 = mul i64 %2, 25214903917
  %4 = add i64 %3, 11
  %5 = and i64 %4, 281474976710655
  store i64 %5, ptr %0, align 8, !tbaa !38
  %6 = lshr i64 %5, 17
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local double @BLI_rng_get_double(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8, !tbaa !38
  %3 = mul i64 %2, 25214903917
  %4 = add i64 %3, 11
  %5 = and i64 %4, 281474976710655
  store i64 %5, ptr %0, align 8, !tbaa !38
  %6 = lshr i64 %5, 17
  %7 = trunc i64 %6 to i32
  %8 = sitofp i32 %7 to double
  %9 = fmul double %8, 0x3E00000000000000
  ret double %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local float @BLI_rng_get_float(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8, !tbaa !38
  %3 = mul i64 %2, 25214903917
  %4 = add i64 %3, 11
  %5 = and i64 %4, 281474976710655
  store i64 %5, ptr %0, align 8, !tbaa !38
  %6 = lshr i64 %5, 17
  %7 = trunc i64 %6 to i32
  %8 = sitofp i32 %7 to float
  %9 = fmul float %8, 0x3E00000000000000
  ret float %9
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @BLI_rng_get_float_unit_v2(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = load i64, ptr %0, align 8, !tbaa !38
  %4 = mul i64 %3, 25214903917
  %5 = add i64 %4, 11
  %6 = and i64 %5, 281474976710655
  store i64 %6, ptr %0, align 8, !tbaa !38
  %7 = lshr i64 %6, 17
  %8 = trunc i64 %7 to i32
  %9 = sitofp i32 %8 to float
  %10 = fmul float %9, 0x3E00000000000000
  %11 = fmul float %10, 0x401921FB60000000
  %12 = tail call float @cosf(float noundef %11) #15
  store float %12, ptr %1, align 4, !tbaa !42
  %13 = tail call float @sinf(float noundef %11) #15
  %14 = getelementptr inbounds float, ptr %1, i64 1
  store float %13, ptr %14, align 4, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @BLI_rng_get_float_unit_v3(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = load i64, ptr %0, align 8, !tbaa !38
  %4 = mul i64 %3, 25214903917
  %5 = add i64 %4, 11
  %6 = and i64 %5, 281474976710655
  store i64 %6, ptr %0, align 8, !tbaa !38
  %7 = lshr i64 %6, 17
  %8 = trunc i64 %7 to i32
  %9 = sitofp i32 %8 to float
  %10 = fmul float %9, 0x3E00000000000000
  %11 = tail call float @llvm.fmuladd.f32(float %10, float 2.000000e+00, float -1.000000e+00)
  %12 = getelementptr inbounds float, ptr %1, i64 2
  store float %11, ptr %12, align 4, !tbaa !42
  %13 = fneg float %11
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %11, float 1.000000e+00)
  %15 = fcmp ogt float %14, 0.000000e+00
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = mul i64 %5, 25214903917
  %18 = add i64 %17, 11
  %19 = and i64 %18, 281474976710655
  store i64 %19, ptr %0, align 8, !tbaa !38
  %20 = lshr i64 %19, 17
  %21 = trunc i64 %20 to i32
  %22 = sitofp i32 %21 to float
  %23 = fmul float %22, 0x3E00000000000000
  %24 = fmul float %23, 0x401921FB60000000
  %25 = tail call float @sqrtf(float noundef %14) #15
  %26 = tail call float @cosf(float noundef %24) #15
  %27 = fmul float %25, %26
  store float %27, ptr %1, align 4, !tbaa !42
  %28 = tail call float @sinf(float noundef %24) #15
  %29 = fmul float %25, %28
  %30 = getelementptr inbounds float, ptr %1, i64 1
  store float %29, ptr %30, align 4, !tbaa !42
  br label %32

31:                                               ; preds = %2
  store float 1.000000e+00, ptr %12, align 4, !tbaa !42
  br label %32

32:                                               ; preds = %31, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BLI_rng_shuffle_array(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i32 %2 to i64
  %6 = icmp ult i32 %3, 2
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = tail call noalias ptr @malloc(i64 noundef %5) #16
  %9 = zext i32 %3 to i64
  br label %10

10:                                               ; preds = %7, %29
  %11 = phi i64 [ %9, %7 ], [ %12, %29 ]
  %12 = add nsw i64 %11, -1
  %13 = trunc i64 %12 to i32
  %14 = load i64, ptr %0, align 8, !tbaa !38
  %15 = mul i64 %14, 25214903917
  %16 = add i64 %15, 11
  %17 = and i64 %16, 281474976710655
  store i64 %17, ptr %0, align 8, !tbaa !38
  %18 = lshr i64 %17, 17
  %19 = trunc i64 %18 to i32
  %20 = urem i32 %19, %3
  %21 = icmp eq i32 %20, %13
  br i1 %21, label %29, label %22

22:                                               ; preds = %10
  %23 = mul i32 %13, %2
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %1, i64 %24
  %26 = mul i32 %20, %2
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %25, i64 %5, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %28, i64 %5, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %8, i64 %5, i1 false)
  br label %29

29:                                               ; preds = %22, %10
  %30 = icmp eq i32 %13, 0
  br i1 %30, label %31, label %10, !llvm.loop !44

31:                                               ; preds = %29
  tail call void @free(ptr noundef %8) #15
  br label %32

32:                                               ; preds = %4, %31
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @BLI_rng_skip(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8, !tbaa !38
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ %5, %4 ], [ %12, %6 ]
  %8 = phi i32 [ %1, %4 ], [ %9, %6 ]
  %9 = add nsw i32 %8, -1
  %10 = mul i64 %7, 25214903917
  %11 = add i64 %10, 11
  %12 = and i64 %11, 281474976710655
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %14, label %6, !llvm.loop !47

14:                                               ; preds = %6
  store i64 %12, ptr %0, align 8, !tbaa !38
  br label %15

15:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BLI_srandom(i32 noundef %0) local_unnamed_addr #11 {
  %2 = and i32 %0, 255
  %3 = zext nneg i32 %2 to i64
  %4 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !41
  %6 = zext i8 %5 to i32
  %7 = add i32 %6, %0
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, 245109059551232
  %10 = add i64 %9, 48083817484545
  %11 = and i64 %10, 281474976665857
  store i64 %11, ptr @theBLI_rng.0, align 8, !tbaa !38
  %12 = lshr i64 %11, 17
  %13 = and i64 %12, 255
  %14 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !41
  %16 = zext i8 %15 to i64
  %17 = add nuw nsw i64 %12, %16
  %18 = mul i64 %17, 245109059551232
  %19 = add i64 %18, 48083817484545
  %20 = and i64 %19, 281474976665857
  store i64 %20, ptr @theBLI_rng.0, align 8, !tbaa !38
  %21 = lshr i64 %20, 17
  %22 = and i64 %21, 255
  %23 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !41
  %25 = zext i8 %24 to i64
  %26 = add nuw nsw i64 %21, %25
  %27 = shl nuw nsw i64 %26, 16
  %28 = or disjoint i64 %27, 13070
  store i64 %28, ptr @theBLI_rng.0, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_rand() local_unnamed_addr #11 {
  %1 = load i64, ptr @theBLI_rng.0, align 8, !tbaa !38
  %2 = mul i64 %1, 25214903917
  %3 = add i64 %2, 11
  %4 = and i64 %3, 281474976710655
  store i64 %4, ptr @theBLI_rng.0, align 8, !tbaa !38
  %5 = lshr i64 %4, 17
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @BLI_frand() local_unnamed_addr #11 {
  %1 = load i64, ptr @theBLI_rng.0, align 8, !tbaa !38
  %2 = mul i64 %1, 25214903917
  %3 = add i64 %2, 11
  %4 = and i64 %3, 281474976710655
  store i64 %4, ptr @theBLI_rng.0, align 8, !tbaa !38
  %5 = lshr i64 %4, 17
  %6 = trunc i64 %5 to i32
  %7 = sitofp i32 %6 to float
  %8 = fmul float %7, 0x3E00000000000000
  ret float %8
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: write) uwtable
define dso_local void @BLI_frand_unit_v3(ptr nocapture noundef writeonly %0) local_unnamed_addr #12 {
  %2 = load i64, ptr @theBLI_rng.0, align 8, !tbaa !38
  %3 = mul i64 %2, 25214903917
  %4 = add i64 %3, 11
  %5 = and i64 %4, 281474976710655
  store i64 %5, ptr @theBLI_rng.0, align 8, !tbaa !38
  %6 = lshr i64 %5, 17
  %7 = trunc i64 %6 to i32
  %8 = sitofp i32 %7 to float
  %9 = fmul float %8, 0x3E00000000000000
  %10 = tail call float @llvm.fmuladd.f32(float %9, float 2.000000e+00, float -1.000000e+00)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  store float %10, ptr %11, align 4, !tbaa !42
  %12 = fneg float %10
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %10, float 1.000000e+00)
  %14 = fcmp ogt float %13, 0.000000e+00
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = mul i64 %4, 25214903917
  %17 = add i64 %16, 11
  %18 = and i64 %17, 281474976710655
  store i64 %18, ptr @theBLI_rng.0, align 8, !tbaa !38
  %19 = lshr i64 %18, 17
  %20 = trunc i64 %19 to i32
  %21 = sitofp i32 %20 to float
  %22 = fmul float %21, 0x3E00000000000000
  %23 = fmul float %22, 0x401921FB60000000
  %24 = tail call float @sqrtf(float noundef %13) #15
  %25 = tail call float @cosf(float noundef %23) #15
  %26 = fmul float %24, %25
  store float %26, ptr %0, align 4, !tbaa !42
  %27 = tail call float @sinf(float noundef %23) #15
  %28 = fmul float %24, %27
  %29 = getelementptr inbounds float, ptr %0, i64 1
  store float %28, ptr %29, align 4, !tbaa !42
  br label %31

30:                                               ; preds = %1
  store float 1.000000e+00, ptr %11, align 4, !tbaa !42
  br label %31

31:                                               ; preds = %15, %30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @BLI_hash_frand(i32 noundef %0) local_unnamed_addr #13 {
  %2 = and i32 %0, 255
  %3 = zext nneg i32 %2 to i64
  %4 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !41
  %6 = zext i8 %5 to i32
  %7 = add i32 %6, %0
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, 245109059551232
  %10 = add i64 %9, 48083817484545
  %11 = lshr i64 %10, 17
  %12 = and i64 %11, 2147483647
  %13 = and i64 %11, 255
  %14 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !41
  %16 = zext i8 %15 to i64
  %17 = add nuw nsw i64 %12, %16
  %18 = mul i64 %17, 245109059551232
  %19 = add i64 %18, 48083817484545
  %20 = lshr i64 %19, 17
  %21 = and i64 %20, 2147483647
  %22 = and i64 %20, 255
  %23 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !41
  %25 = zext i8 %24 to i64
  %26 = add nuw nsw i64 %21, %25
  %27 = mul i64 %26, 245109059551232
  %28 = add i64 %27, 48083817484545
  %29 = lshr i64 %28, 17
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 2147483647
  %32 = sitofp i32 %31 to float
  %33 = fmul float %32, 0x3E00000000000000
  ret float %33
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_array_randomize(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %2, 2
  br i1 %6, label %35, label %7

7:                                                ; preds = %4
  %8 = zext i32 %3 to i64
  %9 = shl nuw nsw i64 %8, 16
  %10 = or disjoint i64 %9, 13070
  %11 = tail call noalias ptr @malloc(i64 noundef %5) #16
  %12 = zext i32 %2 to i64
  br label %13

13:                                               ; preds = %32, %7
  %14 = phi i64 [ %10, %7 ], [ %20, %32 ]
  %15 = phi i64 [ %12, %7 ], [ %16, %32 ]
  %16 = add nsw i64 %15, -1
  %17 = trunc i64 %16 to i32
  %18 = mul i64 %14, 25214903917
  %19 = add i64 %18, 11
  %20 = and i64 %19, 281474976710655
  %21 = lshr i64 %20, 17
  %22 = trunc i64 %21 to i32
  %23 = urem i32 %22, %2
  %24 = icmp eq i32 %23, %17
  br i1 %24, label %32, label %25

25:                                               ; preds = %13
  %26 = mul i32 %17, %1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = mul i32 %23, %1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %0, i64 %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %28, i64 %5, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %31, i64 %5, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %31, ptr align 1 %11, i64 %5, i1 false)
  br label %32

32:                                               ; preds = %25, %13
  %33 = icmp eq i32 %17, 0
  br i1 %33, label %34, label %13, !llvm.loop !44

34:                                               ; preds = %32
  tail call void @free(ptr noundef %11) #15
  br label %35

35:                                               ; preds = %4, %34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BLI_thread_srandom(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 0)
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [1 x %struct.RNG], ptr @rng_tab, i64 0, i64 %4
  %6 = and i32 %1, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !41
  %10 = zext i8 %9 to i32
  %11 = add i32 %10, %1
  %12 = zext i32 %11 to i64
  %13 = mul i64 %12, 245109059551232
  %14 = add i64 %13, 48083817484545
  %15 = and i64 %14, 281474976665857
  store i64 %15, ptr %5, align 8, !tbaa !38
  %16 = lshr i64 %15, 17
  %17 = and i64 %16, 255
  %18 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !41
  %20 = zext i8 %19 to i64
  %21 = add nuw nsw i64 %16, %20
  %22 = mul i64 %21, 245109059551232
  %23 = add i64 %22, 48083817484545
  %24 = and i64 %23, 281474976665857
  store i64 %24, ptr %5, align 8, !tbaa !38
  %25 = lshr i64 %24, 17
  %26 = and i64 %25, 255
  %27 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !41
  %29 = zext i8 %28 to i64
  %30 = add nuw nsw i64 %25, %29
  %31 = shl nuw nsw i64 %30, 16
  %32 = or disjoint i64 %31, 13070
  store i64 %32, ptr %5, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_thread_rand(i32 noundef %0) local_unnamed_addr #11 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [1 x %struct.RNG], ptr @rng_tab, i64 0, i64 %2
  %4 = load i64, ptr %3, align 8, !tbaa !38
  %5 = mul i64 %4, 25214903917
  %6 = add i64 %5, 11
  %7 = and i64 %6, 281474976710655
  store i64 %7, ptr %3, align 8, !tbaa !38
  %8 = lshr i64 %7, 17
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @BLI_thread_frand(i32 noundef %0) local_unnamed_addr #11 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [1 x %struct.RNG], ptr @rng_tab, i64 0, i64 %2
  %4 = load i64, ptr %3, align 8, !tbaa !38
  %5 = mul i64 %4, 25214903917
  %6 = add i64 %5, 11
  %7 = and i64 %6, 281474976710655
  store i64 %7, ptr %3, align 8, !tbaa !38
  %8 = lshr i64 %7, 17
  %9 = trunc i64 %8 to i32
  %10 = sitofp i32 %9 to float
  %11 = fmul float %10, 0x3E00000000000000
  ret float %11
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_rng_threaded_new() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 8, ptr noundef nonnull @.str.1) #15
  %3 = load i8, ptr @hash, align 1, !tbaa !41
  %4 = zext i8 %3 to i64
  %5 = mul nuw nsw i64 %4, 245109059551232
  %6 = add nuw nsw i64 %5, 48083817484545
  %7 = and i64 %6, 281474976665857
  store i64 %7, ptr %2, align 8, !tbaa !38
  %8 = lshr i64 %7, 17
  %9 = and i64 %8, 255
  %10 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !41
  %12 = zext i8 %11 to i64
  %13 = add nuw nsw i64 %8, %12
  %14 = mul i64 %13, 245109059551232
  %15 = add i64 %14, 48083817484545
  %16 = and i64 %15, 281474976665857
  store i64 %16, ptr %2, align 8, !tbaa !38
  %17 = lshr i64 %16, 17
  %18 = and i64 %17, 255
  %19 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !41
  %21 = zext i8 %20 to i64
  %22 = add nuw nsw i64 %17, %21
  %23 = shl nuw nsw i64 %22, 16
  %24 = or disjoint i64 %23, 13070
  store i64 %24, ptr %2, align 8, !tbaa !38
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_rng_threaded_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @BLI_rng_thread_rand(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [1 x %struct.RNG], ptr %0, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !38
  %6 = mul i64 %5, 25214903917
  %7 = add i64 %6, 11
  %8 = and i64 %7, 281474976710655
  store i64 %8, ptr %4, align 8, !tbaa !38
  %9 = lshr i64 %8, 17
  %10 = trunc i64 %9 to i32
  ret i32 %10
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"RNG", !40, i64 0}
!40 = !{!"long", !36, i64 0}
!41 = !{!36, !36, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !36, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !45, !46}
