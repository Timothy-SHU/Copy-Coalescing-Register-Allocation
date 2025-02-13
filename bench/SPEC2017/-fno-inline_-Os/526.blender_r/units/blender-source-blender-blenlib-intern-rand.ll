; ModuleID = 'blender/source/blender/blenlib/intern/rand.c'
source_filename = "blender/source/blender/blenlib/intern/rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RNG = type { i64 }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"rng\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@hash = external local_unnamed_addr global [0 x i8], align 1
@theBLI_rng = internal global %struct.RNG { i64 611330372042337130 }, align 8
@rng_tab = internal global [1 x %struct.RNG] zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"random_array\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_rng_new(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 8, ptr noundef nonnull @.str) #17
  tail call void @BLI_rng_seed(ptr noundef %3, i32 noundef %0) #18
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BLI_rng_seed(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = zext i32 %1 to i64
  %4 = shl nuw nsw i64 %3, 16
  %5 = or disjoint i64 %4, 13070
  store i64 %5, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_rng_new_srandom(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 8, ptr noundef nonnull @.str) #17
  tail call void @BLI_rng_srandom(ptr noundef %3, i32 noundef %0) #18
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_rng_srandom(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = and i32 %1, 255
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !41
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  tail call void @BLI_rng_seed(ptr noundef %0, i32 noundef %8) #18
  %9 = tail call i32 @BLI_rng_get_uint(ptr noundef %0) #18
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !41
  %14 = zext i8 %13 to i32
  %15 = add i32 %9, %14
  tail call void @BLI_rng_seed(ptr noundef %0, i32 noundef %15) #18
  %16 = tail call i32 @BLI_rng_get_uint(ptr noundef %0) #18
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !41
  %21 = zext i8 %20 to i32
  %22 = add i32 %16, %21
  tail call void @BLI_rng_seed(ptr noundef %0, i32 noundef %22) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_rng_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @BLI_rng_get_uint(ptr nocapture noundef %0) local_unnamed_addr #4 {
  tail call fastcc void @rng_step(ptr noundef %0) #18
  %2 = load i64, ptr %0, align 8, !tbaa !38
  %3 = lshr i64 %2, 17
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @BLI_rng_get_int(ptr nocapture noundef %0) local_unnamed_addr #4 {
  tail call fastcc void @rng_step(ptr noundef %0) #18
  %2 = load i64, ptr %0, align 8, !tbaa !38
  %3 = lshr i64 %2, 17
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rng_step(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !42 {
  %2 = load i64, ptr %0, align 8, !tbaa !38
  %3 = mul i64 %2, 25214903917
  %4 = add i64 %3, 11
  %5 = and i64 %4, 281474976710655
  store i64 %5, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local double @BLI_rng_get_double(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = tail call i32 @BLI_rng_get_int(ptr noundef %0) #18
  %3 = sitofp i32 %2 to double
  %4 = fmul double %3, 0x3E00000000000000
  ret double %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local float @BLI_rng_get_float(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = tail call i32 @BLI_rng_get_int(ptr noundef %0) #18
  %3 = sitofp i32 %2 to float
  %4 = fmul float %3, 0x3E00000000000000
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @BLI_rng_get_float_unit_v2(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = tail call float @BLI_rng_get_float(ptr noundef %0) #18
  %4 = fmul float %3, 0x401921FB60000000
  %5 = tail call float @cosf(float noundef %4) #17
  store float %5, ptr %1, align 4, !tbaa !43
  %6 = tail call float @sinf(float noundef %4) #17
  %7 = getelementptr inbounds float, ptr %1, i64 1
  store float %6, ptr %7, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @BLI_rng_get_float_unit_v3(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = tail call float @BLI_rng_get_float(ptr noundef %0) #18
  %4 = tail call float @llvm.fmuladd.f32(float %3, float 2.000000e+00, float -1.000000e+00)
  %5 = getelementptr inbounds float, ptr %1, i64 2
  store float %4, ptr %5, align 4, !tbaa !43
  %6 = fneg float %4
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %4, float 1.000000e+00)
  %8 = fcmp ogt float %7, 0.000000e+00
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = tail call float @BLI_rng_get_float(ptr noundef %0) #18
  %11 = fmul float %10, 0x401921FB60000000
  %12 = tail call float @sqrtf(float noundef %7) #17
  %13 = tail call float @cosf(float noundef %11) #17
  %14 = fmul float %12, %13
  store float %14, ptr %1, align 4, !tbaa !43
  %15 = tail call float @sinf(float noundef %11) #17
  %16 = fmul float %12, %15
  %17 = getelementptr inbounds float, ptr %1, i64 1
  store float %16, ptr %17, align 4, !tbaa !43
  br label %19

18:                                               ; preds = %2
  store float 1.000000e+00, ptr %5, align 4, !tbaa !43
  br label %19

19:                                               ; preds = %18, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_rng_shuffle_array(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i32 %2 to i64
  %6 = icmp ult i32 %3, 2
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = tail call noalias ptr @malloc(i64 noundef %5) #19
  %9 = zext i32 %3 to i64
  br label %10

10:                                               ; preds = %7, %24
  %11 = phi i64 [ %9, %7 ], [ %12, %24 ]
  %12 = add nsw i64 %11, -1
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 @BLI_rng_get_uint(ptr noundef %0) #18
  %15 = urem i32 %14, %3
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = mul i32 %13, %2
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %1, i64 %19
  %21 = mul i32 %15, %2
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %1, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %20, i64 %5, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %23, i64 %5, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %8, i64 %5, i1 false)
  br label %24

24:                                               ; preds = %17, %10
  %25 = icmp eq i32 %13, 0
  br i1 %25, label %26, label %10, !llvm.loop !45

26:                                               ; preds = %24
  tail call void @free(ptr noundef %8) #17
  br label %27

27:                                               ; preds = %4, %26
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BLI_rng_skip(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %6, %4 ], [ %1, %2 ]
  %6 = add nsw i32 %5, -1
  tail call fastcc void @rng_step(ptr noundef %0) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %4, !llvm.loop !47

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @BLI_srandom(i32 noundef %0) local_unnamed_addr #12 {
  tail call void @BLI_rng_srandom(ptr noundef nonnull @theBLI_rng, i32 noundef %0) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_rand() local_unnamed_addr #13 {
  %1 = tail call i32 @BLI_rng_get_int(ptr noundef nonnull @theBLI_rng) #18
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @BLI_frand() local_unnamed_addr #13 {
  %1 = tail call float @BLI_rng_get_float(ptr noundef nonnull @theBLI_rng) #18
  ret float %1
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BLI_frand_unit_v3(ptr nocapture noundef writeonly %0) local_unnamed_addr #14 {
  tail call void @BLI_rng_get_float_unit_v3(ptr noundef nonnull @theBLI_rng, ptr noundef %0) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BLI_hash_frand(i32 noundef %0) local_unnamed_addr #15 {
  %2 = alloca %struct.RNG, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @BLI_rng_srandom(ptr noundef nonnull %2, i32 noundef %0) #18
  %3 = call float @BLI_rng_get_float(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_array_randomize(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.RNG, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @BLI_rng_seed(ptr noundef nonnull %5, i32 noundef %3) #18
  call void @BLI_rng_shuffle_array(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %1, i32 noundef %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BLI_thread_srandom(i32 noundef %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 0)
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [1 x %struct.RNG], ptr @rng_tab, i64 0, i64 %4
  %6 = and i32 %1, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !41
  %10 = zext i8 %9 to i32
  %11 = add i32 %10, %1
  tail call void @BLI_rng_seed(ptr noundef nonnull %5, i32 noundef %11) #18
  %12 = tail call i32 @BLI_rng_get_uint(ptr noundef nonnull %5) #18
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !41
  %17 = zext i8 %16 to i32
  %18 = add i32 %12, %17
  tail call void @BLI_rng_seed(ptr noundef nonnull %5, i32 noundef %18) #18
  %19 = tail call i32 @BLI_rng_get_uint(ptr noundef nonnull %5) #18
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [0 x i8], ptr @hash, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !41
  %24 = zext i8 %23 to i32
  %25 = add i32 %19, %24
  tail call void @BLI_rng_seed(ptr noundef nonnull %5, i32 noundef %25) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_thread_rand(i32 noundef %0) local_unnamed_addr #13 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [1 x %struct.RNG], ptr @rng_tab, i64 0, i64 %2
  %4 = tail call i32 @BLI_rng_get_int(ptr noundef nonnull %3) #18
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @BLI_thread_frand(i32 noundef %0) local_unnamed_addr #13 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [1 x %struct.RNG], ptr @rng_tab, i64 0, i64 %2
  %4 = tail call float @BLI_rng_get_float(ptr noundef nonnull %3) #18
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_rng_threaded_new() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 8, ptr noundef nonnull @.str.1) #17
  tail call void @BLI_rng_srandom(ptr noundef %2, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_rng_threaded_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @BLI_rng_thread_rand(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [1 x %struct.RNG], ptr %0, i64 0, i64 %3
  %5 = tail call i32 @BLI_rng_get_int(ptr noundef %4) #18
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize allocsize(0) }
attributes #20 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"RNG", !40, i64 0}
!40 = !{!"long", !36, i64 0}
!41 = !{!36, !36, i64 0}
!42 = !{!"rand.c:rng_step"}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !36, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
