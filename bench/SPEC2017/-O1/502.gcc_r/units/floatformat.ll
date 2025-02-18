; ModuleID = 'floatformat.c'
source_filename = "floatformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.floatformat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [28 x i8] c"floatformat_ieee_single_big\00", align 1
@floatformat_ieee_single_big = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 32, i32 0, i32 1, i32 8, i32 127, i32 255, i32 9, i32 23, i32 1, ptr @.str, ptr @floatformat_always_valid, ptr null }, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"floatformat_ieee_single_little\00", align 1
@floatformat_ieee_single_little = dso_local local_unnamed_addr constant %struct.floatformat { i32 0, i32 32, i32 0, i32 1, i32 8, i32 127, i32 255, i32 9, i32 23, i32 1, ptr @.str.1, ptr @floatformat_always_valid, ptr null }, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"floatformat_ieee_double_big\00", align 1
@floatformat_ieee_double_big = dso_local constant %struct.floatformat { i32 1, i32 64, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, ptr @.str.2, ptr @floatformat_always_valid, ptr null }, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"floatformat_ieee_double_little\00", align 1
@floatformat_ieee_double_little = dso_local local_unnamed_addr constant %struct.floatformat { i32 0, i32 64, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, ptr @.str.3, ptr @floatformat_always_valid, ptr null }, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"floatformat_ieee_double_littlebyte_bigword\00", align 1
@floatformat_ieee_double_littlebyte_bigword = dso_local local_unnamed_addr constant %struct.floatformat { i32 2, i32 64, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, ptr @.str.4, ptr @floatformat_always_valid, ptr null }, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"floatformat_vax_f\00", align 1
@floatformat_vax_f = dso_local local_unnamed_addr constant %struct.floatformat { i32 3, i32 32, i32 0, i32 1, i32 8, i32 129, i32 0, i32 9, i32 23, i32 1, ptr @.str.5, ptr @floatformat_always_valid, ptr null }, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"floatformat_vax_d\00", align 1
@floatformat_vax_d = dso_local local_unnamed_addr constant %struct.floatformat { i32 3, i32 64, i32 0, i32 1, i32 8, i32 129, i32 0, i32 9, i32 55, i32 1, ptr @.str.6, ptr @floatformat_always_valid, ptr null }, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"floatformat_vax_g\00", align 1
@floatformat_vax_g = dso_local local_unnamed_addr constant %struct.floatformat { i32 3, i32 64, i32 0, i32 1, i32 11, i32 1025, i32 0, i32 12, i32 52, i32 1, ptr @.str.7, ptr @floatformat_always_valid, ptr null }, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"floatformat_i387_ext\00", align 1
@floatformat_i387_ext = dso_local local_unnamed_addr constant %struct.floatformat { i32 0, i32 80, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 16, i32 64, i32 0, ptr @.str.8, ptr @floatformat_i387_ext_is_valid, ptr null }, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"floatformat_m68881_ext\00", align 1
@floatformat_m68881_ext = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 96, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 32, i32 64, i32 0, ptr @.str.9, ptr @floatformat_always_valid, ptr null }, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"floatformat_i960_ext\00", align 1
@floatformat_i960_ext = dso_local local_unnamed_addr constant %struct.floatformat { i32 0, i32 96, i32 16, i32 17, i32 15, i32 16383, i32 32767, i32 32, i32 64, i32 0, ptr @.str.10, ptr @floatformat_always_valid, ptr null }, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"floatformat_m88110_ext\00", align 1
@floatformat_m88110_ext = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 80, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 16, i32 64, i32 0, ptr @.str.11, ptr @floatformat_always_valid, ptr null }, align 8
@.str.12 = private unnamed_addr constant [30 x i8] c"floatformat_m88110_ext_harris\00", align 1
@floatformat_m88110_harris_ext = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 128, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, ptr @.str.12, ptr @floatformat_always_valid, ptr null }, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"floatformat_arm_ext_big\00", align 1
@floatformat_arm_ext_big = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 96, i32 0, i32 17, i32 15, i32 16383, i32 32767, i32 32, i32 64, i32 0, ptr @.str.13, ptr @floatformat_always_valid, ptr null }, align 8
@.str.14 = private unnamed_addr constant [39 x i8] c"floatformat_arm_ext_littlebyte_bigword\00", align 1
@floatformat_arm_ext_littlebyte_bigword = dso_local local_unnamed_addr constant %struct.floatformat { i32 2, i32 96, i32 0, i32 17, i32 15, i32 16383, i32 32767, i32 32, i32 64, i32 0, ptr @.str.14, ptr @floatformat_always_valid, ptr null }, align 8
@.str.15 = private unnamed_addr constant [27 x i8] c"floatformat_ia64_spill_big\00", align 1
@floatformat_ia64_spill_big = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 128, i32 0, i32 1, i32 17, i32 65535, i32 131071, i32 18, i32 64, i32 0, ptr @.str.15, ptr @floatformat_always_valid, ptr null }, align 8
@.str.16 = private unnamed_addr constant [30 x i8] c"floatformat_ia64_spill_little\00", align 1
@floatformat_ia64_spill_little = dso_local local_unnamed_addr constant %struct.floatformat { i32 0, i32 128, i32 0, i32 1, i32 17, i32 65535, i32 131071, i32 18, i32 64, i32 0, ptr @.str.16, ptr @floatformat_always_valid, ptr null }, align 8
@.str.17 = private unnamed_addr constant [26 x i8] c"floatformat_ia64_quad_big\00", align 1
@floatformat_ia64_quad_big = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 128, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 16, i32 112, i32 1, ptr @.str.17, ptr @floatformat_always_valid, ptr null }, align 8
@.str.18 = private unnamed_addr constant [29 x i8] c"floatformat_ia64_quad_little\00", align 1
@floatformat_ia64_quad_little = dso_local local_unnamed_addr constant %struct.floatformat { i32 0, i32 128, i32 0, i32 1, i32 15, i32 16383, i32 32767, i32 16, i32 112, i32 1, ptr @.str.18, ptr @floatformat_always_valid, ptr null }, align 8
@.str.19 = private unnamed_addr constant [28 x i8] c"floatformat_ibm_long_double\00", align 1
@floatformat_ibm_long_double = dso_local local_unnamed_addr constant %struct.floatformat { i32 1, i32 128, i32 0, i32 1, i32 11, i32 1023, i32 2047, i32 12, i32 52, i32 1, ptr @.str.19, ptr @floatformat_ibm_long_double_is_valid, ptr @floatformat_ieee_double_big }, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @floatformat_always_valid(ptr nocapture readnone %0, ptr nocapture readnone %1) #5 !prof !34 {
  ret i32 1
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @floatformat_i387_ext_is_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !54
  %10 = icmp eq i32 %3, 0
  %11 = select i1 %10, i32 1, i32 -1
  %12 = add i32 %9, %7
  %13 = sub i32 %5, %12
  %14 = add i32 %12, -1
  %15 = select i1 %10, i32 %13, i32 %14
  %16 = lshr i32 %15, 3
  %17 = and i32 %13, 7
  %18 = add i32 %17, %9
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 8)
  br label %20

20:                                               ; preds = %20, %2
  %21 = phi i32 [ %17, %2 ], [ 0, %20 ]
  %22 = phi i32 [ %19, %2 ], [ %42, %20 ]
  %23 = phi i32 [ 0, %2 ], [ %40, %20 ]
  %24 = phi i32 [ %16, %2 ], [ %41, %20 ]
  %25 = phi i64 [ 0, %2 ], [ %38, %20 ]
  %26 = phi i32 [ %9, %2 ], [ %39, %20 ]
  %27 = zext i32 %24 to i64
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !46
  %30 = zext i8 %29 to i32
  %31 = lshr i32 %30, %21
  %32 = sub nsw i32 %22, %21
  %33 = shl nsw i32 -1, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %31, %34
  %36 = shl i32 %35, %23
  %37 = zext i32 %36 to i64
  %38 = or i64 %25, %37
  %39 = sub i32 %26, %32
  %40 = add i32 %23, %32
  %41 = add i32 %24, %11
  %42 = tail call i32 @llvm.umin.i32(i32 %39, i32 8)
  %43 = icmp eq i32 %39, 0
  br i1 %43, label %44, label %20, !llvm.loop !55

44:                                               ; preds = %20
  %45 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 7
  %46 = load i32, ptr %45, align 4, !tbaa !58
  %47 = xor i32 %46, -1
  %48 = add i32 %5, %47
  %49 = select i1 %10, i32 %48, i32 %46
  %50 = lshr i32 %49, 3
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %1, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !46
  %54 = zext i8 %53 to i32
  %55 = and i32 %48, 7
  %56 = icmp eq i64 %38, 0
  %57 = shl nuw nsw i32 1, %55
  %58 = and i32 %57, %54
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %56, %59
  %61 = zext i1 %60 to i32
  ret i32 %61
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @floatformat_ibm_long_double_is_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !prof !34 {
  %3 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !52
  %8 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !53
  %10 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !54
  %12 = icmp eq i32 %5, 0
  %13 = select i1 %12, i32 1, i32 -1
  %14 = add i32 %11, %9
  %15 = sub i32 %7, %14
  %16 = add i32 %14, -1
  %17 = select i1 %12, i32 %15, i32 %16
  %18 = lshr i32 %17, 3
  %19 = and i32 %15, 7
  %20 = add i32 %19, %11
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 8)
  br label %22

22:                                               ; preds = %22, %2
  %23 = phi i32 [ %19, %2 ], [ 0, %22 ]
  %24 = phi i32 [ %21, %2 ], [ %44, %22 ]
  %25 = phi i32 [ 0, %2 ], [ %42, %22 ]
  %26 = phi i32 [ %18, %2 ], [ %43, %22 ]
  %27 = phi i64 [ 0, %2 ], [ %40, %22 ]
  %28 = phi i32 [ %11, %2 ], [ %41, %22 ]
  %29 = zext i32 %26 to i64
  %30 = getelementptr inbounds i8, ptr %1, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !46
  %32 = zext i8 %31 to i32
  %33 = lshr i32 %32, %23
  %34 = sub nsw i32 %24, %23
  %35 = shl nsw i32 -1, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %33, %36
  %38 = shl i32 %37, %25
  %39 = zext i32 %38 to i64
  %40 = or i64 %27, %39
  %41 = sub i32 %28, %34
  %42 = add i32 %25, %34
  %43 = add i32 %26, %13
  %44 = tail call i32 @llvm.umin.i32(i32 %41, i32 8)
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %46, label %22, !llvm.loop !55

46:                                               ; preds = %22
  %47 = getelementptr inbounds i8, ptr %1, i64 8
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ %19, %46 ], [ 0, %48 ]
  %50 = phi i32 [ %21, %46 ], [ %70, %48 ]
  %51 = phi i32 [ 0, %46 ], [ %68, %48 ]
  %52 = phi i32 [ %18, %46 ], [ %69, %48 ]
  %53 = phi i64 [ 0, %46 ], [ %66, %48 ]
  %54 = phi i32 [ %11, %46 ], [ %67, %48 ]
  %55 = zext i32 %52 to i64
  %56 = getelementptr inbounds i8, ptr %47, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !46
  %58 = zext i8 %57 to i32
  %59 = lshr i32 %58, %49
  %60 = sub nsw i32 %50, %49
  %61 = shl nsw i32 -1, %60
  %62 = xor i32 %61, -1
  %63 = and i32 %59, %62
  %64 = shl i32 %63, %51
  %65 = zext i32 %64 to i64
  %66 = or i64 %53, %65
  %67 = sub i32 %54, %60
  %68 = add i32 %51, %60
  %69 = add i32 %52, %13
  %70 = tail call i32 @llvm.umin.i32(i32 %67, i32 8)
  %71 = icmp eq i32 %67, 0
  br i1 %71, label %72, label %48, !llvm.loop !55

72:                                               ; preds = %48
  %73 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 6
  %74 = load i32, ptr %73, align 8, !tbaa !60
  %75 = zext i32 %74 to i64
  %76 = icmp eq i64 %40, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = tail call fastcc i32 @mant_bits_set(ptr noundef nonnull %4, ptr noundef %1), !range !61
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %176

80:                                               ; preds = %72, %77
  %81 = icmp eq i64 %40, 0
  %82 = or i1 %81, %76
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = icmp eq i64 %66, 0
  br i1 %84, label %85, label %176

85:                                               ; preds = %83
  %86 = tail call fastcc i32 @mant_bits_set(ptr noundef nonnull %4, ptr noundef nonnull %47), !range !61
  %87 = xor i32 %86, 1
  br label %176

88:                                               ; preds = %80
  %89 = add nsw i64 %40, -53
  %90 = icmp slt i64 %66, %89
  br i1 %90, label %176, label %91

91:                                               ; preds = %88
  %92 = icmp sgt i64 %66, %89
  %93 = icmp ne i64 %66, 0
  %94 = and i1 %92, %93
  br i1 %94, label %176, label %95

95:                                               ; preds = %91
  %96 = icmp eq i64 %66, 0
  %97 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 8
  %98 = load i32, ptr %97, align 8, !tbaa !62
  br i1 %96, label %99, label %157

99:                                               ; preds = %95
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 7
  %103 = load i32, ptr %102, align 4, !tbaa !58
  br label %104

104:                                              ; preds = %101, %123
  %105 = phi i1 [ %100, %101 ], [ %126, %123 ]
  %106 = phi i32 [ 0, %101 ], [ %125, %123 ]
  %107 = phi i32 [ -1, %101 ], [ %124, %123 ]
  %108 = add i32 %103, %106
  %109 = xor i32 %108, -1
  %110 = add i32 %7, %109
  %111 = select i1 %12, i32 %110, i32 %108
  %112 = lshr i32 %111, 3
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds i8, ptr %47, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !46
  %116 = zext i8 %115 to i32
  %117 = and i32 %110, 7
  %118 = shl nuw nsw i32 1, %117
  %119 = and i32 %118, %116
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %104
  %122 = icmp eq i32 %107, -1
  br i1 %122, label %123, label %132

123:                                              ; preds = %121, %104
  %124 = phi i32 [ %107, %104 ], [ %106, %121 ]
  %125 = add nuw i32 %106, 1
  %126 = icmp ult i32 %125, %98
  %127 = icmp eq i32 %125, %98
  br i1 %127, label %128, label %104, !llvm.loop !63

128:                                              ; preds = %123, %99
  %129 = phi i32 [ -1, %99 ], [ %124, %123 ]
  %130 = phi i1 [ %100, %99 ], [ %126, %123 ]
  %131 = icmp eq i32 %129, -1
  br i1 %131, label %176, label %132

132:                                              ; preds = %121, %128
  %133 = phi i32 [ %129, %128 ], [ %107, %121 ]
  %134 = phi i1 [ %130, %128 ], [ %105, %121 ]
  %135 = sub nsw i32 0, %133
  %136 = sext i32 %135 to i64
  %137 = icmp sgt i64 %89, %136
  br i1 %137, label %176, label %138

138:                                              ; preds = %132
  %139 = icmp slt i64 %89, %136
  %140 = or i1 %139, %134
  br i1 %140, label %176, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 7
  %143 = load i32, ptr %142, align 4, !tbaa !58
  %144 = add i32 %143, %98
  %145 = sub i32 %7, %144
  %146 = add i32 %144, -1
  %147 = select i1 %12, i32 %145, i32 %146
  %148 = lshr i32 %147, 3
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds i8, ptr %1, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !46
  %152 = zext i8 %151 to i32
  %153 = and i32 %145, 7
  %154 = xor i32 %152, -1
  %155 = lshr i32 %154, %153
  %156 = and i32 %155, 1
  br label %176

157:                                              ; preds = %95
  %158 = getelementptr inbounds %struct.floatformat, ptr %4, i64 0, i32 7
  %159 = load i32, ptr %158, align 4, !tbaa !58
  %160 = add i32 %98, %159
  %161 = sub i32 %7, %160
  %162 = add i32 %160, -1
  %163 = select i1 %12, i32 %161, i32 %162
  %164 = lshr i32 %163, 3
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %1, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !46
  %168 = zext i8 %167 to i32
  %169 = and i32 %161, 7
  %170 = shl nuw nsw i32 1, %169
  %171 = and i32 %170, %168
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %157
  %174 = tail call fastcc i32 @mant_bits_set(ptr noundef nonnull %4, ptr noundef nonnull %47), !range !61
  %175 = xor i32 %174, 1
  br label %176

176:                                              ; preds = %128, %138, %157, %141, %132, %91, %88, %83, %77, %173, %85
  %177 = phi i32 [ %87, %85 ], [ %175, %173 ], [ 1, %77 ], [ 0, %83 ], [ 1, %88 ], [ 0, %91 ], [ %156, %141 ], [ 1, %132 ], [ 0, %138 ], [ 0, %157 ], [ 1, %128 ]
  ret i32 %177
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @floatformat_to_double(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #8 !prof !34 {
  %4 = load i32, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !52
  %7 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !53
  %9 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !54
  %11 = icmp eq i32 %4, 0
  %12 = select i1 %11, i32 1, i32 -1
  %13 = add i32 %10, %8
  %14 = sub i32 %6, %13
  %15 = add i32 %13, -1
  %16 = select i1 %11, i32 %14, i32 %15
  %17 = lshr i32 %16, 3
  %18 = and i32 %14, 7
  %19 = add i32 %18, %10
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 8)
  br label %21

21:                                               ; preds = %21, %3
  %22 = phi i32 [ %18, %3 ], [ 0, %21 ]
  %23 = phi i32 [ %20, %3 ], [ %43, %21 ]
  %24 = phi i32 [ 0, %3 ], [ %41, %21 ]
  %25 = phi i32 [ %17, %3 ], [ %42, %21 ]
  %26 = phi i64 [ 0, %3 ], [ %39, %21 ]
  %27 = phi i32 [ %10, %3 ], [ %40, %21 ]
  %28 = zext i32 %25 to i64
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !46
  %31 = zext i8 %30 to i32
  %32 = lshr i32 %31, %22
  %33 = sub nsw i32 %23, %22
  %34 = shl nsw i32 -1, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %32, %35
  %37 = shl i32 %36, %24
  %38 = zext i32 %37 to i64
  %39 = or i64 %26, %38
  %40 = sub i32 %27, %33
  %41 = add i32 %24, %33
  %42 = add i32 %25, %12
  %43 = tail call i32 @llvm.umin.i32(i32 %40, i32 8)
  %44 = icmp eq i32 %40, 0
  br i1 %44, label %45, label %21, !llvm.loop !55

45:                                               ; preds = %21
  %46 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !60
  %48 = zext i32 %47 to i64
  %49 = icmp eq i64 %39, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = tail call fastcc i32 @mant_bits_set(ptr noundef nonnull %0, ptr noundef %1), !range !61
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !64
  %55 = xor i32 %54, -1
  %56 = add i32 %6, %55
  %57 = select i1 %11, i32 %56, i32 %54
  %58 = select i1 %52, double 0x7FF0000000000000, double 0x7FF8000000000000
  br label %164

59:                                               ; preds = %45
  %60 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 8
  %61 = load i32, ptr %60, align 8, !tbaa !62
  %62 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 7
  %63 = load i32, ptr %62, align 4, !tbaa !58
  %64 = icmp eq i64 %39, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 5
  %67 = load i32, ptr %66, align 4, !tbaa !65
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %39, %68
  br label %70

70:                                               ; preds = %65, %59
  %71 = phi i64 [ %39, %59 ], [ %69, %65 ]
  br i1 %64, label %81, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 9
  %74 = load i32, ptr %73, align 4, !tbaa !66
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = trunc i64 %71 to i32
  %78 = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %77) #16
  br label %81

79:                                               ; preds = %72
  %80 = add nsw i64 %71, 1
  br label %81

81:                                               ; preds = %76, %79, %70
  %82 = phi i64 [ %71, %70 ], [ %71, %76 ], [ %80, %79 ]
  %83 = phi double [ 0.000000e+00, %70 ], [ %78, %76 ], [ 0.000000e+00, %79 ]
  %84 = icmp sgt i32 %61, 0
  br i1 %84, label %85, label %154

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 5
  br label %87

87:                                               ; preds = %85, %145
  %88 = phi double [ %83, %85 ], [ %148, %145 ]
  %89 = phi i64 [ %82, %85 ], [ %151, %145 ]
  %90 = phi i32 [ %61, %85 ], [ %152, %145 ]
  %91 = phi i32 [ %63, %85 ], [ %97, %145 ]
  %92 = tail call i32 @llvm.smin.i32(i32 %90, i32 32)
  %93 = load i32, ptr %0, align 8, !tbaa !50
  %94 = load i32, ptr %5, align 4, !tbaa !52
  %95 = icmp eq i32 %93, 0
  %96 = select i1 %95, i32 1, i32 -1
  %97 = add i32 %92, %91
  %98 = sub i32 %94, %97
  %99 = add i32 %97, -1
  %100 = select i1 %95, i32 %98, i32 %99
  %101 = lshr i32 %100, 3
  %102 = and i32 %98, 7
  %103 = add nuw nsw i32 %102, %92
  %104 = tail call i32 @llvm.umin.i32(i32 %103, i32 8)
  br label %105

105:                                              ; preds = %105, %87
  %106 = phi i32 [ %102, %87 ], [ 0, %105 ]
  %107 = phi i32 [ %104, %87 ], [ %127, %105 ]
  %108 = phi i32 [ 0, %87 ], [ %125, %105 ]
  %109 = phi i32 [ %101, %87 ], [ %126, %105 ]
  %110 = phi i64 [ 0, %87 ], [ %123, %105 ]
  %111 = phi i32 [ %92, %87 ], [ %124, %105 ]
  %112 = zext i32 %109 to i64
  %113 = getelementptr inbounds i8, ptr %1, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !46
  %115 = zext i8 %114 to i32
  %116 = lshr i32 %115, %106
  %117 = sub nsw i32 %107, %106
  %118 = shl nsw i32 -1, %117
  %119 = xor i32 %118, -1
  %120 = and i32 %116, %119
  %121 = shl i32 %120, %108
  %122 = zext i32 %121 to i64
  %123 = or i64 %110, %122
  %124 = sub i32 %111, %117
  %125 = add i32 %108, %117
  %126 = add i32 %109, %96
  %127 = tail call i32 @llvm.umin.i32(i32 %124, i32 8)
  %128 = icmp eq i32 %124, 0
  br i1 %128, label %129, label %105, !llvm.loop !55

129:                                              ; preds = %105
  %130 = icmp eq i64 %89, 0
  %131 = select i1 %64, i1 %130, i1 false
  %132 = icmp ne i64 %123, 0
  %133 = select i1 %131, i1 %132, i1 false
  %134 = uitofp i64 %123 to double
  br i1 %133, label %135, label %142

135:                                              ; preds = %129
  %136 = load i32, ptr %86, align 4, !tbaa !65
  %137 = load i32, ptr %62, align 4, !tbaa !58
  %138 = add i32 %91, %92
  %139 = add i32 %138, %136
  %140 = sub i32 %137, %139
  %141 = add i32 %140, 1
  br label %145

142:                                              ; preds = %129
  %143 = trunc i64 %89 to i32
  %144 = sub i32 %143, %92
  br label %145

145:                                              ; preds = %142, %135
  %146 = phi i32 [ %144, %142 ], [ %141, %135 ]
  %147 = tail call double @ldexp(double noundef %134, i32 noundef %146) #16
  %148 = fadd double %88, %147
  %149 = zext nneg i32 %92 to i64
  %150 = sub nsw i64 %89, %149
  %151 = select i1 %130, i64 0, i64 %150
  %152 = sub nsw i32 %90, %92
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %87, label %154, !llvm.loop !67

154:                                              ; preds = %145, %81
  %155 = phi double [ %83, %81 ], [ %148, %145 ]
  %156 = load i32, ptr %0, align 8, !tbaa !50
  %157 = icmp eq i32 %156, 0
  %158 = load i32, ptr %5, align 4, !tbaa !52
  %159 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 2
  %160 = load i32, ptr %159, align 8, !tbaa !64
  %161 = xor i32 %160, -1
  %162 = add i32 %158, %161
  %163 = select i1 %157, i32 %162, i32 %160
  br label %164

164:                                              ; preds = %154, %50
  %165 = phi i32 [ %162, %154 ], [ %56, %50 ]
  %166 = phi i32 [ %163, %154 ], [ %57, %50 ]
  %167 = phi double [ %155, %154 ], [ %58, %50 ]
  %168 = lshr i32 %166, 3
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds i8, ptr %1, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !46
  %172 = zext i8 %171 to i32
  %173 = and i32 %165, 7
  %174 = shl nuw nsw i32 1, %173
  %175 = and i32 %174, %172
  %176 = icmp eq i32 %175, 0
  %177 = fneg double %167
  %178 = select i1 %176, double %167, double %177
  store double %178, ptr %2, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc noundef i32 @mant_bits_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !34 {
  %3 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %55

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !58
  %9 = load i32, ptr %0, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = icmp eq i32 %9, 0
  %13 = select i1 %12, i32 1, i32 -1
  br label %17

14:                                               ; preds = %53
  %15 = sub nsw i32 %18, %20
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %55, !llvm.loop !70

17:                                               ; preds = %6, %14
  %18 = phi i32 [ %4, %6 ], [ %15, %14 ]
  %19 = phi i32 [ %8, %6 ], [ %21, %14 ]
  %20 = tail call i32 @llvm.smin.i32(i32 %18, i32 32)
  %21 = add i32 %20, %19
  %22 = sub i32 %11, %21
  %23 = add i32 %21, -1
  %24 = select i1 %12, i32 %22, i32 %23
  %25 = lshr i32 %24, 3
  %26 = and i32 %22, 7
  %27 = add nuw nsw i32 %26, %20
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 8)
  br label %29

29:                                               ; preds = %29, %17
  %30 = phi i32 [ %26, %17 ], [ 0, %29 ]
  %31 = phi i32 [ %28, %17 ], [ %51, %29 ]
  %32 = phi i32 [ 0, %17 ], [ %49, %29 ]
  %33 = phi i32 [ %25, %17 ], [ %50, %29 ]
  %34 = phi i64 [ 0, %17 ], [ %47, %29 ]
  %35 = phi i32 [ %20, %17 ], [ %48, %29 ]
  %36 = zext i32 %33 to i64
  %37 = getelementptr inbounds i8, ptr %1, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !46
  %39 = zext i8 %38 to i32
  %40 = lshr i32 %39, %30
  %41 = sub nsw i32 %31, %30
  %42 = shl nsw i32 -1, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %40, %43
  %45 = shl i32 %44, %32
  %46 = zext i32 %45 to i64
  %47 = or i64 %34, %46
  %48 = sub i32 %35, %41
  %49 = add i32 %32, %41
  %50 = add i32 %33, %13
  %51 = tail call i32 @llvm.umin.i32(i32 %48, i32 8)
  %52 = icmp eq i32 %48, 0
  br i1 %52, label %53, label %29, !llvm.loop !55

53:                                               ; preds = %29
  %54 = icmp eq i64 %47, 0
  br i1 %54, label %14, label %55

55:                                               ; preds = %53, %14, %2
  %56 = phi i32 [ 0, %2 ], [ 1, %53 ], [ 0, %14 ]
  ret i32 %56
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @floatformat_from_double(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #8 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = load double, ptr %1, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !52
  %8 = lshr i32 %7, 3
  %9 = zext nneg i32 %8 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %9, i1 false)
  %10 = fcmp olt double %5, 0.000000e+00
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, ptr %0, align 8, !tbaa !50
  %13 = load i32, ptr %6, align 4, !tbaa !52
  %14 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !64
  tail call fastcc void @put_field(ptr noundef %2, i32 noundef %12, i32 noundef %13, i32 noundef %15, i32 noundef 1, i64 noundef 1)
  %16 = fneg double %5
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi double [ %16, %11 ], [ %5, %3 ]
  %19 = fcmp oeq double %18, 0.000000e+00
  br i1 %19, label %120, label %20

20:                                               ; preds = %17
  %21 = fcmp uno double %18, 0.000000e+00
  br i1 %21, label %22, label %36

22:                                               ; preds = %20
  %23 = load i32, ptr %0, align 8, !tbaa !50
  %24 = load i32, ptr %6, align 4, !tbaa !52
  %25 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !53
  %27 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !60
  %31 = zext i32 %30 to i64
  tail call fastcc void @put_field(ptr noundef %2, i32 noundef %23, i32 noundef %24, i32 noundef %26, i32 noundef %28, i64 noundef %31)
  %32 = load i32, ptr %0, align 8, !tbaa !50
  %33 = load i32, ptr %6, align 4, !tbaa !52
  %34 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !58
  tail call fastcc void @put_field(ptr noundef %2, i32 noundef %32, i32 noundef %33, i32 noundef %35, i32 noundef 32, i64 noundef 1)
  br label %120

36:                                               ; preds = %20
  %37 = fadd double %18, %18
  %38 = fcmp oeq double %37, %18
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32, ptr %0, align 8, !tbaa !50
  %41 = load i32, ptr %6, align 4, !tbaa !52
  %42 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !53
  %44 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !54
  %46 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !60
  %48 = zext i32 %47 to i64
  tail call fastcc void @put_field(ptr noundef %2, i32 noundef %40, i32 noundef %41, i32 noundef %43, i32 noundef %45, i64 noundef %48)
  br label %120

49:                                               ; preds = %36
  %50 = call double @frexp(double noundef %18, ptr noundef nonnull %4) #16
  %51 = load i32, ptr %4, align 4, !tbaa !71
  %52 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 5
  %53 = load i32, ptr %52, align 4, !tbaa !65
  %54 = add nsw i32 %53, %51
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = add nsw i32 %54, -1
  %58 = load i32, ptr %0, align 8, !tbaa !50
  %59 = load i32, ptr %6, align 4, !tbaa !52
  %60 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !53
  %62 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 4
  %63 = load i32, ptr %62, align 8, !tbaa !54
  %64 = zext nneg i32 %57 to i64
  tail call fastcc void @put_field(ptr noundef %2, i32 noundef %58, i32 noundef %59, i32 noundef %61, i32 noundef %63, i64 noundef %64)
  br label %76

65:                                               ; preds = %49
  %66 = load i32, ptr %0, align 8, !tbaa !50
  %67 = load i32, ptr %6, align 4, !tbaa !52
  %68 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !53
  %70 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 4
  %71 = load i32, ptr %70, align 8, !tbaa !54
  tail call fastcc void @put_field(ptr noundef %2, i32 noundef %66, i32 noundef %67, i32 noundef %69, i32 noundef %71, i64 noundef 0)
  %72 = load i32, ptr %52, align 4, !tbaa !65
  %73 = add i32 %51, -1
  %74 = add i32 %73, %72
  %75 = tail call double @ldexp(double noundef %50, i32 noundef %74) #16
  br label %76

76:                                               ; preds = %65, %56
  %77 = phi double [ %50, %56 ], [ %75, %65 ]
  %78 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 8
  %79 = load i32, ptr %78, align 8, !tbaa !62
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %120

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 7
  %83 = load i32, ptr %82, align 4, !tbaa !58
  %84 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 9
  br label %85

85:                                               ; preds = %81, %112
  %86 = phi i32 [ %79, %81 ], [ %118, %112 ]
  %87 = phi i32 [ %83, %81 ], [ %117, %112 ]
  %88 = phi double [ %77, %81 ], [ %93, %112 ]
  %89 = tail call i32 @llvm.smin.i32(i32 %86, i32 32)
  %90 = fmul double %88, 0x41F0000000000000
  %91 = fptoui double %90 to i64
  %92 = uitofp i64 %91 to double
  %93 = fsub double %90, %92
  %94 = load i32, ptr %78, align 8, !tbaa !62
  %95 = icmp eq i32 %86, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %85
  %97 = load i32, ptr %84, align 4, !tbaa !66
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i32, ptr %52, align 4, !tbaa !65
  %101 = add nsw i32 %100, %51
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = and i64 %91, 2147483647
  %105 = add nsw i32 %89, -1
  br label %112

106:                                              ; preds = %99, %96, %85
  %107 = icmp slt i32 %86, 32
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  %109 = sub nuw nsw i32 32, %89
  %110 = zext nneg i32 %109 to i64
  %111 = lshr i64 %91, %110
  br label %112

112:                                              ; preds = %106, %108, %103
  %113 = phi i32 [ %105, %103 ], [ %89, %108 ], [ %89, %106 ]
  %114 = phi i64 [ %104, %103 ], [ %111, %108 ], [ %91, %106 ]
  %115 = load i32, ptr %0, align 8, !tbaa !50
  %116 = load i32, ptr %6, align 4, !tbaa !52
  tail call fastcc void @put_field(ptr noundef %2, i32 noundef %115, i32 noundef %116, i32 noundef %87, i32 noundef %113, i64 noundef %114)
  %117 = add i32 %113, %87
  %118 = sub nsw i32 %86, %113
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %85, label %120, !llvm.loop !72

120:                                              ; preds = %112, %76, %17, %39, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @put_field(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #12 !prof !34 {
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 1, i32 -1
  %9 = add i32 %4, %3
  %10 = sub i32 %2, %9
  %11 = add i32 %9, -1
  %12 = select i1 %7, i32 %10, i32 %11
  %13 = lshr i32 %12, 3
  %14 = and i32 %10, 7
  %15 = add i32 %14, %4
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 8)
  br label %17

17:                                               ; preds = %17, %6
  %18 = phi i32 [ %14, %6 ], [ 0, %17 ]
  %19 = phi i32 [ %16, %6 ], [ %44, %17 ]
  %20 = phi i32 [ %13, %6 ], [ %43, %17 ]
  %21 = phi i64 [ %5, %6 ], [ %41, %17 ]
  %22 = phi i32 [ %4, %6 ], [ %42, %17 ]
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = sub nsw i32 %19, %18
  %26 = shl nsw i32 -1, %25
  %27 = xor i32 %26, -1
  %28 = shl i32 %27, %18
  %29 = load i8, ptr %24, align 1, !tbaa !46
  %30 = zext i8 %29 to i32
  %31 = xor i32 %28, -1
  %32 = and i32 %30, %31
  %33 = zext nneg i32 %32 to i64
  %34 = zext nneg i32 %18 to i64
  %35 = shl i64 %21, %34
  %36 = zext i32 %28 to i64
  %37 = and i64 %35, %36
  %38 = or i64 %37, %33
  %39 = trunc i64 %38 to i8
  store i8 %39, ptr %24, align 1, !tbaa !46
  %40 = zext nneg i32 %25 to i64
  %41 = lshr i64 %21, %40
  %42 = sub i32 %22, %25
  %43 = add i32 %20, %8
  %44 = tail call i32 @llvm.umin.i32(i32 %42, i32 8)
  %45 = icmp eq i32 %42, 0
  br i1 %45, label %46, label %17, !llvm.loop !73

46:                                               ; preds = %17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind uwtable
define dso_local i32 @floatformat_is_valid(ptr noundef %0, ptr noundef %1) local_unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.floatformat, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = tail call i32 %4(ptr noundef %0, ptr noundef %1) #16
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }

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
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!51, !41, i64 0}
!51 = !{!"floatformat", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56}
!52 = !{!51, !41, i64 4}
!53 = !{!51, !41, i64 12}
!54 = !{!51, !41, i64 16}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!51, !41, i64 28}
!59 = !{!51, !36, i64 56}
!60 = !{!51, !41, i64 24}
!61 = !{i32 0, i32 2}
!62 = !{!51, !41, i64 32}
!63 = distinct !{!63, !56, !57}
!64 = !{!51, !41, i64 8}
!65 = !{!51, !41, i64 20}
!66 = !{!51, !41, i64 36}
!67 = distinct !{!67, !56, !57}
!68 = !{!69, !69, i64 0}
!69 = !{!"double", !37, i64 0}
!70 = distinct !{!70, !56, !57}
!71 = !{!41, !41, i64 0}
!72 = distinct !{!72, !56, !57}
!73 = distinct !{!73, !56, !57}
!74 = !{!51, !36, i64 48}
