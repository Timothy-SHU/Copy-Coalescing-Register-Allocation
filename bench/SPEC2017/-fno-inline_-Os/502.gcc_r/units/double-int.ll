; ModuleID = 'double-int.c'
source_filename = "double-int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.double_int = type { i64, i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.__mpz_struct = type { i32, i32, ptr }

@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"double-int.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local { i64, i64 } @double_int_mask(i32 noundef %0) local_unnamed_addr #0 !prof !45 {
  %2 = icmp ugt i32 %0, 64
  br i1 %2, label %3, label %8, !prof !46

3:                                                ; preds = %1
  %4 = add i32 %0, -65
  %5 = zext nneg i32 %4 to i64
  %6 = shl i64 2, %5
  %7 = add i64 %6, -1
  br label %13

8:                                                ; preds = %1
  %9 = add nsw i32 %0, -1
  %10 = zext nneg i32 %9 to i64
  %11 = shl i64 2, %10
  %12 = add i64 %11, -1
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i64 [ -1, %3 ], [ %12, %8 ]
  %15 = phi i64 [ %7, %3 ], [ 0, %8 ]
  %16 = insertvalue { i64, i64 } poison, i64 %14, 0
  %17 = insertvalue { i64, i64 } %16, i64 %15, 1
  ret { i64, i64 } %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local { i64, i64 } @double_int_ext(i64 %0, i64 %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !45 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %8, label %6, !prof !46

6:                                                ; preds = %4
  %7 = tail call { i64, i64 } @double_int_zext(i64 %0, i64 %1, i32 noundef %2) #9
  br label %10

8:                                                ; preds = %4
  %9 = tail call { i64, i64 } @double_int_sext(i64 %0, i64 %1, i32 noundef %2) #9
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi { i64, i64 } [ %7, %6 ], [ %9, %8 ]
  ret { i64, i64 } %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local { i64, i64 } @double_int_zext(i64 %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 !prof !45 {
  %4 = tail call { i64, i64 } @double_int_mask(i32 noundef %2) #9
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  %7 = and i64 %5, %0
  %8 = and i64 %6, %1
  %9 = insertvalue { i64, i64 } poison, i64 %7, 0
  %10 = insertvalue { i64, i64 } %9, i64 %8, 1
  ret { i64, i64 } %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local { i64, i64 } @double_int_sext(i64 %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 !prof !47 {
  %4 = tail call { i64, i64 } @double_int_mask(i32 noundef %2) #9
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  %7 = icmp ult i32 %2, 65
  %8 = add i32 %2, -64
  %9 = select i1 %7, i32 %2, i32 %8
  %10 = select i1 %7, i64 %0, i64 %1
  %11 = add i32 %9, -1
  %12 = zext nneg i32 %11 to i64
  %13 = shl nuw i64 1, %12
  %14 = and i64 %13, %10
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = xor i64 %5, -1
  %18 = or i64 %17, %0
  %19 = xor i64 %6, -1
  %20 = or i64 %19, %1
  br label %24

21:                                               ; preds = %3
  %22 = and i64 %5, %0
  %23 = and i64 %6, %1
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i64 [ %18, %16 ], [ %22, %21 ]
  %26 = phi i64 [ %20, %16 ], [ %23, %21 ]
  %27 = insertvalue { i64, i64 } poison, i64 %25, 0
  %28 = insertvalue { i64, i64 } %27, i64 %26, 1
  ret { i64, i64 } %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @tree_to_double_int(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !48 {
  %2 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa.struct !49
  %4 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa.struct !54
  %6 = insertvalue { i64, i64 } poison, i64 %3, 0
  %7 = insertvalue { i64, i64 } %6, i64 %5, 1
  ret { i64, i64 } %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local zeroext i8 @double_int_fits_in_uhwi_p(i64 %0, i64 %1) local_unnamed_addr #0 !prof !47 {
  %3 = icmp eq i64 %1, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local zeroext i8 @double_int_fits_in_shwi_p(i64 %0, i64 %1) local_unnamed_addr #0 !prof !55 {
  switch i64 %1, label %9 [
    i64 0, label %3
    i64 -1, label %6
  ], !prof !56

3:                                                ; preds = %2
  %4 = icmp sgt i64 %0, -1
  %5 = zext i1 %4 to i8
  br label %9

6:                                                ; preds = %2
  %7 = lshr i64 %0, 63
  %8 = trunc i64 %7 to i8
  br label %9

9:                                                ; preds = %2, %6, %3
  %10 = phi i8 [ %5, %3 ], [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local zeroext i8 @double_int_fits_in_hwi_p(i64 %0, i64 %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !47 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call zeroext i8 @double_int_fits_in_uhwi_p(i64 poison, i64 %1) #9, !range !57
  br label %9

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @double_int_fits_in_shwi_p(i64 %0, i64 %1) #9, !range !57
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i8 [ %6, %5 ], [ %8, %7 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i64 @double_int_to_shwi(i64 returned %0, i64 %1) local_unnamed_addr #0 !prof !55 {
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i64 @double_int_to_uhwi(i64 returned %0, i64 %1) local_unnamed_addr #0 !prof !47 {
  ret i64 %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { i64, i64 } @double_int_mul(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #3 !prof !55 {
  %5 = alloca %struct.double_int, align 8
  %6 = getelementptr inbounds %struct.double_int, ptr %5, i64 0, i32 1
  %7 = call i32 @mul_double_with_sign(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0) #10
  %8 = load i64, ptr %5, align 8
  %9 = insertvalue { i64, i64 } poison, i64 %8, 0
  %10 = load i64, ptr %6, align 8
  %11 = insertvalue { i64, i64 } %9, i64 %10, 1
  ret { i64, i64 } %11
}

; Function Attrs: optsize
declare i32 @mul_double_with_sign(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { i64, i64 } @double_int_add(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #3 !prof !55 {
  %5 = alloca %struct.double_int, align 8
  %6 = getelementptr inbounds %struct.double_int, ptr %5, i64 0, i32 1
  %7 = call i32 @add_double_with_sign(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0) #10
  %8 = load i64, ptr %5, align 8
  %9 = insertvalue { i64, i64 } poison, i64 %8, 0
  %10 = load i64, ptr %6, align 8
  %11 = insertvalue { i64, i64 } %9, i64 %10, 1
  ret { i64, i64 } %11
}

; Function Attrs: optsize
declare i32 @add_double_with_sign(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { i64, i64 } @double_int_neg(i64 %0, i64 %1) local_unnamed_addr #3 !prof !47 {
  %3 = alloca %struct.double_int, align 8
  %4 = getelementptr inbounds %struct.double_int, ptr %3, i64 0, i32 1
  %5 = call i32 @neg_double(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %6 = load i64, ptr %3, align 8
  %7 = insertvalue { i64, i64 } poison, i64 %6, 0
  %8 = load i64, ptr %4, align 8
  %9 = insertvalue { i64, i64 } %7, i64 %8, 1
  ret { i64, i64 } %9
}

; Function Attrs: optsize
declare i32 @neg_double(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { i64, i64 } @double_int_divmod(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #3 !prof !47 {
  %8 = alloca %struct.double_int, align 8
  %9 = zext i8 %4 to i32
  %10 = getelementptr inbounds %struct.double_int, ptr %8, i64 0, i32 1
  %11 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  %12 = call i32 @div_and_round_double(i32 noundef %5, i32 noundef %9, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef %6, ptr noundef nonnull %11) #10
  %13 = load i64, ptr %8, align 8
  %14 = insertvalue { i64, i64 } poison, i64 %13, 0
  %15 = load i64, ptr %10, align 8
  %16 = insertvalue { i64, i64 } %14, i64 %15, 1
  ret { i64, i64 } %16
}

; Function Attrs: optsize
declare i32 @div_and_round_double(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { i64, i64 } @double_int_sdivmod(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #3 !prof !47 {
  %7 = tail call { i64, i64 } @double_int_divmod(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext 0, i32 noundef %4, ptr noundef %5) #9
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { i64, i64 } @double_int_udivmod(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #3 !prof !47 {
  %7 = tail call { i64, i64 } @double_int_divmod(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext 1, i32 noundef %4, ptr noundef %5) #9
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { i64, i64 } @double_int_div(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #3 !prof !47 {
  %7 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %8 = call { i64, i64 } @double_int_divmod(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  ret { i64, i64 } %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { i64, i64 } @double_int_sdiv(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef %4) local_unnamed_addr #3 !prof !47 {
  %6 = tail call { i64, i64 } @double_int_div(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext 0, i32 noundef %4) #9
  ret { i64, i64 } %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { i64, i64 } @double_int_udiv(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef %4) local_unnamed_addr #3 !prof !47 {
  %6 = tail call { i64, i64 } @double_int_div(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext 1, i32 noundef %4) #9
  ret { i64, i64 } %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { i64, i64 } @double_int_mod(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #3 !prof !47 {
  %7 = alloca %struct.double_int, align 8
  %8 = call { i64, i64 } @double_int_divmod(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef nonnull %7) #9
  %9 = load i64, ptr %7, align 8
  %10 = insertvalue { i64, i64 } poison, i64 %9, 0
  %11 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = insertvalue { i64, i64 } %10, i64 %12, 1
  ret { i64, i64 } %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { i64, i64 } @double_int_smod(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef %4) local_unnamed_addr #3 !prof !47 {
  %6 = tail call { i64, i64 } @double_int_mod(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext 0, i32 noundef %4) #9
  ret { i64, i64 } %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { i64, i64 } @double_int_umod(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef %4) local_unnamed_addr #3 !prof !47 {
  %6 = tail call { i64, i64 } @double_int_mod(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext 1, i32 noundef %4) #9
  ret { i64, i64 } %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @double_int_to_tree(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #3 !prof !45 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1023
  %7 = load i64, ptr %0, align 8
  %8 = lshr i64 %7, 21
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  %11 = tail call { i64, i64 } @double_int_ext(i64 %1, i64 %2, i32 noundef %6, i8 noundef zeroext %10) #9
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  %14 = tail call ptr @build_int_cst_wide(ptr noundef nonnull %0, i64 noundef %12, i64 noundef %13) #10
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @double_int_fits_to_tree_p(ptr nocapture noundef readonly %0, i64 %1, i64 %2) local_unnamed_addr #2 !prof !47 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1023
  %7 = load i64, ptr %0, align 8
  %8 = lshr i64 %7, 21
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  %11 = tail call { i64, i64 } @double_int_ext(i64 %1, i64 %2, i32 noundef %6, i8 noundef zeroext %10) #9
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  %14 = tail call fastcc zeroext i8 @double_int_equal_p(i64 %1, i64 %2, i64 %12, i64 %13) #9, !range !57
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_equal_p(i64 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #0 !prof !47 !PGOFuncName !58 {
  %5 = icmp eq i64 %0, %2
  %6 = icmp eq i64 %1, %3
  %7 = select i1 %5, i1 %6, i1 false
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local zeroext i8 @double_int_negative_p(i64 %0, i64 %1) local_unnamed_addr #0 !prof !59 {
  %3 = lshr i64 %1, 63
  %4 = trunc i64 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @double_int_cmp(i64 %0, i64 %1, i64 %2, i64 %3, i8 noundef zeroext %4) local_unnamed_addr #0 !prof !60 {
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %9, label %7, !prof !61

7:                                                ; preds = %5
  %8 = tail call i32 @double_int_ucmp(i64 %0, i64 %1, i64 %2, i64 %3) #9, !range !62
  br label %11

9:                                                ; preds = %5
  %10 = tail call i32 @double_int_scmp(i64 %0, i64 %1, i64 %2, i64 %3) #9, !range !62
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @double_int_ucmp(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #0 !prof !63 {
  %5 = icmp ult i64 %1, %3
  br i1 %5, label %13, label %6, !prof !64

6:                                                ; preds = %4
  %7 = icmp ugt i64 %1, %3
  br i1 %7, label %13, label %8, !prof !64

8:                                                ; preds = %6
  %9 = icmp ult i64 %0, %2
  br i1 %9, label %13, label %10, !prof !65

10:                                               ; preds = %8
  %11 = icmp ugt i64 %0, %2
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %10, %8, %6, %4
  %14 = phi i32 [ -1, %4 ], [ 1, %6 ], [ -1, %8 ], [ %12, %10 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @double_int_scmp(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #0 !prof !66 {
  %5 = icmp slt i64 %1, %3
  br i1 %5, label %13, label %6, !prof !67

6:                                                ; preds = %4
  %7 = icmp sgt i64 %1, %3
  br i1 %7, label %13, label %8, !prof !68

8:                                                ; preds = %6
  %9 = icmp ult i64 %0, %2
  br i1 %9, label %13, label %10, !prof !69

10:                                               ; preds = %8
  %11 = icmp ugt i64 %0, %2
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %10, %8, %6, %4
  %14 = phi i32 [ -1, %4 ], [ 1, %6 ], [ -1, %8 ], [ %12, %10 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_double_int(ptr nocapture noundef %0, i64 %1, i64 %2, i8 noundef zeroext %3) local_unnamed_addr #3 !prof !47 {
  %5 = alloca %struct.double_int, align 8
  %6 = alloca [100 x i32], align 16
  store i64 %1, ptr %5, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  store i64 %2, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %6) #11
  %8 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %1, i64 %2) #9, !range !57
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @fputc(i32 48, ptr %0)
  br label %48

12:                                               ; preds = %4
  %13 = icmp eq i8 %3, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = tail call zeroext i8 @double_int_negative_p(i64 poison, i64 %2) #9, !range !57
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @fputc(i32 45, ptr %0)
  %19 = tail call { i64, i64 } @double_int_neg(i64 %1, i64 %2) #9
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  store i64 %20, ptr %5, align 8, !tbaa.struct !49
  store i64 %21, ptr %7, align 8, !tbaa.struct !54
  br label %22

22:                                               ; preds = %17, %14, %12
  %23 = phi i64 [ %21, %17 ], [ %2, %14 ], [ %2, %12 ]
  %24 = phi i64 [ %20, %17 ], [ %1, %14 ], [ %1, %12 ]
  %25 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %24, i64 %23) #9, !range !57
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %48

27:                                               ; preds = %31
  %28 = icmp sgt i32 %32, -1
  br i1 %28, label %29, label %48

29:                                               ; preds = %27
  %30 = zext nneg i32 %32 to i64
  br label %41

31:                                               ; preds = %22, %31
  %32 = phi i32 [ %36, %31 ], [ 0, %22 ]
  %33 = call fastcc i32 @double_int_split_digit(ptr noundef nonnull %5) #9
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds [100 x i32], ptr %6, i64 0, i64 %34
  store i32 %33, ptr %35, align 4, !tbaa !70
  %36 = add i32 %32, 1
  %37 = load i64, ptr %5, align 8
  %38 = load i64, ptr %7, align 8
  %39 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %37, i64 %38) #9, !range !57
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %31, label %27, !llvm.loop !72

41:                                               ; preds = %29, %41
  %42 = phi i64 [ %30, %29 ], [ %46, %41 ]
  %43 = getelementptr inbounds [100 x i32], ptr %6, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !70
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %44) #9
  %46 = add nsw i64 %42, -1
  %47 = icmp eq i64 %42, 0
  br i1 %47, label %48, label %41, !llvm.loop !74

48:                                               ; preds = %41, %22, %27, %10
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %6) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_zero_p(i64 %0, i64 %1) unnamed_addr #0 !prof !47 !PGOFuncName !75 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = select i1 %3, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @double_int_split_digit(ptr nocapture noundef %0) unnamed_addr #3 !prof !47 !PGOFuncName !76 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %6 = load i64, ptr %0, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !79
  %9 = call i32 @div_and_round_double(i32 noundef 69, i32 noundef 1, i64 noundef %6, i64 noundef %8, i64 noundef 10, i64 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #10
  %10 = load i64, ptr %4, align 8, !tbaa !50
  store i64 %10, ptr %7, align 8, !tbaa !79
  %11 = load i64, ptr %2, align 8, !tbaa !50
  store i64 %11, ptr %0, align 8, !tbaa !77
  %12 = load i64, ptr %3, align 8, !tbaa !50
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mpz_set_double_int(ptr noundef %0, i64 %1, i64 %2, i8 noundef zeroext %3) local_unnamed_addr #3 !prof !47 {
  %5 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = icmp eq i8 %3, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @double_int_negative_p(i64 poison, i64 %2) #9, !range !57
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = tail call { i64, i64 } @double_int_neg(i64 %1, i64 %2) #9
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  store i64 %12, ptr %5, align 16, !tbaa !50
  %14 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 1
  store i64 %13, ptr %14, align 8, !tbaa !50
  call void @mpz_import(ptr noundef %0, i64 noundef 2, i32 noundef -1, i64 noundef 8, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %5) #10
  call void @mpz_neg(ptr noundef %0, ptr noundef %0) #10
  br label %17

15:                                               ; preds = %7, %4
  store i64 %1, ptr %5, align 16, !tbaa !50
  %16 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 1
  store i64 %2, ptr %16, align 8, !tbaa !50
  call void @mpz_import(ptr noundef %0, i64 noundef 2, i32 noundef -1, i64 noundef 8, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %5) #10
  br label %17

17:                                               ; preds = %15, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret void
}

; Function Attrs: optsize
declare void @mpz_import(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mpz_neg(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { i64, i64 } @mpz_get_double_int(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 !prof !47 {
  %4 = alloca i64, align 8
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @mpz_init(ptr noundef nonnull %5) #10
  call void @mpz_init(ptr noundef nonnull %6) #10
  call void @get_type_static_bounds(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %9 = call i32 @mpz_cmp(ptr noundef %1, ptr noundef nonnull %5) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = call i32 @mpz_cmp(ptr noundef %1, ptr noundef nonnull %6) #10
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %5, %8 ], [ %6, %11 ]
  call void @mpz_set(ptr noundef %1, ptr noundef nonnull %15) #10
  br label %16

16:                                               ; preds = %14, %11
  call void @mpz_clear(ptr noundef nonnull %5) #10
  call void @mpz_clear(ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %17

17:                                               ; preds = %16, %3
  %18 = call i64 @mpz_sizeinbase(ptr noundef %1, i32 noundef 2) #10
  %19 = add i64 %18, 63
  %20 = lshr i64 %19, 6
  %21 = call i64 @llvm.umax.i64(i64 %20, i64 2)
  store i64 %21, ptr %4, align 8
  %22 = shl nuw nsw i64 %21, 3
  %23 = alloca i8, i64 %22, align 16
  %24 = getelementptr inbounds i64, ptr %23, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %25 = call ptr @mpz_export(ptr noundef nonnull %23, ptr noundef nonnull %4, i32 noundef -1, i64 noundef 8, i32 noundef 0, i64 noundef 0, ptr noundef %1) #10
  %26 = icmp ne i8 %2, 0
  %27 = load i64, ptr %4, align 8
  %28 = icmp ult i64 %27, 3
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 483, ptr noundef nonnull @.str.4) #10
  br label %31

31:                                               ; preds = %17, %30
  %32 = load i64, ptr %23, align 16, !tbaa !50
  %33 = load i64, ptr %24, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1023
  %37 = load i64, ptr %0, align 8
  %38 = lshr i64 %37, 21
  %39 = trunc i64 %38 to i8
  %40 = and i8 %39, 1
  %41 = call { i64, i64 } @double_int_ext(i64 %32, i64 %33, i32 noundef %36, i8 noundef zeroext %40) #9
  %42 = call i32 @mpz_sgn(ptr noundef %1) #10
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = extractvalue { i64, i64 } %41, 1
  %46 = extractvalue { i64, i64 } %41, 0
  %47 = call { i64, i64 } @double_int_neg(i64 %46, i64 %45) #9
  br label %48

48:                                               ; preds = %44, %31
  %49 = phi { i64, i64 } [ %47, %44 ], [ %41, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret { i64, i64 } %49
}

; Function Attrs: optsize
declare void @mpz_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @get_type_static_bounds(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @mpz_cmp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mpz_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mpz_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @mpz_sizeinbase(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @mpz_export(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @mpz_sgn(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!44}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @double_int_ext, ptr @double_int_zext, i64 11330}
!36 = !{ptr @double_int_ext, ptr @double_int_sext, i64 1}
!37 = !{ptr @double_int_zext, ptr @double_int_mask, i64 11331}
!38 = !{ptr @double_int_mul, ptr @mul_double_with_sign, i64 224151}
!39 = !{ptr @double_int_add, ptr @add_double_with_sign, i64 224151}
!40 = !{ptr @double_int_to_tree, ptr @double_int_ext, i64 11331}
!41 = !{ptr @double_int_to_tree, ptr @build_int_cst_wide, i64 11331}
!42 = !{ptr @double_int_cmp, ptr @double_int_ucmp, i64 458843}
!43 = !{ptr @double_int_cmp, ptr @double_int_scmp, i64 7161}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 11331}
!46 = !{!"branch_weights", i32 1, i32 11332}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!"function_entry_count", i64 1256744}
!49 = !{i64 0, i64 8, !50, i64 8, i64 8, !50}
!50 = !{!51, !51, i64 0}
!51 = !{!"long", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !{i64 0, i64 8, !50}
!55 = !{!"function_entry_count", i64 224151}
!56 = !{!"branch_weights", i32 1, i32 448304, i32 1}
!57 = !{i8 0, i8 2}
!58 = !{!"double-int.c:double_int_equal_p"}
!59 = !{!"function_entry_count", i64 57848}
!60 = !{!"function_entry_count", i64 466004}
!61 = !{!"branch_weights", i32 7161, i32 458845}
!62 = !{i32 -1, i32 2}
!63 = !{!"function_entry_count", i64 516688}
!64 = !{!"branch_weights", i32 1, i32 516689}
!65 = !{!"branch_weights", i32 257857, i32 258833}
!66 = !{!"function_entry_count", i64 7160}
!67 = !{!"branch_weights", i32 16, i32 7146}
!68 = !{!"branch_weights", i32 3566, i32 3581}
!69 = !{!"branch_weights", i32 3566, i32 16}
!70 = !{!71, !71, i64 0}
!71 = !{!"int", !52, i64 0}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = distinct !{!74, !73}
!75 = !{!"double-int.c:double_int_zero_p"}
!76 = !{!"double-int.c:double_int_split_digit"}
!77 = !{!78, !51, i64 0}
!78 = !{!"", !51, i64 0, !51, i64 8}
!79 = !{!78, !51, i64 8}
