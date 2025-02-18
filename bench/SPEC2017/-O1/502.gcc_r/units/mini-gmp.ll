; ModuleID = 'mini-gmp.c'
source_filename = "mini-gmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mpn_base_info = type { i32, i64 }
%struct.gmp_div_inverse = type { i32, i64, i64, i64 }
%struct.__mpz_struct = type { i32, i32, ptr }

@mp_bits_per_limb = dso_local local_unnamed_addr constant i32 64, align 4
@gmp_allocate_func = internal unnamed_addr global ptr @gmp_default_alloc, align 8
@gmp_reallocate_func = internal unnamed_addr global ptr @gmp_default_realloc, align 8
@gmp_free_func = internal unnamed_addr global ptr @gmp_default_free, align 8
@.str = private unnamed_addr constant [23 x i8] c"mpz_powm: Zero modulo.\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"mpz_powm: Negative exponent and non-invertible base.\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"mpz_rootrem: Negative argument, with even root.\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"mpz_rootrem: Zeroth root.\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"mpz_import: Nails not supported.\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"gmp_default_alloc: Virtual memory exhausted.\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"gmp_default_realoc: Virtual memory exhausted.\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"mpz_div_qr: Divide by zero.\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @mp_get_memory_functions(ptr noundef writeonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 !prof !34 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  store ptr %6, ptr %0, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %5, %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  store ptr %10, ptr %1, align 8, !tbaa !35
  br label %11

11:                                               ; preds = %9, %7
  %12 = icmp eq ptr %2, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  store ptr %14, ptr %2, align 8, !tbaa !35
  br label %15

15:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @mp_set_memory_functions(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !34 {
  %4 = icmp eq ptr %0, null
  %5 = select i1 %4, ptr @gmp_default_alloc, ptr %0
  %6 = icmp eq ptr %1, null
  %7 = select i1 %6, ptr @gmp_default_realloc, ptr %1
  %8 = icmp eq ptr %2, null
  %9 = select i1 %8, ptr @gmp_default_free, ptr %2
  store ptr %5, ptr @gmp_allocate_func, align 8, !tbaa !35
  store ptr %7, ptr @gmp_reallocate_func, align 8, !tbaa !35
  store ptr %9, ptr @gmp_free_func, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @gmp_default_alloc(i64 noundef %0) #2 !prof !34 {
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #27
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @stderr, align 8, !tbaa !35
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #28
  tail call void @abort() #29
  unreachable

7:                                                ; preds = %1
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @gmp_default_realloc(ptr nocapture noundef %0, i64 %1, i64 noundef %2) #2 !prof !34 {
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %2) #30
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !35
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #28
  tail call void @abort() #29
  unreachable

9:                                                ; preds = %3
  ret ptr %4
}

; Function Attrs: cold mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @gmp_default_free(ptr nocapture noundef %0, i64 %1) #3 !prof !34 {
  tail call void @free(ptr noundef %0) #31
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mpn_copyi(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #4 !prof !34 {
  %4 = icmp sgt i64 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3, %5
  %6 = phi i64 [ %10, %5 ], [ 0, %3 ]
  %7 = getelementptr inbounds i64, ptr %1, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds i64, ptr %0, i64 %6
  store i64 %8, ptr %9, align 8, !tbaa !39
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, %2
  br i1 %11, label %12, label %5, !llvm.loop !41

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mpn_copyd(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #4 !prof !34 {
  %4 = icmp sgt i64 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3, %5
  %6 = phi i64 [ %7, %5 ], [ %2, %3 ]
  %7 = add nsw i64 %6, -1
  %8 = getelementptr inbounds i64, ptr %1, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds i64, ptr %0, i64 %7
  store i64 %9, ptr %10, align 8, !tbaa !39
  %11 = icmp sgt i64 %6, 1
  br i1 %11, label %5, label %12, !llvm.loop !44

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @mpn_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #6 !prof !34 {
  br label %4

4:                                                ; preds = %7, %3
  %5 = phi i64 [ %2, %3 ], [ %8, %7 ]
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = add nsw i64 %5, -1
  %9 = getelementptr inbounds i64, ptr %0, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !39
  %11 = getelementptr inbounds i64, ptr %1, i64 %8
  %12 = load i64, ptr %11, align 8, !tbaa !39
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %4, label %14, !llvm.loop !45

14:                                               ; preds = %7
  %15 = icmp ugt i64 %10, %12
  %16 = select i1 %15, i32 1, i32 -1
  br label %17

17:                                               ; preds = %4, %14
  %18 = phi i32 [ %16, %14 ], [ 0, %4 ]
  ret i32 %18
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @mpn_zero(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #7 !prof !34 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = shl nuw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %5, i1 false), !tbaa !39
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @mpn_add_1(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 !prof !34 {
  %5 = tail call i64 @llvm.smax.i64(i64 %2, i64 1)
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 0, %4 ], [ %15, %6 ]
  %8 = phi i64 [ %3, %4 ], [ %13, %6 ]
  %9 = getelementptr inbounds i64, ptr %1, i64 %7
  %10 = load i64, ptr %9, align 8, !tbaa !39
  %11 = add i64 %10, %8
  %12 = icmp ult i64 %11, %8
  %13 = zext i1 %12 to i64
  %14 = getelementptr inbounds i64, ptr %0, i64 %7
  store i64 %11, ptr %14, align 8, !tbaa !39
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %17, label %6, !llvm.loop !46

17:                                               ; preds = %6
  ret i64 %13
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @mpn_add_n(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #4 !prof !34 {
  %5 = icmp sgt i64 %3, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %4, %6
  %7 = phi i64 [ %21, %6 ], [ 0, %4 ]
  %8 = phi i64 [ %19, %6 ], [ 0, %4 ]
  %9 = getelementptr inbounds i64, ptr %1, i64 %7
  %10 = load i64, ptr %9, align 8, !tbaa !39
  %11 = getelementptr inbounds i64, ptr %2, i64 %7
  %12 = load i64, ptr %11, align 8, !tbaa !39
  %13 = add i64 %10, %8
  %14 = icmp ult i64 %13, %8
  %15 = zext i1 %14 to i64
  %16 = add i64 %13, %12
  %17 = icmp ult i64 %16, %12
  %18 = zext i1 %17 to i64
  %19 = add nuw nsw i64 %18, %15
  %20 = getelementptr inbounds i64, ptr %0, i64 %7
  store i64 %16, ptr %20, align 8, !tbaa !39
  %21 = add nuw nsw i64 %7, 1
  %22 = icmp eq i64 %21, %3
  br i1 %22, label %23, label %6, !llvm.loop !47

23:                                               ; preds = %6, %4
  %24 = phi i64 [ 0, %4 ], [ %19, %6 ]
  ret i64 %24
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @mpn_add(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) local_unnamed_addr #4 !prof !34 {
  %6 = icmp sgt i64 %4, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %5, %7
  %8 = phi i64 [ %22, %7 ], [ 0, %5 ]
  %9 = phi i64 [ %20, %7 ], [ 0, %5 ]
  %10 = getelementptr inbounds i64, ptr %1, i64 %8
  %11 = load i64, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds i64, ptr %3, i64 %8
  %13 = load i64, ptr %12, align 8, !tbaa !39
  %14 = add i64 %11, %9
  %15 = icmp ult i64 %14, %9
  %16 = zext i1 %15 to i64
  %17 = add i64 %14, %13
  %18 = icmp ult i64 %17, %13
  %19 = zext i1 %18 to i64
  %20 = add nuw nsw i64 %19, %16
  %21 = getelementptr inbounds i64, ptr %0, i64 %8
  store i64 %17, ptr %21, align 8, !tbaa !39
  %22 = add nuw nsw i64 %8, 1
  %23 = icmp eq i64 %22, %4
  br i1 %23, label %24, label %7, !llvm.loop !47

24:                                               ; preds = %7, %5
  %25 = phi i64 [ 0, %5 ], [ %20, %7 ]
  %26 = icmp sgt i64 %2, %4
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = getelementptr inbounds i64, ptr %0, i64 %4
  %29 = getelementptr inbounds i64, ptr %1, i64 %4
  %30 = sub nsw i64 %2, %4
  %31 = tail call i64 @llvm.smax.i64(i64 %30, i64 1)
  br label %32

32:                                               ; preds = %32, %27
  %33 = phi i64 [ 0, %27 ], [ %41, %32 ]
  %34 = phi i64 [ %25, %27 ], [ %39, %32 ]
  %35 = getelementptr inbounds i64, ptr %29, i64 %33
  %36 = load i64, ptr %35, align 8, !tbaa !39
  %37 = add i64 %36, %34
  %38 = icmp ult i64 %37, %34
  %39 = zext i1 %38 to i64
  %40 = getelementptr inbounds i64, ptr %28, i64 %33
  store i64 %37, ptr %40, align 8, !tbaa !39
  %41 = add nuw nsw i64 %33, 1
  %42 = icmp eq i64 %41, %31
  br i1 %42, label %43, label %32, !llvm.loop !46

43:                                               ; preds = %32, %24
  %44 = phi i64 [ %25, %24 ], [ %39, %32 ]
  ret i64 %44
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @mpn_sub_1(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 !prof !34 {
  %5 = tail call i64 @llvm.smax.i64(i64 %2, i64 1)
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 0, %4 ], [ %15, %6 ]
  %8 = phi i64 [ %3, %4 ], [ %12, %6 ]
  %9 = getelementptr inbounds i64, ptr %1, i64 %7
  %10 = load i64, ptr %9, align 8, !tbaa !39
  %11 = icmp ult i64 %10, %8
  %12 = zext i1 %11 to i64
  %13 = sub i64 %10, %8
  %14 = getelementptr inbounds i64, ptr %0, i64 %7
  store i64 %13, ptr %14, align 8, !tbaa !39
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %17, label %6, !llvm.loop !48

17:                                               ; preds = %6
  ret i64 %12
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @mpn_sub_n(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #4 !prof !34 {
  %5 = icmp sgt i64 %3, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %4, %6
  %7 = phi i64 [ %21, %6 ], [ 0, %4 ]
  %8 = phi i64 [ %18, %6 ], [ 0, %4 ]
  %9 = getelementptr inbounds i64, ptr %1, i64 %7
  %10 = load i64, ptr %9, align 8, !tbaa !39
  %11 = getelementptr inbounds i64, ptr %2, i64 %7
  %12 = load i64, ptr %11, align 8, !tbaa !39
  %13 = add i64 %12, %8
  %14 = icmp ult i64 %13, %8
  %15 = zext i1 %14 to i64
  %16 = icmp ult i64 %10, %13
  %17 = zext i1 %16 to i64
  %18 = add nuw nsw i64 %15, %17
  %19 = sub i64 %10, %13
  %20 = getelementptr inbounds i64, ptr %0, i64 %7
  store i64 %19, ptr %20, align 8, !tbaa !39
  %21 = add nuw nsw i64 %7, 1
  %22 = icmp eq i64 %21, %3
  br i1 %22, label %23, label %6, !llvm.loop !49

23:                                               ; preds = %6, %4
  %24 = phi i64 [ 0, %4 ], [ %18, %6 ]
  ret i64 %24
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @mpn_sub(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) local_unnamed_addr #4 !prof !34 {
  %6 = icmp sgt i64 %4, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %5, %7
  %8 = phi i64 [ %22, %7 ], [ 0, %5 ]
  %9 = phi i64 [ %19, %7 ], [ 0, %5 ]
  %10 = getelementptr inbounds i64, ptr %1, i64 %8
  %11 = load i64, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds i64, ptr %3, i64 %8
  %13 = load i64, ptr %12, align 8, !tbaa !39
  %14 = add i64 %13, %9
  %15 = icmp ult i64 %14, %9
  %16 = zext i1 %15 to i64
  %17 = icmp ult i64 %11, %14
  %18 = zext i1 %17 to i64
  %19 = add nuw nsw i64 %16, %18
  %20 = sub i64 %11, %14
  %21 = getelementptr inbounds i64, ptr %0, i64 %8
  store i64 %20, ptr %21, align 8, !tbaa !39
  %22 = add nuw nsw i64 %8, 1
  %23 = icmp eq i64 %22, %4
  br i1 %23, label %24, label %7, !llvm.loop !49

24:                                               ; preds = %7, %5
  %25 = phi i64 [ 0, %5 ], [ %19, %7 ]
  %26 = icmp sgt i64 %2, %4
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = getelementptr inbounds i64, ptr %0, i64 %4
  %29 = getelementptr inbounds i64, ptr %1, i64 %4
  %30 = sub nsw i64 %2, %4
  %31 = tail call i64 @llvm.smax.i64(i64 %30, i64 1)
  br label %32

32:                                               ; preds = %32, %27
  %33 = phi i64 [ 0, %27 ], [ %41, %32 ]
  %34 = phi i64 [ %25, %27 ], [ %38, %32 ]
  %35 = getelementptr inbounds i64, ptr %29, i64 %33
  %36 = load i64, ptr %35, align 8, !tbaa !39
  %37 = icmp ult i64 %36, %34
  %38 = zext i1 %37 to i64
  %39 = sub i64 %36, %34
  %40 = getelementptr inbounds i64, ptr %28, i64 %33
  store i64 %39, ptr %40, align 8, !tbaa !39
  %41 = add nuw nsw i64 %33, 1
  %42 = icmp eq i64 %41, %31
  br i1 %42, label %43, label %32, !llvm.loop !48

43:                                               ; preds = %32, %24
  %44 = phi i64 [ %25, %24 ], [ %38, %32 ]
  ret i64 %44
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @mpn_mul_1(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #8 !prof !34 {
  %5 = lshr i64 %3, 32
  %6 = and i64 %3, 4294967295
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i64 [ 0, %4 ], [ %34, %7 ]
  %9 = phi i64 [ %2, %4 ], [ %36, %7 ]
  %10 = phi ptr [ %1, %4 ], [ %12, %7 ]
  %11 = phi ptr [ %0, %4 ], [ %35, %7 ]
  %12 = getelementptr inbounds i64, ptr %10, i64 1
  %13 = load i64, ptr %10, align 8, !tbaa !39
  %14 = lshr i64 %13, 32
  %15 = and i64 %13, 4294967295
  %16 = mul nuw i64 %15, %6
  %17 = mul nuw i64 %15, %5
  %18 = mul nuw i64 %14, %6
  %19 = mul nuw i64 %14, %5
  %20 = lshr i64 %16, 32
  %21 = add i64 %18, %17
  %22 = add i64 %21, %20
  %23 = icmp ult i64 %22, %18
  %24 = add nuw i64 %19, 4294967296
  %25 = select i1 %23, i64 %24, i64 %19
  %26 = lshr i64 %22, 32
  %27 = add i64 %25, %26
  %28 = shl i64 %22, 32
  %29 = and i64 %16, 4294967295
  %30 = add i64 %29, %8
  %31 = add i64 %30, %28
  %32 = icmp ult i64 %31, %8
  %33 = zext i1 %32 to i64
  %34 = add i64 %27, %33
  %35 = getelementptr inbounds i64, ptr %11, i64 1
  store i64 %31, ptr %11, align 8, !tbaa !39
  %36 = add nsw i64 %9, -1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %7, !llvm.loop !50

38:                                               ; preds = %7
  ret i64 %34
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @mpn_addmul_1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #8 !prof !34 {
  %5 = lshr i64 %3, 32
  %6 = and i64 %3, 4294967295
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i64 [ 0, %4 ], [ %39, %7 ]
  %9 = phi i64 [ %2, %4 ], [ %41, %7 ]
  %10 = phi ptr [ %1, %4 ], [ %12, %7 ]
  %11 = phi ptr [ %0, %4 ], [ %40, %7 ]
  %12 = getelementptr inbounds i64, ptr %10, i64 1
  %13 = load i64, ptr %10, align 8, !tbaa !39
  %14 = lshr i64 %13, 32
  %15 = and i64 %13, 4294967295
  %16 = mul nuw i64 %15, %6
  %17 = mul nuw i64 %15, %5
  %18 = mul nuw i64 %14, %6
  %19 = mul nuw i64 %14, %5
  %20 = lshr i64 %16, 32
  %21 = add i64 %18, %17
  %22 = add i64 %21, %20
  %23 = icmp ult i64 %22, %18
  %24 = add nuw i64 %19, 4294967296
  %25 = select i1 %23, i64 %24, i64 %19
  %26 = lshr i64 %22, 32
  %27 = add i64 %25, %26
  %28 = shl i64 %22, 32
  %29 = and i64 %16, 4294967295
  %30 = add i64 %29, %8
  %31 = add i64 %30, %28
  %32 = icmp ult i64 %31, %8
  %33 = zext i1 %32 to i64
  %34 = add i64 %27, %33
  %35 = load i64, ptr %11, align 8, !tbaa !39
  %36 = add i64 %31, %35
  %37 = icmp ult i64 %36, %35
  %38 = zext i1 %37 to i64
  %39 = add i64 %34, %38
  %40 = getelementptr inbounds i64, ptr %11, i64 1
  store i64 %36, ptr %11, align 8, !tbaa !39
  %41 = add nsw i64 %9, -1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %7, !llvm.loop !51

43:                                               ; preds = %7
  ret i64 %39
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @mpn_submul_1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #8 !prof !34 {
  %5 = lshr i64 %3, 32
  %6 = and i64 %3, 4294967295
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i64 [ 0, %4 ], [ %39, %7 ]
  %9 = phi i64 [ %2, %4 ], [ %41, %7 ]
  %10 = phi ptr [ %1, %4 ], [ %12, %7 ]
  %11 = phi ptr [ %0, %4 ], [ %40, %7 ]
  %12 = getelementptr inbounds i64, ptr %10, i64 1
  %13 = load i64, ptr %10, align 8, !tbaa !39
  %14 = lshr i64 %13, 32
  %15 = and i64 %13, 4294967295
  %16 = mul nuw i64 %15, %6
  %17 = mul nuw i64 %15, %5
  %18 = mul nuw i64 %14, %6
  %19 = mul nuw i64 %14, %5
  %20 = lshr i64 %16, 32
  %21 = add i64 %18, %17
  %22 = add i64 %21, %20
  %23 = icmp ult i64 %22, %18
  %24 = add nuw i64 %19, 4294967296
  %25 = select i1 %23, i64 %24, i64 %19
  %26 = lshr i64 %22, 32
  %27 = add i64 %25, %26
  %28 = shl i64 %22, 32
  %29 = and i64 %16, 4294967295
  %30 = add i64 %29, %8
  %31 = add i64 %30, %28
  %32 = icmp ult i64 %31, %8
  %33 = zext i1 %32 to i64
  %34 = add i64 %27, %33
  %35 = load i64, ptr %11, align 8, !tbaa !39
  %36 = sub i64 %35, %31
  %37 = icmp ugt i64 %31, %35
  %38 = zext i1 %37 to i64
  %39 = add i64 %34, %38
  %40 = getelementptr inbounds i64, ptr %11, i64 1
  store i64 %36, ptr %11, align 8, !tbaa !39
  %41 = add nsw i64 %9, -1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %7, !llvm.loop !52

43:                                               ; preds = %7
  ret i64 %39
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @mpn_mul(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) local_unnamed_addr #8 !prof !34 {
  %6 = load i64, ptr %3, align 8, !tbaa !39
  %7 = tail call i64 @mpn_mul_1(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %6)
  %8 = getelementptr inbounds i64, ptr %0, i64 %2
  store i64 %7, ptr %8, align 8, !tbaa !39
  %9 = icmp sgt i64 %4, 1
  br i1 %9, label %10, label %21

10:                                               ; preds = %5, %10
  %11 = phi i64 [ %14, %10 ], [ %4, %5 ]
  %12 = phi ptr [ %16, %10 ], [ %3, %5 ]
  %13 = phi ptr [ %15, %10 ], [ %0, %5 ]
  %14 = add nsw i64 %11, -1
  %15 = getelementptr inbounds i64, ptr %13, i64 1
  %16 = getelementptr inbounds i64, ptr %12, i64 1
  %17 = load i64, ptr %16, align 8, !tbaa !39
  %18 = tail call i64 @mpn_addmul_1(ptr noundef nonnull %15, ptr noundef %1, i64 noundef %2, i64 noundef %17)
  %19 = getelementptr inbounds i64, ptr %15, i64 %2
  store i64 %18, ptr %19, align 8, !tbaa !39
  %20 = icmp sgt i64 %11, 2
  br i1 %20, label %10, label %21, !llvm.loop !53

21:                                               ; preds = %10, %5
  %22 = phi ptr [ %0, %5 ], [ %15, %10 ]
  %23 = getelementptr inbounds i64, ptr %22, i64 %2
  %24 = load i64, ptr %23, align 8, !tbaa !39
  ret i64 %24
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mpn_mul_n(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #8 !prof !34 {
  %5 = tail call i64 @mpn_mul(ptr noundef %0, ptr noundef %1, i64 noundef %3, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mpn_sqr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #8 !prof !34 {
  %4 = tail call i64 @mpn_mul(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @mpn_lshift(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #8 !prof !34 {
  %5 = getelementptr inbounds i64, ptr %1, i64 %2
  %6 = getelementptr inbounds i64, ptr %0, i64 %2
  %7 = zext nneg i32 %3 to i64
  %8 = sub i32 64, %3
  %9 = getelementptr inbounds i64, ptr %5, i64 -1
  %10 = load i64, ptr %9, align 8, !tbaa !39
  %11 = zext i32 %8 to i64
  %12 = shl i64 %10, %7
  %13 = add nsw i64 %2, -1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %4, %15
  %16 = phi i64 [ %26, %15 ], [ %13, %4 ]
  %17 = phi i64 [ %25, %15 ], [ %12, %4 ]
  %18 = phi ptr [ %24, %15 ], [ %6, %4 ]
  %19 = phi ptr [ %20, %15 ], [ %9, %4 ]
  %20 = getelementptr inbounds i64, ptr %19, i64 -1
  %21 = load i64, ptr %20, align 8, !tbaa !39
  %22 = lshr i64 %21, %11
  %23 = or i64 %22, %17
  %24 = getelementptr inbounds i64, ptr %18, i64 -1
  store i64 %23, ptr %24, align 8, !tbaa !39
  %25 = shl i64 %21, %7
  %26 = add nsw i64 %16, -1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %15, !llvm.loop !54

28:                                               ; preds = %15, %4
  %29 = phi ptr [ %6, %4 ], [ %24, %15 ]
  %30 = phi i64 [ %12, %4 ], [ %25, %15 ]
  %31 = lshr i64 %10, %11
  %32 = getelementptr inbounds i64, ptr %29, i64 -1
  store i64 %30, ptr %32, align 8, !tbaa !39
  ret i64 %31
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @mpn_rshift(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #8 !prof !34 {
  %5 = zext nneg i32 %3 to i64
  %6 = sub i32 64, %3
  %7 = load i64, ptr %1, align 8, !tbaa !39
  %8 = zext i32 %6 to i64
  %9 = lshr i64 %7, %5
  %10 = add nsw i64 %2, -1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %4, %12
  %13 = phi i64 [ %23, %12 ], [ %10, %4 ]
  %14 = phi i64 [ %22, %12 ], [ %9, %4 ]
  %15 = phi ptr [ %21, %12 ], [ %0, %4 ]
  %16 = phi ptr [ %17, %12 ], [ %1, %4 ]
  %17 = getelementptr inbounds i64, ptr %16, i64 1
  %18 = load i64, ptr %17, align 8, !tbaa !39
  %19 = shl i64 %18, %8
  %20 = or i64 %19, %14
  %21 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %20, ptr %15, align 8, !tbaa !39
  %22 = lshr i64 %18, %5
  %23 = add nsw i64 %13, -1
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %12, !llvm.loop !55

25:                                               ; preds = %12, %4
  %26 = phi ptr [ %0, %4 ], [ %21, %12 ]
  %27 = phi i64 [ %9, %4 ], [ %22, %12 ]
  %28 = shl i64 %7, %8
  store i64 %27, ptr %26, align 8, !tbaa !39
  ret i64 %28
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @mpn_scan1(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #6 !prof !34 {
  %3 = lshr i64 %1, 6
  %4 = getelementptr inbounds i64, ptr %0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !39
  %6 = and i64 %1, 63
  %7 = shl nsw i64 -1, %6
  %8 = and i64 %5, %7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2, %14
  %11 = phi i64 [ %12, %14 ], [ %3, %2 ]
  %12 = add nuw nsw i64 %11, 1
  %13 = icmp eq i64 %12, %3
  br i1 %13, label %46, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds i64, ptr %0, i64 %12
  %16 = load i64, ptr %15, align 8, !tbaa !39
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %10, label %18, !llvm.loop !56

18:                                               ; preds = %14, %2
  %19 = phi i64 [ %3, %2 ], [ %12, %14 ]
  %20 = phi i64 [ %8, %2 ], [ %16, %14 ]
  %21 = sub i64 0, %20
  %22 = and i64 %20, %21
  %23 = icmp ult i64 %22, 72057594037927936
  br i1 %23, label %28, label %24

24:                                               ; preds = %28, %18
  %25 = phi i64 [ %22, %18 ], [ %31, %28 ]
  %26 = phi i32 [ 0, %18 ], [ %32, %28 ]
  %27 = icmp sgt i64 %25, -1
  br i1 %27, label %34, label %40

28:                                               ; preds = %18, %28
  %29 = phi i32 [ %32, %28 ], [ 0, %18 ]
  %30 = phi i64 [ %31, %28 ], [ %22, %18 ]
  %31 = shl nuw i64 %30, 8
  %32 = add i32 %29, 8
  %33 = icmp ult i64 %30, 281474976710656
  br i1 %33, label %28, label %24, !llvm.loop !57

34:                                               ; preds = %24, %34
  %35 = phi i32 [ %38, %34 ], [ %26, %24 ]
  %36 = phi i64 [ %37, %34 ], [ %25, %24 ]
  %37 = shl nuw i64 %36, 1
  %38 = add i32 %35, 1
  %39 = icmp sgt i64 %37, -1
  br i1 %39, label %34, label %40, !llvm.loop !58

40:                                               ; preds = %34, %24
  %41 = phi i32 [ %26, %24 ], [ %38, %34 ]
  %42 = sub i32 63, %41
  %43 = shl i64 %19, 6
  %44 = zext i32 %42 to i64
  %45 = add i64 %43, %44
  br label %46

46:                                               ; preds = %10, %40
  %47 = phi i64 [ %45, %40 ], [ -1, %10 ]
  ret i64 %47
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @mpn_scan0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #6 !prof !34 {
  %3 = lshr i64 %1, 6
  %4 = getelementptr inbounds i64, ptr %0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !39
  %6 = xor i64 %5, -1
  %7 = and i64 %1, 63
  %8 = shl nsw i64 -1, %7
  %9 = and i64 %8, %6
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2, %17
  %12 = phi i64 [ %13, %17 ], [ %3, %2 ]
  %13 = add nuw nsw i64 %12, 1
  %14 = icmp eq i64 %13, %3
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = and i64 %1, -64
  br label %51

17:                                               ; preds = %11
  %18 = getelementptr inbounds i64, ptr %0, i64 %13
  %19 = load i64, ptr %18, align 8, !tbaa !39
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %11, label %21, !llvm.loop !56

21:                                               ; preds = %17
  %22 = xor i64 %19, -1
  br label %23

23:                                               ; preds = %21, %2
  %24 = phi i64 [ %3, %2 ], [ %13, %21 ]
  %25 = phi i64 [ %9, %2 ], [ %22, %21 ]
  %26 = sub i64 0, %25
  %27 = and i64 %25, %26
  %28 = icmp ult i64 %27, 72057594037927936
  br i1 %28, label %33, label %29

29:                                               ; preds = %33, %23
  %30 = phi i64 [ %27, %23 ], [ %36, %33 ]
  %31 = phi i32 [ 0, %23 ], [ %37, %33 ]
  %32 = icmp sgt i64 %30, -1
  br i1 %32, label %39, label %45

33:                                               ; preds = %23, %33
  %34 = phi i32 [ %37, %33 ], [ 0, %23 ]
  %35 = phi i64 [ %36, %33 ], [ %27, %23 ]
  %36 = shl nuw i64 %35, 8
  %37 = add i32 %34, 8
  %38 = icmp ult i64 %35, 281474976710656
  br i1 %38, label %33, label %29, !llvm.loop !57

39:                                               ; preds = %29, %39
  %40 = phi i32 [ %43, %39 ], [ %31, %29 ]
  %41 = phi i64 [ %42, %39 ], [ %30, %29 ]
  %42 = shl nuw i64 %41, 1
  %43 = add i32 %40, 1
  %44 = icmp sgt i64 %42, -1
  br i1 %44, label %39, label %45, !llvm.loop !58

45:                                               ; preds = %39, %29
  %46 = phi i32 [ %31, %29 ], [ %43, %39 ]
  %47 = sub i32 63, %46
  %48 = shl i64 %24, 6
  %49 = zext i32 %47 to i64
  %50 = add i64 %48, %49
  br label %51

51:                                               ; preds = %15, %45
  %52 = phi i64 [ %16, %15 ], [ %50, %45 ]
  ret i64 %52
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @mpn_invert_3by2(i64 noundef %0, i64 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = lshr i64 %0, 32
  %4 = xor i64 %0, -1
  %5 = udiv i64 %4, %3
  %6 = and i64 %5, 4294967295
  %7 = mul i64 %5, %3
  %8 = urem i64 %4, %3
  %9 = shl i64 %8, 32
  %10 = or disjoint i64 %9, 4294967295
  %11 = and i64 %0, 4294967295
  %12 = mul nuw i64 %6, %11
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = add i64 %5, 4294967295
  %16 = add i64 %10, %0
  %17 = icmp uge i64 %16, %0
  %18 = icmp ult i64 %16, %12
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = add i64 %5, 4294967294
  %22 = add i64 %16, %0
  br label %23

23:                                               ; preds = %14, %20, %2
  %24 = phi i64 [ %21, %20 ], [ %15, %14 ], [ %5, %2 ]
  %25 = phi i64 [ %22, %20 ], [ %16, %14 ], [ %10, %2 ]
  %26 = sub i64 %25, %12
  %27 = lshr i64 %26, 32
  %28 = and i64 %24, 4294967295
  %29 = mul nuw i64 %27, %28
  %30 = add i64 %29, %26
  %31 = lshr i64 %30, 32
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, 1
  %34 = shl i64 %26, 32
  %35 = or disjoint i64 %34, 4294967295
  %36 = zext i32 %33 to i64
  %37 = mul i64 %36, %0
  %38 = sub i64 %35, %37
  %39 = shl i64 %30, 32
  %40 = icmp ult i64 %38, %39
  %41 = select i1 %40, i32 %33, i32 %32
  %42 = select i1 %40, i64 0, i64 %0
  %43 = add i64 %42, %38
  %44 = shl nuw i64 %28, 32
  %45 = zext i32 %41 to i64
  %46 = or disjoint i64 %44, %45
  %47 = icmp uge i64 %43, %0
  %48 = zext i1 %47 to i64
  %49 = add i64 %46, %48
  %50 = icmp eq i64 %1, 0
  br i1 %50, label %97, label %51

51:                                               ; preds = %23
  %52 = select i1 %47, i64 %0, i64 0
  %53 = xor i64 %43, -1
  %54 = add i64 %53, %1
  %55 = add i64 %54, %52
  %56 = icmp ult i64 %55, %1
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = icmp ult i64 %55, %0
  %59 = select i1 %58, i64 -1, i64 -2
  %60 = add i64 %59, %49
  %61 = select i1 %58, i64 0, i64 %0
  %62 = add i64 %61, %0
  %63 = sub i64 %55, %62
  br label %64

64:                                               ; preds = %51, %57
  %65 = phi i64 [ %60, %57 ], [ %49, %51 ]
  %66 = phi i64 [ %63, %57 ], [ %55, %51 ]
  %67 = lshr i64 %1, 32
  %68 = lshr i64 %65, 32
  %69 = and i64 %1, 4294967295
  %70 = and i64 %65, 4294967295
  %71 = mul nuw i64 %70, %69
  %72 = mul nuw i64 %68, %69
  %73 = mul nuw i64 %70, %67
  %74 = mul nuw i64 %68, %67
  %75 = lshr i64 %71, 32
  %76 = add i64 %73, %72
  %77 = add i64 %76, %75
  %78 = icmp ult i64 %77, %73
  %79 = add nuw i64 %74, 4294967296
  %80 = select i1 %78, i64 %79, i64 %74
  %81 = lshr i64 %77, 32
  %82 = add i64 %80, %81
  %83 = add i64 %82, %66
  %84 = icmp ult i64 %83, %82
  br i1 %84, label %85, label %97

85:                                               ; preds = %64
  %86 = shl i64 %77, 32
  %87 = and i64 %71, 4294967295
  %88 = or disjoint i64 %86, %87
  %89 = add i64 %65, -1
  %90 = icmp ugt i64 %83, %0
  %91 = icmp eq i64 %83, %0
  %92 = icmp ugt i64 %88, %1
  %93 = and i1 %92, %91
  %94 = or i1 %90, %93
  %95 = sext i1 %94 to i64
  %96 = add i64 %89, %95
  br label %97

97:                                               ; preds = %64, %85, %23
  %98 = phi i64 [ %49, %23 ], [ %96, %85 ], [ %65, %64 ]
  ret i64 %98
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpn_get_str(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 !prof !34 {
  %5 = alloca %struct.mpn_base_info, align 8
  %6 = tail call fastcc i32 @mpn_base_power_of_two_p(i32 noundef %1), !range !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i64 @mpn_get_str_bits(ptr noundef %0, i32 noundef %6, ptr noundef %2, i64 noundef %3)
  br label %26

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #31
  %11 = sext i32 %1 to i64
  %12 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %11, i64 %11)
  %13 = extractvalue { i64, i1 } %12, 1
  br i1 %13, label %21, label %14

14:                                               ; preds = %10, %14
  %15 = phi i32 [ %18, %14 ], [ 1, %10 ]
  %16 = phi i64 [ %17, %14 ], [ %11, %10 ]
  %17 = mul i64 %16, %11
  %18 = add i32 %15, 1
  %19 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %11, i64 %17)
  %20 = extractvalue { i64, i1 } %19, 1
  br i1 %20, label %21, label %14, !llvm.loop !60

21:                                               ; preds = %14, %10
  %22 = phi i64 [ %11, %10 ], [ %17, %14 ]
  %23 = phi i32 [ 1, %10 ], [ %18, %14 ]
  store i32 %23, ptr %5, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct.mpn_base_info, ptr %5, i64 0, i32 1
  store i64 %22, ptr %24, align 8, !tbaa !64
  %25 = call fastcc i64 @mpn_get_str_other(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #31
  br label %26

26:                                               ; preds = %21, %8
  %27 = phi i64 [ %9, %8 ], [ %25, %21 ]
  ret i64 %27
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i32 @mpn_base_power_of_two_p(i32 noundef %0) unnamed_addr #9 !prof !34 {
  switch i32 %0, label %9 [
    i32 2, label %10
    i32 4, label %2
    i32 8, label %3
    i32 16, label %4
    i32 32, label %5
    i32 64, label %6
    i32 128, label %7
    i32 256, label %8
  ]

2:                                                ; preds = %1
  br label %10

3:                                                ; preds = %1
  br label %10

4:                                                ; preds = %1
  br label %10

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  br label %10

7:                                                ; preds = %1
  br label %10

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %1, %9, %8, %7, %6, %5, %4, %3, %2
  %11 = phi i32 [ 0, %9 ], [ 8, %8 ], [ 7, %7 ], [ 6, %6 ], [ 5, %5 ], [ 4, %4 ], [ 3, %3 ], [ 2, %2 ], [ 1, %1 ]
  ret i32 %11
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @mpn_get_str_bits(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #4 !prof !34 {
  %5 = add nsw i64 %3, -1
  %6 = shl i64 %5, 6
  %7 = getelementptr inbounds i64, ptr %2, i64 %5
  %8 = load i64, ptr %7, align 8, !tbaa !39
  %9 = icmp ult i64 %8, 72057594037927936
  br i1 %9, label %14, label %10

10:                                               ; preds = %14, %4
  %11 = phi i64 [ %8, %4 ], [ %17, %14 ]
  %12 = phi i32 [ 0, %4 ], [ %18, %14 ]
  %13 = icmp sgt i64 %11, -1
  br i1 %13, label %20, label %26

14:                                               ; preds = %4, %14
  %15 = phi i32 [ %18, %14 ], [ 0, %4 ]
  %16 = phi i64 [ %17, %14 ], [ %8, %4 ]
  %17 = shl nuw i64 %16, 8
  %18 = add i32 %15, 8
  %19 = icmp ult i64 %16, 281474976710656
  br i1 %19, label %14, label %10, !llvm.loop !65

20:                                               ; preds = %10, %20
  %21 = phi i32 [ %24, %20 ], [ %12, %10 ]
  %22 = phi i64 [ %23, %20 ], [ %11, %10 ]
  %23 = shl nuw i64 %22, 1
  %24 = add i32 %21, 1
  %25 = icmp sgt i64 %23, -1
  br i1 %25, label %20, label %26, !llvm.loop !66

26:                                               ; preds = %20, %10
  %27 = phi i32 [ %12, %10 ], [ %24, %20 ]
  %28 = zext i32 %27 to i64
  %29 = zext nneg i32 %1 to i64
  %30 = add nuw nsw i64 %29, 63
  %31 = add i64 %30, %6
  %32 = sub i64 %31, %28
  %33 = udiv i64 %32, %29
  %34 = icmp ult i64 %32, %29
  br i1 %34, label %69, label %35

35:                                               ; preds = %26
  %36 = shl nsw i32 -1, %1
  %37 = xor i32 %36, -1
  br label %38

38:                                               ; preds = %35, %60
  %39 = phi i64 [ %33, %35 ], [ %42, %60 ]
  %40 = phi i32 [ 0, %35 ], [ %62, %60 ]
  %41 = phi i64 [ 0, %35 ], [ %61, %60 ]
  %42 = add i64 %39, -1
  %43 = getelementptr inbounds i64, ptr %2, i64 %41
  %44 = load i64, ptr %43, align 8, !tbaa !39
  %45 = zext nneg i32 %40 to i64
  %46 = lshr i64 %44, %45
  %47 = add i32 %40, %1
  %48 = icmp ugt i32 %47, 63
  br i1 %48, label %49, label %60

49:                                               ; preds = %38
  %50 = add nsw i64 %41, 1
  %51 = icmp slt i64 %50, %3
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = add i32 %47, -64
  %54 = getelementptr inbounds i64, ptr %2, i64 %50
  %55 = load i64, ptr %54, align 8, !tbaa !39
  %56 = sub i32 %1, %53
  %57 = zext nneg i32 %56 to i64
  %58 = shl i64 %55, %57
  %59 = or i64 %58, %46
  br label %60

60:                                               ; preds = %52, %49, %38
  %61 = phi i64 [ %50, %52 ], [ %50, %49 ], [ %41, %38 ]
  %62 = phi i32 [ %53, %52 ], [ %47, %49 ], [ %47, %38 ]
  %63 = phi i64 [ %59, %52 ], [ %46, %49 ], [ %46, %38 ]
  %64 = trunc i64 %63 to i32
  %65 = and i32 %64, %37
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds i8, ptr %0, i64 %42
  store i8 %66, ptr %67, align 1, !tbaa !67
  %68 = icmp eq i64 %42, 0
  br i1 %68, label %69, label %38, !llvm.loop !68

69:                                               ; preds = %60, %26
  ret i64 %33
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @mpn_get_str_other(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i64 noundef %4) unnamed_addr #2 !prof !34 {
  %6 = alloca %struct.gmp_div_inverse, align 8
  %7 = alloca %struct.gmp_div_inverse, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #31
  %8 = sext i32 %1 to i64
  %9 = icmp sgt i32 %1, -1
  br i1 %9, label %14, label %10

10:                                               ; preds = %14, %5
  %11 = phi i64 [ %8, %5 ], [ %17, %14 ]
  %12 = phi i32 [ 0, %5 ], [ %18, %14 ]
  %13 = icmp sgt i64 %11, -1
  br i1 %13, label %20, label %26

14:                                               ; preds = %5, %14
  %15 = phi i32 [ %18, %14 ], [ 0, %5 ]
  %16 = phi i64 [ %17, %14 ], [ %8, %5 ]
  %17 = shl nuw i64 %16, 8
  %18 = add i32 %15, 8
  %19 = icmp ult i64 %16, 281474976710656
  br i1 %19, label %14, label %10, !llvm.loop !69

20:                                               ; preds = %10, %20
  %21 = phi i32 [ %24, %20 ], [ %12, %10 ]
  %22 = phi i64 [ %23, %20 ], [ %11, %10 ]
  %23 = shl nuw i64 %22, 1
  %24 = add i32 %21, 1
  %25 = icmp sgt i64 %23, -1
  br i1 %25, label %20, label %26, !llvm.loop !70

26:                                               ; preds = %20, %10
  %27 = phi i32 [ %12, %10 ], [ %24, %20 ]
  store i32 %27, ptr %6, align 8, !tbaa !71
  %28 = zext nneg i32 %27 to i64
  %29 = shl i64 %8, %28
  %30 = getelementptr inbounds %struct.gmp_div_inverse, ptr %6, i64 0, i32 1
  store i64 %29, ptr %30, align 8, !tbaa !73
  %31 = tail call i64 @mpn_invert_3by2(i64 noundef %29, i64 noundef 0)
  %32 = getelementptr inbounds %struct.gmp_div_inverse, ptr %6, i64 0, i32 3
  store i64 %31, ptr %32, align 8, !tbaa !74
  %33 = icmp sgt i64 %4, 1
  br i1 %33, label %34, label %90

34:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #31
  %35 = getelementptr inbounds %struct.mpn_base_info, ptr %2, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !64
  %37 = icmp ult i64 %36, 72057594037927936
  br i1 %37, label %42, label %38

38:                                               ; preds = %42, %34
  %39 = phi i64 [ %36, %34 ], [ %45, %42 ]
  %40 = phi i32 [ 0, %34 ], [ %46, %42 ]
  %41 = icmp sgt i64 %39, -1
  br i1 %41, label %48, label %54

42:                                               ; preds = %34, %42
  %43 = phi i32 [ %46, %42 ], [ 0, %34 ]
  %44 = phi i64 [ %45, %42 ], [ %36, %34 ]
  %45 = shl nuw i64 %44, 8
  %46 = add i32 %43, 8
  %47 = icmp ult i64 %44, 281474976710656
  br i1 %47, label %42, label %38, !llvm.loop !69

48:                                               ; preds = %38, %48
  %49 = phi i32 [ %52, %48 ], [ %40, %38 ]
  %50 = phi i64 [ %51, %48 ], [ %39, %38 ]
  %51 = shl nuw i64 %50, 1
  %52 = add i32 %49, 1
  %53 = icmp sgt i64 %51, -1
  br i1 %53, label %48, label %54, !llvm.loop !70

54:                                               ; preds = %48, %38
  %55 = phi i32 [ %40, %38 ], [ %52, %48 ]
  store i32 %55, ptr %7, align 8, !tbaa !71
  %56 = zext nneg i32 %55 to i64
  %57 = shl i64 %36, %56
  %58 = getelementptr inbounds %struct.gmp_div_inverse, ptr %7, i64 0, i32 1
  store i64 %57, ptr %58, align 8, !tbaa !73
  %59 = tail call i64 @mpn_invert_3by2(i64 noundef %57, i64 noundef 0)
  %60 = getelementptr inbounds %struct.gmp_div_inverse, ptr %7, i64 0, i32 3
  store i64 %59, ptr %60, align 8, !tbaa !74
  %61 = getelementptr i64, ptr %3, i64 -1
  br label %62

62:                                               ; preds = %86, %54
  %63 = phi i64 [ 0, %54 ], [ %87, %86 ]
  %64 = phi i64 [ %4, %54 ], [ %70, %86 ]
  %65 = call fastcc i64 @mpn_div_qr_1_preinv(ptr noundef %3, ptr noundef %3, i64 noundef %64, ptr noundef nonnull %7)
  %66 = getelementptr i64, ptr %61, i64 %64
  %67 = load i64, ptr %66, align 8, !tbaa !39
  %68 = icmp eq i64 %67, 0
  %69 = sext i1 %68 to i64
  %70 = add i64 %64, %69
  %71 = getelementptr inbounds i8, ptr %0, i64 %63
  %72 = call fastcc i64 @mpn_limb_get_str(ptr noundef %71, i64 noundef %65, ptr noundef nonnull %6)
  %73 = add i64 %72, %63
  %74 = load i32, ptr %2, align 8, !tbaa !61
  %75 = zext i32 %74 to i64
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %62, %77
  %78 = phi i64 [ %82, %77 ], [ %72, %62 ]
  %79 = phi i64 [ %80, %77 ], [ %73, %62 ]
  %80 = add i64 %79, 1
  %81 = getelementptr inbounds i8, ptr %0, i64 %79
  store i8 0, ptr %81, align 1, !tbaa !67
  %82 = add nuw nsw i64 %78, 1
  %83 = load i32, ptr %2, align 8, !tbaa !61
  %84 = zext i32 %83 to i64
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %77, label %86, !llvm.loop !75

86:                                               ; preds = %77, %62
  %87 = phi i64 [ %73, %62 ], [ %80, %77 ]
  %88 = icmp sgt i64 %70, 1
  br i1 %88, label %62, label %89, !llvm.loop !76

89:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #31
  br label %90

90:                                               ; preds = %89, %26
  %91 = phi i64 [ %87, %89 ], [ 0, %26 ]
  %92 = getelementptr inbounds i8, ptr %0, i64 %91
  %93 = load i64, ptr %3, align 8, !tbaa !39
  %94 = call fastcc i64 @mpn_limb_get_str(ptr noundef %92, i64 noundef %93, ptr noundef nonnull %6)
  %95 = add i64 %94, %91
  %96 = icmp ugt i64 %95, 1
  br i1 %96, label %97, label %111

97:                                               ; preds = %90
  %98 = getelementptr i8, ptr %0, i64 %95
  %99 = add i64 %94, %91
  %100 = add i64 %99, -2
  %101 = lshr i64 %100, 1
  br label %102

102:                                              ; preds = %97, %102
  %103 = phi i64 [ 0, %97 ], [ %109, %102 ]
  %104 = getelementptr inbounds i8, ptr %0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !67
  %106 = xor i64 %103, -1
  %107 = getelementptr i8, ptr %98, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !67
  store i8 %108, ptr %104, align 1, !tbaa !67
  store i8 %105, ptr %107, align 1, !tbaa !67
  %109 = add nuw nsw i64 %103, 1
  %110 = icmp eq i64 %103, %101
  br i1 %110, label %111, label %102, !llvm.loop !77

111:                                              ; preds = %102, %90
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #31
  ret i64 %95
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @mpn_set_str(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #8 !prof !34 {
  %5 = alloca %struct.mpn_base_info, align 8
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @mpn_base_power_of_two_p(i32 noundef %3), !range !59
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc i64 @mpn_set_str_bits(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %8)
  br label %28

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #31
  %13 = sext i32 %3 to i64
  %14 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %13, i64 %13)
  %15 = extractvalue { i64, i1 } %14, 1
  br i1 %15, label %23, label %16

16:                                               ; preds = %12, %16
  %17 = phi i32 [ %20, %16 ], [ 1, %12 ]
  %18 = phi i64 [ %19, %16 ], [ %13, %12 ]
  %19 = mul i64 %18, %13
  %20 = add i32 %17, 1
  %21 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %13, i64 %19)
  %22 = extractvalue { i64, i1 } %21, 1
  br i1 %22, label %23, label %16, !llvm.loop !60

23:                                               ; preds = %16, %12
  %24 = phi i64 [ %13, %12 ], [ %19, %16 ]
  %25 = phi i32 [ 1, %12 ], [ %20, %16 ]
  store i32 %25, ptr %5, align 8, !tbaa !61
  %26 = getelementptr inbounds %struct.mpn_base_info, ptr %5, i64 0, i32 1
  store i64 %24, ptr %26, align 8, !tbaa !64
  %27 = call fastcc i64 @mpn_set_str_other(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %13, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #31
  br label %28

28:                                               ; preds = %4, %23, %10
  %29 = phi i64 [ %11, %10 ], [ %27, %23 ], [ 0, %4 ]
  ret i64 %29
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @mpn_set_str_bits(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) unnamed_addr #4 !prof !34 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %41, %4
  %7 = phi i64 [ 0, %4 ], [ %42, %41 ]
  %8 = getelementptr i64, ptr %0, i64 -1
  %9 = icmp sgt i64 %7, 0
  br i1 %9, label %45, label %53

10:                                               ; preds = %4, %41
  %11 = phi i64 [ %14, %41 ], [ %2, %4 ]
  %12 = phi i32 [ %43, %41 ], [ 0, %4 ]
  %13 = phi i64 [ %42, %41 ], [ 0, %4 ]
  %14 = add i64 %11, -1
  %15 = icmp eq i32 %12, 0
  %16 = getelementptr inbounds i8, ptr %1, i64 %14
  %17 = load i8, ptr %16, align 1, !tbaa !67
  %18 = zext i8 %17 to i64
  br i1 %15, label %19, label %22

19:                                               ; preds = %10
  %20 = add nsw i64 %13, 1
  %21 = getelementptr inbounds i64, ptr %0, i64 %13
  store i64 %18, ptr %21, align 8, !tbaa !39
  br label %41

22:                                               ; preds = %10
  %23 = zext nneg i32 %12 to i64
  %24 = shl i64 %18, %23
  %25 = getelementptr i64, ptr %0, i64 %13
  %26 = getelementptr i64, ptr %25, i64 -1
  %27 = load i64, ptr %26, align 8, !tbaa !39
  %28 = or i64 %24, %27
  store i64 %28, ptr %26, align 8, !tbaa !39
  %29 = add i32 %12, %3
  %30 = icmp ugt i32 %29, 63
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = add i32 %29, -64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i8, ptr %16, align 1, !tbaa !67
  %36 = zext i8 %35 to i64
  %37 = sub i32 %3, %32
  %38 = zext nneg i32 %37 to i64
  %39 = lshr i64 %36, %38
  %40 = add nsw i64 %13, 1
  store i64 %39, ptr %25, align 8, !tbaa !39
  br label %41

41:                                               ; preds = %22, %34, %31, %19
  %42 = phi i64 [ %20, %19 ], [ %40, %34 ], [ %13, %31 ], [ %13, %22 ]
  %43 = phi i32 [ %3, %19 ], [ %32, %34 ], [ 0, %31 ], [ %29, %22 ]
  %44 = icmp eq i64 %14, 0
  br i1 %44, label %6, label %10, !llvm.loop !78

45:                                               ; preds = %6, %50
  %46 = phi i64 [ %51, %50 ], [ %7, %6 ]
  %47 = getelementptr i64, ptr %8, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !39
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = add nsw i64 %46, -1
  %52 = icmp sgt i64 %46, 1
  br i1 %52, label %45, label %53, !llvm.loop !79

53:                                               ; preds = %45, %50, %6
  %54 = phi i64 [ %7, %6 ], [ %46, %45 ], [ 0, %50 ]
  ret i64 %54
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @mpn_set_str_other(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #8 !prof !34 {
  %6 = add i64 %2, -1
  %7 = load i32, ptr %4, align 8, !tbaa !61
  %8 = zext i32 %7 to i64
  %9 = urem i64 %6, %8
  %10 = trunc i64 %9 to i32
  %11 = load i8, ptr %1, align 1, !tbaa !67
  %12 = zext i8 %11 to i64
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %5, %14
  %15 = phi i32 [ %24, %14 ], [ %10, %5 ]
  %16 = phi i64 [ %19, %14 ], [ 1, %5 ]
  %17 = phi i64 [ %23, %14 ], [ %12, %5 ]
  %18 = mul i64 %17, %3
  %19 = add nuw nsw i64 %16, 1
  %20 = getelementptr inbounds i8, ptr %1, i64 %16
  %21 = load i8, ptr %20, align 1, !tbaa !67
  %22 = zext i8 %21 to i64
  %23 = add i64 %18, %22
  %24 = add i32 %15, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %14, !llvm.loop !80

26:                                               ; preds = %14, %5
  %27 = phi i64 [ %12, %5 ], [ %23, %14 ]
  %28 = phi i64 [ 1, %5 ], [ %19, %14 ]
  store i64 %27, ptr %0, align 8, !tbaa !39
  %29 = icmp ne i64 %27, 0
  %30 = zext i1 %29 to i64
  %31 = icmp ult i64 %28, %2
  br i1 %31, label %32, label %86

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.mpn_base_info, ptr %4, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %83
  %35 = phi i64 [ %28, %32 ], [ %63, %83 ]
  %36 = phi i64 [ %30, %32 ], [ %84, %83 ]
  %37 = getelementptr inbounds i8, ptr %1, i64 %35
  %38 = load i8, ptr %37, align 1, !tbaa !67
  %39 = zext i8 %38 to i64
  %40 = load i32, ptr %4, align 8, !tbaa !61
  %41 = add i64 %35, 1
  %42 = icmp ugt i32 %40, 1
  br i1 %42, label %43, label %61

43:                                               ; preds = %34
  %44 = add i32 %40, -2
  %45 = zext i32 %44 to i64
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi i64 [ %56, %46 ], [ %41, %43 ]
  %48 = phi i32 [ %55, %46 ], [ 1, %43 ]
  %49 = phi i64 [ %54, %46 ], [ %39, %43 ]
  %50 = mul i64 %49, %3
  %51 = getelementptr inbounds i8, ptr %1, i64 %47
  %52 = load i8, ptr %51, align 1, !tbaa !67
  %53 = zext i8 %52 to i64
  %54 = add i64 %50, %53
  %55 = add nuw i32 %48, 1
  %56 = add i64 %47, 1
  %57 = icmp eq i32 %55, %40
  br i1 %57, label %58, label %46, !llvm.loop !81

58:                                               ; preds = %46
  %59 = add i64 %35, 2
  %60 = add i64 %59, %45
  br label %61

61:                                               ; preds = %58, %34
  %62 = phi i64 [ %39, %34 ], [ %54, %58 ]
  %63 = phi i64 [ %41, %34 ], [ %60, %58 ]
  %64 = load i64, ptr %33, align 8, !tbaa !64
  %65 = tail call i64 @mpn_mul_1(ptr noundef nonnull %0, ptr noundef nonnull %0, i64 noundef %36, i64 noundef %64)
  %66 = tail call i64 @llvm.smax.i64(i64 %36, i64 1)
  br label %67

67:                                               ; preds = %67, %61
  %68 = phi i64 [ 0, %61 ], [ %75, %67 ]
  %69 = phi i64 [ %62, %61 ], [ %74, %67 ]
  %70 = getelementptr inbounds i64, ptr %0, i64 %68
  %71 = load i64, ptr %70, align 8, !tbaa !39
  %72 = add i64 %71, %69
  %73 = icmp ult i64 %72, %69
  %74 = zext i1 %73 to i64
  store i64 %72, ptr %70, align 8, !tbaa !39
  %75 = add nuw nsw i64 %68, 1
  %76 = icmp eq i64 %75, %66
  br i1 %76, label %77, label %67, !llvm.loop !46

77:                                               ; preds = %67
  %78 = add i64 %65, %74
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = add nsw i64 %36, 1
  %82 = getelementptr inbounds i64, ptr %0, i64 %36
  store i64 %78, ptr %82, align 8, !tbaa !39
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i64 [ %81, %80 ], [ %36, %77 ]
  %85 = icmp ult i64 %63, %2
  br i1 %85, label %34, label %86, !llvm.loop !82

86:                                               ; preds = %83, %26
  %87 = phi i64 [ %30, %26 ], [ %84, %83 ]
  ret i64 %87
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 !prof !34 {
  store i32 1, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !85
  %3 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %4 = tail call ptr %3(i64 noundef 8) #31
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !86
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_init2(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = icmp ne i64 %1, 0
  %4 = sext i1 %3 to i64
  %5 = add i64 %4, %1
  %6 = lshr i64 %5, 6
  %7 = add nuw nsw i64 %6, 1
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %0, align 8, !tbaa !83
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %9, align 4, !tbaa !85
  %10 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %11 = shl nuw nsw i64 %7, 3
  %12 = tail call ptr %10(i64 noundef %11) #31
  %13 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !86
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_clear(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  tail call void %2(ptr noundef %4, i64 noundef 0) #31
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @mpz_set_si(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = icmp sgt i64 %1, -1
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = icmp eq i64 %1, 0
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  br i1 %5, label %10, label %7

7:                                                ; preds = %4
  store i32 1, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  store i64 %1, ptr %9, align 8, !tbaa !39
  br label %16

10:                                               ; preds = %4
  store i32 0, ptr %6, align 4, !tbaa !85
  br label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 -1, ptr %12, align 4, !tbaa !85
  %13 = sub i64 0, %1
  %14 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  store i64 %13, ptr %15, align 8, !tbaa !39
  br label %16

16:                                               ; preds = %10, %7, %11
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @mpz_set_ui(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = icmp eq i64 %1, 0
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  br i1 %3, label %8, label %5

5:                                                ; preds = %2
  store i32 1, ptr %4, align 4, !tbaa !85
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  store i64 %1, ptr %7, align 8, !tbaa !39
  br label %9

8:                                                ; preds = %2
  store i32 0, ptr %4, align 4, !tbaa !85
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_set(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %43, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !85
  %7 = tail call i32 @llvm.abs.i32(i32 %6, i1 true)
  %8 = zext nneg i32 %7 to i64
  %9 = load i32, ptr %0, align 8, !tbaa !83
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %4
  %12 = tail call i64 @llvm.smax.i64(i64 %8, i64 1)
  %13 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %16 = shl nuw nsw i64 %12, 3
  %17 = tail call ptr %15(ptr noundef %14, i64 noundef 0, i64 noundef %16) #31
  store ptr %17, ptr %13, align 8, !tbaa !86
  %18 = trunc i64 %12 to i32
  store i32 %18, ptr %0, align 8, !tbaa !83
  %19 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !85
  %21 = tail call i32 @llvm.abs.i32(i32 %20, i1 true)
  %22 = zext nneg i32 %21 to i64
  %23 = icmp ult i64 %12, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  store i32 0, ptr %19, align 4, !tbaa !85
  br label %27

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %27

27:                                               ; preds = %24, %11, %25
  %28 = phi ptr [ %26, %25 ], [ %13, %11 ], [ %13, %24 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = icmp eq i32 %6, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %27, %33
  %34 = phi i64 [ %38, %33 ], [ 0, %27 ]
  %35 = getelementptr inbounds i64, ptr %31, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !39
  %37 = getelementptr inbounds i64, ptr %29, i64 %34
  store i64 %36, ptr %37, align 8, !tbaa !39
  %38 = add nuw nsw i64 %34, 1
  %39 = icmp eq i64 %38, %8
  br i1 %39, label %40, label %33, !llvm.loop !41

40:                                               ; preds = %33, %27
  %41 = load i32, ptr %5, align 4, !tbaa !85
  %42 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %41, ptr %42, align 4, !tbaa !85
  br label %43

43:                                               ; preds = %40, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_init_set_si(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  store i32 1, ptr %0, align 8, !tbaa !83
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !85
  %4 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %5 = tail call ptr %4(i64 noundef 8) #31
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !86
  %7 = icmp sgt i64 %1, -1
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  store i32 1, ptr %3, align 4, !tbaa !85
  store i64 %1, ptr %5, align 8, !tbaa !39
  br label %14

11:                                               ; preds = %8
  store i32 0, ptr %3, align 4, !tbaa !85
  br label %14

12:                                               ; preds = %2
  store i32 -1, ptr %3, align 4, !tbaa !85
  %13 = sub i64 0, %1
  store i64 %13, ptr %5, align 8, !tbaa !39
  br label %14

14:                                               ; preds = %10, %11, %12
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_init_set_ui(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  store i32 1, ptr %0, align 8, !tbaa !83
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !85
  %4 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %5 = tail call ptr %4(i64 noundef 8) #31
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !86
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 1, ptr %3, align 4, !tbaa !85
  store i64 %1, ptr %5, align 8, !tbaa !39
  br label %10

9:                                                ; preds = %2
  store i32 0, ptr %3, align 4, !tbaa !85
  br label %10

10:                                               ; preds = %8, %9
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_init_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  store i32 1, ptr %0, align 8, !tbaa !83
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !85
  %4 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %5 = tail call ptr %4(i64 noundef 8) #31
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !86
  tail call void @mpz_set(ptr noundef nonnull %0, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_fits_slong_p(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !34 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !85
  switch i32 %3, label %14 [
    i32 0, label %15
    i32 1, label %4
    i32 -1, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = load i64, ptr %6, align 8, !tbaa !39
  %8 = icmp sgt i64 %7, -1
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = load i64, ptr %11, align 8, !tbaa !39
  %13 = icmp ult i64 %12, -9223372036854775807
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %1, %14, %9, %4
  %16 = phi i1 [ %8, %4 ], [ %13, %9 ], [ false, %14 ], [ true, %1 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @mpz_fits_ulong_p(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !34 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !85
  %4 = sext i32 %3 to i64
  %5 = icmp sgt i32 %3, 0
  %6 = zext i1 %5 to i64
  %7 = icmp eq i64 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mpz_get_si(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !34 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !85
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = load i64, ptr %7, align 8, !tbaa !39
  %9 = and i64 %8, 9223372036854775807
  br label %18

10:                                               ; preds = %1
  %11 = icmp slt i32 %3, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = load i64, ptr %14, align 8, !tbaa !39
  %16 = sub i64 0, %15
  %17 = or i64 %16, -9223372036854775808
  br label %18

18:                                               ; preds = %10, %12, %5
  %19 = phi i64 [ %9, %5 ], [ %17, %12 ], [ 0, %10 ]
  ret i64 %19
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mpz_get_ui(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !34 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !85
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = load i64, ptr %7, align 8, !tbaa !39
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i64 [ %8, %5 ], [ 0, %1 ]
  ret i64 %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @mpz_size(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !34 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !85
  %4 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %5 = zext nneg i32 %4 to i64
  ret i64 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mpz_getlimbn(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #11 !prof !34 {
  %3 = icmp sgt i64 %1, -1
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !85
  %7 = tail call i32 @llvm.abs.i32(i32 %6, i1 true)
  %8 = zext nneg i32 %7 to i64
  %9 = icmp sgt i64 %8, %1
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = getelementptr inbounds i64, ptr %12, i64 %1
  %14 = load i64, ptr %13, align 8, !tbaa !39
  br label %15

15:                                               ; preds = %2, %4, %10
  %16 = phi i64 [ %14, %10 ], [ 0, %4 ], [ 0, %2 ]
  ret i64 %16
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_realloc2(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = icmp ne i64 %1, 0
  %4 = sext i1 %3 to i64
  %5 = add i64 %4, %1
  %6 = lshr i64 %5, 6
  %7 = add nuw nsw i64 %6, 1
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %11 = shl nuw nsw i64 %7, 3
  %12 = tail call ptr %10(ptr noundef %9, i64 noundef 0, i64 noundef %11) #31
  store ptr %12, ptr %8, align 8, !tbaa !86
  %13 = trunc i64 %7 to i32
  store i32 %13, ptr %0, align 8, !tbaa !83
  %14 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !85
  %16 = tail call i32 @llvm.abs.i32(i32 %15, i1 true)
  %17 = zext nneg i32 %16 to i64
  %18 = icmp ult i64 %7, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, ptr %14, align 4, !tbaa !85
  br label %20

20:                                               ; preds = %2, %19
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @mpz_limbs_read(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !34 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @mpz_limbs_modify(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !83
  %4 = sext i32 %3 to i64
  %5 = icmp slt i64 %4, %1
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = tail call i64 @llvm.smax.i64(i64 %1, i64 1)
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %11 = shl i64 %7, 3
  %12 = tail call ptr %10(ptr noundef %9, i64 noundef 0, i64 noundef %11) #31
  store ptr %12, ptr %8, align 8, !tbaa !86
  %13 = trunc i64 %7 to i32
  store i32 %13, ptr %0, align 8, !tbaa !83
  %14 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !85
  %16 = tail call i32 @llvm.abs.i32(i32 %15, i1 true)
  %17 = zext nneg i32 %16 to i64
  %18 = icmp ult i64 %7, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  store i32 0, ptr %14, align 4, !tbaa !85
  br label %22

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %22

22:                                               ; preds = %19, %6, %20
  %23 = phi ptr [ %21, %20 ], [ %8, %6 ], [ %8, %19 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !86
  ret ptr %24
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @mpz_limbs_write(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !83
  %4 = sext i32 %3 to i64
  %5 = icmp slt i64 %4, %1
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = tail call i64 @llvm.smax.i64(i64 %1, i64 1)
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %11 = shl i64 %7, 3
  %12 = tail call ptr %10(ptr noundef %9, i64 noundef 0, i64 noundef %11) #31
  store ptr %12, ptr %8, align 8, !tbaa !86
  %13 = trunc i64 %7 to i32
  store i32 %13, ptr %0, align 8, !tbaa !83
  %14 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !85
  %16 = tail call i32 @llvm.abs.i32(i32 %15, i1 true)
  %17 = zext nneg i32 %16 to i64
  %18 = icmp ult i64 %7, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  store i32 0, ptr %14, align 4, !tbaa !85
  br label %22

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %22

22:                                               ; preds = %6, %19, %20
  %23 = phi ptr [ %21, %20 ], [ %8, %19 ], [ %8, %6 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !86
  ret ptr %24
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @mpz_limbs_finish(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #13 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = tail call i64 @llvm.abs.i64(i64 %1, i1 true)
  %6 = getelementptr i64, ptr %4, i64 -1
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2, %13
  %9 = phi i64 [ %14, %13 ], [ %5, %2 ]
  %10 = getelementptr i64, ptr %6, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !39
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = add nsw i64 %9, -1
  %15 = icmp sgt i64 %9, 1
  br i1 %15, label %8, label %16, !llvm.loop !79

16:                                               ; preds = %8, %13, %2
  %17 = phi i64 [ %5, %2 ], [ %9, %8 ], [ %14, %13 ]
  %18 = icmp slt i64 %1, 0
  %19 = sub nsw i64 0, %17
  %20 = select i1 %18, i64 %19, i64 %17
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %21, ptr %22, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @mpz_roinit_n(ptr noundef returned writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 !prof !34 {
  store i32 0, ptr %0, align 8, !tbaa !83
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !86
  %5 = tail call i64 @llvm.abs.i64(i64 %2, i1 true)
  %6 = getelementptr i64, ptr %1, i64 -1
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %3, %13
  %9 = phi i64 [ %14, %13 ], [ %5, %3 ]
  %10 = getelementptr i64, ptr %6, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !39
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = add nsw i64 %9, -1
  %15 = icmp sgt i64 %9, 1
  br i1 %15, label %8, label %16, !llvm.loop !79

16:                                               ; preds = %8, %13, %3
  %17 = phi i64 [ %5, %3 ], [ %9, %8 ], [ %14, %13 ]
  %18 = icmp slt i64 %2, 0
  %19 = sub nsw i64 0, %17
  %20 = select i1 %18, i64 %19, i64 %17
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %21, ptr %22, align 4, !tbaa !85
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_set_d(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = fcmp uno double %1, 0.000000e+00
  %4 = fmul double %1, 5.000000e-01
  %5 = fcmp oeq double %4, %1
  %6 = or i1 %3, %5
  br i1 %6, label %62, label %7

7:                                                ; preds = %2
  %8 = fcmp olt double %1, 0.000000e+00
  %9 = fneg double %1
  %10 = select i1 %8, double %9, double %1
  %11 = fcmp olt double %10, 1.000000e+00
  br i1 %11, label %62, label %12

12:                                               ; preds = %7
  %13 = fcmp ult double %10, 0x43F0000000000000
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %14
  %15 = phi double [ %17, %14 ], [ %10, %12 ]
  %16 = phi i64 [ %18, %14 ], [ 1, %12 ]
  %17 = fmul double %15, 0x3BF0000000000000
  %18 = add nuw nsw i64 %16, 1
  %19 = fcmp ult double %17, 0x43F0000000000000
  br i1 %19, label %20, label %14, !llvm.loop !87

20:                                               ; preds = %14, %12
  %21 = phi i64 [ 1, %12 ], [ %18, %14 ]
  %22 = phi double [ %10, %12 ], [ %17, %14 ]
  %23 = load i32, ptr %0, align 8, !tbaa !83
  %24 = sext i32 %23 to i64
  %25 = icmp sgt i64 %21, %24
  %26 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br i1 %25, label %27, label %39

27:                                               ; preds = %20
  %28 = load ptr, ptr %26, align 8, !tbaa !86
  %29 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %30 = shl i64 %21, 3
  %31 = tail call ptr %29(ptr noundef %28, i64 noundef 0, i64 noundef %30) #31
  store ptr %31, ptr %26, align 8, !tbaa !86
  %32 = trunc i64 %21 to i32
  store i32 %32, ptr %0, align 8, !tbaa !83
  %33 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !85
  %35 = tail call i32 @llvm.abs.i32(i32 %34, i1 true)
  %36 = zext nneg i32 %35 to i64
  %37 = icmp ult i64 %21, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 0, ptr %33, align 4, !tbaa !85
  br label %39

39:                                               ; preds = %20, %38, %27
  %40 = load ptr, ptr %26, align 8, !tbaa !86
  %41 = fptoui double %22 to i64
  %42 = add nsw i64 %21, -1
  %43 = getelementptr inbounds i64, ptr %40, i64 %42
  store i64 %41, ptr %43, align 8, !tbaa !39
  %44 = icmp sgt i64 %21, 1
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = uitofp i64 %41 to double
  %47 = fsub double %22, %46
  br label %48

48:                                               ; preds = %45, %48
  %49 = phi double [ %55, %48 ], [ %47, %45 ]
  %50 = phi i64 [ %51, %48 ], [ %42, %45 ]
  %51 = add nsw i64 %50, -1
  %52 = fmul double %49, 0x43F0000000000000
  %53 = fptoui double %52 to i64
  %54 = uitofp i64 %53 to double
  %55 = fsub double %52, %54
  %56 = getelementptr inbounds i64, ptr %40, i64 %51
  store i64 %53, ptr %56, align 8, !tbaa !39
  %57 = icmp sgt i64 %50, 1
  br i1 %57, label %48, label %58, !llvm.loop !88

58:                                               ; preds = %48, %39
  %59 = sub nsw i64 0, %21
  %60 = select i1 %8, i64 %59, i64 %21
  %61 = trunc i64 %60 to i32
  br label %62

62:                                               ; preds = %7, %2, %58
  %63 = phi i32 [ %61, %58 ], [ 0, %2 ], [ 0, %7 ]
  %64 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %63, ptr %64, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_init_set_d(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #2 !prof !34 {
  store i32 1, ptr %0, align 8, !tbaa !83
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !85
  %4 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %5 = tail call ptr %4(i64 noundef 8) #31
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !86
  tail call void @mpz_set_d(ptr noundef nonnull %0, double noundef %1)
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local double @mpz_get_d(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !prof !34 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !85
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = add nsw i64 %7, -1
  %11 = getelementptr inbounds i64, ptr %9, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !39
  %13 = uitofp i64 %12 to double
  %14 = icmp ugt i32 %6, 1
  br i1 %14, label %15, label %24

15:                                               ; preds = %5, %15
  %16 = phi double [ %22, %15 ], [ %13, %5 ]
  %17 = phi i64 [ %18, %15 ], [ %10, %5 ]
  %18 = add nsw i64 %17, -1
  %19 = getelementptr inbounds i64, ptr %9, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !39
  %21 = uitofp i64 %20 to double
  %22 = tail call double @llvm.fmuladd.f64(double %16, double 0x43F0000000000000, double %21)
  %23 = icmp sgt i64 %17, 1
  br i1 %23, label %15, label %24, !llvm.loop !89

24:                                               ; preds = %15, %5
  %25 = phi double [ %13, %5 ], [ %22, %15 ]
  %26 = icmp slt i32 %3, 0
  %27 = fneg double %25
  %28 = select i1 %26, double %27, double %25
  br label %29

29:                                               ; preds = %1, %24
  %30 = phi double [ %28, %24 ], [ 0.000000e+00, %1 ]
  ret double %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_cmpabs_d(ptr nocapture noundef readonly %0, double noundef %1) local_unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = fcmp oge double %1, 0.000000e+00
  %6 = fneg double %1
  %7 = select i1 %5, double %1, double %6
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %11 = zext i32 %10 to i64
  %12 = icmp ugt i32 %10, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %9, %13
  %14 = phi double [ %16, %13 ], [ %7, %9 ]
  %15 = phi i64 [ %17, %13 ], [ 1, %9 ]
  %16 = fmul double %14, 0x3BF0000000000000
  %17 = add nuw nsw i64 %15, 1
  %18 = icmp eq i64 %17, %11
  br i1 %18, label %19, label %13, !llvm.loop !90

19:                                               ; preds = %13, %9
  %20 = phi double [ %7, %9 ], [ %16, %13 ]
  %21 = fcmp ult double %20, 0x43F0000000000000
  br i1 %21, label %22, label %50

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !86
  br label %25

25:                                               ; preds = %22, %42
  %26 = phi i64 [ %29, %42 ], [ %11, %22 ]
  %27 = phi double [ %44, %42 ], [ %20, %22 ]
  %28 = phi i32 [ %45, %42 ], [ undef, %22 ]
  %29 = add nsw i64 %26, -1
  %30 = icmp sgt i64 %26, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = fptoui double %27 to i64
  %33 = getelementptr inbounds i64, ptr %24, i64 %29
  %34 = load i64, ptr %33, align 8, !tbaa !39
  %35 = icmp ugt i64 %34, %32
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = icmp ult i64 %34, %32
  br i1 %37, label %42, label %38

38:                                               ; preds = %36
  %39 = uitofp i64 %32 to double
  %40 = fsub double %27, %39
  %41 = fmul double %40, 0x43F0000000000000
  br label %42

42:                                               ; preds = %36, %31, %38
  %43 = phi i1 [ true, %38 ], [ false, %31 ], [ false, %36 ]
  %44 = phi double [ %41, %38 ], [ %27, %31 ], [ %27, %36 ]
  %45 = phi i32 [ %28, %38 ], [ 1, %31 ], [ -1, %36 ]
  br i1 %43, label %25, label %50, !llvm.loop !91

46:                                               ; preds = %25, %2
  %47 = phi double [ %7, %2 ], [ %27, %25 ]
  %48 = fcmp ogt double %47, 0.000000e+00
  %49 = sext i1 %48 to i32
  br label %50

50:                                               ; preds = %42, %19, %46
  %51 = phi i32 [ %49, %46 ], [ -1, %19 ], [ %45, %42 ]
  ret i32 %51
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_cmp_d(ptr nocapture noundef readonly %0, double noundef %1) local_unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = fcmp ult double %1, 0.000000e+00
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = tail call i32 @mpz_cmpabs_d(ptr noundef %0, double noundef %1)
  %10 = sub nsw i32 0, %9
  br label %15

11:                                               ; preds = %2
  %12 = fcmp olt double %1, 0.000000e+00
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @mpz_cmpabs_d(ptr noundef %0, double noundef %1)
  br label %15

15:                                               ; preds = %11, %6, %13, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %13 ], [ -1, %6 ], [ 1, %11 ]
  ret i32 %16
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @mpz_sgn(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !34 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !85
  %4 = ashr i32 %3, 31
  %5 = icmp ne i32 %3, 0
  %6 = zext i1 %5 to i32
  %7 = or i32 %4, %6
  ret i32 %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_cmp_si(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #11 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = icmp slt i32 %4, -1
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i64 %1, -1
  br i1 %7, label %8, label %25

8:                                                ; preds = %6
  %9 = icmp sgt i32 %4, 1
  br i1 %9, label %36, label %10

10:                                               ; preds = %8
  %11 = icmp slt i32 %4, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %10
  %13 = icmp eq i32 %4, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = load i64, ptr %16, align 8, !tbaa !39
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi i64 [ %17, %14 ], [ 0, %12 ]
  %20 = icmp ugt i64 %19, %1
  %21 = zext i1 %20 to i32
  %22 = icmp ult i64 %19, %1
  %23 = sext i1 %22 to i32
  %24 = add nsw i32 %23, %21
  br label %36

25:                                               ; preds = %6
  %26 = icmp sgt i32 %4, -1
  br i1 %26, label %36, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = load i64, ptr %29, align 8, !tbaa !39
  %31 = sub i64 0, %1
  %32 = icmp ugt i64 %30, %31
  %33 = icmp ult i64 %30, %31
  %34 = zext i1 %33 to i32
  %35 = select i1 %32, i32 -1, i32 %34
  br label %36

36:                                               ; preds = %18, %10, %8, %25, %2, %27
  %37 = phi i32 [ %35, %27 ], [ -1, %2 ], [ 1, %25 ], [ %24, %18 ], [ 1, %8 ], [ -1, %10 ]
  ret i32 %37
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_cmp_ui(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #11 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = icmp slt i32 %4, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %6
  %9 = icmp eq i32 %4, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = load i64, ptr %12, align 8, !tbaa !39
  br label %14

14:                                               ; preds = %8, %10
  %15 = phi i64 [ %13, %10 ], [ 0, %8 ]
  %16 = icmp ugt i64 %15, %1
  %17 = zext i1 %16 to i32
  %18 = icmp ult i64 %15, %1
  %19 = sext i1 %18 to i32
  %20 = add nsw i32 %19, %17
  br label %21

21:                                               ; preds = %6, %2, %14
  %22 = phi i32 [ %20, %14 ], [ 1, %2 ], [ -1, %6 ]
  ret i32 %22
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = icmp eq i32 %4, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = icmp slt i32 %4, %7
  %11 = select i1 %10, i32 -1, i32 1
  br label %51

12:                                               ; preds = %2
  %13 = icmp sgt i32 %4, -1
  br i1 %13, label %14, label %32

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  br label %19

19:                                               ; preds = %22, %14
  %20 = phi i64 [ %5, %14 ], [ %23, %22 ]
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %19
  %23 = add nsw i64 %20, -1
  %24 = getelementptr inbounds i64, ptr %16, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !39
  %26 = getelementptr inbounds i64, ptr %18, i64 %23
  %27 = load i64, ptr %26, align 8, !tbaa !39
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %19, label %29, !llvm.loop !45

29:                                               ; preds = %22
  %30 = icmp ugt i64 %25, %27
  %31 = select i1 %30, i32 1, i32 -1
  br label %51

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  %35 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !86
  %37 = sub nsw i64 0, %5
  br label %38

38:                                               ; preds = %41, %32
  %39 = phi i64 [ %37, %32 ], [ %42, %41 ]
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = add nsw i64 %39, -1
  %43 = getelementptr inbounds i64, ptr %34, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !39
  %45 = getelementptr inbounds i64, ptr %36, i64 %42
  %46 = load i64, ptr %45, align 8, !tbaa !39
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %38, label %48, !llvm.loop !45

48:                                               ; preds = %41
  %49 = icmp ugt i64 %44, %46
  %50 = select i1 %49, i32 1, i32 -1
  br label %51

51:                                               ; preds = %38, %19, %48, %29, %9
  %52 = phi i32 [ %11, %9 ], [ %31, %29 ], [ %50, %48 ], [ 0, %19 ], [ 0, %38 ]
  ret i32 %52
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_cmpabs_ui(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #11 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %5, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = load i64, ptr %11, align 8, !tbaa !39
  br label %13

13:                                               ; preds = %7, %9
  %14 = phi i64 [ %12, %9 ], [ 0, %7 ]
  %15 = icmp ugt i64 %14, %1
  %16 = zext i1 %15 to i32
  %17 = icmp ult i64 %14, %1
  %18 = sext i1 %17 to i32
  %19 = add nsw i32 %18, %16
  br label %20

20:                                               ; preds = %2, %13
  %21 = phi i32 [ %19, %13 ], [ 1, %2 ]
  ret i32 %21
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_cmpabs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !85
  %7 = tail call i32 @llvm.abs.i32(i32 %6, i1 true)
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !85
  %12 = tail call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = icmp eq i32 %7, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = zext nneg i32 %7 to i64
  br label %19

16:                                               ; preds = %2
  %17 = icmp ult i32 %7, %12
  %18 = select i1 %17, i32 -1, i32 1
  br label %32

19:                                               ; preds = %14, %22
  %20 = phi i64 [ %23, %22 ], [ %15, %14 ]
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = add nsw i64 %20, -1
  %24 = getelementptr inbounds i64, ptr %4, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !39
  %26 = getelementptr inbounds i64, ptr %9, i64 %23
  %27 = load i64, ptr %26, align 8, !tbaa !39
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %19, label %29, !llvm.loop !45

29:                                               ; preds = %22
  %30 = icmp ugt i64 %25, %27
  %31 = select i1 %30, i32 1, i32 -1
  br label %32

32:                                               ; preds = %19, %16, %29
  %33 = phi i32 [ %18, %16 ], [ %31, %29 ], [ 0, %19 ]
  ret i32 %33
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_abs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @mpz_set(ptr noundef %0, ptr noundef %1)
  br label %5

5:                                                ; preds = %4, %2
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = tail call i32 @llvm.abs.i32(i32 %7, i1 true)
  store i32 %8, ptr %6, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_neg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @mpz_set(ptr noundef %0, ptr noundef %1)
  br label %5

5:                                                ; preds = %4, %2
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = sub nsw i32 0, %7
  store i32 %8, ptr %6, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mpz_swap(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #16 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !85
  store i32 %6, ptr %3, align 4, !tbaa !85
  store i32 %4, ptr %5, align 4, !tbaa !85
  %7 = load i32, ptr %0, align 8, !tbaa !83
  %8 = load i32, ptr %1, align 8, !tbaa !83
  store i32 %8, ptr %0, align 8, !tbaa !83
  store i32 %7, ptr %1, align 8, !tbaa !83
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  store ptr %12, ptr %9, align 8, !tbaa !86
  store ptr %10, ptr %11, align 8, !tbaa !86
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_add_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call fastcc i64 @mpz_abs_add_ui(ptr noundef %0, ptr noundef %1, i64 noundef %2), !range !92
  %9 = trunc i64 %8 to i32
  br label %14

10:                                               ; preds = %3
  %11 = tail call fastcc i64 @mpz_abs_sub_ui(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %12 = trunc i64 %11 to i32
  %13 = sub i32 0, %12
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ %13, %10 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %15, ptr %16, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @mpz_abs_add_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  store i64 %2, ptr %11, align 8, !tbaa !39
  %12 = icmp ne i64 %2, 0
  %13 = zext i1 %12 to i64
  br label %55

14:                                               ; preds = %3
  %15 = load i32, ptr %0, align 8, !tbaa !83
  %16 = icmp slt i32 %6, %15
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = add nuw nsw i64 %7, 1
  %19 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  %21 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %22 = shl nuw nsw i64 %18, 3
  %23 = tail call ptr %21(ptr noundef %20, i64 noundef 0, i64 noundef %22) #31
  store ptr %23, ptr %19, align 8, !tbaa !86
  %24 = trunc i64 %18 to i32
  store i32 %24, ptr %0, align 8, !tbaa !83
  %25 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !85
  %27 = tail call i32 @llvm.abs.i32(i32 %26, i1 true)
  %28 = zext nneg i32 %27 to i64
  %29 = icmp ult i64 %18, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  store i32 0, ptr %25, align 4, !tbaa !85
  br label %33

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %33

33:                                               ; preds = %30, %17, %31
  %34 = phi ptr [ %32, %31 ], [ %19, %17 ], [ %19, %30 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  %36 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !86
  %38 = tail call i32 @llvm.abs.i32(i32 %5, i1 false)
  %39 = tail call i32 @llvm.umax.i32(i32 %38, i32 1)
  %40 = zext i32 %39 to i64
  br label %41

41:                                               ; preds = %41, %33
  %42 = phi i64 [ 0, %33 ], [ %50, %41 ]
  %43 = phi i64 [ %2, %33 ], [ %48, %41 ]
  %44 = getelementptr inbounds i64, ptr %37, i64 %42
  %45 = load i64, ptr %44, align 8, !tbaa !39
  %46 = add i64 %45, %43
  %47 = icmp ult i64 %46, %43
  %48 = zext i1 %47 to i64
  %49 = getelementptr inbounds i64, ptr %35, i64 %42
  store i64 %46, ptr %49, align 8, !tbaa !39
  %50 = add nuw nsw i64 %42, 1
  %51 = icmp eq i64 %50, %40
  br i1 %51, label %52, label %41, !llvm.loop !46

52:                                               ; preds = %41
  %53 = getelementptr inbounds i64, ptr %35, i64 %7
  store i64 %48, ptr %53, align 8, !tbaa !39
  %54 = add nuw nsw i64 %48, %7
  br label %55

55:                                               ; preds = %52, %9
  %56 = phi i64 [ %13, %9 ], [ %54, %52 ]
  ret i64 %56
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @mpz_abs_sub_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = load i32, ptr %0, align 8, !tbaa !83
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = tail call i64 @llvm.smax.i64(i64 %7, i64 1)
  %12 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %15 = shl nuw nsw i64 %11, 3
  %16 = tail call ptr %14(ptr noundef %13, i64 noundef 0, i64 noundef %15) #31
  store ptr %16, ptr %12, align 8, !tbaa !86
  %17 = trunc i64 %11 to i32
  store i32 %17, ptr %0, align 8, !tbaa !83
  %18 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !85
  %20 = tail call i32 @llvm.abs.i32(i32 %19, i1 true)
  %21 = zext nneg i32 %20 to i64
  %22 = icmp ult i64 %11, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %10
  store i32 0, ptr %18, align 4, !tbaa !85
  br label %26

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %26

26:                                               ; preds = %23, %10, %24
  %27 = phi ptr [ %25, %24 ], [ %12, %10 ], [ %12, %23 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !86
  switch i32 %6, label %39 [
    i32 0, label %29
    i32 1, label %32
  ]

29:                                               ; preds = %26
  store i64 %2, ptr %28, align 8, !tbaa !39
  %30 = icmp ne i64 %2, 0
  %31 = sext i1 %30 to i64
  br label %68

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  %35 = load i64, ptr %34, align 8, !tbaa !39
  %36 = icmp ult i64 %35, %2
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = sub i64 %2, %35
  store i64 %38, ptr %28, align 8, !tbaa !39
  br label %68

39:                                               ; preds = %26, %32
  %40 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !86
  %42 = tail call i64 @llvm.umax.i64(i64 %7, i64 1)
  br label %43

43:                                               ; preds = %43, %39
  %44 = phi i64 [ 0, %39 ], [ %52, %43 ]
  %45 = phi i64 [ %2, %39 ], [ %49, %43 ]
  %46 = getelementptr inbounds i64, ptr %41, i64 %44
  %47 = load i64, ptr %46, align 8, !tbaa !39
  %48 = icmp ult i64 %47, %45
  %49 = zext i1 %48 to i64
  %50 = sub i64 %47, %45
  %51 = getelementptr inbounds i64, ptr %28, i64 %44
  store i64 %50, ptr %51, align 8, !tbaa !39
  %52 = add nuw nsw i64 %44, 1
  %53 = icmp eq i64 %52, %42
  br i1 %53, label %54, label %43, !llvm.loop !48

54:                                               ; preds = %43
  %55 = getelementptr i64, ptr %28, i64 -1
  %56 = icmp eq i32 %5, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %54
  %58 = tail call i64 @llvm.smin.i64(i64 %7, i64 1)
  %59 = add nsw i64 %58, -1
  br label %60

60:                                               ; preds = %57, %65
  %61 = phi i64 [ %66, %65 ], [ %7, %57 ]
  %62 = getelementptr i64, ptr %55, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !39
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = add nsw i64 %61, -1
  %67 = icmp sgt i64 %61, 1
  br i1 %67, label %60, label %68, !llvm.loop !79

68:                                               ; preds = %65, %60, %54, %37, %29
  %69 = phi i64 [ %31, %29 ], [ -1, %37 ], [ %7, %54 ], [ %61, %60 ], [ %59, %65 ]
  ret i64 %69
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_sub_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = tail call fastcc i64 @mpz_abs_add_ui(ptr noundef %0, ptr noundef %1, i64 noundef %2), !range !92
  %9 = trunc i64 %8 to i32
  %10 = sub i32 0, %9
  br label %14

11:                                               ; preds = %3
  %12 = tail call fastcc i64 @mpz_abs_sub_ui(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi i32 [ %13, %11 ], [ %10, %7 ]
  %16 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %15, ptr %16, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_ui_sub(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call fastcc i64 @mpz_abs_add_ui(ptr noundef %0, ptr noundef %2, i64 noundef %1), !range !92
  %9 = trunc i64 %8 to i32
  br label %14

10:                                               ; preds = %3
  %11 = tail call fastcc i64 @mpz_abs_sub_ui(ptr noundef %0, ptr noundef %2, i64 noundef %1)
  %12 = trunc i64 %11 to i32
  %13 = sub i32 0, %12
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ %13, %10 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %15, ptr %16, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = xor i32 %7, %5
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call fastcc i64 @mpz_abs_add(ptr noundef %0, ptr noundef %1, ptr noundef %2), !range !93
  br label %14

12:                                               ; preds = %3
  %13 = tail call fastcc i64 @mpz_abs_sub(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  %16 = load i32, ptr %4, align 4, !tbaa !85
  %17 = sub nsw i64 0, %15
  %18 = icmp slt i32 %16, 0
  %19 = select i1 %18, i64 %17, i64 %15
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @mpz_abs_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !85
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = zext nneg i32 %10 to i64
  %12 = icmp ult i32 %6, %10
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %3
  %15 = phi i64 [ %7, %13 ], [ %11, %3 ]
  %16 = phi i64 [ %11, %13 ], [ %7, %3 ]
  %17 = phi ptr [ %1, %13 ], [ %2, %3 ]
  %18 = phi ptr [ %2, %13 ], [ %1, %3 ]
  %19 = load i32, ptr %0, align 8, !tbaa !83
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %36, label %22

22:                                               ; preds = %14
  %23 = add nuw nsw i64 %16, 1
  %24 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  %26 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %27 = shl nuw nsw i64 %23, 3
  %28 = tail call ptr %26(ptr noundef %25, i64 noundef 0, i64 noundef %27) #31
  store ptr %28, ptr %24, align 8, !tbaa !86
  %29 = trunc i64 %23 to i32
  store i32 %29, ptr %0, align 8, !tbaa !83
  %30 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !85
  %32 = tail call i32 @llvm.abs.i32(i32 %31, i1 true)
  %33 = zext nneg i32 %32 to i64
  %34 = icmp ult i64 %23, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  store i32 0, ptr %30, align 4, !tbaa !85
  br label %38

36:                                               ; preds = %14
  %37 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %38

38:                                               ; preds = %35, %22, %36
  %39 = phi ptr [ %37, %36 ], [ %24, %22 ], [ %24, %35 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !86
  %41 = getelementptr inbounds %struct.__mpz_struct, ptr %18, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !86
  %43 = getelementptr inbounds %struct.__mpz_struct, ptr %17, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !86
  %45 = icmp eq i64 %15, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %38, %46
  %47 = phi i64 [ %61, %46 ], [ 0, %38 ]
  %48 = phi i64 [ %59, %46 ], [ 0, %38 ]
  %49 = getelementptr inbounds i64, ptr %42, i64 %47
  %50 = load i64, ptr %49, align 8, !tbaa !39
  %51 = getelementptr inbounds i64, ptr %44, i64 %47
  %52 = load i64, ptr %51, align 8, !tbaa !39
  %53 = add i64 %50, %48
  %54 = icmp ult i64 %53, %48
  %55 = zext i1 %54 to i64
  %56 = add i64 %53, %52
  %57 = icmp ult i64 %56, %52
  %58 = zext i1 %57 to i64
  %59 = add nuw nsw i64 %58, %55
  %60 = getelementptr inbounds i64, ptr %40, i64 %47
  store i64 %56, ptr %60, align 8, !tbaa !39
  %61 = add nuw nsw i64 %47, 1
  %62 = icmp eq i64 %61, %15
  br i1 %62, label %63, label %46, !llvm.loop !47

63:                                               ; preds = %46, %38
  %64 = phi i64 [ 0, %38 ], [ %59, %46 ]
  %65 = icmp ugt i64 %16, %15
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = getelementptr inbounds i64, ptr %40, i64 %15
  %68 = getelementptr inbounds i64, ptr %42, i64 %15
  %69 = sub nsw i64 %16, %15
  %70 = tail call i64 @llvm.smax.i64(i64 %69, i64 1)
  br label %71

71:                                               ; preds = %71, %66
  %72 = phi i64 [ 0, %66 ], [ %80, %71 ]
  %73 = phi i64 [ %64, %66 ], [ %78, %71 ]
  %74 = getelementptr inbounds i64, ptr %68, i64 %72
  %75 = load i64, ptr %74, align 8, !tbaa !39
  %76 = add i64 %75, %73
  %77 = icmp ult i64 %76, %73
  %78 = zext i1 %77 to i64
  %79 = getelementptr inbounds i64, ptr %67, i64 %72
  store i64 %76, ptr %79, align 8, !tbaa !39
  %80 = add nuw nsw i64 %72, 1
  %81 = icmp eq i64 %80, %70
  br i1 %81, label %82, label %71, !llvm.loop !46

82:                                               ; preds = %71, %63
  %83 = phi i64 [ %64, %63 ], [ %78, %71 ]
  %84 = getelementptr inbounds i64, ptr %40, i64 %16
  store i64 %83, ptr %84, align 8, !tbaa !39
  %85 = add nuw nsw i64 %83, %16
  ret i64 %85
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @mpz_abs_sub(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !85
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq i32 %6, %10
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = icmp ult i32 %6, %10
  %19 = select i1 %18, i32 -1, i32 1
  br label %33

20:                                               ; preds = %3, %23
  %21 = phi i64 [ %24, %23 ], [ %7, %3 ]
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = add nsw i64 %21, -1
  %25 = getelementptr inbounds i64, ptr %13, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !39
  %27 = getelementptr inbounds i64, ptr %15, i64 %24
  %28 = load i64, ptr %27, align 8, !tbaa !39
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %20, label %30, !llvm.loop !45

30:                                               ; preds = %23
  %31 = icmp ugt i64 %26, %28
  %32 = select i1 %31, i32 1, i32 -1
  br label %33

33:                                               ; preds = %20, %17, %30
  %34 = phi i32 [ %19, %17 ], [ %32, %30 ], [ 0, %20 ]
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %111

36:                                               ; preds = %33
  %37 = load i32, ptr %0, align 8, !tbaa !83
  %38 = icmp sgt i32 %6, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = tail call i64 @llvm.smax.i64(i64 %7, i64 1)
  %41 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !86
  %43 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %44 = shl nuw nsw i64 %40, 3
  %45 = tail call ptr %43(ptr noundef %42, i64 noundef 0, i64 noundef %44) #31
  store ptr %45, ptr %41, align 8, !tbaa !86
  %46 = trunc i64 %40 to i32
  store i32 %46, ptr %0, align 8, !tbaa !83
  %47 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !85
  %49 = tail call i32 @llvm.abs.i32(i32 %48, i1 true)
  %50 = zext nneg i32 %49 to i64
  %51 = icmp ult i64 %40, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  store i32 0, ptr %47, align 4, !tbaa !85
  br label %55

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %55

55:                                               ; preds = %52, %39, %53
  %56 = phi ptr [ %54, %53 ], [ %41, %39 ], [ %41, %52 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !86
  %58 = load ptr, ptr %12, align 8, !tbaa !86
  %59 = load ptr, ptr %14, align 8, !tbaa !86
  %60 = icmp eq i32 %9, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %55, %61
  %62 = phi i64 [ %76, %61 ], [ 0, %55 ]
  %63 = phi i64 [ %73, %61 ], [ 0, %55 ]
  %64 = getelementptr inbounds i64, ptr %58, i64 %62
  %65 = load i64, ptr %64, align 8, !tbaa !39
  %66 = getelementptr inbounds i64, ptr %59, i64 %62
  %67 = load i64, ptr %66, align 8, !tbaa !39
  %68 = add i64 %67, %63
  %69 = icmp ult i64 %68, %63
  %70 = zext i1 %69 to i64
  %71 = icmp ult i64 %65, %68
  %72 = zext i1 %71 to i64
  %73 = add nuw nsw i64 %70, %72
  %74 = sub i64 %65, %68
  %75 = getelementptr inbounds i64, ptr %57, i64 %62
  store i64 %74, ptr %75, align 8, !tbaa !39
  %76 = add nuw nsw i64 %62, 1
  %77 = icmp eq i64 %76, %11
  br i1 %77, label %78, label %61, !llvm.loop !49

78:                                               ; preds = %61, %55
  %79 = phi i64 [ 0, %55 ], [ %73, %61 ]
  %80 = icmp ugt i32 %6, %10
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  %82 = getelementptr inbounds i64, ptr %57, i64 %11
  %83 = getelementptr inbounds i64, ptr %58, i64 %11
  %84 = sub nsw i64 %7, %11
  %85 = tail call i64 @llvm.smax.i64(i64 %84, i64 1)
  br label %86

86:                                               ; preds = %86, %81
  %87 = phi i64 [ 0, %81 ], [ %95, %86 ]
  %88 = phi i64 [ %79, %81 ], [ %92, %86 ]
  %89 = getelementptr inbounds i64, ptr %83, i64 %87
  %90 = load i64, ptr %89, align 8, !tbaa !39
  %91 = icmp ult i64 %90, %88
  %92 = zext i1 %91 to i64
  %93 = sub i64 %90, %88
  %94 = getelementptr inbounds i64, ptr %82, i64 %87
  store i64 %93, ptr %94, align 8, !tbaa !39
  %95 = add nuw nsw i64 %87, 1
  %96 = icmp eq i64 %95, %85
  br i1 %96, label %97, label %86, !llvm.loop !48

97:                                               ; preds = %86, %78
  %98 = getelementptr i64, ptr %57, i64 -1
  %99 = icmp eq i32 %5, 0
  br i1 %99, label %191, label %100

100:                                              ; preds = %97
  %101 = tail call i64 @llvm.smin.i64(i64 %7, i64 1)
  %102 = add nsw i64 %101, -1
  br label %103

103:                                              ; preds = %100, %108
  %104 = phi i64 [ %109, %108 ], [ %7, %100 ]
  %105 = getelementptr i64, ptr %98, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !39
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %191

108:                                              ; preds = %103
  %109 = add nsw i64 %104, -1
  %110 = icmp sgt i64 %104, 1
  br i1 %110, label %103, label %191, !llvm.loop !79

111:                                              ; preds = %33
  %112 = icmp slt i32 %34, 0
  br i1 %112, label %113, label %191

113:                                              ; preds = %111
  %114 = load i32, ptr %0, align 8, !tbaa !83
  %115 = icmp sgt i32 %10, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = tail call i64 @llvm.smax.i64(i64 %11, i64 1)
  %118 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !86
  %120 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %121 = shl nuw nsw i64 %117, 3
  %122 = tail call ptr %120(ptr noundef %119, i64 noundef 0, i64 noundef %121) #31
  store ptr %122, ptr %118, align 8, !tbaa !86
  %123 = trunc i64 %117 to i32
  store i32 %123, ptr %0, align 8, !tbaa !83
  %124 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %125 = load i32, ptr %124, align 4, !tbaa !85
  %126 = tail call i32 @llvm.abs.i32(i32 %125, i1 true)
  %127 = zext nneg i32 %126 to i64
  %128 = icmp ult i64 %117, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %116
  store i32 0, ptr %124, align 4, !tbaa !85
  br label %132

130:                                              ; preds = %113
  %131 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %132

132:                                              ; preds = %129, %116, %130
  %133 = phi ptr [ %131, %130 ], [ %118, %116 ], [ %118, %129 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !86
  %135 = load ptr, ptr %14, align 8, !tbaa !86
  %136 = load ptr, ptr %12, align 8, !tbaa !86
  %137 = icmp eq i32 %5, 0
  br i1 %137, label %155, label %138

138:                                              ; preds = %132, %138
  %139 = phi i64 [ %153, %138 ], [ 0, %132 ]
  %140 = phi i64 [ %150, %138 ], [ 0, %132 ]
  %141 = getelementptr inbounds i64, ptr %135, i64 %139
  %142 = load i64, ptr %141, align 8, !tbaa !39
  %143 = getelementptr inbounds i64, ptr %136, i64 %139
  %144 = load i64, ptr %143, align 8, !tbaa !39
  %145 = add i64 %144, %140
  %146 = icmp ult i64 %145, %140
  %147 = zext i1 %146 to i64
  %148 = icmp ult i64 %142, %145
  %149 = zext i1 %148 to i64
  %150 = add nuw nsw i64 %147, %149
  %151 = sub i64 %142, %145
  %152 = getelementptr inbounds i64, ptr %134, i64 %139
  store i64 %151, ptr %152, align 8, !tbaa !39
  %153 = add nuw nsw i64 %139, 1
  %154 = icmp eq i64 %153, %7
  br i1 %154, label %155, label %138, !llvm.loop !49

155:                                              ; preds = %138, %132
  %156 = phi i64 [ 0, %132 ], [ %150, %138 ]
  %157 = icmp ugt i32 %10, %6
  br i1 %157, label %158, label %174

158:                                              ; preds = %155
  %159 = getelementptr inbounds i64, ptr %134, i64 %7
  %160 = getelementptr inbounds i64, ptr %135, i64 %7
  %161 = sub nsw i64 %11, %7
  %162 = tail call i64 @llvm.smax.i64(i64 %161, i64 1)
  br label %163

163:                                              ; preds = %163, %158
  %164 = phi i64 [ 0, %158 ], [ %172, %163 ]
  %165 = phi i64 [ %156, %158 ], [ %169, %163 ]
  %166 = getelementptr inbounds i64, ptr %160, i64 %164
  %167 = load i64, ptr %166, align 8, !tbaa !39
  %168 = icmp ult i64 %167, %165
  %169 = zext i1 %168 to i64
  %170 = sub i64 %167, %165
  %171 = getelementptr inbounds i64, ptr %159, i64 %164
  store i64 %170, ptr %171, align 8, !tbaa !39
  %172 = add nuw nsw i64 %164, 1
  %173 = icmp eq i64 %172, %162
  br i1 %173, label %174, label %163, !llvm.loop !48

174:                                              ; preds = %163, %155
  %175 = getelementptr i64, ptr %134, i64 -1
  %176 = icmp eq i32 %9, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %174
  %178 = tail call i64 @llvm.smin.i64(i64 %11, i64 1)
  %179 = add nsw i64 %178, -1
  br label %180

180:                                              ; preds = %177, %185
  %181 = phi i64 [ %186, %185 ], [ %11, %177 ]
  %182 = getelementptr i64, ptr %175, i64 %181
  %183 = load i64, ptr %182, align 8, !tbaa !39
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = add nsw i64 %181, -1
  %187 = icmp sgt i64 %181, 1
  br i1 %187, label %180, label %188, !llvm.loop !79

188:                                              ; preds = %180, %185, %174
  %189 = phi i64 [ %11, %174 ], [ %181, %180 ], [ %179, %185 ]
  %190 = sub nsw i64 0, %189
  br label %191

191:                                              ; preds = %108, %103, %97, %111, %188
  %192 = phi i64 [ %190, %188 ], [ 0, %111 ], [ %7, %97 ], [ %104, %103 ], [ %102, %108 ]
  ret i64 %192
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_sub(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = xor i32 %7, %5
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call fastcc i64 @mpz_abs_sub(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %14

12:                                               ; preds = %3
  %13 = tail call fastcc i64 @mpz_abs_add(ptr noundef %0, ptr noundef %1, ptr noundef %2), !range !93
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  %16 = load i32, ptr %4, align 4, !tbaa !85
  %17 = sub nsw i64 0, %15
  %18 = icmp slt i32 %16, 0
  %19 = select i1 %18, i64 %17, i64 %15
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_mul_si(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = sub i64 0, %2
  tail call void @mpz_mul_ui(ptr noundef %0, ptr noundef %1, i64 noundef %6)
  %7 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !85
  %9 = sub nsw i32 0, %8
  store i32 %9, ptr %7, align 4, !tbaa !85
  br label %11

10:                                               ; preds = %3
  tail call void @mpz_mul_ui(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  br label %11

11:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_mul_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq i64 %2, 0
  %8 = or i1 %7, %6
  br i1 %8, label %45, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @llvm.abs.i32(i32 %5, i1 false)
  %11 = zext i32 %10 to i64
  %12 = load i32, ptr %0, align 8, !tbaa !83
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %29, label %15

15:                                               ; preds = %9
  %16 = add nuw nsw i64 %11, 1
  %17 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %20 = shl nuw nsw i64 %16, 3
  %21 = tail call ptr %19(ptr noundef %18, i64 noundef 0, i64 noundef %20) #31
  store ptr %21, ptr %17, align 8, !tbaa !86
  %22 = trunc i64 %16 to i32
  store i32 %22, ptr %0, align 8, !tbaa !83
  %23 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !85
  %25 = tail call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = zext nneg i32 %25 to i64
  %27 = icmp ult i64 %16, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  store i32 0, ptr %23, align 4, !tbaa !85
  br label %31

29:                                               ; preds = %9
  %30 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %31

31:                                               ; preds = %28, %15, %29
  %32 = phi ptr [ %30, %29 ], [ %17, %15 ], [ %17, %28 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !86
  %34 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  %36 = tail call i64 @mpn_mul_1(ptr noundef %33, ptr noundef %35, i64 noundef %11, i64 noundef %2)
  %37 = getelementptr inbounds i64, ptr %33, i64 %11
  store i64 %36, ptr %37, align 8, !tbaa !39
  %38 = icmp ne i64 %36, 0
  %39 = zext i1 %38 to i64
  %40 = add nuw nsw i64 %39, %11
  %41 = icmp slt i32 %5, 0
  %42 = sub nsw i64 0, %40
  %43 = select i1 %41, i64 %42, i64 %40
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %3, %31
  %46 = phi i32 [ %44, %31 ], [ 0, %3 ]
  %47 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %46, ptr %47, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_mul(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = icmp eq i32 %5, 0
  %9 = icmp eq i32 %7, 0
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %12, align 4, !tbaa !85
  br label %57

13:                                               ; preds = %3
  %14 = sext i32 %7 to i64
  %15 = sext i32 %5 to i64
  %16 = xor i64 %14, %15
  %17 = icmp slt i64 %16, 0
  %18 = tail call i64 @llvm.abs.i64(i64 %15, i1 true)
  %19 = tail call i64 @llvm.abs.i64(i64 %14, i1 true)
  %20 = add nuw nsw i64 %19, %18
  %21 = icmp eq i64 %20, 0
  %22 = select i1 %21, i64 0, i64 288230376151711743
  %23 = add nuw nsw i64 %22, %20
  %24 = and i64 %23, 288230376151711743
  %25 = add nuw nsw i64 %24, 1
  %26 = trunc i64 %25 to i32
  %27 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %28 = shl nuw nsw i64 %25, 3
  %29 = tail call ptr %27(i64 noundef %28) #31
  %30 = icmp ult i64 %18, %19
  br i1 %30, label %37, label %31

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !86
  %34 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  %36 = tail call i64 @mpn_mul(ptr noundef %29, ptr noundef %33, i64 noundef %18, ptr noundef %35, i64 noundef %19)
  br label %43

37:                                               ; preds = %13
  %38 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !86
  %40 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !86
  %42 = tail call i64 @mpn_mul(ptr noundef %29, ptr noundef %39, i64 noundef %19, ptr noundef %41, i64 noundef %18)
  br label %43

43:                                               ; preds = %37, %31
  %44 = getelementptr i64, ptr %29, i64 %20
  %45 = getelementptr i64, ptr %44, i64 -1
  %46 = load i64, ptr %45, align 8, !tbaa !39
  %47 = icmp eq i64 %46, 0
  %48 = sext i1 %47 to i64
  %49 = add nsw i64 %20, %48
  %50 = sub nsw i64 0, %49
  %51 = select i1 %17, i64 %50, i64 %49
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %52, ptr %53, align 4, !tbaa !85
  store i32 %26, ptr %0, align 8, !tbaa !83
  %54 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !86
  store ptr %29, ptr %54, align 8, !tbaa !86
  %56 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  tail call void %56(ptr noundef %55, i64 noundef 0) #31
  br label %57

57:                                               ; preds = %43, %11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_mul_2exp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %99, label %9

9:                                                ; preds = %3
  %10 = lshr i64 %2, 6
  %11 = trunc i64 %2 to i32
  %12 = and i32 %11, 63
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = add nuw nsw i64 %10, %14
  %16 = add nuw nsw i64 %15, %7
  %17 = load i32, ptr %0, align 8, !tbaa !83
  %18 = sext i32 %17 to i64
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %9
  %21 = tail call i64 @llvm.smax.i64(i64 %16, i64 1)
  %22 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %25 = shl nuw nsw i64 %21, 3
  %26 = tail call ptr %24(ptr noundef %23, i64 noundef 0, i64 noundef %25) #31
  store ptr %26, ptr %22, align 8, !tbaa !86
  %27 = trunc i64 %21 to i32
  store i32 %27, ptr %0, align 8, !tbaa !83
  %28 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !85
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 true)
  %31 = zext nneg i32 %30 to i64
  %32 = icmp ult i64 %21, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  store i32 0, ptr %28, align 4, !tbaa !85
  br label %36

34:                                               ; preds = %9
  %35 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %36

36:                                               ; preds = %33, %20, %34
  %37 = phi ptr [ %35, %34 ], [ %22, %20 ], [ %22, %33 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !86
  %39 = getelementptr inbounds i64, ptr %38, i64 %10
  %40 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !86
  br i1 %13, label %42, label %76

42:                                               ; preds = %36
  %43 = getelementptr inbounds i64, ptr %41, i64 %7
  %44 = getelementptr inbounds i64, ptr %39, i64 %7
  %45 = and i64 %2, 63
  %46 = sub nuw nsw i32 64, %12
  %47 = getelementptr inbounds i64, ptr %43, i64 -1
  %48 = load i64, ptr %47, align 8, !tbaa !39
  %49 = zext nneg i32 %46 to i64
  %50 = shl i64 %48, %45
  %51 = add nsw i64 %7, -1
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %42, %53
  %54 = phi i64 [ %64, %53 ], [ %51, %42 ]
  %55 = phi i64 [ %63, %53 ], [ %50, %42 ]
  %56 = phi ptr [ %62, %53 ], [ %44, %42 ]
  %57 = phi ptr [ %58, %53 ], [ %47, %42 ]
  %58 = getelementptr inbounds i64, ptr %57, i64 -1
  %59 = load i64, ptr %58, align 8, !tbaa !39
  %60 = lshr i64 %59, %49
  %61 = or i64 %60, %55
  %62 = getelementptr inbounds i64, ptr %56, i64 -1
  store i64 %61, ptr %62, align 8, !tbaa !39
  %63 = shl i64 %59, %45
  %64 = add nsw i64 %54, -1
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %53, !llvm.loop !54

66:                                               ; preds = %53, %42
  %67 = phi ptr [ %44, %42 ], [ %62, %53 ]
  %68 = phi i64 [ %50, %42 ], [ %63, %53 ]
  %69 = lshr i64 %48, %49
  %70 = getelementptr inbounds i64, ptr %67, i64 -1
  store i64 %68, ptr %70, align 8, !tbaa !39
  %71 = getelementptr i64, ptr %38, i64 %16
  %72 = getelementptr i64, ptr %71, i64 -1
  store i64 %69, ptr %72, align 8, !tbaa !39
  %73 = icmp eq i64 %69, 0
  %74 = sext i1 %73 to i64
  %75 = add nsw i64 %16, %74
  br label %83

76:                                               ; preds = %36, %76
  %77 = phi i64 [ %78, %76 ], [ %7, %36 ]
  %78 = add nsw i64 %77, -1
  %79 = getelementptr inbounds i64, ptr %41, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !39
  %81 = getelementptr inbounds i64, ptr %39, i64 %78
  store i64 %80, ptr %81, align 8, !tbaa !39
  %82 = icmp sgt i64 %77, 1
  br i1 %82, label %76, label %83, !llvm.loop !44

83:                                               ; preds = %76, %66
  %84 = phi i64 [ %75, %66 ], [ %16, %76 ]
  %85 = icmp ult i64 %2, 64
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = tail call i64 @llvm.smin.i64(i64 %10, i64 1)
  %88 = shl nuw nsw i64 %87, 3
  %89 = getelementptr i8, ptr %38, i64 %88
  %90 = getelementptr i8, ptr %89, i64 -8
  %91 = tail call i64 @llvm.smax.i64(i64 %10, i64 1)
  %92 = shl nuw nsw i64 %91, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %90, i8 0, i64 %92, i1 false), !tbaa !39
  br label %93

93:                                               ; preds = %86, %83
  %94 = load i32, ptr %4, align 4, !tbaa !85
  %95 = icmp slt i32 %94, 0
  %96 = sub nsw i64 0, %84
  %97 = select i1 %95, i64 %96, i64 %84
  %98 = trunc i64 %97 to i32
  br label %99

99:                                               ; preds = %3, %93
  %100 = phi i32 [ %98, %93 ], [ 0, %3 ]
  %101 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %100, ptr %101, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_addmul_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  store i32 1, ptr %4, align 16, !tbaa !83
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 4, !tbaa !85
  %6 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %7 = tail call ptr %6(i64 noundef 8) #31
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !86
  call void @mpz_mul_ui(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %2)
  call void @mpz_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4)
  %9 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %10 = load ptr, ptr %8, align 8, !tbaa !86
  tail call void %9(ptr noundef %10, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_submul_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  store i32 1, ptr %4, align 16, !tbaa !83
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 4, !tbaa !85
  %6 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %7 = tail call ptr %6(i64 noundef 8) #31
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !86
  call void @mpz_mul_ui(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %2)
  call void @mpz_sub(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4)
  %9 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %10 = load ptr, ptr %8, align 8, !tbaa !86
  tail call void %9(ptr noundef %10, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_addmul(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  store i32 1, ptr %4, align 16, !tbaa !83
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 4, !tbaa !85
  %6 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %7 = tail call ptr %6(i64 noundef 8) #31
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !86
  call void @mpz_mul(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2)
  call void @mpz_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4)
  %9 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %10 = load ptr, ptr %8, align 8, !tbaa !86
  tail call void %9(ptr noundef %10, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_submul(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  store i32 1, ptr %4, align 16, !tbaa !83
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 4, !tbaa !85
  %6 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %7 = tail call ptr %6(i64 noundef 8) #31
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !86
  call void @mpz_mul(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2)
  call void @mpz_sub(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4)
  %9 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %10 = load ptr, ptr %8, align 8, !tbaa !86
  tail call void %9(ptr noundef %10, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_cdiv_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 !prof !34 {
  %5 = tail call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1), !range !94
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #2 !prof !34 {
  %6 = alloca %struct.gmp_div_inverse, align 8
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  %8 = alloca [1 x %struct.__mpz_struct], align 16
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !85
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !85
  %14 = sext i32 %13 to i64
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load ptr, ptr @stderr, align 8, !tbaa !35
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9) #28
  tail call void @abort() #29
  unreachable

19:                                               ; preds = %5
  %20 = icmp eq i32 %10, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %19
  %22 = icmp eq ptr %0, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %24, align 4, !tbaa !85
  br label %25

25:                                               ; preds = %23, %21
  %26 = icmp eq ptr %1, null
  br i1 %26, label %211, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  store i32 0, ptr %28, align 4, !tbaa !85
  br label %211

29:                                               ; preds = %19
  %30 = tail call i64 @llvm.abs.i64(i64 %11, i1 true)
  %31 = tail call i64 @llvm.abs.i64(i64 %14, i1 true)
  %32 = xor i64 %14, %11
  %33 = icmp ult i64 %30, %31
  br i1 %33, label %34, label %66

34:                                               ; preds = %29
  %35 = icmp eq i32 %4, 1
  %36 = icmp sgt i64 %32, -1
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = icmp eq ptr %1, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void @mpz_sub(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %41

41:                                               ; preds = %40, %38
  %42 = icmp eq ptr %0, null
  br i1 %42, label %211, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 1, ptr %44, align 4, !tbaa !85
  %45 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !86
  store i64 1, ptr %46, align 8, !tbaa !39
  br label %211

47:                                               ; preds = %34
  %48 = icmp eq i32 %4, 0
  %49 = icmp slt i64 %32, 0
  %50 = select i1 %48, i1 %49, i1 false
  %51 = icmp eq ptr %1, null
  br i1 %50, label %52, label %60

52:                                               ; preds = %47
  br i1 %51, label %54, label %53

53:                                               ; preds = %52
  tail call void @mpz_add(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %54

54:                                               ; preds = %53, %52
  %55 = icmp eq ptr %0, null
  br i1 %55, label %211, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 -1, ptr %57, align 4, !tbaa !85
  %58 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !86
  store i64 1, ptr %59, align 8, !tbaa !39
  br label %211

60:                                               ; preds = %47
  br i1 %51, label %62, label %61

61:                                               ; preds = %60
  tail call void @mpz_set(ptr noundef nonnull %1, ptr noundef %2)
  br label %62

62:                                               ; preds = %61, %60
  %63 = icmp eq ptr %0, null
  br i1 %63, label %211, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %65, align 4, !tbaa !85
  br label %211

66:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #31
  store i32 1, ptr %8, align 16, !tbaa !83
  %67 = getelementptr inbounds %struct.__mpz_struct, ptr %8, i64 0, i32 1
  store i32 0, ptr %67, align 4, !tbaa !85
  %68 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %69 = tail call ptr %68(i64 noundef 8) #31
  %70 = getelementptr inbounds %struct.__mpz_struct, ptr %8, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !86
  call void @mpz_set(ptr noundef nonnull %8, ptr noundef %2)
  %71 = load ptr, ptr %70, align 8, !tbaa !86
  %72 = sub nsw i64 %30, %31
  %73 = add nsw i64 %72, 1
  %74 = icmp eq ptr %0, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %66
  %76 = icmp eq i64 %73, 0
  %77 = select i1 %76, i64 0, i64 288230376151711743
  %78 = add nsw i64 %77, %73
  %79 = and i64 %78, 288230376151711743
  %80 = add nuw nsw i64 %79, 1
  %81 = trunc i64 %80 to i32
  store i32 %81, ptr %7, align 16, !tbaa !83
  %82 = getelementptr inbounds %struct.__mpz_struct, ptr %7, i64 0, i32 1
  store i32 0, ptr %82, align 4, !tbaa !85
  %83 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %84 = shl nuw nsw i64 %80, 3
  %85 = call ptr %83(i64 noundef %84) #31
  %86 = getelementptr inbounds %struct.__mpz_struct, ptr %7, i64 0, i32 2
  store ptr %85, ptr %86, align 8, !tbaa !86
  br label %87

87:                                               ; preds = %66, %75
  %88 = phi ptr [ %85, %75 ], [ null, %66 ]
  %89 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #31
  call fastcc void @mpn_div_qr_invert(ptr noundef nonnull %6, ptr noundef %90, i64 noundef %31)
  %91 = icmp ugt i64 %31, 2
  %92 = load i32, ptr %6, align 8
  %93 = icmp ne i32 %92, 0
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %95, label %126

95:                                               ; preds = %87
  %96 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %97 = shl nuw nsw i64 %31, 3
  %98 = call ptr %96(i64 noundef %97) #31
  %99 = getelementptr inbounds i64, ptr %90, i64 %31
  %100 = getelementptr inbounds i64, ptr %98, i64 %31
  %101 = zext nneg i32 %92 to i64
  %102 = sub i32 64, %92
  %103 = getelementptr inbounds i64, ptr %99, i64 -1
  %104 = load i64, ptr %103, align 8, !tbaa !39
  %105 = zext nneg i32 %102 to i64
  %106 = shl i64 %104, %101
  %107 = add nsw i64 %31, -1
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %95, %109
  %110 = phi i64 [ %120, %109 ], [ %107, %95 ]
  %111 = phi i64 [ %119, %109 ], [ %106, %95 ]
  %112 = phi ptr [ %118, %109 ], [ %100, %95 ]
  %113 = phi ptr [ %114, %109 ], [ %103, %95 ]
  %114 = getelementptr inbounds i64, ptr %113, i64 -1
  %115 = load i64, ptr %114, align 8, !tbaa !39
  %116 = lshr i64 %115, %105
  %117 = or i64 %116, %111
  %118 = getelementptr inbounds i64, ptr %112, i64 -1
  store i64 %117, ptr %118, align 8, !tbaa !39
  %119 = shl i64 %115, %101
  %120 = add nsw i64 %110, -1
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %109, !llvm.loop !54

122:                                              ; preds = %109, %95
  %123 = phi ptr [ %100, %95 ], [ %118, %109 ]
  %124 = phi i64 [ %106, %95 ], [ %119, %109 ]
  %125 = getelementptr inbounds i64, ptr %123, i64 -1
  store i64 %124, ptr %125, align 8, !tbaa !39
  br label %126

126:                                              ; preds = %122, %87
  %127 = phi ptr [ %98, %122 ], [ null, %87 ]
  %128 = phi ptr [ %98, %122 ], [ %90, %87 ]
  call fastcc void @mpn_div_qr_preinv(ptr noundef %88, ptr noundef %71, i64 noundef %30, ptr noundef %128, i64 noundef %31, ptr noundef nonnull %6)
  %129 = icmp eq ptr %127, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  call void %131(ptr noundef nonnull %127, i64 noundef 0) #31
  br label %132

132:                                              ; preds = %126, %130
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #31
  %133 = icmp eq ptr %88, null
  br i1 %133, label %145, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds i64, ptr %88, i64 %72
  %136 = load i64, ptr %135, align 8, !tbaa !39
  %137 = icmp eq i64 %136, 0
  %138 = sext i1 %137 to i64
  %139 = add nsw i64 %73, %138
  %140 = icmp slt i64 %32, 0
  %141 = sub nsw i64 0, %139
  %142 = select i1 %140, i64 %141, i64 %139
  %143 = trunc i64 %142 to i32
  %144 = getelementptr inbounds %struct.__mpz_struct, ptr %7, i64 0, i32 1
  store i32 %143, ptr %144, align 4, !tbaa !85
  br label %145

145:                                              ; preds = %134, %132
  %146 = getelementptr i64, ptr %71, i64 -1
  %147 = call i64 @llvm.smin.i64(i64 %31, i64 1)
  %148 = add nsw i64 %147, -1
  br label %149

149:                                              ; preds = %145, %154
  %150 = phi i64 [ %31, %145 ], [ %155, %154 ]
  %151 = getelementptr i64, ptr %146, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !39
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = add nsw i64 %150, -1
  %156 = icmp sgt i64 %150, 1
  br i1 %156, label %149, label %157, !llvm.loop !79

157:                                              ; preds = %154, %149
  %158 = phi i64 [ %148, %154 ], [ %150, %149 ]
  %159 = icmp slt i32 %10, 0
  %160 = sub nsw i64 0, %158
  %161 = select i1 %159, i64 %160, i64 %158
  %162 = trunc i64 %161 to i32
  store i32 %162, ptr %67, align 4, !tbaa !85
  %163 = icmp eq i32 %4, 0
  %164 = icmp slt i64 %32, 0
  %165 = select i1 %163, i1 %164, i1 false
  %166 = icmp ne i64 %158, 0
  %167 = and i1 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %157
  br i1 %74, label %170, label %169

169:                                              ; preds = %168
  call void @mpz_sub_ui(ptr noundef nonnull %7, ptr noundef nonnull %7, i64 noundef 1)
  br label %170

170:                                              ; preds = %169, %168
  %171 = icmp eq ptr %1, null
  br i1 %171, label %183, label %172

172:                                              ; preds = %170
  call void @mpz_add(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef %3)
  br label %183

173:                                              ; preds = %157
  %174 = icmp eq i32 %4, 1
  %175 = icmp sgt i64 %32, -1
  %176 = select i1 %174, i1 %175, i1 false
  %177 = and i1 %176, %166
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  br i1 %74, label %180, label %179

179:                                              ; preds = %178
  call void @mpz_add_ui(ptr noundef nonnull %7, ptr noundef nonnull %7, i64 noundef 1)
  br label %180

180:                                              ; preds = %179, %178
  %181 = icmp eq ptr %1, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %180
  call void @mpz_sub(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef %3)
  br label %183

183:                                              ; preds = %173, %182, %180, %170, %172
  br i1 %74, label %196, label %184

184:                                              ; preds = %183
  %185 = getelementptr inbounds %struct.__mpz_struct, ptr %7, i64 0, i32 1
  %186 = load i32, ptr %185, align 4, !tbaa !85
  %187 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %188 = load i32, ptr %187, align 4, !tbaa !85
  store i32 %188, ptr %185, align 4, !tbaa !85
  store i32 %186, ptr %187, align 4, !tbaa !85
  %189 = load i32, ptr %7, align 16, !tbaa !83
  %190 = load i32, ptr %0, align 8, !tbaa !83
  store i32 %190, ptr %7, align 16, !tbaa !83
  store i32 %189, ptr %0, align 8, !tbaa !83
  %191 = getelementptr inbounds %struct.__mpz_struct, ptr %7, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !86
  %193 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !86
  store ptr %194, ptr %191, align 8, !tbaa !86
  store ptr %192, ptr %193, align 8, !tbaa !86
  %195 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  call void %195(ptr noundef %194, i64 noundef 0) #31
  br label %196

196:                                              ; preds = %184, %183
  %197 = icmp eq ptr %1, null
  br i1 %197, label %207, label %198

198:                                              ; preds = %196
  %199 = load i32, ptr %67, align 4, !tbaa !85
  %200 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %201 = load i32, ptr %200, align 4, !tbaa !85
  store i32 %201, ptr %67, align 4, !tbaa !85
  store i32 %199, ptr %200, align 4, !tbaa !85
  %202 = load i32, ptr %8, align 16, !tbaa !83
  %203 = load i32, ptr %1, align 8, !tbaa !83
  store i32 %203, ptr %8, align 16, !tbaa !83
  store i32 %202, ptr %1, align 8, !tbaa !83
  %204 = load ptr, ptr %70, align 8, !tbaa !86
  %205 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !86
  store ptr %206, ptr %70, align 8, !tbaa !86
  store ptr %204, ptr %205, align 8, !tbaa !86
  br label %207

207:                                              ; preds = %198, %196
  %208 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %209 = load ptr, ptr %70, align 8, !tbaa !86
  call void %208(ptr noundef %209, i64 noundef 0) #31
  %210 = zext i1 %166 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #31
  br label %211

211:                                              ; preds = %43, %41, %62, %64, %54, %56, %25, %27, %207
  %212 = phi i32 [ %210, %207 ], [ 0, %27 ], [ 0, %25 ], [ 1, %56 ], [ 1, %54 ], [ 1, %64 ], [ 1, %62 ], [ 1, %41 ], [ 1, %43 ]
  ret i32 %212
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_fdiv_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 !prof !34 {
  %5 = tail call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0), !range !94
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_tdiv_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 !prof !34 {
  %5 = tail call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 2), !range !94
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_cdiv_q(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef 1), !range !94
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_fdiv_q(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef 0), !range !94
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_tdiv_q(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef 2), !range !94
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_cdiv_r(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i32 @mpz_div_qr(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1), !range !94
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_fdiv_r(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i32 @mpz_div_qr(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0), !range !94
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_tdiv_r(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i32 @mpz_div_qr(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2), !range !94
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_mod(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = lshr i32 %5, 31
  %7 = tail call fastcc i32 @mpz_div_qr(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %6), !range !94
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_cdiv_q_2exp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  tail call fastcc void @mpz_div_q_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mpz_div_q_2exp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 !prof !34 {
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !85
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %9, align 4, !tbaa !85
  br label %124

10:                                               ; preds = %4
  %11 = lshr i64 %2, 6
  %12 = tail call i32 @llvm.abs.i32(i32 %6, i1 false)
  %13 = zext i32 %12 to i64
  %14 = sub nsw i64 %13, %11
  %15 = and i64 %2, 63
  %16 = icmp sgt i32 %6, 0
  %17 = zext i1 %16 to i32
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %19, label %47

19:                                               ; preds = %10
  %20 = icmp slt i64 %14, 1
  br i1 %20, label %47, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = getelementptr i64, ptr %23, i64 -1
  %25 = icmp ult i64 %2, 64
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = tail call i64 @llvm.smin.i64(i64 %11, i64 1)
  %28 = add nsw i64 %27, -1
  br label %29

29:                                               ; preds = %26, %34
  %30 = phi i64 [ %35, %34 ], [ %11, %26 ]
  %31 = getelementptr i64, ptr %24, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !39
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = add nsw i64 %30, -1
  %36 = icmp sgt i64 %30, 1
  br i1 %36, label %29, label %37, !llvm.loop !79

37:                                               ; preds = %29, %34, %21
  %38 = phi i64 [ %11, %21 ], [ %30, %29 ], [ %28, %34 ]
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = getelementptr inbounds i64, ptr %23, i64 %11
  %42 = load i64, ptr %41, align 8, !tbaa !39
  %43 = shl nsw i64 -1, %15
  %44 = xor i64 %43, -1
  %45 = and i64 %42, %44
  %46 = icmp eq i64 %45, 0
  br label %47

47:                                               ; preds = %10, %19, %37, %40
  %48 = phi i1 [ false, %37 ], [ false, %19 ], [ %46, %40 ], [ true, %10 ]
  %49 = icmp slt i64 %14, 1
  br i1 %49, label %114, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %0, align 8, !tbaa !83
  %52 = sext i32 %51 to i64
  %53 = icmp sgt i64 %14, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = tail call i64 @llvm.smax.i64(i64 %14, i64 1)
  %56 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !86
  %58 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %59 = shl nuw nsw i64 %55, 3
  %60 = tail call ptr %58(ptr noundef %57, i64 noundef 0, i64 noundef %59) #31
  store ptr %60, ptr %56, align 8, !tbaa !86
  %61 = trunc i64 %55 to i32
  store i32 %61, ptr %0, align 8, !tbaa !83
  %62 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !85
  %64 = tail call i32 @llvm.abs.i32(i32 %63, i1 true)
  %65 = zext nneg i32 %64 to i64
  %66 = icmp ult i64 %55, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  store i32 0, ptr %62, align 4, !tbaa !85
  br label %70

68:                                               ; preds = %50
  %69 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %70

70:                                               ; preds = %67, %54, %68
  %71 = phi ptr [ %69, %68 ], [ %56, %54 ], [ %56, %67 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !86
  %73 = icmp eq i64 %15, 0
  %74 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !86
  %76 = getelementptr i64, ptr %75, i64 %11
  br i1 %73, label %105, label %77

77:                                               ; preds = %70
  %78 = sub nuw nsw i64 64, %15
  %79 = load i64, ptr %76, align 8, !tbaa !39
  %80 = lshr i64 %79, %15
  %81 = add nsw i64 %14, -1
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %77, %83
  %84 = phi i64 [ %94, %83 ], [ %81, %77 ]
  %85 = phi i64 [ %93, %83 ], [ %80, %77 ]
  %86 = phi ptr [ %92, %83 ], [ %72, %77 ]
  %87 = phi ptr [ %88, %83 ], [ %76, %77 ]
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  %89 = load i64, ptr %88, align 8, !tbaa !39
  %90 = shl i64 %89, %78
  %91 = or i64 %90, %85
  %92 = getelementptr inbounds i64, ptr %86, i64 1
  store i64 %91, ptr %86, align 8, !tbaa !39
  %93 = lshr i64 %89, %15
  %94 = add nsw i64 %84, -1
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %83, !llvm.loop !55

96:                                               ; preds = %83, %77
  %97 = phi ptr [ %72, %77 ], [ %92, %83 ]
  %98 = phi i64 [ %80, %77 ], [ %93, %83 ]
  store i64 %98, ptr %97, align 8, !tbaa !39
  %99 = getelementptr i64, ptr %72, i64 %14
  %100 = getelementptr i64, ptr %99, i64 -1
  %101 = load i64, ptr %100, align 8, !tbaa !39
  %102 = icmp eq i64 %101, 0
  %103 = sext i1 %102 to i64
  %104 = add nsw i64 %14, %103
  br label %114

105:                                              ; preds = %70
  %106 = tail call i64 @llvm.smax.i64(i64 %14, i64 1)
  br label %107

107:                                              ; preds = %105, %107
  %108 = phi i64 [ %112, %107 ], [ 0, %105 ]
  %109 = getelementptr inbounds i64, ptr %76, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !39
  %111 = getelementptr inbounds i64, ptr %72, i64 %108
  store i64 %110, ptr %111, align 8, !tbaa !39
  %112 = add nuw nsw i64 %108, 1
  %113 = icmp eq i64 %112, %106
  br i1 %113, label %114, label %107, !llvm.loop !41

114:                                              ; preds = %107, %47, %96
  %115 = phi i64 [ %104, %96 ], [ 0, %47 ], [ %14, %107 ]
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %116, ptr %117, align 4, !tbaa !85
  br i1 %48, label %119, label %118

118:                                              ; preds = %114
  tail call void @mpz_add_ui(ptr noundef %0, ptr noundef %0, i64 noundef 1)
  br label %119

119:                                              ; preds = %118, %114
  %120 = icmp slt i32 %6, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = load i32, ptr %117, align 4, !tbaa !85
  %123 = sub nsw i32 0, %122
  store i32 %123, ptr %117, align 4, !tbaa !85
  br label %124

124:                                              ; preds = %119, %121, %8
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_fdiv_q_2exp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  tail call fastcc void @mpz_div_q_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_tdiv_q_2exp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  tail call fastcc void @mpz_div_q_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_cdiv_r_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  tail call fastcc void @mpz_div_r_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mpz_div_r_2exp(ptr noundef %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 !prof !34 {
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !85
  %7 = sext i32 %6 to i64
  %8 = icmp eq i32 %6, 0
  %9 = icmp eq i64 %2, 0
  %10 = or i1 %9, %8
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = add i64 %2, 63
  %13 = lshr i64 %12, 6
  %14 = load i32, ptr %0, align 8, !tbaa !83
  %15 = sext i32 %14 to i64
  %16 = icmp sgt i64 %13, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = tail call i64 @llvm.smax.i64(i64 %13, i64 1)
  %19 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  %21 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %22 = shl nuw nsw i64 %18, 3
  %23 = tail call ptr %21(ptr noundef %20, i64 noundef 0, i64 noundef %22) #31
  store ptr %23, ptr %19, align 8, !tbaa !86
  %24 = trunc i64 %18 to i32
  store i32 %24, ptr %0, align 8, !tbaa !83
  %25 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !85
  %27 = tail call i32 @llvm.abs.i32(i32 %26, i1 true)
  %28 = zext nneg i32 %27 to i64
  %29 = icmp ult i64 %18, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  store i32 0, ptr %25, align 4, !tbaa !85
  br label %33

31:                                               ; preds = %11
  %32 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %33

33:                                               ; preds = %30, %17, %31
  %34 = phi ptr [ %32, %31 ], [ %19, %17 ], [ %19, %30 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  %36 = sub nsw i64 0, %7
  %37 = tail call i64 @llvm.abs.i64(i64 %7, i1 true)
  %38 = and i64 %12, -64
  %39 = sub i64 %38, %2
  %40 = lshr i64 -1, %39
  %41 = icmp ugt i64 %13, %37
  br i1 %41, label %42, label %91

42:                                               ; preds = %33
  %43 = icmp sgt i32 %6, 0
  %44 = zext i1 %43 to i32
  %45 = icmp eq i32 %44, %3
  br i1 %45, label %46, label %76

46:                                               ; preds = %42
  %47 = icmp eq i32 %6, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !86
  %51 = tail call i64 @llvm.umax.i64(i64 %37, i64 1)
  br label %62

52:                                               ; preds = %62, %46
  %53 = phi i64 [ 0, %46 ], [ %72, %62 ]
  %54 = add nsw i64 %13, -1
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = shl i64 %53, 3
  %58 = getelementptr i8, ptr %35, i64 %57
  %59 = xor i64 %53, -1
  %60 = add i64 %13, %59
  %61 = shl nuw i64 %60, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %58, i8 -1, i64 %61, i1 false), !tbaa !39
  br label %74

62:                                               ; preds = %48, %62
  %63 = phi i64 [ 1, %48 ], [ %70, %62 ]
  %64 = phi i64 [ 0, %48 ], [ %72, %62 ]
  %65 = getelementptr inbounds i64, ptr %50, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !39
  %67 = xor i64 %66, -1
  %68 = add i64 %63, %67
  %69 = icmp ult i64 %68, %63
  %70 = zext i1 %69 to i64
  %71 = getelementptr inbounds i64, ptr %35, i64 %64
  store i64 %68, ptr %71, align 8, !tbaa !39
  %72 = add nuw nsw i64 %64, 1
  %73 = icmp eq i64 %72, %51
  br i1 %73, label %52, label %62, !llvm.loop !95

74:                                               ; preds = %56, %52
  %75 = getelementptr inbounds i64, ptr %35, i64 %54
  store i64 %40, ptr %75, align 8, !tbaa !39
  br label %142

76:                                               ; preds = %42
  %77 = icmp eq ptr %0, %1
  br i1 %77, label %142, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !86
  %81 = icmp eq i32 %6, 0
  br i1 %81, label %142, label %82

82:                                               ; preds = %78
  %83 = tail call i64 @llvm.umax.i64(i64 %37, i64 1)
  br label %84

84:                                               ; preds = %82, %84
  %85 = phi i64 [ %89, %84 ], [ 0, %82 ]
  %86 = getelementptr inbounds i64, ptr %80, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !39
  %88 = getelementptr inbounds i64, ptr %35, i64 %85
  store i64 %87, ptr %88, align 8, !tbaa !39
  %89 = add nuw nsw i64 %85, 1
  %90 = icmp eq i64 %89, %83
  br i1 %90, label %142, label %84, !llvm.loop !41

91:                                               ; preds = %33
  %92 = icmp eq ptr %0, %1
  br i1 %92, label %106, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !86
  %96 = icmp ugt i64 %12, 127
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = add nsw i64 %13, -2
  br label %99

99:                                               ; preds = %97, %99
  %100 = phi i64 [ %104, %99 ], [ 0, %97 ]
  %101 = getelementptr inbounds i64, ptr %95, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !39
  %103 = getelementptr inbounds i64, ptr %35, i64 %100
  store i64 %102, ptr %103, align 8, !tbaa !39
  %104 = add nuw nsw i64 %100, 1
  %105 = icmp eq i64 %100, %98
  br i1 %105, label %106, label %99, !llvm.loop !41

106:                                              ; preds = %99, %93, %91
  %107 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !86
  %109 = add nsw i64 %13, -1
  %110 = getelementptr inbounds i64, ptr %108, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !39
  %112 = and i64 %111, %40
  %113 = getelementptr inbounds i64, ptr %35, i64 %109
  store i64 %112, ptr %113, align 8, !tbaa !39
  %114 = icmp sgt i32 %6, 0
  %115 = zext i1 %114 to i32
  %116 = icmp eq i32 %115, %3
  %117 = icmp ugt i64 %12, 63
  %118 = and i1 %116, %117
  br i1 %118, label %119, label %142

119:                                              ; preds = %106, %124
  %120 = phi i64 [ %125, %124 ], [ 0, %106 ]
  %121 = getelementptr inbounds i64, ptr %35, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !39
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = add nuw nsw i64 %120, 1
  %126 = icmp eq i64 %125, %13
  br i1 %126, label %142, label %119, !llvm.loop !96

127:                                              ; preds = %119
  %128 = getelementptr inbounds i64, ptr %35, i64 %120
  %129 = sub i64 0, %122
  store i64 %129, ptr %128, align 8, !tbaa !39
  %130 = add nuw nsw i64 %120, 1
  %131 = icmp ult i64 %130, %13
  br i1 %131, label %132, label %139

132:                                              ; preds = %127, %132
  %133 = phi i64 [ %137, %132 ], [ %130, %127 ]
  %134 = getelementptr inbounds i64, ptr %35, i64 %133
  %135 = load i64, ptr %134, align 8, !tbaa !39
  %136 = xor i64 %135, -1
  store i64 %136, ptr %134, align 8, !tbaa !39
  %137 = add nuw nsw i64 %133, 1
  %138 = icmp ult i64 %137, %13
  br i1 %138, label %132, label %139, !llvm.loop !97

139:                                              ; preds = %132, %127
  %140 = load i64, ptr %113, align 8, !tbaa !39
  %141 = and i64 %140, %40
  store i64 %141, ptr %113, align 8, !tbaa !39
  br label %142

142:                                              ; preds = %124, %84, %78, %139, %76, %106, %74
  %143 = phi i64 [ %13, %74 ], [ %13, %106 ], [ %37, %76 ], [ %13, %139 ], [ %37, %78 ], [ %37, %84 ], [ %13, %124 ]
  %144 = phi i64 [ %36, %74 ], [ %7, %106 ], [ %7, %76 ], [ %36, %139 ], [ %7, %78 ], [ %7, %84 ], [ %7, %124 ]
  %145 = getelementptr i64, ptr %35, i64 -1
  %146 = icmp eq i64 %143, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %142, %152
  %148 = phi i64 [ %153, %152 ], [ %143, %142 ]
  %149 = getelementptr i64, ptr %145, i64 %148
  %150 = load i64, ptr %149, align 8, !tbaa !39
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = add nsw i64 %148, -1
  %154 = icmp sgt i64 %148, 1
  br i1 %154, label %147, label %155, !llvm.loop !79

155:                                              ; preds = %147, %152, %142
  %156 = phi i64 [ %143, %142 ], [ %148, %147 ], [ 0, %152 ]
  %157 = icmp slt i64 %144, 0
  %158 = sub nsw i64 0, %156
  %159 = select i1 %157, i64 %158, i64 %156
  %160 = trunc i64 %159 to i32
  br label %161

161:                                              ; preds = %4, %155
  %162 = phi i32 [ %160, %155 ], [ 0, %4 ]
  %163 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %162, ptr %163, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_fdiv_r_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  tail call fastcc void @mpz_div_r_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_tdiv_r_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  tail call fastcc void @mpz_div_r_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_divexact(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef 2), !range !94
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @mpz_divisible_p(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !34 {
  %3 = tail call fastcc i32 @mpz_div_qr(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef 2), !range !94
  %4 = xor i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @mpz_congruent_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !85
  %7 = ashr i32 %6, 31
  %8 = icmp ne i32 %6, 0
  %9 = zext i1 %8 to i32
  %10 = or i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = tail call i32 @mpz_cmp(ptr noundef %0, ptr noundef %1), !range !98
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %25

16:                                               ; preds = %3
  store i32 1, ptr %4, align 16, !tbaa !83
  %17 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 0, ptr %17, align 4, !tbaa !85
  %18 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %19 = tail call ptr %18(i64 noundef 8) #31
  %20 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !86
  call void @mpz_sub(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1)
  %21 = call fastcc i32 @mpz_div_qr(ptr noundef null, ptr noundef null, ptr noundef nonnull %4, ptr noundef %2, i32 noundef 2), !range !94
  %22 = xor i32 %21, 1
  %23 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %24 = load ptr, ptr %20, align 8, !tbaa !86
  call void %23(ptr noundef %24, i64 noundef 0) #31
  br label %25

25:                                               ; preds = %16, %12
  %26 = phi i32 [ %15, %12 ], [ %22, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  ret i32 %26
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_cdiv_qr_ui(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 !prof !34 {
  %5 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 1)
  ret i64 %5
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i32 noundef %4) unnamed_addr #2 !prof !34 {
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = icmp eq ptr %0, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %12, align 4, !tbaa !85
  br label %13

13:                                               ; preds = %11, %9
  %14 = icmp eq ptr %1, null
  br i1 %14, label %98, label %93

15:                                               ; preds = %5
  %16 = icmp sgt i32 %7, -1
  %17 = tail call i32 @llvm.abs.i32(i32 %7, i1 false)
  %18 = zext i32 %17 to i64
  %19 = icmp eq ptr %0, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %0, align 8, !tbaa !83
  %22 = sext i32 %21 to i64
  %23 = icmp sgt i64 %18, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = tail call i64 @llvm.smax.i64(i64 %18, i64 1)
  %26 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !86
  %28 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %29 = shl nuw nsw i64 %25, 3
  %30 = tail call ptr %28(ptr noundef %27, i64 noundef 0, i64 noundef %29) #31
  store ptr %30, ptr %26, align 8, !tbaa !86
  %31 = trunc i64 %25 to i32
  store i32 %31, ptr %0, align 8, !tbaa !83
  %32 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !85
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 true)
  %35 = zext nneg i32 %34 to i64
  %36 = icmp ult i64 %25, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  store i32 0, ptr %32, align 4, !tbaa !85
  br label %41

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !86
  br label %41

41:                                               ; preds = %37, %24, %15, %38
  %42 = phi ptr [ %40, %38 ], [ null, %15 ], [ %30, %24 ], [ %30, %37 ]
  %43 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !86
  %45 = tail call fastcc i64 @mpn_div_qr_1(ptr noundef %42, ptr noundef %44, i64 noundef %18, i64 noundef %3)
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = icmp slt i32 %7, 0
  %49 = sub nsw i64 0, %47
  %50 = select i1 %48, i64 %49, i64 %47
  br i1 %46, label %51, label %73

51:                                               ; preds = %41
  %52 = icmp eq i32 %4, 0
  %53 = and i1 %52, %48
  %54 = icmp eq i32 %4, 1
  %55 = and i1 %54, %16
  %56 = or i1 %53, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  br i1 %19, label %70, label %58

58:                                               ; preds = %57
  %59 = tail call i64 @llvm.umax.i64(i64 %18, i64 1)
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi i64 [ %68, %60 ], [ 0, %58 ]
  %62 = phi i64 [ %67, %60 ], [ 1, %58 ]
  %63 = getelementptr inbounds i64, ptr %42, i64 %61
  %64 = load i64, ptr %63, align 8, !tbaa !39
  %65 = add i64 %64, %62
  %66 = icmp ult i64 %65, %62
  %67 = zext i1 %66 to i64
  store i64 %65, ptr %63, align 8, !tbaa !39
  %68 = add nuw nsw i64 %61, 1
  %69 = icmp eq i64 %68, %59
  br i1 %69, label %70, label %60, !llvm.loop !46

70:                                               ; preds = %60, %57
  %71 = sub i64 %3, %45
  %72 = sub nsw i64 0, %50
  br label %73

73:                                               ; preds = %51, %70, %41
  %74 = phi i64 [ %71, %70 ], [ 0, %41 ], [ %45, %51 ]
  %75 = phi i64 [ %72, %70 ], [ %50, %41 ], [ %50, %51 ]
  %76 = icmp eq ptr %1, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !86
  store i64 %74, ptr %79, align 8, !tbaa !39
  %80 = trunc i64 %75 to i32
  %81 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  store i32 %80, ptr %81, align 4, !tbaa !85
  br label %82

82:                                               ; preds = %77, %73
  br i1 %19, label %98, label %83

83:                                               ; preds = %82
  %84 = add nsw i64 %18, -1
  %85 = getelementptr inbounds i64, ptr %42, i64 %84
  %86 = load i64, ptr %85, align 8, !tbaa !39
  %87 = icmp eq i64 %86, 0
  %88 = sext i1 %87 to i64
  %89 = add nsw i64 %88, %18
  %90 = sub nsw i64 0, %89
  %91 = select i1 %48, i64 %90, i64 %89
  %92 = trunc i64 %91 to i32
  br label %93

93:                                               ; preds = %13, %83
  %94 = phi ptr [ %0, %83 ], [ %1, %13 ]
  %95 = phi i32 [ %92, %83 ], [ 0, %13 ]
  %96 = phi i64 [ %74, %83 ], [ 0, %13 ]
  %97 = getelementptr inbounds %struct.__mpz_struct, ptr %94, i64 0, i32 1
  store i32 %95, ptr %97, align 4, !tbaa !85
  br label %98

98:                                               ; preds = %93, %82, %13
  %99 = phi i64 [ 0, %13 ], [ %74, %82 ], [ %96, %93 ]
  ret i64 %99
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_fdiv_qr_ui(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 !prof !34 {
  %5 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 0)
  ret i64 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_tdiv_qr_ui(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 !prof !34 {
  %5 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 2)
  ret i64 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_cdiv_q_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef 1)
  ret i64 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_fdiv_q_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret i64 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_tdiv_q_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef 2)
  ret i64 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_cdiv_r_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef null, ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1)
  ret i64 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_fdiv_r_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef null, ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret i64 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_tdiv_r_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef null, ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 2)
  ret i64 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_cdiv_ui(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = tail call fastcc i64 @mpn_div_qr_1(ptr noundef null, ptr noundef %10, i64 noundef %8, i64 noundef %1)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = sub i64 %1, %11
  %15 = icmp slt i32 %4, 0
  %16 = select i1 %15, i64 %11, i64 %14
  br label %17

17:                                               ; preds = %13, %6, %2
  %18 = phi i64 [ 0, %2 ], [ 0, %6 ], [ %16, %13 ]
  ret i64 %18
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_fdiv_ui(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = tail call fastcc i64 @mpn_div_qr_1(ptr noundef null, ptr noundef %10, i64 noundef %8, i64 noundef %1)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = icmp slt i32 %4, 0
  %15 = sub i64 %1, %11
  %16 = select i1 %14, i64 %15, i64 %11
  br label %17

17:                                               ; preds = %13, %6, %2
  %18 = phi i64 [ 0, %2 ], [ 0, %6 ], [ %16, %13 ]
  ret i64 %18
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_tdiv_ui(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = tail call fastcc i64 @mpn_div_qr_1(ptr noundef null, ptr noundef %10, i64 noundef %8, i64 noundef %1)
  br label %12

12:                                               ; preds = %2, %6
  %13 = phi i64 [ %11, %6 ], [ 0, %2 ]
  ret i64 %13
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_mod_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef null, ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret i64 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_divexact_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef 2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @mpz_divisible_ui_p(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = tail call fastcc i64 @mpn_div_qr_1(ptr noundef null, ptr noundef %10, i64 noundef %8, i64 noundef %1)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi i32 [ %13, %6 ], [ 1, %2 ]
  ret i32 %15
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_gcd_ui(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %5
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call void @mpz_set(ptr noundef nonnull %0, ptr noundef %1)
  br label %10

10:                                               ; preds = %7, %9
  %11 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !85
  %13 = tail call i32 @llvm.abs.i32(i32 %12, i1 true)
  store i32 %13, ptr %11, align 4, !tbaa !85
  br label %35

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !85
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @llvm.abs.i32(i32 %16, i1 true)
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  %23 = tail call fastcc i64 @mpn_div_qr_1(ptr noundef null, ptr noundef %22, i64 noundef %20, i64 noundef %2)
  %24 = tail call fastcc i64 @mpn_gcd_11(i64 noundef %23, i64 noundef %2)
  br label %25

25:                                               ; preds = %18, %14
  %26 = phi i64 [ %24, %18 ], [ %2, %14 ]
  %27 = icmp eq ptr %0, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = icmp eq i64 %26, 0
  %30 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  br i1 %29, label %34, label %31

31:                                               ; preds = %28
  store i32 1, ptr %30, align 4, !tbaa !85
  %32 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !86
  store i64 %26, ptr %33, align 8, !tbaa !39
  br label %35

34:                                               ; preds = %28
  store i32 0, ptr %30, align 4, !tbaa !85
  br label %35

35:                                               ; preds = %34, %31, %25, %5, %10
  %36 = phi i64 [ 0, %10 ], [ 0, %5 ], [ %26, %25 ], [ %26, %31 ], [ %26, %34 ]
  ret i64 %36
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(none) uwtable
define internal fastcc i64 @mpn_gcd_11(i64 noundef %0, i64 noundef %1) unnamed_addr #17 !prof !34 {
  %3 = icmp eq i64 %0, 0
  br i1 %3, label %69, label %4

4:                                                ; preds = %2
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %69, label %6

6:                                                ; preds = %4
  %7 = or i64 %1, %0
  %8 = sub i64 0, %7
  %9 = and i64 %7, %8
  %10 = icmp ult i64 %9, 72057594037927936
  br i1 %10, label %15, label %11

11:                                               ; preds = %15, %6
  %12 = phi i64 [ %9, %6 ], [ %18, %15 ]
  %13 = phi i32 [ 0, %6 ], [ %19, %15 ]
  %14 = icmp sgt i64 %12, -1
  br i1 %14, label %21, label %27

15:                                               ; preds = %6, %15
  %16 = phi i32 [ %19, %15 ], [ 0, %6 ]
  %17 = phi i64 [ %18, %15 ], [ %9, %6 ]
  %18 = shl nuw i64 %17, 8
  %19 = add i32 %16, 8
  %20 = icmp ult i64 %17, 281474976710656
  br i1 %20, label %15, label %11, !llvm.loop !99

21:                                               ; preds = %11, %21
  %22 = phi i32 [ %25, %21 ], [ %13, %11 ]
  %23 = phi i64 [ %24, %21 ], [ %12, %11 ]
  %24 = shl nuw i64 %23, 1
  %25 = add i32 %22, 1
  %26 = icmp sgt i64 %24, -1
  br i1 %26, label %21, label %27, !llvm.loop !100

27:                                               ; preds = %21, %11
  %28 = phi i32 [ %13, %11 ], [ %25, %21 ]
  %29 = sub i32 63, %28
  %30 = zext i32 %29 to i64
  %31 = lshr i64 %0, %30
  %32 = lshr i64 %1, %30
  %33 = and i64 %31, 1
  %34 = icmp eq i64 %33, 0
  %35 = select i1 %34, i64 %31, i64 %32
  br label %36

36:                                               ; preds = %36, %27
  %37 = phi i64 [ %35, %27 ], [ %40, %36 ]
  %38 = and i64 %37, 1
  %39 = icmp eq i64 %38, 0
  %40 = lshr exact i64 %37, 1
  br i1 %39, label %36, label %41, !llvm.loop !101

41:                                               ; preds = %36
  %42 = select i1 %34, i64 %32, i64 %31
  %43 = icmp eq i64 %42, %37
  br i1 %43, label %66, label %44

44:                                               ; preds = %41, %62
  %45 = phi i64 [ %64, %62 ], [ %42, %41 ]
  %46 = phi i64 [ %63, %62 ], [ %37, %41 ]
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = sub i64 %45, %46
  br label %50

50:                                               ; preds = %50, %48
  %51 = phi i64 [ %49, %48 ], [ %52, %50 ]
  %52 = lshr i64 %51, 1
  %53 = and i64 %51, 2
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %50, label %62, !llvm.loop !102

55:                                               ; preds = %44
  %56 = sub i64 %46, %45
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i64 [ %56, %55 ], [ %59, %57 ]
  %59 = lshr i64 %58, 1
  %60 = and i64 %58, 2
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %57, label %62, !llvm.loop !103

62:                                               ; preds = %57, %50
  %63 = phi i64 [ %46, %50 ], [ %59, %57 ]
  %64 = phi i64 [ %52, %50 ], [ %45, %57 ]
  %65 = icmp eq i64 %64, %63
  br i1 %65, label %66, label %44, !llvm.loop !104

66:                                               ; preds = %62, %41
  %67 = phi i64 [ %42, %41 ], [ %64, %62 ]
  %68 = shl i64 %67, %30
  br label %69

69:                                               ; preds = %4, %2, %66
  %70 = phi i64 [ %68, %66 ], [ %1, %2 ], [ %0, %4 ]
  ret i64 %70
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @mpn_div_qr_1(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 !prof !34 {
  %5 = alloca %struct.gmp_div_inverse, align 8
  %6 = tail call i64 @llvm.ctpop.i64(i64 %3), !range !105
  %7 = icmp ult i64 %6, 2
  br i1 %7, label %8, label %69

8:                                                ; preds = %4
  %9 = add i64 %3, -1
  %10 = load i64, ptr %1, align 8, !tbaa !39
  %11 = and i64 %10, %9
  %12 = icmp eq ptr %0, null
  br i1 %12, label %95, label %13

13:                                               ; preds = %8
  %14 = icmp ult i64 %3, 2
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %16 = icmp sgt i64 %2, 0
  br i1 %16, label %17, label %95

17:                                               ; preds = %15, %17
  %18 = phi i64 [ %22, %17 ], [ 0, %15 ]
  %19 = getelementptr inbounds i64, ptr %1, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !39
  %21 = getelementptr inbounds i64, ptr %0, i64 %18
  store i64 %20, ptr %21, align 8, !tbaa !39
  %22 = add nuw nsw i64 %18, 1
  %23 = icmp eq i64 %22, %2
  br i1 %23, label %95, label %17, !llvm.loop !41

24:                                               ; preds = %13
  %25 = sub i64 0, %3
  %26 = and i64 %25, %3
  %27 = icmp ult i64 %26, 72057594037927936
  br i1 %27, label %32, label %28

28:                                               ; preds = %32, %24
  %29 = phi i64 [ %26, %24 ], [ %35, %32 ]
  %30 = phi i32 [ 0, %24 ], [ %36, %32 ]
  %31 = icmp sgt i64 %29, -1
  br i1 %31, label %38, label %44

32:                                               ; preds = %24, %32
  %33 = phi i32 [ %36, %32 ], [ 0, %24 ]
  %34 = phi i64 [ %35, %32 ], [ %26, %24 ]
  %35 = shl nuw i64 %34, 8
  %36 = add i32 %33, 8
  %37 = icmp ult i64 %34, 281474976710656
  br i1 %37, label %32, label %28, !llvm.loop !106

38:                                               ; preds = %28, %38
  %39 = phi i32 [ %42, %38 ], [ %30, %28 ]
  %40 = phi i64 [ %41, %38 ], [ %29, %28 ]
  %41 = shl nuw i64 %40, 1
  %42 = add i32 %39, 1
  %43 = icmp sgt i64 %41, -1
  br i1 %43, label %38, label %44, !llvm.loop !107

44:                                               ; preds = %38, %28
  %45 = phi i32 [ %30, %28 ], [ %42, %38 ]
  %46 = sub i32 63, %45
  %47 = zext nneg i32 %46 to i64
  %48 = add i32 %45, 1
  %49 = zext nneg i32 %48 to i64
  %50 = lshr i64 %10, %47
  %51 = add nsw i64 %2, -1
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %44, %53
  %54 = phi i64 [ %64, %53 ], [ %51, %44 ]
  %55 = phi i64 [ %63, %53 ], [ %50, %44 ]
  %56 = phi ptr [ %62, %53 ], [ %0, %44 ]
  %57 = phi ptr [ %58, %53 ], [ %1, %44 ]
  %58 = getelementptr inbounds i64, ptr %57, i64 1
  %59 = load i64, ptr %58, align 8, !tbaa !39
  %60 = shl i64 %59, %49
  %61 = or i64 %60, %55
  %62 = getelementptr inbounds i64, ptr %56, i64 1
  store i64 %61, ptr %56, align 8, !tbaa !39
  %63 = lshr i64 %59, %47
  %64 = add nsw i64 %54, -1
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %53, !llvm.loop !55

66:                                               ; preds = %53, %44
  %67 = phi ptr [ %0, %44 ], [ %62, %53 ]
  %68 = phi i64 [ %50, %44 ], [ %63, %53 ]
  store i64 %68, ptr %67, align 8, !tbaa !39
  br label %95

69:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #31
  %70 = icmp ult i64 %3, 72057594037927936
  br i1 %70, label %75, label %71

71:                                               ; preds = %75, %69
  %72 = phi i64 [ %3, %69 ], [ %78, %75 ]
  %73 = phi i32 [ 0, %69 ], [ %79, %75 ]
  %74 = icmp sgt i64 %72, -1
  br i1 %74, label %81, label %87

75:                                               ; preds = %69, %75
  %76 = phi i32 [ %79, %75 ], [ 0, %69 ]
  %77 = phi i64 [ %78, %75 ], [ %3, %69 ]
  %78 = shl nuw i64 %77, 8
  %79 = add i32 %76, 8
  %80 = icmp ult i64 %77, 281474976710656
  br i1 %80, label %75, label %71, !llvm.loop !69

81:                                               ; preds = %71, %81
  %82 = phi i32 [ %85, %81 ], [ %73, %71 ]
  %83 = phi i64 [ %84, %81 ], [ %72, %71 ]
  %84 = shl nuw i64 %83, 1
  %85 = add i32 %82, 1
  %86 = icmp sgt i64 %84, -1
  br i1 %86, label %81, label %87, !llvm.loop !70

87:                                               ; preds = %81, %71
  %88 = phi i32 [ %73, %71 ], [ %85, %81 ]
  store i32 %88, ptr %5, align 8, !tbaa !71
  %89 = zext nneg i32 %88 to i64
  %90 = shl i64 %3, %89
  %91 = getelementptr inbounds %struct.gmp_div_inverse, ptr %5, i64 0, i32 1
  store i64 %90, ptr %91, align 8, !tbaa !73
  %92 = tail call i64 @mpn_invert_3by2(i64 noundef %90, i64 noundef 0)
  %93 = getelementptr inbounds %struct.gmp_div_inverse, ptr %5, i64 0, i32 3
  store i64 %92, ptr %93, align 8, !tbaa !74
  %94 = call fastcc i64 @mpn_div_qr_1_preinv(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  br label %95

95:                                               ; preds = %17, %15, %8, %66, %87
  %96 = phi i64 [ %94, %87 ], [ %11, %66 ], [ %11, %8 ], [ %11, %15 ], [ %11, %17 ]
  ret i64 %96
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_gcd(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #31
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = icmp eq ptr %0, %2
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @mpz_set(ptr noundef %0, ptr noundef %2)
  br label %12

12:                                               ; preds = %9, %11
  %13 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !85
  %15 = tail call i32 @llvm.abs.i32(i32 %14, i1 true)
  store i32 %15, ptr %13, align 4, !tbaa !85
  br label %124

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !85
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = icmp eq ptr %0, %1
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void @mpz_set(ptr noundef %0, ptr noundef %1)
  br label %23

23:                                               ; preds = %20, %22
  %24 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !85
  %26 = tail call i32 @llvm.abs.i32(i32 %25, i1 true)
  store i32 %26, ptr %24, align 4, !tbaa !85
  br label %124

27:                                               ; preds = %16
  store i32 1, ptr %4, align 16, !tbaa !83
  %28 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 0, ptr %28, align 4, !tbaa !85
  %29 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %30 = tail call ptr %29(i64 noundef 8) #31
  %31 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !86
  store i32 1, ptr %5, align 16, !tbaa !83
  %32 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 1
  store i32 0, ptr %32, align 4, !tbaa !85
  %33 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %34 = tail call ptr %33(i64 noundef 8) #31
  %35 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !86
  %36 = icmp eq ptr %4, %1
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  call void @mpz_set(ptr noundef nonnull %4, ptr noundef %1)
  br label %38

38:                                               ; preds = %27, %37
  %39 = load i32, ptr %28, align 4, !tbaa !85
  %40 = call i32 @llvm.abs.i32(i32 %39, i1 true)
  store i32 %40, ptr %28, align 4, !tbaa !85
  %41 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %4)
  %42 = icmp eq ptr %5, %2
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  call void @mpz_set(ptr noundef nonnull %5, ptr noundef %2)
  br label %44

44:                                               ; preds = %38, %43
  %45 = load i32, ptr %32, align 4, !tbaa !85
  %46 = call i32 @llvm.abs.i32(i32 %45, i1 true)
  store i32 %46, ptr %32, align 4, !tbaa !85
  %47 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %5)
  %48 = call i64 @llvm.umin.i64(i64 %41, i64 %47)
  %49 = load i32, ptr %28, align 4, !tbaa !85
  %50 = load i32, ptr %32, align 4, !tbaa !85
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  store i32 %50, ptr %28, align 4, !tbaa !85
  store i32 %49, ptr %32, align 4, !tbaa !85
  %53 = load i32, ptr %4, align 16, !tbaa !83
  %54 = load i32, ptr %5, align 16, !tbaa !83
  store i32 %54, ptr %4, align 16, !tbaa !83
  store i32 %53, ptr %5, align 16, !tbaa !83
  %55 = load ptr, ptr %31, align 8, !tbaa !86
  %56 = load ptr, ptr %35, align 8, !tbaa !86
  store ptr %56, ptr %31, align 8, !tbaa !86
  store ptr %55, ptr %35, align 8, !tbaa !86
  br label %57

57:                                               ; preds = %52, %44
  %58 = call fastcc i32 @mpz_div_qr(ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 2), !range !94
  %59 = load i32, ptr %28, align 4, !tbaa !85
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %4)
  %63 = call i32 @mpz_cmp(ptr noundef nonnull %4, ptr noundef nonnull %5), !range !98
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %83

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !85
  %68 = load i32, ptr %32, align 4, !tbaa !85
  store i32 %68, ptr %66, align 4, !tbaa !85
  store i32 %67, ptr %32, align 4, !tbaa !85
  %69 = load i32, ptr %0, align 8, !tbaa !83
  %70 = load i32, ptr %5, align 16, !tbaa !83
  store i32 %70, ptr %0, align 8, !tbaa !83
  store i32 %69, ptr %5, align 16, !tbaa !83
  %71 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !86
  %73 = load ptr, ptr %35, align 8, !tbaa !86
  store ptr %73, ptr %71, align 8, !tbaa !86
  store ptr %72, ptr %35, align 8, !tbaa !86
  br label %119

74:                                               ; preds = %115, %61
  %75 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !85
  %77 = load i32, ptr %28, align 4, !tbaa !85
  store i32 %77, ptr %75, align 4, !tbaa !85
  store i32 %76, ptr %28, align 4, !tbaa !85
  %78 = load i32, ptr %0, align 8, !tbaa !83
  %79 = load i32, ptr %4, align 16, !tbaa !83
  store i32 %79, ptr %0, align 8, !tbaa !83
  store i32 %78, ptr %4, align 16, !tbaa !83
  %80 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !86
  %82 = load ptr, ptr %31, align 8, !tbaa !86
  store ptr %82, ptr %80, align 8, !tbaa !86
  store ptr %81, ptr %31, align 8, !tbaa !86
  br label %119

83:                                               ; preds = %61, %115
  %84 = phi i32 [ %117, %115 ], [ %63, %61 ]
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32, ptr %28, align 4, !tbaa !85
  %88 = load i32, ptr %32, align 4, !tbaa !85
  store i32 %88, ptr %28, align 4, !tbaa !85
  store i32 %87, ptr %32, align 4, !tbaa !85
  %89 = load i32, ptr %4, align 16, !tbaa !83
  %90 = load i32, ptr %5, align 16, !tbaa !83
  store i32 %90, ptr %4, align 16, !tbaa !83
  store i32 %89, ptr %5, align 16, !tbaa !83
  %91 = load ptr, ptr %31, align 8, !tbaa !86
  %92 = load ptr, ptr %35, align 8, !tbaa !86
  store ptr %92, ptr %31, align 8, !tbaa !86
  store ptr %91, ptr %35, align 8, !tbaa !86
  br label %93

93:                                               ; preds = %86, %83
  %94 = load i32, ptr %32, align 4, !tbaa !85
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  %97 = load ptr, ptr %35, align 8, !tbaa !86
  %98 = load i64, ptr %97, align 8, !tbaa !39
  %99 = load i32, ptr %28, align 4, !tbaa !85
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = call i32 @llvm.abs.i32(i32 %99, i1 false)
  %103 = zext i32 %102 to i64
  %104 = load ptr, ptr %31, align 8, !tbaa !86
  %105 = call fastcc i64 @mpn_div_qr_1(ptr noundef null, ptr noundef %104, i64 noundef %103, i64 noundef %98)
  br label %106

106:                                              ; preds = %96, %101
  %107 = phi i64 [ %105, %101 ], [ 0, %96 ]
  %108 = call fastcc i64 @mpn_gcd_11(i64 noundef %107, i64 noundef %98)
  %109 = icmp eq i64 %108, 0
  %110 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  br i1 %109, label %114, label %111

111:                                              ; preds = %106
  store i32 1, ptr %110, align 4, !tbaa !85
  %112 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !86
  store i64 %108, ptr %113, align 8, !tbaa !39
  br label %119

114:                                              ; preds = %106
  store i32 0, ptr %110, align 4, !tbaa !85
  br label %119

115:                                              ; preds = %93
  call void @mpz_sub(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %116 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %4)
  %117 = call i32 @mpz_cmp(ptr noundef nonnull %4, ptr noundef nonnull %5), !range !98
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %74, label %83

119:                                              ; preds = %74, %111, %114, %65
  %120 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %121 = load ptr, ptr %31, align 8, !tbaa !86
  call void %120(ptr noundef %121, i64 noundef 0) #31
  %122 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %123 = load ptr, ptr %35, align 8, !tbaa !86
  call void %122(ptr noundef %123, i64 noundef 0) #31
  call void @mpz_mul_2exp(ptr noundef %0, ptr noundef %0, i64 noundef %48)
  br label %124

124:                                              ; preds = %119, %23, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i64 @mpz_make_odd(ptr nocapture noundef %0) unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = load i64, ptr %3, align 8, !tbaa !39
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1, %6
  %7 = phi i64 [ %8, %6 ], [ 0, %1 ]
  %8 = add nuw nsw i64 %7, 1
  %9 = getelementptr inbounds i64, ptr %3, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !39
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %6, label %12, !llvm.loop !56

12:                                               ; preds = %6
  %13 = shl i64 %8, 6
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i64 [ 0, %1 ], [ %13, %12 ]
  %16 = phi i64 [ %4, %1 ], [ %10, %12 ]
  %17 = sub i64 0, %16
  %18 = and i64 %16, %17
  %19 = icmp ult i64 %18, 72057594037927936
  br i1 %19, label %24, label %20

20:                                               ; preds = %24, %14
  %21 = phi i64 [ %18, %14 ], [ %27, %24 ]
  %22 = phi i32 [ 0, %14 ], [ %28, %24 ]
  %23 = icmp sgt i64 %21, -1
  br i1 %23, label %30, label %36

24:                                               ; preds = %14, %24
  %25 = phi i32 [ %28, %24 ], [ 0, %14 ]
  %26 = phi i64 [ %27, %24 ], [ %18, %14 ]
  %27 = shl nuw i64 %26, 8
  %28 = add i32 %25, 8
  %29 = icmp ult i64 %26, 281474976710656
  br i1 %29, label %24, label %20, !llvm.loop !57

30:                                               ; preds = %20, %30
  %31 = phi i32 [ %34, %30 ], [ %22, %20 ]
  %32 = phi i64 [ %33, %30 ], [ %21, %20 ]
  %33 = shl nuw i64 %32, 1
  %34 = add i32 %31, 1
  %35 = icmp sgt i64 %33, -1
  br i1 %35, label %30, label %36, !llvm.loop !58

36:                                               ; preds = %30, %20
  %37 = phi i32 [ %22, %20 ], [ %34, %30 ]
  %38 = sub i32 63, %37
  %39 = zext i32 %38 to i64
  %40 = add i64 %15, %39
  tail call fastcc void @mpz_div_q_2exp(ptr noundef %0, ptr noundef %0, i64 noundef %40, i32 noundef 2)
  ret i64 %40
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_gcdext(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 !prof !34 {
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  %8 = alloca [1 x %struct.__mpz_struct], align 16
  %9 = alloca [1 x %struct.__mpz_struct], align 16
  %10 = alloca [1 x %struct.__mpz_struct], align 16
  %11 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #31
  %12 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !85
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !85
  br i1 %14, label %17, label %48

17:                                               ; preds = %5
  %18 = ashr i32 %16, 31
  %19 = icmp ne i32 %16, 0
  %20 = zext i1 %19 to i32
  %21 = or i32 %18, %20
  %22 = sext i32 %21 to i64
  %23 = icmp eq ptr %0, %4
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @mpz_set(ptr noundef %0, ptr noundef %4)
  br label %25

25:                                               ; preds = %17, %24
  %26 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !85
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  store i32 %28, ptr %26, align 4, !tbaa !85
  %29 = icmp eq ptr %1, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  store i32 0, ptr %31, align 4, !tbaa !85
  br label %32

32:                                               ; preds = %30, %25
  %33 = icmp eq ptr %2, null
  br i1 %33, label %272, label %34

34:                                               ; preds = %32
  %35 = icmp sgt i32 %21, -1
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %37 = icmp eq i32 %21, 0
  %38 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  br i1 %37, label %42, label %39

39:                                               ; preds = %36
  store i32 1, ptr %38, align 4, !tbaa !85
  %40 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !86
  store i64 %22, ptr %41, align 8, !tbaa !39
  br label %272

42:                                               ; preds = %36
  store i32 0, ptr %38, align 4, !tbaa !85
  br label %272

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  store i32 -1, ptr %44, align 4, !tbaa !85
  %45 = sub nsw i64 0, %22
  %46 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !86
  store i64 %45, ptr %47, align 8, !tbaa !39
  br label %272

48:                                               ; preds = %5
  %49 = icmp eq i32 %16, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %48
  %51 = ashr i32 %13, 31
  %52 = or i32 %51, 1
  %53 = icmp eq ptr %0, %3
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @mpz_set(ptr noundef %0, ptr noundef %3)
  br label %55

55:                                               ; preds = %50, %54
  %56 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !85
  %58 = tail call i32 @llvm.abs.i32(i32 %57, i1 true)
  store i32 %58, ptr %56, align 4, !tbaa !85
  %59 = icmp eq ptr %1, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = sext i32 %52 to i64
  %62 = icmp sgt i32 %52, -1
  %63 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  br i1 %62, label %64, label %65

64:                                               ; preds = %60
  store i32 1, ptr %63, align 4, !tbaa !85
  br label %67

65:                                               ; preds = %60
  store i32 -1, ptr %63, align 4, !tbaa !85
  %66 = sub nsw i64 0, %61
  br label %67

67:                                               ; preds = %64, %65
  %68 = phi i64 [ %66, %65 ], [ %61, %64 ]
  %69 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !86
  store i64 %68, ptr %70, align 8, !tbaa !39
  br label %71

71:                                               ; preds = %67, %55
  %72 = icmp eq ptr %2, null
  br i1 %72, label %272, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  store i32 0, ptr %74, align 4, !tbaa !85
  br label %272

75:                                               ; preds = %48
  store i32 1, ptr %6, align 16, !tbaa !83
  %76 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 1
  store i32 0, ptr %76, align 4, !tbaa !85
  %77 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %78 = tail call ptr %77(i64 noundef 8) #31
  %79 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 2
  store ptr %78, ptr %79, align 8, !tbaa !86
  store i32 1, ptr %7, align 16, !tbaa !83
  %80 = getelementptr inbounds %struct.__mpz_struct, ptr %7, i64 0, i32 1
  store i32 0, ptr %80, align 4, !tbaa !85
  %81 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %82 = tail call ptr %81(i64 noundef 8) #31
  %83 = getelementptr inbounds %struct.__mpz_struct, ptr %7, i64 0, i32 2
  store ptr %82, ptr %83, align 8, !tbaa !86
  store i32 1, ptr %8, align 16, !tbaa !83
  %84 = getelementptr inbounds %struct.__mpz_struct, ptr %8, i64 0, i32 1
  store i32 0, ptr %84, align 4, !tbaa !85
  %85 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %86 = tail call ptr %85(i64 noundef 8) #31
  %87 = getelementptr inbounds %struct.__mpz_struct, ptr %8, i64 0, i32 2
  store ptr %86, ptr %87, align 8, !tbaa !86
  store i32 1, ptr %9, align 16, !tbaa !83
  %88 = getelementptr inbounds %struct.__mpz_struct, ptr %9, i64 0, i32 1
  store i32 0, ptr %88, align 4, !tbaa !85
  %89 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %90 = tail call ptr %89(i64 noundef 8) #31
  %91 = getelementptr inbounds %struct.__mpz_struct, ptr %9, i64 0, i32 2
  store ptr %90, ptr %91, align 8, !tbaa !86
  store i32 1, ptr %10, align 16, !tbaa !83
  %92 = getelementptr inbounds %struct.__mpz_struct, ptr %10, i64 0, i32 1
  store i32 0, ptr %92, align 4, !tbaa !85
  %93 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %94 = tail call ptr %93(i64 noundef 8) #31
  %95 = getelementptr inbounds %struct.__mpz_struct, ptr %10, i64 0, i32 2
  store ptr %94, ptr %95, align 8, !tbaa !86
  store i32 1, ptr %11, align 16, !tbaa !83
  %96 = getelementptr inbounds %struct.__mpz_struct, ptr %11, i64 0, i32 1
  store i32 0, ptr %96, align 4, !tbaa !85
  %97 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %98 = tail call ptr %97(i64 noundef 8) #31
  %99 = getelementptr inbounds %struct.__mpz_struct, ptr %11, i64 0, i32 2
  store ptr %98, ptr %99, align 8, !tbaa !86
  %100 = icmp eq ptr %6, %3
  br i1 %100, label %102, label %101

101:                                              ; preds = %75
  call void @mpz_set(ptr noundef nonnull %6, ptr noundef %3)
  br label %102

102:                                              ; preds = %75, %101
  %103 = load i32, ptr %76, align 4, !tbaa !85
  %104 = call i32 @llvm.abs.i32(i32 %103, i1 true)
  store i32 %104, ptr %76, align 4, !tbaa !85
  %105 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %6)
  %106 = icmp eq ptr %7, %4
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  call void @mpz_set(ptr noundef nonnull %7, ptr noundef %4)
  br label %108

108:                                              ; preds = %102, %107
  %109 = load i32, ptr %80, align 4, !tbaa !85
  %110 = call i32 @llvm.abs.i32(i32 %109, i1 true)
  store i32 %110, ptr %80, align 4, !tbaa !85
  %111 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %7)
  %112 = call i64 @llvm.umin.i64(i64 %105, i64 %111)
  %113 = sub i64 %105, %112
  %114 = sub i64 %111, %112
  %115 = load i32, ptr %76, align 4, !tbaa !85
  %116 = load i32, ptr %80, align 4, !tbaa !85
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  store i32 %116, ptr %76, align 4, !tbaa !85
  store i32 %115, ptr %80, align 4, !tbaa !85
  %119 = load i32, ptr %6, align 16, !tbaa !83
  %120 = load i32, ptr %7, align 16, !tbaa !83
  store i32 %120, ptr %6, align 16, !tbaa !83
  store i32 %119, ptr %7, align 16, !tbaa !83
  %121 = load ptr, ptr %79, align 8, !tbaa !86
  %122 = load ptr, ptr %83, align 8, !tbaa !86
  store ptr %122, ptr %79, align 8, !tbaa !86
  store ptr %121, ptr %83, align 8, !tbaa !86
  br label %123

123:                                              ; preds = %118, %108
  %124 = phi i64 [ %113, %118 ], [ %114, %108 ]
  %125 = phi i64 [ %114, %118 ], [ %113, %108 ]
  %126 = phi ptr [ %3, %118 ], [ %4, %108 ]
  %127 = phi ptr [ %4, %118 ], [ %3, %108 ]
  %128 = phi ptr [ %1, %118 ], [ %2, %108 ]
  %129 = phi ptr [ %2, %118 ], [ %1, %108 ]
  call void @mpz_setbit(ptr noundef nonnull %10, i64 noundef %125)
  %130 = call fastcc i32 @mpz_div_qr(ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2), !range !94
  call void @mpz_mul_2exp(ptr noundef nonnull %11, ptr noundef nonnull %11, i64 noundef %125)
  call void @mpz_setbit(ptr noundef nonnull %9, i64 noundef %124)
  %131 = add i64 %114, %113
  %132 = load i32, ptr %76, align 4, !tbaa !85
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %123
  %135 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %6)
  call void @mpz_mul_2exp(ptr noundef nonnull %10, ptr noundef nonnull %10, i64 noundef %135)
  call void @mpz_mul_2exp(ptr noundef nonnull %8, ptr noundef nonnull %8, i64 noundef %135)
  %136 = add i64 %135, %131
  br label %137

137:                                              ; preds = %150, %134
  %138 = phi i64 [ %136, %134 ], [ %151, %150 ]
  %139 = call i32 @mpz_cmp(ptr noundef nonnull %6, ptr noundef nonnull %7), !range !98
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %137
  %142 = icmp slt i32 %139, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %141
  call void @mpz_sub(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %6)
  call void @mpz_add(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %11)
  call void @mpz_add(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %144 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %7)
  call void @mpz_mul_2exp(ptr noundef nonnull %11, ptr noundef nonnull %11, i64 noundef %144)
  call void @mpz_mul_2exp(ptr noundef nonnull %9, ptr noundef nonnull %9, i64 noundef %144)
  br label %147

145:                                              ; preds = %141
  call void @mpz_sub(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %7)
  call void @mpz_add(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %11)
  call void @mpz_add(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %146 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %6)
  call void @mpz_mul_2exp(ptr noundef nonnull %10, ptr noundef nonnull %10, i64 noundef %146)
  call void @mpz_mul_2exp(ptr noundef nonnull %8, ptr noundef nonnull %8, i64 noundef %146)
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i64 [ %144, %143 ], [ %146, %145 ]
  %149 = add i64 %148, %138
  br label %150

150:                                              ; preds = %137, %147
  %151 = phi i64 [ %149, %147 ], [ %138, %137 ]
  br i1 %140, label %152, label %137

152:                                              ; preds = %150, %123
  %153 = phi i64 [ %131, %123 ], [ %151, %150 ]
  call void @mpz_mul_2exp(ptr noundef nonnull %7, ptr noundef nonnull %7, i64 noundef %112)
  %154 = load i32, ptr %84, align 4, !tbaa !85
  %155 = sub nsw i32 0, %154
  store i32 %155, ptr %84, align 4, !tbaa !85
  %156 = call fastcc i32 @mpz_div_qr(ptr noundef nonnull %9, ptr noundef null, ptr noundef %126, ptr noundef nonnull %7, i32 noundef 2), !range !94
  %157 = load i32, ptr %88, align 4, !tbaa !85
  %158 = call i32 @llvm.abs.i32(i32 %157, i1 true)
  store i32 %158, ptr %88, align 4, !tbaa !85
  %159 = call fastcc i32 @mpz_div_qr(ptr noundef nonnull %11, ptr noundef null, ptr noundef %127, ptr noundef nonnull %7, i32 noundef 2), !range !94
  %160 = load i32, ptr %96, align 4, !tbaa !85
  %161 = call i32 @llvm.abs.i32(i32 %160, i1 true)
  store i32 %161, ptr %96, align 4, !tbaa !85
  %162 = icmp eq i64 %153, 0
  br i1 %162, label %186, label %163

163:                                              ; preds = %152, %182
  %164 = phi i64 [ %165, %182 ], [ %153, %152 ]
  %165 = add i64 %164, -1
  %166 = load i32, ptr %84, align 4, !tbaa !85
  %167 = icmp eq i32 %166, 0
  %168 = load ptr, ptr %87, align 8, !tbaa !86
  %169 = load i64, ptr %168, align 8, !tbaa !39
  %170 = and i64 %169, 1
  %171 = icmp eq i64 %170, 0
  %172 = select i1 %167, i1 true, i1 %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %163
  %174 = load i32, ptr %92, align 4, !tbaa !85
  %175 = icmp eq i32 %174, 0
  %176 = load ptr, ptr %95, align 8, !tbaa !86
  %177 = load i64, ptr %176, align 8, !tbaa !39
  %178 = and i64 %177, 1
  %179 = icmp eq i64 %178, 0
  %180 = select i1 %175, i1 true, i1 %179
  br i1 %180, label %182, label %181

181:                                              ; preds = %173, %163
  call void @mpz_sub(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %9)
  call void @mpz_add(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %11)
  br label %182

182:                                              ; preds = %181, %173
  %183 = call fastcc i64 @mpz_div_qr_ui(ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %8, i64 noundef 2, i32 noundef 2)
  %184 = call fastcc i64 @mpz_div_qr_ui(ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %10, i64 noundef 2, i32 noundef 2)
  %185 = icmp eq i64 %165, 0
  br i1 %185, label %186, label %163, !llvm.loop !108

186:                                              ; preds = %182, %152
  call void @mpz_add(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %187 = load ptr, ptr %87, align 8, !tbaa !86
  %188 = load i32, ptr %84, align 4, !tbaa !85
  %189 = call i32 @llvm.abs.i32(i32 %188, i1 true)
  %190 = load ptr, ptr %91, align 8, !tbaa !86
  %191 = load i32, ptr %88, align 4, !tbaa !85
  %192 = call i32 @llvm.abs.i32(i32 %191, i1 true)
  %193 = icmp eq i32 %189, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %186
  %195 = zext nneg i32 %189 to i64
  br label %198

196:                                              ; preds = %186
  %197 = icmp uge i32 %189, %192
  br label %210

198:                                              ; preds = %194, %201
  %199 = phi i64 [ %202, %201 ], [ %195, %194 ]
  %200 = icmp sgt i64 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %198
  %202 = add nsw i64 %199, -1
  %203 = getelementptr inbounds i64, ptr %187, i64 %202
  %204 = load i64, ptr %203, align 8, !tbaa !39
  %205 = getelementptr inbounds i64, ptr %190, i64 %202
  %206 = load i64, ptr %205, align 8, !tbaa !39
  %207 = icmp eq i64 %204, %206
  br i1 %207, label %198, label %208, !llvm.loop !45

208:                                              ; preds = %201
  %209 = icmp ugt i64 %204, %206
  br label %210

210:                                              ; preds = %196, %208
  %211 = phi i1 [ %197, %196 ], [ %209, %208 ]
  br i1 %211, label %212, label %215

212:                                              ; preds = %210
  store i32 %191, ptr %84, align 4, !tbaa !85
  store i32 %188, ptr %88, align 4, !tbaa !85
  %213 = load i32, ptr %8, align 16, !tbaa !83
  %214 = load i32, ptr %9, align 16, !tbaa !83
  store i32 %214, ptr %8, align 16, !tbaa !83
  store i32 %213, ptr %9, align 16, !tbaa !83
  store ptr %190, ptr %87, align 8, !tbaa !86
  store ptr %187, ptr %91, align 8, !tbaa !86
  call void @mpz_sub(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %11)
  br label %215

215:                                              ; preds = %198, %212, %210
  %216 = getelementptr inbounds %struct.__mpz_struct, ptr %127, i64 0, i32 1
  %217 = load i32, ptr %216, align 4, !tbaa !85
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load i32, ptr %84, align 4, !tbaa !85
  %221 = sub nsw i32 0, %220
  store i32 %221, ptr %84, align 4, !tbaa !85
  br label %222

222:                                              ; preds = %219, %215
  %223 = getelementptr inbounds %struct.__mpz_struct, ptr %126, i64 0, i32 1
  %224 = load i32, ptr %223, align 4, !tbaa !85
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load i32, ptr %92, align 4, !tbaa !85
  %228 = sub nsw i32 0, %227
  store i32 %228, ptr %92, align 4, !tbaa !85
  br label %229

229:                                              ; preds = %226, %222
  %230 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !85
  %232 = load i32, ptr %80, align 4, !tbaa !85
  store i32 %232, ptr %230, align 4, !tbaa !85
  store i32 %231, ptr %80, align 4, !tbaa !85
  %233 = load i32, ptr %0, align 8, !tbaa !83
  %234 = load i32, ptr %7, align 16, !tbaa !83
  store i32 %234, ptr %0, align 8, !tbaa !83
  store i32 %233, ptr %7, align 16, !tbaa !83
  %235 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !86
  %237 = load ptr, ptr %83, align 8, !tbaa !86
  store ptr %237, ptr %235, align 8, !tbaa !86
  store ptr %236, ptr %83, align 8, !tbaa !86
  %238 = icmp eq ptr %129, null
  br i1 %238, label %248, label %239

239:                                              ; preds = %229
  %240 = getelementptr inbounds %struct.__mpz_struct, ptr %129, i64 0, i32 1
  %241 = load i32, ptr %240, align 4, !tbaa !85
  %242 = load i32, ptr %84, align 4, !tbaa !85
  store i32 %242, ptr %240, align 4, !tbaa !85
  store i32 %241, ptr %84, align 4, !tbaa !85
  %243 = load i32, ptr %129, align 8, !tbaa !83
  %244 = load i32, ptr %8, align 16, !tbaa !83
  store i32 %244, ptr %129, align 8, !tbaa !83
  store i32 %243, ptr %8, align 16, !tbaa !83
  %245 = getelementptr inbounds %struct.__mpz_struct, ptr %129, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !86
  %247 = load ptr, ptr %87, align 8, !tbaa !86
  store ptr %247, ptr %245, align 8, !tbaa !86
  store ptr %246, ptr %87, align 8, !tbaa !86
  br label %248

248:                                              ; preds = %239, %229
  %249 = icmp eq ptr %128, null
  br i1 %249, label %259, label %250

250:                                              ; preds = %248
  %251 = getelementptr inbounds %struct.__mpz_struct, ptr %128, i64 0, i32 1
  %252 = load i32, ptr %251, align 4, !tbaa !85
  %253 = load i32, ptr %92, align 4, !tbaa !85
  store i32 %253, ptr %251, align 4, !tbaa !85
  store i32 %252, ptr %92, align 4, !tbaa !85
  %254 = load i32, ptr %128, align 8, !tbaa !83
  %255 = load i32, ptr %10, align 16, !tbaa !83
  store i32 %255, ptr %128, align 8, !tbaa !83
  store i32 %254, ptr %10, align 16, !tbaa !83
  %256 = getelementptr inbounds %struct.__mpz_struct, ptr %128, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !86
  %258 = load ptr, ptr %95, align 8, !tbaa !86
  store ptr %258, ptr %256, align 8, !tbaa !86
  store ptr %257, ptr %95, align 8, !tbaa !86
  br label %259

259:                                              ; preds = %250, %248
  %260 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %261 = load ptr, ptr %79, align 8, !tbaa !86
  call void %260(ptr noundef %261, i64 noundef 0) #31
  %262 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %263 = load ptr, ptr %83, align 8, !tbaa !86
  call void %262(ptr noundef %263, i64 noundef 0) #31
  %264 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %265 = load ptr, ptr %87, align 8, !tbaa !86
  call void %264(ptr noundef %265, i64 noundef 0) #31
  %266 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %267 = load ptr, ptr %91, align 8, !tbaa !86
  call void %266(ptr noundef %267, i64 noundef 0) #31
  %268 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %269 = load ptr, ptr %95, align 8, !tbaa !86
  call void %268(ptr noundef %269, i64 noundef 0) #31
  %270 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %271 = load ptr, ptr %99, align 8, !tbaa !86
  call void %270(ptr noundef %271, i64 noundef 0) #31
  br label %272

272:                                              ; preds = %43, %42, %39, %71, %73, %32, %259
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #31
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_setbit(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = tail call i32 @mpz_tstbit(ptr noundef %0, i64 noundef %1), !range !94
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call fastcc void @mpz_abs_add_bit(ptr noundef %0, i64 noundef %1)
  br label %11

10:                                               ; preds = %5
  tail call fastcc void @mpz_abs_sub_bit(ptr noundef %0, i64 noundef %1)
  br label %11

11:                                               ; preds = %9, %10, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_lcm(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !85
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !85
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %13, align 4, !tbaa !85
  br label %25

14:                                               ; preds = %8
  store i32 1, ptr %4, align 16, !tbaa !83
  %15 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 0, ptr %15, align 4, !tbaa !85
  %16 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 8) #31
  %18 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !86
  call void @mpz_gcd(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2)
  %19 = call fastcc i32 @mpz_div_qr(ptr noundef nonnull %4, ptr noundef null, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 2), !range !94
  call void @mpz_mul(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2)
  %20 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %21 = load ptr, ptr %18, align 8, !tbaa !86
  call void %20(ptr noundef %21, i64 noundef 0) #31
  %22 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !85
  %24 = call i32 @llvm.abs.i32(i32 %23, i1 true)
  store i32 %24, ptr %22, align 4, !tbaa !85
  br label %25

25:                                               ; preds = %14, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_lcm_ui(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %3
  %10 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %10, align 4, !tbaa !85
  br label %17

11:                                               ; preds = %5
  %12 = tail call i64 @mpz_gcd_ui(ptr noundef null, ptr noundef %1, i64 noundef %2)
  %13 = udiv i64 %2, %12
  tail call void @mpz_mul_ui(ptr noundef %0, ptr noundef %1, i64 noundef %13)
  %14 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !85
  %16 = tail call i32 @llvm.abs.i32(i32 %15, i1 true)
  store i32 %16, ptr %14, align 4, !tbaa !85
  br label %17

17:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @mpz_invert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #31
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %61, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !85
  %12 = tail call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = icmp eq i32 %12, 1
  br i1 %15, label %16, label %61

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = load i64, ptr %18, align 8, !tbaa !39
  %20 = icmp ult i64 %19, 2
  br i1 %20, label %61, label %21

21:                                               ; preds = %9, %16
  store i32 1, ptr %4, align 16, !tbaa !83
  %22 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 0, ptr %22, align 4, !tbaa !85
  %23 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %24 = tail call ptr %23(i64 noundef 8) #31
  %25 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !86
  store i32 1, ptr %5, align 16, !tbaa !83
  %26 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 1
  store i32 0, ptr %26, align 4, !tbaa !85
  %27 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %28 = tail call ptr %27(i64 noundef 8) #31
  %29 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !86
  call void @mpz_gcdext(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef %1, ptr noundef %2)
  %30 = load i32, ptr %22, align 4, !tbaa !85
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load ptr, ptr %25, align 8, !tbaa !86
  %34 = load i64, ptr %33, align 8, !tbaa !39
  %35 = icmp eq i64 %34, 1
  br label %36

36:                                               ; preds = %32, %21
  %37 = phi i1 [ false, %21 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  br i1 %37, label %39, label %56

39:                                               ; preds = %36
  %40 = load i32, ptr %26, align 4, !tbaa !85
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, ptr %10, align 4, !tbaa !85
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void @mpz_add(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %2)
  br label %47

46:                                               ; preds = %42
  call void @mpz_sub(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %2)
  br label %47

47:                                               ; preds = %45, %46, %39
  %48 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !85
  %50 = load i32, ptr %26, align 4, !tbaa !85
  store i32 %50, ptr %48, align 4, !tbaa !85
  store i32 %49, ptr %26, align 4, !tbaa !85
  %51 = load i32, ptr %0, align 8, !tbaa !83
  %52 = load i32, ptr %5, align 16, !tbaa !83
  store i32 %52, ptr %0, align 8, !tbaa !83
  store i32 %51, ptr %5, align 16, !tbaa !83
  %53 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !86
  %55 = load ptr, ptr %29, align 8, !tbaa !86
  store ptr %55, ptr %53, align 8, !tbaa !86
  store ptr %54, ptr %29, align 8, !tbaa !86
  br label %56

56:                                               ; preds = %47, %36
  %57 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %58 = load ptr, ptr %25, align 8, !tbaa !86
  call void %57(ptr noundef %58, i64 noundef 0) #31
  %59 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %60 = load ptr, ptr %29, align 8, !tbaa !86
  call void %59(ptr noundef %60, i64 noundef 0) #31
  br label %61

61:                                               ; preds = %14, %3, %16, %56
  %62 = phi i32 [ %38, %56 ], [ 0, %16 ], [ 0, %3 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  ret i32 %62
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_pow_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  store i32 1, ptr %4, align 16, !tbaa !83
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 4, !tbaa !85
  %6 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %7 = tail call ptr %6(i64 noundef 8) #31
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !86
  store i32 1, ptr %5, align 4, !tbaa !85
  store i64 1, ptr %7, align 8, !tbaa !39
  br label %9

9:                                                ; preds = %14, %3
  %10 = phi i64 [ -9223372036854775808, %3 ], [ %15, %14 ]
  call void @mpz_mul(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %4)
  %11 = and i64 %10, %2
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  call void @mpz_mul(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %1)
  br label %14

14:                                               ; preds = %9, %13
  %15 = lshr i64 %10, 1
  %16 = icmp ult i64 %10, 2
  br i1 %16, label %17, label %9, !llvm.loop !109

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !85
  %20 = load i32, ptr %5, align 4, !tbaa !85
  store i32 %20, ptr %18, align 4, !tbaa !85
  store i32 %19, ptr %5, align 4, !tbaa !85
  %21 = load i32, ptr %0, align 8, !tbaa !83
  %22 = load i32, ptr %4, align 16, !tbaa !83
  store i32 %22, ptr %0, align 8, !tbaa !83
  store i32 %21, ptr %4, align 16, !tbaa !83
  %23 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !86
  %25 = load ptr, ptr %8, align 8, !tbaa !86
  store ptr %25, ptr %23, align 8, !tbaa !86
  store ptr %24, ptr %8, align 8, !tbaa !86
  %26 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  tail call void %26(ptr noundef %24, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_ui_pow_ui(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  store i32 1, ptr %4, align 16, !tbaa !83
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 4, !tbaa !85
  %6 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %7 = tail call ptr %6(i64 noundef 8) #31
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !86
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 1, ptr %5, align 4, !tbaa !85
  store i64 %1, ptr %7, align 8, !tbaa !39
  br label %12

11:                                               ; preds = %3
  store i32 0, ptr %5, align 4, !tbaa !85
  br label %12

12:                                               ; preds = %10, %11
  call void @mpz_pow_ui(ptr noundef %0, ptr noundef nonnull %4, i64 noundef %2)
  %13 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  tail call void %13(ptr noundef %7, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_powm(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #2 !prof !34 {
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  %7 = alloca %struct.gmp_div_inverse, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #31
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !85
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !85
  %14 = tail call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = zext nneg i32 %14 to i64
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load ptr, ptr @stderr, align 8, !tbaa !35
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str) #28
  tail call void @abort() #29
  unreachable

20:                                               ; preds = %4
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 1, ptr %23, align 4, !tbaa !85
  %24 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  store i64 1, ptr %25, align 8, !tbaa !39
  br label %241

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !86
  call fastcc void @mpn_div_qr_invert(ptr noundef nonnull %7, ptr noundef %28, i64 noundef %15)
  %29 = load i32, ptr %7, align 8, !tbaa !71
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %26
  store i32 0, ptr %7, align 8, !tbaa !71
  %32 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %33 = shl nuw nsw i64 %15, 3
  %34 = tail call ptr %32(i64 noundef %33) #31
  %35 = getelementptr inbounds i64, ptr %28, i64 %15
  %36 = getelementptr inbounds i64, ptr %34, i64 %15
  %37 = zext nneg i32 %29 to i64
  %38 = sub i32 64, %29
  %39 = getelementptr inbounds i64, ptr %35, i64 -1
  %40 = load i64, ptr %39, align 8, !tbaa !39
  %41 = zext nneg i32 %38 to i64
  %42 = shl i64 %40, %37
  %43 = add nsw i64 %15, -1
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %31, %45
  %46 = phi i64 [ %56, %45 ], [ %43, %31 ]
  %47 = phi i64 [ %55, %45 ], [ %42, %31 ]
  %48 = phi ptr [ %54, %45 ], [ %36, %31 ]
  %49 = phi ptr [ %50, %45 ], [ %39, %31 ]
  %50 = getelementptr inbounds i64, ptr %49, i64 -1
  %51 = load i64, ptr %50, align 8, !tbaa !39
  %52 = lshr i64 %51, %41
  %53 = or i64 %52, %47
  %54 = getelementptr inbounds i64, ptr %48, i64 -1
  store i64 %53, ptr %54, align 8, !tbaa !39
  %55 = shl i64 %51, %37
  %56 = add nsw i64 %46, -1
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %45, !llvm.loop !54

58:                                               ; preds = %45, %31
  %59 = phi ptr [ %36, %31 ], [ %54, %45 ]
  %60 = phi i64 [ %42, %31 ], [ %55, %45 ]
  %61 = getelementptr inbounds i64, ptr %59, i64 -1
  store i64 %60, ptr %61, align 8, !tbaa !39
  br label %62

62:                                               ; preds = %58, %26
  %63 = phi ptr [ %34, %58 ], [ null, %26 ]
  %64 = phi ptr [ %34, %58 ], [ %28, %26 ]
  store i32 1, ptr %6, align 16, !tbaa !83
  %65 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 1
  store i32 0, ptr %65, align 4, !tbaa !85
  %66 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %67 = tail call ptr %66(i64 noundef 8) #31
  %68 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 2
  store ptr %67, ptr %68, align 8, !tbaa !86
  %69 = load i32, ptr %8, align 4, !tbaa !85
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = call i32 @mpz_invert(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %3), !range !94
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %167

74:                                               ; preds = %71
  %75 = load ptr, ptr @stderr, align 8, !tbaa !35
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #28
  tail call void @abort() #29
  unreachable

77:                                               ; preds = %62
  %78 = icmp eq ptr %6, %1
  br i1 %78, label %80, label %79

79:                                               ; preds = %77
  call void @mpz_set(ptr noundef nonnull %6, ptr noundef %1)
  br label %80

80:                                               ; preds = %77, %79
  %81 = load i32, ptr %65, align 4, !tbaa !85
  %82 = call i32 @llvm.abs.i32(i32 %81, i1 true)
  store i32 %82, ptr %65, align 4, !tbaa !85
  %83 = zext nneg i32 %82 to i64
  %84 = icmp ult i32 %82, %14
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %68, align 8, !tbaa !86
  call fastcc void @mpn_div_qr_preinv(ptr noundef null, ptr noundef %86, i64 noundef %83, ptr noundef %64, i64 noundef %15, ptr noundef nonnull %7)
  br label %87

87:                                               ; preds = %85, %80
  %88 = phi i64 [ %15, %85 ], [ %83, %80 ]
  %89 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !85
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %151

92:                                               ; preds = %87
  %93 = load i32, ptr %6, align 16, !tbaa !83
  %94 = icmp sgt i32 %14, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = call i64 @llvm.smax.i64(i64 %15, i64 1)
  %97 = load ptr, ptr %68, align 8, !tbaa !86
  %98 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %99 = shl nuw nsw i64 %96, 3
  %100 = call ptr %98(ptr noundef %97, i64 noundef 0, i64 noundef %99) #31
  store ptr %100, ptr %68, align 8, !tbaa !86
  %101 = trunc i64 %96 to i32
  store i32 %101, ptr %6, align 16, !tbaa !83
  %102 = load i32, ptr %65, align 4, !tbaa !85
  %103 = call i32 @llvm.abs.i32(i32 %102, i1 true)
  %104 = zext nneg i32 %103 to i64
  %105 = icmp ult i64 %96, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  store i32 0, ptr %65, align 4, !tbaa !85
  br label %109

107:                                              ; preds = %92
  %108 = load ptr, ptr %68, align 8, !tbaa !86
  br label %109

109:                                              ; preds = %106, %95, %107
  %110 = phi ptr [ %108, %107 ], [ %100, %95 ], [ %100, %106 ]
  %111 = icmp eq i64 %88, 0
  br i1 %111, label %132, label %112

112:                                              ; preds = %109
  %113 = call i32 @llvm.abs.i32(i32 %13, i1 false)
  %114 = call i32 @llvm.umin.i32(i32 %82, i32 %113)
  %115 = zext nneg i32 %114 to i64
  br label %116

116:                                              ; preds = %112, %116
  %117 = phi i64 [ %130, %116 ], [ 0, %112 ]
  %118 = phi i64 [ %128, %116 ], [ 0, %112 ]
  %119 = getelementptr inbounds i64, ptr %64, i64 %117
  %120 = load i64, ptr %119, align 8, !tbaa !39
  %121 = getelementptr inbounds i64, ptr %110, i64 %117
  %122 = load i64, ptr %121, align 8, !tbaa !39
  %123 = add i64 %122, %118
  %124 = icmp ult i64 %123, %118
  %125 = zext i1 %124 to i64
  %126 = icmp ult i64 %120, %123
  %127 = zext i1 %126 to i64
  %128 = add nuw nsw i64 %125, %127
  %129 = sub i64 %120, %123
  store i64 %129, ptr %121, align 8, !tbaa !39
  %130 = add nuw nsw i64 %117, 1
  %131 = icmp eq i64 %130, %115
  br i1 %131, label %132, label %116, !llvm.loop !49

132:                                              ; preds = %116, %109
  %133 = phi i64 [ 0, %109 ], [ %128, %116 ]
  %134 = icmp ult i64 %88, %15
  br i1 %134, label %135, label %151

135:                                              ; preds = %132
  %136 = getelementptr inbounds i64, ptr %110, i64 %88
  %137 = getelementptr inbounds i64, ptr %64, i64 %88
  %138 = sub nsw i64 %15, %88
  %139 = call i64 @llvm.smax.i64(i64 %138, i64 1)
  br label %140

140:                                              ; preds = %140, %135
  %141 = phi i64 [ 0, %135 ], [ %149, %140 ]
  %142 = phi i64 [ %133, %135 ], [ %146, %140 ]
  %143 = getelementptr inbounds i64, ptr %137, i64 %141
  %144 = load i64, ptr %143, align 8, !tbaa !39
  %145 = icmp ult i64 %144, %142
  %146 = zext i1 %145 to i64
  %147 = sub i64 %144, %142
  %148 = getelementptr inbounds i64, ptr %136, i64 %141
  store i64 %147, ptr %148, align 8, !tbaa !39
  %149 = add nuw nsw i64 %141, 1
  %150 = icmp eq i64 %149, %139
  br i1 %150, label %151, label %140, !llvm.loop !48

151:                                              ; preds = %140, %132, %87
  %152 = phi i64 [ %88, %87 ], [ %15, %132 ], [ %15, %140 ]
  %153 = load ptr, ptr %68, align 8, !tbaa !86
  %154 = getelementptr i64, ptr %153, i64 -1
  %155 = icmp sgt i64 %152, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %151, %161
  %157 = phi i64 [ %162, %161 ], [ %152, %151 ]
  %158 = getelementptr i64, ptr %154, i64 %157
  %159 = load i64, ptr %158, align 8, !tbaa !39
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = add nsw i64 %157, -1
  %163 = icmp sgt i64 %157, 1
  br i1 %163, label %156, label %164, !llvm.loop !79

164:                                              ; preds = %156, %161, %151
  %165 = phi i64 [ %152, %151 ], [ %157, %156 ], [ 0, %161 ]
  %166 = trunc i64 %165 to i32
  store i32 %166, ptr %65, align 4, !tbaa !85
  br label %167

167:                                              ; preds = %71, %164
  store i32 1, ptr %5, align 16, !tbaa !83
  %168 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 1
  store i32 0, ptr %168, align 4, !tbaa !85
  %169 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %170 = call ptr %169(i64 noundef 8) #31
  %171 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 2
  store ptr %170, ptr %171, align 8, !tbaa !86
  store i32 1, ptr %168, align 4, !tbaa !85
  store i64 1, ptr %170, align 8, !tbaa !39
  %172 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  br label %173

173:                                              ; preds = %167, %205
  %174 = phi i64 [ %11, %167 ], [ %175, %205 ]
  %175 = add nsw i64 %174, -1
  %176 = load ptr, ptr %172, align 8, !tbaa !86
  %177 = getelementptr inbounds i64, ptr %176, i64 %175
  %178 = load i64, ptr %177, align 8, !tbaa !39
  br label %179

179:                                              ; preds = %202, %173
  %180 = phi i64 [ -9223372036854775808, %173 ], [ %203, %202 ]
  call void @mpz_mul(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5)
  %181 = and i64 %180, %178
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  call void @mpz_mul(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %6)
  br label %184

184:                                              ; preds = %179, %183
  %185 = load i32, ptr %168, align 4, !tbaa !85
  %186 = icmp sgt i32 %185, %14
  br i1 %186, label %187, label %202

187:                                              ; preds = %184
  %188 = sext i32 %185 to i64
  %189 = load ptr, ptr %171, align 8, !tbaa !86
  call fastcc void @mpn_div_qr_preinv(ptr noundef null, ptr noundef %189, i64 noundef %188, ptr noundef %64, i64 noundef %15, ptr noundef nonnull %7)
  %190 = getelementptr i64, ptr %189, i64 -1
  br label %191

191:                                              ; preds = %187, %196
  %192 = phi i64 [ %15, %187 ], [ %197, %196 ]
  %193 = getelementptr i64, ptr %190, i64 %192
  %194 = load i64, ptr %193, align 8, !tbaa !39
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = add nsw i64 %192, -1
  %198 = icmp sgt i64 %192, 1
  br i1 %198, label %191, label %199, !llvm.loop !79

199:                                              ; preds = %196, %191
  %200 = phi i64 [ %197, %196 ], [ %192, %191 ]
  %201 = trunc i64 %200 to i32
  store i32 %201, ptr %168, align 4, !tbaa !85
  br label %202

202:                                              ; preds = %199, %184
  %203 = lshr i64 %180, 1
  %204 = icmp ult i64 %180, 2
  br i1 %204, label %205, label %179, !llvm.loop !110

205:                                              ; preds = %202
  %206 = icmp sgt i64 %174, 1
  br i1 %206, label %173, label %207, !llvm.loop !111

207:                                              ; preds = %205
  %208 = load i32, ptr %168, align 4, !tbaa !85
  %209 = icmp slt i32 %208, %14
  br i1 %209, label %225, label %210

210:                                              ; preds = %207
  store i32 %29, ptr %7, align 8, !tbaa !71
  %211 = load ptr, ptr %171, align 8, !tbaa !86
  %212 = sext i32 %208 to i64
  call fastcc void @mpn_div_qr_preinv(ptr noundef null, ptr noundef %211, i64 noundef %212, ptr noundef %64, i64 noundef %15, ptr noundef nonnull %7)
  %213 = getelementptr i64, ptr %211, i64 -1
  br label %214

214:                                              ; preds = %210, %219
  %215 = phi i64 [ %15, %210 ], [ %220, %219 ]
  %216 = getelementptr i64, ptr %213, i64 %215
  %217 = load i64, ptr %216, align 8, !tbaa !39
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = add nsw i64 %215, -1
  %221 = icmp sgt i64 %215, 1
  br i1 %221, label %214, label %222, !llvm.loop !79

222:                                              ; preds = %219, %214
  %223 = phi i64 [ %220, %219 ], [ %215, %214 ]
  %224 = trunc i64 %223 to i32
  store i32 %224, ptr %168, align 4, !tbaa !85
  br label %225

225:                                              ; preds = %222, %207
  %226 = icmp eq ptr %63, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %225
  %228 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  call void %228(ptr noundef nonnull %63, i64 noundef 0) #31
  br label %229

229:                                              ; preds = %227, %225
  %230 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !85
  %232 = load i32, ptr %168, align 4, !tbaa !85
  store i32 %232, ptr %230, align 4, !tbaa !85
  store i32 %231, ptr %168, align 4, !tbaa !85
  %233 = load i32, ptr %0, align 8, !tbaa !83
  %234 = load i32, ptr %5, align 16, !tbaa !83
  store i32 %234, ptr %0, align 8, !tbaa !83
  store i32 %233, ptr %5, align 16, !tbaa !83
  %235 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !86
  %237 = load ptr, ptr %171, align 8, !tbaa !86
  store ptr %237, ptr %235, align 8, !tbaa !86
  store ptr %236, ptr %171, align 8, !tbaa !86
  %238 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  call void %238(ptr noundef %236, i64 noundef 0) #31
  %239 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %240 = load ptr, ptr %68, align 8, !tbaa !86
  call void %239(ptr noundef %240, i64 noundef 0) #31
  br label %241

241:                                              ; preds = %229, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #31
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mpn_div_qr_invert(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #4 !prof !34 {
  switch i64 %2, label %66 [
    i64 1, label %4
    i64 2, label %29
  ]

4:                                                ; preds = %3
  %5 = load i64, ptr %1, align 8, !tbaa !39
  %6 = icmp ult i64 %5, 72057594037927936
  br i1 %6, label %11, label %7

7:                                                ; preds = %11, %4
  %8 = phi i64 [ %5, %4 ], [ %14, %11 ]
  %9 = phi i32 [ 0, %4 ], [ %15, %11 ]
  %10 = icmp sgt i64 %8, -1
  br i1 %10, label %17, label %23

11:                                               ; preds = %4, %11
  %12 = phi i32 [ %15, %11 ], [ 0, %4 ]
  %13 = phi i64 [ %14, %11 ], [ %5, %4 ]
  %14 = shl nuw i64 %13, 8
  %15 = add i32 %12, 8
  %16 = icmp ult i64 %13, 281474976710656
  br i1 %16, label %11, label %7, !llvm.loop !69

17:                                               ; preds = %7, %17
  %18 = phi i32 [ %21, %17 ], [ %9, %7 ]
  %19 = phi i64 [ %20, %17 ], [ %8, %7 ]
  %20 = shl nuw i64 %19, 1
  %21 = add i32 %18, 1
  %22 = icmp sgt i64 %20, -1
  br i1 %22, label %17, label %23, !llvm.loop !70

23:                                               ; preds = %17, %7
  %24 = phi i32 [ %9, %7 ], [ %21, %17 ]
  store i32 %24, ptr %0, align 8, !tbaa !71
  %25 = zext nneg i32 %24 to i64
  %26 = shl i64 %5, %25
  %27 = getelementptr inbounds %struct.gmp_div_inverse, ptr %0, i64 0, i32 1
  store i64 %26, ptr %27, align 8, !tbaa !73
  %28 = tail call i64 @mpn_invert_3by2(i64 noundef %26, i64 noundef 0)
  br label %109

29:                                               ; preds = %3
  %30 = getelementptr inbounds i64, ptr %1, i64 1
  %31 = load i64, ptr %30, align 8, !tbaa !39
  %32 = load i64, ptr %1, align 8, !tbaa !39
  %33 = icmp ult i64 %31, 72057594037927936
  br i1 %33, label %38, label %34

34:                                               ; preds = %38, %29
  %35 = phi i64 [ %31, %29 ], [ %41, %38 ]
  %36 = phi i32 [ 0, %29 ], [ %42, %38 ]
  %37 = icmp sgt i64 %35, -1
  br i1 %37, label %44, label %50

38:                                               ; preds = %29, %38
  %39 = phi i32 [ %42, %38 ], [ 0, %29 ]
  %40 = phi i64 [ %41, %38 ], [ %31, %29 ]
  %41 = shl nuw i64 %40, 8
  %42 = add i32 %39, 8
  %43 = icmp ult i64 %40, 281474976710656
  br i1 %43, label %38, label %34, !llvm.loop !112

44:                                               ; preds = %34, %44
  %45 = phi i32 [ %48, %44 ], [ %36, %34 ]
  %46 = phi i64 [ %47, %44 ], [ %35, %34 ]
  %47 = shl nuw i64 %46, 1
  %48 = add i32 %45, 1
  %49 = icmp sgt i64 %47, -1
  br i1 %49, label %44, label %50, !llvm.loop !113

50:                                               ; preds = %44, %34
  %51 = phi i32 [ %36, %34 ], [ %48, %44 ]
  store i32 %51, ptr %0, align 8, !tbaa !71
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = zext i32 %51 to i64
  %55 = shl i64 %31, %54
  %56 = sub nsw i64 64, %54
  %57 = lshr i64 %32, %56
  %58 = or i64 %57, %55
  %59 = shl i64 %32, %54
  br label %60

60:                                               ; preds = %50, %53
  %61 = phi i64 [ %59, %53 ], [ %32, %50 ]
  %62 = phi i64 [ %58, %53 ], [ %31, %50 ]
  %63 = getelementptr inbounds %struct.gmp_div_inverse, ptr %0, i64 0, i32 1
  store i64 %62, ptr %63, align 8, !tbaa !73
  %64 = getelementptr inbounds %struct.gmp_div_inverse, ptr %0, i64 0, i32 2
  store i64 %61, ptr %64, align 8, !tbaa !114
  %65 = tail call i64 @mpn_invert_3by2(i64 noundef %62, i64 noundef %61)
  br label %109

66:                                               ; preds = %3
  %67 = getelementptr i64, ptr %1, i64 %2
  %68 = getelementptr i64, ptr %67, i64 -1
  %69 = load i64, ptr %68, align 8, !tbaa !39
  %70 = getelementptr i64, ptr %67, i64 -2
  %71 = load i64, ptr %70, align 8, !tbaa !39
  %72 = icmp ult i64 %69, 72057594037927936
  br i1 %72, label %77, label %73

73:                                               ; preds = %77, %66
  %74 = phi i64 [ %69, %66 ], [ %80, %77 ]
  %75 = phi i32 [ 0, %66 ], [ %81, %77 ]
  %76 = icmp sgt i64 %74, -1
  br i1 %76, label %83, label %89

77:                                               ; preds = %66, %77
  %78 = phi i32 [ %81, %77 ], [ 0, %66 ]
  %79 = phi i64 [ %80, %77 ], [ %69, %66 ]
  %80 = shl nuw i64 %79, 8
  %81 = add i32 %78, 8
  %82 = icmp ult i64 %79, 281474976710656
  br i1 %82, label %77, label %73, !llvm.loop !115

83:                                               ; preds = %73, %83
  %84 = phi i32 [ %87, %83 ], [ %75, %73 ]
  %85 = phi i64 [ %86, %83 ], [ %74, %73 ]
  %86 = shl nuw i64 %85, 1
  %87 = add i32 %84, 1
  %88 = icmp sgt i64 %86, -1
  br i1 %88, label %83, label %89, !llvm.loop !116

89:                                               ; preds = %83, %73
  %90 = phi i32 [ %75, %73 ], [ %87, %83 ]
  store i32 %90, ptr %0, align 8, !tbaa !71
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %89
  %93 = zext i32 %90 to i64
  %94 = shl i64 %69, %93
  %95 = sub nsw i64 64, %93
  %96 = lshr i64 %71, %95
  %97 = or i64 %96, %94
  %98 = shl i64 %71, %93
  %99 = getelementptr i64, ptr %67, i64 -3
  %100 = load i64, ptr %99, align 8, !tbaa !39
  %101 = lshr i64 %100, %95
  %102 = or i64 %101, %98
  br label %103

103:                                              ; preds = %92, %89
  %104 = phi i64 [ %97, %92 ], [ %69, %89 ]
  %105 = phi i64 [ %102, %92 ], [ %71, %89 ]
  %106 = getelementptr inbounds %struct.gmp_div_inverse, ptr %0, i64 0, i32 1
  store i64 %104, ptr %106, align 8, !tbaa !73
  %107 = getelementptr inbounds %struct.gmp_div_inverse, ptr %0, i64 0, i32 2
  store i64 %105, ptr %107, align 8, !tbaa !114
  %108 = tail call i64 @mpn_invert_3by2(i64 noundef %104, i64 noundef %105)
  br label %109

109:                                              ; preds = %60, %103, %23
  %110 = phi i64 [ %65, %60 ], [ %108, %103 ], [ %28, %23 ]
  %111 = getelementptr inbounds %struct.gmp_div_inverse, ptr %0, i64 0, i32 3
  store i64 %110, ptr %111, align 8, !tbaa !74
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mpn_div_qr_preinv(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #2 !prof !34 {
  switch i64 %4, label %164 [
    i64 1, label %7
    i64 2, label %9
  ]

7:                                                ; preds = %6
  %8 = tail call fastcc i64 @mpn_div_qr_1_preinv(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %5)
  store i64 %8, ptr %1, align 8, !tbaa !39
  br label %218

9:                                                ; preds = %6
  %10 = load i32, ptr %5, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.gmp_div_inverse, ptr %5, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.gmp_div_inverse, ptr %5, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.gmp_div_inverse, ptr %5, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !74
  %17 = icmp eq i32 %10, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %9
  %19 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %20 = shl i64 %2, 3
  %21 = tail call ptr %19(i64 noundef %20) #31
  %22 = getelementptr inbounds i64, ptr %1, i64 %2
  %23 = getelementptr inbounds i64, ptr %21, i64 %2
  %24 = zext nneg i32 %10 to i64
  %25 = sub i32 64, %10
  %26 = getelementptr inbounds i64, ptr %22, i64 -1
  %27 = load i64, ptr %26, align 8, !tbaa !39
  %28 = zext i32 %25 to i64
  %29 = shl i64 %27, %24
  %30 = add nsw i64 %2, -1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %18, %32
  %33 = phi i64 [ %43, %32 ], [ %30, %18 ]
  %34 = phi i64 [ %42, %32 ], [ %29, %18 ]
  %35 = phi ptr [ %41, %32 ], [ %23, %18 ]
  %36 = phi ptr [ %37, %32 ], [ %26, %18 ]
  %37 = getelementptr inbounds i64, ptr %36, i64 -1
  %38 = load i64, ptr %37, align 8, !tbaa !39
  %39 = lshr i64 %38, %28
  %40 = or i64 %39, %34
  %41 = getelementptr inbounds i64, ptr %35, i64 -1
  store i64 %40, ptr %41, align 8, !tbaa !39
  %42 = shl i64 %38, %24
  %43 = add nsw i64 %33, -1
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %32, !llvm.loop !54

45:                                               ; preds = %32, %18
  %46 = phi ptr [ %23, %18 ], [ %41, %32 ]
  %47 = phi i64 [ %29, %18 ], [ %42, %32 ]
  %48 = lshr i64 %27, %28
  %49 = getelementptr inbounds i64, ptr %46, i64 -1
  store i64 %47, ptr %49, align 8, !tbaa !39
  br label %50

50:                                               ; preds = %45, %9
  %51 = phi ptr [ %21, %45 ], [ undef, %9 ]
  %52 = phi i64 [ %48, %45 ], [ 0, %9 ]
  %53 = phi ptr [ %21, %45 ], [ %1, %9 ]
  %54 = add nsw i64 %2, -1
  %55 = getelementptr inbounds i64, ptr %53, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !39
  %57 = add nsw i64 %2, -2
  %58 = lshr i64 %16, 32
  %59 = and i64 %16, 4294967295
  %60 = lshr i64 %14, 32
  %61 = and i64 %14, 4294967295
  %62 = icmp eq ptr %0, null
  br label %63

63:                                               ; preds = %148, %50
  %64 = phi i64 [ %56, %50 ], [ %144, %148 ]
  %65 = phi i64 [ %52, %50 ], [ %145, %148 ]
  %66 = phi i64 [ %57, %50 ], [ %149, %148 ]
  %67 = getelementptr inbounds i64, ptr %53, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !39
  %69 = lshr i64 %65, 32
  %70 = and i64 %65, 4294967295
  %71 = mul nuw i64 %70, %59
  %72 = mul nuw i64 %70, %58
  %73 = mul nuw i64 %69, %59
  %74 = mul nuw i64 %69, %58
  %75 = lshr i64 %71, 32
  %76 = add i64 %73, %72
  %77 = add i64 %76, %75
  %78 = icmp ult i64 %77, %73
  %79 = add nuw i64 %74, 4294967296
  %80 = select i1 %78, i64 %79, i64 %74
  %81 = lshr i64 %77, 32
  %82 = shl i64 %77, 32
  %83 = and i64 %71, 4294967295
  %84 = or disjoint i64 %82, %83
  %85 = add i64 %84, %64
  %86 = icmp ult i64 %85, %84
  %87 = zext i1 %86 to i64
  %88 = add i64 %81, %65
  %89 = add i64 %88, %80
  %90 = add i64 %89, %87
  %91 = sub i64 %68, %14
  %92 = xor i64 %90, -1
  %93 = mul i64 %12, %92
  %94 = icmp ult i64 %68, %14
  %95 = sext i1 %94 to i64
  %96 = lshr i64 %90, 32
  %97 = and i64 %90, 4294967295
  %98 = mul nuw i64 %97, %61
  %99 = mul nuw i64 %96, %61
  %100 = mul nuw i64 %97, %60
  %101 = mul nuw i64 %96, %60
  %102 = lshr i64 %98, 32
  %103 = add i64 %100, %99
  %104 = add i64 %103, %102
  %105 = icmp ult i64 %104, %100
  %106 = add nuw i64 %101, 4294967296
  %107 = select i1 %105, i64 %106, i64 %101
  %108 = lshr i64 %104, 32
  %109 = shl i64 %104, 32
  %110 = and i64 %98, 4294967295
  %111 = or disjoint i64 %109, %110
  %112 = sub i64 %91, %111
  %113 = icmp ult i64 %91, %111
  %114 = sext i1 %113 to i64
  %115 = add i64 %64, %95
  %116 = add i64 %115, %93
  %117 = add i64 %108, %107
  %118 = sub i64 %116, %117
  %119 = add i64 %118, %114
  %120 = add i64 %90, 1
  %121 = icmp uge i64 %119, %85
  %122 = sext i1 %121 to i64
  %123 = add i64 %120, %122
  %124 = and i64 %14, %122
  %125 = add i64 %124, %112
  %126 = and i64 %12, %122
  %127 = add i64 %126, %119
  %128 = icmp ult i64 %125, %112
  %129 = zext i1 %128 to i64
  %130 = add i64 %127, %129
  %131 = icmp ult i64 %130, %12
  br i1 %131, label %142, label %132

132:                                              ; preds = %63
  %133 = icmp ule i64 %130, %12
  %134 = icmp ult i64 %125, %14
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %142, label %136

136:                                              ; preds = %132
  %137 = add i64 %123, 1
  %138 = sub i64 %125, %14
  %139 = sext i1 %134 to i64
  %140 = sub i64 %139, %12
  %141 = add i64 %140, %130
  br label %142

142:                                              ; preds = %136, %132, %63
  %143 = phi i64 [ %137, %136 ], [ %123, %63 ], [ %123, %132 ]
  %144 = phi i64 [ %138, %136 ], [ %125, %63 ], [ %125, %132 ]
  %145 = phi i64 [ %141, %136 ], [ %130, %63 ], [ %130, %132 ]
  br i1 %62, label %148, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds i64, ptr %0, i64 %66
  store i64 %143, ptr %147, align 8, !tbaa !39
  br label %148

148:                                              ; preds = %142, %146
  %149 = add nsw i64 %66, -1
  %150 = icmp sgt i64 %66, 0
  br i1 %150, label %63, label %151, !llvm.loop !117

151:                                              ; preds = %148
  br i1 %17, label %160, label %152

152:                                              ; preds = %151
  %153 = zext i32 %10 to i64
  %154 = lshr i64 %144, %153
  %155 = sub nsw i64 64, %153
  %156 = shl i64 %145, %155
  %157 = or i64 %156, %154
  %158 = lshr i64 %145, %153
  %159 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  tail call void %159(ptr noundef %51, i64 noundef 0) #31
  br label %160

160:                                              ; preds = %151, %152
  %161 = phi i64 [ %157, %152 ], [ %144, %151 ]
  %162 = phi i64 [ %158, %152 ], [ %145, %151 ]
  %163 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %162, ptr %163, align 8, !tbaa !39
  store i64 %161, ptr %1, align 8, !tbaa !39
  br label %218

164:                                              ; preds = %6
  %165 = load i32, ptr %5, align 8, !tbaa !71
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %215, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds i64, ptr %1, i64 %2
  %169 = zext nneg i32 %165 to i64
  %170 = sub i32 64, %165
  %171 = getelementptr inbounds i64, ptr %168, i64 -1
  %172 = load i64, ptr %171, align 8, !tbaa !39
  %173 = zext i32 %170 to i64
  %174 = shl i64 %172, %169
  %175 = add nsw i64 %2, -1
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %190, label %177

177:                                              ; preds = %167, %177
  %178 = phi i64 [ %188, %177 ], [ %175, %167 ]
  %179 = phi i64 [ %187, %177 ], [ %174, %167 ]
  %180 = phi ptr [ %186, %177 ], [ %168, %167 ]
  %181 = phi ptr [ %182, %177 ], [ %171, %167 ]
  %182 = getelementptr inbounds i64, ptr %181, i64 -1
  %183 = load i64, ptr %182, align 8, !tbaa !39
  %184 = lshr i64 %183, %173
  %185 = or i64 %184, %179
  %186 = getelementptr inbounds i64, ptr %180, i64 -1
  store i64 %185, ptr %186, align 8, !tbaa !39
  %187 = shl i64 %183, %169
  %188 = add nsw i64 %178, -1
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %177, !llvm.loop !54

190:                                              ; preds = %177, %167
  %191 = phi ptr [ %168, %167 ], [ %186, %177 ]
  %192 = phi i64 [ %174, %167 ], [ %187, %177 ]
  %193 = lshr i64 %172, %173
  %194 = getelementptr inbounds i64, ptr %191, i64 -1
  store i64 %192, ptr %194, align 8, !tbaa !39
  %195 = getelementptr inbounds %struct.gmp_div_inverse, ptr %5, i64 0, i32 3
  %196 = load i64, ptr %195, align 8, !tbaa !74
  tail call fastcc void @mpn_div_qr_pi1(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %193, ptr noundef %3, i64 noundef %4, i64 noundef %196)
  %197 = load i64, ptr %1, align 8, !tbaa !39
  %198 = lshr i64 %197, %169
  %199 = add nsw i64 %4, -1
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %212, label %201

201:                                              ; preds = %190, %201
  %202 = phi i64 [ %210, %201 ], [ %199, %190 ]
  %203 = phi i64 [ %209, %201 ], [ %198, %190 ]
  %204 = phi ptr [ %205, %201 ], [ %1, %190 ]
  %205 = getelementptr i64, ptr %204, i64 1
  %206 = load i64, ptr %205, align 8, !tbaa !39
  %207 = shl i64 %206, %173
  %208 = or i64 %207, %203
  store i64 %208, ptr %204, align 8, !tbaa !39
  %209 = lshr i64 %206, %169
  %210 = add nsw i64 %202, -1
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %201, !llvm.loop !55

212:                                              ; preds = %201, %190
  %213 = phi ptr [ %1, %190 ], [ %205, %201 ]
  %214 = phi i64 [ %198, %190 ], [ %209, %201 ]
  store i64 %214, ptr %213, align 8, !tbaa !39
  br label %218

215:                                              ; preds = %164
  %216 = getelementptr inbounds %struct.gmp_div_inverse, ptr %5, i64 0, i32 3
  %217 = load i64, ptr %216, align 8, !tbaa !74
  tail call fastcc void @mpn_div_qr_pi1(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef 0, ptr noundef %3, i64 noundef %4, i64 noundef %217)
  br label %218

218:                                              ; preds = %212, %215, %160, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_powm_ui(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #2 !prof !34 {
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #31
  store i32 1, ptr %5, align 16, !tbaa !83
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !85
  %7 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %8 = tail call ptr %7(i64 noundef 8) #31
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !86
  %10 = icmp eq i64 %2, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  store i32 1, ptr %6, align 4, !tbaa !85
  store i64 %2, ptr %8, align 8, !tbaa !39
  br label %13

12:                                               ; preds = %4
  store i32 0, ptr %6, align 4, !tbaa !85
  br label %13

13:                                               ; preds = %11, %12
  call void @mpz_powm(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3)
  %14 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  tail call void %14(ptr noundef %8, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #31
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_rootrem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 !prof !34 {
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #31
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !85
  %10 = icmp slt i32 %9, 0
  %11 = lshr i32 %9, 31
  %12 = xor i64 %3, -1
  %13 = zext nneg i32 %11 to i64
  %14 = and i64 %13, %12
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr @stderr, align 8, !tbaa !35
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2) #28
  tail call void @abort() #29
  unreachable

19:                                               ; preds = %4
  %20 = icmp eq i64 %3, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load ptr, ptr @stderr, align 8, !tbaa !35
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3) #28
  tail call void @abort() #29
  unreachable

24:                                               ; preds = %19
  %25 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %26 = icmp ugt i32 %25, 1
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = icmp eq i32 %25, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = load i64, ptr %31, align 8, !tbaa !39
  %33 = icmp ult i64 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %27, %29
  %35 = icmp eq ptr %0, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  tail call void @mpz_set(ptr noundef nonnull %0, ptr noundef %2)
  br label %37

37:                                               ; preds = %36, %34
  %38 = icmp eq ptr %1, null
  br i1 %38, label %203, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  store i32 0, ptr %40, align 4, !tbaa !85
  br label %203

41:                                               ; preds = %24, %29
  store i32 1, ptr %6, align 16, !tbaa !83
  %42 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 1
  store i32 0, ptr %42, align 4, !tbaa !85
  %43 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %44 = tail call ptr %43(i64 noundef 8) #31
  %45 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !86
  %46 = load i32, ptr %8, align 4, !tbaa !85
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %79, label %48

48:                                               ; preds = %41
  %49 = tail call i32 @llvm.abs.i32(i32 %46, i1 true)
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !86
  %53 = add nsw i64 %50, -1
  %54 = shl nsw i64 %53, 6
  %55 = getelementptr inbounds i64, ptr %52, i64 %53
  %56 = load i64, ptr %55, align 8, !tbaa !39
  %57 = icmp ult i64 %56, 72057594037927936
  br i1 %57, label %62, label %58

58:                                               ; preds = %62, %48
  %59 = phi i64 [ %56, %48 ], [ %65, %62 ]
  %60 = phi i32 [ 0, %48 ], [ %66, %62 ]
  %61 = icmp sgt i64 %59, -1
  br i1 %61, label %68, label %74

62:                                               ; preds = %48, %62
  %63 = phi i32 [ %66, %62 ], [ 0, %48 ]
  %64 = phi i64 [ %65, %62 ], [ %56, %48 ]
  %65 = shl nuw i64 %64, 8
  %66 = add i32 %63, 8
  %67 = icmp ult i64 %64, 281474976710656
  br i1 %67, label %62, label %58, !llvm.loop !65

68:                                               ; preds = %58, %68
  %69 = phi i32 [ %72, %68 ], [ %60, %58 ]
  %70 = phi i64 [ %71, %68 ], [ %59, %58 ]
  %71 = shl nuw i64 %70, 1
  %72 = add i32 %69, 1
  %73 = icmp sgt i64 %71, -1
  br i1 %73, label %68, label %74, !llvm.loop !66

74:                                               ; preds = %68, %58
  %75 = phi i32 [ %60, %58 ], [ %72, %68 ]
  %76 = zext i32 %75 to i64
  %77 = add nsw i64 %54, 64
  %78 = sub nsw i64 %77, %76
  br label %79

79:                                               ; preds = %41, %74
  %80 = phi i64 [ 1, %41 ], [ %78, %74 ]
  %81 = udiv i64 %80, %3
  %82 = add i64 %81, 1
  %83 = icmp ne i64 %82, 0
  %84 = sext i1 %83 to i64
  %85 = add i64 %82, %84
  %86 = lshr i64 %85, 6
  %87 = add nuw nsw i64 %86, 1
  %88 = trunc i64 %87 to i32
  store i32 %88, ptr %5, align 16, !tbaa !83
  %89 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 1
  store i32 0, ptr %89, align 4, !tbaa !85
  %90 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %91 = shl nuw nsw i64 %87, 3
  %92 = tail call ptr %90(i64 noundef %91) #31
  %93 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 2
  store ptr %92, ptr %93, align 8, !tbaa !86
  call void @mpz_setbit(ptr noundef nonnull %5, i64 noundef %82)
  %94 = icmp eq i64 %3, 2
  br i1 %94, label %95, label %133

95:                                               ; preds = %79
  %96 = load i32, ptr %42, align 4, !tbaa !85
  %97 = load i32, ptr %6, align 16, !tbaa !83
  %98 = load ptr, ptr %45, align 8, !tbaa !86
  br label %99

99:                                               ; preds = %95, %130
  %100 = phi ptr [ %98, %95 ], [ %105, %130 ]
  %101 = phi i32 [ %97, %95 ], [ %104, %130 ]
  %102 = phi i32 [ %96, %95 ], [ %103, %130 ]
  %103 = load i32, ptr %89, align 4, !tbaa !85
  store i32 %103, ptr %42, align 4, !tbaa !85
  store i32 %102, ptr %89, align 4, !tbaa !85
  %104 = load i32, ptr %5, align 16, !tbaa !83
  store i32 %104, ptr %6, align 16, !tbaa !83
  store i32 %101, ptr %5, align 16, !tbaa !83
  %105 = load ptr, ptr %93, align 8, !tbaa !86
  store ptr %105, ptr %45, align 8, !tbaa !86
  store ptr %100, ptr %93, align 8, !tbaa !86
  %106 = call fastcc i32 @mpz_div_qr(ptr noundef nonnull %5, ptr noundef null, ptr noundef %2, ptr noundef nonnull %6, i32 noundef 2), !range !94
  call void @mpz_add(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %6)
  call fastcc void @mpz_div_q_2exp(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef 1, i32 noundef 2)
  %107 = load ptr, ptr %93, align 8, !tbaa !86
  %108 = load i32, ptr %89, align 4, !tbaa !85
  %109 = call i32 @llvm.abs.i32(i32 %108, i1 true)
  %110 = call i32 @llvm.abs.i32(i32 %103, i1 true)
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = zext nneg i32 %109 to i64
  br label %117

114:                                              ; preds = %99
  %115 = icmp ult i32 %109, %110
  %116 = select i1 %115, i32 -1, i32 1
  br label %130

117:                                              ; preds = %112, %120
  %118 = phi i64 [ %121, %120 ], [ %113, %112 ]
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = add nsw i64 %118, -1
  %122 = getelementptr inbounds i64, ptr %107, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !39
  %124 = getelementptr inbounds i64, ptr %105, i64 %121
  %125 = load i64, ptr %124, align 8, !tbaa !39
  %126 = icmp eq i64 %123, %125
  br i1 %126, label %117, label %127, !llvm.loop !45

127:                                              ; preds = %120
  %128 = icmp ugt i64 %123, %125
  %129 = select i1 %128, i32 1, i32 -1
  br label %130

130:                                              ; preds = %117, %114, %127
  %131 = phi i32 [ %116, %114 ], [ %129, %127 ], [ 0, %117 ]
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %99, label %184, !llvm.loop !118

133:                                              ; preds = %79
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #31
  store i32 1, ptr %7, align 16, !tbaa !83
  %134 = getelementptr inbounds %struct.__mpz_struct, ptr %7, i64 0, i32 1
  store i32 0, ptr %134, align 4, !tbaa !85
  %135 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %136 = tail call ptr %135(i64 noundef 8) #31
  %137 = getelementptr inbounds %struct.__mpz_struct, ptr %7, i64 0, i32 2
  store ptr %136, ptr %137, align 8, !tbaa !86
  br i1 %10, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, ptr %89, align 4, !tbaa !85
  %140 = sub nsw i32 0, %139
  store i32 %140, ptr %89, align 4, !tbaa !85
  br label %141

141:                                              ; preds = %138, %133
  %142 = add i64 %3, -1
  %143 = load i32, ptr %42, align 4, !tbaa !85
  %144 = load i32, ptr %6, align 16, !tbaa !83
  %145 = load ptr, ptr %45, align 8, !tbaa !86
  br label %146

146:                                              ; preds = %178, %141
  %147 = phi ptr [ %152, %178 ], [ %145, %141 ]
  %148 = phi i32 [ %151, %178 ], [ %144, %141 ]
  %149 = phi i32 [ %150, %178 ], [ %143, %141 ]
  %150 = load i32, ptr %89, align 4, !tbaa !85
  store i32 %150, ptr %42, align 4, !tbaa !85
  store i32 %149, ptr %89, align 4, !tbaa !85
  %151 = load i32, ptr %5, align 16, !tbaa !83
  store i32 %151, ptr %6, align 16, !tbaa !83
  store i32 %148, ptr %5, align 16, !tbaa !83
  %152 = load ptr, ptr %93, align 8, !tbaa !86
  store ptr %152, ptr %45, align 8, !tbaa !86
  store ptr %147, ptr %93, align 8, !tbaa !86
  call void @mpz_pow_ui(ptr noundef nonnull %5, ptr noundef nonnull %6, i64 noundef %142)
  %153 = call fastcc i32 @mpz_div_qr(ptr noundef nonnull %5, ptr noundef null, ptr noundef %2, ptr noundef nonnull %5, i32 noundef 2), !range !94
  call void @mpz_mul_ui(ptr noundef nonnull %7, ptr noundef nonnull %6, i64 noundef %142)
  call void @mpz_add(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %7)
  %154 = call fastcc i64 @mpz_div_qr_ui(ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %5, i64 noundef %3, i32 noundef 2)
  %155 = load ptr, ptr %93, align 8, !tbaa !86
  %156 = load i32, ptr %89, align 4, !tbaa !85
  %157 = call i32 @llvm.abs.i32(i32 %156, i1 true)
  %158 = call i32 @llvm.abs.i32(i32 %150, i1 true)
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %146
  %161 = zext nneg i32 %157 to i64
  br label %165

162:                                              ; preds = %146
  %163 = icmp ult i32 %157, %158
  %164 = select i1 %163, i32 -1, i32 1
  br label %178

165:                                              ; preds = %160, %168
  %166 = phi i64 [ %169, %168 ], [ %161, %160 ]
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = add nsw i64 %166, -1
  %170 = getelementptr inbounds i64, ptr %155, i64 %169
  %171 = load i64, ptr %170, align 8, !tbaa !39
  %172 = getelementptr inbounds i64, ptr %152, i64 %169
  %173 = load i64, ptr %172, align 8, !tbaa !39
  %174 = icmp eq i64 %171, %173
  br i1 %174, label %165, label %175, !llvm.loop !45

175:                                              ; preds = %168
  %176 = icmp ugt i64 %171, %173
  %177 = select i1 %176, i32 1, i32 -1
  br label %178

178:                                              ; preds = %165, %162, %175
  %179 = phi i32 [ %164, %162 ], [ %177, %175 ], [ 0, %165 ]
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %146, label %181, !llvm.loop !119

181:                                              ; preds = %178
  %182 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %183 = load ptr, ptr %137, align 8, !tbaa !86
  call void %182(ptr noundef %183, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #31
  br label %184

184:                                              ; preds = %130, %181
  %185 = icmp eq ptr %1, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %184
  call void @mpz_pow_ui(ptr noundef nonnull %5, ptr noundef nonnull %6, i64 noundef %3)
  call void @mpz_sub(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %5)
  br label %187

187:                                              ; preds = %186, %184
  %188 = icmp eq ptr %0, null
  br i1 %188, label %198, label %189

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %191 = load i32, ptr %190, align 4, !tbaa !85
  %192 = load i32, ptr %42, align 4, !tbaa !85
  store i32 %192, ptr %190, align 4, !tbaa !85
  store i32 %191, ptr %42, align 4, !tbaa !85
  %193 = load i32, ptr %0, align 8, !tbaa !83
  %194 = load i32, ptr %6, align 16, !tbaa !83
  store i32 %194, ptr %0, align 8, !tbaa !83
  store i32 %193, ptr %6, align 16, !tbaa !83
  %195 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !86
  %197 = load ptr, ptr %45, align 8, !tbaa !86
  store ptr %197, ptr %195, align 8, !tbaa !86
  store ptr %196, ptr %45, align 8, !tbaa !86
  br label %198

198:                                              ; preds = %189, %187
  %199 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %200 = load ptr, ptr %45, align 8, !tbaa !86
  call void %199(ptr noundef %200, i64 noundef 0) #31
  %201 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %202 = load ptr, ptr %93, align 8, !tbaa !86
  call void %201(ptr noundef %202, i64 noundef 0) #31
  br label %203

203:                                              ; preds = %37, %39, %198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #31
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpz_sizeinbase(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = alloca %struct.gmp_div_inverse, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %104, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = add nsw i64 %7, -1
  %13 = shl nsw i64 %12, 6
  %14 = getelementptr inbounds i64, ptr %11, i64 %12
  %15 = load i64, ptr %14, align 8, !tbaa !39
  %16 = icmp ult i64 %15, 72057594037927936
  br i1 %16, label %21, label %17

17:                                               ; preds = %21, %9
  %18 = phi i64 [ %15, %9 ], [ %24, %21 ]
  %19 = phi i32 [ 0, %9 ], [ %25, %21 ]
  %20 = icmp sgt i64 %18, -1
  br i1 %20, label %27, label %33

21:                                               ; preds = %9, %21
  %22 = phi i32 [ %25, %21 ], [ 0, %9 ]
  %23 = phi i64 [ %24, %21 ], [ %15, %9 ]
  %24 = shl nuw i64 %23, 8
  %25 = add i32 %22, 8
  %26 = icmp ult i64 %23, 281474976710656
  br i1 %26, label %21, label %17, !llvm.loop !65

27:                                               ; preds = %17, %27
  %28 = phi i32 [ %31, %27 ], [ %19, %17 ]
  %29 = phi i64 [ %30, %27 ], [ %18, %17 ]
  %30 = shl nuw i64 %29, 1
  %31 = add i32 %28, 1
  %32 = icmp sgt i64 %30, -1
  br i1 %32, label %27, label %33, !llvm.loop !66

33:                                               ; preds = %27, %17
  %34 = phi i32 [ %19, %17 ], [ %31, %27 ]
  %35 = zext i32 %34 to i64
  %36 = sub nsw i64 %13, %35
  %37 = add nsw i64 %36, 64
  switch i32 %1, label %50 [
    i32 2, label %104
    i32 4, label %38
    i32 8, label %41
    i32 16, label %44
    i32 32, label %47
  ]

38:                                               ; preds = %33
  %39 = add nsw i64 %36, 65
  %40 = lshr i64 %39, 1
  br label %104

41:                                               ; preds = %33
  %42 = add nsw i64 %36, 66
  %43 = udiv i64 %42, 3
  br label %104

44:                                               ; preds = %33
  %45 = add nsw i64 %36, 67
  %46 = lshr i64 %45, 2
  br label %104

47:                                               ; preds = %33
  %48 = add nsw i64 %36, 68
  %49 = udiv i64 %48, 5
  br label %104

50:                                               ; preds = %33
  %51 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %52 = shl nuw nsw i64 %7, 3
  %53 = tail call ptr %51(i64 noundef %52) #31
  %54 = tail call i32 @llvm.abs.i32(i32 %5, i1 false)
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 1)
  %56 = zext i32 %55 to i64
  br label %57

57:                                               ; preds = %50, %57
  %58 = phi i64 [ 0, %50 ], [ %62, %57 ]
  %59 = getelementptr inbounds i64, ptr %11, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !39
  %61 = getelementptr inbounds i64, ptr %53, i64 %58
  store i64 %60, ptr %61, align 8, !tbaa !39
  %62 = add nuw nsw i64 %58, 1
  %63 = icmp eq i64 %62, %56
  br i1 %63, label %64, label %57, !llvm.loop !41

64:                                               ; preds = %57
  %65 = sext i32 %1 to i64
  %66 = icmp sgt i32 %1, -1
  br i1 %66, label %71, label %67

67:                                               ; preds = %71, %64
  %68 = phi i64 [ %65, %64 ], [ %74, %71 ]
  %69 = phi i32 [ 0, %64 ], [ %75, %71 ]
  %70 = icmp sgt i64 %68, -1
  br i1 %70, label %77, label %83

71:                                               ; preds = %64, %71
  %72 = phi i32 [ %75, %71 ], [ 0, %64 ]
  %73 = phi i64 [ %74, %71 ], [ %65, %64 ]
  %74 = shl nuw i64 %73, 8
  %75 = add i32 %72, 8
  %76 = icmp ult i64 %73, 281474976710656
  br i1 %76, label %71, label %67, !llvm.loop !69

77:                                               ; preds = %67, %77
  %78 = phi i32 [ %81, %77 ], [ %69, %67 ]
  %79 = phi i64 [ %80, %77 ], [ %68, %67 ]
  %80 = shl nuw i64 %79, 1
  %81 = add i32 %78, 1
  %82 = icmp sgt i64 %80, -1
  br i1 %82, label %77, label %83, !llvm.loop !70

83:                                               ; preds = %77, %67
  %84 = phi i32 [ %69, %67 ], [ %81, %77 ]
  store i32 %84, ptr %3, align 8, !tbaa !71
  %85 = zext nneg i32 %84 to i64
  %86 = shl i64 %65, %85
  %87 = getelementptr inbounds %struct.gmp_div_inverse, ptr %3, i64 0, i32 1
  store i64 %86, ptr %87, align 8, !tbaa !73
  %88 = tail call i64 @mpn_invert_3by2(i64 noundef %86, i64 noundef 0)
  %89 = getelementptr inbounds %struct.gmp_div_inverse, ptr %3, i64 0, i32 3
  store i64 %88, ptr %89, align 8, !tbaa !74
  %90 = getelementptr i64, ptr %53, i64 -1
  br label %91

91:                                               ; preds = %91, %83
  %92 = phi i64 [ %7, %83 ], [ %100, %91 ]
  %93 = phi i64 [ 0, %83 ], [ %94, %91 ]
  %94 = add i64 %93, 1
  %95 = call fastcc i64 @mpn_div_qr_1_preinv(ptr noundef %53, ptr noundef %53, i64 noundef %92, ptr noundef nonnull %3)
  %96 = getelementptr i64, ptr %90, i64 %92
  %97 = load i64, ptr %96, align 8, !tbaa !39
  %98 = icmp eq i64 %97, 0
  %99 = sext i1 %98 to i64
  %100 = add i64 %92, %99
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %91, label %102, !llvm.loop !120

102:                                              ; preds = %91
  %103 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  tail call void %103(ptr noundef %53, i64 noundef 0) #31
  br label %104

104:                                              ; preds = %33, %2, %102, %47, %44, %41, %38
  %105 = phi i64 [ %94, %102 ], [ %49, %47 ], [ %46, %44 ], [ %43, %41 ], [ %40, %38 ], [ 1, %2 ], [ %37, %33 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  ret i64 %105
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @mpz_root(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  store i32 1, ptr %4, align 16, !tbaa !83
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 4, !tbaa !85
  %6 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %7 = tail call ptr %6(i64 noundef 8) #31
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !86
  call void @mpz_rootrem(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, i64 noundef %2)
  %9 = load i32, ptr %5, align 4, !tbaa !85
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %13 = load ptr, ptr %8, align 8, !tbaa !86
  call void %12(ptr noundef %13, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  ret i32 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_sqrtrem(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  tail call void @mpz_rootrem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef 2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_sqrt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  tail call void @mpz_rootrem(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef 2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @mpz_perfect_square_p(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = alloca [1 x %struct.__mpz_struct], align 16
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #31
  store i32 1, ptr %2, align 16, !tbaa !83
  %7 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !85
  %8 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %9 = tail call ptr %8(i64 noundef 8) #31
  %10 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !86
  call void @mpz_rootrem(ptr noundef null, ptr noundef nonnull %2, ptr noundef %0, i64 noundef 2)
  %11 = load i32, ptr %7, align 4, !tbaa !85
  %12 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %13 = load ptr, ptr %10, align 8, !tbaa !86
  call void %12(ptr noundef %13, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #31
  br label %14

14:                                               ; preds = %1, %6
  %15 = phi i32 [ %11, %6 ], [ %4, %1 ]
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @mpn_perfect_square_p(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = alloca [1 x %struct.__mpz_struct], align 16
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  store i32 0, ptr %4, align 16, !tbaa !83
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !86
  %6 = tail call i64 @llvm.abs.i64(i64 %1, i1 true)
  %7 = getelementptr i64, ptr %0, i64 -1
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2, %14
  %10 = phi i64 [ %15, %14 ], [ %6, %2 ]
  %11 = getelementptr i64, ptr %7, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !39
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = add nsw i64 %10, -1
  %16 = icmp sgt i64 %10, 1
  br i1 %16, label %9, label %17, !llvm.loop !79

17:                                               ; preds = %9, %14, %2
  %18 = phi i64 [ %6, %2 ], [ %10, %9 ], [ %15, %14 ]
  %19 = icmp slt i64 %1, 0
  %20 = sub nsw i64 0, %18
  %21 = select i1 %19, i64 %20, i64 %18
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #31
  store i32 1, ptr %3, align 16, !tbaa !83
  %24 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 1
  store i32 0, ptr %24, align 4, !tbaa !85
  %25 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %26 = tail call ptr %25(i64 noundef 8) #31
  %27 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !86
  call void @mpz_rootrem(ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef 2)
  %28 = load i32, ptr %24, align 4, !tbaa !85
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %32 = load ptr, ptr %27, align 8, !tbaa !86
  call void %31(ptr noundef %32, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  ret i32 %30
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @mpn_sqrtrem(ptr nocapture noundef writeonly %0, ptr noundef writeonly %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 !prof !34 {
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #31
  store i32 1, ptr %6, align 16, !tbaa !83
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 1
  store i32 0, ptr %8, align 4, !tbaa !85
  %9 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %10 = tail call ptr %9(i64 noundef 8) #31
  %11 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !86
  store i32 1, ptr %5, align 16, !tbaa !83
  %12 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 1
  store i32 0, ptr %12, align 4, !tbaa !85
  %13 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %14 = tail call ptr %13(i64 noundef 8) #31
  %15 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !86
  store i32 0, ptr %7, align 16, !tbaa !83
  %16 = getelementptr inbounds %struct.__mpz_struct, ptr %7, i64 0, i32 2
  store ptr %2, ptr %16, align 8, !tbaa !86
  %17 = tail call i64 @llvm.abs.i64(i64 %3, i1 true)
  %18 = getelementptr i64, ptr %2, i64 -1
  %19 = icmp eq i64 %3, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %4, %25
  %21 = phi i64 [ %26, %25 ], [ %17, %4 ]
  %22 = getelementptr i64, ptr %18, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !39
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = add nsw i64 %21, -1
  %27 = icmp sgt i64 %21, 1
  br i1 %27, label %20, label %28, !llvm.loop !79

28:                                               ; preds = %20, %25, %4
  %29 = phi i64 [ %17, %4 ], [ %21, %20 ], [ %26, %25 ]
  %30 = icmp slt i64 %3, 0
  %31 = sub nsw i64 0, %29
  %32 = select i1 %30, i64 %31, i64 %29
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.__mpz_struct, ptr %7, i64 0, i32 1
  store i32 %33, ptr %34, align 4, !tbaa !85
  call void @mpz_rootrem(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i64 noundef 2)
  %35 = load ptr, ptr %15, align 8, !tbaa !86
  %36 = load i32, ptr %12, align 4, !tbaa !85
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = zext nneg i32 %36 to i64
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ %42, %40 ], [ %39, %38 ]
  %42 = add nsw i64 %41, -1
  %43 = getelementptr inbounds i64, ptr %35, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !39
  %45 = getelementptr inbounds i64, ptr %0, i64 %42
  store i64 %44, ptr %45, align 8, !tbaa !39
  %46 = icmp sgt i64 %41, 1
  br i1 %46, label %40, label %47, !llvm.loop !44

47:                                               ; preds = %40, %28
  %48 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  call void %48(ptr noundef %35, i64 noundef 0) #31
  %49 = load i32, ptr %8, align 4, !tbaa !85
  %50 = sext i32 %49 to i64
  %51 = icmp eq ptr %1, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %11, align 8, !tbaa !86
  %54 = icmp sgt i32 %49, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52, %55
  %56 = phi i64 [ %57, %55 ], [ %50, %52 ]
  %57 = add nsw i64 %56, -1
  %58 = getelementptr inbounds i64, ptr %53, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !39
  %60 = getelementptr inbounds i64, ptr %1, i64 %57
  store i64 %59, ptr %60, align 8, !tbaa !39
  %61 = icmp sgt i64 %56, 1
  br i1 %61, label %55, label %62, !llvm.loop !44

62:                                               ; preds = %55, %52, %47
  %63 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %64 = load ptr, ptr %11, align 8, !tbaa !86
  call void %63(ptr noundef %64, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #31
  ret i64 %50
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_fac_ui(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = icmp eq i64 %1, 0
  %4 = zext i1 %3 to i64
  %5 = add i64 %4, %1
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  br i1 %6, label %11, label %8

8:                                                ; preds = %2
  store i32 1, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  store i64 %5, ptr %10, align 8, !tbaa !39
  br label %12

11:                                               ; preds = %2
  store i32 0, ptr %7, align 4, !tbaa !85
  br label %12

12:                                               ; preds = %8, %11
  %13 = icmp ugt i64 %1, 2
  br i1 %13, label %14, label %18

14:                                               ; preds = %12, %14
  %15 = phi i64 [ %16, %14 ], [ %1, %12 ]
  %16 = add i64 %15, -1
  tail call void @mpz_mul_ui(ptr noundef %0, ptr noundef %0, i64 noundef %16)
  %17 = icmp ugt i64 %16, 2
  br i1 %17, label %14, label %18, !llvm.loop !121

18:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_bin_uiui(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  %5 = icmp ugt i64 %2, %1
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  br i1 %5, label %10, label %7

7:                                                ; preds = %3
  store i32 1, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  store i64 1, ptr %9, align 8, !tbaa !39
  br label %11

10:                                               ; preds = %3
  store i32 0, ptr %6, align 4, !tbaa !85
  br label %11

11:                                               ; preds = %7, %10
  %12 = lshr i64 %1, 1
  %13 = icmp ult i64 %12, %2
  %14 = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %2)
  %15 = select i1 %13, i64 %14, i64 %2
  store i32 1, ptr %4, align 16, !tbaa !83
  %16 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 0, ptr %16, align 4, !tbaa !85
  %17 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %18 = tail call ptr %17(i64 noundef 8) #31
  %19 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !86
  %20 = icmp eq i64 %15, 0
  %21 = zext i1 %20 to i64
  %22 = add i64 %15, %21
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %11
  store i32 1, ptr %16, align 4, !tbaa !85
  store i64 %22, ptr %18, align 8, !tbaa !39
  br label %26

25:                                               ; preds = %11
  store i32 0, ptr %16, align 4, !tbaa !85
  br label %26

26:                                               ; preds = %25, %24
  %27 = icmp ugt i64 %15, 2
  br i1 %27, label %30, label %28

28:                                               ; preds = %30, %26
  %29 = icmp eq i64 %15, 0
  br i1 %29, label %40, label %34

30:                                               ; preds = %26, %30
  %31 = phi i64 [ %32, %30 ], [ %15, %26 ]
  %32 = add i64 %31, -1
  call void @mpz_mul_ui(ptr noundef nonnull %4, ptr noundef nonnull %4, i64 noundef %32)
  %33 = icmp ugt i64 %32, 2
  br i1 %33, label %30, label %28, !llvm.loop !121

34:                                               ; preds = %28, %34
  %35 = phi i64 [ %38, %34 ], [ %15, %28 ]
  %36 = phi i64 [ %37, %34 ], [ %1, %28 ]
  %37 = add i64 %36, -1
  tail call void @mpz_mul_ui(ptr noundef %0, ptr noundef %0, i64 noundef %36)
  %38 = add i64 %35, -1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %34, !llvm.loop !122

40:                                               ; preds = %34, %28
  %41 = call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef null, ptr noundef %0, ptr noundef nonnull %4, i32 noundef 2), !range !94
  %42 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %43 = load ptr, ptr %19, align 8, !tbaa !86
  tail call void %42(ptr noundef %43, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @mpz_probab_prime_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = alloca [1 x %struct.__mpz_struct], align 16
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #31
  %7 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !85
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = load i64, ptr %11, align 8, !tbaa !39
  %13 = and i64 %12, 1
  %14 = icmp eq i64 %13, 0
  %15 = select i1 %9, i1 true, i1 %14
  %16 = tail call i32 @llvm.abs.i32(i32 %8, i1 true)
  %17 = icmp ugt i32 %16, 1
  br i1 %15, label %18, label %24

18:                                               ; preds = %2
  %19 = icmp eq i32 %16, 1
  %20 = icmp eq i64 %12, 2
  %21 = select i1 %19, i1 %20, i1 false
  %22 = select i1 %21, i32 2, i32 0
  %23 = select i1 %17, i32 0, i32 %22
  br label %135

24:                                               ; preds = %2
  br i1 %17, label %34, label %25

25:                                               ; preds = %24
  %26 = icmp ne i32 %16, 1
  %27 = icmp ult i64 %12, 64
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = lshr i64 %12, 1
  %31 = lshr i64 3379140316, %30
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 2
  br label %135

34:                                               ; preds = %25, %24
  %35 = zext nneg i32 %16 to i64
  %36 = tail call fastcc i64 @mpn_div_qr_1(ptr noundef null, ptr noundef nonnull %11, i64 noundef %35, i64 noundef 3234846615)
  %37 = tail call fastcc i64 @mpn_gcd_11(i64 noundef %36, i64 noundef 3234846615)
  %38 = icmp eq i64 %37, 1
  br i1 %38, label %39, label %135

39:                                               ; preds = %34
  %40 = load i32, ptr %7, align 4, !tbaa !85
  %41 = tail call i32 @llvm.abs.i32(i32 %40, i1 true)
  %42 = icmp ugt i32 %41, 1
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = icmp eq i32 %41, 1
  br i1 %44, label %45, label %135

45:                                               ; preds = %43
  %46 = load ptr, ptr %10, align 8, !tbaa !86
  %47 = load i64, ptr %46, align 8, !tbaa !39
  %48 = icmp ult i64 %47, 961
  br i1 %48, label %135, label %49

49:                                               ; preds = %39, %45
  store i32 1, ptr %4, align 16, !tbaa !83
  %50 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 0, ptr %50, align 4, !tbaa !85
  %51 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %52 = tail call ptr %51(i64 noundef 8) #31
  %53 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !86
  store i32 1, ptr %5, align 16, !tbaa !83
  %54 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 1
  store i32 0, ptr %54, align 4, !tbaa !85
  %55 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %56 = tail call ptr %55(i64 noundef 8) #31
  %57 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 2
  store ptr %56, ptr %57, align 8, !tbaa !86
  store i32 1, ptr %6, align 16, !tbaa !83
  %58 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 1
  store i32 0, ptr %58, align 4, !tbaa !85
  %59 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %60 = tail call ptr %59(i64 noundef 8) #31
  %61 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 2
  store ptr %60, ptr %61, align 8, !tbaa !86
  %62 = call fastcc i64 @mpz_abs_sub_ui(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 1)
  %63 = trunc i64 %62 to i32
  store i32 %63, ptr %50, align 4, !tbaa !85
  %64 = call i64 @mpz_scan1(ptr noundef nonnull %4, i64 noundef 0)
  call fastcc void @mpz_div_q_2exp(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef %64, i32 noundef 2)
  %65 = icmp slt i32 %1, 1
  br i1 %65, label %127, label %66

66:                                               ; preds = %49
  %67 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 1
  %68 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 2
  %69 = zext nneg i32 %1 to i64
  store i32 1, ptr %58, align 4, !tbaa !85
  %70 = load ptr, ptr %61, align 8, !tbaa !86
  store i64 41, ptr %70, align 8, !tbaa !39
  %71 = call i32 @mpz_cmp(ptr noundef nonnull %6, ptr noundef nonnull %4), !range !98
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %127, label %80

73:                                               ; preds = %121
  %74 = add nuw nsw i64 %81, 2
  %75 = mul nuw nsw i64 %74, %124
  %76 = add nuw nsw i64 %75, 41
  store i32 1, ptr %58, align 4, !tbaa !85
  %77 = load ptr, ptr %61, align 8, !tbaa !86
  store i64 %76, ptr %77, align 8, !tbaa !39
  %78 = call i32 @mpz_cmp(ptr noundef nonnull %6, ptr noundef nonnull %4), !range !98
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %127, label %80, !llvm.loop !123

80:                                               ; preds = %66, %73
  %81 = phi i64 [ %124, %73 ], [ 0, %66 ]
  call void @mpz_powm(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %0)
  %82 = load i32, ptr %58, align 4, !tbaa !85
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load ptr, ptr %61, align 8, !tbaa !86
  %86 = load i64, ptr %85, align 8, !tbaa !39
  %87 = icmp eq i64 %86, 1
  br i1 %87, label %121, label %88

88:                                               ; preds = %84, %80
  %89 = call i32 @mpz_cmp(ptr noundef nonnull %6, ptr noundef nonnull %4), !range !98
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %121, label %91

91:                                               ; preds = %88, %118
  %92 = phi i64 [ %93, %118 ], [ %64, %88 ]
  %93 = add i64 %92, -1
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %121, label %95

95:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #31
  store i32 1, ptr %3, align 16, !tbaa !83
  store i32 0, ptr %67, align 4, !tbaa !85
  %96 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %97 = call ptr %96(i64 noundef 8) #31
  store ptr %97, ptr %68, align 8, !tbaa !86
  store i32 1, ptr %67, align 4, !tbaa !85
  store i64 2, ptr %97, align 8, !tbaa !39
  call void @mpz_powm(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %0)
  %98 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  call void %98(ptr noundef nonnull %97, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #31
  %99 = call i32 @mpz_cmp(ptr noundef nonnull %6, ptr noundef nonnull %4), !range !98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %95
  %102 = load i32, ptr %58, align 4, !tbaa !85
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %118, label %104

104:                                              ; preds = %101
  %105 = icmp slt i32 %102, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %104
  %107 = icmp eq i32 %102, 1
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = load ptr, ptr %61, align 8, !tbaa !86
  %110 = load i64, ptr %109, align 8, !tbaa !39
  br label %111

111:                                              ; preds = %108, %106
  %112 = phi i64 [ %110, %108 ], [ 0, %106 ]
  %113 = icmp ugt i64 %112, 1
  %114 = zext i1 %113 to i32
  %115 = icmp eq i64 %112, 0
  %116 = sext i1 %115 to i32
  %117 = add nsw i32 %116, %114
  br label %118

118:                                              ; preds = %111, %104, %101
  %119 = phi i32 [ %117, %111 ], [ 1, %101 ], [ -1, %104 ]
  %120 = icmp slt i32 %119, 1
  br i1 %120, label %121, label %91, !llvm.loop !124

121:                                              ; preds = %118, %91, %95, %84, %88
  %122 = phi i1 [ false, %88 ], [ false, %84 ], [ false, %95 ], [ true, %91 ], [ true, %118 ]
  %123 = phi i32 [ 1, %88 ], [ 1, %84 ], [ 1, %95 ], [ 0, %91 ], [ 0, %118 ]
  %124 = add nuw nsw i64 %81, 1
  %125 = icmp uge i64 %124, %69
  %126 = or i1 %122, %125
  br i1 %126, label %127, label %73, !llvm.loop !123

127:                                              ; preds = %73, %121, %66, %49
  %128 = phi i32 [ 1, %49 ], [ 1, %66 ], [ %123, %121 ], [ %123, %73 ]
  %129 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %130 = load ptr, ptr %53, align 8, !tbaa !86
  call void %129(ptr noundef %130, i64 noundef 0) #31
  %131 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %132 = load ptr, ptr %57, align 8, !tbaa !86
  call void %131(ptr noundef %132, i64 noundef 0) #31
  %133 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  %134 = load ptr, ptr %61, align 8, !tbaa !86
  call void %133(ptr noundef %134, i64 noundef 0) #31
  br label %135

135:                                              ; preds = %43, %45, %34, %127, %29, %18
  %136 = phi i32 [ %33, %29 ], [ %128, %127 ], [ %23, %18 ], [ 0, %34 ], [ 2, %45 ], [ 2, %43 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  ret i32 %136
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mpz_scan1(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %6 = zext i32 %5 to i64
  %7 = lshr i64 %1, 6
  %8 = icmp ult i64 %7, %6
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = icmp sgt i32 %4, -1
  %11 = select i1 %10, i64 -1, i64 %1
  br label %93

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = getelementptr inbounds i64, ptr %14, i64 %7
  %16 = load i64, ptr %15, align 8, !tbaa !39
  %17 = icmp eq i64 %1, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %12
  %19 = icmp slt i32 %4, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %18
  %21 = getelementptr i64, ptr %14, i64 -1
  %22 = icmp ult i64 %1, 64
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = tail call i64 @llvm.smin.i64(i64 %7, i64 1)
  %25 = add nsw i64 %24, -1
  br label %26

26:                                               ; preds = %23, %31
  %27 = phi i64 [ %32, %31 ], [ %7, %23 ]
  %28 = getelementptr i64, ptr %21, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !39
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = add nsw i64 %27, -1
  %33 = icmp sgt i64 %27, 1
  br i1 %33, label %26, label %34, !llvm.loop !79

34:                                               ; preds = %26, %31, %20
  %35 = phi i64 [ %7, %20 ], [ %27, %26 ], [ %25, %31 ]
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = xor i64 %16, -1
  %39 = add i64 %37, %38
  %40 = icmp uge i64 %39, %37
  %41 = sext i1 %40 to i64
  br label %42

42:                                               ; preds = %34, %18
  %43 = phi i64 [ %39, %34 ], [ %16, %18 ]
  %44 = phi i64 [ %41, %34 ], [ 0, %18 ]
  %45 = and i64 %1, 63
  %46 = shl nsw i64 -1, %45
  %47 = and i64 %43, %46
  br label %48

48:                                               ; preds = %42, %12
  %49 = phi i64 [ %47, %42 ], [ %16, %12 ]
  %50 = phi i64 [ %44, %42 ], [ 0, %12 ]
  %51 = icmp eq i64 %49, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %48, %60
  %53 = phi i64 [ %54, %60 ], [ %7, %48 ]
  %54 = add nuw nsw i64 %53, 1
  %55 = icmp eq i64 %54, %6
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = icmp eq i64 %50, 0
  %58 = shl nuw nsw i64 %6, 6
  %59 = select i1 %57, i64 -1, i64 %58
  br label %93

60:                                               ; preds = %52
  %61 = getelementptr inbounds i64, ptr %14, i64 %54
  %62 = load i64, ptr %61, align 8, !tbaa !39
  %63 = xor i64 %62, %50
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %52, label %65, !llvm.loop !56

65:                                               ; preds = %60, %48
  %66 = phi i64 [ %7, %48 ], [ %54, %60 ]
  %67 = phi i64 [ %49, %48 ], [ %63, %60 ]
  %68 = sub i64 0, %67
  %69 = and i64 %67, %68
  %70 = icmp ult i64 %69, 72057594037927936
  br i1 %70, label %75, label %71

71:                                               ; preds = %75, %65
  %72 = phi i64 [ %69, %65 ], [ %78, %75 ]
  %73 = phi i32 [ 0, %65 ], [ %79, %75 ]
  %74 = icmp sgt i64 %72, -1
  br i1 %74, label %81, label %87

75:                                               ; preds = %65, %75
  %76 = phi i32 [ %79, %75 ], [ 0, %65 ]
  %77 = phi i64 [ %78, %75 ], [ %69, %65 ]
  %78 = shl nuw i64 %77, 8
  %79 = add i32 %76, 8
  %80 = icmp ult i64 %77, 281474976710656
  br i1 %80, label %75, label %71, !llvm.loop !57

81:                                               ; preds = %71, %81
  %82 = phi i32 [ %85, %81 ], [ %73, %71 ]
  %83 = phi i64 [ %84, %81 ], [ %72, %71 ]
  %84 = shl nuw i64 %83, 1
  %85 = add i32 %82, 1
  %86 = icmp sgt i64 %84, -1
  br i1 %86, label %81, label %87, !llvm.loop !58

87:                                               ; preds = %81, %71
  %88 = phi i32 [ %73, %71 ], [ %85, %81 ]
  %89 = sub i32 63, %88
  %90 = shl i64 %66, 6
  %91 = zext i32 %89 to i64
  %92 = add i64 %90, %91
  br label %93

93:                                               ; preds = %87, %56, %9
  %94 = phi i64 [ %11, %9 ], [ %59, %56 ], [ %92, %87 ]
  ret i64 %94
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_tstbit(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %6 = zext i32 %5 to i64
  %7 = lshr i64 %1, 6
  %8 = icmp ult i64 %7, %6
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = lshr i32 %4, 31
  br label %40

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = getelementptr inbounds i64, ptr %13, i64 %7
  %15 = load i64, ptr %14, align 8, !tbaa !39
  %16 = and i64 %1, 63
  %17 = lshr i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 1
  %20 = icmp slt i32 %4, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %11
  %22 = icmp eq i64 %16, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %24, %21
  br label %30

24:                                               ; preds = %21
  %25 = sub nuw nsw i64 64, %16
  %26 = shl i64 %15, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %23, label %28

28:                                               ; preds = %24
  %29 = xor i32 %19, 1
  br label %40

30:                                               ; preds = %23, %33
  %31 = phi i64 [ %34, %33 ], [ %7, %23 ]
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = add nsw i64 %31, -1
  %35 = getelementptr inbounds i64, ptr %13, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !39
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %30, label %38, !llvm.loop !125

38:                                               ; preds = %33
  %39 = xor i32 %19, 1
  br label %40

40:                                               ; preds = %30, %11, %38, %28, %9
  %41 = phi i32 [ %10, %9 ], [ %29, %28 ], [ %39, %38 ], [ %19, %11 ], [ %19, %30 ]
  ret i32 %41
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mpz_abs_add_bit(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %6 = zext nneg i32 %5 to i64
  %7 = lshr i64 %1, 6
  %8 = and i64 %1, 63
  %9 = shl nuw i64 1, %8
  %10 = icmp ult i64 %7, %6
  br i1 %10, label %37, label %11

11:                                               ; preds = %2
  %12 = add nuw nsw i64 %7, 1
  %13 = load i32, ptr %0, align 8, !tbaa !83
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %7, %14
  %16 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br i1 %15, label %28, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %16, align 8, !tbaa !86
  %19 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %20 = shl nuw nsw i64 %12, 3
  %21 = tail call ptr %19(ptr noundef %18, i64 noundef 0, i64 noundef %20) #31
  store ptr %21, ptr %16, align 8, !tbaa !86
  %22 = trunc i64 %12 to i32
  store i32 %22, ptr %0, align 8, !tbaa !83
  %23 = load i32, ptr %3, align 4, !tbaa !85
  %24 = tail call i32 @llvm.abs.i32(i32 %23, i1 true)
  %25 = zext nneg i32 %24 to i64
  %26 = icmp ult i64 %12, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 0, ptr %3, align 4, !tbaa !85
  br label %28

28:                                               ; preds = %11, %27, %17
  %29 = load ptr, ptr %16, align 8, !tbaa !86
  %30 = getelementptr inbounds i64, ptr %29, i64 %7
  store i64 %9, ptr %30, align 8, !tbaa !39
  %31 = icmp ugt i64 %7, %6
  br i1 %31, label %32, label %71

32:                                               ; preds = %28
  %33 = shl nuw nsw i64 %6, 3
  %34 = getelementptr i8, ptr %29, i64 %33
  %35 = sub nsw i64 %7, %6
  %36 = shl nsw i64 %35, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %34, i8 0, i64 %36, i1 false), !tbaa !39
  br label %71

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !86
  %40 = getelementptr inbounds i64, ptr %39, i64 %7
  %41 = sub nsw i64 %6, %7
  %42 = tail call i64 @llvm.smax.i64(i64 %41, i64 1)
  br label %43

43:                                               ; preds = %43, %37
  %44 = phi i64 [ 0, %37 ], [ %51, %43 ]
  %45 = phi i64 [ %9, %37 ], [ %50, %43 ]
  %46 = getelementptr inbounds i64, ptr %40, i64 %44
  %47 = load i64, ptr %46, align 8, !tbaa !39
  %48 = add i64 %47, %45
  %49 = icmp ult i64 %48, %45
  %50 = zext i1 %49 to i64
  store i64 %48, ptr %46, align 8, !tbaa !39
  %51 = add nuw nsw i64 %44, 1
  %52 = icmp eq i64 %51, %42
  br i1 %52, label %53, label %43, !llvm.loop !46

53:                                               ; preds = %43
  br i1 %49, label %54, label %71

54:                                               ; preds = %53
  %55 = add nuw nsw i64 %6, 1
  %56 = load i32, ptr %0, align 8, !tbaa !83
  %57 = icmp slt i32 %5, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %60 = shl nuw nsw i64 %55, 3
  %61 = tail call ptr %59(ptr noundef %39, i64 noundef 0, i64 noundef %60) #31
  store ptr %61, ptr %38, align 8, !tbaa !86
  %62 = trunc i64 %55 to i32
  store i32 %62, ptr %0, align 8, !tbaa !83
  %63 = load i32, ptr %3, align 4, !tbaa !85
  %64 = tail call i32 @llvm.abs.i32(i32 %63, i1 true)
  %65 = zext nneg i32 %64 to i64
  %66 = icmp ult i64 %55, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 0, ptr %3, align 4, !tbaa !85
  br label %68

68:                                               ; preds = %54, %67, %58
  %69 = load ptr, ptr %38, align 8, !tbaa !86
  %70 = getelementptr inbounds i64, ptr %69, i64 %6
  store i64 %50, ptr %70, align 8, !tbaa !39
  br label %71

71:                                               ; preds = %32, %28, %53, %68
  %72 = phi i64 [ %55, %68 ], [ %6, %53 ], [ %12, %28 ], [ %12, %32 ]
  %73 = load i32, ptr %3, align 4, !tbaa !85
  %74 = icmp slt i32 %73, 0
  %75 = sub nsw i64 0, %72
  %76 = select i1 %74, i64 %75, i64 %72
  %77 = trunc i64 %76 to i32
  store i32 %77, ptr %3, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mpz_abs_sub_bit(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #8 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = lshr i64 %1, 6
  %10 = and i64 %1, 63
  %11 = shl nuw i64 1, %10
  %12 = getelementptr inbounds i64, ptr %8, i64 %9
  %13 = sub nsw i64 %6, %9
  %14 = tail call i64 @llvm.smax.i64(i64 %13, i64 1)
  br label %15

15:                                               ; preds = %15, %2
  %16 = phi i64 [ 0, %2 ], [ %23, %15 ]
  %17 = phi i64 [ %11, %2 ], [ %21, %15 ]
  %18 = getelementptr inbounds i64, ptr %12, i64 %16
  %19 = load i64, ptr %18, align 8, !tbaa !39
  %20 = icmp ult i64 %19, %17
  %21 = zext i1 %20 to i64
  %22 = sub i64 %19, %17
  store i64 %22, ptr %18, align 8, !tbaa !39
  %23 = add nuw nsw i64 %16, 1
  %24 = icmp eq i64 %23, %14
  br i1 %24, label %25, label %15, !llvm.loop !48

25:                                               ; preds = %15
  %26 = getelementptr i64, ptr %8, i64 %6
  %27 = getelementptr i64, ptr %26, i64 -1
  %28 = load i64, ptr %27, align 8, !tbaa !39
  %29 = icmp eq i64 %28, 0
  %30 = sext i1 %29 to i64
  %31 = add nsw i64 %30, %6
  %32 = icmp slt i32 %4, 0
  %33 = sub nsw i64 0, %31
  %34 = select i1 %32, i64 %33, i64 %31
  %35 = trunc i64 %34 to i32
  store i32 %35, ptr %3, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_clrbit(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = tail call i32 @mpz_tstbit(ptr noundef %0, i64 noundef %1), !range !94
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call fastcc void @mpz_abs_sub_bit(ptr noundef %0, i64 noundef %1)
  br label %11

10:                                               ; preds = %5
  tail call fastcc void @mpz_abs_add_bit(ptr noundef %0, i64 noundef %1)
  br label %11

11:                                               ; preds = %9, %10, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_combit(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = tail call i32 @mpz_tstbit(ptr noundef %0, i64 noundef %1), !range !94
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = lshr i32 %5, 31
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call fastcc void @mpz_abs_sub_bit(ptr noundef %0, i64 noundef %1)
  br label %10

9:                                                ; preds = %2
  tail call fastcc void @mpz_abs_add_bit(ptr noundef %0, i64 noundef %1)
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_com(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @mpz_set(ptr noundef %0, ptr noundef %1)
  br label %5

5:                                                ; preds = %2, %4
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = sub nsw i32 0, %7
  store i32 %8, ptr %6, align 4, !tbaa !85
  tail call void @mpz_sub_ui(ptr noundef %0, ptr noundef %0, i64 noundef 1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_and(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !85
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = zext nneg i32 %10 to i64
  %12 = icmp ult i32 %6, %10
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %3
  %15 = phi i64 [ %7, %13 ], [ %11, %3 ]
  %16 = phi i64 [ %11, %13 ], [ %7, %3 ]
  %17 = phi ptr [ %1, %13 ], [ %2, %3 ]
  %18 = phi ptr [ %2, %13 ], [ %1, %3 ]
  %19 = icmp eq i64 %15, 0
  br i1 %19, label %131, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %18, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !85
  %23 = lshr i32 %22, 31
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds %struct.__mpz_struct, ptr %17, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !85
  %27 = lshr i32 %26, 31
  %28 = zext nneg i32 %27 to i64
  %29 = and i64 %28, %24
  %30 = sub nsw i64 0, %24
  %31 = sub nsw i64 0, %28
  %32 = sub nsw i64 0, %29
  %33 = icmp slt i32 %26, 0
  %34 = select i1 %33, i64 %16, i64 %15
  %35 = add nuw nsw i64 %29, %34
  %36 = load i32, ptr %0, align 8, !tbaa !83
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %20
  %40 = tail call i64 @llvm.smax.i64(i64 %35, i64 1)
  %41 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !86
  %43 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %44 = shl nuw nsw i64 %40, 3
  %45 = tail call ptr %43(ptr noundef %42, i64 noundef 0, i64 noundef %44) #31
  store ptr %45, ptr %41, align 8, !tbaa !86
  %46 = trunc i64 %40 to i32
  store i32 %46, ptr %0, align 8, !tbaa !83
  %47 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !85
  %49 = tail call i32 @llvm.abs.i32(i32 %48, i1 true)
  %50 = zext nneg i32 %49 to i64
  %51 = icmp ult i64 %40, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  store i32 0, ptr %47, align 4, !tbaa !85
  br label %55

53:                                               ; preds = %20
  %54 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %55

55:                                               ; preds = %52, %39, %53
  %56 = phi ptr [ %54, %53 ], [ %41, %39 ], [ %41, %52 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !86
  %58 = getelementptr inbounds %struct.__mpz_struct, ptr %18, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !86
  %60 = getelementptr inbounds %struct.__mpz_struct, ptr %17, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !86
  %62 = tail call i64 @llvm.umax.i64(i64 %15, i64 1)
  br label %63

63:                                               ; preds = %63, %55
  %64 = phi i64 [ 0, %55 ], [ %86, %63 ]
  %65 = phi i64 [ %24, %55 ], [ %73, %63 ]
  %66 = phi i64 [ %28, %55 ], [ %79, %63 ]
  %67 = phi i64 [ %29, %55 ], [ %84, %63 ]
  %68 = getelementptr inbounds i64, ptr %59, i64 %64
  %69 = load i64, ptr %68, align 8, !tbaa !39
  %70 = xor i64 %69, %30
  %71 = add i64 %70, %65
  %72 = icmp ult i64 %71, %65
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds i64, ptr %61, i64 %64
  %75 = load i64, ptr %74, align 8, !tbaa !39
  %76 = xor i64 %75, %31
  %77 = add i64 %76, %66
  %78 = icmp ult i64 %77, %66
  %79 = zext i1 %78 to i64
  %80 = and i64 %77, %71
  %81 = xor i64 %80, %32
  %82 = add i64 %81, %67
  %83 = icmp ult i64 %82, %67
  %84 = zext i1 %83 to i64
  %85 = getelementptr inbounds i64, ptr %57, i64 %64
  store i64 %82, ptr %85, align 8, !tbaa !39
  %86 = add nuw nsw i64 %64, 1
  %87 = icmp eq i64 %86, %62
  br i1 %87, label %88, label %63, !llvm.loop !126

88:                                               ; preds = %63
  %89 = icmp ult i64 %86, %34
  br i1 %89, label %90, label %108

90:                                               ; preds = %88, %90
  %91 = phi i64 [ %104, %90 ], [ %84, %88 ]
  %92 = phi i64 [ %99, %90 ], [ %73, %88 ]
  %93 = phi i64 [ %106, %90 ], [ %86, %88 ]
  %94 = getelementptr inbounds i64, ptr %59, i64 %93
  %95 = load i64, ptr %94, align 8, !tbaa !39
  %96 = xor i64 %95, %30
  %97 = add i64 %96, %92
  %98 = icmp ult i64 %97, %92
  %99 = zext i1 %98 to i64
  %100 = and i64 %97, %31
  %101 = xor i64 %100, %32
  %102 = add i64 %101, %91
  %103 = icmp ult i64 %102, %91
  %104 = zext i1 %103 to i64
  %105 = getelementptr inbounds i64, ptr %57, i64 %93
  store i64 %102, ptr %105, align 8, !tbaa !39
  %106 = add nuw nsw i64 %93, 1
  %107 = icmp ult i64 %106, %34
  br i1 %107, label %90, label %108, !llvm.loop !127

108:                                              ; preds = %90, %88
  %109 = phi i64 [ %84, %88 ], [ %104, %90 ]
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = getelementptr i64, ptr %57, i64 -1
  %113 = icmp eq i64 %34, 0
  br i1 %113, label %125, label %117

114:                                              ; preds = %108
  %115 = add nuw nsw i64 %34, 1
  %116 = getelementptr inbounds i64, ptr %57, i64 %34
  store i64 1, ptr %116, align 8, !tbaa !39
  br label %125

117:                                              ; preds = %111, %122
  %118 = phi i64 [ %123, %122 ], [ %34, %111 ]
  %119 = getelementptr i64, ptr %112, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !39
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = add nsw i64 %118, -1
  %124 = icmp sgt i64 %118, 1
  br i1 %124, label %117, label %125, !llvm.loop !79

125:                                              ; preds = %122, %117, %111, %114
  %126 = phi i64 [ %115, %114 ], [ %34, %111 ], [ %118, %117 ], [ 0, %122 ]
  %127 = icmp eq i64 %29, 0
  %128 = sub nsw i64 0, %126
  %129 = select i1 %127, i64 %126, i64 %128
  %130 = trunc i64 %129 to i32
  br label %131

131:                                              ; preds = %14, %125
  %132 = phi i32 [ %130, %125 ], [ 0, %14 ]
  %133 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %132, ptr %133, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_ior(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !85
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = zext nneg i32 %10 to i64
  %12 = icmp ult i32 %6, %10
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %3
  %15 = phi i64 [ %7, %13 ], [ %11, %3 ]
  %16 = phi i64 [ %11, %13 ], [ %7, %3 ]
  %17 = phi ptr [ %1, %13 ], [ %2, %3 ]
  %18 = phi ptr [ %2, %13 ], [ %1, %3 ]
  %19 = icmp eq i64 %15, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call void @mpz_set(ptr noundef %0, ptr noundef %18)
  br label %133

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.__mpz_struct, ptr %18, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !85
  %24 = lshr i32 %23, 31
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds %struct.__mpz_struct, ptr %17, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !85
  %28 = lshr i32 %27, 31
  %29 = zext nneg i32 %28 to i64
  %30 = or i64 %29, %25
  %31 = sub nsw i64 0, %25
  %32 = sub nsw i64 0, %29
  %33 = sub nsw i64 0, %30
  %34 = icmp slt i32 %27, 0
  %35 = select i1 %34, i64 %15, i64 %16
  %36 = add nuw nsw i64 %30, %35
  %37 = load i32, ptr %0, align 8, !tbaa !83
  %38 = sext i32 %37 to i64
  %39 = icmp ugt i64 %36, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %21
  %41 = tail call i64 @llvm.smax.i64(i64 %36, i64 1)
  %42 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  %44 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %45 = shl nuw nsw i64 %41, 3
  %46 = tail call ptr %44(ptr noundef %43, i64 noundef 0, i64 noundef %45) #31
  store ptr %46, ptr %42, align 8, !tbaa !86
  %47 = trunc i64 %41 to i32
  store i32 %47, ptr %0, align 8, !tbaa !83
  %48 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !85
  %50 = tail call i32 @llvm.abs.i32(i32 %49, i1 true)
  %51 = zext nneg i32 %50 to i64
  %52 = icmp ult i64 %41, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  store i32 0, ptr %48, align 4, !tbaa !85
  br label %56

54:                                               ; preds = %21
  %55 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %56

56:                                               ; preds = %53, %40, %54
  %57 = phi ptr [ %55, %54 ], [ %42, %40 ], [ %42, %53 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !86
  %59 = getelementptr inbounds %struct.__mpz_struct, ptr %18, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !86
  %61 = getelementptr inbounds %struct.__mpz_struct, ptr %17, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !86
  %63 = tail call i64 @llvm.umax.i64(i64 %15, i64 1)
  br label %64

64:                                               ; preds = %64, %56
  %65 = phi i64 [ 0, %56 ], [ %87, %64 ]
  %66 = phi i64 [ %25, %56 ], [ %74, %64 ]
  %67 = phi i64 [ %29, %56 ], [ %80, %64 ]
  %68 = phi i64 [ %30, %56 ], [ %85, %64 ]
  %69 = getelementptr inbounds i64, ptr %60, i64 %65
  %70 = load i64, ptr %69, align 8, !tbaa !39
  %71 = xor i64 %70, %31
  %72 = add i64 %71, %66
  %73 = icmp ult i64 %72, %66
  %74 = zext i1 %73 to i64
  %75 = getelementptr inbounds i64, ptr %62, i64 %65
  %76 = load i64, ptr %75, align 8, !tbaa !39
  %77 = xor i64 %76, %32
  %78 = add i64 %77, %67
  %79 = icmp ult i64 %78, %67
  %80 = zext i1 %79 to i64
  %81 = or i64 %78, %72
  %82 = xor i64 %81, %33
  %83 = add i64 %82, %68
  %84 = icmp ult i64 %83, %68
  %85 = zext i1 %84 to i64
  %86 = getelementptr inbounds i64, ptr %58, i64 %65
  store i64 %83, ptr %86, align 8, !tbaa !39
  %87 = add nuw nsw i64 %65, 1
  %88 = icmp eq i64 %87, %63
  br i1 %88, label %89, label %64, !llvm.loop !128

89:                                               ; preds = %64
  %90 = icmp ult i64 %87, %35
  br i1 %90, label %91, label %109

91:                                               ; preds = %89, %91
  %92 = phi i64 [ %105, %91 ], [ %85, %89 ]
  %93 = phi i64 [ %100, %91 ], [ %74, %89 ]
  %94 = phi i64 [ %107, %91 ], [ %87, %89 ]
  %95 = getelementptr inbounds i64, ptr %60, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !39
  %97 = xor i64 %96, %31
  %98 = add i64 %97, %93
  %99 = icmp ult i64 %98, %93
  %100 = zext i1 %99 to i64
  %101 = or i64 %98, %32
  %102 = xor i64 %101, %33
  %103 = add i64 %102, %92
  %104 = icmp ult i64 %103, %92
  %105 = zext i1 %104 to i64
  %106 = getelementptr inbounds i64, ptr %58, i64 %94
  store i64 %103, ptr %106, align 8, !tbaa !39
  %107 = add nuw nsw i64 %94, 1
  %108 = icmp ult i64 %107, %35
  br i1 %108, label %91, label %109, !llvm.loop !129

109:                                              ; preds = %91, %89
  %110 = phi i64 [ %85, %89 ], [ %105, %91 ]
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = getelementptr i64, ptr %58, i64 -1
  %114 = icmp eq i64 %35, 0
  br i1 %114, label %126, label %118

115:                                              ; preds = %109
  %116 = add nuw nsw i64 %35, 1
  %117 = getelementptr inbounds i64, ptr %58, i64 %35
  store i64 1, ptr %117, align 8, !tbaa !39
  br label %126

118:                                              ; preds = %112, %123
  %119 = phi i64 [ %124, %123 ], [ %35, %112 ]
  %120 = getelementptr i64, ptr %113, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !39
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = add nsw i64 %119, -1
  %125 = icmp sgt i64 %119, 1
  br i1 %125, label %118, label %126, !llvm.loop !79

126:                                              ; preds = %123, %118, %112, %115
  %127 = phi i64 [ %116, %115 ], [ %35, %112 ], [ %119, %118 ], [ 0, %123 ]
  %128 = icmp eq i64 %30, 0
  %129 = sub nsw i64 0, %127
  %130 = select i1 %128, i64 %127, i64 %129
  %131 = trunc i64 %130 to i32
  %132 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %131, ptr %132, align 4, !tbaa !85
  br label %133

133:                                              ; preds = %126, %20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_xor(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !85
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = zext nneg i32 %10 to i64
  %12 = icmp ult i32 %6, %10
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %3
  %15 = phi i64 [ %7, %13 ], [ %11, %3 ]
  %16 = phi i64 [ %11, %13 ], [ %7, %3 ]
  %17 = phi ptr [ %1, %13 ], [ %2, %3 ]
  %18 = phi ptr [ %2, %13 ], [ %1, %3 ]
  %19 = icmp eq i64 %15, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call void @mpz_set(ptr noundef %0, ptr noundef %18)
  br label %130

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.__mpz_struct, ptr %18, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !85
  %24 = lshr i32 %23, 31
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds %struct.__mpz_struct, ptr %17, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !85
  %28 = lshr i32 %27, 31
  %29 = zext nneg i32 %28 to i64
  %30 = xor i64 %29, %25
  %31 = sub nsw i64 0, %25
  %32 = sub nsw i64 0, %29
  %33 = sub nsw i64 0, %30
  %34 = add nuw nsw i64 %30, %16
  %35 = load i32, ptr %0, align 8, !tbaa !83
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %21
  %39 = tail call i64 @llvm.smax.i64(i64 %34, i64 1)
  %40 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !86
  %42 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %43 = shl nuw nsw i64 %39, 3
  %44 = tail call ptr %42(ptr noundef %41, i64 noundef 0, i64 noundef %43) #31
  store ptr %44, ptr %40, align 8, !tbaa !86
  %45 = trunc i64 %39 to i32
  store i32 %45, ptr %0, align 8, !tbaa !83
  %46 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !85
  %48 = tail call i32 @llvm.abs.i32(i32 %47, i1 true)
  %49 = zext nneg i32 %48 to i64
  %50 = icmp ult i64 %39, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  store i32 0, ptr %46, align 4, !tbaa !85
  br label %54

52:                                               ; preds = %21
  %53 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %54

54:                                               ; preds = %51, %38, %52
  %55 = phi ptr [ %53, %52 ], [ %40, %38 ], [ %40, %51 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !86
  %57 = getelementptr inbounds %struct.__mpz_struct, ptr %18, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !86
  %59 = getelementptr inbounds %struct.__mpz_struct, ptr %17, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !86
  %61 = tail call i64 @llvm.umax.i64(i64 %15, i64 1)
  br label %62

62:                                               ; preds = %62, %54
  %63 = phi i64 [ 0, %54 ], [ %85, %62 ]
  %64 = phi i64 [ %25, %54 ], [ %72, %62 ]
  %65 = phi i64 [ %29, %54 ], [ %78, %62 ]
  %66 = phi i64 [ %30, %54 ], [ %83, %62 ]
  %67 = getelementptr inbounds i64, ptr %58, i64 %63
  %68 = load i64, ptr %67, align 8, !tbaa !39
  %69 = xor i64 %68, %31
  %70 = add i64 %69, %64
  %71 = icmp ult i64 %70, %64
  %72 = zext i1 %71 to i64
  %73 = getelementptr inbounds i64, ptr %60, i64 %63
  %74 = load i64, ptr %73, align 8, !tbaa !39
  %75 = xor i64 %74, %32
  %76 = add i64 %75, %65
  %77 = icmp ult i64 %76, %65
  %78 = zext i1 %77 to i64
  %79 = xor i64 %70, %33
  %80 = xor i64 %79, %76
  %81 = add i64 %80, %66
  %82 = icmp ult i64 %81, %66
  %83 = zext i1 %82 to i64
  %84 = getelementptr inbounds i64, ptr %56, i64 %63
  store i64 %81, ptr %84, align 8, !tbaa !39
  %85 = add nuw nsw i64 %63, 1
  %86 = icmp eq i64 %85, %61
  br i1 %86, label %87, label %62, !llvm.loop !130

87:                                               ; preds = %62
  %88 = icmp ult i64 %85, %16
  br i1 %88, label %89, label %106

89:                                               ; preds = %87, %89
  %90 = phi i64 [ %102, %89 ], [ %83, %87 ]
  %91 = phi i64 [ %98, %89 ], [ %72, %87 ]
  %92 = phi i64 [ %104, %89 ], [ %85, %87 ]
  %93 = getelementptr inbounds i64, ptr %58, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !39
  %95 = xor i64 %94, %31
  %96 = add i64 %95, %91
  %97 = icmp ult i64 %96, %91
  %98 = zext i1 %97 to i64
  %99 = xor i64 %96, %31
  %100 = add i64 %99, %90
  %101 = icmp ult i64 %100, %90
  %102 = zext i1 %101 to i64
  %103 = getelementptr inbounds i64, ptr %56, i64 %92
  store i64 %100, ptr %103, align 8, !tbaa !39
  %104 = add nuw nsw i64 %92, 1
  %105 = icmp ult i64 %104, %16
  br i1 %105, label %89, label %106, !llvm.loop !131

106:                                              ; preds = %89, %87
  %107 = phi i64 [ %83, %87 ], [ %102, %89 ]
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = getelementptr i64, ptr %56, i64 -1
  %111 = icmp eq i64 %16, 0
  br i1 %111, label %123, label %115

112:                                              ; preds = %106
  %113 = add nuw nsw i64 %16, 1
  %114 = getelementptr inbounds i64, ptr %56, i64 %16
  store i64 1, ptr %114, align 8, !tbaa !39
  br label %123

115:                                              ; preds = %109, %120
  %116 = phi i64 [ %121, %120 ], [ %16, %109 ]
  %117 = getelementptr i64, ptr %110, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !39
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = add nsw i64 %116, -1
  %122 = icmp sgt i64 %116, 1
  br i1 %122, label %115, label %123, !llvm.loop !79

123:                                              ; preds = %120, %115, %109, %112
  %124 = phi i64 [ %113, %112 ], [ %16, %109 ], [ %116, %115 ], [ 0, %120 ]
  %125 = icmp eq i64 %30, 0
  %126 = sub nsw i64 0, %124
  %127 = select i1 %125, i64 %124, i64 %126
  %128 = trunc i64 %127 to i32
  %129 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %128, ptr %129, align 4, !tbaa !85
  br label %130

130:                                              ; preds = %123, %20
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @mpn_popcount(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #6 !prof !34 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %38

4:                                                ; preds = %2, %32
  %5 = phi i64 [ %35, %32 ], [ 0, %2 ]
  %6 = phi i64 [ %36, %32 ], [ 0, %2 ]
  %7 = getelementptr inbounds i64, ptr %0, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !39
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %4, %10
  %11 = phi i64 [ %30, %10 ], [ %8, %4 ]
  %12 = phi i32 [ %29, %10 ], [ 0, %4 ]
  %13 = lshr i64 %11, 1
  %14 = and i64 %13, 21845
  %15 = and i64 %11, 21845
  %16 = add nuw nsw i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = lshr i32 %17, 2
  %19 = and i32 %18, 13107
  %20 = and i32 %17, 13107
  %21 = add nuw nsw i32 %19, %20
  %22 = lshr i32 %21, 4
  %23 = and i32 %22, 1799
  %24 = and i32 %21, 1799
  %25 = add nuw nsw i32 %23, %24
  %26 = lshr i32 %25, 8
  %27 = and i32 %25, 15
  %28 = add i32 %27, %12
  %29 = add i32 %28, %26
  %30 = lshr i64 %11, 16
  %31 = icmp ult i64 %11, 65536
  br i1 %31, label %32, label %10, !llvm.loop !132

32:                                               ; preds = %10, %4
  %33 = phi i32 [ 0, %4 ], [ %29, %10 ]
  %34 = zext i32 %33 to i64
  %35 = add i64 %5, %34
  %36 = add nuw nsw i64 %6, 1
  %37 = icmp eq i64 %36, %1
  br i1 %37, label %38, label %4, !llvm.loop !133

38:                                               ; preds = %32, %2
  %39 = phi i64 [ 0, %2 ], [ %35, %32 ]
  ret i64 %39
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mpz_popcount(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !prof !34 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !85
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = tail call i64 @mpn_popcount(ptr noundef %8, i64 noundef %6)
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi i64 [ %9, %5 ], [ -1, %1 ]
  ret i64 %11
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mpz_hamdist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = sext i32 %7 to i64
  %9 = xor i64 %8, %5
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %123, label %11

11:                                               ; preds = %2
  %12 = icmp slt i32 %4, 0
  %13 = lshr i32 %4, 31
  %14 = zext nneg i32 %13 to i64
  %15 = sub nsw i64 0, %14
  %16 = sub nsw i64 0, %8
  %17 = select i1 %12, i64 %16, i64 %8
  %18 = tail call i64 @llvm.abs.i64(i64 %5, i1 true)
  %19 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  %23 = icmp slt i64 %18, %17
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %11
  %26 = phi i64 [ %18, %24 ], [ %17, %11 ]
  %27 = phi ptr [ %22, %24 ], [ %20, %11 ]
  %28 = phi ptr [ %20, %24 ], [ %22, %11 ]
  %29 = phi i64 [ %17, %24 ], [ %18, %11 ]
  %30 = icmp sgt i64 %26, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %77, %25
  %32 = phi i64 [ %14, %25 ], [ %46, %77 ]
  %33 = phi i64 [ 0, %25 ], [ %26, %77 ]
  %34 = phi i64 [ 0, %25 ], [ %80, %77 ]
  %35 = icmp slt i64 %33, %29
  br i1 %35, label %83, label %123

36:                                               ; preds = %25, %77
  %37 = phi i64 [ %80, %77 ], [ 0, %25 ]
  %38 = phi i64 [ %81, %77 ], [ 0, %25 ]
  %39 = phi i64 [ %52, %77 ], [ %14, %25 ]
  %40 = phi i64 [ %46, %77 ], [ %14, %25 ]
  %41 = getelementptr inbounds i64, ptr %27, i64 %38
  %42 = load i64, ptr %41, align 8, !tbaa !39
  %43 = xor i64 %42, %15
  %44 = add i64 %43, %40
  %45 = icmp ult i64 %44, %40
  %46 = zext i1 %45 to i64
  %47 = getelementptr inbounds i64, ptr %28, i64 %38
  %48 = load i64, ptr %47, align 8, !tbaa !39
  %49 = xor i64 %48, %15
  %50 = add i64 %49, %39
  %51 = icmp ult i64 %50, %39
  %52 = zext i1 %51 to i64
  %53 = xor i64 %50, %44
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %36, %55
  %56 = phi i64 [ %75, %55 ], [ %53, %36 ]
  %57 = phi i32 [ %74, %55 ], [ 0, %36 ]
  %58 = lshr i64 %56, 1
  %59 = and i64 %58, 21845
  %60 = and i64 %56, 21845
  %61 = add nuw nsw i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = lshr i32 %62, 2
  %64 = and i32 %63, 13107
  %65 = and i32 %62, 13107
  %66 = add nuw nsw i32 %64, %65
  %67 = lshr i32 %66, 4
  %68 = and i32 %67, 1799
  %69 = and i32 %66, 1799
  %70 = add nuw nsw i32 %68, %69
  %71 = lshr i32 %70, 8
  %72 = and i32 %70, 15
  %73 = add i32 %72, %57
  %74 = add i32 %73, %71
  %75 = lshr i64 %56, 16
  %76 = icmp ult i64 %56, 65536
  br i1 %76, label %77, label %55, !llvm.loop !132

77:                                               ; preds = %55, %36
  %78 = phi i32 [ 0, %36 ], [ %74, %55 ]
  %79 = zext i32 %78 to i64
  %80 = add i64 %37, %79
  %81 = add nuw nsw i64 %38, 1
  %82 = icmp eq i64 %81, %26
  br i1 %82, label %31, label %36, !llvm.loop !134

83:                                               ; preds = %31, %117
  %84 = phi i64 [ %120, %117 ], [ %34, %31 ]
  %85 = phi i64 [ %121, %117 ], [ %33, %31 ]
  %86 = phi i64 [ %92, %117 ], [ %32, %31 ]
  %87 = getelementptr inbounds i64, ptr %27, i64 %85
  %88 = load i64, ptr %87, align 8, !tbaa !39
  %89 = xor i64 %88, %15
  %90 = add i64 %89, %86
  %91 = icmp ult i64 %90, %86
  %92 = zext i1 %91 to i64
  %93 = xor i64 %90, %15
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %117, label %95

95:                                               ; preds = %83, %95
  %96 = phi i64 [ %115, %95 ], [ %93, %83 ]
  %97 = phi i32 [ %114, %95 ], [ 0, %83 ]
  %98 = lshr i64 %96, 1
  %99 = and i64 %98, 21845
  %100 = and i64 %96, 21845
  %101 = add nuw nsw i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = lshr i32 %102, 2
  %104 = and i32 %103, 13107
  %105 = and i32 %102, 13107
  %106 = add nuw nsw i32 %104, %105
  %107 = lshr i32 %106, 4
  %108 = and i32 %107, 1799
  %109 = and i32 %106, 1799
  %110 = add nuw nsw i32 %108, %109
  %111 = lshr i32 %110, 8
  %112 = and i32 %110, 15
  %113 = add i32 %112, %97
  %114 = add i32 %113, %111
  %115 = lshr i64 %96, 16
  %116 = icmp ult i64 %96, 65536
  br i1 %116, label %117, label %95, !llvm.loop !132

117:                                              ; preds = %95, %83
  %118 = phi i32 [ 0, %83 ], [ %114, %95 ]
  %119 = zext i32 %118 to i64
  %120 = add i64 %84, %119
  %121 = add nuw nsw i64 %85, 1
  %122 = icmp eq i64 %121, %29
  br i1 %122, label %123, label %83, !llvm.loop !135

123:                                              ; preds = %117, %31, %2
  %124 = phi i64 [ -1, %2 ], [ %34, %31 ], [ %120, %117 ]
  ret i64 %124
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mpz_scan0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = icmp sgt i32 %4, -1
  %6 = sext i1 %5 to i64
  %7 = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %8 = zext i32 %7 to i64
  %9 = lshr i64 %1, 6
  %10 = icmp ult i64 %9, %8
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = select i1 %5, i64 %1, i64 -1
  br label %84

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = getelementptr inbounds i64, ptr %15, i64 %9
  %17 = load i64, ptr %16, align 8, !tbaa !39
  %18 = xor i64 %17, %6
  br i1 %5, label %38, label %19

19:                                               ; preds = %13
  %20 = getelementptr i64, ptr %15, i64 -1
  %21 = icmp ult i64 %1, 64
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = tail call i64 @llvm.smin.i64(i64 %9, i64 1)
  %24 = add nsw i64 %23, -1
  br label %25

25:                                               ; preds = %22, %30
  %26 = phi i64 [ %31, %30 ], [ %9, %22 ]
  %27 = getelementptr i64, ptr %20, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !39
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = add nsw i64 %26, -1
  %32 = icmp sgt i64 %26, 1
  br i1 %32, label %25, label %33, !llvm.loop !79

33:                                               ; preds = %25, %30, %19
  %34 = phi i64 [ %9, %19 ], [ %26, %25 ], [ %24, %30 ]
  %35 = icmp eq i64 %34, 0
  %36 = sext i1 %35 to i64
  %37 = add i64 %18, %36
  br label %38

38:                                               ; preds = %33, %13
  %39 = phi i64 [ %37, %33 ], [ %18, %13 ]
  %40 = and i64 %1, 63
  %41 = shl nsw i64 -1, %40
  %42 = and i64 %39, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38, %51
  %45 = phi i64 [ %46, %51 ], [ %9, %38 ]
  %46 = add nuw nsw i64 %45, 1
  %47 = icmp eq i64 %46, %8
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = shl nuw nsw i64 %8, 6
  %50 = select i1 %5, i64 %49, i64 -1
  br label %84

51:                                               ; preds = %44
  %52 = getelementptr inbounds i64, ptr %15, i64 %46
  %53 = load i64, ptr %52, align 8, !tbaa !39
  %54 = xor i64 %53, %6
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %44, label %56, !llvm.loop !56

56:                                               ; preds = %51, %38
  %57 = phi i64 [ %9, %38 ], [ %46, %51 ]
  %58 = phi i64 [ %42, %38 ], [ %54, %51 ]
  %59 = sub i64 0, %58
  %60 = and i64 %58, %59
  %61 = icmp ult i64 %60, 72057594037927936
  br i1 %61, label %66, label %62

62:                                               ; preds = %66, %56
  %63 = phi i64 [ %60, %56 ], [ %69, %66 ]
  %64 = phi i32 [ 0, %56 ], [ %70, %66 ]
  %65 = icmp sgt i64 %63, -1
  br i1 %65, label %72, label %78

66:                                               ; preds = %56, %66
  %67 = phi i32 [ %70, %66 ], [ 0, %56 ]
  %68 = phi i64 [ %69, %66 ], [ %60, %56 ]
  %69 = shl nuw i64 %68, 8
  %70 = add i32 %67, 8
  %71 = icmp ult i64 %68, 281474976710656
  br i1 %71, label %66, label %62, !llvm.loop !57

72:                                               ; preds = %62, %72
  %73 = phi i32 [ %76, %72 ], [ %64, %62 ]
  %74 = phi i64 [ %75, %72 ], [ %63, %62 ]
  %75 = shl nuw i64 %74, 1
  %76 = add i32 %73, 1
  %77 = icmp sgt i64 %75, -1
  br i1 %77, label %72, label %78, !llvm.loop !58

78:                                               ; preds = %72, %62
  %79 = phi i32 [ %64, %62 ], [ %76, %72 ]
  %80 = sub i32 63, %79
  %81 = shl i64 %57, 6
  %82 = zext i32 %80 to i64
  %83 = add i64 %81, %82
  br label %84

84:                                               ; preds = %78, %48, %11
  %85 = phi i64 [ %12, %11 ], [ %50, %48 ], [ %83, %78 ]
  ret i64 %85
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @mpn_div_qr_1_preinv(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #2 !prof !34 {
  %5 = load i32, ptr %3, align 8, !tbaa !71
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %9 = shl i64 %2, 3
  %10 = tail call ptr %8(i64 noundef %9) #31
  %11 = load i32, ptr %3, align 8, !tbaa !71
  %12 = getelementptr inbounds i64, ptr %1, i64 %2
  %13 = getelementptr inbounds i64, ptr %10, i64 %2
  %14 = zext nneg i32 %11 to i64
  %15 = sub i32 64, %11
  %16 = getelementptr inbounds i64, ptr %12, i64 -1
  %17 = load i64, ptr %16, align 8, !tbaa !39
  %18 = zext i32 %15 to i64
  %19 = shl i64 %17, %14
  %20 = add nsw i64 %2, -1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %7, %22
  %23 = phi i64 [ %33, %22 ], [ %20, %7 ]
  %24 = phi i64 [ %32, %22 ], [ %19, %7 ]
  %25 = phi ptr [ %31, %22 ], [ %13, %7 ]
  %26 = phi ptr [ %27, %22 ], [ %16, %7 ]
  %27 = getelementptr inbounds i64, ptr %26, i64 -1
  %28 = load i64, ptr %27, align 8, !tbaa !39
  %29 = lshr i64 %28, %18
  %30 = or i64 %29, %24
  %31 = getelementptr inbounds i64, ptr %25, i64 -1
  store i64 %30, ptr %31, align 8, !tbaa !39
  %32 = shl i64 %28, %14
  %33 = add nsw i64 %23, -1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %22, !llvm.loop !54

35:                                               ; preds = %22, %7
  %36 = phi ptr [ %13, %7 ], [ %31, %22 ]
  %37 = phi i64 [ %19, %7 ], [ %32, %22 ]
  %38 = lshr i64 %17, %18
  %39 = getelementptr inbounds i64, ptr %36, i64 -1
  store i64 %37, ptr %39, align 8, !tbaa !39
  br label %40

40:                                               ; preds = %4, %35
  %41 = phi ptr [ %10, %35 ], [ null, %4 ]
  %42 = phi i64 [ %38, %35 ], [ 0, %4 ]
  %43 = phi ptr [ %10, %35 ], [ %1, %4 ]
  %44 = getelementptr inbounds %struct.gmp_div_inverse, ptr %3, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !73
  %46 = icmp sgt i64 %2, 0
  br i1 %46, label %47, label %98

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.gmp_div_inverse, ptr %3, i64 0, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !74
  %50 = lshr i64 %49, 32
  %51 = and i64 %49, 4294967295
  %52 = icmp eq ptr %0, null
  br label %53

53:                                               ; preds = %47, %96
  %54 = phi i64 [ %2, %47 ], [ %56, %96 ]
  %55 = phi i64 [ %42, %47 ], [ %90, %96 ]
  %56 = add nsw i64 %54, -1
  %57 = lshr i64 %55, 32
  %58 = and i64 %55, 4294967295
  %59 = mul nuw i64 %58, %51
  %60 = mul nuw i64 %58, %50
  %61 = mul nuw i64 %57, %51
  %62 = mul nuw i64 %57, %50
  %63 = lshr i64 %59, 32
  %64 = add i64 %61, %60
  %65 = add i64 %64, %63
  %66 = icmp ult i64 %65, %61
  %67 = add nuw i64 %62, 4294967296
  %68 = select i1 %66, i64 %67, i64 %62
  %69 = lshr i64 %65, 32
  %70 = shl i64 %65, 32
  %71 = and i64 %59, 4294967295
  %72 = or disjoint i64 %70, %71
  %73 = getelementptr inbounds i64, ptr %43, i64 %56
  %74 = load i64, ptr %73, align 8, !tbaa !39
  %75 = add i64 %74, %72
  %76 = icmp ult i64 %75, %72
  %77 = zext i1 %76 to i64
  %78 = add i64 %55, 1
  %79 = add i64 %78, %69
  %80 = add i64 %79, %68
  %81 = add i64 %80, %77
  %82 = mul i64 %81, %45
  %83 = sub i64 %74, %82
  %84 = icmp ugt i64 %83, %75
  %85 = sext i1 %84 to i64
  %86 = and i64 %45, %85
  %87 = add i64 %86, %83
  %88 = icmp uge i64 %87, %45
  %89 = select i1 %88, i64 %45, i64 0
  %90 = sub i64 %87, %89
  br i1 %52, label %96, label %91

91:                                               ; preds = %53
  %92 = add i64 %81, %85
  %93 = zext i1 %88 to i64
  %94 = add i64 %92, %93
  %95 = getelementptr inbounds i64, ptr %0, i64 %56
  store i64 %94, ptr %95, align 8, !tbaa !39
  br label %96

96:                                               ; preds = %91, %53
  %97 = icmp sgt i64 %54, 1
  br i1 %97, label %53, label %98, !llvm.loop !136

98:                                               ; preds = %96, %40
  %99 = phi i64 [ %42, %40 ], [ %90, %96 ]
  %100 = load i32, ptr %3, align 8, !tbaa !71
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  tail call void %103(ptr noundef %41, i64 noundef 0) #31
  br label %104

104:                                              ; preds = %102, %98
  %105 = load i32, ptr %3, align 8, !tbaa !71
  %106 = zext nneg i32 %105 to i64
  %107 = lshr i64 %99, %106
  ret i64 %107
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @mpz_get_str(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca %struct.mpn_base_info, align 8
  %5 = icmp sgt i32 %1, -1
  %6 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %7 = select i1 %5, ptr @.str.4, ptr @.str.5
  %8 = icmp ult i32 %6, 2
  %9 = select i1 %8, i32 10, i32 %6
  %10 = icmp ugt i32 %9, 36
  br i1 %10, label %84, label %11

11:                                               ; preds = %3
  %12 = tail call i64 @mpz_sizeinbase(ptr noundef %2, i32 noundef %9)
  %13 = icmp eq ptr %0, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %16 = add i64 %12, 2
  %17 = tail call ptr %15(i64 noundef %16) #31
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi ptr [ %0, %11 ], [ %17, %14 ]
  %20 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !85
  %22 = tail call i32 @llvm.abs.i32(i32 %21, i1 true)
  %23 = zext nneg i32 %22 to i64
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i8 48, ptr %19, align 1, !tbaa !67
  br label %81

26:                                               ; preds = %18
  %27 = icmp slt i32 %21, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  store i8 45, ptr %19, align 1, !tbaa !67
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i64 [ 1, %28 ], [ 0, %26 ]
  %31 = tail call fastcc i32 @mpn_base_power_of_two_p(i32 noundef %9), !range !59
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %19, i64 %30
  %35 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !86
  %37 = tail call fastcc i64 @mpn_get_str_bits(ptr noundef %34, i32 noundef %31, ptr noundef %36, i64 noundef %23)
  br label %68

38:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  %39 = zext nneg i32 %9 to i64
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i32 [ %44, %40 ], [ 1, %38 ]
  %42 = phi i64 [ %43, %40 ], [ %39, %38 ]
  %43 = mul i64 %42, %39
  %44 = add i32 %41, 1
  %45 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %39, i64 %43)
  %46 = extractvalue { i64, i1 } %45, 1
  br i1 %46, label %47, label %40, !llvm.loop !60

47:                                               ; preds = %40
  store i32 %44, ptr %4, align 8, !tbaa !61
  %48 = getelementptr inbounds %struct.mpn_base_info, ptr %4, i64 0, i32 1
  store i64 %43, ptr %48, align 8, !tbaa !64
  %49 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %50 = shl nuw nsw i64 %23, 3
  %51 = tail call ptr %49(i64 noundef %50) #31
  %52 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !86
  %54 = tail call i32 @llvm.abs.i32(i32 %21, i1 false)
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 1)
  %56 = zext i32 %55 to i64
  br label %57

57:                                               ; preds = %47, %57
  %58 = phi i64 [ 0, %47 ], [ %62, %57 ]
  %59 = getelementptr inbounds i64, ptr %53, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !39
  %61 = getelementptr inbounds i64, ptr %51, i64 %58
  store i64 %60, ptr %61, align 8, !tbaa !39
  %62 = add nuw nsw i64 %58, 1
  %63 = icmp eq i64 %62, %56
  br i1 %63, label %64, label %57, !llvm.loop !41

64:                                               ; preds = %57
  %65 = getelementptr inbounds i8, ptr %19, i64 %30
  %66 = call fastcc i64 @mpn_get_str_other(ptr noundef %65, i32 noundef %9, ptr noundef nonnull %4, ptr noundef %51, i64 noundef %23)
  %67 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  tail call void %67(ptr noundef %51, i64 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  br label %68

68:                                               ; preds = %64, %33
  %69 = phi i64 [ %37, %33 ], [ %66, %64 ]
  %70 = add i64 %69, %30
  %71 = icmp ult i64 %30, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68, %72
  %73 = phi i64 [ %79, %72 ], [ %30, %68 ]
  %74 = getelementptr inbounds i8, ptr %19, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !67
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds i8, ptr %7, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !67
  store i8 %78, ptr %74, align 1, !tbaa !67
  %79 = add nuw i64 %73, 1
  %80 = icmp eq i64 %79, %70
  br i1 %80, label %81, label %72, !llvm.loop !137

81:                                               ; preds = %72, %68, %25
  %82 = phi i64 [ 1, %25 ], [ %70, %68 ], [ %70, %72 ]
  %83 = getelementptr inbounds i8, ptr %19, i64 %82
  store i8 0, ptr %83, align 1, !tbaa !67
  br label %84

84:                                               ; preds = %81, %3
  %85 = phi ptr [ null, %3 ], [ %19, %81 ]
  ret ptr %85
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @mpz_set_str(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca %struct.mpn_base_info, align 8
  %5 = tail call ptr @__ctype_b_loc() #32
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %1, %3 ], [ %15, %7 ]
  %9 = load i8, ptr %8, align 1, !tbaa !67
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i16, ptr %6, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !138
  %13 = and i16 %12, 8192
  %14 = icmp eq i16 %13, 0
  %15 = getelementptr inbounds i8, ptr %8, i64 1
  br i1 %14, label %16, label %7, !llvm.loop !140

16:                                               ; preds = %7
  %17 = icmp eq i8 %9, 45
  %18 = zext i1 %17 to i64
  %19 = getelementptr inbounds i8, ptr %8, i64 %18
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load i8, ptr %19, align 1, !tbaa !67
  %23 = icmp eq i8 %22, 48
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %19, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !67
  switch i8 %26, label %31 [
    i8 120, label %27
    i8 88, label %27
    i8 98, label %29
    i8 66, label %29
  ]

27:                                               ; preds = %24, %24
  %28 = getelementptr inbounds i8, ptr %19, i64 2
  br label %31

29:                                               ; preds = %24, %24
  %30 = getelementptr inbounds i8, ptr %19, i64 2
  br label %31

31:                                               ; preds = %21, %24, %29, %27, %16
  %32 = phi i32 [ 16, %27 ], [ 2, %29 ], [ %2, %16 ], [ 8, %24 ], [ 10, %21 ]
  %33 = phi ptr [ %28, %27 ], [ %30, %29 ], [ %19, %16 ], [ %25, %24 ], [ %19, %21 ]
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #33
  %35 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %36 = icmp eq i64 %34, 0
  %37 = zext i1 %36 to i64
  %38 = add i64 %34, %37
  %39 = tail call ptr %35(i64 noundef %38) #31
  %40 = load i8, ptr %33, align 1, !tbaa !67
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %87, label %42

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  br label %44

44:                                               ; preds = %42, %83
  %45 = phi i8 [ %40, %42 ], [ %85, %83 ]
  %46 = phi ptr [ %33, %42 ], [ %84, %83 ]
  %47 = phi i64 [ 0, %42 ], [ %81, %83 ]
  %48 = load ptr, ptr %5, align 8, !tbaa !35
  %49 = zext i8 %45 to i64
  %50 = getelementptr inbounds i16, ptr %48, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !138
  %52 = and i16 %51, 8192
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %44
  %55 = add i8 %45, -48
  %56 = icmp ult i8 %55, 10
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = zext nneg i8 %55 to i32
  br label %71

59:                                               ; preds = %54
  %60 = add i8 %45, -97
  %61 = icmp ult i8 %60, 26
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = zext nneg i8 %45 to i32
  %64 = add nsw i32 %63, -87
  br label %71

65:                                               ; preds = %59
  %66 = add i8 %45, -65
  %67 = icmp ult i8 %66, 26
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = zext nneg i8 %45 to i32
  %70 = add nsw i32 %69, -55
  br label %71

71:                                               ; preds = %65, %62, %68, %57
  %72 = phi i32 [ %58, %57 ], [ %64, %62 ], [ %70, %68 ], [ %32, %65 ]
  %73 = icmp ult i32 %72, %32
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  tail call void %75(ptr noundef %39, i64 noundef 0) #31
  store i32 0, ptr %43, align 4, !tbaa !85
  br label %80

76:                                               ; preds = %71
  %77 = trunc i32 %72 to i8
  %78 = add i64 %47, 1
  %79 = getelementptr inbounds i8, ptr %39, i64 %47
  store i8 %77, ptr %79, align 1, !tbaa !67
  br label %80

80:                                               ; preds = %44, %76, %74
  %81 = phi i64 [ %47, %74 ], [ %78, %76 ], [ %47, %44 ]
  %82 = phi i32 [ 1, %74 ], [ 0, %76 ], [ 6, %44 ]
  switch i32 %82, label %168 [
    i32 0, label %83
    i32 6, label %83
  ]

83:                                               ; preds = %80, %80
  %84 = getelementptr inbounds i8, ptr %46, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !67
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %44, !llvm.loop !141

87:                                               ; preds = %83, %31
  %88 = phi i64 [ 0, %31 ], [ %81, %83 ]
  %89 = tail call fastcc i32 @mpn_base_power_of_two_p(i32 noundef %32), !range !59
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %119, label %91

91:                                               ; preds = %87
  %92 = zext nneg i32 %89 to i64
  %93 = mul i64 %88, %92
  %94 = add i64 %93, 63
  %95 = lshr i64 %94, 6
  %96 = load i32, ptr %0, align 8, !tbaa !83
  %97 = sext i32 %96 to i64
  %98 = icmp sgt i64 %95, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %91
  %100 = tail call i64 @llvm.smax.i64(i64 %95, i64 1)
  %101 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !86
  %103 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %104 = shl nuw nsw i64 %100, 3
  %105 = tail call ptr %103(ptr noundef %102, i64 noundef 0, i64 noundef %104) #31
  store ptr %105, ptr %101, align 8, !tbaa !86
  %106 = trunc i64 %100 to i32
  store i32 %106, ptr %0, align 8, !tbaa !83
  %107 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !85
  %109 = tail call i32 @llvm.abs.i32(i32 %108, i1 true)
  %110 = zext nneg i32 %109 to i64
  %111 = icmp ult i64 %100, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %99
  store i32 0, ptr %107, align 4, !tbaa !85
  br label %115

113:                                              ; preds = %91
  %114 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %115

115:                                              ; preds = %112, %99, %113
  %116 = phi ptr [ %114, %113 ], [ %101, %99 ], [ %101, %112 ]
  %117 = load ptr, ptr %116, align 8, !tbaa !86
  %118 = tail call fastcc i64 @mpn_set_str_bits(ptr noundef %117, ptr noundef %39, i64 noundef %88, i32 noundef %89)
  br label %161

119:                                              ; preds = %87
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  %120 = sext i32 %32 to i64
  %121 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %120, i64 %120)
  %122 = extractvalue { i64, i1 } %121, 1
  br i1 %122, label %130, label %123

123:                                              ; preds = %119, %123
  %124 = phi i32 [ %127, %123 ], [ 1, %119 ]
  %125 = phi i64 [ %126, %123 ], [ %120, %119 ]
  %126 = mul i64 %125, %120
  %127 = add i32 %124, 1
  %128 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %120, i64 %126)
  %129 = extractvalue { i64, i1 } %128, 1
  br i1 %129, label %130, label %123, !llvm.loop !60

130:                                              ; preds = %123, %119
  %131 = phi i64 [ %120, %119 ], [ %126, %123 ]
  %132 = phi i32 [ 1, %119 ], [ %127, %123 ]
  store i32 %132, ptr %4, align 8, !tbaa !61
  %133 = getelementptr inbounds %struct.mpn_base_info, ptr %4, i64 0, i32 1
  store i64 %131, ptr %133, align 8, !tbaa !64
  %134 = zext i32 %132 to i64
  %135 = add i64 %88, -1
  %136 = add i64 %135, %134
  %137 = udiv i64 %136, %134
  %138 = load i32, ptr %0, align 8, !tbaa !83
  %139 = sext i32 %138 to i64
  %140 = icmp sgt i64 %137, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %130
  %142 = tail call i64 @llvm.smax.i64(i64 %137, i64 1)
  %143 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !86
  %145 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %146 = shl i64 %142, 3
  %147 = tail call ptr %145(ptr noundef %144, i64 noundef 0, i64 noundef %146) #31
  store ptr %147, ptr %143, align 8, !tbaa !86
  %148 = trunc i64 %142 to i32
  store i32 %148, ptr %0, align 8, !tbaa !83
  %149 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %150 = load i32, ptr %149, align 4, !tbaa !85
  %151 = tail call i32 @llvm.abs.i32(i32 %150, i1 true)
  %152 = zext nneg i32 %151 to i64
  %153 = icmp ult i64 %142, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %141
  store i32 0, ptr %149, align 4, !tbaa !85
  br label %157

155:                                              ; preds = %130
  %156 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %157

157:                                              ; preds = %154, %141, %155
  %158 = phi ptr [ %156, %155 ], [ %143, %141 ], [ %143, %154 ]
  %159 = load ptr, ptr %158, align 8, !tbaa !86
  %160 = call fastcc i64 @mpn_set_str_other(ptr noundef %159, ptr noundef %39, i64 noundef %88, i64 noundef %120, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  br label %161

161:                                              ; preds = %157, %115
  %162 = phi i64 [ %118, %115 ], [ %160, %157 ]
  %163 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  tail call void %163(ptr noundef %39, i64 noundef 0) #31
  %164 = sub nsw i64 0, %162
  %165 = select i1 %17, i64 %164, i64 %162
  %166 = trunc i64 %165 to i32
  %167 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %166, ptr %167, align 4, !tbaa !85
  br label %168

168:                                              ; preds = %80, %161
  %169 = phi i32 [ 0, %161 ], [ -1, %80 ]
  ret i32 %169
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @mpz_init_set_str(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 !prof !34 {
  store i32 1, ptr %0, align 8, !tbaa !83
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 4, !tbaa !85
  %5 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %6 = tail call ptr %5(i64 noundef 8) #31
  %7 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !86
  %8 = tail call i32 @mpz_set_str(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  ret i32 %8
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @mpz_out_str(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call ptr @mpz_get_str(ptr noundef null, i32 noundef %1, ptr noundef %2)
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #33
  %6 = tail call i64 @fwrite(ptr noundef %4, i64 noundef 1, i64 noundef %5, ptr noundef %0)
  %7 = load ptr, ptr @gmp_free_func, align 8, !tbaa !35
  tail call void %7(ptr noundef %4, i64 noundef 0) #31
  ret i64 %6
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: cold nounwind uwtable
define dso_local void @mpz_import(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #2 !prof !34 {
  %8 = icmp eq i64 %5, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr @stderr, align 8, !tbaa !35
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6) #28
  tail call void @abort() #29
  unreachable

12:                                               ; preds = %7
  %13 = icmp eq i32 %4, 0
  %14 = select i1 %13, i32 -1, i32 %4
  %15 = icmp eq i32 %14, %2
  %16 = shl i64 %3, 1
  %17 = select i1 %15, i64 0, i64 %16
  %18 = icmp eq i32 %2, 1
  %19 = add i64 %1, -1
  %20 = mul i64 %19, %3
  %21 = sub nsw i64 0, %17
  %22 = select i1 %18, i64 %20, i64 0
  %23 = getelementptr inbounds i8, ptr %6, i64 %22
  %24 = select i1 %18, i64 %21, i64 %17
  %25 = icmp eq i32 %14, 1
  %26 = getelementptr i8, ptr %23, i64 %3
  %27 = getelementptr i8, ptr %26, i64 -1
  %28 = select i1 %25, ptr %27, ptr %23
  %29 = mul i64 %3, %1
  %30 = add i64 %29, 7
  %31 = lshr i64 %30, 3
  %32 = load i32, ptr %0, align 8, !tbaa !83
  %33 = sext i32 %32 to i64
  %34 = icmp sgt i64 %31, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %12
  %36 = tail call i64 @llvm.smax.i64(i64 %31, i64 1)
  %37 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !86
  %39 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !35
  %40 = shl nuw i64 %36, 3
  %41 = tail call ptr %39(ptr noundef %38, i64 noundef 0, i64 noundef %40) #31
  store ptr %41, ptr %37, align 8, !tbaa !86
  %42 = trunc i64 %36 to i32
  store i32 %42, ptr %0, align 8, !tbaa !83
  %43 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !85
  %45 = tail call i32 @llvm.abs.i32(i32 %44, i1 true)
  %46 = zext nneg i32 %45 to i64
  %47 = icmp ult i64 %36, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  store i32 0, ptr %43, align 4, !tbaa !85
  br label %51

49:                                               ; preds = %12
  %50 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  br label %51

51:                                               ; preds = %48, %35, %49
  %52 = phi ptr [ %50, %49 ], [ %37, %35 ], [ %37, %48 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !86
  %54 = icmp eq i64 %1, 0
  br i1 %54, label %96, label %55

55:                                               ; preds = %51
  %56 = icmp eq i64 %3, 0
  %57 = sext i32 %14 to i64
  %58 = sub nsw i64 0, %57
  br label %59

59:                                               ; preds = %55, %88
  %60 = phi i64 [ 0, %55 ], [ %92, %88 ]
  %61 = phi i64 [ 0, %55 ], [ %91, %88 ]
  %62 = phi i64 [ 0, %55 ], [ %90, %88 ]
  %63 = phi i64 [ %1, %55 ], [ %93, %88 ]
  %64 = phi ptr [ %28, %55 ], [ %94, %88 ]
  br i1 %56, label %88, label %65

65:                                               ; preds = %59, %81
  %66 = phi i64 [ %85, %81 ], [ 0, %59 ]
  %67 = phi i64 [ %84, %81 ], [ %60, %59 ]
  %68 = phi i64 [ %83, %81 ], [ %61, %59 ]
  %69 = phi i64 [ %82, %81 ], [ %62, %59 ]
  %70 = phi ptr [ %86, %81 ], [ %64, %59 ]
  %71 = load i8, ptr %70, align 1, !tbaa !67
  %72 = zext i8 %71 to i64
  %73 = add i64 %68, 1
  %74 = shl i64 %68, 3
  %75 = shl i64 %72, %74
  %76 = or i64 %75, %69
  %77 = icmp eq i64 %73, 8
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = add nsw i64 %67, 1
  %80 = getelementptr inbounds i64, ptr %53, i64 %67
  store i64 %76, ptr %80, align 8, !tbaa !39
  br label %81

81:                                               ; preds = %65, %78
  %82 = phi i64 [ 0, %78 ], [ %76, %65 ]
  %83 = phi i64 [ 0, %78 ], [ %73, %65 ]
  %84 = phi i64 [ %79, %78 ], [ %67, %65 ]
  %85 = add nuw i64 %66, 1
  %86 = getelementptr inbounds i8, ptr %70, i64 %58
  %87 = icmp eq i64 %85, %3
  br i1 %87, label %88, label %65, !llvm.loop !142

88:                                               ; preds = %81, %59
  %89 = phi ptr [ %64, %59 ], [ %86, %81 ]
  %90 = phi i64 [ %62, %59 ], [ %82, %81 ]
  %91 = phi i64 [ %61, %59 ], [ %83, %81 ]
  %92 = phi i64 [ %60, %59 ], [ %84, %81 ]
  %93 = add i64 %63, -1
  %94 = getelementptr inbounds i8, ptr %89, i64 %24
  %95 = icmp eq i64 %93, 0
  br i1 %95, label %96, label %59, !llvm.loop !143

96:                                               ; preds = %88, %51
  %97 = phi i64 [ 0, %51 ], [ %90, %88 ]
  %98 = phi i64 [ 0, %51 ], [ %92, %88 ]
  %99 = icmp eq i64 %97, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = getelementptr i64, ptr %53, i64 -1
  %102 = icmp sgt i64 %98, 0
  br i1 %102, label %106, label %114

103:                                              ; preds = %96
  %104 = add nsw i64 %98, 1
  %105 = getelementptr inbounds i64, ptr %53, i64 %98
  store i64 %97, ptr %105, align 8, !tbaa !39
  br label %114

106:                                              ; preds = %100, %111
  %107 = phi i64 [ %112, %111 ], [ %98, %100 ]
  %108 = getelementptr i64, ptr %101, i64 %107
  %109 = load i64, ptr %108, align 8, !tbaa !39
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = add nsw i64 %107, -1
  %113 = icmp sgt i64 %107, 1
  br i1 %113, label %106, label %114, !llvm.loop !79

114:                                              ; preds = %111, %106, %100, %103
  %115 = phi i64 [ %104, %103 ], [ %98, %100 ], [ %107, %106 ], [ 0, %111 ]
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %116, ptr %117, align 4, !tbaa !85
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @mpz_export(ptr noundef writeonly %0, ptr noundef writeonly %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #2 !prof !34 {
  %8 = icmp eq i64 %5, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr @stderr, align 8, !tbaa !35
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6) #28
  tail call void @abort() #29
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !85
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %98, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @llvm.abs.i32(i32 %14, i1 false)
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  %21 = add nsw i64 %18, -1
  %22 = getelementptr inbounds i64, ptr %20, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !39
  br label %24

24:                                               ; preds = %24, %16
  %25 = phi i64 [ 0, %16 ], [ %27, %24 ]
  %26 = phi i64 [ %23, %16 ], [ %28, %24 ]
  %27 = add nuw nsw i64 %25, 1
  %28 = lshr i64 %26, 8
  %29 = icmp ult i64 %26, 256
  br i1 %29, label %30, label %24, !llvm.loop !144

30:                                               ; preds = %24
  %31 = shl nsw i64 %21, 3
  %32 = add i64 %3, -1
  %33 = add i64 %32, %31
  %34 = add i64 %33, %27
  %35 = udiv i64 %34, %3
  %36 = icmp eq ptr %0, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !35
  %39 = mul i64 %35, %3
  %40 = tail call ptr %38(i64 noundef %39) #31
  br label %41

41:                                               ; preds = %37, %30
  %42 = phi ptr [ %0, %30 ], [ %40, %37 ]
  %43 = icmp eq i32 %4, 0
  %44 = select i1 %43, i32 -1, i32 %4
  %45 = icmp eq i32 %44, %2
  %46 = shl i64 %3, 1
  %47 = select i1 %45, i64 0, i64 %46
  %48 = icmp eq i32 %2, 1
  %49 = sub nsw i64 0, %47
  %50 = select i1 %48, i64 %49, i64 %47
  %51 = icmp ult i64 %34, %3
  br i1 %51, label %98, label %52

52:                                               ; preds = %41
  %53 = icmp eq i32 %44, 1
  %54 = add i64 %35, -1
  %55 = mul i64 %54, %3
  %56 = select i1 %48, i64 %55, i64 0
  %57 = getelementptr inbounds i8, ptr %42, i64 %56
  %58 = getelementptr i8, ptr %57, i64 %3
  %59 = getelementptr i8, ptr %58, i64 -1
  %60 = select i1 %53, ptr %59, ptr %57
  %61 = sext i32 %44 to i64
  %62 = sub nsw i64 0, %61
  %63 = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  br label %64

64:                                               ; preds = %52, %94
  %65 = phi i64 [ 0, %52 ], [ %87, %94 ]
  %66 = phi i64 [ 0, %52 ], [ %90, %94 ]
  %67 = phi i64 [ 0, %52 ], [ %89, %94 ]
  %68 = phi ptr [ %60, %52 ], [ %96, %94 ]
  %69 = phi i64 [ 0, %52 ], [ %95, %94 ]
  br label %70

70:                                               ; preds = %64, %84
  %71 = phi i64 [ 0, %64 ], [ %91, %84 ]
  %72 = phi i64 [ %65, %64 ], [ %87, %84 ]
  %73 = phi i64 [ %66, %64 ], [ %90, %84 ]
  %74 = phi i64 [ %67, %64 ], [ %89, %84 ]
  %75 = phi ptr [ %68, %64 ], [ %92, %84 ]
  %76 = icmp eq i64 %73, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = icmp slt i64 %72, %18
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = load ptr, ptr %19, align 8, !tbaa !86
  %81 = add nsw i64 %72, 1
  %82 = getelementptr inbounds i64, ptr %80, i64 %72
  %83 = load i64, ptr %82, align 8, !tbaa !39
  br label %84

84:                                               ; preds = %77, %79, %70
  %85 = phi i64 [ %74, %70 ], [ %83, %79 ], [ %74, %77 ]
  %86 = phi i64 [ %73, %70 ], [ 8, %79 ], [ 8, %77 ]
  %87 = phi i64 [ %72, %70 ], [ %81, %79 ], [ %72, %77 ]
  %88 = trunc i64 %85 to i8
  store i8 %88, ptr %75, align 1, !tbaa !67
  %89 = lshr i64 %85, 8
  %90 = add nsw i64 %86, -1
  %91 = add nuw i64 %71, 1
  %92 = getelementptr inbounds i8, ptr %75, i64 %62
  %93 = icmp eq i64 %91, %63
  br i1 %93, label %94, label %70, !llvm.loop !145

94:                                               ; preds = %84
  %95 = add nuw i64 %69, 1
  %96 = getelementptr inbounds i8, ptr %92, i64 %50
  %97 = icmp ult i64 %95, %35
  br i1 %97, label %64, label %98, !llvm.loop !146

98:                                               ; preds = %94, %41, %12
  %99 = phi ptr [ %0, %12 ], [ %42, %41 ], [ %42, %94 ]
  %100 = phi i64 [ 0, %12 ], [ %35, %41 ], [ %35, %94 ]
  %101 = icmp eq ptr %1, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  store i64 %100, ptr %1, align 8, !tbaa !39
  br label %103

103:                                              ; preds = %102, %98
  ret ptr %99
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @mpn_limb_get_str(ptr nocapture noundef writeonly %0, i64 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !prof !34 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %60, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gmp_div_inverse, ptr %2, i64 0, i32 3
  %7 = getelementptr inbounds %struct.gmp_div_inverse, ptr %2, i64 0, i32 1
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ %1, %5 ], [ %54, %8 ]
  %10 = phi i64 [ 0, %5 ], [ %58, %8 ]
  %11 = load i32, ptr %2, align 8, !tbaa !71
  %12 = zext i32 %11 to i64
  %13 = sub nsw i64 64, %12
  %14 = lshr i64 %9, %13
  %15 = shl i64 %9, %12
  %16 = load i64, ptr %6, align 8, !tbaa !74
  %17 = lshr i64 %14, 32
  %18 = lshr i64 %16, 32
  %19 = and i64 %14, 4294967295
  %20 = and i64 %16, 4294967295
  %21 = mul nuw i64 %19, %20
  %22 = mul nuw i64 %19, %18
  %23 = mul nuw i64 %17, %20
  %24 = mul nuw i64 %17, %18
  %25 = lshr i64 %21, 32
  %26 = add i64 %23, %22
  %27 = add i64 %26, %25
  %28 = icmp ult i64 %27, %23
  %29 = add nuw i64 %24, 4294967296
  %30 = select i1 %28, i64 %29, i64 %24
  %31 = lshr i64 %27, 32
  %32 = shl i64 %27, 32
  %33 = and i64 %21, 4294967295
  %34 = or disjoint i64 %32, %33
  %35 = add i64 %34, %15
  %36 = icmp ult i64 %35, %34
  %37 = zext i1 %36 to i64
  %38 = add i64 %14, 1
  %39 = add i64 %38, %31
  %40 = add i64 %39, %30
  %41 = add i64 %40, %37
  %42 = load i64, ptr %7, align 8, !tbaa !73
  %43 = mul i64 %41, %42
  %44 = sub i64 %15, %43
  %45 = icmp ugt i64 %44, %35
  %46 = sext i1 %45 to i64
  %47 = add i64 %41, %46
  %48 = and i64 %42, %46
  %49 = add i64 %48, %44
  %50 = icmp uge i64 %49, %42
  %51 = select i1 %50, i64 %42, i64 0
  %52 = sub i64 %49, %51
  %53 = zext i1 %50 to i64
  %54 = add i64 %47, %53
  %55 = lshr i64 %52, %12
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds i8, ptr %0, i64 %10
  store i8 %56, ptr %57, align 1, !tbaa !67
  %58 = add nuw nsw i64 %10, 1
  %59 = icmp eq i64 %54, 0
  br i1 %59, label %60, label %8, !llvm.loop !147

60:                                               ; preds = %8, %3
  %61 = phi i64 [ 0, %3 ], [ %58, %8 ]
  ret i64 %61
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #20

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #24

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mpn_div_qr_pi1(ptr noundef writeonly %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5, i64 noundef %6) unnamed_addr #8 !prof !34 {
  %8 = add nsw i64 %5, -1
  %9 = getelementptr inbounds i64, ptr %4, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !39
  %11 = add nsw i64 %5, -2
  %12 = getelementptr inbounds i64, ptr %4, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !39
  %14 = sub nsw i64 %2, %5
  %15 = getelementptr i64, ptr %1, i64 %8
  %16 = lshr i64 %6, 32
  %17 = and i64 %6, 4294967295
  %18 = getelementptr i64, ptr %1, i64 %11
  %19 = lshr i64 %13, 32
  %20 = and i64 %13, 4294967295
  %21 = icmp eq ptr %0, null
  br label %22

22:                                               ; preds = %149, %7
  %23 = phi i64 [ %14, %7 ], [ %150, %149 ]
  %24 = phi i64 [ %3, %7 ], [ %146, %149 ]
  %25 = getelementptr i64, ptr %15, i64 %23
  %26 = load i64, ptr %25, align 8, !tbaa !39
  %27 = icmp eq i64 %24, %10
  %28 = icmp eq i64 %26, %13
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = getelementptr inbounds i64, ptr %1, i64 %23
  %32 = tail call i64 @mpn_submul_1(ptr noundef %31, ptr noundef %4, i64 noundef %5, i64 noundef -1)
  %33 = load i64, ptr %25, align 8, !tbaa !39
  br label %144

34:                                               ; preds = %22
  %35 = lshr i64 %24, 32
  %36 = and i64 %24, 4294967295
  %37 = mul nuw i64 %36, %17
  %38 = mul nuw i64 %36, %16
  %39 = mul nuw i64 %35, %17
  %40 = mul nuw i64 %35, %16
  %41 = lshr i64 %37, 32
  %42 = add i64 %39, %38
  %43 = add i64 %42, %41
  %44 = icmp ult i64 %43, %39
  %45 = add nuw i64 %40, 4294967296
  %46 = select i1 %44, i64 %45, i64 %40
  %47 = lshr i64 %43, 32
  %48 = shl i64 %43, 32
  %49 = and i64 %37, 4294967295
  %50 = or disjoint i64 %48, %49
  %51 = add i64 %50, %26
  %52 = icmp ult i64 %51, %50
  %53 = zext i1 %52 to i64
  %54 = add i64 %47, %24
  %55 = add i64 %54, %46
  %56 = add i64 %55, %53
  %57 = getelementptr i64, ptr %18, i64 %23
  %58 = load i64, ptr %57, align 8, !tbaa !39
  %59 = sub i64 %58, %13
  %60 = xor i64 %56, -1
  %61 = mul i64 %10, %60
  %62 = icmp ult i64 %58, %13
  %63 = sext i1 %62 to i64
  %64 = lshr i64 %56, 32
  %65 = and i64 %56, 4294967295
  %66 = mul nuw i64 %65, %20
  %67 = mul nuw i64 %64, %20
  %68 = mul nuw i64 %65, %19
  %69 = mul nuw i64 %64, %19
  %70 = lshr i64 %66, 32
  %71 = add i64 %68, %67
  %72 = add i64 %71, %70
  %73 = icmp ult i64 %72, %68
  %74 = add nuw i64 %69, 4294967296
  %75 = select i1 %73, i64 %74, i64 %69
  %76 = lshr i64 %72, 32
  %77 = shl i64 %72, 32
  %78 = and i64 %66, 4294967295
  %79 = or disjoint i64 %77, %78
  %80 = sub i64 %59, %79
  %81 = icmp ult i64 %59, %79
  %82 = sext i1 %81 to i64
  %83 = add i64 %61, %26
  %84 = add i64 %76, %75
  %85 = sub i64 %83, %84
  %86 = add i64 %85, %63
  %87 = add i64 %86, %82
  %88 = add i64 %56, 1
  %89 = icmp uge i64 %87, %51
  %90 = sext i1 %89 to i64
  %91 = add i64 %88, %90
  %92 = and i64 %13, %90
  %93 = add i64 %92, %80
  %94 = and i64 %10, %90
  %95 = add i64 %94, %87
  %96 = icmp ult i64 %93, %80
  %97 = zext i1 %96 to i64
  %98 = add i64 %95, %97
  %99 = icmp ult i64 %98, %10
  br i1 %99, label %110, label %100

100:                                              ; preds = %34
  %101 = icmp ule i64 %98, %10
  %102 = icmp ult i64 %93, %13
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = add i64 %91, 1
  %106 = sub i64 %93, %13
  %107 = sext i1 %102 to i64
  %108 = sub i64 %107, %10
  %109 = add i64 %108, %98
  br label %110

110:                                              ; preds = %100, %104, %34
  %111 = phi i64 [ %106, %104 ], [ %93, %34 ], [ %93, %100 ]
  %112 = phi i64 [ %105, %104 ], [ %91, %34 ], [ %91, %100 ]
  %113 = phi i64 [ %109, %104 ], [ %98, %34 ], [ %98, %100 ]
  %114 = getelementptr inbounds i64, ptr %1, i64 %23
  %115 = tail call i64 @mpn_submul_1(ptr noundef %114, ptr noundef %4, i64 noundef %11, i64 noundef %112)
  %116 = icmp ult i64 %111, %115
  %117 = zext i1 %116 to i64
  %118 = sub i64 %111, %115
  %119 = icmp ult i64 %113, %117
  %120 = sub i64 %113, %117
  store i64 %118, ptr %57, align 8, !tbaa !39
  br i1 %119, label %121, label %144

121:                                              ; preds = %110
  %122 = icmp sgt i64 %5, 1
  br i1 %122, label %123, label %139

123:                                              ; preds = %121, %123
  %124 = phi i64 [ %137, %123 ], [ 0, %121 ]
  %125 = phi i64 [ %136, %123 ], [ 0, %121 ]
  %126 = getelementptr inbounds i64, ptr %114, i64 %124
  %127 = load i64, ptr %126, align 8, !tbaa !39
  %128 = getelementptr inbounds i64, ptr %4, i64 %124
  %129 = load i64, ptr %128, align 8, !tbaa !39
  %130 = add i64 %127, %125
  %131 = icmp ult i64 %130, %125
  %132 = zext i1 %131 to i64
  %133 = add i64 %130, %129
  %134 = icmp ult i64 %133, %129
  %135 = zext i1 %134 to i64
  %136 = add nuw nsw i64 %135, %132
  store i64 %133, ptr %126, align 8, !tbaa !39
  %137 = add nuw nsw i64 %124, 1
  %138 = icmp eq i64 %137, %8
  br i1 %138, label %139, label %123, !llvm.loop !47

139:                                              ; preds = %123, %121
  %140 = phi i64 [ 0, %121 ], [ %136, %123 ]
  %141 = add i64 %120, %10
  %142 = add i64 %141, %140
  %143 = add i64 %112, -1
  br label %144

144:                                              ; preds = %110, %139, %30
  %145 = phi i64 [ -1, %30 ], [ %143, %139 ], [ %112, %110 ]
  %146 = phi i64 [ %33, %30 ], [ %142, %139 ], [ %120, %110 ]
  br i1 %21, label %149, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds i64, ptr %0, i64 %23
  store i64 %145, ptr %148, align 8, !tbaa !39
  br label %149

149:                                              ; preds = %147, %144
  %150 = add nsw i64 %23, -1
  %151 = icmp sgt i64 %23, 0
  br i1 %151, label %22, label %152, !llvm.loop !148

152:                                              ; preds = %149
  store i64 %146, ptr %15, align 8, !tbaa !39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { cold }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind allocsize(1) }
attributes #31 = { nounwind }
attributes #32 = { nounwind willreturn memory(none) }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !42, !43}
!45 = distinct !{!45, !42, !43}
!46 = distinct !{!46, !42, !43}
!47 = distinct !{!47, !42, !43}
!48 = distinct !{!48, !42, !43}
!49 = distinct !{!49, !42, !43}
!50 = distinct !{!50, !42, !43}
!51 = distinct !{!51, !42, !43}
!52 = distinct !{!52, !42, !43}
!53 = distinct !{!53, !42, !43}
!54 = distinct !{!54, !42, !43}
!55 = distinct !{!55, !42, !43}
!56 = distinct !{!56, !42, !43}
!57 = distinct !{!57, !42, !43}
!58 = distinct !{!58, !42, !43}
!59 = !{i32 0, i32 9}
!60 = distinct !{!60, !42, !43}
!61 = !{!62, !63, i64 0}
!62 = !{!"mpn_base_info", !63, i64 0, !40, i64 8}
!63 = !{!"int", !37, i64 0}
!64 = !{!62, !40, i64 8}
!65 = distinct !{!65, !42, !43}
!66 = distinct !{!66, !42, !43}
!67 = !{!37, !37, i64 0}
!68 = distinct !{!68, !42, !43}
!69 = distinct !{!69, !42, !43}
!70 = distinct !{!70, !42, !43}
!71 = !{!72, !63, i64 0}
!72 = !{!"gmp_div_inverse", !63, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!73 = !{!72, !40, i64 8}
!74 = !{!72, !40, i64 24}
!75 = distinct !{!75, !42, !43}
!76 = distinct !{!76, !42, !43}
!77 = distinct !{!77, !42, !43}
!78 = distinct !{!78, !42, !43}
!79 = distinct !{!79, !42, !43}
!80 = distinct !{!80, !42, !43}
!81 = distinct !{!81, !42, !43}
!82 = distinct !{!82, !42, !43}
!83 = !{!84, !63, i64 0}
!84 = !{!"", !63, i64 0, !63, i64 4, !36, i64 8}
!85 = !{!84, !63, i64 4}
!86 = !{!84, !36, i64 8}
!87 = distinct !{!87, !42, !43}
!88 = distinct !{!88, !42, !43}
!89 = distinct !{!89, !42, !43}
!90 = distinct !{!90, !42, !43}
!91 = distinct !{!91, !42, !43}
!92 = !{i64 -2147483648, i64 2147483649}
!93 = !{i64 -2147483648, i64 2147483650}
!94 = !{i32 0, i32 2}
!95 = distinct !{!95, !42, !43}
!96 = distinct !{!96, !42, !43}
!97 = distinct !{!97, !42, !43}
!98 = !{i32 -1, i32 2}
!99 = distinct !{!99, !42, !43}
!100 = distinct !{!100, !42, !43}
!101 = distinct !{!101, !42, !43}
!102 = distinct !{!102, !42, !43}
!103 = distinct !{!103, !42, !43}
!104 = distinct !{!104, !42, !43}
!105 = !{i64 0, i64 65}
!106 = distinct !{!106, !42, !43}
!107 = distinct !{!107, !42, !43}
!108 = distinct !{!108, !42, !43}
!109 = distinct !{!109, !42, !43}
!110 = distinct !{!110, !42, !43}
!111 = distinct !{!111, !42, !43}
!112 = distinct !{!112, !42, !43}
!113 = distinct !{!113, !42, !43}
!114 = !{!72, !40, i64 16}
!115 = distinct !{!115, !42, !43}
!116 = distinct !{!116, !42, !43}
!117 = distinct !{!117, !42, !43}
!118 = distinct !{!118, !42, !43}
!119 = distinct !{!119, !42, !43}
!120 = distinct !{!120, !42, !43}
!121 = distinct !{!121, !42, !43}
!122 = distinct !{!122, !42, !43}
!123 = distinct !{!123, !42, !43}
!124 = distinct !{!124, !42, !43}
!125 = distinct !{!125, !42, !43}
!126 = distinct !{!126, !42, !43}
!127 = distinct !{!127, !42, !43}
!128 = distinct !{!128, !42, !43}
!129 = distinct !{!129, !42, !43}
!130 = distinct !{!130, !42, !43}
!131 = distinct !{!131, !42, !43}
!132 = distinct !{!132, !42, !43}
!133 = distinct !{!133, !42, !43}
!134 = distinct !{!134, !42, !43}
!135 = distinct !{!135, !42, !43}
!136 = distinct !{!136, !42, !43}
!137 = distinct !{!137, !42, !43}
!138 = !{!139, !139, i64 0}
!139 = !{!"short", !37, i64 0}
!140 = distinct !{!140, !42, !43}
!141 = distinct !{!141, !42, !43}
!142 = distinct !{!142, !42, !43}
!143 = distinct !{!143, !42, !43}
!144 = distinct !{!144, !42, !43}
!145 = distinct !{!145, !42, !43}
!146 = distinct !{!146, !42, !43}
!147 = distinct !{!147, !42, !43}
!148 = distinct !{!148, !42, !43}
