; ModuleID = 'dfp.c'
source_filename = "dfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.decNumber = type { i32, i32, i8, [12 x i16] }
%struct.decContext = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.decimal32 = type { [4 x i8] }
%struct.decimal64 = type { [8 x i8] }
%struct.decimal128 = type { [16 x i8] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@decimal_quad_format = external constant %struct.real_format, align 8
@decimal_single_format = external constant %struct.real_format, align 8
@decimal_double_format = external constant %struct.real_format, align 8
@.str = private unnamed_addr constant [6 x i8] c"dfp.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"9.999999E96\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"9.999999999999999E384\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"9.999999999999999999999999999999999E6144\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"snan\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@reltable.decimal_real_maxval = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.2 to i64), i64 ptrtoint (ptr @reltable.decimal_real_maxval to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable.decimal_real_maxval to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable.decimal_real_maxval to i64)) to i32)], align 4

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #13
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #13
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #13
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

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @decimal_real_from_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.decNumber, align 4
  %4 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #13
  %5 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #13
  %6 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 4
  store i32 0, ptr %6, align 4, !tbaa !54
  %7 = call ptr @decNumberFromString(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #13
  call fastcc void @decimal_from_decnumber(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #13
  ret void
}

declare ptr @decContextDefault(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @decNumberFromString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @decimal_from_decnumber(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 1, ptr %0, align 8
  %4 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !56
  %6 = and i8 %5, 48
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 1, i32 3
  store i32 %8, ptr %0, align 8
  %9 = load i8, ptr %4, align 4, !tbaa !56
  %10 = and i8 %9, 64
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 %8, i32 2
  store i32 %12, ptr %0, align 8
  %13 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !58
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 %12, i32 2
  store i32 %17, ptr %0, align 8
  %18 = load i8, ptr %4, align 4, !tbaa !56
  %19 = icmp sgt i8 %18, -1
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, ptr %0, align 8
  %22 = or i32 %21, 8
  store i32 %22, ptr %0, align 8
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i32, ptr %0, align 8
  %25 = or i32 %24, 4
  store i32 %25, ptr %0, align 8
  %26 = and i32 %24, 3
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = tail call ptr @decContextDefault(ptr noundef %2, i32 noundef 128) #13
  %30 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 4
  store i32 0, ptr %30, align 4, !tbaa !54
  %31 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  %32 = tail call ptr @decimal128FromNumber(ptr noundef nonnull %31, ptr noundef %1, ptr noundef %2) #13
  br label %33

33:                                               ; preds = %23, %28
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @encode_decimal32(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decimal32, align 4
  %6 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #13
  %7 = call ptr @decContextDefault(ptr noundef nonnull %6, i32 noundef 128) #13
  %8 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !54
  call fastcc void @decimal_to_decnumber(ptr noundef %2, ptr noundef nonnull %4)
  %9 = call ptr @decimal32FromNumber(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #13
  %10 = load i32, ptr %5, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, ptr %1, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #13
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @decimal_to_decnumber(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #13
  %4 = call ptr @decContextDefault(ptr noundef nonnull %3, i32 noundef 128) #13
  %5 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 4
  store i32 0, ptr %5, align 4, !tbaa !54
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 3
  switch i32 %7, label %26 [
    i32 0, label %8
    i32 2, label %10
    i32 3, label %12
    i32 1, label %19
  ]

8:                                                ; preds = %2
  %9 = call ptr @decNumberZero(ptr noundef %1) #13
  br label %27

10:                                               ; preds = %2
  %11 = call ptr @decNumberFromString(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %3) #13
  br label %27

12:                                               ; preds = %2
  %13 = and i32 %6, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call ptr @decNumberFromString(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #13
  br label %27

17:                                               ; preds = %12
  %18 = call ptr @decNumberFromString(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %3) #13
  br label %27

19:                                               ; preds = %2
  %20 = and i32 %6, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull @.str.1) #13
  br label %23

23:                                               ; preds = %19, %22
  %24 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  %25 = call ptr @decimal128ToNumber(ptr noundef nonnull %24, ptr noundef %1) #13
  br label %27

26:                                               ; preds = %2
  unreachable

27:                                               ; preds = %15, %17, %23, %10, %8
  %28 = load i32, ptr %0, align 8
  %29 = lshr i32 %28, 3
  %30 = and i32 %29, 1
  %31 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %32 = load i8, ptr %31, align 4, !tbaa !56
  %33 = lshr i8 %32, 7
  %34 = zext nneg i8 %33 to i32
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = xor i8 %32, -128
  store i8 %37, ptr %31, align 4, !tbaa !56
  br label %38

38:                                               ; preds = %36, %27
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #13
  ret void
}

declare ptr @decimal32FromNumber(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: cold nounwind uwtable
define dso_local void @decode_decimal32(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decimal32, align 4
  %6 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #13
  %7 = call ptr @decContextDefault(ptr noundef nonnull %6, i32 noundef 128) #13
  %8 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !54
  %9 = load i64, ptr %2, align 8, !tbaa !59
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr %5, align 4
  %11 = call ptr @decimal32ToNumber(ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  call fastcc void @decimal_from_decnumber(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #13
  ret void
}

declare ptr @decimal32ToNumber(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @encode_decimal64(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decimal64, align 4
  %6 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #13
  %7 = call ptr @decContextDefault(ptr noundef nonnull %6, i32 noundef 128) #13
  %8 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !54
  call fastcc void @decimal_to_decnumber(ptr noundef %2, ptr noundef nonnull %4)
  %9 = call ptr @decimal64FromNumber(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #13
  %10 = load i32, ptr %5, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, ptr %1, align 8, !tbaa !59
  %12 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %14, ptr %15, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #13
  ret void
}

declare ptr @decimal64FromNumber(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @decode_decimal64(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decimal64, align 4
  %6 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #13
  %7 = call ptr @decContextDefault(ptr noundef nonnull %6, i32 noundef 128) #13
  %8 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !54
  %9 = load i64, ptr %2, align 8, !tbaa !59
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr %5, align 4
  %11 = getelementptr inbounds i64, ptr %2, i64 1
  %12 = load i64, ptr %11, align 8, !tbaa !59
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 4
  store i32 %13, ptr %14, align 4
  %15 = call ptr @decimal64ToNumber(ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  call fastcc void @decimal_from_decnumber(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #13
  ret void
}

declare ptr @decimal64ToNumber(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @encode_decimal128(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decContext, align 4
  %6 = alloca %struct.decimal128, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %7 = call ptr @decContextDefault(ptr noundef nonnull %5, i32 noundef 128) #13
  %8 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !54
  call fastcc void @decimal_to_decnumber(ptr noundef %2, ptr noundef nonnull %4)
  %9 = call ptr @decimal128FromNumber(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %10 = load i32, ptr %6, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, ptr %1, align 8, !tbaa !59
  %12 = getelementptr inbounds [16 x i8], ptr %6, i64 0, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %14, ptr %15, align 8, !tbaa !59
  %16 = getelementptr inbounds [16 x i8], ptr %6, i64 0, i64 8
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 %18, ptr %19, align 8, !tbaa !59
  %20 = getelementptr inbounds [16 x i8], ptr %6, i64 0, i64 12
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, ptr %1, i64 3
  store i64 %22, ptr %23, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #13
  ret void
}

declare ptr @decimal128FromNumber(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @decode_decimal128(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decimal128, align 4
  %6 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #13
  %7 = call ptr @decContextDefault(ptr noundef nonnull %6, i32 noundef 128) #13
  %8 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !54
  %9 = load i64, ptr %2, align 8, !tbaa !59
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr %5, align 4
  %11 = getelementptr inbounds i64, ptr %2, i64 1
  %12 = load i64, ptr %11, align 8, !tbaa !59
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 4
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds i64, ptr %2, i64 2
  %16 = load i64, ptr %15, align 8, !tbaa !59
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 8
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds i64, ptr %2, i64 3
  %20 = load i64, ptr %19, align 8, !tbaa !59
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 12
  store i32 %21, ptr %22, align 4
  %23 = call ptr @decimal128ToNumber(ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  call fastcc void @decimal_from_decnumber(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #13
  ret void
}

declare ptr @decimal128ToNumber(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @decimal_do_compare(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.decContext, align 4
  %5 = alloca %struct.decNumber, align 4
  %6 = alloca %struct.decNumber, align 4
  %7 = alloca %struct.decNumber, align 4
  %8 = alloca %struct.real_value, align 8
  %9 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #13
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call fastcc void @decimal_from_binary(ptr noundef nonnull %8, ptr noundef nonnull %0)
  br label %14

14:                                               ; preds = %13, %3
  %15 = phi ptr [ %0, %3 ], [ %8, %13 ]
  %16 = load i32, ptr %1, align 8
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call fastcc void @decimal_from_binary(ptr noundef nonnull %9, ptr noundef nonnull %1)
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi ptr [ %1, %14 ], [ %9, %19 ]
  %22 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #13
  %23 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 4
  store i32 0, ptr %23, align 4, !tbaa !54
  %24 = getelementptr inbounds %struct.real_value, ptr %15, i64 0, i32 1
  %25 = call ptr @decimal128ToNumber(ptr noundef nonnull %24, ptr noundef nonnull %6) #13
  %26 = getelementptr inbounds %struct.real_value, ptr %21, i64 0, i32 1
  %27 = call ptr @decimal128ToNumber(ptr noundef nonnull %26, ptr noundef nonnull %7) #13
  %28 = call ptr @decNumberCompare(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #13
  %29 = getelementptr inbounds %struct.decNumber, ptr %5, i64 0, i32 2
  %30 = load i8, ptr %29, align 4, !tbaa !56
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 48
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.decNumber, ptr %5, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !60
  %37 = icmp eq i16 %36, 0
  %38 = load i32, ptr %5, align 4
  %39 = icmp eq i32 %38, 1
  %40 = select i1 %37, i1 %39, i1 false
  %41 = and i32 %31, 64
  %42 = icmp eq i32 %41, 0
  %43 = and i1 %42, %40
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = icmp sgt i8 %30, -1
  %46 = select i1 %45, i32 1, i32 -1
  br label %47

47:                                               ; preds = %44, %34, %20
  %48 = phi i32 [ %2, %20 ], [ 0, %34 ], [ %46, %44 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #13
  ret i32 %48
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @decimal_from_binary(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.decNumber, align 4
  %4 = alloca %struct.decContext, align 4
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #13
  call void @real_to_decimal(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 256, i64 noundef 0, i32 noundef 1) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #13
  %6 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #13
  %7 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !54
  %8 = call ptr @decNumberFromString(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  call fastcc void @decimal_from_decnumber(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #13
  ret void
}

declare ptr @decNumberCompare(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @decimal_round_for_format(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.decNumber, align 4
  %4 = alloca %struct.decContext, align 4
  %5 = alloca %struct.decimal32, align 1
  %6 = alloca %struct.decimal64, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #13
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #13
  %12 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 4
  store i32 0, ptr %12, align 4, !tbaa !54
  %13 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  %14 = call ptr @decimal128ToNumber(ptr noundef nonnull %13, ptr noundef nonnull %3) #13
  %15 = icmp eq ptr %0, @decimal_quad_format
  br i1 %15, label %30, label %16

16:                                               ; preds = %10
  %17 = icmp eq ptr %0, @decimal_single_format
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %19 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 32) #13
  store i32 0, ptr %12, align 4, !tbaa !54
  %20 = call ptr @decimal32FromNumber(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %21 = call ptr @decimal32ToNumber(ptr noundef nonnull %5, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %29

22:                                               ; preds = %16
  %23 = icmp eq ptr %0, @decimal_double_format
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %25 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 64) #13
  store i32 0, ptr %12, align 4, !tbaa !54
  %26 = call ptr @decimal64FromNumber(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %27 = call ptr @decimal64ToNumber(ptr noundef nonnull %6, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %29

28:                                               ; preds = %22
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 429, ptr noundef nonnull @.str.1) #13
  br label %29

29:                                               ; preds = %18, %28, %24
  call fastcc void @decimal_from_decnumber(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %30

30:                                               ; preds = %10, %2, %29
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #13
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @decimal_real_convert(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca [256 x i8], align 16
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = add i32 %1, -38
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.real_format, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !61
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  br i1 %7, label %20, label %17

17:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #13
  %18 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1
  %19 = call ptr @decimal128ToString(ptr noundef nonnull %18, ptr noundef nonnull %4) #13
  call void @real_from_string3(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #13
  br label %21

20:                                               ; preds = %3, %16
  tail call fastcc void @decimal_from_binary(ptr noundef %0, ptr noundef nonnull %2)
  br label %21

21:                                               ; preds = %17, %20, %8
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @decimal_real_to_decimal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !34 {
  %6 = icmp ugt i64 %2, 23
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 467, ptr noundef nonnull @.str.1) #13
  br label %8

8:                                                ; preds = %5, %7
  %9 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  %10 = tail call ptr @decimal128ToString(ptr noundef nonnull %9, ptr noundef %0) #13
  ret void
}

declare ptr @decimal128ToString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @decimal_do_fix_trunc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.decNumber, align 4
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #13
  %6 = call ptr @decContextDefault(ptr noundef nonnull %5, i32 noundef 128) #13
  %7 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !54
  %8 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 3
  store i32 5, ptr %8, align 4, !tbaa !63
  %9 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  %10 = call ptr @decimal128ToNumber(ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  %11 = call ptr @decNumberToIntegralValue(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  call fastcc void @decimal_from_decnumber(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #13
  ret void
}

declare ptr @decNumberToIntegralValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i64 @decimal_real_to_integer(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.decContext, align 4
  %3 = alloca %struct.decNumber, align 4
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decNumber, align 4
  %6 = alloca %struct.real_value, align 8
  %7 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #13
  %8 = call ptr @decContextDefault(ptr noundef nonnull %2, i32 noundef 128) #13
  %9 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !54
  %10 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 3
  store i32 5, ptr %10, align 4, !tbaa !63
  %11 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  %12 = call ptr @decimal128ToNumber(ptr noundef nonnull %11, ptr noundef nonnull %3) #13
  %13 = call ptr @decNumberToIntegralValue(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %2) #13
  %14 = call ptr @decNumberZero(ptr noundef nonnull %5) #13
  %15 = call ptr @decNumberRescale(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2) #13
  %16 = call ptr @decNumberToString(ptr noundef nonnull %3, ptr noundef nonnull %7) #13
  %17 = call i32 @real_from_string(ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %18 = call i64 @real_to_integer(ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #13
  ret i64 %18
}

declare ptr @decNumberZero(ptr noundef) local_unnamed_addr #3

declare ptr @decNumberRescale(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decNumberToString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @real_from_string(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @real_to_integer(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @decimal_real_to_integer2(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.decContext, align 4
  %5 = alloca %struct.decNumber, align 4
  %6 = alloca %struct.decNumber, align 4
  %7 = alloca %struct.decNumber, align 4
  %8 = alloca %struct.real_value, align 8
  %9 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #13
  %10 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #13
  %11 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !54
  %12 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 3
  store i32 5, ptr %12, align 4, !tbaa !63
  %13 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1
  %14 = call ptr @decimal128ToNumber(ptr noundef nonnull %13, ptr noundef nonnull %5) #13
  %15 = call ptr @decNumberToIntegralValue(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  %16 = call ptr @decNumberZero(ptr noundef nonnull %7) #13
  %17 = call ptr @decNumberRescale(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #13
  %18 = call ptr @decNumberToString(ptr noundef nonnull %5, ptr noundef nonnull %9) #13
  %19 = call i32 @real_from_string(ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  call void @real_to_integer2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #13
  ret void
}

declare void @real_to_integer2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @decimal_real_arithmetic(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.decContext, align 4
  %6 = alloca %struct.decNumber, align 4
  %7 = alloca %struct.decNumber, align 4
  %8 = alloca %struct.decNumber, align 4
  %9 = alloca %struct.decContext, align 4
  %10 = alloca %struct.decNumber, align 4
  %11 = alloca %struct.decNumber, align 4
  %12 = alloca %struct.decNumber, align 4
  %13 = alloca %struct.real_value, align 8
  %14 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #13
  %15 = load i32, ptr %2, align 8
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  call fastcc void @decimal_from_binary(ptr noundef nonnull %13, ptr noundef nonnull %2)
  br label %19

19:                                               ; preds = %18, %4
  %20 = phi ptr [ %2, %4 ], [ %13, %18 ]
  %21 = icmp eq ptr %3, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %3, align 8
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call fastcc void @decimal_from_binary(ptr noundef nonnull %14, ptr noundef nonnull %3)
  br label %27

27:                                               ; preds = %26, %22, %19
  %28 = phi ptr [ %3, %22 ], [ %14, %26 ], [ null, %19 ]
  switch i32 %1, label %82 [
    i32 63, label %29
    i32 64, label %31
    i32 65, label %33
    i32 75, label %41
    i32 80, label %49
    i32 81, label %59
    i32 79, label %69
    i32 82, label %75
    i32 77, label %81
  ]

29:                                               ; preds = %27
  %30 = call fastcc zeroext i8 @decimal_do_add(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %28, i32 noundef 0), !range !64
  br label %83

31:                                               ; preds = %27
  %32 = call fastcc zeroext i8 @decimal_do_add(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %28, i32 noundef 1), !range !64
  br label %83

33:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #13
  call fastcc void @decimal_to_decnumber(ptr noundef nonnull %20, ptr noundef nonnull %11)
  call fastcc void @decimal_to_decnumber(ptr noundef %28, ptr noundef nonnull %12)
  %34 = call ptr @decContextDefault(ptr noundef nonnull %9, i32 noundef 128) #13
  %35 = getelementptr inbounds %struct.decContext, ptr %9, i64 0, i32 4
  store i32 0, ptr %35, align 4, !tbaa !54
  %36 = call ptr @decNumberMultiply(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %9) #13
  call fastcc void @decimal_from_decnumber(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %9)
  %37 = getelementptr inbounds %struct.decContext, ptr %9, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !58
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #13
  br label %83

41:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #13
  call fastcc void @decimal_to_decnumber(ptr noundef nonnull %20, ptr noundef nonnull %7)
  call fastcc void @decimal_to_decnumber(ptr noundef %28, ptr noundef nonnull %8)
  %42 = call ptr @decContextDefault(ptr noundef nonnull %5, i32 noundef 128) #13
  %43 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 4
  store i32 0, ptr %43, align 4, !tbaa !54
  %44 = call ptr @decNumberDivide(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5) #13
  call fastcc void @decimal_from_decnumber(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %45 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 5
  %46 = load i32, ptr %45, align 4, !tbaa !58
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #13
  br label %83

49:                                               ; preds = %27
  %50 = load i32, ptr %28, align 8
  %51 = and i32 %50, 3
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false), !tbaa.struct !65
  br label %83

54:                                               ; preds = %49
  %55 = call zeroext i8 @real_compare(i32 noundef 105, ptr noundef nonnull %20, ptr noundef nonnull %28) #13
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 32, i1 false), !tbaa.struct !65
  br label %83

58:                                               ; preds = %54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false), !tbaa.struct !65
  br label %83

59:                                               ; preds = %27
  %60 = load i32, ptr %28, align 8
  %61 = and i32 %60, 3
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false), !tbaa.struct !65
  br label %83

64:                                               ; preds = %59
  %65 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %20, ptr noundef nonnull %28) #13
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false), !tbaa.struct !65
  br label %83

68:                                               ; preds = %64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 32, i1 false), !tbaa.struct !65
  br label %83

69:                                               ; preds = %27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 32, i1 false), !tbaa.struct !65
  %70 = getelementptr inbounds i8, ptr %0, i64 23
  %71 = load i8, ptr %70, align 1, !tbaa !46
  %72 = xor i8 %71, -128
  store i8 %72, ptr %70, align 1, !tbaa !46
  %73 = load i32, ptr %0, align 8
  %74 = xor i32 %73, 8
  store i32 %74, ptr %0, align 8
  br label %83

75:                                               ; preds = %27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 32, i1 false), !tbaa.struct !65
  %76 = getelementptr inbounds i8, ptr %0, i64 23
  %77 = load i8, ptr %76, align 1, !tbaa !46
  %78 = and i8 %77, 127
  store i8 %78, ptr %76, align 1, !tbaa !46
  %79 = load i32, ptr %0, align 8
  %80 = and i32 %79, -9
  store i32 %80, ptr %0, align 8
  br label %83

81:                                               ; preds = %27
  call void @decimal_do_fix_trunc(ptr noundef %0, ptr noundef nonnull %20)
  br label %83

82:                                               ; preds = %27
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 691, ptr noundef nonnull @.str.1) #13
  br label %83

83:                                               ; preds = %63, %68, %67, %53, %58, %57, %82, %81, %75, %69, %41, %33, %31, %29
  %84 = phi i8 [ 0, %82 ], [ 0, %81 ], [ 0, %75 ], [ 0, %69 ], [ %48, %41 ], [ %40, %33 ], [ %32, %31 ], [ %30, %29 ], [ 0, %57 ], [ 0, %58 ], [ 0, %53 ], [ 0, %67 ], [ 0, %68 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #13
  ret i8 %84
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @decimal_do_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.decNumber, align 4
  %6 = alloca %struct.decContext, align 4
  %7 = alloca %struct.decNumber, align 4
  %8 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #13
  call fastcc void @decimal_to_decnumber(ptr noundef %1, ptr noundef nonnull %7)
  call fastcc void @decimal_to_decnumber(ptr noundef %2, ptr noundef nonnull %8)
  %9 = call ptr @decContextDefault(ptr noundef nonnull %6, i32 noundef 128) #13
  %10 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 4
  store i32 0, ptr %10, align 4, !tbaa !54
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = call ptr @decNumberSubtract(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #13
  br label %16

14:                                               ; preds = %4
  %15 = call ptr @decNumberAdd(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #13
  br label %16

16:                                               ; preds = %14, %12
  call fastcc void @decimal_from_decnumber(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %17 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !58
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #13
  ret i8 %20
}

declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @decimal_real_maxval(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decContext, align 4
  %6 = add i32 %2, -42
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 718, ptr noundef nonnull @.str.1) #13
  unreachable

9:                                                ; preds = %3
  %10 = zext nneg i32 %6 to i64
  %11 = shl i64 %10, 2
  %12 = call ptr @llvm.load.relative.i64(ptr @reltable.decimal_real_maxval, i64 %11)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #13
  %13 = call ptr @decContextDefault(ptr noundef nonnull %5, i32 noundef 128) #13
  %14 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 4
  store i32 0, ptr %14, align 4, !tbaa !54
  %15 = call ptr @decNumberFromString(ptr noundef nonnull %4, ptr noundef nonnull %12, ptr noundef nonnull %5) #13
  call fastcc void @decimal_from_decnumber(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #13
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds i8, ptr %0, i64 23
  %19 = load i8, ptr %18, align 1, !tbaa !46
  %20 = or i8 %19, -128
  store i8 %20, ptr %18, align 1, !tbaa !46
  br label %21

21:                                               ; preds = %17, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @real_from_string3(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @decNumberSubtract(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decNumberAdd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decNumberMultiply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decNumberDivide(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #12

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }

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
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !41, i64 16}
!55 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24}
!56 = !{!57, !37, i64 8}
!57 = !{!"", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 10}
!58 = !{!55, !41, i64 20}
!59 = !{!42, !42, i64 0}
!60 = !{!43, !43, i64 0}
!61 = !{!62, !41, i64 16}
!62 = !{!"real_format", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 44, !37, i64 45, !37, i64 46, !37, i64 47, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51}
!63 = !{!55, !41, i64 12}
!64 = !{i8 0, i8 33}
!65 = !{i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 8, i64 24, !46}
