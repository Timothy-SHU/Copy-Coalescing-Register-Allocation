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
@.str = private unnamed_addr constant [45 x i8] c"gmp_default_alloc: Virtual memory exhausted.\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"gmp_default_realoc: Virtual memory exhausted.\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"mpz_div_qr: Divide by zero.\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"mpz_powm: Zero modulo.\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"mpz_powm: Negative exponent and non-invertible base.\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"mpz_rootrem: Negative argument, with even root.\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"mpz_rootrem: Zeroth root.\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"mpz_import: Nails not supported.\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @mp_get_memory_functions(ptr noundef writeonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 !prof !101 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !102
  store ptr %6, ptr %0, align 8, !tbaa !102
  br label %7

7:                                                ; preds = %5, %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !102
  store ptr %10, ptr %1, align 8, !tbaa !102
  br label %11

11:                                               ; preds = %9, %7
  %12 = icmp eq ptr %2, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr @gmp_free_func, align 8, !tbaa !102
  store ptr %14, ptr %2, align 8, !tbaa !102
  br label %15

15:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @gmp_default_alloc(i64 noundef %0) #1 !prof !106 !PGOFuncName !107 {
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #29
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !108

4:                                                ; preds = %1
  tail call fastcc void @gmp_die(ptr noundef nonnull @.str) #30
  unreachable

5:                                                ; preds = %1
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind optsize uwtable
define internal fastcc void @gmp_die(ptr noundef %0) unnamed_addr #4 !prof !101 !PGOFuncName !109 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !102
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %0) #31
  tail call void @abort() #32
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @gmp_default_realloc(ptr nocapture noundef %0, i64 %1, i64 noundef %2) #1 !prof !110 !PGOFuncName !111 {
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %2) #33
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !112

6:                                                ; preds = %3
  tail call fastcc void @gmp_die(ptr noundef nonnull @.str.2) #30
  unreachable

7:                                                ; preds = %3
  ret ptr %4
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @gmp_default_free(ptr nocapture noundef %0, i64 %1) #8 !prof !106 !PGOFuncName !113 {
  tail call void @free(ptr noundef %0) #34
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @mp_set_memory_functions(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !101 {
  %4 = icmp eq ptr %0, null
  %5 = select i1 %4, ptr @gmp_default_alloc, ptr %0
  %6 = icmp eq ptr %1, null
  %7 = select i1 %6, ptr @gmp_default_realloc, ptr %1
  %8 = icmp eq ptr %2, null
  %9 = select i1 %8, ptr @gmp_default_free, ptr %2
  store ptr %5, ptr @gmp_allocate_func, align 8, !tbaa !102
  store ptr %7, ptr @gmp_reallocate_func, align 8, !tbaa !102
  store ptr %9, ptr @gmp_free_func, align 8, !tbaa !102
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @mpn_copyi(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #11 !prof !114 {
  %4 = icmp sgt i64 %2, 0
  br i1 %4, label %5, label %12, !prof !115

5:                                                ; preds = %3, %5
  %6 = phi i64 [ %10, %5 ], [ 0, %3 ]
  %7 = getelementptr inbounds i64, ptr %1, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !116
  %9 = getelementptr inbounds i64, ptr %0, i64 %6
  store i64 %8, ptr %9, align 8, !tbaa !116
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, %2
  br i1 %11, label %12, label %5, !prof !118, !llvm.loop !119

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @mpn_copyd(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #11 !prof !101 {
  %4 = icmp sgt i64 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3, %5
  %6 = phi i64 [ %7, %5 ], [ %2, %3 ]
  %7 = add nsw i64 %6, -1
  %8 = getelementptr inbounds i64, ptr %1, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !116
  %10 = getelementptr inbounds i64, ptr %0, i64 %7
  store i64 %9, ptr %10, align 8, !tbaa !116
  %11 = icmp ugt i64 %6, 1
  br i1 %11, label %5, label %12, !llvm.loop !121

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @mpn_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #12 !prof !122 {
  br label %4

4:                                                ; preds = %7, %3
  %5 = phi i64 [ %2, %3 ], [ %8, %7 ]
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %17, !prof !123

7:                                                ; preds = %4
  %8 = add nsw i64 %5, -1
  %9 = getelementptr inbounds i64, ptr %0, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !116
  %11 = getelementptr inbounds i64, ptr %1, i64 %8
  %12 = load i64, ptr %11, align 8, !tbaa !116
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %4, label %14, !prof !124, !llvm.loop !125

14:                                               ; preds = %7
  %15 = icmp ugt i64 %10, %12
  %16 = select i1 %15, i32 1, i32 -1
  br label %17

17:                                               ; preds = %4, %14
  %18 = phi i32 [ %16, %14 ], [ 0, %4 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @mpn_zero(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #13 !prof !101 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = shl nuw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %5, i1 false), !tbaa !116
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i64 @mpn_add_1(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #11 !prof !126 {
  %5 = tail call i64 @llvm.smax.i64(i64 %2, i64 1)
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 0, %4 ], [ %15, %6 ]
  %8 = phi i64 [ %3, %4 ], [ %13, %6 ]
  %9 = getelementptr inbounds i64, ptr %1, i64 %7
  %10 = load i64, ptr %9, align 8, !tbaa !116
  %11 = add i64 %10, %8
  %12 = icmp ult i64 %11, %8
  %13 = zext i1 %12 to i64
  %14 = getelementptr inbounds i64, ptr %0, i64 %7
  store i64 %11, ptr %14, align 8, !tbaa !116
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %17, label %6, !prof !127, !llvm.loop !128

17:                                               ; preds = %6
  ret i64 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i64 @mpn_add_n(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #11 !prof !129 {
  %5 = icmp sgt i64 %3, 0
  br i1 %5, label %6, label %23, !prof !130

6:                                                ; preds = %4, %6
  %7 = phi i64 [ %21, %6 ], [ 0, %4 ]
  %8 = phi i64 [ %19, %6 ], [ 0, %4 ]
  %9 = getelementptr inbounds i64, ptr %1, i64 %7
  %10 = load i64, ptr %9, align 8, !tbaa !116
  %11 = getelementptr inbounds i64, ptr %2, i64 %7
  %12 = load i64, ptr %11, align 8, !tbaa !116
  %13 = add i64 %10, %8
  %14 = icmp ult i64 %13, %8
  %15 = zext i1 %14 to i64
  %16 = add i64 %13, %12
  %17 = icmp ult i64 %16, %12
  %18 = zext i1 %17 to i64
  %19 = add nuw nsw i64 %18, %15
  %20 = getelementptr inbounds i64, ptr %0, i64 %7
  store i64 %16, ptr %20, align 8, !tbaa !116
  %21 = add nuw nsw i64 %7, 1
  %22 = icmp eq i64 %21, %3
  br i1 %22, label %23, label %6, !prof !131, !llvm.loop !132

23:                                               ; preds = %6, %4
  %24 = phi i64 [ 0, %4 ], [ %19, %6 ]
  ret i64 %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i64 @mpn_add(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) local_unnamed_addr #11 !prof !129 {
  %6 = tail call i64 @mpn_add_n(ptr noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %4) #30, !range !133
  %7 = icmp sgt i64 %2, %4
  br i1 %7, label %8, label %13, !prof !134

8:                                                ; preds = %5
  %9 = getelementptr inbounds i64, ptr %0, i64 %4
  %10 = getelementptr inbounds i64, ptr %1, i64 %4
  %11 = sub nsw i64 %2, %4
  %12 = tail call i64 @mpn_add_1(ptr noundef %9, ptr noundef %10, i64 noundef %11, i64 noundef %6) #30, !range !135
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi i64 [ %12, %8 ], [ %6, %5 ]
  ret i64 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i64 @mpn_sub_1(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #11 !prof !136 {
  %5 = tail call i64 @llvm.smax.i64(i64 %2, i64 1)
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 0, %4 ], [ %15, %6 ]
  %8 = phi i64 [ %3, %4 ], [ %12, %6 ]
  %9 = getelementptr inbounds i64, ptr %1, i64 %7
  %10 = load i64, ptr %9, align 8, !tbaa !116
  %11 = icmp ult i64 %10, %8
  %12 = zext i1 %11 to i64
  %13 = sub i64 %10, %8
  %14 = getelementptr inbounds i64, ptr %0, i64 %7
  store i64 %13, ptr %14, align 8, !tbaa !116
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %17, label %6, !prof !137, !llvm.loop !138

17:                                               ; preds = %6
  ret i64 %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i64 @mpn_sub_n(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #11 !prof !139 {
  %5 = icmp sgt i64 %3, 0
  br i1 %5, label %6, label %23, !prof !140

6:                                                ; preds = %4, %6
  %7 = phi i64 [ %21, %6 ], [ 0, %4 ]
  %8 = phi i64 [ %18, %6 ], [ 0, %4 ]
  %9 = getelementptr inbounds i64, ptr %1, i64 %7
  %10 = load i64, ptr %9, align 8, !tbaa !116
  %11 = getelementptr inbounds i64, ptr %2, i64 %7
  %12 = load i64, ptr %11, align 8, !tbaa !116
  %13 = add i64 %12, %8
  %14 = icmp ult i64 %13, %8
  %15 = zext i1 %14 to i64
  %16 = icmp ult i64 %10, %13
  %17 = zext i1 %16 to i64
  %18 = add nuw nsw i64 %15, %17
  %19 = sub i64 %10, %13
  %20 = getelementptr inbounds i64, ptr %0, i64 %7
  store i64 %19, ptr %20, align 8, !tbaa !116
  %21 = add nuw nsw i64 %7, 1
  %22 = icmp eq i64 %21, %3
  br i1 %22, label %23, label %6, !prof !141, !llvm.loop !142

23:                                               ; preds = %6, %4
  %24 = phi i64 [ 0, %4 ], [ %18, %6 ]
  ret i64 %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i64 @mpn_sub(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) local_unnamed_addr #11 !prof !139 {
  %6 = tail call i64 @mpn_sub_n(ptr noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %4) #30, !range !133
  %7 = icmp sgt i64 %2, %4
  br i1 %7, label %8, label %13, !prof !143

8:                                                ; preds = %5
  %9 = getelementptr inbounds i64, ptr %0, i64 %4
  %10 = getelementptr inbounds i64, ptr %1, i64 %4
  %11 = sub nsw i64 %2, %4
  %12 = tail call i64 @mpn_sub_1(ptr noundef %9, ptr noundef %10, i64 noundef %11, i64 noundef %6) #30, !range !135
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi i64 [ %12, %8 ], [ %6, %5 ]
  ret i64 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @mpn_mul_1(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #14 !prof !101 {
  %5 = lshr i64 %3, 32
  %6 = and i64 %3, 4294967295
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i64 [ 0, %4 ], [ %34, %7 ]
  %9 = phi i64 [ %2, %4 ], [ %36, %7 ]
  %10 = phi ptr [ %1, %4 ], [ %12, %7 ]
  %11 = phi ptr [ %0, %4 ], [ %35, %7 ]
  %12 = getelementptr inbounds i64, ptr %10, i64 1
  %13 = load i64, ptr %10, align 8, !tbaa !116
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
  store i64 %31, ptr %11, align 8, !tbaa !116
  %36 = add nsw i64 %9, -1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %7, !llvm.loop !144

38:                                               ; preds = %7
  ret i64 %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @mpn_addmul_1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #14 !prof !101 {
  %5 = lshr i64 %3, 32
  %6 = and i64 %3, 4294967295
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i64 [ 0, %4 ], [ %39, %7 ]
  %9 = phi i64 [ %2, %4 ], [ %41, %7 ]
  %10 = phi ptr [ %1, %4 ], [ %12, %7 ]
  %11 = phi ptr [ %0, %4 ], [ %40, %7 ]
  %12 = getelementptr inbounds i64, ptr %10, i64 1
  %13 = load i64, ptr %10, align 8, !tbaa !116
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
  %35 = load i64, ptr %11, align 8, !tbaa !116
  %36 = add i64 %31, %35
  %37 = icmp ult i64 %36, %35
  %38 = zext i1 %37 to i64
  %39 = add i64 %34, %38
  %40 = getelementptr inbounds i64, ptr %11, i64 1
  store i64 %36, ptr %11, align 8, !tbaa !116
  %41 = add nsw i64 %9, -1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %7, !llvm.loop !145

43:                                               ; preds = %7
  ret i64 %39
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @mpn_submul_1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #14 !prof !101 {
  %5 = lshr i64 %3, 32
  %6 = and i64 %3, 4294967295
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i64 [ 0, %4 ], [ %39, %7 ]
  %9 = phi i64 [ %2, %4 ], [ %41, %7 ]
  %10 = phi ptr [ %1, %4 ], [ %12, %7 ]
  %11 = phi ptr [ %0, %4 ], [ %40, %7 ]
  %12 = getelementptr inbounds i64, ptr %10, i64 1
  %13 = load i64, ptr %10, align 8, !tbaa !116
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
  %35 = load i64, ptr %11, align 8, !tbaa !116
  %36 = sub i64 %35, %31
  %37 = icmp ugt i64 %31, %35
  %38 = zext i1 %37 to i64
  %39 = add i64 %34, %38
  %40 = getelementptr inbounds i64, ptr %11, i64 1
  store i64 %36, ptr %11, align 8, !tbaa !116
  %41 = add nsw i64 %9, -1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %7, !llvm.loop !146

43:                                               ; preds = %7
  ret i64 %39
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @mpn_mul(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) local_unnamed_addr #14 !prof !101 {
  %6 = load i64, ptr %3, align 8, !tbaa !116
  %7 = tail call i64 @mpn_mul_1(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %6) #30
  %8 = getelementptr inbounds i64, ptr %0, i64 %2
  store i64 %7, ptr %8, align 8, !tbaa !116
  %9 = icmp sgt i64 %4, 1
  br i1 %9, label %10, label %21

10:                                               ; preds = %5, %10
  %11 = phi i64 [ %14, %10 ], [ %4, %5 ]
  %12 = phi ptr [ %16, %10 ], [ %3, %5 ]
  %13 = phi ptr [ %15, %10 ], [ %0, %5 ]
  %14 = add nsw i64 %11, -1
  %15 = getelementptr inbounds i64, ptr %13, i64 1
  %16 = getelementptr inbounds i64, ptr %12, i64 1
  %17 = load i64, ptr %16, align 8, !tbaa !116
  %18 = tail call i64 @mpn_addmul_1(ptr noundef nonnull %15, ptr noundef %1, i64 noundef %2, i64 noundef %17) #30
  %19 = getelementptr inbounds i64, ptr %15, i64 %2
  store i64 %18, ptr %19, align 8, !tbaa !116
  %20 = icmp ugt i64 %11, 2
  br i1 %20, label %10, label %21, !llvm.loop !147

21:                                               ; preds = %10, %5
  %22 = phi i64 [ %7, %5 ], [ %18, %10 ]
  ret i64 %22
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mpn_mul_n(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #14 !prof !101 {
  %5 = tail call i64 @mpn_mul(ptr noundef %0, ptr noundef %1, i64 noundef %3, ptr noundef %2, i64 noundef %3) #30
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mpn_sqr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #14 !prof !101 {
  %4 = tail call i64 @mpn_mul(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %1, i64 noundef %2) #30
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @mpn_lshift(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #14 !prof !148 {
  %5 = getelementptr inbounds i64, ptr %1, i64 %2
  %6 = getelementptr inbounds i64, ptr %0, i64 %2
  %7 = zext nneg i32 %3 to i64
  %8 = sub i32 64, %3
  %9 = getelementptr inbounds i64, ptr %5, i64 -1
  %10 = load i64, ptr %9, align 8, !tbaa !116
  %11 = zext i32 %8 to i64
  %12 = shl i64 %10, %7
  %13 = add nsw i64 %2, -1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %28, label %15, !prof !149

15:                                               ; preds = %4, %15
  %16 = phi i64 [ %26, %15 ], [ %13, %4 ]
  %17 = phi i64 [ %25, %15 ], [ %12, %4 ]
  %18 = phi ptr [ %24, %15 ], [ %6, %4 ]
  %19 = phi ptr [ %20, %15 ], [ %9, %4 ]
  %20 = getelementptr inbounds i64, ptr %19, i64 -1
  %21 = load i64, ptr %20, align 8, !tbaa !116
  %22 = lshr i64 %21, %11
  %23 = or i64 %22, %17
  %24 = getelementptr inbounds i64, ptr %18, i64 -1
  store i64 %23, ptr %24, align 8, !tbaa !116
  %25 = shl i64 %21, %7
  %26 = add nsw i64 %16, -1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %15, !prof !150, !llvm.loop !151

28:                                               ; preds = %15, %4
  %29 = phi ptr [ %6, %4 ], [ %24, %15 ]
  %30 = phi i64 [ %12, %4 ], [ %25, %15 ]
  %31 = lshr i64 %10, %11
  %32 = getelementptr inbounds i64, ptr %29, i64 -1
  store i64 %30, ptr %32, align 8, !tbaa !116
  ret i64 %31
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @mpn_rshift(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #14 !prof !101 {
  %5 = zext nneg i32 %3 to i64
  %6 = sub i32 64, %3
  %7 = load i64, ptr %1, align 8, !tbaa !116
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
  %18 = load i64, ptr %17, align 8, !tbaa !116
  %19 = shl i64 %18, %8
  %20 = or i64 %19, %14
  %21 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %20, ptr %15, align 8, !tbaa !116
  %22 = lshr i64 %18, %5
  %23 = add nsw i64 %13, -1
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %12, !llvm.loop !152

25:                                               ; preds = %12, %4
  %26 = phi ptr [ %0, %4 ], [ %21, %12 ]
  %27 = phi i64 [ %9, %4 ], [ %22, %12 ]
  %28 = shl i64 %7, %8
  store i64 %27, ptr %26, align 8, !tbaa !116
  ret i64 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i64 @mpn_scan1(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !prof !101 {
  %3 = lshr i64 %1, 6
  %4 = getelementptr inbounds i64, ptr %0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !116
  %6 = and i64 %1, 63
  %7 = shl nsw i64 -1, %6
  %8 = and i64 %5, %7
  %9 = tail call fastcc i64 @mpn_common_scan(i64 noundef %8, i64 noundef %3, ptr noundef %0, i64 noundef %3, i64 noundef 0) #30
  ret i64 %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i64 @mpn_common_scan(i64 noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i64 noundef %4) unnamed_addr #12 !prof !101 !PGOFuncName !153 {
  %6 = icmp eq i64 %0, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %5, %15
  %8 = phi i64 [ %9, %15 ], [ %1, %5 ]
  %9 = add nsw i64 %8, 1
  %10 = icmp eq i64 %9, %3
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = icmp eq i64 %4, 0
  %13 = shl nuw i64 %3, 6
  %14 = select i1 %12, i64 -1, i64 %13
  br label %48

15:                                               ; preds = %7
  %16 = getelementptr inbounds i64, ptr %2, i64 %9
  %17 = load i64, ptr %16, align 8, !tbaa !116
  %18 = xor i64 %17, %4
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %7, label %20, !llvm.loop !154

20:                                               ; preds = %15, %5
  %21 = phi i64 [ %1, %5 ], [ %9, %15 ]
  %22 = phi i64 [ %0, %5 ], [ %18, %15 ]
  %23 = sub i64 0, %22
  %24 = and i64 %22, %23
  %25 = icmp ult i64 %24, 72057594037927936
  br i1 %25, label %30, label %26

26:                                               ; preds = %30, %20
  %27 = phi i64 [ %24, %20 ], [ %33, %30 ]
  %28 = phi i32 [ 0, %20 ], [ %34, %30 ]
  %29 = icmp sgt i64 %27, -1
  br i1 %29, label %36, label %42

30:                                               ; preds = %20, %30
  %31 = phi i32 [ %34, %30 ], [ 0, %20 ]
  %32 = phi i64 [ %33, %30 ], [ %24, %20 ]
  %33 = shl nuw i64 %32, 8
  %34 = add i32 %31, 8
  %35 = icmp ult i64 %32, 281474976710656
  br i1 %35, label %30, label %26, !llvm.loop !155

36:                                               ; preds = %26, %36
  %37 = phi i32 [ %40, %36 ], [ %28, %26 ]
  %38 = phi i64 [ %39, %36 ], [ %27, %26 ]
  %39 = shl nuw i64 %38, 1
  %40 = add i32 %37, 1
  %41 = icmp sgt i64 %39, -1
  br i1 %41, label %36, label %42, !llvm.loop !156

42:                                               ; preds = %36, %26
  %43 = phi i32 [ %28, %26 ], [ %40, %36 ]
  %44 = sub i32 63, %43
  %45 = shl i64 %21, 6
  %46 = zext i32 %44 to i64
  %47 = add i64 %45, %46
  br label %48

48:                                               ; preds = %42, %11
  %49 = phi i64 [ %14, %11 ], [ %47, %42 ]
  ret i64 %49
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i64 @mpn_scan0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !prof !101 {
  %3 = lshr i64 %1, 6
  %4 = getelementptr inbounds i64, ptr %0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !116
  %6 = xor i64 %5, -1
  %7 = and i64 %1, 63
  %8 = shl nsw i64 -1, %7
  %9 = and i64 %8, %6
  %10 = tail call fastcc i64 @mpn_common_scan(i64 noundef %9, i64 noundef %3, ptr noundef %0, i64 noundef %3, i64 noundef -1) #30
  ret i64 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i64 @mpn_invert_3by2(i64 noundef %0, i64 noundef %1) local_unnamed_addr #15 !prof !148 {
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
  br i1 %13, label %14, label %23, !prof !157

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
  %32 = add nuw nsw i64 %31, 1
  %33 = shl i64 %26, 32
  %34 = or disjoint i64 %33, 4294967295
  %35 = and i64 %32, 4294967295
  %36 = mul i64 %35, %0
  %37 = sub i64 %34, %36
  %38 = shl i64 %30, 32
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %42, label %40, !prof !158

40:                                               ; preds = %23
  %41 = add i64 %37, %0
  br label %42

42:                                               ; preds = %40, %23
  %43 = phi i64 [ %31, %40 ], [ %35, %23 ]
  %44 = phi i64 [ %41, %40 ], [ %37, %23 ]
  %45 = shl nuw i64 %28, 32
  %46 = or disjoint i64 %45, %43
  %47 = icmp ult i64 %44, %0
  br i1 %47, label %51, label %48, !prof !158

48:                                               ; preds = %42
  %49 = add i64 %46, 1
  %50 = sub i64 %44, %0
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi i64 [ %49, %48 ], [ %46, %42 ]
  %53 = phi i64 [ %50, %48 ], [ %44, %42 ]
  %54 = icmp eq i64 %1, 0
  br i1 %54, label %99, label %55, !prof !158

55:                                               ; preds = %51
  %56 = xor i64 %53, -1
  %57 = add i64 %56, %1
  %58 = icmp ult i64 %57, %1
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = icmp ult i64 %57, %0
  %61 = select i1 %60, i64 -1, i64 -2
  %62 = add i64 %61, %52
  %63 = select i1 %60, i64 0, i64 %0
  %64 = add i64 %63, %0
  %65 = sub i64 %57, %64
  br label %66

66:                                               ; preds = %55, %59
  %67 = phi i64 [ %62, %59 ], [ %52, %55 ]
  %68 = phi i64 [ %65, %59 ], [ %57, %55 ]
  %69 = lshr i64 %1, 32
  %70 = lshr i64 %67, 32
  %71 = and i64 %1, 4294967295
  %72 = and i64 %67, 4294967295
  %73 = mul nuw i64 %72, %71
  %74 = mul nuw i64 %70, %71
  %75 = mul nuw i64 %72, %69
  %76 = mul nuw i64 %70, %69
  %77 = lshr i64 %73, 32
  %78 = add i64 %75, %74
  %79 = add i64 %78, %77
  %80 = icmp ult i64 %79, %75
  %81 = add nuw i64 %76, 4294967296
  %82 = select i1 %80, i64 %81, i64 %76
  %83 = lshr i64 %79, 32
  %84 = add i64 %82, %83
  %85 = add i64 %84, %68
  %86 = icmp ult i64 %85, %84
  br i1 %86, label %87, label %99

87:                                               ; preds = %66
  %88 = shl i64 %79, 32
  %89 = and i64 %73, 4294967295
  %90 = or disjoint i64 %88, %89
  %91 = add i64 %67, -1
  %92 = icmp ugt i64 %85, %0
  %93 = icmp eq i64 %85, %0
  %94 = icmp ugt i64 %90, %1
  %95 = and i1 %94, %93
  %96 = or i1 %92, %95
  %97 = sext i1 %96 to i64
  %98 = add i64 %91, %97
  br label %99

99:                                               ; preds = %66, %87, %51
  %100 = phi i64 [ %52, %51 ], [ %98, %87 ], [ %67, %66 ]
  ret i64 %100
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpn_get_str(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 !prof !101 {
  %5 = alloca %struct.mpn_base_info, align 8
  %6 = tail call fastcc i32 @mpn_base_power_of_two_p(i32 noundef %1) #30, !range !159
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i64 @mpn_get_str_bits(ptr noundef %0, i32 noundef %6, ptr noundef %2, i64 noundef %3) #30
  br label %13

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #35
  %11 = sext i32 %1 to i64
  call fastcc void @mpn_get_base_info(ptr noundef nonnull %5, i64 noundef %11) #30
  %12 = call fastcc i64 @mpn_get_str_other(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %2, i64 noundef %3) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #35
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i64 [ %9, %8 ], [ %12, %10 ]
  ret i64 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @mpn_base_power_of_two_p(i32 noundef %0) unnamed_addr #15 !prof !101 !PGOFuncName !160 {
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc i64 @mpn_get_str_bits(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #11 !prof !101 !PGOFuncName !161 {
  %5 = add nsw i64 %3, -1
  %6 = shl i64 %5, 6
  %7 = getelementptr inbounds i64, ptr %2, i64 %5
  %8 = load i64, ptr %7, align 8, !tbaa !116
  %9 = tail call fastcc i64 @mpn_limb_size_in_base_2(i64 noundef %8) #30, !range !162
  %10 = zext nneg i32 %1 to i64
  %11 = add nsw i64 %10, -1
  %12 = add i64 %11, %6
  %13 = add i64 %12, %9
  %14 = udiv i64 %13, %10
  %15 = icmp ult i64 %13, %10
  br i1 %15, label %50, label %16

16:                                               ; preds = %4
  %17 = shl nsw i32 -1, %1
  %18 = xor i32 %17, -1
  br label %19

19:                                               ; preds = %16, %41
  %20 = phi i64 [ %14, %16 ], [ %23, %41 ]
  %21 = phi i32 [ 0, %16 ], [ %43, %41 ]
  %22 = phi i64 [ 0, %16 ], [ %42, %41 ]
  %23 = add i64 %20, -1
  %24 = getelementptr inbounds i64, ptr %2, i64 %22
  %25 = load i64, ptr %24, align 8, !tbaa !116
  %26 = zext nneg i32 %21 to i64
  %27 = lshr i64 %25, %26
  %28 = add i32 %21, %1
  %29 = icmp ugt i32 %28, 63
  br i1 %29, label %30, label %41

30:                                               ; preds = %19
  %31 = add nsw i64 %22, 1
  %32 = icmp slt i64 %31, %3
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = add i32 %28, -64
  %35 = getelementptr inbounds i64, ptr %2, i64 %31
  %36 = load i64, ptr %35, align 8, !tbaa !116
  %37 = sub i32 %1, %34
  %38 = zext nneg i32 %37 to i64
  %39 = shl i64 %36, %38
  %40 = or i64 %39, %27
  br label %41

41:                                               ; preds = %33, %30, %19
  %42 = phi i64 [ %31, %33 ], [ %31, %30 ], [ %22, %19 ]
  %43 = phi i32 [ %34, %33 ], [ %28, %30 ], [ %28, %19 ]
  %44 = phi i64 [ %40, %33 ], [ %27, %30 ], [ %27, %19 ]
  %45 = trunc i64 %44 to i32
  %46 = and i32 %45, %18
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds i8, ptr %0, i64 %23
  store i8 %47, ptr %48, align 1, !tbaa !163
  %49 = icmp eq i64 %23, 0
  br i1 %49, label %50, label %19, !llvm.loop !164

50:                                               ; preds = %41, %4
  ret i64 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @mpn_get_base_info(ptr nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #16 !prof !101 !PGOFuncName !165 {
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %1)
  %4 = extractvalue { i64, i1 } %3, 1
  br i1 %4, label %12, label %5

5:                                                ; preds = %2, %5
  %6 = phi i32 [ %9, %5 ], [ 1, %2 ]
  %7 = phi i64 [ %8, %5 ], [ %1, %2 ]
  %8 = mul i64 %7, %1
  %9 = add i32 %6, 1
  %10 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %8)
  %11 = extractvalue { i64, i1 } %10, 1
  br i1 %11, label %12, label %5, !llvm.loop !166

12:                                               ; preds = %5, %2
  %13 = phi i64 [ %1, %2 ], [ %8, %5 ]
  %14 = phi i32 [ 1, %2 ], [ %9, %5 ]
  store i32 %14, ptr %0, align 8, !tbaa !167
  %15 = getelementptr inbounds %struct.mpn_base_info, ptr %0, i64 0, i32 1
  store i64 %13, ptr %15, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @mpn_get_str_other(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 !prof !101 !PGOFuncName !171 {
  %6 = alloca %struct.gmp_div_inverse, align 8
  %7 = alloca %struct.gmp_div_inverse, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #35
  %8 = sext i32 %1 to i64
  call fastcc void @mpn_div_qr_1_invert(ptr noundef nonnull %6, i64 noundef %8) #30
  %9 = icmp sgt i64 %4, 1
  br i1 %9, label %10, label %42

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #35
  %11 = getelementptr inbounds %struct.mpn_base_info, ptr %2, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !170
  call fastcc void @mpn_div_qr_1_invert(ptr noundef nonnull %7, i64 noundef %12) #30
  %13 = getelementptr i64, ptr %3, i64 -1
  br label %14

14:                                               ; preds = %38, %10
  %15 = phi i64 [ 0, %10 ], [ %39, %38 ]
  %16 = phi i64 [ %4, %10 ], [ %22, %38 ]
  %17 = call fastcc i64 @mpn_div_qr_1_preinv(ptr noundef %3, ptr noundef %3, i64 noundef %16, ptr noundef nonnull %7) #30
  %18 = getelementptr i64, ptr %13, i64 %16
  %19 = load i64, ptr %18, align 8, !tbaa !116
  %20 = icmp eq i64 %19, 0
  %21 = sext i1 %20 to i64
  %22 = add nsw i64 %16, %21
  %23 = getelementptr inbounds i8, ptr %0, i64 %15
  %24 = call fastcc i64 @mpn_limb_get_str(ptr noundef %23, i64 noundef %17, ptr noundef nonnull %6) #30
  %25 = add i64 %24, %15
  %26 = load i32, ptr %2, align 8, !tbaa !167
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %14, %29
  %30 = phi i64 [ %34, %29 ], [ %24, %14 ]
  %31 = phi i64 [ %32, %29 ], [ %25, %14 ]
  %32 = add i64 %31, 1
  %33 = getelementptr inbounds i8, ptr %0, i64 %31
  store i8 0, ptr %33, align 1, !tbaa !163
  %34 = add nuw nsw i64 %30, 1
  %35 = load i32, ptr %2, align 8, !tbaa !167
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %29, label %38, !llvm.loop !172

38:                                               ; preds = %29, %14
  %39 = phi i64 [ %25, %14 ], [ %32, %29 ]
  %40 = icmp sgt i64 %22, 1
  br i1 %40, label %14, label %41, !llvm.loop !173

41:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #35
  br label %42

42:                                               ; preds = %41, %5
  %43 = phi i64 [ %39, %41 ], [ 0, %5 ]
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  %45 = load i64, ptr %3, align 8, !tbaa !116
  %46 = call fastcc i64 @mpn_limb_get_str(ptr noundef %44, i64 noundef %45, ptr noundef nonnull %6) #30
  %47 = add i64 %46, %43
  %48 = icmp ugt i64 %47, 1
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = getelementptr i8, ptr %0, i64 %47
  %51 = add i64 %47, -2
  %52 = lshr i64 %51, 1
  br label %53

53:                                               ; preds = %49, %53
  %54 = phi i64 [ 0, %49 ], [ %60, %53 ]
  %55 = getelementptr inbounds i8, ptr %0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !163
  %57 = xor i64 %54, -1
  %58 = getelementptr i8, ptr %50, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !163
  store i8 %59, ptr %55, align 1, !tbaa !163
  store i8 %56, ptr %58, align 1, !tbaa !163
  %60 = add nuw nsw i64 %54, 1
  %61 = icmp eq i64 %54, %52
  br i1 %61, label %62, label %53, !llvm.loop !174

62:                                               ; preds = %53, %42
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #35
  ret i64 %47
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @mpn_limb_size_in_base_2(i64 noundef %0) unnamed_addr #17 !prof !175 !PGOFuncName !176 {
  %2 = icmp ult i64 %0, 72057594037927936
  br i1 %2, label %7, label %3, !prof !177

3:                                                ; preds = %7, %1
  %4 = phi i64 [ %0, %1 ], [ %10, %7 ]
  %5 = phi i32 [ 0, %1 ], [ %11, %7 ]
  %6 = icmp sgt i64 %4, -1
  br i1 %6, label %13, label %19, !prof !177

7:                                                ; preds = %1, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %1 ]
  %9 = phi i64 [ %10, %7 ], [ %0, %1 ]
  %10 = shl nuw i64 %9, 8
  %11 = add i32 %8, 8
  %12 = icmp ult i64 %9, 281474976710656
  br i1 %12, label %7, label %3, !prof !178, !llvm.loop !179

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ %5, %3 ]
  %15 = phi i64 [ %16, %13 ], [ %4, %3 ]
  %16 = shl nuw i64 %15, 1
  %17 = add i32 %14, 1
  %18 = icmp sgt i64 %16, -1
  br i1 %18, label %13, label %19, !prof !180, !llvm.loop !181

19:                                               ; preds = %13, %3
  %20 = phi i32 [ %5, %3 ], [ %17, %13 ]
  %21 = zext i32 %20 to i64
  %22 = sub nsw i64 64, %21
  ret i64 %22
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @mpn_div_qr_1_invert(ptr nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #16 !prof !148 !PGOFuncName !182 {
  %3 = icmp ult i64 %1, 72057594037927936
  br i1 %3, label %8, label %4, !prof !149

4:                                                ; preds = %8, %2
  %5 = phi i64 [ %1, %2 ], [ %11, %8 ]
  %6 = phi i32 [ 0, %2 ], [ %12, %8 ]
  %7 = icmp sgt i64 %5, -1
  br i1 %7, label %14, label %20, !prof !149

8:                                                ; preds = %2, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %2 ]
  %10 = phi i64 [ %11, %8 ], [ %1, %2 ]
  %11 = shl nuw i64 %10, 8
  %12 = add i32 %9, 8
  %13 = icmp ult i64 %10, 281474976710656
  br i1 %13, label %8, label %4, !prof !183, !llvm.loop !184

14:                                               ; preds = %4, %14
  %15 = phi i32 [ %18, %14 ], [ %6, %4 ]
  %16 = phi i64 [ %17, %14 ], [ %5, %4 ]
  %17 = shl nuw i64 %16, 1
  %18 = add i32 %15, 1
  %19 = icmp sgt i64 %17, -1
  br i1 %19, label %14, label %20, !prof !185, !llvm.loop !186

20:                                               ; preds = %14, %4
  %21 = phi i32 [ %6, %4 ], [ %18, %14 ]
  store i32 %21, ptr %0, align 8, !tbaa !187
  %22 = zext nneg i32 %21 to i64
  %23 = shl i64 %1, %22
  %24 = getelementptr inbounds %struct.gmp_div_inverse, ptr %0, i64 0, i32 1
  store i64 %23, ptr %24, align 8, !tbaa !189
  %25 = tail call i64 @mpn_invert_3by2(i64 noundef %23, i64 noundef 0) #30
  %26 = getelementptr inbounds %struct.gmp_div_inverse, ptr %0, i64 0, i32 3
  store i64 %25, ptr %26, align 8, !tbaa !190
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @mpn_div_qr_1_preinv(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 !prof !148 !PGOFuncName !191 {
  %5 = load i32, ptr %3, align 8, !tbaa !187
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !157

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gmp_xalloc_limbs(i64 noundef %2) #30
  %9 = load i32, ptr %3, align 8, !tbaa !187
  %10 = tail call i64 @mpn_lshift(ptr noundef %8, ptr noundef %1, i64 noundef %2, i32 noundef %9) #30
  br label %11

11:                                               ; preds = %4, %7
  %12 = phi ptr [ %8, %7 ], [ null, %4 ]
  %13 = phi i64 [ %10, %7 ], [ 0, %4 ]
  %14 = phi ptr [ %8, %7 ], [ %1, %4 ]
  %15 = getelementptr inbounds %struct.gmp_div_inverse, ptr %3, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !189
  %17 = icmp sgt i64 %2, 0
  br i1 %17, label %18, label %73, !prof !149

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.gmp_div_inverse, ptr %3, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !190
  %21 = lshr i64 %20, 32
  %22 = and i64 %20, 4294967295
  %23 = icmp eq ptr %0, null
  br label %24

24:                                               ; preds = %18, %71
  %25 = phi i64 [ %2, %18 ], [ %27, %71 ]
  %26 = phi i64 [ %13, %18 ], [ %67, %71 ]
  %27 = add nsw i64 %25, -1
  %28 = lshr i64 %26, 32
  %29 = and i64 %26, 4294967295
  %30 = mul nuw i64 %29, %22
  %31 = mul nuw i64 %29, %21
  %32 = mul nuw i64 %28, %22
  %33 = mul nuw i64 %28, %21
  %34 = lshr i64 %30, 32
  %35 = add i64 %32, %31
  %36 = add i64 %35, %34
  %37 = icmp ult i64 %36, %32
  br i1 %37, label %38, label %40, !prof !157

38:                                               ; preds = %24
  %39 = add nuw i64 %33, 4294967296
  br label %40

40:                                               ; preds = %38, %24
  %41 = phi i64 [ %39, %38 ], [ %33, %24 ]
  %42 = lshr i64 %36, 32
  %43 = shl i64 %36, 32
  %44 = and i64 %30, 4294967295
  %45 = or disjoint i64 %43, %44
  %46 = getelementptr inbounds i64, ptr %14, i64 %27
  %47 = load i64, ptr %46, align 8, !tbaa !116
  %48 = add i64 %47, %45
  %49 = icmp ult i64 %48, %45
  %50 = zext i1 %49 to i64
  %51 = add i64 %26, 1
  %52 = add i64 %51, %42
  %53 = add i64 %52, %41
  %54 = add i64 %53, %50
  %55 = mul i64 %54, %16
  %56 = sub i64 %47, %55
  %57 = icmp ugt i64 %56, %48
  %58 = sext i1 %57 to i64
  %59 = add i64 %54, %58
  %60 = and i64 %16, %58
  %61 = add i64 %60, %56
  %62 = icmp ult i64 %61, %16
  br i1 %62, label %66, label %63, !prof !158

63:                                               ; preds = %40
  %64 = sub i64 %61, %16
  %65 = add i64 %59, 1
  br label %66

66:                                               ; preds = %63, %40
  %67 = phi i64 [ %64, %63 ], [ %61, %40 ]
  %68 = phi i64 [ %65, %63 ], [ %59, %40 ]
  br i1 %23, label %71, label %69, !prof !157

69:                                               ; preds = %66
  %70 = getelementptr inbounds i64, ptr %0, i64 %27
  store i64 %68, ptr %70, align 8, !tbaa !116
  br label %71

71:                                               ; preds = %69, %66
  %72 = icmp ugt i64 %25, 1
  br i1 %72, label %24, label %73, !prof !192, !llvm.loop !193

73:                                               ; preds = %71, %11
  %74 = phi i64 [ %13, %11 ], [ %67, %71 ]
  %75 = load i32, ptr %3, align 8, !tbaa !187
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77, !prof !157

77:                                               ; preds = %73
  %78 = load ptr, ptr @gmp_free_func, align 8, !tbaa !102
  tail call void %78(ptr noundef %12, i64 noundef 0) #34
  %79 = load i32, ptr %3, align 8, !tbaa !187
  %80 = zext nneg i32 %79 to i64
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i64 [ %80, %77 ], [ 0, %73 ]
  %83 = lshr i64 %74, %82
  ret i64 %83
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc i64 @mpn_limb_get_str(ptr nocapture noundef writeonly %0, i64 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !prof !101 !PGOFuncName !194 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %60, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gmp_div_inverse, ptr %2, i64 0, i32 3
  %7 = getelementptr inbounds %struct.gmp_div_inverse, ptr %2, i64 0, i32 1
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ %1, %5 ], [ %54, %8 ]
  %10 = phi i64 [ 0, %5 ], [ %58, %8 ]
  %11 = load i32, ptr %2, align 8, !tbaa !187
  %12 = zext i32 %11 to i64
  %13 = sub nsw i64 64, %12
  %14 = lshr i64 %9, %13
  %15 = shl i64 %9, %12
  %16 = load i64, ptr %6, align 8, !tbaa !190
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
  %42 = load i64, ptr %7, align 8, !tbaa !189
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
  store i8 %56, ptr %57, align 1, !tbaa !163
  %58 = add nuw nsw i64 %10, 1
  %59 = icmp eq i64 %54, 0
  br i1 %59, label %60, label %8, !llvm.loop !195

60:                                               ; preds = %8, %3
  %61 = phi i64 [ 0, %3 ], [ %58, %8 ]
  ret i64 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gmp_xalloc_limbs(i64 noundef %0) unnamed_addr #1 !prof !106 !PGOFuncName !196 {
  %2 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !102
  %3 = shl i64 %0, 3
  %4 = tail call ptr %2(i64 noundef %3) #34
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @mpn_set_str(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #14 !prof !101 {
  %5 = alloca %struct.mpn_base_info, align 8
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @mpn_base_power_of_two_p(i32 noundef %3) #30, !range !159
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc i64 @mpn_set_str_bits(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %8) #30
  br label %15

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #35
  %13 = sext i32 %3 to i64
  call fastcc void @mpn_get_base_info(ptr noundef nonnull %5, i64 noundef %13) #30
  %14 = call fastcc i64 @mpn_set_str_other(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %13, ptr noundef nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #35
  br label %15

15:                                               ; preds = %4, %12, %10
  %16 = phi i64 [ %11, %10 ], [ %14, %12 ], [ 0, %4 ]
  ret i64 %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc i64 @mpn_set_str_bits(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) unnamed_addr #11 !prof !101 !PGOFuncName !197 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %4, %37
  %7 = phi i64 [ %10, %37 ], [ %2, %4 ]
  %8 = phi i32 [ %39, %37 ], [ 0, %4 ]
  %9 = phi i64 [ %38, %37 ], [ 0, %4 ]
  %10 = add i64 %7, -1
  %11 = icmp eq i32 %8, 0
  %12 = getelementptr inbounds i8, ptr %1, i64 %10
  %13 = load i8, ptr %12, align 1, !tbaa !163
  %14 = zext i8 %13 to i64
  br i1 %11, label %15, label %18

15:                                               ; preds = %6
  %16 = add nsw i64 %9, 1
  %17 = getelementptr inbounds i64, ptr %0, i64 %9
  store i64 %14, ptr %17, align 8, !tbaa !116
  br label %37

18:                                               ; preds = %6
  %19 = zext nneg i32 %8 to i64
  %20 = shl i64 %14, %19
  %21 = getelementptr i64, ptr %0, i64 %9
  %22 = getelementptr i64, ptr %21, i64 -1
  %23 = load i64, ptr %22, align 8, !tbaa !116
  %24 = or i64 %20, %23
  store i64 %24, ptr %22, align 8, !tbaa !116
  %25 = add i32 %8, %3
  %26 = icmp ugt i32 %25, 63
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = add i32 %25, -64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load i8, ptr %12, align 1, !tbaa !163
  %32 = zext i8 %31 to i64
  %33 = sub i32 %3, %28
  %34 = zext nneg i32 %33 to i64
  %35 = lshr i64 %32, %34
  %36 = add nsw i64 %9, 1
  store i64 %35, ptr %21, align 8, !tbaa !116
  br label %37

37:                                               ; preds = %18, %30, %27, %15
  %38 = phi i64 [ %16, %15 ], [ %36, %30 ], [ %9, %27 ], [ %9, %18 ]
  %39 = phi i32 [ %3, %15 ], [ %28, %30 ], [ 0, %27 ], [ %25, %18 ]
  %40 = icmp eq i64 %10, 0
  br i1 %40, label %41, label %6, !llvm.loop !198

41:                                               ; preds = %37, %4
  %42 = phi i64 [ 0, %4 ], [ %38, %37 ]
  %43 = tail call fastcc i64 @mpn_normalized_size(ptr noundef %0, i64 noundef %42) #30
  ret i64 %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @mpn_set_str_other(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #14 !prof !101 !PGOFuncName !199 {
  %6 = add i64 %2, -1
  %7 = load i32, ptr %4, align 8, !tbaa !167
  %8 = zext i32 %7 to i64
  %9 = urem i64 %6, %8
  %10 = trunc i64 %9 to i32
  %11 = load i8, ptr %1, align 1, !tbaa !163
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
  %21 = load i8, ptr %20, align 1, !tbaa !163
  %22 = zext i8 %21 to i64
  %23 = add i64 %18, %22
  %24 = add i32 %15, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %14, !llvm.loop !200

26:                                               ; preds = %14, %5
  %27 = phi i64 [ %12, %5 ], [ %23, %14 ]
  %28 = phi i64 [ 1, %5 ], [ %19, %14 ]
  store i64 %27, ptr %0, align 8, !tbaa !116
  %29 = icmp ne i64 %27, 0
  %30 = zext i1 %29 to i64
  %31 = icmp ult i64 %28, %2
  br i1 %31, label %32, label %75

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.mpn_base_info, ptr %4, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %72
  %35 = phi i64 [ %28, %32 ], [ %63, %72 ]
  %36 = phi i64 [ %30, %32 ], [ %73, %72 ]
  %37 = getelementptr inbounds i8, ptr %1, i64 %35
  %38 = load i8, ptr %37, align 1, !tbaa !163
  %39 = zext i8 %38 to i64
  %40 = load i32, ptr %4, align 8, !tbaa !167
  %41 = add nuw i64 %35, 1
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
  %52 = load i8, ptr %51, align 1, !tbaa !163
  %53 = zext i8 %52 to i64
  %54 = add i64 %50, %53
  %55 = add nuw i32 %48, 1
  %56 = add i64 %47, 1
  %57 = icmp eq i32 %55, %40
  br i1 %57, label %58, label %46, !llvm.loop !201

58:                                               ; preds = %46
  %59 = add i64 %35, 2
  %60 = add i64 %59, %45
  br label %61

61:                                               ; preds = %58, %34
  %62 = phi i64 [ %39, %34 ], [ %54, %58 ]
  %63 = phi i64 [ %41, %34 ], [ %60, %58 ]
  %64 = load i64, ptr %33, align 8, !tbaa !170
  %65 = tail call i64 @mpn_mul_1(ptr noundef nonnull %0, ptr noundef nonnull %0, i64 noundef %36, i64 noundef %64) #30
  %66 = tail call i64 @mpn_add_1(ptr noundef nonnull %0, ptr noundef nonnull %0, i64 noundef %36, i64 noundef %62) #30, !range !135
  %67 = add i64 %66, %65
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = add nsw i64 %36, 1
  %71 = getelementptr inbounds i64, ptr %0, i64 %36
  store i64 %67, ptr %71, align 8, !tbaa !116
  br label %72

72:                                               ; preds = %69, %61
  %73 = phi i64 [ %70, %69 ], [ %36, %61 ]
  %74 = icmp ult i64 %63, %2
  br i1 %74, label %34, label %75, !llvm.loop !202

75:                                               ; preds = %72, %26
  %76 = phi i64 [ %30, %26 ], [ %73, %72 ]
  ret i64 %76
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i64 @mpn_normalized_size(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #12 !prof !203 !PGOFuncName !204 {
  %3 = getelementptr i64, ptr %0, i64 -1
  %4 = icmp sgt i64 %1, 0
  br i1 %4, label %5, label %13, !prof !205

5:                                                ; preds = %2, %10
  %6 = phi i64 [ %11, %10 ], [ %1, %2 ]
  %7 = getelementptr i64, ptr %3, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !116
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13, !prof !206

10:                                               ; preds = %5
  %11 = add nsw i64 %6, -1
  %12 = icmp sgt i64 %6, 1
  br i1 %12, label %5, label %13, !prof !207, !llvm.loop !208

13:                                               ; preds = %5, %10, %2
  %14 = phi i64 [ %1, %2 ], [ 0, %10 ], [ %6, %5 ]
  ret i64 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 !prof !209 {
  store i32 1, ptr %0, align 8, !tbaa !210
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !212
  %3 = tail call fastcc ptr @gmp_xalloc_limbs(i64 noundef 1) #30
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !213
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_init2(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #1 !prof !148 {
  %3 = icmp ne i64 %1, 0
  %4 = sext i1 %3 to i64
  %5 = add i64 %4, %1
  %6 = lshr i64 %5, 6
  %7 = add nuw nsw i64 %6, 1
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %0, align 8, !tbaa !210
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %9, align 4, !tbaa !212
  %10 = tail call fastcc ptr @gmp_xalloc_limbs(i64 noundef %7) #30
  %11 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !213
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_clear(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !214 {
  %2 = load ptr, ptr @gmp_free_func, align 8, !tbaa !102
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  tail call void %2(ptr noundef %4, i64 noundef 0) #34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @mpz_set_si(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #18 !prof !101 {
  %3 = icmp sgt i64 %1, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @mpz_set_ui(ptr noundef %0, i64 noundef %1) #30
  br label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 -1, ptr %6, align 4, !tbaa !212
  %7 = sub i64 0, %1
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !213
  store i64 %7, ptr %9, align 8, !tbaa !116
  br label %10

10:                                               ; preds = %5, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @mpz_set_ui(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #18 !prof !215 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %7, label %4, !prof !216

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !213
  store i64 %1, ptr %6, align 8, !tbaa !116
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i32 [ 1, %4 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %8, ptr %9, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_set(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 !prof !114 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %22, label %4, !prof !217

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !212
  %7 = tail call i32 @llvm.abs.i32(i32 %6, i1 true)
  %8 = zext nneg i32 %7 to i64
  %9 = load i32, ptr %0, align 8, !tbaa !210
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %13, !prof !218

11:                                               ; preds = %4
  %12 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %8) #30
  br label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !213
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %12, %11 ], [ %15, %13 ]
  %18 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !213
  tail call void @mpn_copyi(ptr noundef %17, ptr noundef %19, i64 noundef %8) #30
  %20 = load i32, ptr %5, align 4, !tbaa !212
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !212
  br label %22

22:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mpz_realloc(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #1 !prof !110 !PGOFuncName !219 {
  %3 = tail call i64 @llvm.smax.i64(i64 %1, i64 1)
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !213
  %6 = tail call fastcc ptr @gmp_xrealloc_limbs(ptr noundef %5, i64 noundef %3) #30
  store ptr %6, ptr %4, align 8, !tbaa !213
  %7 = trunc i64 %3 to i32
  store i32 %7, ptr %0, align 8, !tbaa !210
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !212
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11, !prof !220

11:                                               ; preds = %2
  %12 = sub nsw i32 0, %9
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi i32 [ %12, %11 ], [ %9, %2 ]
  %15 = zext nneg i32 %14 to i64
  %16 = icmp ult i64 %3, %15
  br i1 %16, label %17, label %18, !prof !112

17:                                               ; preds = %13
  store i32 0, ptr %8, align 4, !tbaa !212
  br label %18

18:                                               ; preds = %17, %13
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gmp_xrealloc_limbs(ptr noundef %0, i64 noundef %1) unnamed_addr #1 !prof !110 !PGOFuncName !221 {
  %3 = load ptr, ptr @gmp_reallocate_func, align 8, !tbaa !102
  %4 = shl i64 %1, 3
  %5 = tail call ptr %3(ptr noundef %0, i64 noundef 0, i64 noundef %4) #34
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_init_set_si(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !101 {
  tail call void @mpz_init(ptr noundef %0) #30
  tail call void @mpz_set_si(ptr noundef %0, i64 noundef %1) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_init_set_ui(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !101 {
  tail call void @mpz_init(ptr noundef %0) #30
  tail call void @mpz_set_ui(ptr noundef %0, i64 noundef %1) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_init_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !222 {
  tail call void @mpz_init(ptr noundef %0) #30
  tail call void @mpz_set(ptr noundef %0, ptr noundef %1) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_fits_slong_p(ptr nocapture noundef readonly %0) local_unnamed_addr #19 !prof !101 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !212
  switch i32 %3, label %14 [
    i32 0, label %15
    i32 1, label %4
    i32 -1, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !213
  %7 = load i64, ptr %6, align 8, !tbaa !116
  %8 = icmp sgt i64 %7, -1
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !213
  %12 = load i64, ptr %11, align 8, !tbaa !116
  %13 = icmp ult i64 %12, -9223372036854775807
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %1, %14, %9, %4
  %16 = phi i1 [ %8, %4 ], [ %13, %9 ], [ false, %14 ], [ true, %1 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @mpz_fits_ulong_p(ptr nocapture noundef readonly %0) local_unnamed_addr #20 !prof !101 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !212
  %4 = sext i32 %3 to i64
  %5 = icmp sgt i32 %3, 0
  %6 = zext i1 %5 to i64
  %7 = icmp eq i64 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mpz_get_si(ptr nocapture noundef readonly %0) local_unnamed_addr #19 !prof !101 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !212
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !213
  %8 = load i64, ptr %7, align 8, !tbaa !116
  %9 = and i64 %8, 9223372036854775807
  br label %18

10:                                               ; preds = %1
  %11 = icmp slt i32 %3, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !213
  %15 = load i64, ptr %14, align 8, !tbaa !116
  %16 = sub i64 0, %15
  %17 = or i64 %16, -9223372036854775808
  br label %18

18:                                               ; preds = %10, %12, %5
  %19 = phi i64 [ %9, %5 ], [ %17, %12 ], [ 0, %10 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mpz_get_ui(ptr nocapture noundef readonly %0) local_unnamed_addr #19 !prof !101 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !212
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !213
  %8 = load i64, ptr %7, align 8, !tbaa !116
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i64 [ %8, %5 ], [ 0, %1 ]
  ret i64 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @mpz_size(ptr nocapture noundef readonly %0) local_unnamed_addr #20 !prof !101 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !212
  %4 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %5 = zext nneg i32 %4 to i64
  ret i64 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mpz_getlimbn(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #19 !prof !101 {
  %3 = icmp sgt i64 %1, -1
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !212
  %7 = tail call i32 @llvm.abs.i32(i32 %6, i1 true)
  %8 = zext nneg i32 %7 to i64
  %9 = icmp ugt i64 %8, %1
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !213
  %13 = getelementptr inbounds i64, ptr %12, i64 %1
  %14 = load i64, ptr %13, align 8, !tbaa !116
  br label %15

15:                                               ; preds = %2, %4, %10
  %16 = phi i64 [ %14, %10 ], [ 0, %4 ], [ 0, %2 ]
  ret i64 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_realloc2(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = icmp ne i64 %1, 0
  %4 = sext i1 %3 to i64
  %5 = add i64 %4, %1
  %6 = lshr i64 %5, 6
  %7 = add nuw nsw i64 %6, 1
  %8 = tail call fastcc ptr @mpz_realloc(ptr noundef %0, i64 noundef %7) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @mpz_limbs_read(ptr nocapture noundef readonly %0) local_unnamed_addr #20 !prof !101 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !213
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mpz_limbs_modify(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = load i32, ptr %0, align 8, !tbaa !210
  %4 = sext i32 %3 to i64
  %5 = icmp slt i64 %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %1) #30
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !213
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %7, %6 ], [ %10, %8 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mpz_limbs_write(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = tail call ptr @mpz_limbs_modify(ptr noundef %0, i64 noundef %1) #30
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @mpz_limbs_finish(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #21 !prof !101 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  %5 = tail call i64 @llvm.abs.i64(i64 %1, i1 true)
  %6 = tail call fastcc i64 @mpn_normalized_size(ptr noundef %4, i64 noundef %5) #30
  %7 = icmp slt i64 %1, 0
  %8 = sub nsw i64 0, %6
  %9 = select i1 %7, i64 %8, i64 %6
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !212
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @mpz_roinit_n(ptr noundef returned %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #21 !prof !101 {
  store i32 0, ptr %0, align 8, !tbaa !210
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !213
  tail call void @mpz_limbs_finish(ptr noundef nonnull %0, i64 noundef %2) #30
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_set_d(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = fcmp uno double %1, 0.000000e+00
  %4 = fmul double %1, 5.000000e-01
  %5 = fcmp oeq double %4, %1
  %6 = or i1 %3, %5
  br i1 %6, label %54, label %7

7:                                                ; preds = %2
  %8 = fcmp olt double %1, 0.000000e+00
  %9 = fneg double %1
  %10 = select i1 %8, double %9, double %1
  %11 = fcmp olt double %10, 1.000000e+00
  br i1 %11, label %54, label %12

12:                                               ; preds = %7
  %13 = fcmp ult double %10, 0x43F0000000000000
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %14
  %15 = phi double [ %17, %14 ], [ %10, %12 ]
  %16 = phi i64 [ %18, %14 ], [ 1, %12 ]
  %17 = fmul double %15, 0x3BF0000000000000
  %18 = add nuw nsw i64 %16, 1
  %19 = fcmp ult double %17, 0x43F0000000000000
  br i1 %19, label %20, label %14, !llvm.loop !223

20:                                               ; preds = %14, %12
  %21 = phi i64 [ 1, %12 ], [ %18, %14 ]
  %22 = phi double [ %10, %12 ], [ %17, %14 ]
  %23 = load i32, ptr %0, align 8, !tbaa !210
  %24 = sext i32 %23 to i64
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %21) #30
  br label %31

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !213
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi ptr [ %27, %26 ], [ %30, %28 ]
  %33 = fptoui double %22 to i64
  %34 = add nsw i64 %21, -1
  %35 = getelementptr inbounds i64, ptr %32, i64 %34
  store i64 %33, ptr %35, align 8, !tbaa !116
  %36 = icmp sgt i64 %21, 1
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = uitofp i64 %33 to double
  %39 = fsub double %22, %38
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi double [ %47, %40 ], [ %39, %37 ]
  %42 = phi i64 [ %43, %40 ], [ %34, %37 ]
  %43 = add nsw i64 %42, -1
  %44 = fmul double %41, 0x43F0000000000000
  %45 = fptoui double %44 to i64
  %46 = uitofp i64 %45 to double
  %47 = fsub double %44, %46
  %48 = getelementptr inbounds i64, ptr %32, i64 %43
  store i64 %45, ptr %48, align 8, !tbaa !116
  %49 = icmp ugt i64 %42, 1
  br i1 %49, label %40, label %50, !llvm.loop !224

50:                                               ; preds = %40, %31
  %51 = sub nsw i64 0, %21
  %52 = select i1 %8, i64 %51, i64 %21
  %53 = trunc i64 %52 to i32
  br label %54

54:                                               ; preds = %7, %2, %50
  %55 = phi i32 [ %53, %50 ], [ 0, %2 ], [ 0, %7 ]
  %56 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %55, ptr %56, align 4, !tbaa !212
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_init_set_d(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #1 !prof !101 {
  tail call void @mpz_init(ptr noundef %0) #30
  tail call void @mpz_set_d(ptr noundef %0, double noundef %1) #30
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local double @mpz_get_d(ptr nocapture noundef readonly %0) local_unnamed_addr #22 !prof !101 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !212
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !213
  %10 = add nsw i64 %7, -1
  %11 = getelementptr inbounds i64, ptr %9, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !116
  %13 = uitofp i64 %12 to double
  %14 = icmp ugt i32 %6, 1
  br i1 %14, label %15, label %24

15:                                               ; preds = %5, %15
  %16 = phi double [ %22, %15 ], [ %13, %5 ]
  %17 = phi i64 [ %18, %15 ], [ %10, %5 ]
  %18 = add nsw i64 %17, -1
  %19 = getelementptr inbounds i64, ptr %9, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !116
  %21 = uitofp i64 %20 to double
  %22 = tail call double @llvm.fmuladd.f64(double %16, double 0x43F0000000000000, double %21)
  %23 = icmp ugt i64 %17, 1
  br i1 %23, label %15, label %24, !llvm.loop !225

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
declare double @llvm.fmuladd.f64(double, double, double) #23

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_cmpabs_d(ptr nocapture noundef readonly %0, double noundef %1) local_unnamed_addr #22 !prof !101 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
  %5 = fcmp oge double %1, 0.000000e+00
  %6 = fneg double %1
  %7 = select i1 %5, double %1, double %6
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %40, label %9

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
  br i1 %18, label %19, label %13, !llvm.loop !226

19:                                               ; preds = %13, %9
  %20 = phi double [ %7, %9 ], [ %16, %13 ]
  %21 = fcmp ult double %20, 0x43F0000000000000
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !213
  br label %25

25:                                               ; preds = %22, %35
  %26 = phi i64 [ %11, %22 ], [ %28, %35 ]
  %27 = phi double [ %20, %22 ], [ %38, %35 ]
  %28 = add nsw i64 %26, -1
  %29 = fptoui double %27 to i64
  %30 = getelementptr inbounds i64, ptr %24, i64 %28
  %31 = load i64, ptr %30, align 8, !tbaa !116
  %32 = icmp ugt i64 %31, %29
  br i1 %32, label %44, label %33

33:                                               ; preds = %25
  %34 = icmp ult i64 %31, %29
  br i1 %34, label %44, label %35

35:                                               ; preds = %33
  %36 = uitofp i64 %29 to double
  %37 = fsub double %27, %36
  %38 = fmul double %37, 0x43F0000000000000
  %39 = icmp sgt i64 %26, 1
  br i1 %39, label %25, label %40, !llvm.loop !227

40:                                               ; preds = %35, %2
  %41 = phi double [ %7, %2 ], [ %38, %35 ]
  %42 = fcmp ogt double %41, 0.000000e+00
  %43 = sext i1 %42 to i32
  br label %44

44:                                               ; preds = %33, %25, %19, %40
  %45 = phi i32 [ %43, %40 ], [ -1, %19 ], [ 1, %25 ], [ -1, %33 ]
  ret i32 %45
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_cmp_d(ptr nocapture noundef readonly %0, double noundef %1) local_unnamed_addr #22 !prof !101 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = fcmp ult double %1, 0.000000e+00
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = tail call i32 @mpz_cmpabs_d(ptr noundef nonnull %0, double noundef %1) #30
  %10 = sub nsw i32 0, %9
  br label %15

11:                                               ; preds = %2
  %12 = fcmp olt double %1, 0.000000e+00
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @mpz_cmpabs_d(ptr noundef nonnull %0, double noundef %1) #30
  br label %15

15:                                               ; preds = %11, %6, %13, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %13 ], [ -1, %6 ], [ 1, %11 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @mpz_sgn(ptr nocapture noundef readonly %0) local_unnamed_addr #20 !prof !228 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !212
  %4 = ashr i32 %3, 31
  %5 = icmp ne i32 %3, 0
  %6 = zext i1 %5 to i32
  %7 = or i32 %4, %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_cmp_si(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #19 !prof !101 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
  %5 = icmp slt i32 %4, -1
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i64 %1, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 @mpz_cmp_ui(ptr noundef nonnull %0, i64 noundef %1) #30, !range !229
  br label %21

10:                                               ; preds = %6
  %11 = icmp sgt i32 %4, -1
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !213
  %15 = load i64, ptr %14, align 8, !tbaa !116
  %16 = sub i64 0, %1
  %17 = icmp ugt i64 %15, %16
  %18 = icmp ult i64 %15, %16
  %19 = zext i1 %18 to i32
  %20 = select i1 %17, i32 -1, i32 %19
  br label %21

21:                                               ; preds = %10, %2, %12, %8
  %22 = phi i32 [ %9, %8 ], [ %20, %12 ], [ -1, %2 ], [ 1, %10 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_cmp_ui(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #19 !prof !101 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
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
  %12 = load ptr, ptr %11, align 8, !tbaa !213
  %13 = load i64, ptr %12, align 8, !tbaa !116
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #22 !prof !230 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = icmp eq i32 %4, %7
  br i1 %8, label %12, label %9, !prof !231

9:                                                ; preds = %2
  %10 = icmp slt i32 %4, %7
  %11 = select i1 %10, i32 -1, i32 1
  br label %27

12:                                               ; preds = %2
  %13 = icmp sgt i32 %4, -1
  br i1 %13, label %14, label %20, !prof !232

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !213
  %17 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !213
  %19 = tail call i32 @mpn_cmp(ptr noundef %16, ptr noundef %18, i64 noundef %5) #30, !range !229
  br label %27

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !213
  %23 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !213
  %25 = sub nsw i64 0, %5
  %26 = tail call i32 @mpn_cmp(ptr noundef %22, ptr noundef %24, i64 noundef %25) #30, !range !229
  br label %27

27:                                               ; preds = %20, %14, %9
  %28 = phi i32 [ %11, %9 ], [ %19, %14 ], [ %26, %20 ]
  ret i32 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_cmpabs_ui(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #19 !prof !101 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
  %5 = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %5, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !213
  %12 = load i64, ptr %11, align 8, !tbaa !116
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_cmpabs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #22 !prof !101 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !212
  %7 = tail call i32 @llvm.abs.i32(i32 %6, i1 true)
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !213
  %10 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !212
  %12 = tail call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = zext nneg i32 %7 to i64
  %14 = zext nneg i32 %12 to i64
  %15 = tail call fastcc i32 @mpn_cmp4(ptr noundef %4, i64 noundef %13, ptr noundef %9, i64 noundef %14) #30, !range !229
  ret i32 %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @mpn_cmp4(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #12 !prof !233 !PGOFuncName !234 {
  %5 = icmp eq i64 %1, %3
  br i1 %5, label %9, label %6, !prof !235

6:                                                ; preds = %4
  %7 = icmp slt i64 %1, %3
  %8 = select i1 %7, i32 -1, i32 1
  br label %11

9:                                                ; preds = %4
  %10 = tail call i32 @mpn_cmp(ptr noundef %0, ptr noundef %2, i64 noundef %1) #30, !range !229
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_abs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @mpz_set(ptr noundef %0, ptr noundef %1) #30
  br label %5

5:                                                ; preds = %4, %2
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = tail call i32 @llvm.abs.i32(i32 %7, i1 true)
  store i32 %8, ptr %6, align 4, !tbaa !212
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_neg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !236 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %5, label %4, !prof !237

4:                                                ; preds = %2
  tail call void @mpz_set(ptr noundef %0, ptr noundef %1) #30
  br label %5

5:                                                ; preds = %4, %2
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = sub nsw i32 0, %7
  store i32 %8, ptr %6, align 4, !tbaa !212
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mpz_swap(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #24 !prof !238 {
  %3 = load <2 x i32>, ptr %1, align 8, !tbaa !239
  %4 = load <2 x i32>, ptr %0, align 8, !tbaa !239
  store <2 x i32> %3, ptr %0, align 8, !tbaa !239
  store <2 x i32> %4, ptr %1, align 8, !tbaa !239
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !213
  %7 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !213
  store ptr %8, ptr %5, align 8, !tbaa !213
  store ptr %6, ptr %7, align 8, !tbaa !213
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_add_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !240 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %10, !prof !241

7:                                                ; preds = %3
  %8 = tail call fastcc i64 @mpz_abs_add_ui(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2) #30, !range !242
  %9 = trunc i64 %8 to i32
  br label %14

10:                                               ; preds = %3
  %11 = tail call fastcc i64 @mpz_abs_sub_ui(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2) #30
  %12 = trunc i64 %11 to i32
  %13 = sub i32 0, %12
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ %9, %7 ], [ %13, %10 ]
  %16 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %15, ptr %16, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @mpz_abs_add_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #1 !prof !243 !PGOFuncName !244 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %9, label %14, !prof !245

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !213
  store i64 %2, ptr %11, align 8, !tbaa !116
  %12 = icmp ne i64 %2, 0
  %13 = zext i1 %12 to i64
  br label %30

14:                                               ; preds = %3
  %15 = load i32, ptr %0, align 8, !tbaa !210
  %16 = icmp slt i32 %6, %15
  br i1 %16, label %20, label %17, !prof !246

17:                                               ; preds = %14
  %18 = add nuw nsw i64 %7, 1
  %19 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %18) #30
  br label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !213
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %19, %17 ], [ %22, %20 ]
  %25 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !213
  %27 = tail call i64 @mpn_add_1(ptr noundef %24, ptr noundef %26, i64 noundef %7, i64 noundef %2) #30, !range !135
  %28 = getelementptr inbounds i64, ptr %24, i64 %7
  store i64 %27, ptr %28, align 8, !tbaa !116
  %29 = add nuw nsw i64 %27, %7
  br label %30

30:                                               ; preds = %23, %9
  %31 = phi i64 [ %13, %9 ], [ %29, %23 ]
  ret i64 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @mpz_abs_sub_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #1 !prof !247 !PGOFuncName !248 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = load i32, ptr %0, align 8, !tbaa !210
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %12, !prof !249

10:                                               ; preds = %3
  %11 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %7) #30
  br label %15

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !213
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi ptr [ %11, %10 ], [ %14, %12 ]
  switch i32 %6, label %17 [
    i32 0, label %20
    i32 1, label %23
  ], !prof !250

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !213
  br label %30

20:                                               ; preds = %15
  store i64 %2, ptr %16, align 8, !tbaa !116
  %21 = icmp ne i64 %2, 0
  %22 = sext i1 %21 to i64
  br label %34

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !213
  %26 = load i64, ptr %25, align 8, !tbaa !116
  %27 = icmp ult i64 %26, %2
  br i1 %27, label %28, label %30, !prof !251

28:                                               ; preds = %23
  %29 = sub i64 %2, %26
  store i64 %29, ptr %16, align 8, !tbaa !116
  br label %34

30:                                               ; preds = %17, %23
  %31 = phi ptr [ %19, %17 ], [ %25, %23 ]
  %32 = tail call i64 @mpn_sub_1(ptr noundef %16, ptr noundef %31, i64 noundef %7, i64 noundef %2) #30, !range !135
  %33 = tail call fastcc i64 @mpn_normalized_size(ptr noundef %16, i64 noundef %7) #30
  br label %34

34:                                               ; preds = %30, %28, %20
  %35 = phi i64 [ %22, %20 ], [ -1, %28 ], [ %33, %30 ]
  ret i64 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_sub_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !252 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %11, !prof !253

7:                                                ; preds = %3
  %8 = tail call fastcc i64 @mpz_abs_add_ui(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2) #30, !range !242
  %9 = trunc i64 %8 to i32
  %10 = sub i32 0, %9
  br label %14

11:                                               ; preds = %3
  %12 = tail call fastcc i64 @mpz_abs_sub_ui(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2) #30
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi i32 [ %10, %7 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %15, ptr %16, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_ui_sub(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call fastcc i64 @mpz_abs_add_ui(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %1) #30, !range !242
  %9 = trunc i64 %8 to i32
  br label %14

10:                                               ; preds = %3
  %11 = tail call fastcc i64 @mpz_abs_sub_ui(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %1) #30
  %12 = trunc i64 %11 to i32
  %13 = sub i32 0, %12
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ %9, %7 ], [ %13, %10 ]
  %16 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %15, ptr %16, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !254 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = xor i32 %7, %5
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %12, !prof !255

10:                                               ; preds = %3
  %11 = tail call fastcc i64 @mpz_abs_add(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #30, !range !256
  br label %14

12:                                               ; preds = %3
  %13 = tail call fastcc i64 @mpz_abs_sub(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #30
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  %16 = load i32, ptr %4, align 4, !tbaa !212
  %17 = sub nsw i64 0, %15
  %18 = icmp slt i32 %16, 0
  %19 = select i1 %18, i64 %17, i64 %15, !prof !257
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !212
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @mpz_abs_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !129 !PGOFuncName !258 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !212
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = zext nneg i32 %10 to i64
  %12 = icmp ult i32 %6, %10
  br i1 %12, label %13, label %14, !prof !259

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %3
  %15 = phi i64 [ %7, %13 ], [ %11, %3 ]
  %16 = phi i64 [ %11, %13 ], [ %7, %3 ]
  %17 = phi ptr [ %1, %13 ], [ %2, %3 ]
  %18 = phi ptr [ %2, %13 ], [ %1, %3 ]
  %19 = load i32, ptr %0, align 8, !tbaa !210
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %25, label %22, !prof !260

22:                                               ; preds = %14
  %23 = add nuw nsw i64 %16, 1
  %24 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %23) #30
  br label %28

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !213
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi ptr [ %24, %22 ], [ %27, %25 ]
  %30 = getelementptr inbounds %struct.__mpz_struct, ptr %18, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !213
  %32 = getelementptr inbounds %struct.__mpz_struct, ptr %17, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !213
  %34 = tail call i64 @mpn_add(ptr noundef %29, ptr noundef %31, i64 noundef %16, ptr noundef %33, i64 noundef %15) #30, !range !133
  %35 = getelementptr inbounds i64, ptr %29, i64 %16
  store i64 %34, ptr %35, align 8, !tbaa !116
  %36 = add nuw nsw i64 %34, %16
  ret i64 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @mpz_abs_sub(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !233 !PGOFuncName !261 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !212
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !213
  %14 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !213
  %16 = tail call fastcc i32 @mpn_cmp4(ptr noundef %13, i64 noundef %7, ptr noundef %15, i64 noundef %11) #30, !range !229
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %34, !prof !262

18:                                               ; preds = %3
  %19 = load i32, ptr %0, align 8, !tbaa !210
  %20 = icmp sgt i32 %6, %19
  br i1 %20, label %21, label %25, !prof !263

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %7) #30
  %23 = load ptr, ptr %12, align 8, !tbaa !213
  %24 = load ptr, ptr %14, align 8, !tbaa !213
  br label %28

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !213
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi ptr [ %24, %21 ], [ %15, %25 ]
  %30 = phi ptr [ %23, %21 ], [ %13, %25 ]
  %31 = phi ptr [ %22, %21 ], [ %27, %25 ]
  %32 = tail call i64 @mpn_sub(ptr noundef %31, ptr noundef %30, i64 noundef %7, ptr noundef %29, i64 noundef %11) #30, !range !133
  %33 = tail call fastcc i64 @mpn_normalized_size(ptr noundef %31, i64 noundef %7) #30
  br label %53

34:                                               ; preds = %3
  %35 = icmp slt i32 %16, 0
  br i1 %35, label %36, label %53, !prof !264

36:                                               ; preds = %34
  %37 = load i32, ptr %0, align 8, !tbaa !210
  %38 = icmp sgt i32 %10, %37
  br i1 %38, label %39, label %43, !prof !265

39:                                               ; preds = %36
  %40 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %11) #30
  %41 = load ptr, ptr %14, align 8, !tbaa !213
  %42 = load ptr, ptr %12, align 8, !tbaa !213
  br label %46

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !213
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi ptr [ %42, %39 ], [ %13, %43 ]
  %48 = phi ptr [ %41, %39 ], [ %15, %43 ]
  %49 = phi ptr [ %40, %39 ], [ %45, %43 ]
  %50 = tail call i64 @mpn_sub(ptr noundef %49, ptr noundef %48, i64 noundef %11, ptr noundef %47, i64 noundef %7) #30, !range !133
  %51 = tail call fastcc i64 @mpn_normalized_size(ptr noundef %49, i64 noundef %11) #30
  %52 = sub nsw i64 0, %51
  br label %53

53:                                               ; preds = %34, %46, %28
  %54 = phi i64 [ %33, %28 ], [ %52, %46 ], [ 0, %34 ]
  ret i64 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_sub(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !266 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = xor i32 %7, %5
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %12, !prof !267

10:                                               ; preds = %3
  %11 = tail call fastcc i64 @mpz_abs_sub(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #30
  br label %14

12:                                               ; preds = %3
  %13 = tail call fastcc i64 @mpz_abs_add(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #30, !range !256
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  %16 = load i32, ptr %4, align 4, !tbaa !212
  %17 = sub nsw i64 0, %15
  %18 = icmp slt i32 %16, 0
  %19 = select i1 %18, i64 %17, i64 %15, !prof !268
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !212
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_mul_si(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = sub i64 0, %2
  tail call void @mpz_mul_ui(ptr noundef %0, ptr noundef %1, i64 noundef %6) #30
  tail call void @mpz_neg(ptr noundef %0, ptr noundef %0) #30
  br label %8

7:                                                ; preds = %3
  tail call void @mpz_mul_ui(ptr noundef %0, ptr noundef %1, i64 noundef %2) #30
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_mul_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq i64 %2, 0
  %8 = or i1 %7, %6
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @llvm.abs.i32(i32 %5, i1 false)
  %11 = zext i32 %10 to i64
  %12 = load i32, ptr %0, align 8, !tbaa !210
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = add nuw nsw i64 %11, 1
  %17 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %16) #30
  br label %21

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !213
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %17, %15 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !213
  %25 = tail call i64 @mpn_mul_1(ptr noundef %22, ptr noundef %24, i64 noundef %11, i64 noundef %2) #30
  %26 = getelementptr inbounds i64, ptr %22, i64 %11
  store i64 %25, ptr %26, align 8, !tbaa !116
  %27 = icmp ne i64 %25, 0
  %28 = zext i1 %27 to i32
  %29 = add nuw i32 %10, %28
  %30 = icmp slt i32 %5, 0
  %31 = sub i32 0, %29
  %32 = select i1 %30, i32 %31, i32 %29
  br label %33

33:                                               ; preds = %3, %21
  %34 = phi i32 [ %32, %21 ], [ 0, %3 ]
  %35 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !212
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_mul(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !212
  %7 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !212
  %9 = icmp eq i32 %6, 0
  %10 = icmp eq i32 %8, 0
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %13, align 4, !tbaa !212
  br label %49

14:                                               ; preds = %3
  %15 = sext i32 %8 to i64
  %16 = sext i32 %6 to i64
  %17 = xor i64 %15, %16
  %18 = icmp slt i64 %17, 0
  %19 = tail call i64 @llvm.abs.i64(i64 %16, i1 true)
  %20 = tail call i64 @llvm.abs.i64(i64 %15, i1 true)
  %21 = add nuw nsw i64 %20, %19
  %22 = shl nuw nsw i64 %21, 6
  call void @mpz_init2(ptr noundef nonnull %4, i64 noundef %22) #30
  %23 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !213
  %25 = icmp ult i64 %19, %20
  br i1 %25, label %32, label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !213
  %29 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !213
  %31 = tail call i64 @mpn_mul(ptr noundef %24, ptr noundef %28, i64 noundef %19, ptr noundef %30, i64 noundef %20) #30
  br label %38

32:                                               ; preds = %14
  %33 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !213
  %35 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !213
  %37 = tail call i64 @mpn_mul(ptr noundef %24, ptr noundef %34, i64 noundef %20, ptr noundef %36, i64 noundef %19) #30
  br label %38

38:                                               ; preds = %32, %26
  %39 = getelementptr i64, ptr %24, i64 %21
  %40 = getelementptr i64, ptr %39, i64 -1
  %41 = load i64, ptr %40, align 8, !tbaa !116
  %42 = icmp eq i64 %41, 0
  %43 = sext i1 %42 to i64
  %44 = add nsw i64 %21, %43
  %45 = sub nsw i64 0, %44
  %46 = select i1 %18, i64 %45, i64 %44
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  store i32 %47, ptr %48, align 4, !tbaa !212
  call void @mpz_swap(ptr noundef %0, ptr noundef nonnull %4) #30
  call void @mpz_clear(ptr noundef nonnull %4) #30
  br label %49

49:                                               ; preds = %38, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_mul_2exp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %3
  %10 = lshr i64 %2, 6
  %11 = trunc i64 %2 to i32
  %12 = and i32 %11, 63
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = add nuw nsw i64 %10, %14
  %16 = add nuw nsw i64 %15, %7
  %17 = load i32, ptr %0, align 8, !tbaa !210
  %18 = sext i32 %17 to i64
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %16) #30
  br label %25

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !213
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %21, %20 ], [ %24, %22 ]
  %27 = getelementptr inbounds i64, ptr %26, i64 %10
  %28 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !213
  br i1 %13, label %30, label %37

30:                                               ; preds = %25
  %31 = tail call i64 @mpn_lshift(ptr noundef %27, ptr noundef %29, i64 noundef %7, i32 noundef %12) #30
  %32 = add nsw i64 %16, -1
  %33 = getelementptr inbounds i64, ptr %26, i64 %32
  store i64 %31, ptr %33, align 8, !tbaa !116
  %34 = icmp eq i64 %31, 0
  %35 = sext i1 %34 to i64
  %36 = add nsw i64 %16, %35
  br label %38

37:                                               ; preds = %25
  tail call void @mpn_copyd(ptr noundef %27, ptr noundef %29, i64 noundef %7) #30
  br label %38

38:                                               ; preds = %37, %30
  %39 = phi i64 [ %36, %30 ], [ %16, %37 ]
  %40 = icmp ult i64 %2, 64
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = tail call i64 @llvm.smin.i64(i64 %10, i64 1)
  %43 = shl nuw nsw i64 %42, 3
  %44 = add nsw i64 %43, -8
  %45 = getelementptr i8, ptr %26, i64 %44
  %46 = tail call i64 @llvm.smax.i64(i64 %10, i64 1)
  %47 = shl nuw nsw i64 %46, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %45, i8 0, i64 %47, i1 false), !tbaa !116
  br label %48

48:                                               ; preds = %41, %38
  %49 = load i32, ptr %4, align 4, !tbaa !212
  %50 = icmp slt i32 %49, 0
  %51 = sub nsw i64 0, %39
  %52 = select i1 %50, i64 %51, i64 %39
  %53 = trunc i64 %52 to i32
  br label %54

54:                                               ; preds = %3, %48
  %55 = phi i32 [ %53, %48 ], [ 0, %3 ]
  %56 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %55, ptr %56, align 4, !tbaa !212
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_addmul_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  call void @mpz_init(ptr noundef nonnull %4) #30
  call void @mpz_mul_ui(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %2) #30
  call void @mpz_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #30
  call void @mpz_clear(ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_submul_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  call void @mpz_init(ptr noundef nonnull %4) #30
  call void @mpz_mul_ui(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %2) #30
  call void @mpz_sub(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #30
  call void @mpz_clear(ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_addmul(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  call void @mpz_init(ptr noundef nonnull %4) #30
  call void @mpz_mul(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #30
  call void @mpz_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #30
  call void @mpz_clear(ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_submul(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  call void @mpz_init(ptr noundef nonnull %4) #30
  call void @mpz_mul(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #30
  call void @mpz_sub(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #30
  call void @mpz_clear(ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_cdiv_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 !prof !101 {
  %5 = tail call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1) #30, !range !269
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #1 !prof !148 !PGOFuncName !270 {
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !212
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !212
  %13 = sext i32 %12 to i64
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %16, !prof !157

15:                                               ; preds = %5
  tail call fastcc void @gmp_die(ptr noundef nonnull @.str.3) #30
  unreachable

16:                                               ; preds = %5
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %18, label %26, !prof !157

18:                                               ; preds = %16
  %19 = icmp eq ptr %0, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %21, align 4, !tbaa !212
  br label %22

22:                                               ; preds = %20, %18
  %23 = icmp eq ptr %1, null
  br i1 %23, label %132, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  store i32 0, ptr %25, align 4, !tbaa !212
  br label %132

26:                                               ; preds = %16
  %27 = icmp sgt i32 %9, -1
  br i1 %27, label %30, label %28, !prof !158

28:                                               ; preds = %26
  %29 = sub nsw i64 0, %10
  br label %30

30:                                               ; preds = %26, %28
  %31 = phi i64 [ %29, %28 ], [ %10, %26 ]
  %32 = icmp sgt i32 %12, -1
  br i1 %32, label %35, label %33, !prof !158

33:                                               ; preds = %30
  %34 = sub nsw i64 0, %13
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi i64 [ %34, %33 ], [ %13, %30 ]
  %37 = xor i64 %13, %10
  %38 = icmp slt i64 %31, %36
  br i1 %38, label %39, label %65, !prof !157

39:                                               ; preds = %35
  %40 = icmp eq i32 %4, 1
  %41 = icmp sgt i64 %37, -1
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = icmp eq ptr %1, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  tail call void @mpz_sub(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #30
  br label %46

46:                                               ; preds = %45, %43
  %47 = icmp eq ptr %0, null
  br i1 %47, label %132, label %48

48:                                               ; preds = %46
  tail call void @mpz_set_ui(ptr noundef nonnull %0, i64 noundef 1) #30
  br label %132

49:                                               ; preds = %39
  %50 = icmp eq i32 %4, 0
  %51 = icmp slt i64 %37, 0
  %52 = select i1 %50, i1 %51, i1 false
  %53 = icmp eq ptr %1, null
  br i1 %52, label %54, label %59

54:                                               ; preds = %49
  br i1 %53, label %56, label %55

55:                                               ; preds = %54
  tail call void @mpz_add(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #30
  br label %56

56:                                               ; preds = %55, %54
  %57 = icmp eq ptr %0, null
  br i1 %57, label %132, label %58

58:                                               ; preds = %56
  tail call void @mpz_set_si(ptr noundef nonnull %0, i64 noundef -1) #30
  br label %132

59:                                               ; preds = %49
  br i1 %53, label %61, label %60

60:                                               ; preds = %59
  tail call void @mpz_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #30
  br label %61

61:                                               ; preds = %60, %59
  %62 = icmp eq ptr %0, null
  br i1 %62, label %132, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %64, align 4, !tbaa !212
  br label %132

65:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #35
  call void @mpz_init_set(ptr noundef nonnull %7, ptr noundef nonnull %2) #30
  %66 = getelementptr inbounds %struct.__mpz_struct, ptr %7, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !213
  %68 = sub nsw i64 %31, %36
  %69 = add nsw i64 %68, 1
  %70 = icmp eq ptr %0, null
  br i1 %70, label %71, label %74, !prof !157

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !213
  call fastcc void @mpn_div_qr(ptr noundef null, ptr noundef %67, i64 noundef %31, ptr noundef %73, i64 noundef %36) #30
  br label %94

74:                                               ; preds = %65
  %75 = shl nsw i64 %69, 6
  call void @mpz_init2(ptr noundef nonnull %6, i64 noundef %75) #30
  %76 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !213
  %78 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !213
  call fastcc void @mpn_div_qr(ptr noundef %77, ptr noundef %67, i64 noundef %31, ptr noundef %79, i64 noundef %36) #30
  %80 = icmp eq ptr %77, null
  br i1 %80, label %94, label %81, !prof !271

81:                                               ; preds = %74
  %82 = getelementptr inbounds i64, ptr %77, i64 %68
  %83 = load i64, ptr %82, align 8, !tbaa !116
  %84 = icmp eq i64 %83, 0
  %85 = sext i1 %84 to i64
  %86 = add nsw i64 %69, %85
  %87 = icmp slt i64 %37, 0
  br i1 %87, label %88, label %90, !prof !157

88:                                               ; preds = %81
  %89 = sub nsw i64 0, %86
  br label %90

90:                                               ; preds = %81, %88
  %91 = phi i64 [ %89, %88 ], [ %86, %81 ]
  %92 = trunc i64 %91 to i32
  %93 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 1
  store i32 %92, ptr %93, align 4, !tbaa !212
  br label %94

94:                                               ; preds = %71, %90, %74
  %95 = call fastcc i64 @mpn_normalized_size(ptr noundef %67, i64 noundef %36) #30
  %96 = icmp slt i32 %9, 0
  br i1 %96, label %97, label %99, !prof !157

97:                                               ; preds = %94
  %98 = sub nsw i64 0, %95
  br label %99

99:                                               ; preds = %94, %97
  %100 = phi i64 [ %98, %97 ], [ %95, %94 ]
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds %struct.__mpz_struct, ptr %7, i64 0, i32 1
  store i32 %101, ptr %102, align 4, !tbaa !212
  %103 = icmp eq i32 %4, 0
  %104 = icmp slt i64 %37, 0
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %106, label %113, !prof !272

106:                                              ; preds = %99
  %107 = icmp eq i64 %95, 0
  br i1 %107, label %124, label %108

108:                                              ; preds = %106
  br i1 %70, label %110, label %109

109:                                              ; preds = %108
  call void @mpz_sub_ui(ptr noundef nonnull %6, ptr noundef nonnull %6, i64 noundef 1) #30
  br label %110

110:                                              ; preds = %109, %108
  %111 = icmp eq ptr %1, null
  br i1 %111, label %124, label %112

112:                                              ; preds = %110
  call void @mpz_add(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %3) #30
  br label %124

113:                                              ; preds = %99
  %114 = icmp eq i32 %4, 1
  br i1 %114, label %115, label %124, !prof !273

115:                                              ; preds = %113
  %116 = icmp sgt i64 %37, -1
  %117 = icmp ne i64 %95, 0
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  br i1 %70, label %121, label %120

120:                                              ; preds = %119
  call void @mpz_add_ui(ptr noundef nonnull %6, ptr noundef nonnull %6, i64 noundef 1) #30
  br label %121

121:                                              ; preds = %120, %119
  %122 = icmp eq ptr %1, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %121
  call void @mpz_sub(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %3) #30
  br label %124

124:                                              ; preds = %106, %113, %115, %123, %121, %110, %112
  br i1 %70, label %126, label %125, !prof !157

125:                                              ; preds = %124
  call void @mpz_swap(ptr noundef nonnull %6, ptr noundef nonnull %0) #30
  call void @mpz_clear(ptr noundef nonnull %6) #30
  br label %126

126:                                              ; preds = %125, %124
  %127 = icmp eq ptr %1, null
  br i1 %127, label %129, label %128, !prof !158

128:                                              ; preds = %126
  call void @mpz_swap(ptr noundef nonnull %7, ptr noundef nonnull %1) #30
  br label %129

129:                                              ; preds = %128, %126
  call void @mpz_clear(ptr noundef nonnull %7) #30
  %130 = icmp ne i64 %95, 0
  %131 = zext i1 %130 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #35
  br label %132

132:                                              ; preds = %48, %46, %61, %63, %56, %58, %22, %24, %129
  %133 = phi i32 [ %131, %129 ], [ 0, %24 ], [ 0, %22 ], [ 1, %58 ], [ 1, %56 ], [ 1, %63 ], [ 1, %61 ], [ 1, %46 ], [ 1, %48 ]
  ret i32 %133
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mpn_div_qr(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) unnamed_addr #1 !prof !148 !PGOFuncName !274 {
  %6 = alloca %struct.gmp_div_inverse, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #35
  call fastcc void @mpn_div_qr_invert(ptr noundef nonnull %6, ptr noundef %3, i64 noundef %4) #30
  %7 = icmp sgt i64 %4, 2
  br i1 %7, label %8, label %11, !prof !157

8:                                                ; preds = %5
  %9 = load i32, ptr %6, align 8, !tbaa !187
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %5
  call fastcc void @mpn_div_qr_preinv(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6) #30
  br label %18

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @gmp_xalloc_limbs(i64 noundef %4) #30
  %14 = tail call i64 @mpn_lshift(ptr noundef %13, ptr noundef %3, i64 noundef %4, i32 noundef %9) #30
  call fastcc void @mpn_div_qr_preinv(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %13, i64 noundef %4, ptr noundef nonnull %6) #30
  %15 = icmp eq ptr %13, null
  br i1 %15, label %18, label %16, !prof !271

16:                                               ; preds = %12
  %17 = load ptr, ptr @gmp_free_func, align 8, !tbaa !102
  tail call void %17(ptr noundef nonnull %13, i64 noundef 0) #34
  br label %18

18:                                               ; preds = %11, %16, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #35
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @mpn_div_qr_invert(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #11 !prof !148 !PGOFuncName !275 {
  switch i64 %2, label %10 [
    i64 1, label %4
    i64 2, label %6
  ], !prof !276

4:                                                ; preds = %3
  %5 = load i64, ptr %1, align 8, !tbaa !116
  tail call fastcc void @mpn_div_qr_1_invert(ptr noundef %0, i64 noundef %5) #30
  br label %54

6:                                                ; preds = %3
  %7 = getelementptr inbounds i64, ptr %1, i64 1
  %8 = load i64, ptr %7, align 8, !tbaa !116
  %9 = load i64, ptr %1, align 8, !tbaa !116
  tail call fastcc void @mpn_div_qr_2_invert(ptr noundef %0, i64 noundef %8, i64 noundef %9) #30
  br label %54

10:                                               ; preds = %3
  %11 = getelementptr i64, ptr %1, i64 %2
  %12 = getelementptr i64, ptr %11, i64 -1
  %13 = load i64, ptr %12, align 8, !tbaa !116
  %14 = getelementptr i64, ptr %11, i64 -2
  %15 = load i64, ptr %14, align 8, !tbaa !116
  %16 = icmp ult i64 %13, 72057594037927936
  br i1 %16, label %21, label %17

17:                                               ; preds = %21, %10
  %18 = phi i64 [ %13, %10 ], [ %24, %21 ]
  %19 = phi i32 [ 0, %10 ], [ %25, %21 ]
  %20 = icmp sgt i64 %18, -1
  br i1 %20, label %27, label %33

21:                                               ; preds = %10, %21
  %22 = phi i32 [ %25, %21 ], [ 0, %10 ]
  %23 = phi i64 [ %24, %21 ], [ %13, %10 ]
  %24 = shl nuw i64 %23, 8
  %25 = add i32 %22, 8
  %26 = icmp ult i64 %23, 281474976710656
  br i1 %26, label %21, label %17, !llvm.loop !277

27:                                               ; preds = %17, %27
  %28 = phi i32 [ %31, %27 ], [ %19, %17 ]
  %29 = phi i64 [ %30, %27 ], [ %18, %17 ]
  %30 = shl nuw i64 %29, 1
  %31 = add i32 %28, 1
  %32 = icmp sgt i64 %30, -1
  br i1 %32, label %27, label %33, !llvm.loop !278

33:                                               ; preds = %27, %17
  %34 = phi i32 [ %19, %17 ], [ %31, %27 ]
  store i32 %34, ptr %0, align 8, !tbaa !187
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = zext i32 %34 to i64
  %38 = shl i64 %13, %37
  %39 = sub nsw i64 64, %37
  %40 = lshr i64 %15, %39
  %41 = or i64 %40, %38
  %42 = shl i64 %15, %37
  %43 = getelementptr i64, ptr %11, i64 -3
  %44 = load i64, ptr %43, align 8, !tbaa !116
  %45 = lshr i64 %44, %39
  %46 = or i64 %45, %42
  br label %47

47:                                               ; preds = %36, %33
  %48 = phi i64 [ %41, %36 ], [ %13, %33 ]
  %49 = phi i64 [ %46, %36 ], [ %15, %33 ]
  %50 = getelementptr inbounds %struct.gmp_div_inverse, ptr %0, i64 0, i32 1
  store i64 %48, ptr %50, align 8, !tbaa !189
  %51 = getelementptr inbounds %struct.gmp_div_inverse, ptr %0, i64 0, i32 2
  store i64 %49, ptr %51, align 8, !tbaa !279
  %52 = tail call i64 @mpn_invert_3by2(i64 noundef %48, i64 noundef %49) #30
  %53 = getelementptr inbounds %struct.gmp_div_inverse, ptr %0, i64 0, i32 3
  store i64 %52, ptr %53, align 8, !tbaa !190
  br label %54

54:                                               ; preds = %6, %47, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mpn_div_qr_preinv(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #1 !prof !148 !PGOFuncName !280 {
  switch i64 %4, label %10 [
    i64 1, label %7
    i64 2, label %9
  ], !prof !276

7:                                                ; preds = %6
  %8 = tail call fastcc i64 @mpn_div_qr_1_preinv(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %5) #30
  store i64 %8, ptr %1, align 8, !tbaa !116
  br label %21

9:                                                ; preds = %6
  tail call fastcc void @mpn_div_qr_2_preinv(ptr noundef %0, ptr noundef %1, ptr noundef %1, i64 noundef %2, ptr noundef %5) #30
  br label %21

10:                                               ; preds = %6
  %11 = load i32, ptr %5, align 8, !tbaa !187
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @mpn_lshift(ptr noundef %1, ptr noundef %1, i64 noundef %2, i32 noundef %11) #30
  %15 = getelementptr inbounds %struct.gmp_div_inverse, ptr %5, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !190
  tail call fastcc void @mpn_div_qr_pi1(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %14, ptr noundef %3, i64 noundef %4, i64 noundef %16) #30
  %17 = tail call i64 @mpn_rshift(ptr noundef %1, ptr noundef %1, i64 noundef %4, i32 noundef %11) #30
  br label %21

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.gmp_div_inverse, ptr %5, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !190
  tail call fastcc void @mpn_div_qr_pi1(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef 0, ptr noundef %3, i64 noundef %4, i64 noundef %20) #30
  br label %21

21:                                               ; preds = %13, %18, %9, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @mpn_div_qr_2_invert(ptr nocapture noundef writeonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #16 !prof !101 !PGOFuncName !281 {
  %4 = icmp ult i64 %1, 72057594037927936
  br i1 %4, label %9, label %5

5:                                                ; preds = %9, %3
  %6 = phi i64 [ %1, %3 ], [ %12, %9 ]
  %7 = phi i32 [ 0, %3 ], [ %13, %9 ]
  %8 = icmp sgt i64 %6, -1
  br i1 %8, label %15, label %21

9:                                                ; preds = %3, %9
  %10 = phi i32 [ %13, %9 ], [ 0, %3 ]
  %11 = phi i64 [ %12, %9 ], [ %1, %3 ]
  %12 = shl nuw i64 %11, 8
  %13 = add i32 %10, 8
  %14 = icmp ult i64 %11, 281474976710656
  br i1 %14, label %9, label %5, !llvm.loop !282

15:                                               ; preds = %5, %15
  %16 = phi i32 [ %19, %15 ], [ %7, %5 ]
  %17 = phi i64 [ %18, %15 ], [ %6, %5 ]
  %18 = shl nuw i64 %17, 1
  %19 = add i32 %16, 1
  %20 = icmp sgt i64 %18, -1
  br i1 %20, label %15, label %21, !llvm.loop !283

21:                                               ; preds = %15, %5
  %22 = phi i32 [ %7, %5 ], [ %19, %15 ]
  store i32 %22, ptr %0, align 8, !tbaa !187
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = zext i32 %22 to i64
  %26 = shl i64 %1, %25
  %27 = sub nsw i64 64, %25
  %28 = lshr i64 %2, %27
  %29 = or i64 %28, %26
  %30 = shl i64 %2, %25
  br label %31

31:                                               ; preds = %24, %21
  %32 = phi i64 [ %30, %24 ], [ %2, %21 ]
  %33 = phi i64 [ %29, %24 ], [ %1, %21 ]
  %34 = getelementptr inbounds %struct.gmp_div_inverse, ptr %0, i64 0, i32 1
  store i64 %33, ptr %34, align 8, !tbaa !189
  %35 = getelementptr inbounds %struct.gmp_div_inverse, ptr %0, i64 0, i32 2
  store i64 %32, ptr %35, align 8, !tbaa !279
  %36 = tail call i64 @mpn_invert_3by2(i64 noundef %33, i64 noundef %32) #30
  %37 = getelementptr inbounds %struct.gmp_div_inverse, ptr %0, i64 0, i32 3
  store i64 %36, ptr %37, align 8, !tbaa !190
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mpn_div_qr_2_preinv(ptr noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #1 !prof !101 !PGOFuncName !284 {
  %6 = load i32, ptr %4, align 8, !tbaa !187
  %7 = getelementptr inbounds %struct.gmp_div_inverse, ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !189
  %9 = getelementptr inbounds %struct.gmp_div_inverse, ptr %4, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !279
  %11 = getelementptr inbounds %struct.gmp_div_inverse, ptr %4, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !190
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = tail call fastcc ptr @gmp_xalloc_limbs(i64 noundef %3) #30
  %16 = tail call i64 @mpn_lshift(ptr noundef %15, ptr noundef %2, i64 noundef %3, i32 noundef %6) #30
  br label %17

17:                                               ; preds = %5, %14
  %18 = phi ptr [ %15, %14 ], [ undef, %5 ]
  %19 = phi i64 [ %16, %14 ], [ 0, %5 ]
  %20 = phi ptr [ %15, %14 ], [ %2, %5 ]
  %21 = add nsw i64 %3, -1
  %22 = getelementptr inbounds i64, ptr %20, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !116
  %24 = add nsw i64 %3, -2
  %25 = lshr i64 %12, 32
  %26 = and i64 %12, 4294967295
  %27 = lshr i64 %10, 32
  %28 = and i64 %10, 4294967295
  %29 = icmp eq ptr %0, null
  br label %30

30:                                               ; preds = %115, %17
  %31 = phi i64 [ %23, %17 ], [ %111, %115 ]
  %32 = phi i64 [ %19, %17 ], [ %112, %115 ]
  %33 = phi i64 [ %24, %17 ], [ %116, %115 ]
  %34 = getelementptr inbounds i64, ptr %20, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !116
  %36 = lshr i64 %32, 32
  %37 = and i64 %32, 4294967295
  %38 = mul nuw i64 %37, %26
  %39 = mul nuw i64 %37, %25
  %40 = mul nuw i64 %36, %26
  %41 = mul nuw i64 %36, %25
  %42 = lshr i64 %38, 32
  %43 = add i64 %40, %39
  %44 = add i64 %43, %42
  %45 = icmp ult i64 %44, %40
  %46 = add nuw i64 %41, 4294967296
  %47 = select i1 %45, i64 %46, i64 %41
  %48 = lshr i64 %44, 32
  %49 = shl i64 %44, 32
  %50 = and i64 %38, 4294967295
  %51 = or disjoint i64 %49, %50
  %52 = add i64 %51, %31
  %53 = icmp ult i64 %52, %51
  %54 = zext i1 %53 to i64
  %55 = add i64 %48, %32
  %56 = add i64 %55, %47
  %57 = add i64 %56, %54
  %58 = sub i64 %35, %10
  %59 = xor i64 %57, -1
  %60 = mul i64 %8, %59
  %61 = icmp ult i64 %35, %10
  %62 = sext i1 %61 to i64
  %63 = lshr i64 %57, 32
  %64 = and i64 %57, 4294967295
  %65 = mul nuw i64 %64, %28
  %66 = mul nuw i64 %63, %28
  %67 = mul nuw i64 %64, %27
  %68 = mul nuw i64 %63, %27
  %69 = lshr i64 %65, 32
  %70 = add i64 %67, %66
  %71 = add i64 %70, %69
  %72 = icmp ult i64 %71, %67
  %73 = add nuw i64 %68, 4294967296
  %74 = select i1 %72, i64 %73, i64 %68
  %75 = lshr i64 %71, 32
  %76 = shl i64 %71, 32
  %77 = and i64 %65, 4294967295
  %78 = or disjoint i64 %76, %77
  %79 = sub i64 %58, %78
  %80 = icmp ult i64 %58, %78
  %81 = sext i1 %80 to i64
  %82 = add i64 %31, %62
  %83 = add i64 %82, %60
  %84 = add i64 %75, %74
  %85 = sub i64 %83, %84
  %86 = add i64 %85, %81
  %87 = add i64 %57, 1
  %88 = icmp uge i64 %86, %52
  %89 = sext i1 %88 to i64
  %90 = add i64 %87, %89
  %91 = and i64 %10, %89
  %92 = add i64 %91, %79
  %93 = and i64 %8, %89
  %94 = add i64 %93, %86
  %95 = icmp ult i64 %92, %79
  %96 = zext i1 %95 to i64
  %97 = add i64 %94, %96
  %98 = icmp ult i64 %97, %8
  br i1 %98, label %109, label %99

99:                                               ; preds = %30
  %100 = icmp ule i64 %97, %8
  %101 = icmp ult i64 %92, %10
  %102 = select i1 %100, i1 %101, i1 false
  br i1 %102, label %109, label %103

103:                                              ; preds = %99
  %104 = add i64 %90, 1
  %105 = sub i64 %92, %10
  %106 = sext i1 %101 to i64
  %107 = sub i64 %106, %8
  %108 = add i64 %107, %97
  br label %109

109:                                              ; preds = %99, %103, %30
  %110 = phi i64 [ %104, %103 ], [ %90, %30 ], [ %90, %99 ]
  %111 = phi i64 [ %105, %103 ], [ %92, %30 ], [ %92, %99 ]
  %112 = phi i64 [ %108, %103 ], [ %97, %30 ], [ %97, %99 ]
  br i1 %29, label %115, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds i64, ptr %0, i64 %33
  store i64 %110, ptr %114, align 8, !tbaa !116
  br label %115

115:                                              ; preds = %113, %109
  %116 = add nsw i64 %33, -1
  %117 = icmp sgt i64 %33, 0
  br i1 %117, label %30, label %118, !llvm.loop !285

118:                                              ; preds = %115
  br i1 %13, label %127, label %119

119:                                              ; preds = %118
  %120 = zext i32 %6 to i64
  %121 = lshr i64 %111, %120
  %122 = sub nsw i64 64, %120
  %123 = shl i64 %112, %122
  %124 = or i64 %123, %121
  %125 = lshr i64 %112, %120
  %126 = load ptr, ptr @gmp_free_func, align 8, !tbaa !102
  tail call void %126(ptr noundef %18, i64 noundef 0) #34
  br label %127

127:                                              ; preds = %119, %118
  %128 = phi i64 [ %124, %119 ], [ %111, %118 ]
  %129 = phi i64 [ %125, %119 ], [ %112, %118 ]
  %130 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %129, ptr %130, align 8, !tbaa !116
  store i64 %128, ptr %1, align 8, !tbaa !116
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mpn_div_qr_pi1(ptr noundef writeonly %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5, i64 noundef %6) unnamed_addr #14 !prof !101 !PGOFuncName !286 {
  %8 = add nsw i64 %5, -1
  %9 = getelementptr inbounds i64, ptr %4, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !116
  %11 = add nsw i64 %5, -2
  %12 = getelementptr inbounds i64, ptr %4, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !116
  %14 = sub nsw i64 %2, %5
  %15 = getelementptr i64, ptr %1, i64 %8
  %16 = lshr i64 %6, 32
  %17 = and i64 %6, 4294967295
  %18 = getelementptr i64, ptr %1, i64 %11
  %19 = lshr i64 %13, 32
  %20 = and i64 %13, 4294967295
  %21 = icmp eq ptr %0, null
  br label %22

22:                                               ; preds = %131, %7
  %23 = phi i64 [ %14, %7 ], [ %132, %131 ]
  %24 = phi i64 [ %3, %7 ], [ %128, %131 ]
  %25 = getelementptr i64, ptr %15, i64 %23
  %26 = load i64, ptr %25, align 8, !tbaa !116
  %27 = icmp eq i64 %24, %10
  %28 = icmp eq i64 %26, %13
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = getelementptr inbounds i64, ptr %1, i64 %23
  %32 = tail call i64 @mpn_submul_1(ptr noundef %31, ptr noundef %4, i64 noundef %5, i64 noundef -1) #30
  %33 = load i64, ptr %25, align 8, !tbaa !116
  br label %126

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
  %58 = load i64, ptr %57, align 8, !tbaa !116
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
  %115 = tail call i64 @mpn_submul_1(ptr noundef %114, ptr noundef %4, i64 noundef %11, i64 noundef %112) #30
  %116 = icmp ult i64 %111, %115
  %117 = zext i1 %116 to i64
  %118 = sub i64 %111, %115
  %119 = icmp ult i64 %113, %117
  %120 = sub i64 %113, %117
  store i64 %118, ptr %57, align 8, !tbaa !116
  br i1 %119, label %121, label %126

121:                                              ; preds = %110
  %122 = tail call i64 @mpn_add_n(ptr noundef nonnull %114, ptr noundef nonnull %114, ptr noundef %4, i64 noundef %8) #30, !range !133
  %123 = add i64 %120, %10
  %124 = add i64 %123, %122
  %125 = add i64 %112, -1
  br label %126

126:                                              ; preds = %110, %121, %30
  %127 = phi i64 [ -1, %30 ], [ %125, %121 ], [ %112, %110 ]
  %128 = phi i64 [ %33, %30 ], [ %124, %121 ], [ %120, %110 ]
  br i1 %21, label %131, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds i64, ptr %0, i64 %23
  store i64 %127, ptr %130, align 8, !tbaa !116
  br label %131

131:                                              ; preds = %129, %126
  %132 = add nsw i64 %23, -1
  %133 = icmp sgt i64 %23, 0
  br i1 %133, label %22, label %134, !llvm.loop !287

134:                                              ; preds = %131
  store i64 %128, ptr %15, align 8, !tbaa !116
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_fdiv_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 !prof !101 {
  %5 = tail call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #30, !range !269
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_tdiv_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 !prof !101 {
  %5 = tail call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 2) #30, !range !269
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_cdiv_q(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef 1) #30, !range !269
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_fdiv_q(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !148 {
  %4 = tail call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef 0) #30, !range !269
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_tdiv_q(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef 2) #30, !range !269
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_cdiv_r(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call fastcc i32 @mpz_div_qr(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1) #30, !range !269
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_fdiv_r(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call fastcc i32 @mpz_div_qr(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #30, !range !269
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_tdiv_r(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call fastcc i32 @mpz_div_qr(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2) #30, !range !269
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_mod(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = lshr i32 %5, 31
  %7 = tail call fastcc i32 @mpz_div_qr(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %6) #30, !range !269
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_cdiv_q_2exp(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  tail call fastcc void @mpz_div_q_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mpz_div_q_2exp(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) unnamed_addr #1 !prof !101 !PGOFuncName !288 {
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !212
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %9, align 4, !tbaa !212
  br label %72

10:                                               ; preds = %4
  %11 = lshr i64 %2, 6
  %12 = tail call i32 @llvm.abs.i32(i32 %6, i1 false)
  %13 = zext i32 %12 to i64
  %14 = sub nsw i64 %13, %11
  %15 = and i64 %2, 63
  %16 = icmp sgt i32 %6, 0
  %17 = zext i1 %16 to i32
  %18 = icmp eq i32 %17, %3
  %19 = icmp slt i64 %14, 1
  br i1 %18, label %20, label %35

20:                                               ; preds = %10
  br i1 %19, label %21, label %23

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %22, align 4, !tbaa !212
  br label %68

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !213
  %26 = tail call fastcc i64 @mpn_normalized_size(ptr noundef %25, i64 noundef %11) #30
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = getelementptr inbounds i64, ptr %25, i64 %11
  %30 = load i64, ptr %29, align 8, !tbaa !116
  %31 = shl nsw i64 -1, %15
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  %34 = icmp eq i64 %33, 0
  br label %38

35:                                               ; preds = %10
  br i1 %19, label %36, label %38

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %37, align 4, !tbaa !212
  br label %69

38:                                               ; preds = %28, %23, %35
  %39 = phi i1 [ true, %35 ], [ %34, %28 ], [ false, %23 ]
  %40 = load i32, ptr %0, align 8, !tbaa !210
  %41 = sext i32 %40 to i64
  %42 = icmp sgt i64 %14, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %14) #30
  br label %48

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !213
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi ptr [ %44, %43 ], [ %47, %45 ]
  %50 = icmp eq i64 %15, 0
  %51 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !213
  %53 = getelementptr inbounds i64, ptr %52, i64 %11
  br i1 %50, label %65, label %54

54:                                               ; preds = %48
  %55 = trunc i64 %15 to i32
  %56 = tail call i64 @mpn_rshift(ptr noundef %49, ptr noundef %53, i64 noundef %14, i32 noundef %55) #30
  %57 = add nsw i64 %14, -1
  %58 = getelementptr inbounds i64, ptr %49, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !116
  %60 = icmp eq i64 %59, 0
  %61 = sext i1 %60 to i64
  %62 = add nsw i64 %14, %61
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %63, ptr %64, align 4, !tbaa !212
  br i1 %39, label %69, label %68

65:                                               ; preds = %48
  tail call void @mpn_copyi(ptr noundef %49, ptr noundef %53, i64 noundef %14) #30
  %66 = trunc i64 %14 to i32
  %67 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %66, ptr %67, align 4, !tbaa !212
  br i1 %39, label %69, label %68

68:                                               ; preds = %54, %21, %65
  tail call void @mpz_add_ui(ptr noundef nonnull %0, ptr noundef nonnull %0, i64 noundef 1) #30
  br label %69

69:                                               ; preds = %54, %36, %68, %65
  %70 = icmp slt i32 %6, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  tail call void @mpz_neg(ptr noundef nonnull %0, ptr noundef nonnull %0) #30
  br label %72

72:                                               ; preds = %69, %71, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_fdiv_q_2exp(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  tail call fastcc void @mpz_div_q_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_tdiv_q_2exp(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  tail call fastcc void @mpz_div_q_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 2) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_cdiv_r_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  tail call fastcc void @mpz_div_r_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mpz_div_r_2exp(ptr noundef %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) unnamed_addr #1 !prof !101 !PGOFuncName !289 {
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !212
  %7 = sext i32 %6 to i64
  %8 = icmp eq i32 %6, 0
  %9 = icmp eq i64 %2, 0
  %10 = or i1 %9, %8
  br i1 %10, label %117, label %11

11:                                               ; preds = %4
  %12 = add i64 %2, 63
  %13 = lshr i64 %12, 6
  %14 = load i32, ptr %0, align 8, !tbaa !210
  %15 = sext i32 %14 to i64
  %16 = icmp sgt i64 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %13) #30
  br label %22

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !213
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %18, %17 ], [ %21, %19 ]
  %24 = sub nsw i64 0, %7
  %25 = tail call i64 @llvm.abs.i64(i64 %7, i1 true)
  %26 = and i64 %12, -64
  %27 = sub i64 %26, %2
  %28 = lshr i64 -1, %27
  %29 = icmp ugt i64 %13, %25
  br i1 %29, label %30, label %65

30:                                               ; preds = %22
  %31 = icmp sgt i32 %6, 0
  %32 = zext i1 %31 to i32
  %33 = icmp eq i32 %32, %3
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !213
  %37 = tail call i64 @llvm.umax.i64(i64 %25, i64 1)
  br label %46

38:                                               ; preds = %46
  %39 = add nsw i64 %13, -1
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = shl nuw nsw i64 %37, 3
  %43 = getelementptr i8, ptr %23, i64 %42
  %44 = sub nsw i64 %39, %37
  %45 = shl nuw nsw i64 %44, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %43, i8 -1, i64 %45, i1 false), !tbaa !116
  br label %58

46:                                               ; preds = %34, %46
  %47 = phi i64 [ 1, %34 ], [ %54, %46 ]
  %48 = phi i64 [ 0, %34 ], [ %56, %46 ]
  %49 = getelementptr inbounds i64, ptr %36, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !116
  %51 = xor i64 %50, -1
  %52 = add i64 %47, %51
  %53 = icmp ult i64 %52, %47
  %54 = zext i1 %53 to i64
  %55 = getelementptr inbounds i64, ptr %23, i64 %48
  store i64 %52, ptr %55, align 8, !tbaa !116
  %56 = add nuw nsw i64 %48, 1
  %57 = icmp eq i64 %56, %37
  br i1 %57, label %38, label %46, !llvm.loop !290

58:                                               ; preds = %41, %38
  %59 = getelementptr inbounds i64, ptr %23, i64 %39
  store i64 %28, ptr %59, align 8, !tbaa !116
  br label %109

60:                                               ; preds = %30
  %61 = icmp eq ptr %0, %1
  br i1 %61, label %109, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !213
  tail call void @mpn_copyi(ptr noundef %23, ptr noundef %64, i64 noundef %25) #30
  br label %109

65:                                               ; preds = %22
  %66 = icmp eq ptr %0, %1
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = add nsw i64 %13, -1
  br label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !213
  %72 = add nsw i64 %13, -1
  tail call void @mpn_copyi(ptr noundef %23, ptr noundef %71, i64 noundef %72) #30
  br label %73

73:                                               ; preds = %67, %69
  %74 = phi i64 [ %68, %67 ], [ %72, %69 ]
  %75 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !213
  %77 = getelementptr inbounds i64, ptr %76, i64 %74
  %78 = load i64, ptr %77, align 8, !tbaa !116
  %79 = and i64 %78, %28
  %80 = getelementptr inbounds i64, ptr %23, i64 %74
  store i64 %79, ptr %80, align 8, !tbaa !116
  %81 = icmp sgt i32 %6, 0
  %82 = zext i1 %81 to i32
  %83 = icmp eq i32 %82, %3
  %84 = icmp ugt i64 %12, 63
  %85 = and i1 %83, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %73, %91
  %87 = phi i64 [ %92, %91 ], [ 0, %73 ]
  %88 = getelementptr inbounds i64, ptr %23, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !116
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = add nuw nsw i64 %87, 1
  %93 = icmp eq i64 %92, %13
  br i1 %93, label %109, label %86, !llvm.loop !291

94:                                               ; preds = %86
  %95 = getelementptr inbounds i64, ptr %23, i64 %87
  %96 = sub i64 0, %89
  store i64 %96, ptr %95, align 8, !tbaa !116
  %97 = add nuw nsw i64 %87, 1
  %98 = icmp ult i64 %97, %13
  br i1 %98, label %99, label %106

99:                                               ; preds = %94, %99
  %100 = phi i64 [ %104, %99 ], [ %97, %94 ]
  %101 = getelementptr inbounds i64, ptr %23, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !116
  %103 = xor i64 %102, -1
  store i64 %103, ptr %101, align 8, !tbaa !116
  %104 = add nuw nsw i64 %100, 1
  %105 = icmp ult i64 %104, %13
  br i1 %105, label %99, label %106, !llvm.loop !292

106:                                              ; preds = %99, %94
  %107 = load i64, ptr %80, align 8, !tbaa !116
  %108 = and i64 %107, %28
  store i64 %108, ptr %80, align 8, !tbaa !116
  br label %109

109:                                              ; preds = %91, %106, %60, %62, %73, %58
  %110 = phi i64 [ %13, %58 ], [ %13, %73 ], [ %25, %62 ], [ %25, %60 ], [ %13, %106 ], [ %13, %91 ]
  %111 = phi i64 [ %24, %58 ], [ %7, %73 ], [ %7, %62 ], [ %7, %60 ], [ %24, %106 ], [ %7, %91 ]
  %112 = tail call fastcc i64 @mpn_normalized_size(ptr noundef %23, i64 noundef %110) #30
  %113 = icmp slt i64 %111, 0
  %114 = sub nsw i64 0, %112
  %115 = select i1 %113, i64 %114, i64 %112
  %116 = trunc i64 %115 to i32
  br label %117

117:                                              ; preds = %4, %109
  %118 = phi i32 [ %116, %109 ], [ 0, %4 ]
  %119 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %118, ptr %119, align 4, !tbaa !212
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_fdiv_r_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  tail call fastcc void @mpz_div_r_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_tdiv_r_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  tail call fastcc void @mpz_div_r_2exp(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 2) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_divexact(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call fastcc i32 @mpz_div_qr(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef 2) #30, !range !269
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @mpz_divisible_p(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 !prof !101 {
  %3 = tail call fastcc i32 @mpz_div_qr(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef 2) #30, !range !269
  %4 = xor i32 %3, 1
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @mpz_congruent_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  %5 = tail call i32 @mpz_sgn(ptr noundef %2) #30, !range !229
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = tail call i32 @mpz_cmp(ptr noundef %0, ptr noundef %1) #30, !range !229
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  br label %13

11:                                               ; preds = %3
  call void @mpz_init(ptr noundef nonnull %4) #30
  call void @mpz_sub(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1) #30
  %12 = call i32 @mpz_divisible_p(ptr noundef nonnull %4, ptr noundef %2) #30, !range !269
  call void @mpz_clear(ptr noundef nonnull %4) #30
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i32 [ %10, %7 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_cdiv_qr_ui(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #1 !prof !101 {
  %5 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 1) #30
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i32 noundef %4) unnamed_addr #1 !prof !101 !PGOFuncName !293 {
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = icmp eq ptr %0, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %12, align 4, !tbaa !212
  br label %13

13:                                               ; preds = %11, %9
  %14 = icmp eq ptr %1, null
  br i1 %14, label %74, label %69

15:                                               ; preds = %5
  %16 = icmp sgt i32 %7, -1
  %17 = tail call i32 @llvm.abs.i32(i32 %7, i1 false)
  %18 = zext i32 %17 to i64
  %19 = icmp eq ptr %0, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %0, align 8, !tbaa !210
  %22 = sext i32 %21 to i64
  %23 = icmp sgt i64 %18, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %18) #30
  br label %29

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !213
  br label %29

29:                                               ; preds = %15, %24, %26
  %30 = phi ptr [ %25, %24 ], [ %28, %26 ], [ null, %15 ]
  %31 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !213
  %33 = tail call fastcc i64 @mpn_div_qr_1(ptr noundef %30, ptr noundef %32, i64 noundef %18, i64 noundef %3) #30
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = icmp slt i32 %7, 0
  %37 = sub nsw i32 0, %35
  %38 = select i1 %36, i32 %37, i32 %35
  br i1 %34, label %39, label %51

39:                                               ; preds = %29
  %40 = icmp eq i32 %4, 0
  %41 = and i1 %40, %36
  %42 = icmp eq i32 %4, 1
  %43 = and i1 %42, %16
  %44 = or i1 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  br i1 %19, label %48, label %46

46:                                               ; preds = %45
  %47 = tail call i64 @mpn_add_1(ptr noundef %30, ptr noundef %30, i64 noundef %18, i64 noundef 1) #30, !range !135
  br label %48

48:                                               ; preds = %46, %45
  %49 = sub i64 %3, %33
  %50 = sub nsw i32 0, %38
  br label %51

51:                                               ; preds = %39, %48, %29
  %52 = phi i64 [ %49, %48 ], [ 0, %29 ], [ %33, %39 ]
  %53 = phi i32 [ %50, %48 ], [ %38, %29 ], [ %38, %39 ]
  %54 = icmp eq ptr %1, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !213
  store i64 %52, ptr %57, align 8, !tbaa !116
  %58 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  store i32 %53, ptr %58, align 4, !tbaa !212
  br label %59

59:                                               ; preds = %55, %51
  br i1 %19, label %74, label %60

60:                                               ; preds = %59
  %61 = add nsw i64 %18, -1
  %62 = getelementptr inbounds i64, ptr %30, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !116
  %64 = icmp eq i64 %63, 0
  %65 = sext i1 %64 to i32
  %66 = add i32 %17, %65
  %67 = sub i32 0, %66
  %68 = select i1 %36, i32 %67, i32 %66
  br label %69

69:                                               ; preds = %13, %60
  %70 = phi ptr [ %0, %60 ], [ %1, %13 ]
  %71 = phi i32 [ %68, %60 ], [ 0, %13 ]
  %72 = phi i64 [ %52, %60 ], [ 0, %13 ]
  %73 = getelementptr inbounds %struct.__mpz_struct, ptr %70, i64 0, i32 1
  store i32 %71, ptr %73, align 4, !tbaa !212
  br label %74

74:                                               ; preds = %69, %59, %13
  %75 = phi i64 [ 0, %13 ], [ %52, %59 ], [ %72, %69 ]
  ret i64 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @mpn_div_qr_1(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 !prof !101 !PGOFuncName !294 {
  %5 = alloca %struct.gmp_div_inverse, align 8
  %6 = tail call i64 @llvm.ctpop.i64(i64 %3), !range !295
  %7 = icmp ult i64 %6, 2
  br i1 %7, label %8, label %40

8:                                                ; preds = %4
  %9 = add i64 %3, -1
  %10 = load i64, ptr %1, align 8, !tbaa !116
  %11 = and i64 %10, %9
  %12 = icmp eq ptr %0, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %8
  %14 = icmp ult i64 %3, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @mpn_copyi(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #30
  br label %42

16:                                               ; preds = %13
  %17 = sub i64 0, %3
  %18 = and i64 %17, %3
  %19 = icmp ult i64 %18, 72057594037927936
  br i1 %19, label %24, label %20

20:                                               ; preds = %24, %16
  %21 = phi i64 [ %18, %16 ], [ %27, %24 ]
  %22 = phi i32 [ 0, %16 ], [ %28, %24 ]
  %23 = icmp sgt i64 %21, -1
  br i1 %23, label %30, label %36

24:                                               ; preds = %16, %24
  %25 = phi i32 [ %28, %24 ], [ 0, %16 ]
  %26 = phi i64 [ %27, %24 ], [ %18, %16 ]
  %27 = shl nuw i64 %26, 8
  %28 = add i32 %25, 8
  %29 = icmp ult i64 %26, 281474976710656
  br i1 %29, label %24, label %20, !llvm.loop !296

30:                                               ; preds = %20, %30
  %31 = phi i32 [ %34, %30 ], [ %22, %20 ]
  %32 = phi i64 [ %33, %30 ], [ %21, %20 ]
  %33 = shl nuw i64 %32, 1
  %34 = add i32 %31, 1
  %35 = icmp sgt i64 %33, -1
  br i1 %35, label %30, label %36, !llvm.loop !297

36:                                               ; preds = %30, %20
  %37 = phi i32 [ %22, %20 ], [ %34, %30 ]
  %38 = sub i32 63, %37
  %39 = tail call i64 @mpn_rshift(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %38) #30
  br label %42

40:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #35
  call fastcc void @mpn_div_qr_1_invert(ptr noundef nonnull %5, i64 noundef %3) #30
  %41 = call fastcc i64 @mpn_div_qr_1_preinv(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #35
  br label %42

42:                                               ; preds = %8, %36, %15, %40
  %43 = phi i64 [ %41, %40 ], [ %11, %15 ], [ %11, %36 ], [ %11, %8 ]
  ret i64 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_fdiv_qr_ui(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #1 !prof !101 {
  %5 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 0) #30
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_tdiv_qr_ui(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #1 !prof !101 {
  %5 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 2) #30
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_cdiv_q_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef 1) #30
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_fdiv_q_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef 0) #30
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_tdiv_q_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef 2) #30
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_cdiv_r_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef null, ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1) #30
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_fdiv_r_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef null, ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0) #30
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_tdiv_r_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef null, ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 2) #30
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_cdiv_ui(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef null, ptr noundef null, ptr noundef %0, i64 noundef %1, i32 noundef 1) #30
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_fdiv_ui(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef null, ptr noundef null, ptr noundef %0, i64 noundef %1, i32 noundef 0) #30
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_tdiv_ui(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef null, ptr noundef null, ptr noundef %0, i64 noundef %1, i32 noundef 2) #30
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_mod_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef null, ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0) #30
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_divexact_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef 2) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @mpz_divisible_ui_p(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = tail call fastcc i64 @mpz_div_qr_ui(ptr noundef null, ptr noundef null, ptr noundef %0, i64 noundef %1, i32 noundef 2) #30
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_gcd_ui(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %5
  tail call void @mpz_abs(ptr noundef nonnull %0, ptr noundef %1) #30
  br label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !212
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @llvm.abs.i32(i32 %10, i1 true)
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !213
  %17 = tail call fastcc i64 @mpn_div_qr_1(ptr noundef null, ptr noundef %16, i64 noundef %14, i64 noundef %2) #30
  %18 = tail call fastcc i64 @mpn_gcd_11(i64 noundef %17, i64 noundef %2) #30
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi i64 [ %18, %12 ], [ %2, %8 ]
  %21 = icmp eq ptr %0, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @mpz_set_ui(ptr noundef nonnull %0, i64 noundef %20) #30
  br label %23

23:                                               ; preds = %19, %22, %5, %7
  %24 = phi i64 [ 0, %7 ], [ 0, %5 ], [ %20, %22 ], [ %20, %19 ]
  ret i64 %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @mpn_gcd_11(i64 noundef %0, i64 noundef %1) unnamed_addr #17 !prof !101 !PGOFuncName !298 {
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
  br i1 %20, label %15, label %11, !llvm.loop !299

21:                                               ; preds = %11, %21
  %22 = phi i32 [ %25, %21 ], [ %13, %11 ]
  %23 = phi i64 [ %24, %21 ], [ %12, %11 ]
  %24 = shl nuw i64 %23, 1
  %25 = add i32 %22, 1
  %26 = icmp sgt i64 %24, -1
  br i1 %26, label %21, label %27, !llvm.loop !300

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
  br i1 %39, label %36, label %41, !llvm.loop !301

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
  br i1 %54, label %50, label %62, !llvm.loop !302

55:                                               ; preds = %44
  %56 = sub i64 %46, %45
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i64 [ %56, %55 ], [ %59, %57 ]
  %59 = lshr i64 %58, 1
  %60 = and i64 %58, 2
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %57, label %62, !llvm.loop !303

62:                                               ; preds = %57, %50
  %63 = phi i64 [ %46, %50 ], [ %59, %57 ]
  %64 = phi i64 [ %52, %50 ], [ %45, %57 ]
  %65 = icmp eq i64 %64, %63
  br i1 %65, label %66, label %44, !llvm.loop !304

66:                                               ; preds = %62, %41
  %67 = phi i64 [ %37, %41 ], [ %63, %62 ]
  %68 = shl i64 %67, %30
  br label %69

69:                                               ; preds = %4, %2, %66
  %70 = phi i64 [ %68, %66 ], [ %1, %2 ], [ %0, %4 ]
  ret i64 %70
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_gcd(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #35
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @mpz_abs(ptr noundef %0, ptr noundef %2) #30
  br label %52

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !212
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @mpz_abs(ptr noundef %0, ptr noundef nonnull %1) #30
  br label %52

15:                                               ; preds = %10
  call void @mpz_init(ptr noundef nonnull %4) #30
  call void @mpz_init(ptr noundef nonnull %5) #30
  call void @mpz_abs(ptr noundef nonnull %4, ptr noundef nonnull %1) #30
  %16 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %4) #30
  call void @mpz_abs(ptr noundef nonnull %5, ptr noundef nonnull %2) #30
  %17 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %5) #30
  %18 = call i64 @llvm.umin.i64(i64 %16, i64 %17)
  %19 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !212
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !212
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  call void @mpz_swap(ptr noundef nonnull %4, ptr noundef nonnull %5) #30
  br label %25

25:                                               ; preds = %24, %15
  call void @mpz_tdiv_r(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %5) #30
  %26 = load i32, ptr %19, align 4, !tbaa !212
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %4) #30
  %30 = call i32 @mpz_cmp(ptr noundef nonnull %4, ptr noundef nonnull %5) #30, !range !229
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %34

32:                                               ; preds = %25
  call void @mpz_swap(ptr noundef %0, ptr noundef nonnull %5) #30
  br label %51

33:                                               ; preds = %47, %28
  call void @mpz_swap(ptr noundef %0, ptr noundef nonnull %4) #30
  br label %51

34:                                               ; preds = %28, %47
  %35 = phi i32 [ %49, %47 ], [ %30, %28 ]
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @mpz_swap(ptr noundef nonnull %4, ptr noundef nonnull %5) #30
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, ptr %21, align 4, !tbaa !212
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !213
  %44 = load i64, ptr %43, align 8, !tbaa !116
  %45 = call i64 @mpz_tdiv_ui(ptr noundef nonnull %4, i64 noundef %44) #30
  %46 = call fastcc i64 @mpn_gcd_11(i64 noundef %45, i64 noundef %44) #30
  call void @mpz_set_ui(ptr noundef %0, i64 noundef %46) #30
  br label %51

47:                                               ; preds = %38
  call void @mpz_sub(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %5) #30
  %48 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %4) #30
  %49 = call i32 @mpz_cmp(ptr noundef nonnull %4, ptr noundef nonnull %5) #30, !range !229
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %33, label %34

51:                                               ; preds = %41, %33, %32
  call void @mpz_clear(ptr noundef nonnull %4) #30
  call void @mpz_clear(ptr noundef nonnull %5) #30
  call void @mpz_mul_2exp(ptr noundef %0, ptr noundef %0, i64 noundef %18) #30
  br label %52

52:                                               ; preds = %51, %14, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i64 @mpz_make_odd(ptr noundef %0) unnamed_addr #1 !prof !101 !PGOFuncName !305 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !213
  %4 = load i64, ptr %3, align 8, !tbaa !116
  %5 = tail call fastcc i64 @mpn_common_scan(i64 noundef %4, i64 noundef 0, ptr noundef nonnull %3, i64 noundef 0, i64 noundef 0) #30
  tail call void @mpz_tdiv_q_2exp(ptr noundef %0, ptr noundef %0, i64 noundef %5) #30
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_gcdext(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 !prof !101 {
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  %8 = alloca [1 x %struct.__mpz_struct], align 16
  %9 = alloca [1 x %struct.__mpz_struct], align 16
  %10 = alloca [1 x %struct.__mpz_struct], align 16
  %11 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #35
  %12 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !212
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %5
  %16 = tail call i32 @mpz_sgn(ptr noundef %4) #30, !range !229
  %17 = sext i32 %16 to i64
  tail call void @mpz_abs(ptr noundef %0, ptr noundef %4) #30
  %18 = icmp eq ptr %1, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @mpz_set_ui(ptr noundef nonnull %1, i64 noundef 0) #30
  br label %20

20:                                               ; preds = %19, %15
  %21 = icmp eq ptr %2, null
  br i1 %21, label %125, label %22

22:                                               ; preds = %20
  tail call void @mpz_set_si(ptr noundef nonnull %2, i64 noundef %17) #30
  br label %125

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !212
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = tail call i32 @mpz_sgn(ptr noundef nonnull %3) #30, !range !229
  tail call void @mpz_abs(ptr noundef %0, ptr noundef nonnull %3) #30
  %29 = icmp eq ptr %1, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = sext i32 %28 to i64
  tail call void @mpz_set_si(ptr noundef nonnull %1, i64 noundef %31) #30
  br label %32

32:                                               ; preds = %30, %27
  %33 = icmp eq ptr %2, null
  br i1 %33, label %125, label %34

34:                                               ; preds = %32
  tail call void @mpz_set_ui(ptr noundef nonnull %2, i64 noundef 0) #30
  br label %125

35:                                               ; preds = %23
  call void @mpz_init(ptr noundef nonnull %6) #30
  call void @mpz_init(ptr noundef nonnull %7) #30
  call void @mpz_init(ptr noundef nonnull %8) #30
  call void @mpz_init(ptr noundef nonnull %9) #30
  call void @mpz_init(ptr noundef nonnull %10) #30
  call void @mpz_init(ptr noundef nonnull %11) #30
  call void @mpz_abs(ptr noundef nonnull %6, ptr noundef nonnull %3) #30
  %36 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %6) #30
  call void @mpz_abs(ptr noundef nonnull %7, ptr noundef nonnull %4) #30
  %37 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %7) #30
  %38 = call i64 @llvm.umin.i64(i64 %36, i64 %37)
  %39 = sub i64 %36, %38
  %40 = sub i64 %37, %38
  %41 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !212
  %43 = getelementptr inbounds %struct.__mpz_struct, ptr %7, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !212
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  call void @mpz_swap(ptr noundef nonnull %6, ptr noundef nonnull %7) #30
  br label %47

47:                                               ; preds = %46, %35
  %48 = phi i64 [ %39, %46 ], [ %40, %35 ]
  %49 = phi i64 [ %40, %46 ], [ %39, %35 ]
  %50 = phi ptr [ %3, %46 ], [ %4, %35 ]
  %51 = phi ptr [ %4, %46 ], [ %3, %35 ]
  %52 = phi ptr [ %1, %46 ], [ %2, %35 ]
  %53 = phi ptr [ %2, %46 ], [ %1, %35 ]
  call void @mpz_setbit(ptr noundef nonnull %10, i64 noundef %49) #30
  call void @mpz_tdiv_qr(ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %7) #30
  call void @mpz_mul_2exp(ptr noundef nonnull %11, ptr noundef nonnull %11, i64 noundef %49) #30
  call void @mpz_setbit(ptr noundef nonnull %9, i64 noundef %48) #30
  %54 = add i64 %40, %39
  %55 = load i32, ptr %41, align 4, !tbaa !212
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %47
  %58 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %6) #30
  call void @mpz_mul_2exp(ptr noundef nonnull %10, ptr noundef nonnull %10, i64 noundef %58) #30
  call void @mpz_mul_2exp(ptr noundef nonnull %8, ptr noundef nonnull %8, i64 noundef %58) #30
  %59 = add i64 %58, %54
  %60 = call i32 @mpz_cmp(ptr noundef nonnull %6, ptr noundef nonnull %7) #30, !range !229
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %57, %70
  %63 = phi i32 [ %73, %70 ], [ %60, %57 ]
  %64 = phi i64 [ %72, %70 ], [ %59, %57 ]
  %65 = icmp slt i32 %63, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  call void @mpz_sub(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %6) #30
  call void @mpz_add(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %11) #30
  call void @mpz_add(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %9) #30
  %67 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %7) #30
  call void @mpz_mul_2exp(ptr noundef nonnull %11, ptr noundef nonnull %11, i64 noundef %67) #30
  call void @mpz_mul_2exp(ptr noundef nonnull %9, ptr noundef nonnull %9, i64 noundef %67) #30
  br label %70

68:                                               ; preds = %62
  call void @mpz_sub(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %7) #30
  call void @mpz_add(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %11) #30
  call void @mpz_add(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %9) #30
  %69 = call fastcc i64 @mpz_make_odd(ptr noundef nonnull %6) #30
  call void @mpz_mul_2exp(ptr noundef nonnull %10, ptr noundef nonnull %10, i64 noundef %69) #30
  call void @mpz_mul_2exp(ptr noundef nonnull %8, ptr noundef nonnull %8, i64 noundef %69) #30
  br label %70

70:                                               ; preds = %66, %68
  %71 = phi i64 [ %67, %66 ], [ %69, %68 ]
  %72 = add i64 %71, %64
  %73 = call i32 @mpz_cmp(ptr noundef nonnull %6, ptr noundef nonnull %7) #30, !range !229
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %62

75:                                               ; preds = %70, %57, %47
  %76 = phi i64 [ %54, %47 ], [ %59, %57 ], [ %72, %70 ]
  call void @mpz_mul_2exp(ptr noundef nonnull %7, ptr noundef nonnull %7, i64 noundef %38) #30
  call void @mpz_neg(ptr noundef nonnull %8, ptr noundef nonnull %8) #30
  call void @mpz_divexact(ptr noundef nonnull %9, ptr noundef %50, ptr noundef nonnull %7) #30
  call void @mpz_abs(ptr noundef nonnull %9, ptr noundef nonnull %9) #30
  call void @mpz_divexact(ptr noundef nonnull %11, ptr noundef %51, ptr noundef nonnull %7) #30
  call void @mpz_abs(ptr noundef nonnull %11, ptr noundef nonnull %11) #30
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %104, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.__mpz_struct, ptr %8, i64 0, i32 1
  %80 = getelementptr inbounds %struct.__mpz_struct, ptr %8, i64 0, i32 2
  %81 = getelementptr inbounds %struct.__mpz_struct, ptr %10, i64 0, i32 1
  %82 = getelementptr inbounds %struct.__mpz_struct, ptr %10, i64 0, i32 2
  br label %83

83:                                               ; preds = %78, %102
  %84 = phi i64 [ %76, %78 ], [ %85, %102 ]
  %85 = add i64 %84, -1
  %86 = load i32, ptr %79, align 4, !tbaa !212
  %87 = icmp eq i32 %86, 0
  %88 = load ptr, ptr %80, align 8, !tbaa !213
  %89 = load i64, ptr %88, align 8, !tbaa !116
  %90 = and i64 %89, 1
  %91 = icmp eq i64 %90, 0
  %92 = select i1 %87, i1 true, i1 %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %83
  %94 = load i32, ptr %81, align 4, !tbaa !212
  %95 = icmp eq i32 %94, 0
  %96 = load ptr, ptr %82, align 8, !tbaa !213
  %97 = load i64, ptr %96, align 8, !tbaa !116
  %98 = and i64 %97, 1
  %99 = icmp eq i64 %98, 0
  %100 = select i1 %95, i1 true, i1 %99
  br i1 %100, label %102, label %101

101:                                              ; preds = %93, %83
  call void @mpz_sub(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %9) #30
  call void @mpz_add(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %11) #30
  br label %102

102:                                              ; preds = %101, %93
  call void @mpz_divexact_ui(ptr noundef nonnull %8, ptr noundef nonnull %8, i64 noundef 2) #30
  call void @mpz_divexact_ui(ptr noundef nonnull %10, ptr noundef nonnull %10, i64 noundef 2) #30
  %103 = icmp eq i64 %85, 0
  br i1 %103, label %104, label %83, !llvm.loop !306

104:                                              ; preds = %102, %75
  call void @mpz_add(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %9) #30
  %105 = call i32 @mpz_cmpabs(ptr noundef nonnull %8, ptr noundef nonnull %9) #30, !range !229
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  call void @mpz_swap(ptr noundef nonnull %8, ptr noundef nonnull %9) #30
  call void @mpz_sub(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %11) #30
  br label %108

108:                                              ; preds = %107, %104
  %109 = getelementptr inbounds %struct.__mpz_struct, ptr %51, i64 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !212
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  call void @mpz_neg(ptr noundef nonnull %8, ptr noundef nonnull %8) #30
  br label %113

113:                                              ; preds = %112, %108
  %114 = getelementptr inbounds %struct.__mpz_struct, ptr %50, i64 0, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !212
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  call void @mpz_neg(ptr noundef nonnull %10, ptr noundef nonnull %10) #30
  br label %118

118:                                              ; preds = %117, %113
  call void @mpz_swap(ptr noundef %0, ptr noundef nonnull %7) #30
  %119 = icmp eq ptr %53, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %118
  call void @mpz_swap(ptr noundef nonnull %53, ptr noundef nonnull %8) #30
  br label %121

121:                                              ; preds = %120, %118
  %122 = icmp eq ptr %52, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %121
  call void @mpz_swap(ptr noundef nonnull %52, ptr noundef nonnull %10) #30
  br label %124

124:                                              ; preds = %123, %121
  call void @mpz_clear(ptr noundef nonnull %6) #30
  call void @mpz_clear(ptr noundef nonnull %7) #30
  call void @mpz_clear(ptr noundef nonnull %8) #30
  call void @mpz_clear(ptr noundef nonnull %9) #30
  call void @mpz_clear(ptr noundef nonnull %10) #30
  call void @mpz_clear(ptr noundef nonnull %11) #30
  br label %125

125:                                              ; preds = %32, %34, %20, %22, %124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_setbit(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = tail call i32 @mpz_tstbit(ptr noundef %0, i64 noundef %1) #30, !range !269
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call fastcc void @mpz_abs_add_bit(ptr noundef nonnull %0, i64 noundef %1) #30
  br label %11

10:                                               ; preds = %5
  tail call fastcc void @mpz_abs_sub_bit(ptr noundef nonnull %0, i64 noundef %1) #30
  br label %11

11:                                               ; preds = %9, %10, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_lcm(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !212
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !212
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %13, align 4, !tbaa !212
  br label %15

14:                                               ; preds = %8
  call void @mpz_init(ptr noundef nonnull %4) #30
  call void @mpz_gcd(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %2) #30
  call void @mpz_divexact(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %4) #30
  call void @mpz_mul(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %2) #30
  call void @mpz_clear(ptr noundef nonnull %4) #30
  call void @mpz_abs(ptr noundef %0, ptr noundef %0) #30
  br label %15

15:                                               ; preds = %14, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_lcm_ui(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %3
  %10 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 0, ptr %10, align 4, !tbaa !212
  br label %14

11:                                               ; preds = %5
  %12 = tail call i64 @mpz_gcd_ui(ptr noundef null, ptr noundef nonnull %1, i64 noundef %2) #30
  %13 = udiv i64 %2, %12
  tail call void @mpz_mul_ui(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %13) #30
  tail call void @mpz_abs(ptr noundef %0, ptr noundef %0) #30
  br label %14

14:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mpz_invert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #35
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @mpz_cmpabs_ui(ptr noundef %2, i64 noundef 1) #30, !range !229
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  call void @mpz_init(ptr noundef nonnull %4) #30
  call void @mpz_init(ptr noundef nonnull %5) #30
  call void @mpz_gcdext(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %1, ptr noundef %2) #30
  %13 = call i32 @mpz_cmp_ui(ptr noundef nonnull %4, i64 noundef 1) #30, !range !229
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br i1 %14, label %16, label %27

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !212
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !212
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  call void @mpz_add(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %2) #30
  br label %26

25:                                               ; preds = %20
  call void @mpz_sub(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %2) #30
  br label %26

26:                                               ; preds = %24, %25, %16
  call void @mpz_swap(ptr noundef %0, ptr noundef nonnull %5) #30
  br label %27

27:                                               ; preds = %26, %12
  call void @mpz_clear(ptr noundef nonnull %4) #30
  call void @mpz_clear(ptr noundef nonnull %5) #30
  br label %28

28:                                               ; preds = %3, %9, %27
  %29 = phi i32 [ %15, %27 ], [ 0, %9 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_pow_ui(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  call void @mpz_init_set_ui(ptr noundef nonnull %4, i64 noundef 1) #30
  br label %5

5:                                                ; preds = %10, %3
  %6 = phi i64 [ -9223372036854775808, %3 ], [ %11, %10 ]
  call void @mpz_mul(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %4) #30
  %7 = and i64 %6, %2
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  call void @mpz_mul(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %1) #30
  br label %10

10:                                               ; preds = %9, %5
  %11 = lshr i64 %6, 1
  %12 = icmp ult i64 %6, 2
  br i1 %12, label %13, label %5, !llvm.loop !307

13:                                               ; preds = %10
  call void @mpz_swap(ptr noundef %0, ptr noundef nonnull %4) #30
  call void @mpz_clear(ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_ui_pow_ui(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  call void @mpz_init_set_ui(ptr noundef nonnull %4, i64 noundef %1) #30
  call void @mpz_pow_ui(ptr noundef %0, ptr noundef nonnull %4, i64 noundef %2) #30
  call void @mpz_clear(ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_powm(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #1 !prof !101 {
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  %7 = alloca %struct.gmp_div_inverse, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #35
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !212
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !212
  %14 = tail call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = zext nneg i32 %14 to i64
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  tail call fastcc void @gmp_die(ptr noundef nonnull @.str.4) #30
  unreachable

18:                                               ; preds = %4
  %19 = icmp eq i32 %9, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @mpz_set_ui(ptr noundef %0, i64 noundef 1) #30
  br label %109

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !213
  call fastcc void @mpn_div_qr_invert(ptr noundef nonnull %7, ptr noundef %23, i64 noundef %15) #30
  %24 = load i32, ptr %7, align 8, !tbaa !187
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  store i32 0, ptr %7, align 8, !tbaa !187
  %27 = tail call fastcc ptr @gmp_xalloc_limbs(i64 noundef %15) #30
  %28 = tail call i64 @mpn_lshift(ptr noundef %27, ptr noundef %23, i64 noundef %15, i32 noundef %24) #30
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi ptr [ %27, %26 ], [ null, %21 ]
  %31 = phi ptr [ %27, %26 ], [ %23, %21 ]
  call void @mpz_init(ptr noundef nonnull %6) #30
  %32 = load i32, ptr %8, align 4, !tbaa !212
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call i32 @mpz_invert(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %3) #30, !range !269
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %34
  tail call fastcc void @gmp_die(ptr noundef nonnull @.str.5) #30
  unreachable

38:                                               ; preds = %29
  call void @mpz_abs(ptr noundef nonnull %6, ptr noundef %1) #30
  %39 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !212
  %41 = sext i32 %40 to i64
  %42 = icmp slt i32 %40, %14
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !213
  call fastcc void @mpn_div_qr_preinv(ptr noundef null, ptr noundef %45, i64 noundef %41, ptr noundef %31, i64 noundef %15, ptr noundef nonnull %7) #30
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi i64 [ %15, %43 ], [ %41, %38 ]
  %48 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !212
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i32, ptr %6, align 16, !tbaa !210
  %53 = icmp sgt i32 %14, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call fastcc ptr @mpz_realloc(ptr noundef nonnull %6, i64 noundef %15) #30
  br label %59

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !213
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi ptr [ %55, %54 ], [ %58, %56 ]
  %61 = call i64 @mpn_sub(ptr noundef %60, ptr noundef %31, i64 noundef %15, ptr noundef %60, i64 noundef %47) #30, !range !133
  br label %62

62:                                               ; preds = %59, %46
  %63 = phi i64 [ %15, %59 ], [ %47, %46 ]
  %64 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !213
  %66 = call fastcc i64 @mpn_normalized_size(ptr noundef %65, i64 noundef %63) #30
  %67 = trunc i64 %66 to i32
  store i32 %67, ptr %39, align 4, !tbaa !212
  br label %68

68:                                               ; preds = %34, %62
  call void @mpz_init_set_ui(ptr noundef nonnull %5, i64 noundef 1) #30
  %69 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %70 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 1
  %71 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 2
  br label %72

72:                                               ; preds = %68, %95
  %73 = phi i64 [ %11, %68 ], [ %74, %95 ]
  %74 = add nsw i64 %73, -1
  %75 = load ptr, ptr %69, align 8, !tbaa !213
  %76 = getelementptr inbounds i64, ptr %75, i64 %74
  %77 = load i64, ptr %76, align 8, !tbaa !116
  br label %78

78:                                               ; preds = %91, %72
  %79 = phi i64 [ -9223372036854775808, %72 ], [ %93, %91 ]
  call void @mpz_mul(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5) #30
  %80 = and i64 %79, %77
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  call void @mpz_mul(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i32, ptr %70, align 4, !tbaa !212
  %85 = icmp sgt i32 %84, %14
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = sext i32 %84 to i64
  %88 = load ptr, ptr %71, align 8, !tbaa !213
  call fastcc void @mpn_div_qr_preinv(ptr noundef null, ptr noundef %88, i64 noundef %87, ptr noundef %31, i64 noundef %15, ptr noundef nonnull %7) #30
  %89 = call fastcc i64 @mpn_normalized_size(ptr noundef %88, i64 noundef %15) #30
  %90 = trunc i64 %89 to i32
  store i32 %90, ptr %70, align 4, !tbaa !212
  br label %91

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %84, %83 ]
  %93 = lshr i64 %79, 1
  %94 = icmp ult i64 %79, 2
  br i1 %94, label %95, label %78, !llvm.loop !308

95:                                               ; preds = %91
  %96 = icmp sgt i64 %73, 1
  br i1 %96, label %72, label %97, !llvm.loop !309

97:                                               ; preds = %95
  %98 = icmp slt i32 %92, %14
  br i1 %98, label %104, label %99

99:                                               ; preds = %97
  store i32 %24, ptr %7, align 8, !tbaa !187
  %100 = load ptr, ptr %71, align 8, !tbaa !213
  %101 = sext i32 %92 to i64
  call fastcc void @mpn_div_qr_preinv(ptr noundef null, ptr noundef %100, i64 noundef %101, ptr noundef %31, i64 noundef %15, ptr noundef nonnull %7) #30
  %102 = call fastcc i64 @mpn_normalized_size(ptr noundef %100, i64 noundef %15) #30
  %103 = trunc i64 %102 to i32
  store i32 %103, ptr %70, align 4, !tbaa !212
  br label %104

104:                                              ; preds = %99, %97
  %105 = icmp eq ptr %30, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %104
  %107 = load ptr, ptr @gmp_free_func, align 8, !tbaa !102
  call void %107(ptr noundef nonnull %30, i64 noundef 0) #34
  br label %108

108:                                              ; preds = %106, %104
  call void @mpz_swap(ptr noundef %0, ptr noundef nonnull %5) #30
  call void @mpz_clear(ptr noundef nonnull %5) #30
  call void @mpz_clear(ptr noundef nonnull %6) #30
  br label %109

109:                                              ; preds = %108, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_powm_ui(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 !prof !101 {
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #35
  call void @mpz_init_set_ui(ptr noundef nonnull %5, i64 noundef %2) #30
  call void @mpz_powm(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #30
  call void @mpz_clear(ptr noundef nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_rootrem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 !prof !101 {
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #35
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !212
  %10 = icmp slt i32 %9, 0
  %11 = lshr i32 %9, 31
  %12 = xor i64 %3, -1
  %13 = zext nneg i32 %11 to i64
  %14 = and i64 %13, %12
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  tail call fastcc void @gmp_die(ptr noundef nonnull @.str.6) #30
  unreachable

17:                                               ; preds = %4
  %18 = icmp eq i64 %3, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call fastcc void @gmp_die(ptr noundef nonnull @.str.7) #30
  unreachable

20:                                               ; preds = %17
  %21 = tail call i32 @mpz_cmpabs_ui(ptr noundef nonnull %2, i64 noundef 1) #30, !range !229
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = icmp eq ptr %0, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void @mpz_set(ptr noundef nonnull %0, ptr noundef nonnull %2) #30
  br label %26

26:                                               ; preds = %25, %23
  %27 = icmp eq ptr %1, null
  br i1 %27, label %54, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  store i32 0, ptr %29, align 4, !tbaa !212
  br label %54

30:                                               ; preds = %20
  call void @mpz_init(ptr noundef nonnull %6) #30
  %31 = tail call i64 @mpz_sizeinbase(ptr noundef nonnull %2, i32 noundef 2) #30
  %32 = udiv i64 %31, %3
  %33 = add i64 %32, 1
  call void @mpz_init2(ptr noundef nonnull %5, i64 noundef %33) #30
  call void @mpz_setbit(ptr noundef nonnull %5, i64 noundef %33) #30
  %34 = icmp eq i64 %3, 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %35
  call void @mpz_swap(ptr noundef nonnull %6, ptr noundef nonnull %5) #30
  call void @mpz_tdiv_q(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %6) #30
  call void @mpz_add(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  call void @mpz_tdiv_q_2exp(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef 1) #30
  %36 = call i32 @mpz_cmpabs(ptr noundef nonnull %5, ptr noundef nonnull %6) #30, !range !229
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %35, label %47, !llvm.loop !310

38:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #35
  call void @mpz_init(ptr noundef nonnull %7) #30
  br i1 %10, label %39, label %40

39:                                               ; preds = %38
  call void @mpz_neg(ptr noundef nonnull %5, ptr noundef nonnull %5) #30
  br label %40

40:                                               ; preds = %39, %38
  %41 = add i64 %3, -1
  br label %42

42:                                               ; preds = %42, %40
  call void @mpz_swap(ptr noundef nonnull %6, ptr noundef nonnull %5) #30
  call void @mpz_pow_ui(ptr noundef nonnull %5, ptr noundef nonnull %6, i64 noundef %41) #30
  call void @mpz_tdiv_q(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %5) #30
  call void @mpz_mul_ui(ptr noundef nonnull %7, ptr noundef nonnull %6, i64 noundef %41) #30
  call void @mpz_add(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %7) #30
  %43 = call i64 @mpz_tdiv_q_ui(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef %3) #30
  %44 = call i32 @mpz_cmpabs(ptr noundef nonnull %5, ptr noundef nonnull %6) #30, !range !229
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %42, label %46, !llvm.loop !311

46:                                               ; preds = %42
  call void @mpz_clear(ptr noundef nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #35
  br label %47

47:                                               ; preds = %35, %46
  %48 = icmp eq ptr %1, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  call void @mpz_pow_ui(ptr noundef nonnull %5, ptr noundef nonnull %6, i64 noundef %3) #30
  call void @mpz_sub(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %5) #30
  br label %50

50:                                               ; preds = %49, %47
  %51 = icmp eq ptr %0, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  call void @mpz_swap(ptr noundef nonnull %0, ptr noundef nonnull %6) #30
  br label %53

53:                                               ; preds = %52, %50
  call void @mpz_clear(ptr noundef nonnull %6) #30
  call void @mpz_clear(ptr noundef nonnull %5) #30
  br label %54

54:                                               ; preds = %26, %28, %53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpz_sizeinbase(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 !prof !175 {
  %3 = alloca %struct.gmp_div_inverse, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #35
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %9, label %7, !prof !312

7:                                                ; preds = %2
  %8 = sub nsw i32 0, %5
  br label %11

9:                                                ; preds = %2
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %51, label %11, !prof !313

11:                                               ; preds = %7, %9
  %12 = phi i32 [ %8, %7 ], [ %5, %9 ]
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !213
  %16 = add nsw i64 %13, -1
  %17 = shl nuw nsw i64 %16, 6
  %18 = getelementptr inbounds i64, ptr %15, i64 %16
  %19 = load i64, ptr %18, align 8, !tbaa !116
  %20 = tail call fastcc i64 @mpn_limb_size_in_base_2(i64 noundef %19) #30, !range !162
  %21 = add nsw i64 %17, %20
  switch i32 %1, label %34 [
    i32 2, label %51
    i32 4, label %22
    i32 8, label %25
    i32 16, label %28
    i32 32, label %31
  ], !prof !314

22:                                               ; preds = %11
  %23 = add nsw i64 %21, 1
  %24 = lshr i64 %23, 1
  br label %51

25:                                               ; preds = %11
  %26 = add nsw i64 %21, 2
  %27 = udiv i64 %26, 3
  br label %51

28:                                               ; preds = %11
  %29 = add nsw i64 %21, 3
  %30 = lshr i64 %29, 2
  br label %51

31:                                               ; preds = %11
  %32 = add nsw i64 %21, 4
  %33 = udiv i64 %32, 5
  br label %51

34:                                               ; preds = %11
  %35 = tail call fastcc ptr @gmp_xalloc_limbs(i64 noundef %13) #30
  tail call void @mpn_copyi(ptr noundef %35, ptr noundef nonnull %15, i64 noundef %13) #30
  %36 = sext i32 %1 to i64
  call fastcc void @mpn_div_qr_1_invert(ptr noundef nonnull %3, i64 noundef %36) #30
  %37 = getelementptr i64, ptr %35, i64 -1
  br label %38

38:                                               ; preds = %38, %34
  %39 = phi i64 [ %13, %34 ], [ %47, %38 ]
  %40 = phi i64 [ 0, %34 ], [ %41, %38 ]
  %41 = add i64 %40, 1
  %42 = call fastcc i64 @mpn_div_qr_1_preinv(ptr noundef %35, ptr noundef %35, i64 noundef %39, ptr noundef nonnull %3) #30
  %43 = getelementptr i64, ptr %37, i64 %39
  %44 = load i64, ptr %43, align 8, !tbaa !116
  %45 = icmp eq i64 %44, 0
  %46 = sext i1 %45 to i64
  %47 = add nsw i64 %39, %46
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %38, !llvm.loop !315

49:                                               ; preds = %38
  %50 = load ptr, ptr @gmp_free_func, align 8, !tbaa !102
  tail call void %50(ptr noundef nonnull %35, i64 noundef 0) #34
  br label %51

51:                                               ; preds = %11, %9, %49, %31, %28, %25, %22
  %52 = phi i64 [ %41, %49 ], [ %33, %31 ], [ %30, %28 ], [ %27, %25 ], [ %24, %22 ], [ 1, %9 ], [ %21, %11 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #35
  ret i64 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @mpz_root(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  call void @mpz_init(ptr noundef nonnull %4) #30
  call void @mpz_rootrem(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, i64 noundef %2) #30
  %5 = getelementptr inbounds %struct.__mpz_struct, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !212
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  call void @mpz_clear(ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_sqrtrem(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !101 {
  tail call void @mpz_rootrem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef 2) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_sqrt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !101 {
  tail call void @mpz_rootrem(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef 2) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @mpz_perfect_square_p(ptr noundef %0) local_unnamed_addr #1 !prof !101 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !212
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = icmp eq i32 %3, 0
  %7 = zext i1 %6 to i32
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @mpz_root(ptr noundef null, ptr noundef nonnull %0, i64 noundef 2) #30, !range !269
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @mpn_perfect_square_p(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #35
  %4 = call ptr @mpz_roinit_n(ptr noundef nonnull %3, ptr noundef %0, i64 noundef %1) #30
  %5 = call i32 @mpz_root(ptr noundef null, ptr noundef nonnull %3, i64 noundef 2) #30, !range !269
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #35
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @mpn_sqrtrem(ptr nocapture noundef writeonly %0, ptr noundef writeonly %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 !prof !101 {
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #35
  call void @mpz_init(ptr noundef nonnull %6) #30
  call void @mpz_init(ptr noundef nonnull %5) #30
  %8 = call ptr @mpz_roinit_n(ptr noundef nonnull %7, ptr noundef %2, i64 noundef %3) #30
  call void @mpz_rootrem(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i64 noundef 2) #30
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !213
  %11 = getelementptr inbounds %struct.__mpz_struct, ptr %5, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !212
  %13 = sext i32 %12 to i64
  call void @mpn_copyd(ptr noundef %0, ptr noundef %10, i64 noundef %13) #30
  call void @mpz_clear(ptr noundef nonnull %5) #30
  %14 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !212
  %16 = sext i32 %15 to i64
  %17 = icmp eq ptr %1, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !213
  call void @mpn_copyd(ptr noundef nonnull %1, ptr noundef %20, i64 noundef %16) #30
  br label %21

21:                                               ; preds = %18, %4
  call void @mpz_clear(ptr noundef nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #35
  ret i64 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_fac_ui(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = icmp eq i64 %1, 0
  %4 = zext i1 %3 to i64
  %5 = add i64 %4, %1
  tail call void @mpz_set_ui(ptr noundef %0, i64 noundef %5) #30
  %6 = icmp ugt i64 %1, 2
  br i1 %6, label %7, label %11

7:                                                ; preds = %2, %7
  %8 = phi i64 [ %9, %7 ], [ %1, %2 ]
  %9 = add i64 %8, -1
  tail call void @mpz_mul_ui(ptr noundef %0, ptr noundef %0, i64 noundef %9) #30
  %10 = icmp ugt i64 %9, 2
  br i1 %10, label %7, label %11, !llvm.loop !316

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_bin_uiui(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  %5 = icmp ule i64 %2, %1
  %6 = zext i1 %5 to i64
  tail call void @mpz_set_ui(ptr noundef %0, i64 noundef %6) #30
  %7 = lshr i64 %1, 1
  %8 = icmp ult i64 %7, %2
  %9 = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %2)
  %10 = select i1 %8, i64 %9, i64 %2
  call void @mpz_init(ptr noundef nonnull %4) #30
  call void @mpz_fac_ui(ptr noundef nonnull %4, i64 noundef %10) #30
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3, %12
  %13 = phi i64 [ %16, %12 ], [ %10, %3 ]
  %14 = phi i64 [ %15, %12 ], [ %1, %3 ]
  %15 = add i64 %14, -1
  tail call void @mpz_mul_ui(ptr noundef %0, ptr noundef %0, i64 noundef %14) #30
  %16 = add i64 %13, -1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %12, !llvm.loop !317

18:                                               ; preds = %12, %3
  call void @mpz_divexact(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #30
  call void @mpz_clear(ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @mpz_probab_prime_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = alloca [1 x %struct.__mpz_struct], align 16
  %4 = alloca [1 x %struct.__mpz_struct], align 16
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #35
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !213
  %11 = load i64, ptr %10, align 8, !tbaa !116
  %12 = and i64 %11, 1
  %13 = icmp eq i64 %12, 0
  %14 = select i1 %8, i1 true, i1 %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = tail call i32 @mpz_cmpabs_ui(ptr noundef nonnull %0, i64 noundef 2) #30, !range !229
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 2, i32 0
  br label %55

19:                                               ; preds = %2
  %20 = tail call i32 @mpz_cmpabs_ui(ptr noundef nonnull %0, i64 noundef 64) #30, !range !229
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = lshr i64 %11, 1
  %24 = lshr i64 3379140316, %23
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, 2
  br label %55

27:                                               ; preds = %19
  %28 = tail call i64 @mpz_gcd_ui(ptr noundef null, ptr noundef nonnull %0, i64 noundef 3234846615) #30
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %30, label %55

30:                                               ; preds = %27
  %31 = tail call i32 @mpz_cmpabs_ui(ptr noundef nonnull %0, i64 noundef 961) #30, !range !229
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %30
  call void @mpz_init(ptr noundef nonnull %3) #30
  call void @mpz_init(ptr noundef nonnull %4) #30
  call void @mpz_init(ptr noundef nonnull %5) #30
  %34 = call fastcc i64 @mpz_abs_sub_ui(ptr noundef nonnull %3, ptr noundef nonnull %0, i64 noundef 1) #30
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.__mpz_struct, ptr %3, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !212
  %37 = call i64 @mpz_scan1(ptr noundef nonnull %3, i64 noundef 0) #30
  call void @mpz_tdiv_q_2exp(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef %37) #30
  %38 = icmp slt i32 %1, 1
  br i1 %38, label %53, label %39

39:                                               ; preds = %33
  %40 = zext nneg i32 %1 to i64
  br label %41

41:                                               ; preds = %39, %48
  %42 = phi i64 [ 0, %39 ], [ %43, %48 ]
  %43 = add nuw nsw i64 %42, 1
  %44 = mul nuw nsw i64 %43, %42
  %45 = add nuw nsw i64 %44, 41
  call void @mpz_set_ui(ptr noundef nonnull %5, i64 noundef %45) #30
  %46 = call i32 @mpz_cmp(ptr noundef nonnull %5, ptr noundef nonnull %3) #30, !range !229
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = call fastcc i32 @gmp_millerrabin(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef %37) #30, !range !269
  %50 = icmp uge i64 %43, %40
  %51 = icmp eq i32 %49, 0
  %52 = or i1 %51, %50
  br i1 %52, label %53, label %41, !llvm.loop !318

53:                                               ; preds = %48, %41, %33
  %54 = phi i32 [ 1, %33 ], [ 1, %41 ], [ %49, %48 ]
  call void @mpz_clear(ptr noundef nonnull %3) #30
  call void @mpz_clear(ptr noundef nonnull %4) #30
  call void @mpz_clear(ptr noundef nonnull %5) #30
  br label %55

55:                                               ; preds = %30, %27, %53, %22, %15
  %56 = phi i32 [ %26, %22 ], [ %54, %53 ], [ %18, %15 ], [ 0, %27 ], [ 2, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #35
  ret i32 %56
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mpz_scan1(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #22 !prof !101 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
  %5 = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %6 = zext i32 %5 to i64
  %7 = lshr i64 %1, 6
  %8 = icmp ult i64 %7, %6
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = icmp sgt i32 %4, -1
  %11 = select i1 %10, i64 -1, i64 %1
  br label %38

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !213
  %15 = getelementptr inbounds i64, ptr %14, i64 %7
  %16 = load i64, ptr %15, align 8, !tbaa !116
  %17 = icmp eq i64 %1, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %12
  %19 = icmp slt i32 %4, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %18
  %21 = tail call fastcc i64 @mpn_normalized_size(ptr noundef nonnull %14, i64 noundef %7) #30
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = xor i64 %16, -1
  %25 = add i64 %23, %24
  %26 = icmp uge i64 %25, %23
  %27 = sext i1 %26 to i64
  br label %28

28:                                               ; preds = %20, %18
  %29 = phi i64 [ %25, %20 ], [ %16, %18 ]
  %30 = phi i64 [ %27, %20 ], [ 0, %18 ]
  %31 = and i64 %1, 63
  %32 = shl nsw i64 -1, %31
  %33 = and i64 %29, %32
  br label %34

34:                                               ; preds = %28, %12
  %35 = phi i64 [ %33, %28 ], [ %16, %12 ]
  %36 = phi i64 [ %30, %28 ], [ 0, %12 ]
  %37 = tail call fastcc i64 @mpn_common_scan(i64 noundef %35, i64 noundef %7, ptr noundef nonnull %14, i64 noundef %6, i64 noundef %36) #30
  br label %38

38:                                               ; preds = %34, %9
  %39 = phi i64 [ %11, %9 ], [ %37, %34 ]
  ret i64 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gmp_millerrabin(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) unnamed_addr #1 !prof !101 !PGOFuncName !319 {
  tail call void @mpz_powm(ptr noundef %2, ptr noundef %2, ptr noundef %3, ptr noundef %0) #30
  %6 = tail call i32 @mpz_cmp_ui(ptr noundef %2, i64 noundef 1) #30, !range !229
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @mpz_cmp(ptr noundef %2, ptr noundef %1) #30, !range !229
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %8, %18
  %12 = phi i64 [ %13, %18 ], [ %4, %8 ]
  %13 = add i64 %12, -1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  tail call void @mpz_powm_ui(ptr noundef %2, ptr noundef %2, i64 noundef 2, ptr noundef %0) #30
  %16 = tail call i32 @mpz_cmp(ptr noundef %2, ptr noundef %1) #30, !range !229
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @mpz_cmp_ui(ptr noundef %2, i64 noundef 1) #30, !range !229
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %11, !llvm.loop !320

21:                                               ; preds = %11, %18, %15, %5, %8
  %22 = phi i32 [ 1, %8 ], [ 1, %5 ], [ 0, %11 ], [ 0, %18 ], [ 1, %15 ]
  ret i32 %22
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mpz_tstbit(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #22 !prof !101 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
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
  %13 = load ptr, ptr %12, align 8, !tbaa !213
  %14 = getelementptr inbounds i64, ptr %13, i64 %7
  %15 = load i64, ptr %14, align 8, !tbaa !116
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
  %36 = load i64, ptr %35, align 8, !tbaa !116
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %30, label %38, !llvm.loop !321

38:                                               ; preds = %33
  %39 = xor i32 %19, 1
  br label %40

40:                                               ; preds = %30, %11, %38, %28, %9
  %41 = phi i32 [ %10, %9 ], [ %29, %28 ], [ %39, %38 ], [ %19, %11 ], [ %19, %30 ]
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mpz_abs_add_bit(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #1 !prof !101 !PGOFuncName !322 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
  %5 = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %6 = zext nneg i32 %5 to i64
  %7 = lshr i64 %1, 6
  %8 = and i64 %1, 63
  %9 = shl nuw i64 1, %8
  %10 = icmp ult i64 %7, %6
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = add nuw nsw i64 %7, 1
  %13 = load i32, ptr %0, align 8, !tbaa !210
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %7, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %12) #30
  br label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !213
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %17, %16 ], [ %20, %18 ]
  %23 = getelementptr inbounds i64, ptr %22, i64 %7
  store i64 %9, ptr %23, align 8, !tbaa !116
  %24 = icmp ugt i64 %7, %6
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = shl nuw nsw i64 %6, 3
  %27 = getelementptr i8, ptr %22, i64 %26
  %28 = sub nsw i64 %7, %6
  %29 = shl nsw i64 %28, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %27, i8 0, i64 %29, i1 false), !tbaa !116
  br label %48

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !213
  %33 = getelementptr inbounds i64, ptr %32, i64 %7
  %34 = sub nsw i64 %6, %7
  %35 = tail call i64 @mpn_add_1(ptr noundef %33, ptr noundef %33, i64 noundef %34, i64 noundef %9) #30, !range !135
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %30
  %38 = add nuw nsw i64 %6, 1
  %39 = load i32, ptr %0, align 8, !tbaa !210
  %40 = icmp slt i32 %5, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %38) #30
  br label %45

43:                                               ; preds = %37
  %44 = load ptr, ptr %31, align 8, !tbaa !213
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi ptr [ %42, %41 ], [ %44, %43 ]
  %47 = getelementptr inbounds i64, ptr %46, i64 %6
  store i64 %35, ptr %47, align 8, !tbaa !116
  br label %48

48:                                               ; preds = %25, %21, %30, %45
  %49 = phi i64 [ %38, %45 ], [ %6, %30 ], [ %12, %21 ], [ %12, %25 ]
  %50 = load i32, ptr %3, align 4, !tbaa !212
  %51 = icmp slt i32 %50, 0
  %52 = sub nsw i64 0, %49
  %53 = select i1 %51, i64 %52, i64 %49
  %54 = trunc i64 %53 to i32
  store i32 %54, ptr %3, align 4, !tbaa !212
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mpz_abs_sub_bit(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #14 !prof !101 !PGOFuncName !323 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
  %5 = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !213
  %9 = lshr i64 %1, 6
  %10 = and i64 %1, 63
  %11 = shl nuw i64 1, %10
  %12 = getelementptr inbounds i64, ptr %8, i64 %9
  %13 = sub nsw i64 %6, %9
  %14 = tail call i64 @mpn_sub_1(ptr noundef %12, ptr noundef %12, i64 noundef %13, i64 noundef %11) #30, !range !135
  %15 = getelementptr i64, ptr %8, i64 %6
  %16 = getelementptr i64, ptr %15, i64 -1
  %17 = load i64, ptr %16, align 8, !tbaa !116
  %18 = icmp eq i64 %17, 0
  %19 = sext i1 %18 to i32
  %20 = add nsw i32 %5, %19
  %21 = load i32, ptr %3, align 4, !tbaa !212
  %22 = icmp slt i32 %21, 0
  %23 = sub nsw i32 0, %20
  %24 = select i1 %22, i32 %23, i32 %20
  store i32 %24, ptr %3, align 4, !tbaa !212
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_clrbit(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = tail call i32 @mpz_tstbit(ptr noundef %0, i64 noundef %1) #30, !range !269
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call fastcc void @mpz_abs_sub_bit(ptr noundef nonnull %0, i64 noundef %1) #30
  br label %11

10:                                               ; preds = %5
  tail call fastcc void @mpz_abs_add_bit(ptr noundef nonnull %0, i64 noundef %1) #30
  br label %11

11:                                               ; preds = %9, %10, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_combit(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !101 {
  %3 = tail call i32 @mpz_tstbit(ptr noundef %0, i64 noundef %1) #30, !range !269
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = lshr i32 %5, 31
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call fastcc void @mpz_abs_sub_bit(ptr noundef nonnull %0, i64 noundef %1) #30
  br label %10

9:                                                ; preds = %2
  tail call fastcc void @mpz_abs_add_bit(ptr noundef nonnull %0, i64 noundef %1) #30
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_com(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !101 {
  tail call void @mpz_neg(ptr noundef %0, ptr noundef %1) #30
  tail call void @mpz_sub_ui(ptr noundef %0, ptr noundef %0, i64 noundef 1) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_and(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !212
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
  br i1 %19, label %109, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %18, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !212
  %23 = lshr i32 %22, 31
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds %struct.__mpz_struct, ptr %17, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !212
  %27 = lshr i32 %26, 31
  %28 = zext nneg i32 %27 to i64
  %29 = and i64 %28, %24
  %30 = sub nsw i64 0, %24
  %31 = sub nsw i64 0, %28
  %32 = sub nsw i64 0, %29
  %33 = icmp slt i32 %26, 0
  %34 = select i1 %33, i64 %16, i64 %15
  %35 = add nuw nsw i64 %29, %34
  %36 = load i32, ptr %0, align 8, !tbaa !210
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %35) #30
  br label %44

41:                                               ; preds = %20
  %42 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !213
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi ptr [ %40, %39 ], [ %43, %41 ]
  %46 = getelementptr inbounds %struct.__mpz_struct, ptr %18, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !213
  %48 = getelementptr inbounds %struct.__mpz_struct, ptr %17, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !213
  br label %50

50:                                               ; preds = %50, %44
  %51 = phi i64 [ 0, %44 ], [ %73, %50 ]
  %52 = phi i64 [ %24, %44 ], [ %60, %50 ]
  %53 = phi i64 [ %28, %44 ], [ %66, %50 ]
  %54 = phi i64 [ %29, %44 ], [ %71, %50 ]
  %55 = getelementptr inbounds i64, ptr %47, i64 %51
  %56 = load i64, ptr %55, align 8, !tbaa !116
  %57 = xor i64 %56, %30
  %58 = add i64 %57, %52
  %59 = icmp ult i64 %58, %52
  %60 = zext i1 %59 to i64
  %61 = getelementptr inbounds i64, ptr %49, i64 %51
  %62 = load i64, ptr %61, align 8, !tbaa !116
  %63 = xor i64 %62, %31
  %64 = add i64 %63, %53
  %65 = icmp ult i64 %64, %53
  %66 = zext i1 %65 to i64
  %67 = and i64 %64, %58
  %68 = xor i64 %67, %32
  %69 = add i64 %68, %54
  %70 = icmp ult i64 %69, %54
  %71 = zext i1 %70 to i64
  %72 = getelementptr inbounds i64, ptr %45, i64 %51
  store i64 %69, ptr %72, align 8, !tbaa !116
  %73 = add nuw nsw i64 %51, 1
  %74 = icmp eq i64 %73, %15
  br i1 %74, label %75, label %50, !llvm.loop !324

75:                                               ; preds = %50
  %76 = icmp ult i64 %15, %34
  br i1 %76, label %77, label %95

77:                                               ; preds = %75, %77
  %78 = phi i64 [ %91, %77 ], [ %71, %75 ]
  %79 = phi i64 [ %86, %77 ], [ %60, %75 ]
  %80 = phi i64 [ %93, %77 ], [ %15, %75 ]
  %81 = getelementptr inbounds i64, ptr %47, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !116
  %83 = xor i64 %82, %30
  %84 = add i64 %83, %79
  %85 = icmp ult i64 %84, %79
  %86 = zext i1 %85 to i64
  %87 = and i64 %84, %31
  %88 = xor i64 %87, %32
  %89 = add i64 %88, %78
  %90 = icmp ult i64 %89, %78
  %91 = zext i1 %90 to i64
  %92 = getelementptr inbounds i64, ptr %45, i64 %80
  store i64 %89, ptr %92, align 8, !tbaa !116
  %93 = add nuw nsw i64 %80, 1
  %94 = icmp ult i64 %93, %34
  br i1 %94, label %77, label %95, !llvm.loop !325

95:                                               ; preds = %77, %75
  %96 = phi i64 [ %71, %75 ], [ %91, %77 ]
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = add nuw nsw i64 %34, 1
  %100 = getelementptr inbounds i64, ptr %45, i64 %34
  store i64 1, ptr %100, align 8, !tbaa !116
  br label %103

101:                                              ; preds = %95
  %102 = tail call fastcc i64 @mpn_normalized_size(ptr noundef nonnull %45, i64 noundef %34) #30
  br label %103

103:                                              ; preds = %101, %98
  %104 = phi i64 [ %99, %98 ], [ %102, %101 ]
  %105 = icmp eq i64 %29, 0
  %106 = sub nsw i64 0, %104
  %107 = select i1 %105, i64 %104, i64 %106
  %108 = trunc i64 %107 to i32
  br label %109

109:                                              ; preds = %14, %103
  %110 = phi i32 [ %108, %103 ], [ 0, %14 ]
  %111 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %110, ptr %111, align 4, !tbaa !212
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_ior(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !212
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
  tail call void @mpz_set(ptr noundef %0, ptr noundef nonnull %18) #30
  br label %111

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.__mpz_struct, ptr %18, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !212
  %24 = lshr i32 %23, 31
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds %struct.__mpz_struct, ptr %17, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !212
  %28 = lshr i32 %27, 31
  %29 = zext nneg i32 %28 to i64
  %30 = or i64 %29, %25
  %31 = sub nsw i64 0, %25
  %32 = sub nsw i64 0, %29
  %33 = sub nsw i64 0, %30
  %34 = icmp slt i32 %27, 0
  %35 = select i1 %34, i64 %15, i64 %16
  %36 = add nuw nsw i64 %30, %35
  %37 = load i32, ptr %0, align 8, !tbaa !210
  %38 = sext i32 %37 to i64
  %39 = icmp ugt i64 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %21
  %41 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %36) #30
  br label %45

42:                                               ; preds = %21
  %43 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !213
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi ptr [ %41, %40 ], [ %44, %42 ]
  %47 = getelementptr inbounds %struct.__mpz_struct, ptr %18, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !213
  %49 = getelementptr inbounds %struct.__mpz_struct, ptr %17, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !213
  br label %51

51:                                               ; preds = %51, %45
  %52 = phi i64 [ 0, %45 ], [ %74, %51 ]
  %53 = phi i64 [ %25, %45 ], [ %61, %51 ]
  %54 = phi i64 [ %29, %45 ], [ %67, %51 ]
  %55 = phi i64 [ %30, %45 ], [ %72, %51 ]
  %56 = getelementptr inbounds i64, ptr %48, i64 %52
  %57 = load i64, ptr %56, align 8, !tbaa !116
  %58 = xor i64 %57, %31
  %59 = add i64 %58, %53
  %60 = icmp ult i64 %59, %53
  %61 = zext i1 %60 to i64
  %62 = getelementptr inbounds i64, ptr %50, i64 %52
  %63 = load i64, ptr %62, align 8, !tbaa !116
  %64 = xor i64 %63, %32
  %65 = add i64 %64, %54
  %66 = icmp ult i64 %65, %54
  %67 = zext i1 %66 to i64
  %68 = or i64 %65, %59
  %69 = xor i64 %68, %33
  %70 = add i64 %69, %55
  %71 = icmp ult i64 %70, %55
  %72 = zext i1 %71 to i64
  %73 = getelementptr inbounds i64, ptr %46, i64 %52
  store i64 %70, ptr %73, align 8, !tbaa !116
  %74 = add nuw nsw i64 %52, 1
  %75 = icmp eq i64 %74, %15
  br i1 %75, label %76, label %51, !llvm.loop !326

76:                                               ; preds = %51
  %77 = icmp ult i64 %15, %35
  br i1 %77, label %78, label %96

78:                                               ; preds = %76, %78
  %79 = phi i64 [ %92, %78 ], [ %72, %76 ]
  %80 = phi i64 [ %87, %78 ], [ %61, %76 ]
  %81 = phi i64 [ %94, %78 ], [ %15, %76 ]
  %82 = getelementptr inbounds i64, ptr %48, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !116
  %84 = xor i64 %83, %31
  %85 = add i64 %84, %80
  %86 = icmp ult i64 %85, %80
  %87 = zext i1 %86 to i64
  %88 = or i64 %85, %32
  %89 = xor i64 %88, %33
  %90 = add i64 %89, %79
  %91 = icmp ult i64 %90, %79
  %92 = zext i1 %91 to i64
  %93 = getelementptr inbounds i64, ptr %46, i64 %81
  store i64 %90, ptr %93, align 8, !tbaa !116
  %94 = add nuw nsw i64 %81, 1
  %95 = icmp ult i64 %94, %35
  br i1 %95, label %78, label %96, !llvm.loop !327

96:                                               ; preds = %78, %76
  %97 = phi i64 [ %72, %76 ], [ %92, %78 ]
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = add nuw nsw i64 %35, 1
  %101 = getelementptr inbounds i64, ptr %46, i64 %35
  store i64 1, ptr %101, align 8, !tbaa !116
  br label %104

102:                                              ; preds = %96
  %103 = tail call fastcc i64 @mpn_normalized_size(ptr noundef nonnull %46, i64 noundef %35) #30
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi i64 [ %100, %99 ], [ %103, %102 ]
  %106 = icmp eq i64 %30, 0
  %107 = sub nsw i64 0, %105
  %108 = select i1 %106, i64 %105, i64 %107
  %109 = trunc i64 %108 to i32
  %110 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %109, ptr %110, align 4, !tbaa !212
  br label %111

111:                                              ; preds = %104, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_xor(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !212
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !212
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
  tail call void @mpz_set(ptr noundef %0, ptr noundef nonnull %18) #30
  br label %108

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.__mpz_struct, ptr %18, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !212
  %24 = lshr i32 %23, 31
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds %struct.__mpz_struct, ptr %17, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !212
  %28 = lshr i32 %27, 31
  %29 = zext nneg i32 %28 to i64
  %30 = xor i64 %29, %25
  %31 = sub nsw i64 0, %25
  %32 = sub nsw i64 0, %29
  %33 = sub nsw i64 0, %30
  %34 = add nuw nsw i64 %30, %16
  %35 = load i32, ptr %0, align 8, !tbaa !210
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %34) #30
  br label %43

40:                                               ; preds = %21
  %41 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !213
  br label %43

43:                                               ; preds = %40, %38
  %44 = phi ptr [ %39, %38 ], [ %42, %40 ]
  %45 = getelementptr inbounds %struct.__mpz_struct, ptr %18, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !213
  %47 = getelementptr inbounds %struct.__mpz_struct, ptr %17, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !213
  br label %49

49:                                               ; preds = %49, %43
  %50 = phi i64 [ 0, %43 ], [ %72, %49 ]
  %51 = phi i64 [ %25, %43 ], [ %59, %49 ]
  %52 = phi i64 [ %29, %43 ], [ %65, %49 ]
  %53 = phi i64 [ %30, %43 ], [ %70, %49 ]
  %54 = getelementptr inbounds i64, ptr %46, i64 %50
  %55 = load i64, ptr %54, align 8, !tbaa !116
  %56 = xor i64 %55, %31
  %57 = add i64 %56, %51
  %58 = icmp ult i64 %57, %51
  %59 = zext i1 %58 to i64
  %60 = getelementptr inbounds i64, ptr %48, i64 %50
  %61 = load i64, ptr %60, align 8, !tbaa !116
  %62 = xor i64 %61, %32
  %63 = add i64 %62, %52
  %64 = icmp ult i64 %63, %52
  %65 = zext i1 %64 to i64
  %66 = xor i64 %57, %33
  %67 = xor i64 %66, %63
  %68 = add i64 %67, %53
  %69 = icmp ult i64 %68, %53
  %70 = zext i1 %69 to i64
  %71 = getelementptr inbounds i64, ptr %44, i64 %50
  store i64 %68, ptr %71, align 8, !tbaa !116
  %72 = add nuw nsw i64 %50, 1
  %73 = icmp eq i64 %72, %15
  br i1 %73, label %74, label %49, !llvm.loop !328

74:                                               ; preds = %49
  %75 = icmp ult i64 %15, %16
  br i1 %75, label %76, label %93

76:                                               ; preds = %74, %76
  %77 = phi i64 [ %89, %76 ], [ %70, %74 ]
  %78 = phi i64 [ %85, %76 ], [ %59, %74 ]
  %79 = phi i64 [ %91, %76 ], [ %15, %74 ]
  %80 = getelementptr inbounds i64, ptr %46, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !116
  %82 = xor i64 %81, %31
  %83 = add i64 %82, %78
  %84 = icmp ult i64 %83, %78
  %85 = zext i1 %84 to i64
  %86 = xor i64 %83, %31
  %87 = add i64 %86, %77
  %88 = icmp ult i64 %87, %77
  %89 = zext i1 %88 to i64
  %90 = getelementptr inbounds i64, ptr %44, i64 %79
  store i64 %87, ptr %90, align 8, !tbaa !116
  %91 = add nuw nsw i64 %79, 1
  %92 = icmp ult i64 %91, %16
  br i1 %92, label %76, label %93, !llvm.loop !329

93:                                               ; preds = %76, %74
  %94 = phi i64 [ %70, %74 ], [ %89, %76 ]
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = add nuw nsw i64 %16, 1
  %98 = getelementptr inbounds i64, ptr %44, i64 %16
  store i64 1, ptr %98, align 8, !tbaa !116
  br label %101

99:                                               ; preds = %93
  %100 = tail call fastcc i64 @mpn_normalized_size(ptr noundef nonnull %44, i64 noundef %16) #30
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi i64 [ %97, %96 ], [ %100, %99 ]
  %103 = icmp eq i64 %30, 0
  %104 = sub nsw i64 0, %102
  %105 = select i1 %103, i64 %102, i64 %104
  %106 = trunc i64 %105 to i32
  %107 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %106, ptr %107, align 4, !tbaa !212
  br label %108

108:                                              ; preds = %101, %20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i64 @mpn_popcount(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !prof !101 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %11, %4 ], [ 0, %2 ]
  %6 = phi i64 [ %12, %4 ], [ 0, %2 ]
  %7 = getelementptr inbounds i64, ptr %0, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !116
  %9 = tail call fastcc i32 @gmp_popcount_limb(i64 noundef %8) #30
  %10 = zext i32 %9 to i64
  %11 = add i64 %5, %10
  %12 = add nuw nsw i64 %6, 1
  %13 = icmp eq i64 %12, %1
  br i1 %13, label %14, label %4, !llvm.loop !330

14:                                               ; preds = %4, %2
  %15 = phi i64 [ 0, %2 ], [ %11, %4 ]
  ret i64 %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @gmp_popcount_limb(i64 noundef %0) unnamed_addr #17 !prof !101 !PGOFuncName !331 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %25, label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ %23, %3 ], [ %0, %1 ]
  %5 = phi i32 [ %22, %3 ], [ 0, %1 ]
  %6 = lshr i64 %4, 1
  %7 = and i64 %6, 21845
  %8 = and i64 %4, 21845
  %9 = add nuw nsw i64 %7, %8
  %10 = trunc i64 %9 to i32
  %11 = lshr i32 %10, 2
  %12 = and i32 %11, 13107
  %13 = and i32 %10, 13107
  %14 = add nuw nsw i32 %12, %13
  %15 = lshr i32 %14, 4
  %16 = and i32 %15, 1799
  %17 = and i32 %14, 1799
  %18 = add nuw nsw i32 %16, %17
  %19 = lshr i32 %18, 8
  %20 = and i32 %18, 15
  %21 = add i32 %20, %5
  %22 = add i32 %21, %19
  %23 = lshr i64 %4, 16
  %24 = icmp ult i64 %4, 65536
  br i1 %24, label %25, label %3, !llvm.loop !332

25:                                               ; preds = %3, %1
  %26 = phi i32 [ 0, %1 ], [ %22, %3 ]
  ret i32 %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mpz_popcount(ptr nocapture noundef readonly %0) local_unnamed_addr #22 !prof !101 {
  %2 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !212
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !213
  %9 = tail call i64 @mpn_popcount(ptr noundef %8, i64 noundef %6) #30
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi i64 [ %9, %5 ], [ -1, %1 ]
  ret i64 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mpz_hamdist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #22 !prof !101 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = sext i32 %7 to i64
  %9 = xor i64 %8, %5
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %75, label %11

11:                                               ; preds = %2
  %12 = icmp slt i32 %4, 0
  %13 = lshr i32 %4, 31
  %14 = zext nneg i32 %13 to i64
  %15 = sub nsw i64 0, %14
  %16 = sub nsw i64 0, %8
  %17 = select i1 %12, i64 %16, i64 %8
  %18 = tail call i64 @llvm.abs.i64(i64 %5, i1 true)
  %19 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !213
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !213
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

31:                                               ; preds = %36, %25
  %32 = phi i64 [ %14, %25 ], [ %46, %36 ]
  %33 = phi i64 [ 0, %25 ], [ %26, %36 ]
  %34 = phi i64 [ 0, %25 ], [ %56, %36 ]
  %35 = icmp slt i64 %33, %29
  br i1 %35, label %59, label %75

36:                                               ; preds = %25, %36
  %37 = phi i64 [ %56, %36 ], [ 0, %25 ]
  %38 = phi i64 [ %57, %36 ], [ 0, %25 ]
  %39 = phi i64 [ %52, %36 ], [ %14, %25 ]
  %40 = phi i64 [ %46, %36 ], [ %14, %25 ]
  %41 = getelementptr inbounds i64, ptr %27, i64 %38
  %42 = load i64, ptr %41, align 8, !tbaa !116
  %43 = xor i64 %42, %15
  %44 = add i64 %43, %40
  %45 = icmp ult i64 %44, %40
  %46 = zext i1 %45 to i64
  %47 = getelementptr inbounds i64, ptr %28, i64 %38
  %48 = load i64, ptr %47, align 8, !tbaa !116
  %49 = xor i64 %48, %15
  %50 = add i64 %49, %39
  %51 = icmp ult i64 %50, %39
  %52 = zext i1 %51 to i64
  %53 = xor i64 %50, %44
  %54 = tail call fastcc i32 @gmp_popcount_limb(i64 noundef %53) #30
  %55 = zext i32 %54 to i64
  %56 = add i64 %37, %55
  %57 = add nuw nsw i64 %38, 1
  %58 = icmp eq i64 %57, %26
  br i1 %58, label %31, label %36, !llvm.loop !333

59:                                               ; preds = %31, %59
  %60 = phi i64 [ %72, %59 ], [ %34, %31 ]
  %61 = phi i64 [ %73, %59 ], [ %33, %31 ]
  %62 = phi i64 [ %68, %59 ], [ %32, %31 ]
  %63 = getelementptr inbounds i64, ptr %27, i64 %61
  %64 = load i64, ptr %63, align 8, !tbaa !116
  %65 = xor i64 %64, %15
  %66 = add i64 %65, %62
  %67 = icmp ult i64 %66, %62
  %68 = zext i1 %67 to i64
  %69 = xor i64 %66, %15
  %70 = tail call fastcc i32 @gmp_popcount_limb(i64 noundef %69) #30
  %71 = zext i32 %70 to i64
  %72 = add i64 %60, %71
  %73 = add nuw nsw i64 %61, 1
  %74 = icmp eq i64 %73, %29
  br i1 %74, label %75, label %59, !llvm.loop !334

75:                                               ; preds = %59, %31, %2
  %76 = phi i64 [ -1, %2 ], [ %34, %31 ], [ %72, %59 ]
  ret i64 %76
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mpz_scan0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #22 !prof !101 {
  %3 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !212
  %5 = icmp sgt i32 %4, -1
  %6 = sext i1 %5 to i64
  %7 = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %8 = zext i32 %7 to i64
  %9 = lshr i64 %1, 6
  %10 = icmp ult i64 %9, %8
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = select i1 %5, i64 %1, i64 -1
  br label %30

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !213
  %16 = getelementptr inbounds i64, ptr %15, i64 %9
  %17 = load i64, ptr %16, align 8, !tbaa !116
  %18 = xor i64 %17, %6
  br i1 %5, label %24, label %19

19:                                               ; preds = %13
  %20 = tail call fastcc i64 @mpn_normalized_size(ptr noundef nonnull %15, i64 noundef %9) #30
  %21 = icmp eq i64 %20, 0
  %22 = sext i1 %21 to i64
  %23 = add i64 %18, %22
  br label %24

24:                                               ; preds = %19, %13
  %25 = phi i64 [ %23, %19 ], [ %18, %13 ]
  %26 = and i64 %1, 63
  %27 = shl nsw i64 -1, %26
  %28 = and i64 %25, %27
  %29 = tail call fastcc i64 @mpn_common_scan(i64 noundef %28, i64 noundef %9, ptr noundef nonnull %15, i64 noundef %8, i64 noundef %6) #30
  br label %30

30:                                               ; preds = %24, %11
  %31 = phi i64 [ %12, %11 ], [ %29, %24 ]
  ret i64 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mpz_get_str(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca %struct.mpn_base_info, align 8
  %5 = icmp sgt i32 %1, -1
  %6 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %7 = select i1 %5, ptr @.str.8, ptr @.str.9
  %8 = icmp ult i32 %6, 2
  %9 = select i1 %8, i32 10, i32 %6
  %10 = icmp ugt i32 %9, 36
  br i1 %10, label %62, label %11

11:                                               ; preds = %3
  %12 = tail call i64 @mpz_sizeinbase(ptr noundef %2, i32 noundef %9) #30
  %13 = icmp eq ptr %0, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !102
  %16 = add i64 %12, 2
  %17 = tail call ptr %15(i64 noundef %16) #34
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi ptr [ %0, %11 ], [ %17, %14 ]
  %20 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !212
  %22 = tail call i32 @llvm.abs.i32(i32 %21, i1 true)
  %23 = zext nneg i32 %22 to i64
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i8 48, ptr %19, align 1, !tbaa !163
  br label %59

26:                                               ; preds = %18
  %27 = icmp slt i32 %21, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  store i8 45, ptr %19, align 1, !tbaa !163
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i64 [ 1, %28 ], [ 0, %26 ]
  %31 = tail call fastcc i32 @mpn_base_power_of_two_p(i32 noundef %9) #30, !range !159
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %19, i64 %30
  %35 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !213
  %37 = tail call fastcc i64 @mpn_get_str_bits(ptr noundef %34, i32 noundef %31, ptr noundef %36, i64 noundef %23) #30
  br label %46

38:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  %39 = zext nneg i32 %9 to i64
  call fastcc void @mpn_get_base_info(ptr noundef nonnull %4, i64 noundef %39) #30
  %40 = tail call fastcc ptr @gmp_xalloc_limbs(i64 noundef %23) #30
  %41 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !213
  tail call void @mpn_copyi(ptr noundef %40, ptr noundef %42, i64 noundef %23) #30
  %43 = getelementptr inbounds i8, ptr %19, i64 %30
  %44 = call fastcc i64 @mpn_get_str_other(ptr noundef %43, i32 noundef %9, ptr noundef nonnull %4, ptr noundef %40, i64 noundef %23) #30
  %45 = load ptr, ptr @gmp_free_func, align 8, !tbaa !102
  tail call void %45(ptr noundef %40, i64 noundef 0) #34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  br label %46

46:                                               ; preds = %38, %33
  %47 = phi i64 [ %37, %33 ], [ %44, %38 ]
  %48 = add i64 %47, %30
  %49 = icmp ult i64 %30, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46, %50
  %51 = phi i64 [ %57, %50 ], [ %30, %46 ]
  %52 = getelementptr inbounds i8, ptr %19, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !163
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds i8, ptr %7, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !163
  store i8 %56, ptr %52, align 1, !tbaa !163
  %57 = add nuw i64 %51, 1
  %58 = icmp eq i64 %57, %48
  br i1 %58, label %59, label %50, !llvm.loop !335

59:                                               ; preds = %50, %46, %25
  %60 = phi i64 [ 1, %25 ], [ %48, %46 ], [ %48, %50 ]
  %61 = getelementptr inbounds i8, ptr %19, i64 %60
  store i8 0, ptr %61, align 1, !tbaa !163
  br label %62

62:                                               ; preds = %59, %3
  %63 = phi ptr [ null, %3 ], [ %19, %59 ]
  ret ptr %63
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mpz_set_str(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 !prof !101 {
  %4 = alloca %struct.mpn_base_info, align 8
  %5 = tail call ptr @__ctype_b_loc() #36
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %1, %3 ], [ %15, %7 ]
  %9 = load i8, ptr %8, align 1, !tbaa !163
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i16, ptr %6, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !336
  %13 = and i16 %12, 8192
  %14 = icmp eq i16 %13, 0
  %15 = getelementptr inbounds i8, ptr %8, i64 1
  br i1 %14, label %16, label %7, !llvm.loop !338

16:                                               ; preds = %7
  %17 = icmp eq i8 %9, 45
  %18 = zext i1 %17 to i64
  %19 = getelementptr inbounds i8, ptr %8, i64 %18
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load i8, ptr %19, align 1, !tbaa !163
  %23 = icmp eq i8 %22, 48
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %19, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !163
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
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #37
  %35 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !102
  %36 = icmp eq i64 %34, 0
  %37 = zext i1 %36 to i64
  %38 = add i64 %34, %37
  %39 = tail call ptr %35(i64 noundef %38) #34
  %40 = load i8, ptr %33, align 1, !tbaa !163
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %83, label %42

42:                                               ; preds = %31, %78
  %43 = phi i8 [ %81, %78 ], [ %40, %31 ]
  %44 = phi ptr [ %80, %78 ], [ %33, %31 ]
  %45 = phi i64 [ %79, %78 ], [ 0, %31 ]
  %46 = load ptr, ptr %5, align 8, !tbaa !102
  %47 = zext i8 %43 to i64
  %48 = getelementptr inbounds i16, ptr %46, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !336
  %50 = and i16 %49, 8192
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %42
  %53 = add i8 %43, -48
  %54 = icmp ult i8 %53, 10
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = zext nneg i8 %53 to i32
  br label %69

57:                                               ; preds = %52
  %58 = add i8 %43, -97
  %59 = icmp ult i8 %58, 26
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = zext nneg i8 %43 to i32
  %62 = add nsw i32 %61, -87
  br label %69

63:                                               ; preds = %57
  %64 = add i8 %43, -65
  %65 = icmp ult i8 %64, 26
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = zext nneg i8 %43 to i32
  %68 = add nsw i32 %67, -55
  br label %69

69:                                               ; preds = %60, %66, %55
  %70 = phi i32 [ %56, %55 ], [ %62, %60 ], [ %68, %66 ]
  %71 = icmp ult i32 %70, %32
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = trunc i32 %70 to i8
  %74 = add i64 %45, 1
  %75 = getelementptr inbounds i8, ptr %39, i64 %45
  store i8 %73, ptr %75, align 1, !tbaa !163
  br label %78

76:                                               ; preds = %63, %69
  %77 = load ptr, ptr @gmp_free_func, align 8, !tbaa !102
  tail call void %77(ptr noundef %39, i64 noundef 0) #34
  br label %127

78:                                               ; preds = %72, %42
  %79 = phi i64 [ %45, %42 ], [ %74, %72 ]
  %80 = getelementptr inbounds i8, ptr %44, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !163
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %42, !llvm.loop !339

83:                                               ; preds = %78, %31
  %84 = phi i64 [ 0, %31 ], [ %79, %78 ]
  %85 = tail call fastcc i32 @mpn_base_power_of_two_p(i32 noundef %32) #30, !range !159
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %83
  %88 = zext nneg i32 %85 to i64
  %89 = mul i64 %84, %88
  %90 = add i64 %89, 63
  %91 = lshr i64 %90, 6
  %92 = load i32, ptr %0, align 8, !tbaa !210
  %93 = sext i32 %92 to i64
  %94 = icmp sgt i64 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %91) #30
  br label %100

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !213
  br label %100

100:                                              ; preds = %97, %95
  %101 = phi ptr [ %96, %95 ], [ %99, %97 ]
  %102 = tail call fastcc i64 @mpn_set_str_bits(ptr noundef %101, ptr noundef %39, i64 noundef %84, i32 noundef %85) #30
  br label %121

103:                                              ; preds = %83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #35
  %104 = sext i32 %32 to i64
  call fastcc void @mpn_get_base_info(ptr noundef nonnull %4, i64 noundef %104) #30
  %105 = load i32, ptr %4, align 8, !tbaa !167
  %106 = zext i32 %105 to i64
  %107 = add i64 %84, -1
  %108 = add i64 %107, %106
  %109 = udiv i64 %108, %106
  %110 = load i32, ptr %0, align 8, !tbaa !210
  %111 = sext i32 %110 to i64
  %112 = icmp sgt i64 %109, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %109) #30
  br label %118

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !213
  br label %118

118:                                              ; preds = %115, %113
  %119 = phi ptr [ %114, %113 ], [ %117, %115 ]
  %120 = call fastcc i64 @mpn_set_str_other(ptr noundef %119, ptr noundef %39, i64 noundef %84, i64 noundef %104, ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #35
  br label %121

121:                                              ; preds = %118, %100
  %122 = phi i64 [ %102, %100 ], [ %120, %118 ]
  %123 = load ptr, ptr @gmp_free_func, align 8, !tbaa !102
  tail call void %123(ptr noundef %39, i64 noundef 0) #34
  %124 = sub nsw i64 0, %122
  %125 = select i1 %17, i64 %124, i64 %122
  %126 = trunc i64 %125 to i32
  br label %127

127:                                              ; preds = %76, %121
  %128 = phi i32 [ 0, %76 ], [ %126, %121 ]
  %129 = phi i32 [ -1, %76 ], [ 0, %121 ]
  %130 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %128, ptr %130, align 4, !tbaa !212
  ret i32 %129
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #25

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mpz_init_set_str(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 !prof !101 {
  tail call void @mpz_init(ptr noundef %0) #30
  %4 = tail call i32 @mpz_set_str(ptr noundef %0, ptr noundef %1, i32 noundef %2) #30
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @mpz_out_str(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !101 {
  %4 = tail call ptr @mpz_get_str(ptr noundef null, i32 noundef %1, ptr noundef %2) #30
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37
  %6 = tail call i64 @fwrite(ptr noundef %4, i64 noundef 1, i64 noundef %5, ptr noundef %0) #30
  %7 = load ptr, ptr @gmp_free_func, align 8, !tbaa !102
  tail call void %7(ptr noundef %4, i64 noundef 0) #34
  ret i64 %6
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_import(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #1 !prof !340 {
  %8 = icmp eq i64 %5, 0
  br i1 %8, label %10, label %9, !prof !341

9:                                                ; preds = %7
  tail call fastcc void @gmp_die(ptr noundef nonnull @.str.10) #30
  unreachable

10:                                               ; preds = %7
  %11 = icmp eq i32 %4, 0
  %12 = select i1 %11, i32 -1, i32 %4, !prof !341
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %16, label %14, !prof !341

14:                                               ; preds = %10
  %15 = shl i64 %3, 1
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %18 = icmp eq i32 %2, 1
  br i1 %18, label %19, label %24, !prof !342

19:                                               ; preds = %16
  %20 = add i64 %1, -1
  %21 = mul i64 %20, %3
  %22 = getelementptr inbounds i8, ptr %6, i64 %21
  %23 = sub nsw i64 0, %17
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi ptr [ %22, %19 ], [ %6, %16 ]
  %26 = phi i64 [ %23, %19 ], [ %17, %16 ]
  %27 = icmp eq i32 %12, 1
  br i1 %27, label %28, label %31, !prof !342

28:                                               ; preds = %24
  %29 = add i64 %3, -1
  %30 = getelementptr inbounds i8, ptr %25, i64 %29
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi ptr [ %30, %28 ], [ %25, %24 ]
  %33 = mul i64 %3, %1
  %34 = add i64 %33, 7
  %35 = lshr i64 %34, 3
  %36 = load i32, ptr %0, align 8, !tbaa !210
  %37 = sext i32 %36 to i64
  %38 = icmp sgt i64 %35, %37
  br i1 %38, label %39, label %41, !prof !341

39:                                               ; preds = %31
  %40 = tail call fastcc ptr @mpz_realloc(ptr noundef nonnull %0, i64 noundef %35) #30
  br label %44

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !213
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi ptr [ %40, %39 ], [ %43, %41 ]
  %46 = icmp eq i64 %1, 0
  br i1 %46, label %93, label %47, !prof !343

47:                                               ; preds = %44
  %48 = icmp eq i64 %3, 0
  %49 = sext i32 %12 to i64
  %50 = sub nsw i64 0, %49
  br label %51

51:                                               ; preds = %47, %80
  %52 = phi i64 [ 0, %47 ], [ %84, %80 ]
  %53 = phi i64 [ 0, %47 ], [ %83, %80 ]
  %54 = phi i64 [ 0, %47 ], [ %82, %80 ]
  %55 = phi i64 [ %1, %47 ], [ %85, %80 ]
  %56 = phi ptr [ %32, %47 ], [ %86, %80 ]
  br i1 %48, label %80, label %57, !prof !344

57:                                               ; preds = %51, %73
  %58 = phi i64 [ %77, %73 ], [ 0, %51 ]
  %59 = phi i64 [ %76, %73 ], [ %52, %51 ]
  %60 = phi i64 [ %75, %73 ], [ %53, %51 ]
  %61 = phi i64 [ %74, %73 ], [ %54, %51 ]
  %62 = phi ptr [ %78, %73 ], [ %56, %51 ]
  %63 = load i8, ptr %62, align 1, !tbaa !163
  %64 = zext i8 %63 to i64
  %65 = add i64 %60, 1
  %66 = shl i64 %60, 3
  %67 = shl i64 %64, %66
  %68 = or i64 %67, %61
  %69 = icmp eq i64 %65, 8
  br i1 %69, label %70, label %73, !prof !345

70:                                               ; preds = %57
  %71 = add nsw i64 %59, 1
  %72 = getelementptr inbounds i64, ptr %45, i64 %59
  store i64 %68, ptr %72, align 8, !tbaa !116
  br label %73

73:                                               ; preds = %57, %70
  %74 = phi i64 [ 0, %70 ], [ %68, %57 ]
  %75 = phi i64 [ 0, %70 ], [ %65, %57 ]
  %76 = phi i64 [ %71, %70 ], [ %59, %57 ]
  %77 = add nuw i64 %58, 1
  %78 = getelementptr inbounds i8, ptr %62, i64 %50
  %79 = icmp eq i64 %77, %3
  br i1 %79, label %80, label %57, !prof !346, !llvm.loop !347

80:                                               ; preds = %73, %51
  %81 = phi ptr [ %56, %51 ], [ %78, %73 ]
  %82 = phi i64 [ %54, %51 ], [ %74, %73 ]
  %83 = phi i64 [ %53, %51 ], [ %75, %73 ]
  %84 = phi i64 [ %52, %51 ], [ %76, %73 ]
  %85 = add i64 %55, -1
  %86 = getelementptr inbounds i8, ptr %81, i64 %26
  %87 = icmp eq i64 %85, 0
  br i1 %87, label %88, label %51, !prof !348, !llvm.loop !349

88:                                               ; preds = %80
  %89 = icmp eq i64 %82, 0
  br i1 %89, label %93, label %90, !prof !350

90:                                               ; preds = %88
  %91 = add nsw i64 %84, 1
  %92 = getelementptr inbounds i64, ptr %45, i64 %84
  store i64 %82, ptr %92, align 8, !tbaa !116
  br label %96

93:                                               ; preds = %44, %88
  %94 = phi i64 [ %84, %88 ], [ 0, %44 ]
  %95 = tail call fastcc i64 @mpn_normalized_size(ptr noundef %45, i64 noundef %94) #30
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i64 [ %91, %90 ], [ %95, %93 ]
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.__mpz_struct, ptr %0, i64 0, i32 1
  store i32 %98, ptr %99, align 4, !tbaa !212
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mpz_export(ptr noundef writeonly %0, ptr noundef writeonly %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #1 !prof !175 {
  %8 = icmp eq i64 %5, 0
  br i1 %8, label %10, label %9, !prof !312

9:                                                ; preds = %7
  tail call fastcc void @gmp_die(ptr noundef nonnull @.str.10) #30
  unreachable

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !212
  %13 = sext i32 %12 to i64
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %105, label %15, !prof !351

15:                                               ; preds = %10
  %16 = icmp sgt i32 %12, -1
  br i1 %16, label %19, label %17, !prof !312

17:                                               ; preds = %15
  %18 = sub nsw i64 0, %13
  br label %19

19:                                               ; preds = %15, %17
  %20 = phi i64 [ %18, %17 ], [ %13, %15 ]
  %21 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !213
  %23 = add nsw i64 %20, -1
  %24 = getelementptr inbounds i64, ptr %22, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !116
  br label %26

26:                                               ; preds = %26, %19
  %27 = phi i64 [ 0, %19 ], [ %29, %26 ]
  %28 = phi i64 [ %25, %19 ], [ %30, %26 ]
  %29 = add nuw nsw i64 %27, 1
  %30 = lshr i64 %28, 8
  %31 = icmp ult i64 %28, 256
  br i1 %31, label %32, label %26, !prof !352, !llvm.loop !353

32:                                               ; preds = %26
  %33 = shl nsw i64 %23, 3
  %34 = add i64 %3, -1
  %35 = add i64 %34, %33
  %36 = add i64 %35, %29
  %37 = udiv i64 %36, %3
  %38 = icmp eq ptr %0, null
  br i1 %38, label %39, label %43, !prof !351

39:                                               ; preds = %32
  %40 = load ptr, ptr @gmp_allocate_func, align 8, !tbaa !102
  %41 = mul i64 %37, %3
  %42 = tail call ptr %40(i64 noundef %41) #34
  br label %43

43:                                               ; preds = %39, %32
  %44 = phi ptr [ %0, %32 ], [ %42, %39 ]
  %45 = icmp eq i32 %4, 0
  %46 = select i1 %45, i32 -1, i32 %4, !prof !312
  %47 = icmp eq i32 %46, %2
  br i1 %47, label %50, label %48, !prof !312

48:                                               ; preds = %43
  %49 = shl i64 %3, 1
  br label %50

50:                                               ; preds = %43, %48
  %51 = phi i64 [ %49, %48 ], [ 0, %43 ]
  %52 = icmp eq i32 %2, 1
  br i1 %52, label %53, label %58, !prof !351

53:                                               ; preds = %50
  %54 = add i64 %37, -1
  %55 = mul i64 %54, %3
  %56 = getelementptr inbounds i8, ptr %44, i64 %55
  %57 = sub nsw i64 0, %51
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi ptr [ %56, %53 ], [ %44, %50 ]
  %60 = phi i64 [ %57, %53 ], [ %51, %50 ]
  %61 = icmp eq i32 %46, 1
  br i1 %61, label %62, label %64, !prof !351

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 %34
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi ptr [ %63, %62 ], [ %59, %58 ]
  %66 = icmp ult i64 %36, %3
  br i1 %66, label %105, label %67, !prof !354

67:                                               ; preds = %64
  %68 = sext i32 %46 to i64
  %69 = sub nsw i64 0, %68
  %70 = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  br label %71

71:                                               ; preds = %67, %101
  %72 = phi i64 [ 0, %67 ], [ %94, %101 ]
  %73 = phi i64 [ 0, %67 ], [ %97, %101 ]
  %74 = phi i64 [ 0, %67 ], [ %96, %101 ]
  %75 = phi ptr [ %65, %67 ], [ %103, %101 ]
  %76 = phi i64 [ 0, %67 ], [ %102, %101 ]
  br label %77

77:                                               ; preds = %71, %91
  %78 = phi i64 [ 0, %71 ], [ %98, %91 ]
  %79 = phi i64 [ %72, %71 ], [ %94, %91 ]
  %80 = phi i64 [ %73, %71 ], [ %97, %91 ]
  %81 = phi i64 [ %74, %71 ], [ %96, %91 ]
  %82 = phi ptr [ %75, %71 ], [ %99, %91 ]
  %83 = icmp eq i64 %80, 0
  br i1 %83, label %84, label %91, !prof !355

84:                                               ; preds = %77
  %85 = icmp slt i64 %79, %20
  br i1 %85, label %86, label %91, !prof !312

86:                                               ; preds = %84
  %87 = load ptr, ptr %21, align 8, !tbaa !213
  %88 = add nsw i64 %79, 1
  %89 = getelementptr inbounds i64, ptr %87, i64 %79
  %90 = load i64, ptr %89, align 8, !tbaa !116
  br label %91

91:                                               ; preds = %84, %86, %77
  %92 = phi i64 [ %81, %77 ], [ %90, %86 ], [ %81, %84 ]
  %93 = phi i64 [ %80, %77 ], [ 8, %86 ], [ 8, %84 ]
  %94 = phi i64 [ %79, %77 ], [ %88, %86 ], [ %79, %84 ]
  %95 = trunc i64 %92 to i8
  store i8 %95, ptr %82, align 1, !tbaa !163
  %96 = lshr i64 %92, 8
  %97 = add nsw i64 %93, -1
  %98 = add nuw i64 %78, 1
  %99 = getelementptr inbounds i8, ptr %82, i64 %69
  %100 = icmp eq i64 %98, %70
  br i1 %100, label %101, label %77, !prof !356, !llvm.loop !357

101:                                              ; preds = %91
  %102 = add nuw i64 %76, 1
  %103 = getelementptr inbounds i8, ptr %99, i64 %60
  %104 = icmp ult i64 %102, %37
  br i1 %104, label %71, label %105, !prof !354, !llvm.loop !358

105:                                              ; preds = %101, %64, %10
  %106 = phi ptr [ %0, %10 ], [ %44, %64 ], [ %44, %101 ]
  %107 = phi i64 [ 0, %10 ], [ %37, %64 ], [ %37, %101 ]
  %108 = icmp eq ptr %1, null
  br i1 %108, label %110, label %109, !prof !351

109:                                              ; preds = %105
  store i64 %107, ptr %1, align 8, !tbaa !116
  br label %110

110:                                              ; preds = %109, %105
  ret ptr %106
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #27

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #29 = { nounwind optsize allocsize(0) }
attributes #30 = { optsize }
attributes #31 = { cold optsize }
attributes #32 = { noreturn nounwind optsize }
attributes #33 = { nounwind optsize allocsize(1) }
attributes #34 = { nounwind optsize }
attributes #35 = { nounwind }
attributes #36 = { nounwind optsize willreturn memory(none) }
attributes #37 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!100}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!36 = !{ptr @gmp_default_alloc, ptr @malloc, i64 586519}
!37 = !{ptr @gmp_default_alloc, ptr @gmp_die, i64 1}
!38 = !{ptr @gmp_default_realloc, ptr @realloc, i64 324672}
!39 = !{ptr @gmp_default_realloc, ptr @gmp_die, i64 1}
!40 = !{ptr @gmp_default_free, ptr @free, i64 586519}
!41 = !{ptr @mpn_add, ptr @mpn_add_n, i64 54328}
!42 = !{ptr @mpn_add, ptr @mpn_add_1, i64 22194}
!43 = !{ptr @mpn_sub, ptr @mpn_sub_n, i64 101395}
!44 = !{ptr @mpn_sub, ptr @mpn_sub_1, i64 62101}
!45 = !{ptr @mpn_div_qr_1_invert, ptr @mpn_invert_3by2, i64 7435}
!46 = !{ptr @mpn_div_qr_1_preinv, ptr @gmp_xalloc_limbs, i64 7434}
!47 = !{ptr @mpn_div_qr_1_preinv, ptr @mpn_lshift, i64 7434}
!48 = !{ptr @mpz_init, ptr @gmp_xalloc_limbs, i64 571649}
!49 = !{ptr @mpz_init2, ptr @gmp_xalloc_limbs, i64 7435}
!50 = !{ptr @mpz_set, ptr @mpz_realloc, i64 5}
!51 = !{ptr @mpz_set, ptr @mpn_copyi, i64 159513}
!52 = !{ptr @mpz_realloc, ptr @gmp_xrealloc_limbs, i64 324672}
!53 = !{ptr @mpz_init_set, ptr @mpz_init, i64 39779}
!54 = !{ptr @mpz_init_set, ptr @mpz_set, i64 39779}
!55 = !{ptr @mpz_cmp, ptr @mpn_cmp, i64 63366}
!56 = !{ptr @mpn_cmp4, ptr @mpn_cmp, i64 46505}
!57 = !{ptr @mpz_neg, ptr @mpz_set, i64 14729}
!58 = !{ptr @mpz_add_ui, ptr @mpz_abs_add_ui, i64 217}
!59 = !{ptr @mpz_add_ui, ptr @mpz_abs_sub_ui, i64 722}
!60 = !{ptr @mpz_abs_add_ui, ptr @mpz_realloc, i64 7}
!61 = !{ptr @mpz_abs_add_ui, ptr @mpn_add_1, i64 225}
!62 = !{ptr @mpz_abs_sub_ui, ptr @mpz_realloc, i64 1}
!63 = !{ptr @mpz_abs_sub_ui, ptr @mpn_sub_1, i64 10276}
!64 = !{ptr @mpz_abs_sub_ui, ptr @mpn_normalized_size, i64 10276}
!65 = !{ptr @mpz_sub_ui, ptr @mpz_abs_add_ui, i64 11}
!66 = !{ptr @mpz_sub_ui, ptr @mpz_abs_sub_ui, i64 9720}
!67 = !{ptr @mpz_add, ptr @mpz_abs_add, i64 30492}
!68 = !{ptr @mpz_add, ptr @mpz_abs_sub, i64 31246}
!69 = !{ptr @mpz_abs_add, ptr @mpz_realloc, i64 51345}
!70 = !{ptr @mpz_abs_add, ptr @mpn_add, i64 54328}
!71 = !{ptr @mpz_abs_sub, ptr @mpn_cmp4, i64 108606}
!72 = !{ptr @mpz_abs_sub, ptr @mpz_realloc, i64 34}
!73 = !{ptr @mpz_abs_sub, ptr @mpn_sub, i64 101394}
!74 = !{ptr @mpz_abs_sub, ptr @mpn_normalized_size, i64 101394}
!75 = !{ptr @mpz_sub, ptr @mpz_abs_sub, i64 77359}
!76 = !{ptr @mpz_sub, ptr @mpz_abs_add, i64 23837}
!77 = !{ptr @mpz_div_qr, ptr @gmp_die, i64 1}
!78 = !{ptr @mpz_div_qr, ptr @mpz_init_set, i64 7432}
!79 = !{ptr @mpz_div_qr, ptr @mpn_div_qr, i64 7432}
!80 = !{ptr @mpz_div_qr, ptr @mpz_init2, i64 7431}
!81 = !{ptr @mpz_div_qr, ptr @mpn_normalized_size, i64 7432}
!82 = !{ptr @mpz_div_qr, ptr @mpz_swap, i64 7432}
!83 = !{ptr @mpz_div_qr, ptr @mpz_clear, i64 14863}
!84 = !{ptr @mpn_div_qr, ptr @mpn_div_qr_invert, i64 7435}
!85 = !{ptr @mpn_div_qr, ptr @mpn_div_qr_preinv, i64 7435}
!86 = !{ptr @mpn_div_qr, ptr @gmp_xalloc_limbs, i64 1}
!87 = !{ptr @mpn_div_qr, ptr @mpn_lshift, i64 1}
!88 = !{ptr @mpn_div_qr_invert, ptr @mpn_div_qr_1_invert, i64 7434}
!89 = !{ptr @mpn_div_qr_preinv, ptr @mpn_div_qr_1_preinv, i64 7434}
!90 = !{ptr @mpz_fdiv_q, ptr @mpz_div_qr, i64 7435}
!91 = !{ptr @mpz_sizeinbase, ptr @mpn_limb_size_in_base_2, i64 38243}
!92 = !{ptr @mpz_sizeinbase, ptr @gmp_xalloc_limbs, i64 1}
!93 = !{ptr @mpz_sizeinbase, ptr @mpn_copyi, i64 1}
!94 = !{ptr @mpz_sizeinbase, ptr @mpn_div_qr_1_invert, i64 1}
!95 = !{ptr @mpz_sizeinbase, ptr @mpn_div_qr_1_preinv, i64 32}
!96 = !{ptr @mpz_import, ptr @gmp_die, i64 1}
!97 = !{ptr @mpz_import, ptr @mpz_realloc, i64 273282}
!98 = !{ptr @mpz_import, ptr @mpn_normalized_size, i64 273282}
!99 = !{ptr @mpz_export, ptr @gmp_die, i64 1}
!100 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!101 = !{!"function_entry_count", i64 0}
!102 = !{!103, !103, i64 0}
!103 = !{!"any pointer", !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !{!"function_entry_count", i64 586519}
!107 = !{!"mini-gmp.c:gmp_default_alloc"}
!108 = !{!"branch_weights", i32 1, i32 586520}
!109 = !{!"mini-gmp.c:gmp_die"}
!110 = !{!"function_entry_count", i64 324672}
!111 = !{!"mini-gmp.c:gmp_default_realloc"}
!112 = !{!"branch_weights", i32 1, i32 324673}
!113 = !{!"mini-gmp.c:gmp_default_free"}
!114 = !{!"function_entry_count", i64 159514}
!115 = !{!"branch_weights", i32 103779, i32 55736}
!116 = !{!117, !117, i64 0}
!117 = !{!"long", !104, i64 0}
!118 = !{!"branch_weights", i32 103779, i32 0}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.mustprogress"}
!121 = distinct !{!121, !120}
!122 = !{!"function_entry_count", i64 109871}
!123 = !{!"branch_weights", i32 102323, i32 18439}
!124 = !{!"branch_weights", i32 10890, i32 91434}
!125 = distinct !{!125, !120}
!126 = !{!"function_entry_count", i64 22420}
!127 = !{!"branch_weights", i32 22421, i32 1}
!128 = distinct !{!128, !120}
!129 = !{!"function_entry_count", i64 54328}
!130 = !{!"branch_weights", i32 30496, i32 23833}
!131 = !{!"branch_weights", i32 30496, i32 0}
!132 = distinct !{!132, !120}
!133 = !{i64 0, i64 3}
!134 = !{!"branch_weights", i32 22195, i32 32135}
!135 = !{i64 0, i64 2}
!136 = !{!"function_entry_count", i64 72379}
!137 = !{!"branch_weights", i32 72380, i32 3}
!138 = distinct !{!138, !120}
!139 = !{!"function_entry_count", i64 101395}
!140 = !{!"branch_weights", i32 39325, i32 62071}
!141 = !{!"branch_weights", i32 39325, i32 0}
!142 = distinct !{!142, !120}
!143 = !{!"branch_weights", i32 62102, i32 39295}
!144 = distinct !{!144, !120}
!145 = distinct !{!145, !120}
!146 = distinct !{!146, !120}
!147 = distinct !{!147, !120}
!148 = !{!"function_entry_count", i64 7435}
!149 = !{!"branch_weights", i32 7435, i32 1}
!150 = !{!"branch_weights", i32 1, i32 0}
!151 = distinct !{!151, !120}
!152 = distinct !{!152, !120}
!153 = !{!"mini-gmp.c:mpn_common_scan"}
!154 = distinct !{!154, !120}
!155 = distinct !{!155, !120}
!156 = distinct !{!156, !120}
!157 = !{!"branch_weights", i32 1, i32 7436}
!158 = !{!"branch_weights", i32 7436, i32 1}
!159 = !{i32 0, i32 9}
!160 = !{!"mini-gmp.c:mpn_base_power_of_two_p"}
!161 = !{!"mini-gmp.c:mpn_get_str_bits"}
!162 = !{i64 -4294967231, i64 65}
!163 = !{!104, !104, i64 0}
!164 = distinct !{!164, !120}
!165 = !{!"mini-gmp.c:mpn_get_base_info"}
!166 = distinct !{!166, !120}
!167 = !{!168, !169, i64 0}
!168 = !{!"mpn_base_info", !169, i64 0, !117, i64 8}
!169 = !{!"int", !104, i64 0}
!170 = !{!168, !117, i64 8}
!171 = !{!"mini-gmp.c:mpn_get_str_other"}
!172 = distinct !{!172, !120}
!173 = distinct !{!173, !120}
!174 = distinct !{!174, !120}
!175 = !{!"function_entry_count", i64 38244}
!176 = !{!"mini-gmp.c:mpn_limb_size_in_base_2"}
!177 = !{!"branch_weights", i32 38244, i32 1}
!178 = !{!"branch_weights", i32 143399, i32 38244}
!179 = distinct !{!179, !120}
!180 = !{!"branch_weights", i32 14145, i32 38244}
!181 = distinct !{!181, !120}
!182 = !{!"mini-gmp.c:mpn_div_qr_1_invert"}
!183 = !{!"branch_weights", i32 44611, i32 7435}
!184 = distinct !{!184, !120}
!185 = !{!"branch_weights", i32 41905, i32 7435}
!186 = distinct !{!186, !120}
!187 = !{!188, !169, i64 0}
!188 = !{!"gmp_div_inverse", !169, i64 0, !117, i64 8, !117, i64 16, !117, i64 24}
!189 = !{!188, !117, i64 8}
!190 = !{!188, !117, i64 24}
!191 = !{!"mini-gmp.c:mpn_div_qr_1_preinv"}
!192 = !{!"branch_weights", i32 1, i32 7435}
!193 = distinct !{!193, !120}
!194 = !{!"mini-gmp.c:mpn_limb_get_str"}
!195 = distinct !{!195, !120}
!196 = !{!"mini-gmp.c:gmp_xalloc_limbs"}
!197 = !{!"mini-gmp.c:mpn_set_str_bits"}
!198 = distinct !{!198, !120}
!199 = !{!"mini-gmp.c:mpn_set_str_other"}
!200 = distinct !{!200, !120}
!201 = distinct !{!201, !120}
!202 = distinct !{!202, !120}
!203 = !{!"function_entry_count", i64 392392}
!204 = !{!"mini-gmp.c:mpn_normalized_size"}
!205 = !{!"branch_weights", i32 110359, i32 1}
!206 = !{!"branch_weights", i32 383554, i32 392393}
!207 = !{!"branch_weights", i32 555228, i32 110359}
!208 = distinct !{!208, !120}
!209 = !{!"function_entry_count", i64 571649}
!210 = !{!211, !169, i64 0}
!211 = !{!"", !169, i64 0, !169, i64 4, !103, i64 8}
!212 = !{!211, !169, i64 4}
!213 = !{!211, !103, i64 8}
!214 = !{!"function_entry_count", i64 579084}
!215 = !{!"function_entry_count", i64 172568}
!216 = !{!"branch_weights", i32 172569, i32 1}
!217 = !{!"branch_weights", i32 1, i32 159515}
!218 = !{!"branch_weights", i32 5, i32 159511}
!219 = !{!"mini-gmp.c:mpz_realloc"}
!220 = !{!"branch_weights", i32 324663, i32 11}
!221 = !{!"mini-gmp.c:gmp_xrealloc_limbs"}
!222 = !{!"function_entry_count", i64 39779}
!223 = distinct !{!223, !120}
!224 = distinct !{!224, !120}
!225 = distinct !{!225, !120}
!226 = distinct !{!226, !120}
!227 = distinct !{!227, !120}
!228 = !{!"function_entry_count", i64 92093}
!229 = !{i32 -1, i32 2}
!230 = !{!"function_entry_count", i64 120151}
!231 = !{!"branch_weights", i32 63367, i32 56786}
!232 = !{!"branch_weights", i32 55574, i32 7794}
!233 = !{!"function_entry_count", i64 108606}
!234 = !{!"mini-gmp.c:mpn_cmp4"}
!235 = !{!"branch_weights", i32 46506, i32 62102}
!236 = !{!"function_entry_count", i64 78875}
!237 = !{!"branch_weights", i32 64148, i32 14729}
!238 = !{!"function_entry_count", i64 40874}
!239 = !{!169, !169, i64 0}
!240 = !{!"function_entry_count", i64 939}
!241 = !{!"branch_weights", i32 217, i32 724}
!242 = !{i64 -2147483648, i64 2147483649}
!243 = !{!"function_entry_count", i64 226}
!244 = !{!"mini-gmp.c:mpz_abs_add_ui"}
!245 = !{!"branch_weights", i32 1, i32 227}
!246 = !{!"branch_weights", i32 221, i32 7}
!247 = !{!"function_entry_count", i64 10444}
!248 = !{!"mini-gmp.c:mpz_abs_sub_ui"}
!249 = !{!"branch_weights", i32 1, i32 10445}
!250 = !{!"branch_weights", i32 10279, i32 1716760, i32 105657841}
!251 = !{!"branch_weights", i32 1, i32 10279}
!252 = !{!"function_entry_count", i64 9731}
!253 = !{!"branch_weights", i32 11, i32 9722}
!254 = !{!"function_entry_count", i64 61738}
!255 = !{!"branch_weights", i32 30493, i32 31247}
!256 = !{i64 -2147483648, i64 2147483650}
!257 = !{!"branch_weights", i32 19751, i32 41989}
!258 = !{!"mini-gmp.c:mpz_abs_add"}
!259 = !{!"branch_weights", i32 4738, i32 49592}
!260 = !{!"branch_weights", i32 2983, i32 51347}
!261 = !{!"mini-gmp.c:mpz_abs_sub"}
!262 = !{!"branch_weights", i32 84078, i32 24530}
!263 = !{!"branch_weights", i32 31, i32 84048}
!264 = !{!"branch_weights", i32 17319, i32 7212}
!265 = !{!"branch_weights", i32 3, i32 17317}
!266 = !{!"function_entry_count", i64 101196}
!267 = !{!"branch_weights", i32 77361, i32 23837}
!268 = !{!"branch_weights", i32 22754, i32 78444}
!269 = !{i32 0, i32 2}
!270 = !{!"mini-gmp.c:mpz_div_qr"}
!271 = !{!"branch_weights", i32 0, i32 -2147483648}
!272 = !{!"branch_weights", i32 7436, i32 55301533}
!273 = !{!"branch_weights", i32 288771, i32 2147194877}
!274 = !{!"mini-gmp.c:mpn_div_qr"}
!275 = !{!"mini-gmp.c:mpn_div_qr_invert"}
!276 = !{!"branch_weights", i32 1, i32 14872, i32 1}
!277 = distinct !{!277, !120}
!278 = distinct !{!278, !120}
!279 = !{!188, !117, i64 16}
!280 = !{!"mini-gmp.c:mpn_div_qr_preinv"}
!281 = !{!"mini-gmp.c:mpn_div_qr_2_invert"}
!282 = distinct !{!282, !120}
!283 = distinct !{!283, !120}
!284 = !{!"mini-gmp.c:mpn_div_qr_2_preinv"}
!285 = distinct !{!285, !120}
!286 = !{!"mini-gmp.c:mpn_div_qr_pi1"}
!287 = distinct !{!287, !120}
!288 = !{!"mini-gmp.c:mpz_div_q_2exp"}
!289 = !{!"mini-gmp.c:mpz_div_r_2exp"}
!290 = distinct !{!290, !120}
!291 = distinct !{!291, !120}
!292 = distinct !{!292, !120}
!293 = !{!"mini-gmp.c:mpz_div_qr_ui"}
!294 = !{!"mini-gmp.c:mpn_div_qr_1"}
!295 = !{i64 0, i64 65}
!296 = distinct !{!296, !120}
!297 = distinct !{!297, !120}
!298 = !{!"mini-gmp.c:mpn_gcd_11"}
!299 = distinct !{!299, !120}
!300 = distinct !{!300, !120}
!301 = distinct !{!301, !120}
!302 = distinct !{!302, !120}
!303 = distinct !{!303, !120}
!304 = distinct !{!304, !120}
!305 = !{!"mini-gmp.c:mpz_make_odd"}
!306 = distinct !{!306, !120}
!307 = distinct !{!307, !120}
!308 = distinct !{!308, !120}
!309 = distinct !{!309, !120}
!310 = distinct !{!310, !120}
!311 = distinct !{!311, !120}
!312 = !{!"branch_weights", i32 38245, i32 1}
!313 = !{!"branch_weights", i32 56151, i32 2147427497}
!314 = !{!"branch_weights", i32 1, i32 38245, i32 1, i32 1, i32 1, i32 1}
!315 = distinct !{!315, !120}
!316 = distinct !{!316, !120}
!317 = distinct !{!317, !120}
!318 = distinct !{!318, !120}
!319 = !{!"mini-gmp.c:gmp_millerrabin"}
!320 = distinct !{!320, !120}
!321 = distinct !{!321, !120}
!322 = !{!"mini-gmp.c:mpz_abs_add_bit"}
!323 = !{!"mini-gmp.c:mpz_abs_sub_bit"}
!324 = distinct !{!324, !120}
!325 = distinct !{!325, !120}
!326 = distinct !{!326, !120}
!327 = distinct !{!327, !120}
!328 = distinct !{!328, !120}
!329 = distinct !{!329, !120}
!330 = distinct !{!330, !120}
!331 = !{!"mini-gmp.c:gmp_popcount_limb"}
!332 = distinct !{!332, !120}
!333 = distinct !{!333, !120}
!334 = distinct !{!334, !120}
!335 = distinct !{!335, !120}
!336 = !{!337, !337, i64 0}
!337 = !{!"short", !104, i64 0}
!338 = distinct !{!338, !120}
!339 = distinct !{!339, !120}
!340 = !{!"function_entry_count", i64 273284}
!341 = !{!"branch_weights", i32 273285, i32 1}
!342 = !{!"branch_weights", i32 1, i32 273285}
!343 = !{!"branch_weights", i32 1, i32 273284}
!344 = !{!"branch_weights", i32 1, i32 546568}
!345 = !{!"branch_weights", i32 546569, i32 3825977}
!346 = !{!"branch_weights", i32 546568, i32 3825977}
!347 = distinct !{!347, !120}
!348 = !{!"branch_weights", i32 273284, i32 273285}
!349 = distinct !{!349, !120}
!350 = !{!"branch_weights", i32 2147475790, i32 7858}
!351 = !{!"branch_weights", i32 1, i32 38245}
!352 = !{!"branch_weights", i32 38245, i32 86067}
!353 = distinct !{!353, !120}
!354 = !{!"branch_weights", i32 1, i32 38244}
!355 = !{!"branch_weights", i32 38245, i32 267709}
!356 = !{!"branch_weights", i32 38245, i32 267708}
!357 = distinct !{!357, !120}
!358 = distinct !{!358, !120}
