; ModuleID = 'bitmap.c'
source_filename = "bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@bitmap_default_obstack_depth = internal unnamed_addr global i32 0, align 4
@bitmap_default_obstack = dso_local global %struct.bitmap_obstack zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"bitmap.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\0Afirst = %p current = %p indx = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\09%p next = %p prev = %p indx = %u\0A\09\09bits = {\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A\09\09\09\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@bitmap_ggc_free = internal global ptr null, align 8
@gt_ggc_rd_gt_bitmap_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @bitmap_ggc_free, i64 1, i64 8, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@bitmap_zero_bits = dso_local local_unnamed_addr global %struct.bitmap_element_def zeroinitializer, align 8
@popcount_table = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !62 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !63
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !62 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !63
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !62 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !73

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !67
  %11 = load i8, ptr %3, align 1, !tbaa !74
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !62 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !73

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !67
  %11 = load i8, ptr %3, align 1, !tbaa !74
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !62 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !73

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #24
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !67
  %11 = load i8, ptr %3, align 1, !tbaa !74
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !62 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !63
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !62 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !73

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !75
  store i8 %12, ptr %4, align 1, !tbaa !74
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !62 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !73

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !75
  store i8 %12, ptr %4, align 1, !tbaa !74
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !62 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !63
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !73

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !75
  store i8 %12, ptr %4, align 1, !tbaa !74
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !62 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #24
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !62 {
  %2 = load i32, ptr %0, align 8, !tbaa !77
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !62 {
  %2 = load i32, ptr %0, align 8, !tbaa !77
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !62 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !78
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !62 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !78
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !62 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !62 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !62 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !62 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #24
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
  br i1 %23, label %7, label %24, !llvm.loop !79

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !62 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bitmap_clear(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !82 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4, !prof !85

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = getelementptr inbounds %struct.bitmap_element_def, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10, !prof !89

10:                                               ; preds = %4
  store ptr null, ptr %8, align 8, !tbaa !90
  %11 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !92
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !92
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %18, label %21, !prof !93

18:                                               ; preds = %10
  store ptr %8, ptr %11, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %16, ptr %19, align 8, !tbaa !94
  br label %21

20:                                               ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %21

21:                                               ; preds = %20, %18, %10
  %22 = icmp eq ptr %6, null
  %23 = select i1 %22, ptr @bitmap_ggc_free, ptr %6, !prof !95
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  store ptr %24, ptr %7, align 8, !tbaa !87
  store ptr %2, ptr %23, align 8, !tbaa !63
  br label %25

25:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bitmap_elt_clear_from(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !62 !PGOFuncName !96 {
  %3 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = icmp eq ptr %1, null
  br i1 %5, label %25, label %6, !prof !97

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10, !prof !89

10:                                               ; preds = %6
  store ptr null, ptr %8, align 8, !tbaa !90
  %11 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !92
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !92
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %18, label %21, !prof !93

18:                                               ; preds = %10
  store ptr %8, ptr %11, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %16, ptr %19, align 8, !tbaa !94
  br label %21

20:                                               ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %21

21:                                               ; preds = %10, %18, %20
  %22 = icmp eq ptr %4, null
  %23 = select i1 %22, ptr @bitmap_ggc_free, ptr %4, !prof !95
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  store ptr %24, ptr %7, align 8, !tbaa !87
  store ptr %1, ptr %23, align 8, !tbaa !63
  br label %25

25:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_obstack_initialize(ptr noundef %0) local_unnamed_addr #10 !prof !98 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %7, !prof !99

3:                                                ; preds = %1
  %4 = load i32, ptr @bitmap_default_obstack_depth, align 4, !tbaa !78
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @bitmap_default_obstack_depth, align 4, !tbaa !78
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %11, !prof !100

7:                                                ; preds = %3, %1
  %8 = phi ptr [ %0, %1 ], [ @bitmap_default_obstack, %3 ]
  %9 = getelementptr inbounds %struct.bitmap_obstack, ptr %8, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = tail call i32 @_obstack_begin(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #24
  br label %11

11:                                               ; preds = %3, %7
  ret void
}

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #11

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_obstack_release(ptr noundef %0) local_unnamed_addr #10 !prof !101 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %10, !prof !102

3:                                                ; preds = %1
  %4 = load i32, ptr @bitmap_default_obstack_depth, align 4, !tbaa !78
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr @bitmap_default_obstack_depth, align 4, !tbaa !78
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !100

7:                                                ; preds = %3
  %8 = icmp sgt i32 %4, 1
  br i1 %8, label %31, label %9

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 336, ptr noundef nonnull @.str.1) #24
  br label %31

10:                                               ; preds = %3, %1
  %11 = phi ptr [ %0, %1 ], [ @bitmap_default_obstack, %3 ]
  %12 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  %15 = ptrtoint ptr %14 to i64
  %16 = sub i64 0, %15
  %17 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2, i32 5
  store i64 %16, ptr %17, align 8, !tbaa !106
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %29, !prof !107

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !108
  %22 = ptrtoint ptr %21 to i64
  %23 = sub i64 %22, %15
  %24 = icmp sgt i64 %23, %16
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %14, i64 %16
  %27 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !109
  %28 = getelementptr inbounds %struct.bitmap_obstack, ptr %11, i64 0, i32 2, i32 3
  store ptr %26, ptr %28, align 8, !tbaa !110
  br label %31

29:                                               ; preds = %19, %10
  %30 = getelementptr inbounds i8, ptr %14, i64 %16
  tail call void @obstack_free(ptr noundef nonnull %12, ptr noundef %30) #24
  br label %31

31:                                               ; preds = %9, %7, %25, %29
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @bitmap_obstack_alloc_stat(ptr noundef %0) local_unnamed_addr #12 !prof !111 {
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @bitmap_default_obstack, ptr %0, !prof !112
  %4 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %52, !prof !114

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 5
  store i64 32, ptr %8, align 8, !tbaa !106
  %9 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !108
  %11 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  %13 = ptrtoint ptr %10 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %17, label %19, !prof !115

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %18, i32 noundef 32) #24
  br label %19

19:                                               ; preds = %7, %17
  %20 = load i64, ptr %8, align 8, !tbaa !106
  %21 = load ptr, ptr %11, align 8, !tbaa !110
  %22 = getelementptr inbounds i8, ptr %21, i64 %20
  store ptr %22, ptr %11, align 8, !tbaa !110
  %23 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !109
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %26, label %30, !prof !116

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 10
  %28 = load i8, ptr %27, align 8
  %29 = or i8 %28, 2
  store i8 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %19, %26
  %31 = load ptr, ptr %23, align 8, !tbaa !109
  %32 = ptrtoint ptr %31 to i64
  store i64 %32, ptr %8, align 8, !tbaa !106
  %33 = load ptr, ptr %11, align 8, !tbaa !110
  %34 = ptrtoint ptr %33 to i64
  %35 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !117
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %34
  %39 = xor i32 %36, -1
  %40 = sext i32 %39 to i64
  %41 = and i64 %38, %40
  %42 = inttoptr i64 %41 to ptr
  store ptr %42, ptr %11, align 8, !tbaa !110
  %43 = getelementptr inbounds %struct.bitmap_obstack, ptr %3, i64 0, i32 2, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !103
  %45 = ptrtoint ptr %44 to i64
  %46 = sub i64 %41, %45
  %47 = load ptr, ptr %9, align 8, !tbaa !108
  %48 = ptrtoint ptr %47 to i64
  %49 = sub i64 %48, %45
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %52, !prof !116

51:                                               ; preds = %30
  store ptr %47, ptr %11, align 8, !tbaa !110
  br label %52

52:                                               ; preds = %51, %30, %1
  %53 = phi ptr [ %5, %1 ], [ %11, %30 ], [ %11, %51 ]
  %54 = phi ptr [ %4, %1 ], [ %23, %30 ], [ %23, %51 ]
  %55 = phi ptr [ %5, %1 ], [ %31, %30 ], [ %31, %51 ]
  %56 = load ptr, ptr %53, align 8, !tbaa !63
  store ptr %56, ptr %54, align 8, !tbaa !63
  %57 = getelementptr inbounds %struct.bitmap_head_def, ptr %55, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, i8 0, i64 16, i1 false)
  store ptr %3, ptr %57, align 8, !tbaa !86
  ret ptr %55
}

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @bitmap_gc_alloc_stat() local_unnamed_addr #10 !prof !118 {
  %1 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #24
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %1, i64 0, i32 3
  store ptr null, ptr %2, align 8, !tbaa !86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  ret ptr %1
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bitmap_obstack_free(ptr noundef %0) local_unnamed_addr #9 !prof !119 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3, !prof !120

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !83
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6, !prof !121

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12, !prof !89

12:                                               ; preds = %6
  store ptr null, ptr %10, align 8, !tbaa !90
  %13 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !92
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !92
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %23, !prof !93

20:                                               ; preds = %12
  store ptr %10, ptr %13, align 8, !tbaa !91
  %21 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %18, ptr %21, align 8, !tbaa !94
  br label %23

22:                                               ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %12
  %24 = icmp eq ptr %8, null
  %25 = select i1 %24, ptr @bitmap_ggc_free, ptr %8, !prof !95
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  store ptr %26, ptr %9, align 8, !tbaa !87
  store ptr %4, ptr %25, align 8, !tbaa !63
  br label %27

27:                                               ; preds = %23, %3
  %28 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.bitmap_obstack, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !113
  store ptr %31, ptr %0, align 8, !tbaa !83
  store ptr %0, ptr %30, align 8, !tbaa !113
  br label %32

32:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @bitmap_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 !prof !122 {
  %3 = load ptr, ptr %0, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5, !prof !123

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11, !prof !89

11:                                               ; preds = %5
  store ptr null, ptr %9, align 8, !tbaa !90
  %12 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !92
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !92
  %18 = icmp ugt i32 %15, %17
  br i1 %18, label %19, label %22, !prof !93

19:                                               ; preds = %11
  store ptr %9, ptr %12, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %17, ptr %20, align 8, !tbaa !94
  br label %22

21:                                               ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %22

22:                                               ; preds = %21, %19, %11
  %23 = icmp eq ptr %7, null
  %24 = select i1 %23, ptr @bitmap_ggc_free, ptr %7, !prof !95
  %25 = load ptr, ptr %24, align 8, !tbaa !63
  store ptr %25, ptr %8, align 8, !tbaa !87
  store ptr %3, ptr %24, align 8, !tbaa !63
  br label %26

26:                                               ; preds = %22, %2
  %27 = load ptr, ptr %1, align 8, !tbaa !63
  %28 = icmp eq ptr %27, null
  br i1 %28, label %128, label %29, !prof !124

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  br label %31

31:                                               ; preds = %29, %125
  %32 = phi ptr [ %27, %29 ], [ %126, %125 ]
  %33 = phi ptr [ null, %29 ], [ %112, %125 ]
  %34 = load ptr, ptr %30, align 8, !tbaa !86
  %35 = icmp eq ptr %34, null
  br i1 %35, label %96, label %36, !prof !125

36:                                               ; preds = %31
  %37 = load ptr, ptr %34, align 8, !tbaa !126
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39, !prof !127

39:                                               ; preds = %36
  %40 = load ptr, ptr %37, align 8, !tbaa !90
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42, !prof !128

42:                                               ; preds = %39
  store ptr %40, ptr %34, align 8, !tbaa !126
  %43 = getelementptr inbounds %struct.bitmap_element_def, ptr %37, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !87
  %45 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !87
  br label %111

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %37, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !87
  store ptr %48, ptr %34, align 8, !tbaa !126
  br label %111

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.bitmap_obstack, ptr %34, i64 0, i32 2, i32 5
  store i64 40, ptr %50, align 8, !tbaa !106
  %51 = getelementptr inbounds %struct.bitmap_obstack, ptr %34, i64 0, i32 2, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !108
  %53 = getelementptr inbounds %struct.bitmap_obstack, ptr %34, i64 0, i32 2, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !110
  %55 = ptrtoint ptr %52 to i64
  %56 = ptrtoint ptr %54 to i64
  %57 = sub i64 %55, %56
  %58 = icmp slt i64 %57, 40
  br i1 %58, label %59, label %61, !prof !129

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.bitmap_obstack, ptr %34, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %60, i32 noundef 40) #24
  br label %61

61:                                               ; preds = %59, %49
  %62 = load i64, ptr %50, align 8, !tbaa !106
  %63 = load ptr, ptr %53, align 8, !tbaa !110
  %64 = getelementptr inbounds i8, ptr %63, i64 %62
  store ptr %64, ptr %53, align 8, !tbaa !110
  %65 = getelementptr inbounds %struct.bitmap_obstack, ptr %34, i64 0, i32 2, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !109
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %68, label %72, !prof !130

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.bitmap_obstack, ptr %34, i64 0, i32 2, i32 10
  %70 = load i8, ptr %69, align 8
  %71 = or i8 %70, 2
  store i8 %71, ptr %69, align 8
  br label %72

72:                                               ; preds = %68, %61
  %73 = load ptr, ptr %65, align 8, !tbaa !109
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %50, align 8, !tbaa !106
  %75 = load ptr, ptr %53, align 8, !tbaa !110
  %76 = ptrtoint ptr %75 to i64
  %77 = getelementptr inbounds %struct.bitmap_obstack, ptr %34, i64 0, i32 2, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !117
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %76
  %81 = xor i32 %78, -1
  %82 = sext i32 %81 to i64
  %83 = and i64 %80, %82
  %84 = inttoptr i64 %83 to ptr
  store ptr %84, ptr %53, align 8, !tbaa !110
  %85 = getelementptr inbounds %struct.bitmap_obstack, ptr %34, i64 0, i32 2, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !103
  %87 = ptrtoint ptr %86 to i64
  %88 = sub i64 %83, %87
  %89 = load ptr, ptr %51, align 8, !tbaa !108
  %90 = ptrtoint ptr %89 to i64
  %91 = sub i64 %90, %87
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %94, !prof !130

93:                                               ; preds = %72
  store ptr %89, ptr %53, align 8, !tbaa !110
  br label %94

94:                                               ; preds = %93, %72
  %95 = load ptr, ptr %53, align 8, !tbaa !110
  store ptr %95, ptr %65, align 8, !tbaa !109
  br label %111

96:                                               ; preds = %31
  %97 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %98 = icmp eq ptr %97, null
  br i1 %98, label %109, label %99, !prof !131

99:                                               ; preds = %96
  %100 = load ptr, ptr %97, align 8, !tbaa !90
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102, !prof !132

102:                                              ; preds = %99
  store ptr %100, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %103 = getelementptr inbounds %struct.bitmap_element_def, ptr %97, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !87
  %105 = getelementptr inbounds %struct.bitmap_element_def, ptr %100, i64 0, i32 1
  store ptr %104, ptr %105, align 8, !tbaa !87
  br label %111

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.bitmap_element_def, ptr %97, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !87
  store ptr %108, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %111

109:                                              ; preds = %96
  %110 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #24
  br label %111

111:                                              ; preds = %42, %46, %94, %102, %106, %109
  %112 = phi ptr [ %37, %42 ], [ %37, %46 ], [ %73, %94 ], [ %97, %102 ], [ %97, %106 ], [ %110, %109 ]
  %113 = getelementptr inbounds %struct.bitmap_element_def, ptr %112, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %113, i8 0, i64 16, i1 false)
  %114 = getelementptr inbounds %struct.bitmap_element_def, ptr %32, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !92
  %116 = getelementptr inbounds %struct.bitmap_element_def, ptr %112, i64 0, i32 2
  store i32 %115, ptr %116, align 8, !tbaa !92
  %117 = getelementptr inbounds %struct.bitmap_element_def, ptr %32, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %113, ptr noundef nonnull align 8 dereferenceable(16) %117, i64 16, i1 false)
  %118 = icmp eq ptr %33, null
  br i1 %118, label %119, label %123, !prof !133

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %121 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store ptr %112, ptr %120, align 8, !tbaa !91
  store ptr %112, ptr %0, align 8, !tbaa !83
  %122 = load i32, ptr %114, align 8, !tbaa !92
  store i32 %122, ptr %121, align 8, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %112, i8 0, i64 16, i1 false)
  br label %125

123:                                              ; preds = %111
  %124 = getelementptr inbounds %struct.bitmap_element_def, ptr %112, i64 0, i32 1
  store ptr %33, ptr %124, align 8, !tbaa !87
  store ptr null, ptr %112, align 8, !tbaa !90
  store ptr %112, ptr %33, align 8, !tbaa !90
  br label %125

125:                                              ; preds = %123, %119
  %126 = load ptr, ptr %32, align 8, !tbaa !63
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %31, !prof !134, !llvm.loop !135

128:                                              ; preds = %125, %26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @bitmap_clear_bit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !136 {
  %3 = lshr i32 %1, 7
  %4 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7, !prof !137

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !94
  %10 = icmp eq i32 %9, %3
  br i1 %10, label %49, label %11, !prof !138

11:                                               ; preds = %7
  %12 = icmp ult i32 %9, %3
  br i1 %12, label %13, label %21, !prof !139

13:                                               ; preds = %11, %17
  %14 = phi ptr [ %15, %17 ], [ %5, %11 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17, !prof !140

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !92
  %20 = icmp ult i32 %19, %3
  br i1 %20, label %13, label %43, !prof !141, !llvm.loop !142

21:                                               ; preds = %11
  %22 = lshr i32 %9, 1
  %23 = icmp ult i32 %22, %3
  br i1 %23, label %24, label %33, !prof !143

24:                                               ; preds = %21, %29
  %25 = phi ptr [ %27, %29 ], [ %5, %21 ]
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29, !prof !144

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !92
  %32 = icmp ugt i32 %31, %3
  br i1 %32, label %24, label %43, !prof !145, !llvm.loop !146

33:                                               ; preds = %21
  %34 = load ptr, ptr %0, align 8, !tbaa !83
  br label %35

35:                                               ; preds = %39, %33
  %36 = phi ptr [ %34, %33 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !90
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39, !prof !147

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %36, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !92
  %42 = icmp ult i32 %41, %3
  br i1 %42, label %35, label %43, !prof !148, !llvm.loop !149

43:                                               ; preds = %39, %35, %29, %24, %17, %13
  %44 = phi ptr [ %14, %13 ], [ %14, %17 ], [ %25, %24 ], [ %25, %29 ], [ %36, %35 ], [ %36, %39 ]
  store ptr %44, ptr %4, align 8, !tbaa !91
  %45 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !92
  store i32 %46, ptr %8, align 8, !tbaa !94
  %47 = icmp eq i32 %46, %3
  %48 = select i1 %47, ptr %44, ptr null, !prof !150
  br label %49

49:                                               ; preds = %2, %7, %43
  %50 = phi ptr [ %48, %43 ], [ %5, %7 ], [ %5, %2 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %105, label %52, !prof !151

52:                                               ; preds = %49
  %53 = and i32 %1, 63
  %54 = lshr i32 %1, 6
  %55 = and i32 %54, 1
  %56 = zext nneg i32 %53 to i64
  %57 = shl nuw i64 1, %56
  %58 = zext nneg i32 %55 to i64
  %59 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !152
  %61 = and i64 %60, %57
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66, !prof !153

63:                                               ; preds = %52
  %64 = xor i64 %57, -1
  %65 = and i64 %60, %64
  store i64 %65, ptr %59, align 8, !tbaa !152
  br label %66

66:                                               ; preds = %63, %52
  %67 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3
  %68 = load i64, ptr %67, align 8, !tbaa !152
  %69 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3, i64 1
  %70 = load i64, ptr %69, align 8, !tbaa !152
  %71 = or i64 %70, %68
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %105, !prof !154

73:                                               ; preds = %66
  %74 = load ptr, ptr %50, align 8, !tbaa !90
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !87
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78, !prof !155

78:                                               ; preds = %73
  store ptr %74, ptr %76, align 8, !tbaa !90
  br label %79

79:                                               ; preds = %78, %73
  %80 = icmp eq ptr %74, null
  br i1 %80, label %83, label %81, !prof !156

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.bitmap_element_def, ptr %74, i64 0, i32 1
  store ptr %76, ptr %82, align 8, !tbaa !87
  br label %83

83:                                               ; preds = %81, %79
  %84 = load ptr, ptr %0, align 8, !tbaa !83
  %85 = icmp eq ptr %84, %50
  br i1 %85, label %86, label %87, !prof !155

86:                                               ; preds = %83
  store ptr %74, ptr %0, align 8, !tbaa !83
  br label %87

87:                                               ; preds = %86, %83
  %88 = load ptr, ptr %4, align 8, !tbaa !91
  %89 = icmp eq ptr %88, %50
  br i1 %89, label %90, label %99, !prof !157

90:                                               ; preds = %87
  %91 = select i1 %80, ptr %76, ptr %74, !prof !156
  store ptr %91, ptr %4, align 8, !tbaa !91
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93, !prof !158

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.bitmap_element_def, ptr %91, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !92
  br label %96

96:                                               ; preds = %90, %93
  %97 = phi i32 [ %95, %93 ], [ 0, %90 ]
  %98 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %97, ptr %98, align 8, !tbaa !94
  br label %99

99:                                               ; preds = %96, %87
  %100 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !86
  store ptr null, ptr %50, align 8, !tbaa !90
  %102 = icmp eq ptr %101, null
  %103 = select i1 %102, ptr @bitmap_ggc_free, ptr %101, !prof !159
  %104 = load ptr, ptr %103, align 8, !tbaa !63
  store ptr %104, ptr %75, align 8, !tbaa !87
  store ptr %50, ptr %103, align 8, !tbaa !63
  br label %105

105:                                              ; preds = %99, %49, %66
  %106 = phi i1 [ %62, %66 ], [ false, %49 ], [ %62, %99 ]
  %107 = zext i1 %106 to i8
  ret i8 %107
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @bitmap_set_bit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !160 {
  %3 = lshr i32 %1, 7
  %4 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7, !prof !161

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !94
  %10 = icmp eq i32 %9, %3
  br i1 %10, label %49, label %11, !prof !162

11:                                               ; preds = %7
  %12 = icmp ult i32 %9, %3
  br i1 %12, label %13, label %21, !prof !163

13:                                               ; preds = %11, %17
  %14 = phi ptr [ %15, %17 ], [ %5, %11 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17, !prof !164

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !92
  %20 = icmp ult i32 %19, %3
  br i1 %20, label %13, label %43, !prof !165, !llvm.loop !142

21:                                               ; preds = %11
  %22 = lshr i32 %9, 1
  %23 = icmp ult i32 %22, %3
  br i1 %23, label %24, label %33, !prof !166

24:                                               ; preds = %21, %29
  %25 = phi ptr [ %27, %29 ], [ %5, %21 ]
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29, !prof !167

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !92
  %32 = icmp ugt i32 %31, %3
  br i1 %32, label %24, label %43, !prof !168, !llvm.loop !146

33:                                               ; preds = %21
  %34 = load ptr, ptr %0, align 8, !tbaa !83
  br label %35

35:                                               ; preds = %39, %33
  %36 = phi ptr [ %34, %33 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !90
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39, !prof !169

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %36, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !92
  %42 = icmp ult i32 %41, %3
  br i1 %42, label %35, label %43, !prof !170, !llvm.loop !149

43:                                               ; preds = %39, %35, %29, %24, %17, %13
  %44 = phi ptr [ %14, %13 ], [ %14, %17 ], [ %25, %24 ], [ %25, %29 ], [ %36, %35 ], [ %36, %39 ]
  store ptr %44, ptr %4, align 8, !tbaa !91
  %45 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !92
  store i32 %46, ptr %8, align 8, !tbaa !94
  %47 = icmp eq i32 %46, %3
  %48 = select i1 %47, ptr %44, ptr null, !prof !171
  br label %49

49:                                               ; preds = %2, %7, %43
  %50 = phi ptr [ %48, %43 ], [ %5, %7 ], [ %5, %2 ]
  %51 = lshr i32 %1, 6
  %52 = and i32 %51, 1
  %53 = and i32 %1, 63
  %54 = zext nneg i32 %53 to i64
  %55 = shl nuw i64 1, %54
  %56 = icmp eq ptr %50, null
  br i1 %56, label %57, label %181, !prof !172

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !86
  %60 = icmp eq ptr %59, null
  br i1 %60, label %121, label %61, !prof !125

61:                                               ; preds = %57
  %62 = load ptr, ptr %59, align 8, !tbaa !126
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64, !prof !127

64:                                               ; preds = %61
  %65 = load ptr, ptr %62, align 8, !tbaa !90
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67, !prof !128

67:                                               ; preds = %64
  store ptr %65, ptr %59, align 8, !tbaa !126
  %68 = getelementptr inbounds %struct.bitmap_element_def, ptr %62, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !87
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %65, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !87
  br label %136

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.bitmap_element_def, ptr %62, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !87
  store ptr %73, ptr %59, align 8, !tbaa !126
  br label %136

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.bitmap_obstack, ptr %59, i64 0, i32 2, i32 5
  store i64 40, ptr %75, align 8, !tbaa !106
  %76 = getelementptr inbounds %struct.bitmap_obstack, ptr %59, i64 0, i32 2, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !108
  %78 = getelementptr inbounds %struct.bitmap_obstack, ptr %59, i64 0, i32 2, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !110
  %80 = ptrtoint ptr %77 to i64
  %81 = ptrtoint ptr %79 to i64
  %82 = sub i64 %80, %81
  %83 = icmp slt i64 %82, 40
  br i1 %83, label %84, label %86, !prof !129

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.bitmap_obstack, ptr %59, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %85, i32 noundef 40) #24
  br label %86

86:                                               ; preds = %84, %74
  %87 = load i64, ptr %75, align 8, !tbaa !106
  %88 = load ptr, ptr %78, align 8, !tbaa !110
  %89 = getelementptr inbounds i8, ptr %88, i64 %87
  store ptr %89, ptr %78, align 8, !tbaa !110
  %90 = getelementptr inbounds %struct.bitmap_obstack, ptr %59, i64 0, i32 2, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !109
  %92 = icmp eq ptr %89, %91
  br i1 %92, label %93, label %97, !prof !130

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.bitmap_obstack, ptr %59, i64 0, i32 2, i32 10
  %95 = load i8, ptr %94, align 8
  %96 = or i8 %95, 2
  store i8 %96, ptr %94, align 8
  br label %97

97:                                               ; preds = %93, %86
  %98 = load ptr, ptr %90, align 8, !tbaa !109
  %99 = ptrtoint ptr %98 to i64
  store i64 %99, ptr %75, align 8, !tbaa !106
  %100 = load ptr, ptr %78, align 8, !tbaa !110
  %101 = ptrtoint ptr %100 to i64
  %102 = getelementptr inbounds %struct.bitmap_obstack, ptr %59, i64 0, i32 2, i32 6
  %103 = load i32, ptr %102, align 8, !tbaa !117
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %101
  %106 = xor i32 %103, -1
  %107 = sext i32 %106 to i64
  %108 = and i64 %105, %107
  %109 = inttoptr i64 %108 to ptr
  store ptr %109, ptr %78, align 8, !tbaa !110
  %110 = getelementptr inbounds %struct.bitmap_obstack, ptr %59, i64 0, i32 2, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !103
  %112 = ptrtoint ptr %111 to i64
  %113 = sub i64 %108, %112
  %114 = load ptr, ptr %76, align 8, !tbaa !108
  %115 = ptrtoint ptr %114 to i64
  %116 = sub i64 %115, %112
  %117 = icmp sgt i64 %113, %116
  br i1 %117, label %118, label %119, !prof !130

118:                                              ; preds = %97
  store ptr %114, ptr %78, align 8, !tbaa !110
  br label %119

119:                                              ; preds = %118, %97
  %120 = load ptr, ptr %78, align 8, !tbaa !110
  store ptr %120, ptr %90, align 8, !tbaa !109
  br label %136

121:                                              ; preds = %57
  %122 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %123 = icmp eq ptr %122, null
  br i1 %123, label %134, label %124, !prof !131

124:                                              ; preds = %121
  %125 = load ptr, ptr %122, align 8, !tbaa !90
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127, !prof !132

127:                                              ; preds = %124
  store ptr %125, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %128 = getelementptr inbounds %struct.bitmap_element_def, ptr %122, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !87
  %130 = getelementptr inbounds %struct.bitmap_element_def, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !87
  br label %136

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.bitmap_element_def, ptr %122, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !87
  store ptr %133, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %136

134:                                              ; preds = %121
  %135 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #24
  br label %136

136:                                              ; preds = %67, %71, %119, %127, %131, %134
  %137 = phi ptr [ %62, %67 ], [ %62, %71 ], [ %98, %119 ], [ %122, %127 ], [ %122, %131 ], [ %135, %134 ]
  %138 = getelementptr inbounds %struct.bitmap_element_def, ptr %137, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %138, i8 0, i64 16, i1 false)
  %139 = getelementptr inbounds %struct.bitmap_element_def, ptr %137, i64 0, i32 2
  store i32 %3, ptr %139, align 8, !tbaa !92
  %140 = zext nneg i32 %52 to i64
  %141 = getelementptr inbounds %struct.bitmap_element_def, ptr %137, i64 0, i32 3, i64 %140
  store i64 %55, ptr %141, align 8, !tbaa !152
  %142 = load ptr, ptr %0, align 8, !tbaa !83
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %145, !prof !173

144:                                              ; preds = %136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %137, i8 0, i64 16, i1 false)
  br label %178

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %147 = load i32, ptr %146, align 8, !tbaa !94
  %148 = icmp ult i32 %3, %147
  %149 = load ptr, ptr %4, align 8, !tbaa !91
  br i1 %148, label %150, label %165, !prof !174

150:                                              ; preds = %145, %155
  %151 = phi ptr [ %153, %155 ], [ %149, %145 ]
  %152 = getelementptr inbounds %struct.bitmap_element_def, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !87
  %154 = icmp eq ptr %153, null
  br i1 %154, label %161, label %155, !prof !175

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.bitmap_element_def, ptr %153, i64 0, i32 2
  %157 = load i32, ptr %156, align 8, !tbaa !92
  %158 = icmp ugt i32 %157, %3
  br i1 %158, label %150, label %159, !prof !176, !llvm.loop !177

159:                                              ; preds = %155
  %160 = select i1 %154, ptr %0, ptr %153, !prof !175
  br label %161

161:                                              ; preds = %150, %159
  %162 = phi ptr [ %160, %159 ], [ %0, %150 ]
  %163 = getelementptr inbounds %struct.bitmap_element_def, ptr %151, i64 0, i32 1
  store ptr %137, ptr %162, align 8, !tbaa !63
  %164 = getelementptr inbounds %struct.bitmap_element_def, ptr %137, i64 0, i32 1
  store ptr %153, ptr %164, align 8, !tbaa !87
  store ptr %151, ptr %137, align 8, !tbaa !90
  br label %178

165:                                              ; preds = %145, %169
  %166 = phi ptr [ %167, %169 ], [ %149, %145 ]
  %167 = load ptr, ptr %166, align 8, !tbaa !90
  %168 = icmp eq ptr %167, null
  br i1 %168, label %176, label %169, !prof !178

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.bitmap_element_def, ptr %167, i64 0, i32 2
  %171 = load i32, ptr %170, align 8, !tbaa !92
  %172 = icmp ult i32 %171, %3
  br i1 %172, label %165, label %173, !prof !179, !llvm.loop !180

173:                                              ; preds = %169
  br i1 %168, label %176, label %174, !prof !178

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.bitmap_element_def, ptr %167, i64 0, i32 1
  store ptr %137, ptr %175, align 8, !tbaa !87
  br label %176

176:                                              ; preds = %165, %174, %173
  store ptr %167, ptr %137, align 8, !tbaa !90
  %177 = getelementptr inbounds %struct.bitmap_element_def, ptr %137, i64 0, i32 1
  store ptr %166, ptr %177, align 8, !tbaa !87
  br label %178

178:                                              ; preds = %144, %161, %176
  %179 = phi ptr [ %0, %144 ], [ %163, %161 ], [ %166, %176 ]
  store ptr %137, ptr %179, align 8, !tbaa !63
  store ptr %137, ptr %4, align 8, !tbaa !91
  %180 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %3, ptr %180, align 8, !tbaa !94
  br label %189

181:                                              ; preds = %49
  %182 = zext nneg i32 %52 to i64
  %183 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3, i64 %182
  %184 = load i64, ptr %183, align 8, !tbaa !152
  %185 = and i64 %184, %55
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %189, !prof !181

187:                                              ; preds = %181
  %188 = or i64 %184, %55
  store i64 %188, ptr %183, align 8, !tbaa !152
  br label %189

189:                                              ; preds = %181, %187, %178
  %190 = phi i1 [ true, %178 ], [ true, %187 ], [ %186, %181 ]
  %191 = zext i1 %190 to i8
  ret i8 %191
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @bitmap_bit_p(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #15 !prof !182 {
  %3 = lshr i32 %1, 7
  %4 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7, !prof !183

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !94
  %10 = icmp eq i32 %9, %3
  br i1 %10, label %49, label %11, !prof !184

11:                                               ; preds = %7
  %12 = icmp ult i32 %9, %3
  br i1 %12, label %13, label %21, !prof !185

13:                                               ; preds = %11, %17
  %14 = phi ptr [ %15, %17 ], [ %5, %11 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17, !prof !186

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !92
  %20 = icmp ult i32 %19, %3
  br i1 %20, label %13, label %43, !prof !187, !llvm.loop !142

21:                                               ; preds = %11
  %22 = lshr i32 %9, 1
  %23 = icmp ult i32 %22, %3
  br i1 %23, label %24, label %33, !prof !188

24:                                               ; preds = %21, %29
  %25 = phi ptr [ %27, %29 ], [ %5, %21 ]
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29, !prof !189

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !92
  %32 = icmp ugt i32 %31, %3
  br i1 %32, label %24, label %43, !prof !190, !llvm.loop !146

33:                                               ; preds = %21
  %34 = load ptr, ptr %0, align 8, !tbaa !83
  br label %35

35:                                               ; preds = %39, %33
  %36 = phi ptr [ %34, %33 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !90
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39, !prof !191

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %36, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !92
  %42 = icmp ult i32 %41, %3
  br i1 %42, label %35, label %43, !prof !192, !llvm.loop !149

43:                                               ; preds = %39, %35, %29, %24, %17, %13
  %44 = phi ptr [ %14, %13 ], [ %14, %17 ], [ %25, %24 ], [ %25, %29 ], [ %36, %35 ], [ %36, %39 ]
  store ptr %44, ptr %4, align 8, !tbaa !91
  %45 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !92
  store i32 %46, ptr %8, align 8, !tbaa !94
  %47 = icmp eq i32 %46, %3
  %48 = select i1 %47, ptr %44, ptr null, !prof !193
  br label %49

49:                                               ; preds = %2, %7, %43
  %50 = phi ptr [ %48, %43 ], [ %5, %7 ], [ %5, %2 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %63, label %52, !prof !194

52:                                               ; preds = %49
  %53 = and i32 %1, 63
  %54 = lshr i32 %1, 6
  %55 = and i32 %54, 1
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !152
  %59 = zext nneg i32 %53 to i64
  %60 = lshr i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = and i32 %61, 1
  br label %63

63:                                               ; preds = %49, %52
  %64 = phi i32 [ %62, %52 ], [ 0, %49 ]
  ret i32 %64
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @bitmap_count_bits(ptr nocapture noundef readonly %0) local_unnamed_addr #16 !prof !195 {
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %7, !prof !196

4:                                                ; preds = %26
  %5 = load ptr, ptr %8, align 8, !tbaa !63
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7, !prof !197, !llvm.loop !198

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = phi i64 [ %27, %4 ], [ 0, %1 ]
  br label %10

10:                                               ; preds = %7, %26
  %11 = phi i64 [ 0, %7 ], [ %28, %26 ]
  %12 = phi i64 [ %9, %7 ], [ %27, %26 ]
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 3, i64 %11
  %14 = load i64, ptr %13, align 8, !tbaa !152
  br label %15

15:                                               ; preds = %10, %15
  %16 = phi i64 [ 0, %10 ], [ %24, %15 ]
  %17 = phi i64 [ 0, %10 ], [ %23, %15 ]
  %18 = lshr i64 %14, %16
  %19 = and i64 %18, 255
  %20 = getelementptr inbounds [256 x i8], ptr @popcount_table, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !74
  %22 = zext i8 %21 to i64
  %23 = add i64 %17, %22
  %24 = add nuw nsw i64 %16, 8
  %25 = icmp ult i64 %16, 56
  br i1 %25, label %15, label %26, !prof !199, !llvm.loop !200

26:                                               ; preds = %15
  %27 = add i64 %23, %12
  %28 = add nuw nsw i64 %11, 1
  %29 = icmp eq i64 %28, 2
  br i1 %29, label %4, label %10, !prof !201, !llvm.loop !202

30:                                               ; preds = %4, %1
  %31 = phi i64 [ 0, %1 ], [ %27, %4 ]
  ret i64 %31
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @bitmap_single_bit_set_p(ptr nocapture noundef readonly %0) local_unnamed_addr #17 !prof !62 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !90
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %32

7:                                                ; preds = %26
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, 2
  br i1 %9, label %29, label %10, !llvm.loop !203

10:                                               ; preds = %4, %7
  %11 = phi i64 [ %8, %7 ], [ 0, %4 ]
  %12 = phi i64 [ %27, %7 ], [ 0, %4 ]
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %2, i64 0, i32 3, i64 %11
  %14 = load i64, ptr %13, align 8, !tbaa !152
  br label %15

15:                                               ; preds = %10, %15
  %16 = phi i64 [ 0, %10 ], [ %24, %15 ]
  %17 = phi i64 [ 0, %10 ], [ %23, %15 ]
  %18 = lshr i64 %14, %16
  %19 = and i64 %18, 255
  %20 = getelementptr inbounds [256 x i8], ptr @popcount_table, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !74
  %22 = zext i8 %21 to i64
  %23 = add i64 %17, %22
  %24 = add nuw nsw i64 %16, 8
  %25 = icmp ult i64 %16, 56
  br i1 %25, label %15, label %26, !llvm.loop !200

26:                                               ; preds = %15
  %27 = add i64 %23, %12
  %28 = icmp ugt i64 %27, 1
  br i1 %28, label %32, label %7

29:                                               ; preds = %7
  %30 = icmp eq i64 %27, 1
  %31 = zext i1 %30 to i8
  br label %32

32:                                               ; preds = %26, %4, %1, %29
  %33 = phi i8 [ %31, %29 ], [ 0, %1 ], [ 0, %4 ], [ 0, %26 ]
  ret i8 %33
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @bitmap_first_set_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !204 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !205

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 770, ptr noundef nonnull @.str.1) #24
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.bitmap_element_def, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !92
  br label %8

8:                                                ; preds = %5, %13
  %9 = phi i64 [ 0, %5 ], [ %14, %13 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %2, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !152
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17, !prof !206

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, 2
  br i1 %15, label %16, label %8, !prof !207, !llvm.loop !208

16:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 778, ptr noundef nonnull @.str.1) #24
  br label %20

17:                                               ; preds = %8
  %18 = trunc i64 %9 to i32
  %19 = shl nuw nsw i32 %18, 6
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i32 [ 128, %16 ], [ %19, %17 ]
  %22 = phi i64 [ 0, %16 ], [ %11, %17 ]
  %23 = and i64 %22, 4294967295
  %24 = icmp eq i64 %23, 0
  %25 = lshr exact i64 %22, 32
  %26 = select i1 %24, i64 %25, i64 %22, !prof !209
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 0
  %29 = lshr exact i64 %26, 16
  %30 = select i1 %28, i64 %29, i64 %26, !prof !210
  %31 = and i64 %30, 255
  %32 = icmp eq i64 %31, 0
  %33 = lshr exact i64 %30, 8
  %34 = select i1 %32, i64 %33, i64 %30, !prof !211
  %35 = and i64 %34, 15
  %36 = icmp eq i64 %35, 0
  %37 = lshr exact i64 %34, 4
  %38 = select i1 %36, i64 %37, i64 %34, !prof !212
  %39 = and i64 %38, 3
  %40 = icmp eq i64 %39, 0
  %41 = lshr exact i64 %38, 2
  %42 = select i1 %40, i64 %41, i64 %38, !prof !213
  %43 = and i64 %42, 1
  %44 = xor i64 %43, 1
  %45 = shl nuw nsw i64 1, %44
  %46 = and i64 %45, %42
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49, !prof !205

48:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 805, ptr noundef nonnull @.str.1) #24
  br label %49

49:                                               ; preds = %20, %48
  %50 = shl i32 %7, 7
  %51 = add i32 %21, %50
  %52 = or disjoint i32 %51, 32
  %53 = select i1 %24, i32 %52, i32 %51, !prof !209
  %54 = or disjoint i32 %53, 16
  %55 = select i1 %28, i32 %54, i32 %53, !prof !210
  %56 = or disjoint i32 %55, 8
  %57 = select i1 %32, i32 %56, i32 %55, !prof !211
  %58 = add i32 %57, 4
  %59 = select i1 %36, i32 %58, i32 %57, !prof !212
  %60 = add i32 %59, 2
  %61 = select i1 %40, i32 %60, i32 %59, !prof !213
  %62 = trunc i64 %43 to i32
  %63 = xor i32 %62, 1
  %64 = add i32 %63, %61
  ret i32 %64
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @bitmap_last_set_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #18 !prof !62 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !83
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 821, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %7, %10
  br label %12

12:                                               ; preds = %11, %12
  %13 = phi ptr [ %14, %12 ], [ %8, %11 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !llvm.loop !214

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !92
  br label %19

19:                                               ; preds = %16, %25
  %20 = phi i32 [ 1, %16 ], [ %26, %25 ]
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 3, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !152
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = add nsw i32 %20, -1
  %27 = icmp eq i32 %20, 0
  br i1 %27, label %28, label %19, !llvm.loop !215

28:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 831, ptr noundef nonnull @.str.1) #24
  br label %31

29:                                               ; preds = %19
  %30 = shl nsw i32 %20, 6
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ -64, %28 ], [ %30, %29 ]
  %33 = phi i64 [ 0, %28 ], [ %23, %29 ]
  %34 = icmp ult i64 %33, 4294967296
  %35 = lshr i64 %33, 32
  %36 = select i1 %34, i64 %33, i64 %35
  %37 = icmp ult i64 %36, 65536
  %38 = lshr i64 %36, 16
  %39 = select i1 %37, i64 %36, i64 %38
  %40 = and i64 %39, 65280
  %41 = icmp eq i64 %40, 0
  %42 = lshr i64 %39, 8
  %43 = select i1 %41, i64 %42, i64 %39
  %44 = and i64 %43, 240
  %45 = icmp eq i64 %44, 0
  %46 = lshr i64 %43, 4
  %47 = select i1 %45, i64 %46, i64 %43
  %48 = and i64 %47, 12
  %49 = icmp eq i64 %48, 0
  %50 = lshr i64 %47, 2
  %51 = select i1 %49, i64 %50, i64 %47
  %52 = and i64 %51, 2
  %53 = lshr exact i64 %52, 1
  %54 = xor i64 %53, 1
  %55 = shl nuw nsw i64 1, %54
  %56 = and i64 %55, %51
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 859, ptr noundef nonnull @.str.1) #24
  br label %59

59:                                               ; preds = %31, %58
  %60 = icmp eq i64 %52, 0
  %61 = shl i32 %18, 7
  %62 = add i32 %32, %61
  %63 = or disjoint i32 %62, 32
  %64 = select i1 %34, i32 %62, i32 %63
  %65 = or disjoint i32 %64, 16
  %66 = select i1 %37, i32 %64, i32 %65
  %67 = or disjoint i32 %66, 8
  %68 = select i1 %41, i32 %67, i32 %66
  %69 = add i32 %68, 4
  %70 = select i1 %45, i32 %69, i32 %68
  %71 = add i32 %70, 2
  %72 = select i1 %49, i32 %71, i32 %70
  %73 = zext i1 %60 to i32
  %74 = add i32 %72, %73
  ret i32 %74
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @bitmap_and(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #12 !prof !216 {
  %4 = load ptr, ptr %0, align 8, !tbaa !83
  %5 = load ptr, ptr %1, align 8, !tbaa !83
  %6 = load ptr, ptr %2, align 8, !tbaa !83
  %7 = icmp eq ptr %0, %1
  %8 = icmp eq ptr %0, %2
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11, !prof !217

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 874, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %3, %10
  %12 = icmp eq ptr %1, %2
  br i1 %12, label %17, label %13, !prof !217

13:                                               ; preds = %11
  %14 = icmp ne ptr %5, null
  %15 = icmp ne ptr %6, null
  %16 = select i1 %14, i1 %15, i1 false, !prof !218
  br i1 %16, label %18, label %178, !prof !219

17:                                               ; preds = %11
  tail call void @bitmap_copy(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %216

18:                                               ; preds = %13, %170
  %19 = phi ptr [ %174, %170 ], [ %4, %13 ]
  %20 = phi ptr [ %173, %170 ], [ null, %13 ]
  %21 = phi ptr [ %172, %170 ], [ %6, %13 ]
  %22 = phi ptr [ %171, %170 ], [ %5, %13 ]
  %23 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !92
  %25 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !92
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %30, !prof !220

28:                                               ; preds = %18
  %29 = load ptr, ptr %22, align 8, !tbaa !90
  br label %170

30:                                               ; preds = %18
  %31 = icmp ult i32 %26, %24
  br i1 %31, label %32, label %34, !prof !221

32:                                               ; preds = %30
  %33 = load ptr, ptr %21, align 8, !tbaa !90
  br label %170

34:                                               ; preds = %30
  %35 = icmp eq ptr %19, null
  br i1 %35, label %36, label %145, !prof !222

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !86
  %39 = icmp eq ptr %38, null
  br i1 %39, label %100, label %40, !prof !125

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 8, !tbaa !126
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43, !prof !127

43:                                               ; preds = %40
  %44 = load ptr, ptr %41, align 8, !tbaa !90
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46, !prof !128

46:                                               ; preds = %43
  store ptr %44, ptr %38, align 8, !tbaa !126
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %41, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !87
  %49 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !87
  br label %115

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %41, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !87
  store ptr %52, ptr %38, align 8, !tbaa !126
  br label %115

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.bitmap_obstack, ptr %38, i64 0, i32 2, i32 5
  store i64 40, ptr %54, align 8, !tbaa !106
  %55 = getelementptr inbounds %struct.bitmap_obstack, ptr %38, i64 0, i32 2, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !108
  %57 = getelementptr inbounds %struct.bitmap_obstack, ptr %38, i64 0, i32 2, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !110
  %59 = ptrtoint ptr %56 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = icmp slt i64 %61, 40
  br i1 %62, label %63, label %65, !prof !129

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.bitmap_obstack, ptr %38, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %64, i32 noundef 40) #24
  br label %65

65:                                               ; preds = %63, %53
  %66 = load i64, ptr %54, align 8, !tbaa !106
  %67 = load ptr, ptr %57, align 8, !tbaa !110
  %68 = getelementptr inbounds i8, ptr %67, i64 %66
  store ptr %68, ptr %57, align 8, !tbaa !110
  %69 = getelementptr inbounds %struct.bitmap_obstack, ptr %38, i64 0, i32 2, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !109
  %71 = icmp eq ptr %68, %70
  br i1 %71, label %72, label %76, !prof !130

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.bitmap_obstack, ptr %38, i64 0, i32 2, i32 10
  %74 = load i8, ptr %73, align 8
  %75 = or i8 %74, 2
  store i8 %75, ptr %73, align 8
  br label %76

76:                                               ; preds = %72, %65
  %77 = load ptr, ptr %69, align 8, !tbaa !109
  %78 = ptrtoint ptr %77 to i64
  store i64 %78, ptr %54, align 8, !tbaa !106
  %79 = load ptr, ptr %57, align 8, !tbaa !110
  %80 = ptrtoint ptr %79 to i64
  %81 = getelementptr inbounds %struct.bitmap_obstack, ptr %38, i64 0, i32 2, i32 6
  %82 = load i32, ptr %81, align 8, !tbaa !117
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %80
  %85 = xor i32 %82, -1
  %86 = sext i32 %85 to i64
  %87 = and i64 %84, %86
  %88 = inttoptr i64 %87 to ptr
  store ptr %88, ptr %57, align 8, !tbaa !110
  %89 = getelementptr inbounds %struct.bitmap_obstack, ptr %38, i64 0, i32 2, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !103
  %91 = ptrtoint ptr %90 to i64
  %92 = sub i64 %87, %91
  %93 = load ptr, ptr %55, align 8, !tbaa !108
  %94 = ptrtoint ptr %93 to i64
  %95 = sub i64 %94, %91
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %97, label %98, !prof !130

97:                                               ; preds = %76
  store ptr %93, ptr %57, align 8, !tbaa !110
  br label %98

98:                                               ; preds = %97, %76
  %99 = load ptr, ptr %57, align 8, !tbaa !110
  store ptr %99, ptr %69, align 8, !tbaa !109
  br label %115

100:                                              ; preds = %36
  %101 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %102 = icmp eq ptr %101, null
  br i1 %102, label %113, label %103, !prof !131

103:                                              ; preds = %100
  %104 = load ptr, ptr %101, align 8, !tbaa !90
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106, !prof !132

106:                                              ; preds = %103
  store ptr %104, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %107 = getelementptr inbounds %struct.bitmap_element_def, ptr %101, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !87
  %109 = getelementptr inbounds %struct.bitmap_element_def, ptr %104, i64 0, i32 1
  store ptr %108, ptr %109, align 8, !tbaa !87
  br label %115

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.bitmap_element_def, ptr %101, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !87
  store ptr %112, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %115

113:                                              ; preds = %100
  %114 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #24
  br label %115

115:                                              ; preds = %113, %110, %106, %98, %50, %46
  %116 = phi ptr [ %41, %46 ], [ %41, %50 ], [ %77, %98 ], [ %101, %106 ], [ %101, %110 ], [ %114, %113 ]
  %117 = getelementptr inbounds %struct.bitmap_element_def, ptr %116, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %117, i8 0, i64 16, i1 false)
  %118 = getelementptr inbounds %struct.bitmap_element_def, ptr %116, i64 0, i32 2
  store i32 %24, ptr %118, align 8, !tbaa !92
  %119 = icmp eq ptr %20, null
  br i1 %119, label %120, label %133, !prof !223

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !91
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %126, !prof !224

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store ptr %116, ptr %121, align 8, !tbaa !91
  store i32 %24, ptr %125, align 8, !tbaa !94
  br label %126

126:                                              ; preds = %124, %120
  %127 = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %127, ptr %116, align 8, !tbaa !90
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129, !prof !224

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.bitmap_element_def, ptr %127, i64 0, i32 1
  store ptr %116, ptr %130, align 8, !tbaa !87
  br label %131

131:                                              ; preds = %129, %126
  store ptr %116, ptr %0, align 8, !tbaa !83
  %132 = getelementptr inbounds %struct.bitmap_element_def, ptr %116, i64 0, i32 1
  store ptr null, ptr %132, align 8, !tbaa !87
  br label %147

133:                                              ; preds = %115
  %134 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !91
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %138, !prof !225

137:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #24
  br label %138

138:                                              ; preds = %137, %133
  %139 = load ptr, ptr %20, align 8, !tbaa !90
  store ptr %139, ptr %116, align 8, !tbaa !90
  %140 = icmp eq ptr %139, null
  br i1 %140, label %143, label %141, !prof !226

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.bitmap_element_def, ptr %139, i64 0, i32 1
  store ptr %116, ptr %142, align 8, !tbaa !87
  br label %143

143:                                              ; preds = %141, %138
  store ptr %116, ptr %20, align 8, !tbaa !90
  %144 = getelementptr inbounds %struct.bitmap_element_def, ptr %116, i64 0, i32 1
  store ptr %20, ptr %144, align 8, !tbaa !87
  br label %147

145:                                              ; preds = %34
  %146 = getelementptr inbounds %struct.bitmap_element_def, ptr %19, i64 0, i32 2
  store i32 %24, ptr %146, align 8, !tbaa !92
  br label %147

147:                                              ; preds = %143, %131, %145
  %148 = phi ptr [ %19, %145 ], [ %116, %131 ], [ %116, %143 ]
  br label %149

149:                                              ; preds = %147, %149
  %150 = phi i64 [ 2, %147 ], [ %152, %149 ]
  %151 = phi i64 [ 0, %147 ], [ %159, %149 ]
  %152 = add nsw i64 %150, -1
  %153 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 3, i64 %152
  %154 = load i64, ptr %153, align 8, !tbaa !152
  %155 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 3, i64 %152
  %156 = load i64, ptr %155, align 8, !tbaa !152
  %157 = and i64 %156, %154
  %158 = getelementptr inbounds %struct.bitmap_element_def, ptr %148, i64 0, i32 3, i64 %152
  store i64 %157, ptr %158, align 8, !tbaa !152
  %159 = or i64 %157, %151
  %160 = icmp eq i64 %152, 0
  br i1 %160, label %161, label %149, !prof !227, !llvm.loop !228

161:                                              ; preds = %149
  %162 = icmp eq i64 %159, 0
  br i1 %162, label %165, label %163, !prof !229

163:                                              ; preds = %161
  %164 = load ptr, ptr %148, align 8, !tbaa !90
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi ptr [ %148, %163 ], [ %20, %161 ]
  %167 = phi ptr [ %164, %163 ], [ %148, %161 ]
  %168 = load ptr, ptr %22, align 8, !tbaa !90
  %169 = load ptr, ptr %21, align 8, !tbaa !90
  br label %170

170:                                              ; preds = %32, %165, %28
  %171 = phi ptr [ %29, %28 ], [ %22, %32 ], [ %168, %165 ]
  %172 = phi ptr [ %21, %28 ], [ %33, %32 ], [ %169, %165 ]
  %173 = phi ptr [ %20, %28 ], [ %20, %32 ], [ %166, %165 ]
  %174 = phi ptr [ %19, %28 ], [ %19, %32 ], [ %167, %165 ]
  %175 = icmp ne ptr %171, null
  %176 = icmp ne ptr %172, null
  %177 = select i1 %175, i1 %176, i1 false, !prof !218
  br i1 %177, label %18, label %178, !prof !230, !llvm.loop !231

178:                                              ; preds = %170, %13
  %179 = phi ptr [ %4, %13 ], [ %174, %170 ]
  %180 = load ptr, ptr %0, align 8, !tbaa !83
  %181 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %180, ptr %181, align 8, !tbaa !91
  %182 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !86
  %184 = icmp eq ptr %179, null
  br i1 %184, label %202, label %185, !prof !97

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.bitmap_element_def, ptr %179, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !87
  %188 = icmp eq ptr %187, null
  br i1 %188, label %197, label %189, !prof !89

189:                                              ; preds = %185
  store ptr null, ptr %187, align 8, !tbaa !90
  %190 = getelementptr inbounds %struct.bitmap_element_def, ptr %180, i64 0, i32 2
  %191 = load i32, ptr %190, align 8, !tbaa !92
  %192 = getelementptr inbounds %struct.bitmap_element_def, ptr %187, i64 0, i32 2
  %193 = load i32, ptr %192, align 8, !tbaa !92
  %194 = icmp ugt i32 %191, %193
  br i1 %194, label %195, label %198, !prof !93

195:                                              ; preds = %189
  store ptr %187, ptr %181, align 8, !tbaa !91
  %196 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %193, ptr %196, align 8, !tbaa !94
  br label %198

197:                                              ; preds = %185
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %198

198:                                              ; preds = %197, %195, %189
  %199 = icmp eq ptr %183, null
  %200 = select i1 %199, ptr @bitmap_ggc_free, ptr %183, !prof !95
  %201 = load ptr, ptr %200, align 8, !tbaa !63
  store ptr %201, ptr %186, align 8, !tbaa !87
  store ptr %179, ptr %200, align 8, !tbaa !63
  br label %202

202:                                              ; preds = %198, %178
  %203 = load ptr, ptr %181, align 8, !tbaa !91
  %204 = icmp eq ptr %203, null
  %205 = load ptr, ptr %0, align 8, !tbaa !83
  %206 = icmp ne ptr %205, null
  %207 = xor i1 %204, %206
  br i1 %207, label %209, label %208, !prof !232

208:                                              ; preds = %202
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 917, ptr noundef nonnull @.str.1) #24
  br label %209

209:                                              ; preds = %202, %208
  %210 = load ptr, ptr %181, align 8, !tbaa !91
  %211 = icmp eq ptr %210, null
  br i1 %211, label %216, label %212, !prof !233

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.bitmap_element_def, ptr %210, i64 0, i32 2
  %214 = load i32, ptr %213, align 8, !tbaa !92
  %215 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %214, ptr %215, align 8, !tbaa !94
  br label %216

216:                                              ; preds = %209, %212, %17
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @bitmap_elt_insert_after(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #12 !prof !234 !PGOFuncName !235 {
  %4 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp eq ptr %5, null
  br i1 %6, label %67, label %7, !prof !125

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !126
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10, !prof !127

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8, !tbaa !90
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !128

13:                                               ; preds = %10
  store ptr %11, ptr %5, align 8, !tbaa !126
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !87
  br label %82

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  store ptr %19, ptr %5, align 8, !tbaa !126
  br label %82

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.bitmap_obstack, ptr %5, i64 0, i32 2, i32 5
  store i64 40, ptr %21, align 8, !tbaa !106
  %22 = getelementptr inbounds %struct.bitmap_obstack, ptr %5, i64 0, i32 2, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !108
  %24 = getelementptr inbounds %struct.bitmap_obstack, ptr %5, i64 0, i32 2, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !110
  %26 = ptrtoint ptr %23 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = icmp slt i64 %28, 40
  br i1 %29, label %30, label %32, !prof !129

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.bitmap_obstack, ptr %5, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %31, i32 noundef 40) #24
  br label %32

32:                                               ; preds = %30, %20
  %33 = load i64, ptr %21, align 8, !tbaa !106
  %34 = load ptr, ptr %24, align 8, !tbaa !110
  %35 = getelementptr inbounds i8, ptr %34, i64 %33
  store ptr %35, ptr %24, align 8, !tbaa !110
  %36 = getelementptr inbounds %struct.bitmap_obstack, ptr %5, i64 0, i32 2, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !109
  %38 = icmp eq ptr %35, %37
  br i1 %38, label %39, label %43, !prof !130

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.bitmap_obstack, ptr %5, i64 0, i32 2, i32 10
  %41 = load i8, ptr %40, align 8
  %42 = or i8 %41, 2
  store i8 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %39, %32
  %44 = load ptr, ptr %36, align 8, !tbaa !109
  %45 = ptrtoint ptr %44 to i64
  store i64 %45, ptr %21, align 8, !tbaa !106
  %46 = load ptr, ptr %24, align 8, !tbaa !110
  %47 = ptrtoint ptr %46 to i64
  %48 = getelementptr inbounds %struct.bitmap_obstack, ptr %5, i64 0, i32 2, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !117
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %47
  %52 = xor i32 %49, -1
  %53 = sext i32 %52 to i64
  %54 = and i64 %51, %53
  %55 = inttoptr i64 %54 to ptr
  store ptr %55, ptr %24, align 8, !tbaa !110
  %56 = getelementptr inbounds %struct.bitmap_obstack, ptr %5, i64 0, i32 2, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !103
  %58 = ptrtoint ptr %57 to i64
  %59 = sub i64 %54, %58
  %60 = load ptr, ptr %22, align 8, !tbaa !108
  %61 = ptrtoint ptr %60 to i64
  %62 = sub i64 %61, %58
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %65, !prof !130

64:                                               ; preds = %43
  store ptr %60, ptr %24, align 8, !tbaa !110
  br label %65

65:                                               ; preds = %64, %43
  %66 = load ptr, ptr %24, align 8, !tbaa !110
  store ptr %66, ptr %36, align 8, !tbaa !109
  br label %82

67:                                               ; preds = %3
  %68 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %69 = icmp eq ptr %68, null
  br i1 %69, label %80, label %70, !prof !131

70:                                               ; preds = %67
  %71 = load ptr, ptr %68, align 8, !tbaa !90
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73, !prof !132

73:                                               ; preds = %70
  store ptr %71, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %74 = getelementptr inbounds %struct.bitmap_element_def, ptr %68, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !87
  %76 = getelementptr inbounds %struct.bitmap_element_def, ptr %71, i64 0, i32 1
  store ptr %75, ptr %76, align 8, !tbaa !87
  br label %82

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.bitmap_element_def, ptr %68, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !87
  store ptr %79, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %82

80:                                               ; preds = %67
  %81 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #24
  br label %82

82:                                               ; preds = %13, %17, %65, %73, %77, %80
  %83 = phi ptr [ %8, %13 ], [ %8, %17 ], [ %44, %65 ], [ %68, %73 ], [ %68, %77 ], [ %81, %80 ]
  %84 = getelementptr inbounds %struct.bitmap_element_def, ptr %83, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %84, i8 0, i64 16, i1 false)
  %85 = getelementptr inbounds %struct.bitmap_element_def, ptr %83, i64 0, i32 2
  store i32 %2, ptr %85, align 8, !tbaa !92
  %86 = icmp eq ptr %1, null
  %87 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !91
  %89 = icmp eq ptr %88, null
  br i1 %86, label %90, label %96, !prof !223

90:                                               ; preds = %82
  br i1 %89, label %91, label %93, !prof !224

91:                                               ; preds = %90
  store ptr %83, ptr %87, align 8, !tbaa !91
  %92 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %2, ptr %92, align 8, !tbaa !94
  br label %93

93:                                               ; preds = %91, %90
  %94 = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %94, ptr %83, align 8, !tbaa !90
  %95 = icmp eq ptr %94, null
  br i1 %95, label %106, label %101, !prof !224

96:                                               ; preds = %82
  br i1 %89, label %97, label %98, !prof !225

97:                                               ; preds = %96
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #24
  br label %98

98:                                               ; preds = %96, %97
  %99 = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %99, ptr %83, align 8, !tbaa !90
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101, !prof !226

101:                                              ; preds = %98, %93
  %102 = phi ptr [ %94, %93 ], [ %99, %98 ]
  %103 = phi ptr [ %0, %93 ], [ %1, %98 ]
  %104 = phi ptr [ null, %93 ], [ %1, %98 ]
  %105 = getelementptr inbounds %struct.bitmap_element_def, ptr %102, i64 0, i32 1
  store ptr %83, ptr %105, align 8, !tbaa !87
  br label %106

106:                                              ; preds = %101, %98, %93
  %107 = phi ptr [ %0, %93 ], [ %1, %98 ], [ %103, %101 ]
  %108 = phi ptr [ null, %93 ], [ %1, %98 ], [ %104, %101 ]
  store ptr %83, ptr %107, align 8, !tbaa !63
  %109 = getelementptr inbounds %struct.bitmap_element_def, ptr %83, i64 0, i32 1
  store ptr %108, ptr %109, align 8, !tbaa !87
  ret ptr %83
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @bitmap_and_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #12 !prof !236 {
  %3 = load ptr, ptr %0, align 8, !tbaa !83
  %4 = load ptr, ptr %1, align 8, !tbaa !83
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %153, label %6, !prof !237

6:                                                ; preds = %2
  %7 = icmp ne ptr %3, null
  %8 = icmp ne ptr %4, null
  %9 = select i1 %7, i1 %8, i1 false, !prof !238
  br i1 %9, label %10, label %111, !prof !239

10:                                               ; preds = %6, %105
  %11 = phi ptr [ %107, %105 ], [ %3, %6 ]
  %12 = phi ptr [ %106, %105 ], [ %4, %6 ]
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !92
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !92
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %53, !prof !240

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %11, align 8, !tbaa !90
  %21 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !87
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !241

24:                                               ; preds = %18
  store ptr %20, ptr %22, align 8, !tbaa !90
  br label %25

25:                                               ; preds = %24, %18
  %26 = icmp eq ptr %20, null
  br i1 %26, label %29, label %27, !prof !242

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.bitmap_element_def, ptr %20, i64 0, i32 1
  store ptr %22, ptr %28, align 8, !tbaa !87
  br label %29

29:                                               ; preds = %27, %25
  %30 = load ptr, ptr %0, align 8, !tbaa !83
  %31 = icmp eq ptr %30, %11
  br i1 %31, label %32, label %33, !prof !241

32:                                               ; preds = %29
  store ptr %20, ptr %0, align 8, !tbaa !83
  br label %33

33:                                               ; preds = %32, %29
  %34 = load ptr, ptr %19, align 8, !tbaa !91
  %35 = icmp eq ptr %34, %11
  br i1 %35, label %36, label %45, !prof !243

36:                                               ; preds = %33
  %37 = select i1 %26, ptr %22, ptr %20, !prof !244
  store ptr %37, ptr %19, align 8, !tbaa !91
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39, !prof !244

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %41 = getelementptr inbounds %struct.bitmap_element_def, ptr %37, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !92
  store i32 %42, ptr %40, align 8, !tbaa !94
  br label %45

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %44, align 8, !tbaa !94
  br label %45

45:                                               ; preds = %43, %39, %33
  %46 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !86
  store ptr null, ptr %11, align 8, !tbaa !90
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49, !prof !245

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 8, !tbaa !126
  store ptr %50, ptr %21, align 8, !tbaa !87
  store ptr %11, ptr %47, align 8, !tbaa !126
  br label %105

51:                                               ; preds = %45
  %52 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  store ptr %52, ptr %21, align 8, !tbaa !87
  store ptr %11, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %105

53:                                               ; preds = %10
  %54 = icmp ult i32 %16, %14
  br i1 %54, label %55, label %57, !prof !246

55:                                               ; preds = %53
  %56 = load ptr, ptr %12, align 8, !tbaa !90
  br label %105

57:                                               ; preds = %53, %57
  %58 = phi i64 [ %60, %57 ], [ 2, %53 ]
  %59 = phi i64 [ %66, %57 ], [ 0, %53 ]
  %60 = add nsw i64 %58, -1
  %61 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !152
  %63 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3, i64 %60
  %64 = load i64, ptr %63, align 8, !tbaa !152
  %65 = and i64 %64, %62
  store i64 %65, ptr %61, align 8, !tbaa !152
  %66 = or i64 %65, %59
  %67 = icmp eq i64 %60, 0
  br i1 %67, label %68, label %57, !prof !247, !llvm.loop !248

68:                                               ; preds = %57
  %69 = load ptr, ptr %11, align 8, !tbaa !90
  %70 = icmp eq i64 %66, 0
  br i1 %70, label %71, label %103, !prof !249

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %73 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !87
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76, !prof !250

76:                                               ; preds = %71
  store ptr %69, ptr %74, align 8, !tbaa !90
  br label %77

77:                                               ; preds = %76, %71
  %78 = icmp eq ptr %69, null
  br i1 %78, label %81, label %79, !prof !251

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 1
  store ptr %74, ptr %80, align 8, !tbaa !87
  br label %81

81:                                               ; preds = %79, %77
  %82 = load ptr, ptr %0, align 8, !tbaa !83
  %83 = icmp eq ptr %82, %11
  br i1 %83, label %84, label %85, !prof !250

84:                                               ; preds = %81
  store ptr %69, ptr %0, align 8, !tbaa !83
  br label %85

85:                                               ; preds = %84, %81
  %86 = load ptr, ptr %72, align 8, !tbaa !91
  %87 = icmp eq ptr %86, %11
  br i1 %87, label %88, label %97, !prof !250

88:                                               ; preds = %85
  %89 = select i1 %78, ptr %74, ptr %69, !prof !252
  store ptr %89, ptr %72, align 8, !tbaa !91
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91, !prof !252

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %93 = getelementptr inbounds %struct.bitmap_element_def, ptr %89, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !92
  store i32 %94, ptr %92, align 8, !tbaa !94
  br label %97

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %96, align 8, !tbaa !94
  br label %97

97:                                               ; preds = %95, %91, %85
  %98 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !86
  store ptr null, ptr %11, align 8, !tbaa !90
  %100 = icmp eq ptr %99, null
  %101 = select i1 %100, ptr @bitmap_ggc_free, ptr %99, !prof !253
  %102 = load ptr, ptr %101, align 8, !tbaa !63
  store ptr %102, ptr %73, align 8, !tbaa !87
  store ptr %11, ptr %101, align 8, !tbaa !63
  br label %103

103:                                              ; preds = %97, %68
  %104 = load ptr, ptr %12, align 8, !tbaa !90
  br label %105

105:                                              ; preds = %51, %49, %55, %103
  %106 = phi ptr [ %56, %55 ], [ %104, %103 ], [ %12, %49 ], [ %12, %51 ]
  %107 = phi ptr [ %11, %55 ], [ %69, %103 ], [ %20, %49 ], [ %20, %51 ]
  %108 = icmp ne ptr %107, null
  %109 = icmp ne ptr %106, null
  %110 = select i1 %108, i1 %109, i1 false, !prof !238
  br i1 %110, label %10, label %111, !prof !254, !llvm.loop !255

111:                                              ; preds = %105, %6
  %112 = phi ptr [ %3, %6 ], [ %107, %105 ]
  %113 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !86
  %115 = icmp eq ptr %112, null
  br i1 %115, label %135, label %116, !prof !97

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.bitmap_element_def, ptr %112, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !87
  %119 = icmp eq ptr %118, null
  br i1 %119, label %130, label %120, !prof !89

120:                                              ; preds = %116
  store ptr null, ptr %118, align 8, !tbaa !90
  %121 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !91
  %123 = getelementptr inbounds %struct.bitmap_element_def, ptr %122, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !92
  %125 = getelementptr inbounds %struct.bitmap_element_def, ptr %118, i64 0, i32 2
  %126 = load i32, ptr %125, align 8, !tbaa !92
  %127 = icmp ugt i32 %124, %126
  br i1 %127, label %128, label %131, !prof !93

128:                                              ; preds = %120
  store ptr %118, ptr %121, align 8, !tbaa !91
  %129 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %126, ptr %129, align 8, !tbaa !94
  br label %131

130:                                              ; preds = %116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %131

131:                                              ; preds = %130, %128, %120
  %132 = icmp eq ptr %114, null
  %133 = select i1 %132, ptr @bitmap_ggc_free, ptr %114, !prof !95
  %134 = load ptr, ptr %133, align 8, !tbaa !63
  store ptr %134, ptr %117, align 8, !tbaa !87
  store ptr %112, ptr %133, align 8, !tbaa !63
  br label %135

135:                                              ; preds = %131, %111
  %136 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !91
  %138 = icmp eq ptr %137, null
  %139 = load ptr, ptr %0, align 8, !tbaa !83
  %140 = icmp ne ptr %139, null
  %141 = xor i1 %138, %140
  br i1 %141, label %143, label %142, !prof !256

142:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 965, ptr noundef nonnull @.str.1) #24
  br label %143

143:                                              ; preds = %135, %142
  %144 = load ptr, ptr %136, align 8, !tbaa !91
  %145 = icmp eq ptr %144, null
  br i1 %145, label %153, label %146, !prof !257

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %148 = load i32, ptr %147, align 8, !tbaa !94
  %149 = getelementptr inbounds %struct.bitmap_element_def, ptr %144, i64 0, i32 2
  %150 = load i32, ptr %149, align 8, !tbaa !92
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %153, label %152, !prof !258

152:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 966, ptr noundef nonnull @.str.1) #24
  br label %153

153:                                              ; preds = %152, %146, %143, %2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @bitmap_and_compl(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #12 !prof !259 {
  %4 = load ptr, ptr %0, align 8, !tbaa !83
  %5 = load ptr, ptr %1, align 8, !tbaa !83
  %6 = load ptr, ptr %2, align 8, !tbaa !83
  %7 = icmp eq ptr %0, %1
  %8 = icmp eq ptr %0, %2
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11, !prof !260

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1015, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %3, %10
  %12 = icmp eq ptr %1, %2
  br i1 %12, label %15, label %13, !prof !260

13:                                               ; preds = %11
  %14 = icmp eq ptr %5, null
  br i1 %14, label %404, label %21, !prof !261

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !83
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i8
  %19 = icmp eq ptr %16, null
  br i1 %19, label %444, label %20

20:                                               ; preds = %15
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %16)
  br label %444

21:                                               ; preds = %13, %396
  %22 = phi ptr [ %401, %396 ], [ %4, %13 ]
  %23 = phi i8 [ %400, %396 ], [ 0, %13 ]
  %24 = phi ptr [ %399, %396 ], [ %0, %13 ]
  %25 = phi ptr [ %398, %396 ], [ null, %13 ]
  %26 = phi ptr [ %397, %396 ], [ %6, %13 ]
  %27 = phi ptr [ %402, %396 ], [ %5, %13 ]
  %28 = icmp eq ptr %26, null
  br i1 %28, label %42, label %29, !prof !262

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !92
  br label %32

32:                                               ; preds = %29, %37
  %33 = phi ptr [ %26, %29 ], [ %38, %37 ]
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !92
  %36 = icmp ult i32 %35, %31
  br i1 %36, label %37, label %40, !prof !263

37:                                               ; preds = %32
  %38 = load ptr, ptr %33, align 8, !tbaa !90
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %32, !prof !264, !llvm.loop !265

40:                                               ; preds = %32
  %41 = icmp ugt i32 %35, %31
  br i1 %41, label %42, label %188, !prof !266

42:                                               ; preds = %37, %21, %40
  %43 = phi ptr [ %33, %40 ], [ %26, %21 ], [ %38, %37 ]
  %44 = icmp eq i8 %23, 0
  %45 = icmp ne ptr %22, null
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %66, !prof !267

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !92
  %50 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !92
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %66, !prof !268

53:                                               ; preds = %47, %62
  %54 = phi i64 [ %64, %62 ], [ 1, %47 ]
  %55 = phi i8 [ %63, %62 ], [ 0, %47 ]
  %56 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3, i64 %54
  %57 = load i64, ptr %56, align 8, !tbaa !152
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 3, i64 %54
  %59 = load i64, ptr %58, align 8, !tbaa !152
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %62, label %61, !prof !269

61:                                               ; preds = %53
  store i64 %57, ptr %58, align 8, !tbaa !152
  br label %62

62:                                               ; preds = %61, %53
  %63 = phi i8 [ 1, %61 ], [ %55, %53 ]
  %64 = add nsw i64 %54, -1
  %65 = icmp eq i64 %54, 0
  br i1 %65, label %184, label %53, !prof !270, !llvm.loop !271

66:                                               ; preds = %47, %42
  %67 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !92
  br i1 %45, label %178, label %69, !prof !272

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !86
  %72 = icmp eq ptr %71, null
  br i1 %72, label %133, label %73, !prof !125

73:                                               ; preds = %69
  %74 = load ptr, ptr %71, align 8, !tbaa !126
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76, !prof !127

76:                                               ; preds = %73
  %77 = load ptr, ptr %74, align 8, !tbaa !90
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79, !prof !128

79:                                               ; preds = %76
  store ptr %77, ptr %71, align 8, !tbaa !126
  %80 = getelementptr inbounds %struct.bitmap_element_def, ptr %74, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !87
  %82 = getelementptr inbounds %struct.bitmap_element_def, ptr %77, i64 0, i32 1
  store ptr %81, ptr %82, align 8, !tbaa !87
  br label %148

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.bitmap_element_def, ptr %74, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !87
  store ptr %85, ptr %71, align 8, !tbaa !126
  br label %148

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.bitmap_obstack, ptr %71, i64 0, i32 2, i32 5
  store i64 40, ptr %87, align 8, !tbaa !106
  %88 = getelementptr inbounds %struct.bitmap_obstack, ptr %71, i64 0, i32 2, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !108
  %90 = getelementptr inbounds %struct.bitmap_obstack, ptr %71, i64 0, i32 2, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !110
  %92 = ptrtoint ptr %89 to i64
  %93 = ptrtoint ptr %91 to i64
  %94 = sub i64 %92, %93
  %95 = icmp slt i64 %94, 40
  br i1 %95, label %96, label %98, !prof !129

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.bitmap_obstack, ptr %71, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %97, i32 noundef 40) #24
  br label %98

98:                                               ; preds = %96, %86
  %99 = load i64, ptr %87, align 8, !tbaa !106
  %100 = load ptr, ptr %90, align 8, !tbaa !110
  %101 = getelementptr inbounds i8, ptr %100, i64 %99
  store ptr %101, ptr %90, align 8, !tbaa !110
  %102 = getelementptr inbounds %struct.bitmap_obstack, ptr %71, i64 0, i32 2, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !109
  %104 = icmp eq ptr %101, %103
  br i1 %104, label %105, label %109, !prof !130

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.bitmap_obstack, ptr %71, i64 0, i32 2, i32 10
  %107 = load i8, ptr %106, align 8
  %108 = or i8 %107, 2
  store i8 %108, ptr %106, align 8
  br label %109

109:                                              ; preds = %105, %98
  %110 = load ptr, ptr %102, align 8, !tbaa !109
  %111 = ptrtoint ptr %110 to i64
  store i64 %111, ptr %87, align 8, !tbaa !106
  %112 = load ptr, ptr %90, align 8, !tbaa !110
  %113 = ptrtoint ptr %112 to i64
  %114 = getelementptr inbounds %struct.bitmap_obstack, ptr %71, i64 0, i32 2, i32 6
  %115 = load i32, ptr %114, align 8, !tbaa !117
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %113
  %118 = xor i32 %115, -1
  %119 = sext i32 %118 to i64
  %120 = and i64 %117, %119
  %121 = inttoptr i64 %120 to ptr
  store ptr %121, ptr %90, align 8, !tbaa !110
  %122 = getelementptr inbounds %struct.bitmap_obstack, ptr %71, i64 0, i32 2, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !103
  %124 = ptrtoint ptr %123 to i64
  %125 = sub i64 %120, %124
  %126 = load ptr, ptr %88, align 8, !tbaa !108
  %127 = ptrtoint ptr %126 to i64
  %128 = sub i64 %127, %124
  %129 = icmp sgt i64 %125, %128
  br i1 %129, label %130, label %131, !prof !130

130:                                              ; preds = %109
  store ptr %126, ptr %90, align 8, !tbaa !110
  br label %131

131:                                              ; preds = %130, %109
  %132 = load ptr, ptr %90, align 8, !tbaa !110
  store ptr %132, ptr %102, align 8, !tbaa !109
  br label %148

133:                                              ; preds = %69
  %134 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %135 = icmp eq ptr %134, null
  br i1 %135, label %146, label %136, !prof !131

136:                                              ; preds = %133
  %137 = load ptr, ptr %134, align 8, !tbaa !90
  %138 = icmp eq ptr %137, null
  br i1 %138, label %143, label %139, !prof !132

139:                                              ; preds = %136
  store ptr %137, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %140 = getelementptr inbounds %struct.bitmap_element_def, ptr %134, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !87
  %142 = getelementptr inbounds %struct.bitmap_element_def, ptr %137, i64 0, i32 1
  store ptr %141, ptr %142, align 8, !tbaa !87
  br label %148

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.bitmap_element_def, ptr %134, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !87
  store ptr %145, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %148

146:                                              ; preds = %133
  %147 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #24
  br label %148

148:                                              ; preds = %146, %143, %139, %131, %83, %79
  %149 = phi ptr [ %74, %79 ], [ %74, %83 ], [ %110, %131 ], [ %134, %139 ], [ %134, %143 ], [ %147, %146 ]
  %150 = getelementptr inbounds %struct.bitmap_element_def, ptr %149, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %150, i8 0, i64 16, i1 false)
  %151 = getelementptr inbounds %struct.bitmap_element_def, ptr %149, i64 0, i32 2
  store i32 %68, ptr %151, align 8, !tbaa !92
  %152 = icmp eq ptr %25, null
  br i1 %152, label %153, label %166, !prof !223

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !91
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %159, !prof !224

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store ptr %149, ptr %154, align 8, !tbaa !91
  store i32 %68, ptr %158, align 8, !tbaa !94
  br label %159

159:                                              ; preds = %157, %153
  %160 = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %160, ptr %149, align 8, !tbaa !90
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162, !prof !224

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.bitmap_element_def, ptr %160, i64 0, i32 1
  store ptr %149, ptr %163, align 8, !tbaa !87
  br label %164

164:                                              ; preds = %162, %159
  store ptr %149, ptr %0, align 8, !tbaa !83
  %165 = getelementptr inbounds %struct.bitmap_element_def, ptr %149, i64 0, i32 1
  store ptr null, ptr %165, align 8, !tbaa !87
  br label %180

166:                                              ; preds = %148
  %167 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !91
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %171, !prof !225

170:                                              ; preds = %166
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #24
  br label %171

171:                                              ; preds = %170, %166
  %172 = load ptr, ptr %25, align 8, !tbaa !90
  store ptr %172, ptr %149, align 8, !tbaa !90
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174, !prof !226

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.bitmap_element_def, ptr %172, i64 0, i32 1
  store ptr %149, ptr %175, align 8, !tbaa !87
  br label %176

176:                                              ; preds = %174, %171
  store ptr %149, ptr %25, align 8, !tbaa !90
  %177 = getelementptr inbounds %struct.bitmap_element_def, ptr %149, i64 0, i32 1
  store ptr %25, ptr %177, align 8, !tbaa !87
  br label %180

178:                                              ; preds = %66
  %179 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  store i32 %68, ptr %179, align 8, !tbaa !92
  br label %180

180:                                              ; preds = %176, %164, %178
  %181 = phi ptr [ %22, %178 ], [ %149, %164 ], [ %149, %176 ]
  %182 = getelementptr inbounds %struct.bitmap_element_def, ptr %181, i64 0, i32 3
  %183 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %182, ptr noundef nonnull align 8 dereferenceable(16) %183, i64 16, i1 false)
  br label %184

184:                                              ; preds = %62, %180
  %185 = phi i8 [ 1, %180 ], [ %63, %62 ]
  %186 = load ptr, ptr %24, align 8, !tbaa !63
  %187 = load ptr, ptr %186, align 8, !tbaa !63
  br label %396

188:                                              ; preds = %40
  %189 = icmp eq i8 %23, 0
  %190 = icmp ne ptr %22, null
  %191 = select i1 %189, i1 %190, i1 false, !prof !273
  br i1 %191, label %192, label %215, !prof !274

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %194 = load i32, ptr %193, align 8, !tbaa !92
  %195 = icmp eq i32 %194, %31
  br i1 %195, label %196, label %215, !prof !275

196:                                              ; preds = %192, %210
  %197 = phi i64 [ %213, %210 ], [ 1, %192 ]
  %198 = phi i64 [ %212, %210 ], [ 0, %192 ]
  %199 = phi i8 [ %211, %210 ], [ 0, %192 ]
  %200 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3, i64 %197
  %201 = load i64, ptr %200, align 8, !tbaa !152
  %202 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %197
  %203 = load i64, ptr %202, align 8, !tbaa !152
  %204 = xor i64 %203, -1
  %205 = and i64 %201, %204
  %206 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 3, i64 %197
  %207 = load i64, ptr %206, align 8, !tbaa !152
  %208 = icmp eq i64 %207, %205
  br i1 %208, label %210, label %209, !prof !276

209:                                              ; preds = %196
  store i64 %205, ptr %206, align 8, !tbaa !152
  br label %210

210:                                              ; preds = %209, %196
  %211 = phi i8 [ 1, %209 ], [ %199, %196 ]
  %212 = or i64 %205, %198
  %213 = add nsw i64 %197, -1
  %214 = icmp eq i64 %197, 0
  br i1 %214, label %383, label %196, !prof !277, !llvm.loop !278

215:                                              ; preds = %192, %188
  br i1 %190, label %216, label %220, !prof !279

216:                                              ; preds = %215
  %217 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %218 = load i32, ptr %217, align 8, !tbaa !92
  %219 = icmp ugt i32 %218, %31
  br i1 %219, label %220, label %329, !prof !280

220:                                              ; preds = %216, %215
  %221 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !86
  %223 = icmp eq ptr %222, null
  br i1 %223, label %284, label %224, !prof !125

224:                                              ; preds = %220
  %225 = load ptr, ptr %222, align 8, !tbaa !126
  %226 = icmp eq ptr %225, null
  br i1 %226, label %237, label %227, !prof !127

227:                                              ; preds = %224
  %228 = load ptr, ptr %225, align 8, !tbaa !90
  %229 = icmp eq ptr %228, null
  br i1 %229, label %234, label %230, !prof !128

230:                                              ; preds = %227
  store ptr %228, ptr %222, align 8, !tbaa !126
  %231 = getelementptr inbounds %struct.bitmap_element_def, ptr %225, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !87
  %233 = getelementptr inbounds %struct.bitmap_element_def, ptr %228, i64 0, i32 1
  store ptr %232, ptr %233, align 8, !tbaa !87
  br label %299

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.bitmap_element_def, ptr %225, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !87
  store ptr %236, ptr %222, align 8, !tbaa !126
  br label %299

237:                                              ; preds = %224
  %238 = getelementptr inbounds %struct.bitmap_obstack, ptr %222, i64 0, i32 2, i32 5
  store i64 40, ptr %238, align 8, !tbaa !106
  %239 = getelementptr inbounds %struct.bitmap_obstack, ptr %222, i64 0, i32 2, i32 4
  %240 = load ptr, ptr %239, align 8, !tbaa !108
  %241 = getelementptr inbounds %struct.bitmap_obstack, ptr %222, i64 0, i32 2, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !110
  %243 = ptrtoint ptr %240 to i64
  %244 = ptrtoint ptr %242 to i64
  %245 = sub i64 %243, %244
  %246 = icmp slt i64 %245, 40
  br i1 %246, label %247, label %249, !prof !129

247:                                              ; preds = %237
  %248 = getelementptr inbounds %struct.bitmap_obstack, ptr %222, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %248, i32 noundef 40) #24
  br label %249

249:                                              ; preds = %247, %237
  %250 = load i64, ptr %238, align 8, !tbaa !106
  %251 = load ptr, ptr %241, align 8, !tbaa !110
  %252 = getelementptr inbounds i8, ptr %251, i64 %250
  store ptr %252, ptr %241, align 8, !tbaa !110
  %253 = getelementptr inbounds %struct.bitmap_obstack, ptr %222, i64 0, i32 2, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !109
  %255 = icmp eq ptr %252, %254
  br i1 %255, label %256, label %260, !prof !130

256:                                              ; preds = %249
  %257 = getelementptr inbounds %struct.bitmap_obstack, ptr %222, i64 0, i32 2, i32 10
  %258 = load i8, ptr %257, align 8
  %259 = or i8 %258, 2
  store i8 %259, ptr %257, align 8
  br label %260

260:                                              ; preds = %256, %249
  %261 = load ptr, ptr %253, align 8, !tbaa !109
  %262 = ptrtoint ptr %261 to i64
  store i64 %262, ptr %238, align 8, !tbaa !106
  %263 = load ptr, ptr %241, align 8, !tbaa !110
  %264 = ptrtoint ptr %263 to i64
  %265 = getelementptr inbounds %struct.bitmap_obstack, ptr %222, i64 0, i32 2, i32 6
  %266 = load i32, ptr %265, align 8, !tbaa !117
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %267, %264
  %269 = xor i32 %266, -1
  %270 = sext i32 %269 to i64
  %271 = and i64 %268, %270
  %272 = inttoptr i64 %271 to ptr
  store ptr %272, ptr %241, align 8, !tbaa !110
  %273 = getelementptr inbounds %struct.bitmap_obstack, ptr %222, i64 0, i32 2, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !103
  %275 = ptrtoint ptr %274 to i64
  %276 = sub i64 %271, %275
  %277 = load ptr, ptr %239, align 8, !tbaa !108
  %278 = ptrtoint ptr %277 to i64
  %279 = sub i64 %278, %275
  %280 = icmp sgt i64 %276, %279
  br i1 %280, label %281, label %282, !prof !130

281:                                              ; preds = %260
  store ptr %277, ptr %241, align 8, !tbaa !110
  br label %282

282:                                              ; preds = %281, %260
  %283 = load ptr, ptr %241, align 8, !tbaa !110
  store ptr %283, ptr %253, align 8, !tbaa !109
  br label %299

284:                                              ; preds = %220
  %285 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %286 = icmp eq ptr %285, null
  br i1 %286, label %297, label %287, !prof !131

287:                                              ; preds = %284
  %288 = load ptr, ptr %285, align 8, !tbaa !90
  %289 = icmp eq ptr %288, null
  br i1 %289, label %294, label %290, !prof !132

290:                                              ; preds = %287
  store ptr %288, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %291 = getelementptr inbounds %struct.bitmap_element_def, ptr %285, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !87
  %293 = getelementptr inbounds %struct.bitmap_element_def, ptr %288, i64 0, i32 1
  store ptr %292, ptr %293, align 8, !tbaa !87
  br label %299

294:                                              ; preds = %287
  %295 = getelementptr inbounds %struct.bitmap_element_def, ptr %285, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !87
  store ptr %296, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %299

297:                                              ; preds = %284
  %298 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #24
  br label %299

299:                                              ; preds = %297, %294, %290, %282, %234, %230
  %300 = phi ptr [ %225, %230 ], [ %225, %234 ], [ %261, %282 ], [ %285, %290 ], [ %285, %294 ], [ %298, %297 ]
  %301 = getelementptr inbounds %struct.bitmap_element_def, ptr %300, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %301, i8 0, i64 16, i1 false)
  %302 = getelementptr inbounds %struct.bitmap_element_def, ptr %300, i64 0, i32 2
  store i32 %31, ptr %302, align 8, !tbaa !92
  %303 = icmp eq ptr %25, null
  br i1 %303, label %304, label %317, !prof !223

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !91
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %310, !prof !224

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store ptr %300, ptr %305, align 8, !tbaa !91
  store i32 %31, ptr %309, align 8, !tbaa !94
  br label %310

310:                                              ; preds = %308, %304
  %311 = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %311, ptr %300, align 8, !tbaa !90
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313, !prof !224

313:                                              ; preds = %310
  %314 = getelementptr inbounds %struct.bitmap_element_def, ptr %311, i64 0, i32 1
  store ptr %300, ptr %314, align 8, !tbaa !87
  br label %315

315:                                              ; preds = %313, %310
  store ptr %300, ptr %0, align 8, !tbaa !83
  %316 = getelementptr inbounds %struct.bitmap_element_def, ptr %300, i64 0, i32 1
  store ptr null, ptr %316, align 8, !tbaa !87
  br label %330

317:                                              ; preds = %299
  %318 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !91
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %322, !prof !225

321:                                              ; preds = %317
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #24
  br label %322

322:                                              ; preds = %321, %317
  %323 = load ptr, ptr %25, align 8, !tbaa !90
  store ptr %323, ptr %300, align 8, !tbaa !90
  %324 = icmp eq ptr %323, null
  br i1 %324, label %327, label %325, !prof !226

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.bitmap_element_def, ptr %323, i64 0, i32 1
  store ptr %300, ptr %326, align 8, !tbaa !87
  br label %327

327:                                              ; preds = %325, %322
  store ptr %300, ptr %25, align 8, !tbaa !90
  %328 = getelementptr inbounds %struct.bitmap_element_def, ptr %300, i64 0, i32 1
  store ptr %25, ptr %328, align 8, !tbaa !87
  br label %330

329:                                              ; preds = %216
  store i32 %31, ptr %217, align 8, !tbaa !92
  br label %330

330:                                              ; preds = %327, %315, %329
  %331 = phi ptr [ %22, %329 ], [ %300, %315 ], [ %300, %327 ]
  %332 = phi i8 [ 1, %329 ], [ 0, %315 ], [ 0, %327 ]
  br label %333

333:                                              ; preds = %330, %333
  %334 = phi i64 [ 2, %330 ], [ %336, %333 ]
  %335 = phi i64 [ 0, %330 ], [ %344, %333 ]
  %336 = add nsw i64 %334, -1
  %337 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3, i64 %336
  %338 = load i64, ptr %337, align 8, !tbaa !152
  %339 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %336
  %340 = load i64, ptr %339, align 8, !tbaa !152
  %341 = xor i64 %340, -1
  %342 = and i64 %338, %341
  %343 = getelementptr inbounds %struct.bitmap_element_def, ptr %331, i64 0, i32 3, i64 %336
  store i64 %342, ptr %343, align 8, !tbaa !152
  %344 = or i64 %342, %335
  %345 = icmp eq i64 %336, 0
  br i1 %345, label %346, label %333, !prof !281, !llvm.loop !282

346:                                              ; preds = %333
  %347 = icmp eq i64 %344, 0
  br i1 %347, label %348, label %383, !prof !283

348:                                              ; preds = %346
  %349 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %350 = or i8 %332, %23
  %351 = load ptr, ptr %331, align 8, !tbaa !90
  %352 = getelementptr inbounds %struct.bitmap_element_def, ptr %331, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !87
  %354 = icmp eq ptr %353, null
  br i1 %354, label %356, label %355, !prof !284

355:                                              ; preds = %348
  store ptr %351, ptr %353, align 8, !tbaa !90
  br label %356

356:                                              ; preds = %355, %348
  %357 = icmp eq ptr %351, null
  br i1 %357, label %360, label %358, !prof !285

358:                                              ; preds = %356
  %359 = getelementptr inbounds %struct.bitmap_element_def, ptr %351, i64 0, i32 1
  store ptr %353, ptr %359, align 8, !tbaa !87
  br label %360

360:                                              ; preds = %358, %356
  %361 = load ptr, ptr %0, align 8, !tbaa !83
  %362 = icmp eq ptr %361, %331
  br i1 %362, label %363, label %364, !prof !284

363:                                              ; preds = %360
  store ptr %351, ptr %0, align 8, !tbaa !83
  br label %364

364:                                              ; preds = %363, %360
  %365 = load ptr, ptr %349, align 8, !tbaa !91
  %366 = icmp eq ptr %365, %331
  br i1 %366, label %367, label %376, !prof !284

367:                                              ; preds = %364
  %368 = select i1 %357, ptr %353, ptr %351, !prof !286
  store ptr %368, ptr %349, align 8, !tbaa !91
  %369 = icmp eq ptr %368, null
  br i1 %369, label %374, label %370, !prof !286

370:                                              ; preds = %367
  %371 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %372 = getelementptr inbounds %struct.bitmap_element_def, ptr %368, i64 0, i32 2
  %373 = load i32, ptr %372, align 8, !tbaa !92
  store i32 %373, ptr %371, align 8, !tbaa !94
  br label %376

374:                                              ; preds = %367
  %375 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %375, align 8, !tbaa !94
  br label %376

376:                                              ; preds = %374, %370, %364
  %377 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %378 = load ptr, ptr %377, align 8, !tbaa !86
  store ptr null, ptr %331, align 8, !tbaa !90
  %379 = icmp eq ptr %378, null
  %380 = select i1 %379, ptr @bitmap_ggc_free, ptr %378, !prof !287
  %381 = load ptr, ptr %380, align 8, !tbaa !63
  store ptr %381, ptr %352, align 8, !tbaa !87
  store ptr %331, ptr %380, align 8, !tbaa !63
  %382 = load ptr, ptr %24, align 8, !tbaa !63
  br label %383

383:                                              ; preds = %210, %376, %346
  %384 = phi i8 [ %350, %376 ], [ 1, %346 ], [ %211, %210 ]
  %385 = phi i64 [ %344, %376 ], [ %344, %346 ], [ %212, %210 ]
  %386 = phi ptr [ %382, %376 ], [ %331, %346 ], [ %22, %210 ]
  %387 = icmp eq i64 %385, 0
  br i1 %387, label %391, label %388, !prof !288

388:                                              ; preds = %383
  %389 = load ptr, ptr %24, align 8, !tbaa !63
  %390 = load ptr, ptr %389, align 8, !tbaa !63
  br label %391

391:                                              ; preds = %388, %383
  %392 = phi ptr [ %389, %388 ], [ %25, %383 ]
  %393 = phi ptr [ %389, %388 ], [ %24, %383 ]
  %394 = phi ptr [ %390, %388 ], [ %386, %383 ]
  %395 = load ptr, ptr %33, align 8, !tbaa !90
  br label %396

396:                                              ; preds = %391, %184
  %397 = phi ptr [ %43, %184 ], [ %395, %391 ]
  %398 = phi ptr [ %186, %184 ], [ %392, %391 ]
  %399 = phi ptr [ %186, %184 ], [ %393, %391 ]
  %400 = phi i8 [ %185, %184 ], [ %384, %391 ]
  %401 = phi ptr [ %187, %184 ], [ %394, %391 ]
  %402 = load ptr, ptr %27, align 8, !tbaa !90
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %21, !prof !289, !llvm.loop !290

404:                                              ; preds = %396, %13
  %405 = phi i8 [ 0, %13 ], [ %400, %396 ]
  %406 = phi ptr [ %4, %13 ], [ %401, %396 ]
  %407 = load ptr, ptr %0, align 8, !tbaa !83
  %408 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %407, ptr %408, align 8, !tbaa !91
  %409 = icmp eq ptr %406, null
  br i1 %409, label %429, label %410, !prof !291

410:                                              ; preds = %404
  %411 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %412 = load ptr, ptr %411, align 8, !tbaa !86
  %413 = getelementptr inbounds %struct.bitmap_element_def, ptr %406, i64 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !87
  %415 = icmp eq ptr %414, null
  br i1 %415, label %424, label %416, !prof !89

416:                                              ; preds = %410
  store ptr null, ptr %414, align 8, !tbaa !90
  %417 = getelementptr inbounds %struct.bitmap_element_def, ptr %407, i64 0, i32 2
  %418 = load i32, ptr %417, align 8, !tbaa !92
  %419 = getelementptr inbounds %struct.bitmap_element_def, ptr %414, i64 0, i32 2
  %420 = load i32, ptr %419, align 8, !tbaa !92
  %421 = icmp ugt i32 %418, %420
  br i1 %421, label %422, label %425, !prof !93

422:                                              ; preds = %416
  store ptr %414, ptr %408, align 8, !tbaa !91
  %423 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %420, ptr %423, align 8, !tbaa !94
  br label %425

424:                                              ; preds = %410
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %425

425:                                              ; preds = %424, %422, %416
  %426 = icmp eq ptr %412, null
  %427 = select i1 %426, ptr @bitmap_ggc_free, ptr %412, !prof !95
  %428 = load ptr, ptr %427, align 8, !tbaa !63
  store ptr %428, ptr %413, align 8, !tbaa !87
  store ptr %406, ptr %427, align 8, !tbaa !63
  br label %429

429:                                              ; preds = %425, %404
  %430 = phi i8 [ %405, %404 ], [ 1, %425 ]
  %431 = load ptr, ptr %408, align 8, !tbaa !91
  %432 = icmp eq ptr %431, null
  %433 = load ptr, ptr %0, align 8, !tbaa !83
  %434 = icmp ne ptr %433, null
  %435 = xor i1 %432, %434
  br i1 %435, label %437, label %436, !prof !292

436:                                              ; preds = %429
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1109, ptr noundef nonnull @.str.1) #24
  br label %437

437:                                              ; preds = %429, %436
  %438 = load ptr, ptr %408, align 8, !tbaa !91
  %439 = icmp eq ptr %438, null
  br i1 %439, label %444, label %440, !prof !293

440:                                              ; preds = %437
  %441 = getelementptr inbounds %struct.bitmap_element_def, ptr %438, i64 0, i32 2
  %442 = load i32, ptr %441, align 8, !tbaa !92
  %443 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %442, ptr %443, align 8, !tbaa !94
  br label %444

444:                                              ; preds = %20, %15, %437, %440
  %445 = phi i8 [ %430, %440 ], [ %430, %437 ], [ %18, %15 ], [ %18, %20 ]
  ret i8 %445
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @bitmap_and_compl_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #12 !prof !294 {
  %3 = load ptr, ptr %0, align 8, !tbaa !83
  %4 = load ptr, ptr %1, align 8, !tbaa !83
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !295

6:                                                ; preds = %2
  %7 = icmp ne ptr %3, null
  %8 = icmp ne ptr %4, null
  %9 = select i1 %7, i1 %8, i1 false, !prof !296
  br i1 %9, label %13, label %89, !prof !297

10:                                               ; preds = %2
  %11 = icmp eq ptr %3, null
  br i1 %11, label %108, label %12

12:                                               ; preds = %10
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %3)
  br label %108

13:                                               ; preds = %6, %79
  %14 = phi ptr [ %82, %79 ], [ %3, %6 ]
  %15 = phi i64 [ %81, %79 ], [ 0, %6 ]
  %16 = phi ptr [ %80, %79 ], [ %4, %6 ]
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !92
  %19 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !92
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %24, !prof !298

22:                                               ; preds = %13
  %23 = load ptr, ptr %14, align 8, !tbaa !90
  br label %79

24:                                               ; preds = %13
  %25 = icmp ult i32 %20, %18
  br i1 %25, label %26, label %28, !prof !299

26:                                               ; preds = %24
  %27 = load ptr, ptr %16, align 8, !tbaa !90
  br label %79

28:                                               ; preds = %24, %28
  %29 = phi i64 [ %32, %28 ], [ 2, %24 ]
  %30 = phi i64 [ %40, %28 ], [ 0, %24 ]
  %31 = phi i64 [ %39, %28 ], [ %15, %24 ]
  %32 = add nsw i64 %29, -1
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 3, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !152
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 3, i64 %32
  %36 = load i64, ptr %35, align 8, !tbaa !152
  %37 = and i64 %36, %34
  %38 = xor i64 %37, %34
  store i64 %38, ptr %33, align 8, !tbaa !152
  %39 = or i64 %37, %31
  %40 = or i64 %38, %30
  %41 = icmp eq i64 %32, 0
  br i1 %41, label %42, label %28, !prof !300, !llvm.loop !301

42:                                               ; preds = %28
  %43 = load ptr, ptr %14, align 8, !tbaa !90
  %44 = icmp eq i64 %40, 0
  br i1 %44, label %45, label %77, !prof !302

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !87
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50, !prof !303

50:                                               ; preds = %45
  store ptr %43, ptr %48, align 8, !tbaa !90
  br label %51

51:                                               ; preds = %50, %45
  %52 = icmp eq ptr %43, null
  br i1 %52, label %55, label %53, !prof !304

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.bitmap_element_def, ptr %43, i64 0, i32 1
  store ptr %48, ptr %54, align 8, !tbaa !87
  br label %55

55:                                               ; preds = %53, %51
  %56 = load ptr, ptr %0, align 8, !tbaa !83
  %57 = icmp eq ptr %56, %14
  br i1 %57, label %58, label %59, !prof !303

58:                                               ; preds = %55
  store ptr %43, ptr %0, align 8, !tbaa !83
  br label %59

59:                                               ; preds = %58, %55
  %60 = load ptr, ptr %46, align 8, !tbaa !91
  %61 = icmp eq ptr %60, %14
  br i1 %61, label %62, label %71, !prof !305

62:                                               ; preds = %59
  %63 = select i1 %52, ptr %48, ptr %43, !prof !306
  store ptr %63, ptr %46, align 8, !tbaa !91
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65, !prof !307

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %67 = getelementptr inbounds %struct.bitmap_element_def, ptr %63, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !92
  store i32 %68, ptr %66, align 8, !tbaa !94
  br label %71

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %70, align 8, !tbaa !94
  br label %71

71:                                               ; preds = %69, %65, %59
  %72 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !86
  store ptr null, ptr %14, align 8, !tbaa !90
  %74 = icmp eq ptr %73, null
  %75 = select i1 %74, ptr @bitmap_ggc_free, ptr %73, !prof !308
  %76 = load ptr, ptr %75, align 8, !tbaa !63
  store ptr %76, ptr %47, align 8, !tbaa !87
  store ptr %14, ptr %75, align 8, !tbaa !63
  br label %77

77:                                               ; preds = %71, %42
  %78 = load ptr, ptr %16, align 8, !tbaa !90
  br label %79

79:                                               ; preds = %26, %77, %22
  %80 = phi ptr [ %16, %22 ], [ %27, %26 ], [ %78, %77 ]
  %81 = phi i64 [ %15, %22 ], [ %15, %26 ], [ %39, %77 ]
  %82 = phi ptr [ %23, %22 ], [ %14, %26 ], [ %43, %77 ]
  %83 = icmp ne ptr %82, null
  %84 = icmp ne ptr %80, null
  %85 = select i1 %83, i1 %84, i1 false, !prof !296
  br i1 %85, label %13, label %86, !prof !309, !llvm.loop !310

86:                                               ; preds = %79
  %87 = icmp ne i64 %81, 0
  %88 = zext i1 %87 to i8
  br label %89

89:                                               ; preds = %86, %6
  %90 = phi i8 [ 0, %6 ], [ %88, %86 ]
  %91 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !91
  %93 = icmp eq ptr %92, null
  %94 = load ptr, ptr %0, align 8, !tbaa !83
  %95 = icmp ne ptr %94, null
  %96 = xor i1 %93, %95
  br i1 %96, label %98, label %97, !prof !311

97:                                               ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1165, ptr noundef nonnull @.str.1) #24
  br label %98

98:                                               ; preds = %89, %97
  %99 = load ptr, ptr %91, align 8, !tbaa !91
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101, !prof !312

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !94
  %104 = getelementptr inbounds %struct.bitmap_element_def, ptr %99, i64 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !92
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %108, label %107, !prof !313

107:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1166, ptr noundef nonnull @.str.1) #24
  br label %108

108:                                              ; preds = %107, %101, %98, %10, %12
  %109 = phi i8 [ 1, %12 ], [ 0, %10 ], [ %90, %98 ], [ %90, %101 ], [ %90, %107 ]
  ret i8 %109
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @bitmap_set_range(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 !prof !314 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %249, label %5, !prof !315

5:                                                ; preds = %3
  %6 = lshr i32 %1, 7
  %7 = add i32 %2, %1
  %8 = add i32 %7, -1
  %9 = lshr i32 %8, 7
  %10 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = icmp eq ptr %11, null
  br i1 %12, label %55, label %13, !prof !316

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !94
  %16 = icmp eq i32 %15, %6
  br i1 %16, label %55, label %17, !prof !317

17:                                               ; preds = %13
  %18 = icmp ult i32 %15, %6
  br i1 %18, label %19, label %27, !prof !318

19:                                               ; preds = %17, %23
  %20 = phi ptr [ %21, %23 ], [ %11, %17 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  %22 = icmp eq ptr %21, null
  br i1 %22, label %49, label %23, !prof !319

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bitmap_element_def, ptr %20, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !92
  %26 = icmp ult i32 %25, %6
  br i1 %26, label %19, label %49, !prof !320, !llvm.loop !142

27:                                               ; preds = %17
  %28 = lshr i32 %15, 1
  %29 = icmp ult i32 %28, %6
  br i1 %29, label %30, label %39, !prof !321

30:                                               ; preds = %27, %35
  %31 = phi ptr [ %33, %35 ], [ %11, %27 ]
  %32 = getelementptr inbounds %struct.bitmap_element_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !87
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35, !prof !322

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.bitmap_element_def, ptr %31, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !92
  %38 = icmp ugt i32 %37, %6
  br i1 %38, label %30, label %49, !prof !323, !llvm.loop !146

39:                                               ; preds = %27
  %40 = load ptr, ptr %0, align 8, !tbaa !83
  br label %41

41:                                               ; preds = %45, %39
  %42 = phi ptr [ %40, %39 ], [ %43, %45 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !90
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45, !prof !324

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %42, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !92
  %48 = icmp ult i32 %47, %6
  br i1 %48, label %41, label %49, !prof !325, !llvm.loop !149

49:                                               ; preds = %45, %41, %35, %30, %23, %19
  %50 = phi ptr [ %20, %19 ], [ %20, %23 ], [ %31, %30 ], [ %31, %35 ], [ %42, %41 ], [ %42, %45 ]
  store ptr %50, ptr %10, align 8, !tbaa !91
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !92
  store i32 %52, ptr %14, align 8, !tbaa !94
  %53 = icmp eq i32 %52, %6
  %54 = select i1 %53, ptr %50, ptr null, !prof !326
  br label %55

55:                                               ; preds = %5, %13, %49
  %56 = phi ptr [ %54, %49 ], [ %11, %13 ], [ %11, %5 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %180, !prof !327

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !86
  %61 = icmp eq ptr %60, null
  br i1 %61, label %122, label %62, !prof !125

62:                                               ; preds = %58
  %63 = load ptr, ptr %60, align 8, !tbaa !126
  %64 = icmp eq ptr %63, null
  br i1 %64, label %75, label %65, !prof !127

65:                                               ; preds = %62
  %66 = load ptr, ptr %63, align 8, !tbaa !90
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68, !prof !128

68:                                               ; preds = %65
  store ptr %66, ptr %60, align 8, !tbaa !126
  %69 = getelementptr inbounds %struct.bitmap_element_def, ptr %63, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !87
  %71 = getelementptr inbounds %struct.bitmap_element_def, ptr %66, i64 0, i32 1
  store ptr %70, ptr %71, align 8, !tbaa !87
  br label %137

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.bitmap_element_def, ptr %63, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !87
  store ptr %74, ptr %60, align 8, !tbaa !126
  br label %137

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.bitmap_obstack, ptr %60, i64 0, i32 2, i32 5
  store i64 40, ptr %76, align 8, !tbaa !106
  %77 = getelementptr inbounds %struct.bitmap_obstack, ptr %60, i64 0, i32 2, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !108
  %79 = getelementptr inbounds %struct.bitmap_obstack, ptr %60, i64 0, i32 2, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !110
  %81 = ptrtoint ptr %78 to i64
  %82 = ptrtoint ptr %80 to i64
  %83 = sub i64 %81, %82
  %84 = icmp slt i64 %83, 40
  br i1 %84, label %85, label %87, !prof !129

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.bitmap_obstack, ptr %60, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %86, i32 noundef 40) #24
  br label %87

87:                                               ; preds = %85, %75
  %88 = load i64, ptr %76, align 8, !tbaa !106
  %89 = load ptr, ptr %79, align 8, !tbaa !110
  %90 = getelementptr inbounds i8, ptr %89, i64 %88
  store ptr %90, ptr %79, align 8, !tbaa !110
  %91 = getelementptr inbounds %struct.bitmap_obstack, ptr %60, i64 0, i32 2, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !109
  %93 = icmp eq ptr %90, %92
  br i1 %93, label %94, label %98, !prof !130

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.bitmap_obstack, ptr %60, i64 0, i32 2, i32 10
  %96 = load i8, ptr %95, align 8
  %97 = or i8 %96, 2
  store i8 %97, ptr %95, align 8
  br label %98

98:                                               ; preds = %94, %87
  %99 = load ptr, ptr %91, align 8, !tbaa !109
  %100 = ptrtoint ptr %99 to i64
  store i64 %100, ptr %76, align 8, !tbaa !106
  %101 = load ptr, ptr %79, align 8, !tbaa !110
  %102 = ptrtoint ptr %101 to i64
  %103 = getelementptr inbounds %struct.bitmap_obstack, ptr %60, i64 0, i32 2, i32 6
  %104 = load i32, ptr %103, align 8, !tbaa !117
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %102
  %107 = xor i32 %104, -1
  %108 = sext i32 %107 to i64
  %109 = and i64 %106, %108
  %110 = inttoptr i64 %109 to ptr
  store ptr %110, ptr %79, align 8, !tbaa !110
  %111 = getelementptr inbounds %struct.bitmap_obstack, ptr %60, i64 0, i32 2, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !103
  %113 = ptrtoint ptr %112 to i64
  %114 = sub i64 %109, %113
  %115 = load ptr, ptr %77, align 8, !tbaa !108
  %116 = ptrtoint ptr %115 to i64
  %117 = sub i64 %116, %113
  %118 = icmp sgt i64 %114, %117
  br i1 %118, label %119, label %120, !prof !130

119:                                              ; preds = %98
  store ptr %115, ptr %79, align 8, !tbaa !110
  br label %120

120:                                              ; preds = %119, %98
  %121 = load ptr, ptr %79, align 8, !tbaa !110
  store ptr %121, ptr %91, align 8, !tbaa !109
  br label %137

122:                                              ; preds = %58
  %123 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %124 = icmp eq ptr %123, null
  br i1 %124, label %135, label %125, !prof !131

125:                                              ; preds = %122
  %126 = load ptr, ptr %123, align 8, !tbaa !90
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128, !prof !132

128:                                              ; preds = %125
  store ptr %126, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %129 = getelementptr inbounds %struct.bitmap_element_def, ptr %123, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !87
  %131 = getelementptr inbounds %struct.bitmap_element_def, ptr %126, i64 0, i32 1
  store ptr %130, ptr %131, align 8, !tbaa !87
  br label %137

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.bitmap_element_def, ptr %123, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !87
  store ptr %134, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %137

135:                                              ; preds = %122
  %136 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #24
  br label %137

137:                                              ; preds = %68, %72, %120, %128, %132, %135
  %138 = phi ptr [ %63, %68 ], [ %63, %72 ], [ %99, %120 ], [ %123, %128 ], [ %123, %132 ], [ %136, %135 ]
  %139 = getelementptr inbounds %struct.bitmap_element_def, ptr %138, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %139, i8 0, i64 16, i1 false)
  %140 = getelementptr inbounds %struct.bitmap_element_def, ptr %138, i64 0, i32 2
  store i32 %6, ptr %140, align 8, !tbaa !92
  %141 = load ptr, ptr %0, align 8, !tbaa !83
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %144, !prof !328

143:                                              ; preds = %137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %138, i8 0, i64 16, i1 false)
  br label %177

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %146 = load i32, ptr %145, align 8, !tbaa !94
  %147 = icmp ult i32 %6, %146
  %148 = load ptr, ptr %10, align 8, !tbaa !91
  br i1 %147, label %149, label %164, !prof !329

149:                                              ; preds = %144, %154
  %150 = phi ptr [ %152, %154 ], [ %148, %144 ]
  %151 = getelementptr inbounds %struct.bitmap_element_def, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !87
  %153 = icmp eq ptr %152, null
  br i1 %153, label %160, label %154, !prof !330

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.bitmap_element_def, ptr %152, i64 0, i32 2
  %156 = load i32, ptr %155, align 8, !tbaa !92
  %157 = icmp ugt i32 %156, %6
  br i1 %157, label %149, label %158, !llvm.loop !177

158:                                              ; preds = %154
  %159 = select i1 %153, ptr %0, ptr %152, !prof !330
  br label %160

160:                                              ; preds = %149, %158
  %161 = phi ptr [ %159, %158 ], [ %0, %149 ]
  %162 = getelementptr inbounds %struct.bitmap_element_def, ptr %150, i64 0, i32 1
  store ptr %138, ptr %161, align 8, !tbaa !63
  %163 = getelementptr inbounds %struct.bitmap_element_def, ptr %138, i64 0, i32 1
  store ptr %152, ptr %163, align 8, !tbaa !87
  store ptr %150, ptr %138, align 8, !tbaa !90
  br label %177

164:                                              ; preds = %144, %168
  %165 = phi ptr [ %166, %168 ], [ %148, %144 ]
  %166 = load ptr, ptr %165, align 8, !tbaa !90
  %167 = icmp eq ptr %166, null
  br i1 %167, label %175, label %168, !prof !331

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.bitmap_element_def, ptr %166, i64 0, i32 2
  %170 = load i32, ptr %169, align 8, !tbaa !92
  %171 = icmp ult i32 %170, %6
  br i1 %171, label %164, label %172, !prof !332, !llvm.loop !180

172:                                              ; preds = %168
  br i1 %167, label %175, label %173, !prof !331

173:                                              ; preds = %172
  %174 = getelementptr inbounds %struct.bitmap_element_def, ptr %166, i64 0, i32 1
  store ptr %138, ptr %174, align 8, !tbaa !87
  br label %175

175:                                              ; preds = %164, %173, %172
  store ptr %166, ptr %138, align 8, !tbaa !90
  %176 = getelementptr inbounds %struct.bitmap_element_def, ptr %138, i64 0, i32 1
  store ptr %165, ptr %176, align 8, !tbaa !87
  br label %177

177:                                              ; preds = %143, %160, %175
  %178 = phi ptr [ %0, %143 ], [ %162, %160 ], [ %165, %175 ]
  store ptr %138, ptr %178, align 8, !tbaa !63
  store ptr %138, ptr %10, align 8, !tbaa !91
  %179 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %6, ptr %179, align 8, !tbaa !94
  br label %180

180:                                              ; preds = %177, %55
  %181 = phi ptr [ %56, %55 ], [ %138, %177 ]
  %182 = getelementptr inbounds %struct.bitmap_element_def, ptr %181, i64 0, i32 2
  %183 = load i32, ptr %182, align 8, !tbaa !92
  %184 = icmp eq i32 %183, %6
  br i1 %184, label %186, label %185, !prof !333

185:                                              ; preds = %180
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1197, ptr noundef nonnull @.str.1) #24
  br label %186

186:                                              ; preds = %180, %185
  %187 = getelementptr inbounds %struct.bitmap_element_def, ptr %181, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !87
  %189 = icmp ugt i32 %6, %9
  br i1 %189, label %241, label %190, !prof !334

190:                                              ; preds = %186
  %191 = and i32 %1, 63
  %192 = zext nneg i32 %191 to i64
  %193 = shl nsw i64 -1, %192
  %194 = and i32 %7, 63
  %195 = zext nneg i32 %194 to i64
  %196 = shl nsw i64 -1, %195
  %197 = xor i64 %196, -1
  br label %198

198:                                              ; preds = %190, %231
  %199 = phi ptr [ %181, %190 ], [ %238, %231 ]
  %200 = phi ptr [ %188, %190 ], [ %212, %231 ]
  %201 = phi i32 [ %6, %190 ], [ %239, %231 ]
  %202 = shl nuw i32 %201, 7
  %203 = add i32 %202, 128
  %204 = icmp eq ptr %199, null
  br i1 %204, label %209, label %205, !prof !335

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.bitmap_element_def, ptr %199, i64 0, i32 2
  %207 = load i32, ptr %206, align 8, !tbaa !92
  %208 = icmp eq i32 %207, %201
  br i1 %208, label %211, label %209, !prof !336

209:                                              ; preds = %205, %198
  %210 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef %0, ptr noundef %200, i32 noundef %201)
  br label %211

211:                                              ; preds = %209, %205
  %212 = phi ptr [ %210, %209 ], [ %199, %205 ]
  %213 = icmp ugt i32 %202, %1
  %214 = sub i32 %1, %202
  %215 = lshr i32 %214, 6
  %216 = select i1 %213, i32 0, i32 %215, !prof !337
  %217 = select i1 %213, i64 -1, i64 %193, !prof !337
  %218 = icmp ugt i32 %203, %7
  %219 = sub i32 %7, %202
  %220 = lshr i32 %219, 6
  %221 = select i1 %218, i32 %220, i32 1, !prof !338
  %222 = select i1 %218, i64 %197, i64 -1, !prof !338
  %223 = icmp eq i32 %216, %221
  br i1 %223, label %224, label %226, !prof !339

224:                                              ; preds = %211
  %225 = and i64 %222, %217
  br label %231

226:                                              ; preds = %211
  %227 = zext nneg i32 %216 to i64
  %228 = getelementptr inbounds %struct.bitmap_element_def, ptr %212, i64 0, i32 3, i64 %227
  %229 = load i64, ptr %228, align 8, !tbaa !152
  %230 = or i64 %229, %217
  store i64 %230, ptr %228, align 8, !tbaa !152
  br label %231

231:                                              ; preds = %226, %224
  %232 = phi i32 [ %221, %226 ], [ %216, %224 ]
  %233 = phi i64 [ %222, %226 ], [ %225, %224 ]
  %234 = zext nneg i32 %232 to i64
  %235 = getelementptr inbounds %struct.bitmap_element_def, ptr %212, i64 0, i32 3, i64 %234
  %236 = load i64, ptr %235, align 8, !tbaa !152
  %237 = or i64 %236, %233
  store i64 %237, ptr %235, align 8, !tbaa !152
  %238 = load ptr, ptr %212, align 8, !tbaa !90
  %239 = add nuw nsw i32 %201, 1
  %240 = icmp eq i32 %201, %9
  br i1 %240, label %241, label %198, !prof !340, !llvm.loop !341

241:                                              ; preds = %231, %186
  %242 = phi ptr [ %188, %186 ], [ %212, %231 ]
  %243 = phi ptr [ %181, %186 ], [ %238, %231 ]
  %244 = icmp eq ptr %243, null
  %245 = select i1 %244, ptr %242, ptr %243, !prof !342
  store ptr %245, ptr %10, align 8, !tbaa !91
  %246 = getelementptr inbounds %struct.bitmap_element_def, ptr %245, i64 0, i32 2
  %247 = load i32, ptr %246, align 8, !tbaa !92
  %248 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %247, ptr %248, align 8, !tbaa !94
  br label %249

249:                                              ; preds = %3, %241
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bitmap_clear_range(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #14 !prof !343 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %185, label %5, !prof !344

5:                                                ; preds = %3
  %6 = lshr i32 %1, 7
  %7 = add i32 %2, %1
  %8 = add i32 %7, -1
  %9 = lshr i32 %8, 7
  %10 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = icmp eq ptr %11, null
  br i1 %12, label %55, label %13, !prof !345

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !94
  %16 = icmp eq i32 %15, %6
  br i1 %16, label %55, label %17, !prof !346

17:                                               ; preds = %13
  %18 = icmp ult i32 %15, %6
  br i1 %18, label %19, label %27, !prof !347

19:                                               ; preds = %17, %23
  %20 = phi ptr [ %21, %23 ], [ %11, %17 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  %22 = icmp eq ptr %21, null
  br i1 %22, label %49, label %23, !prof !348

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bitmap_element_def, ptr %20, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !92
  %26 = icmp ult i32 %25, %6
  br i1 %26, label %19, label %49, !prof !349, !llvm.loop !142

27:                                               ; preds = %17
  %28 = lshr i32 %15, 1
  %29 = icmp ult i32 %28, %6
  br i1 %29, label %30, label %39, !prof !350

30:                                               ; preds = %27, %35
  %31 = phi ptr [ %33, %35 ], [ %11, %27 ]
  %32 = getelementptr inbounds %struct.bitmap_element_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !87
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35, !prof !351

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.bitmap_element_def, ptr %31, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !92
  %38 = icmp ugt i32 %37, %6
  br i1 %38, label %30, label %49, !prof !352, !llvm.loop !146

39:                                               ; preds = %27
  %40 = load ptr, ptr %0, align 8, !tbaa !83
  br label %41

41:                                               ; preds = %45, %39
  %42 = phi ptr [ %40, %39 ], [ %43, %45 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !90
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45, !prof !353

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %42, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !92
  %48 = icmp ult i32 %47, %6
  br i1 %48, label %41, label %49, !prof !354, !llvm.loop !149

49:                                               ; preds = %45, %41, %35, %30, %23, %19
  %50 = phi ptr [ %20, %19 ], [ %20, %23 ], [ %31, %30 ], [ %31, %35 ], [ %42, %41 ], [ %42, %45 ]
  store ptr %50, ptr %10, align 8, !tbaa !91
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !92
  store i32 %52, ptr %14, align 8, !tbaa !94
  %53 = icmp eq i32 %52, %6
  %54 = select i1 %53, ptr %50, ptr null, !prof !355
  br label %55

55:                                               ; preds = %5, %13, %49
  %56 = phi ptr [ %54, %49 ], [ %11, %13 ], [ %11, %5 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %68, !prof !356

58:                                               ; preds = %55
  %59 = load ptr, ptr %10, align 8, !tbaa !91
  %60 = icmp eq ptr %59, null
  br i1 %60, label %185, label %61, !prof !357

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !94
  %64 = icmp ult i32 %63, %6
  br i1 %64, label %65, label %68, !prof !358

65:                                               ; preds = %61
  %66 = load ptr, ptr %59, align 8, !tbaa !90
  %67 = icmp eq ptr %66, null
  br i1 %67, label %185, label %68, !prof !359

68:                                               ; preds = %61, %65, %55
  %69 = phi ptr [ %56, %55 ], [ %66, %65 ], [ %59, %61 ]
  br label %70

70:                                               ; preds = %68, %181
  %71 = phi ptr [ %69, %68 ], [ %76, %181 ]
  %72 = getelementptr inbounds %struct.bitmap_element_def, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !92
  %74 = icmp ugt i32 %73, %9
  br i1 %74, label %183, label %75, !prof !360

75:                                               ; preds = %70
  %76 = load ptr, ptr %71, align 8, !tbaa !90
  %77 = shl nuw i32 %73, 7
  %78 = add i32 %77, 128
  %79 = icmp ult i32 %77, %1
  %80 = icmp ugt i32 %78, %7
  %81 = or i1 %79, %80
  br i1 %81, label %107, label %82, !prof !361

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.bitmap_element_def, ptr %71, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !87
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86, !prof !362

86:                                               ; preds = %82
  store ptr %76, ptr %84, align 8, !tbaa !90
  br label %87

87:                                               ; preds = %86, %82
  %88 = icmp eq ptr %76, null
  br i1 %88, label %91, label %89, !prof !363

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.bitmap_element_def, ptr %76, i64 0, i32 1
  store ptr %84, ptr %90, align 8, !tbaa !87
  br label %91

91:                                               ; preds = %89, %87
  %92 = load ptr, ptr %0, align 8, !tbaa !83
  %93 = icmp eq ptr %92, %71
  br i1 %93, label %94, label %95, !prof !362

94:                                               ; preds = %91
  store ptr %76, ptr %0, align 8, !tbaa !83
  br label %95

95:                                               ; preds = %94, %91
  %96 = load ptr, ptr %10, align 8, !tbaa !91
  %97 = icmp eq ptr %96, %71
  br i1 %97, label %98, label %174, !prof !364

98:                                               ; preds = %95
  %99 = select i1 %88, ptr %84, ptr %76, !prof !365
  store ptr %99, ptr %10, align 8, !tbaa !91
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101, !prof !365

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %103 = getelementptr inbounds %struct.bitmap_element_def, ptr %99, i64 0, i32 2
  %104 = load i32, ptr %103, align 8, !tbaa !92
  store i32 %104, ptr %102, align 8, !tbaa !94
  br label %174

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %106, align 8, !tbaa !94
  br label %174

107:                                              ; preds = %75
  %108 = and i32 %1, 63
  %109 = zext nneg i32 %108 to i64
  %110 = shl nsw i64 -1, %109
  %111 = and i32 %7, 63
  %112 = zext nneg i32 %111 to i64
  %113 = shl nsw i64 -1, %112
  %114 = xor i64 %113, -1
  %115 = icmp ugt i32 %77, %1
  %116 = sub i32 %1, %77
  %117 = lshr i32 %116, 6
  %118 = select i1 %115, i32 0, i32 %117, !prof !366
  %119 = select i1 %115, i64 -1, i64 %110, !prof !366
  %120 = sub i32 %7, %77
  %121 = lshr i32 %120, 6
  %122 = select i1 %80, i32 %121, i32 1, !prof !367
  %123 = select i1 %80, i64 %114, i64 -1, !prof !367
  %124 = icmp eq i32 %118, %122
  br i1 %124, label %125, label %127, !prof !368

125:                                              ; preds = %107
  %126 = and i64 %123, %119
  br label %133

127:                                              ; preds = %107
  %128 = xor i64 %119, -1
  %129 = zext nneg i32 %118 to i64
  %130 = getelementptr inbounds %struct.bitmap_element_def, ptr %71, i64 0, i32 3, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !152
  %132 = and i64 %131, %128
  store i64 %132, ptr %130, align 8, !tbaa !152
  br label %133

133:                                              ; preds = %127, %125
  %134 = phi i64 [ %123, %127 ], [ %126, %125 ]
  %135 = phi i32 [ %122, %127 ], [ %118, %125 ]
  %136 = xor i64 %134, -1
  %137 = zext nneg i32 %135 to i64
  %138 = getelementptr inbounds %struct.bitmap_element_def, ptr %71, i64 0, i32 3, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !152
  %140 = and i64 %139, %136
  store i64 %140, ptr %138, align 8, !tbaa !152
  br label %144

141:                                              ; preds = %144
  %142 = add nuw nsw i64 %145, 1
  %143 = icmp eq i64 %145, 0
  br i1 %143, label %144, label %149, !prof !369, !llvm.loop !370

144:                                              ; preds = %133, %141
  %145 = phi i64 [ 0, %133 ], [ %142, %141 ]
  %146 = getelementptr inbounds %struct.bitmap_element_def, ptr %71, i64 0, i32 3, i64 %145
  %147 = load i64, ptr %146, align 8, !tbaa !152
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %141, label %181, !prof !371

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.bitmap_element_def, ptr %71, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !87
  %152 = icmp eq ptr %151, null
  br i1 %152, label %154, label %153, !prof !372

153:                                              ; preds = %149
  store ptr %76, ptr %151, align 8, !tbaa !90
  br label %154

154:                                              ; preds = %153, %149
  %155 = icmp eq ptr %76, null
  br i1 %155, label %158, label %156, !prof !373

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.bitmap_element_def, ptr %76, i64 0, i32 1
  store ptr %151, ptr %157, align 8, !tbaa !87
  br label %158

158:                                              ; preds = %156, %154
  %159 = load ptr, ptr %0, align 8, !tbaa !83
  %160 = icmp eq ptr %159, %71
  br i1 %160, label %161, label %162, !prof !372

161:                                              ; preds = %158
  store ptr %76, ptr %0, align 8, !tbaa !83
  br label %162

162:                                              ; preds = %161, %158
  %163 = load ptr, ptr %10, align 8, !tbaa !91
  %164 = icmp eq ptr %163, %71
  br i1 %164, label %165, label %174, !prof !374

165:                                              ; preds = %162
  %166 = select i1 %155, ptr %151, ptr %76, !prof !375
  store ptr %166, ptr %10, align 8, !tbaa !91
  %167 = icmp eq ptr %166, null
  br i1 %167, label %172, label %168, !prof !376

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %170 = getelementptr inbounds %struct.bitmap_element_def, ptr %166, i64 0, i32 2
  %171 = load i32, ptr %170, align 8, !tbaa !92
  store i32 %171, ptr %169, align 8, !tbaa !94
  br label %174

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %173, align 8, !tbaa !94
  br label %174

174:                                              ; preds = %162, %168, %172, %95, %101, %105
  %175 = phi ptr [ %83, %105 ], [ %83, %101 ], [ %83, %95 ], [ %150, %172 ], [ %150, %168 ], [ %150, %162 ]
  %176 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !86
  store ptr null, ptr %71, align 8, !tbaa !90
  %178 = icmp eq ptr %177, null
  %179 = select i1 %178, ptr @bitmap_ggc_free, ptr %177
  %180 = load ptr, ptr %179, align 8, !tbaa !63
  store ptr %180, ptr %175, align 8, !tbaa !87
  store ptr %71, ptr %179, align 8, !tbaa !63
  br label %181

181:                                              ; preds = %144, %174
  %182 = icmp eq ptr %76, null
  br i1 %182, label %185, label %70, !prof !377, !llvm.loop !378

183:                                              ; preds = %70
  store ptr %71, ptr %10, align 8, !tbaa !91
  %184 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %73, ptr %184, align 8, !tbaa !94
  br label %185

185:                                              ; preds = %181, %183, %58, %65, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @bitmap_compl_and_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #18 !prof !62 {
  %3 = load ptr, ptr %0, align 8, !tbaa !83
  %4 = load ptr, ptr %1, align 8, !tbaa !83
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1406, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !83
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @bitmap_copy(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %152

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 8, !tbaa !83
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = icmp ne ptr %3, null
  %16 = icmp ne ptr %4, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %18, label %134

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %21 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  br label %24

23:                                               ; preds = %11
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %8)
  br label %152

24:                                               ; preds = %18, %127
  %25 = phi i1 [ %16, %18 ], [ %132, %127 ]
  %26 = phi i1 [ %15, %18 ], [ %131, %127 ]
  %27 = phi ptr [ %3, %18 ], [ %130, %127 ]
  %28 = phi ptr [ %4, %18 ], [ %129, %127 ]
  %29 = phi ptr [ null, %18 ], [ %128, %127 ]
  br i1 %25, label %30, label %37

30:                                               ; preds = %24
  br i1 %26, label %31, label %70

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !92
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !92
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %31, %24
  %38 = load ptr, ptr %27, align 8, !tbaa !90
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !87
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store ptr %38, ptr %40, align 8, !tbaa !90
  br label %43

43:                                               ; preds = %42, %37
  %44 = icmp eq ptr %38, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %38, i64 0, i32 1
  store ptr %40, ptr %46, align 8, !tbaa !87
  br label %47

47:                                               ; preds = %45, %43
  %48 = load ptr, ptr %0, align 8, !tbaa !83
  %49 = icmp eq ptr %48, %27
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store ptr %38, ptr %0, align 8, !tbaa !83
  br label %51

51:                                               ; preds = %50, %47
  %52 = load ptr, ptr %19, align 8, !tbaa !91
  %53 = icmp eq ptr %52, %27
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = select i1 %44, ptr %40, ptr %38
  store ptr %55, ptr %19, align 8, !tbaa !91
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %55, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !92
  store i32 %59, ptr %20, align 8, !tbaa !94
  br label %61

60:                                               ; preds = %54
  store i32 0, ptr %21, align 8, !tbaa !94
  br label %61

61:                                               ; preds = %60, %57, %51
  %62 = load ptr, ptr %22, align 8, !tbaa !86
  store ptr null, ptr %27, align 8, !tbaa !90
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %62, align 8, !tbaa !126
  store ptr %65, ptr %39, align 8, !tbaa !87
  store ptr %27, ptr %62, align 8, !tbaa !126
  br label %127

66:                                               ; preds = %61
  %67 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  store ptr %67, ptr %39, align 8, !tbaa !87
  store ptr %27, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %127

68:                                               ; preds = %31
  %69 = icmp ult i32 %35, %33
  br i1 %69, label %70, label %77

70:                                               ; preds = %30, %68
  %71 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !92
  %73 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %29, i32 noundef %72)
  %74 = getelementptr inbounds %struct.bitmap_element_def, ptr %73, i64 0, i32 3
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef nonnull align 8 dereferenceable(16) %75, i64 16, i1 false)
  %76 = load ptr, ptr %28, align 8, !tbaa !90
  br label %127

77:                                               ; preds = %68, %77
  %78 = phi i64 [ %80, %77 ], [ 2, %68 ]
  %79 = phi i64 [ %87, %77 ], [ 0, %68 ]
  %80 = add nsw i64 %78, -1
  %81 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !152
  %83 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %80
  %84 = load i64, ptr %83, align 8, !tbaa !152
  %85 = xor i64 %82, -1
  %86 = and i64 %84, %85
  store i64 %86, ptr %81, align 8, !tbaa !152
  %87 = or i64 %86, %79
  %88 = icmp eq i64 %80, 0
  br i1 %88, label %89, label %77, !llvm.loop !379

89:                                               ; preds = %77
  %90 = load ptr, ptr %27, align 8, !tbaa !90
  %91 = icmp eq i64 %87, 0
  br i1 %91, label %92, label %124

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %94 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !87
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  store ptr %90, ptr %95, align 8, !tbaa !90
  br label %98

98:                                               ; preds = %97, %92
  %99 = icmp eq ptr %90, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.bitmap_element_def, ptr %90, i64 0, i32 1
  store ptr %95, ptr %101, align 8, !tbaa !87
  br label %102

102:                                              ; preds = %100, %98
  %103 = load ptr, ptr %0, align 8, !tbaa !83
  %104 = icmp eq ptr %103, %27
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store ptr %90, ptr %0, align 8, !tbaa !83
  br label %106

106:                                              ; preds = %105, %102
  %107 = load ptr, ptr %93, align 8, !tbaa !91
  %108 = icmp eq ptr %107, %27
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = select i1 %99, ptr %95, ptr %90
  store ptr %110, ptr %93, align 8, !tbaa !91
  %111 = icmp eq ptr %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %114 = getelementptr inbounds %struct.bitmap_element_def, ptr %110, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !92
  store i32 %115, ptr %113, align 8, !tbaa !94
  br label %118

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %117, align 8, !tbaa !94
  br label %118

118:                                              ; preds = %116, %112, %106
  %119 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !86
  store ptr null, ptr %27, align 8, !tbaa !90
  %121 = icmp eq ptr %120, null
  %122 = select i1 %121, ptr @bitmap_ggc_free, ptr %120
  %123 = load ptr, ptr %122, align 8, !tbaa !63
  store ptr %123, ptr %94, align 8, !tbaa !87
  store ptr %27, ptr %122, align 8, !tbaa !63
  br label %124

124:                                              ; preds = %118, %89
  %125 = phi ptr [ %27, %89 ], [ %29, %118 ]
  %126 = load ptr, ptr %28, align 8, !tbaa !90
  br label %127

127:                                              ; preds = %66, %64, %70, %124
  %128 = phi ptr [ %73, %70 ], [ %125, %124 ], [ %40, %64 ], [ %40, %66 ]
  %129 = phi ptr [ %76, %70 ], [ %126, %124 ], [ %28, %64 ], [ %28, %66 ]
  %130 = phi ptr [ %27, %70 ], [ %90, %124 ], [ %38, %64 ], [ %38, %66 ]
  %131 = icmp ne ptr %130, null
  %132 = icmp ne ptr %129, null
  %133 = select i1 %131, i1 true, i1 %132
  br i1 %133, label %24, label %134, !llvm.loop !380

134:                                              ; preds = %127, %14
  %135 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !91
  %137 = icmp eq ptr %136, null
  %138 = load ptr, ptr %0, align 8, !tbaa !83
  %139 = icmp ne ptr %138, null
  %140 = xor i1 %137, %139
  br i1 %140, label %142, label %141

141:                                              ; preds = %134
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1460, ptr noundef nonnull @.str.1) #24
  br label %142

142:                                              ; preds = %134, %141
  %143 = load ptr, ptr %135, align 8, !tbaa !91
  %144 = icmp eq ptr %143, null
  br i1 %144, label %152, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %147 = load i32, ptr %146, align 8, !tbaa !94
  %148 = getelementptr inbounds %struct.bitmap_element_def, ptr %143, i64 0, i32 2
  %149 = load i32, ptr %148, align 8, !tbaa !92
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %152, label %151

151:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1461, ptr noundef nonnull @.str.1) #24
  br label %152

152:                                              ; preds = %151, %145, %142, %23, %10
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @bitmap_ior(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #12 !prof !381 {
  %4 = load ptr, ptr %0, align 8, !tbaa !83
  %5 = load ptr, ptr %1, align 8, !tbaa !83
  %6 = load ptr, ptr %2, align 8, !tbaa !83
  %7 = icmp eq ptr %0, %1
  %8 = icmp eq ptr %0, %2
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11, !prof !382

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1537, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %3, %10
  %12 = icmp ne ptr %5, null
  %13 = icmp ne ptr %6, null
  %14 = select i1 %12, i1 true, i1 %13, !prof !383
  br i1 %14, label %15, label %269, !prof !384

15:                                               ; preds = %11, %261
  %16 = phi i1 [ %267, %261 ], [ %13, %11 ]
  %17 = phi i1 [ %266, %261 ], [ %12, %11 ]
  %18 = phi i8 [ %230, %261 ], [ 0, %11 ]
  %19 = phi ptr [ %264, %261 ], [ %0, %11 ]
  %20 = phi ptr [ %264, %261 ], [ null, %11 ]
  %21 = phi ptr [ %263, %261 ], [ %6, %11 ]
  %22 = phi ptr [ %262, %261 ], [ %5, %11 ]
  %23 = phi ptr [ %265, %261 ], [ %4, %11 ]
  %24 = or i1 %17, %16
  br i1 %24, label %26, label %25, !prof !385

25:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1475, ptr noundef nonnull @.str.1) #24
  br label %26

26:                                               ; preds = %25, %15
  %27 = and i1 %17, %16
  br i1 %27, label %28, label %75, !prof !386

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !92
  %31 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !92
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %75, !prof !387

34:                                               ; preds = %28
  %35 = icmp eq i8 %18, 0
  %36 = icmp ne ptr %23, null
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %58, !prof !388

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %23, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !92
  %41 = icmp eq i32 %40, %30
  br i1 %41, label %42, label %58, !prof !389

42:                                               ; preds = %38, %54
  %43 = phi i64 [ %56, %54 ], [ 1, %38 ]
  %44 = phi i8 [ %55, %54 ], [ 0, %38 ]
  %45 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 3, i64 %43
  %46 = load i64, ptr %45, align 8, !tbaa !152
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 3, i64 %43
  %48 = load i64, ptr %47, align 8, !tbaa !152
  %49 = or i64 %48, %46
  %50 = getelementptr inbounds %struct.bitmap_element_def, ptr %23, i64 0, i32 3, i64 %43
  %51 = load i64, ptr %50, align 8, !tbaa !152
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %54, label %53, !prof !390

53:                                               ; preds = %42
  store i64 %49, ptr %50, align 8, !tbaa !152
  br label %54

54:                                               ; preds = %53, %42
  %55 = phi i8 [ 1, %53 ], [ %44, %42 ]
  %56 = add nsw i64 %43, -1
  %57 = icmp eq i64 %43, 0
  br i1 %57, label %229, label %42, !prof !391, !llvm.loop !392

58:                                               ; preds = %38, %34
  br i1 %36, label %61, label %59, !prof !393

59:                                               ; preds = %58
  %60 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %20, i32 noundef %30)
  br label %63

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.bitmap_element_def, ptr %23, i64 0, i32 2
  store i32 %30, ptr %62, align 8, !tbaa !92
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi ptr [ %23, %61 ], [ %60, %59 ]
  br label %65

65:                                               ; preds = %65, %63
  %66 = phi i64 [ 2, %63 ], [ %67, %65 ]
  %67 = add nsw i64 %66, -1
  %68 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 3, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !152
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 3, i64 %67
  %71 = load i64, ptr %70, align 8, !tbaa !152
  %72 = or i64 %71, %69
  %73 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 3, i64 %67
  store i64 %72, ptr %73, align 8, !tbaa !152
  %74 = icmp eq i64 %67, 0
  br i1 %74, label %229, label %65, !prof !394, !llvm.loop !395

75:                                               ; preds = %28, %26
  br i1 %16, label %76, label %84, !prof !396

76:                                               ; preds = %75
  br i1 %17, label %77, label %83, !prof !397

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !92
  %80 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %81 = load i32, ptr %80, align 8, !tbaa !92
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %84, label %83, !prof !398

83:                                               ; preds = %77, %76
  br label %84

84:                                               ; preds = %83, %77, %75
  %85 = phi ptr [ %21, %83 ], [ %22, %77 ], [ %22, %75 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88, !prof !399

87:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1518, ptr noundef nonnull @.str.1) #24
  br label %88

88:                                               ; preds = %87, %84
  %89 = icmp eq i8 %18, 0
  %90 = icmp ne ptr %23, null
  %91 = and i1 %90, %89
  br i1 %91, label %92, label %111, !prof !400

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.bitmap_element_def, ptr %23, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !92
  %95 = getelementptr inbounds %struct.bitmap_element_def, ptr %85, i64 0, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !92
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %111, !prof !401

98:                                               ; preds = %92, %107
  %99 = phi i64 [ %109, %107 ], [ 1, %92 ]
  %100 = phi i8 [ %108, %107 ], [ 0, %92 ]
  %101 = getelementptr inbounds %struct.bitmap_element_def, ptr %85, i64 0, i32 3, i64 %99
  %102 = load i64, ptr %101, align 8, !tbaa !152
  %103 = getelementptr inbounds %struct.bitmap_element_def, ptr %23, i64 0, i32 3, i64 %99
  %104 = load i64, ptr %103, align 8, !tbaa !152
  %105 = icmp eq i64 %102, %104
  br i1 %105, label %107, label %106, !prof !402

106:                                              ; preds = %98
  store i64 %102, ptr %103, align 8, !tbaa !152
  br label %107

107:                                              ; preds = %106, %98
  %108 = phi i8 [ 1, %106 ], [ %100, %98 ]
  %109 = add nsw i64 %99, -1
  %110 = icmp eq i64 %99, 0
  br i1 %110, label %229, label %98, !prof !403, !llvm.loop !271

111:                                              ; preds = %92, %88
  %112 = getelementptr inbounds %struct.bitmap_element_def, ptr %85, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !92
  br i1 %90, label %223, label %114, !prof !404

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !86
  %117 = icmp eq ptr %116, null
  br i1 %117, label %178, label %118, !prof !125

118:                                              ; preds = %114
  %119 = load ptr, ptr %116, align 8, !tbaa !126
  %120 = icmp eq ptr %119, null
  br i1 %120, label %131, label %121, !prof !127

121:                                              ; preds = %118
  %122 = load ptr, ptr %119, align 8, !tbaa !90
  %123 = icmp eq ptr %122, null
  br i1 %123, label %128, label %124, !prof !128

124:                                              ; preds = %121
  store ptr %122, ptr %116, align 8, !tbaa !126
  %125 = getelementptr inbounds %struct.bitmap_element_def, ptr %119, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !87
  %127 = getelementptr inbounds %struct.bitmap_element_def, ptr %122, i64 0, i32 1
  store ptr %126, ptr %127, align 8, !tbaa !87
  br label %193

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.bitmap_element_def, ptr %119, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !87
  store ptr %130, ptr %116, align 8, !tbaa !126
  br label %193

131:                                              ; preds = %118
  %132 = getelementptr inbounds %struct.bitmap_obstack, ptr %116, i64 0, i32 2, i32 5
  store i64 40, ptr %132, align 8, !tbaa !106
  %133 = getelementptr inbounds %struct.bitmap_obstack, ptr %116, i64 0, i32 2, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !108
  %135 = getelementptr inbounds %struct.bitmap_obstack, ptr %116, i64 0, i32 2, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !110
  %137 = ptrtoint ptr %134 to i64
  %138 = ptrtoint ptr %136 to i64
  %139 = sub i64 %137, %138
  %140 = icmp slt i64 %139, 40
  br i1 %140, label %141, label %143, !prof !129

141:                                              ; preds = %131
  %142 = getelementptr inbounds %struct.bitmap_obstack, ptr %116, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %142, i32 noundef 40) #24
  br label %143

143:                                              ; preds = %141, %131
  %144 = load i64, ptr %132, align 8, !tbaa !106
  %145 = load ptr, ptr %135, align 8, !tbaa !110
  %146 = getelementptr inbounds i8, ptr %145, i64 %144
  store ptr %146, ptr %135, align 8, !tbaa !110
  %147 = getelementptr inbounds %struct.bitmap_obstack, ptr %116, i64 0, i32 2, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !109
  %149 = icmp eq ptr %146, %148
  br i1 %149, label %150, label %154, !prof !130

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.bitmap_obstack, ptr %116, i64 0, i32 2, i32 10
  %152 = load i8, ptr %151, align 8
  %153 = or i8 %152, 2
  store i8 %153, ptr %151, align 8
  br label %154

154:                                              ; preds = %150, %143
  %155 = load ptr, ptr %147, align 8, !tbaa !109
  %156 = ptrtoint ptr %155 to i64
  store i64 %156, ptr %132, align 8, !tbaa !106
  %157 = load ptr, ptr %135, align 8, !tbaa !110
  %158 = ptrtoint ptr %157 to i64
  %159 = getelementptr inbounds %struct.bitmap_obstack, ptr %116, i64 0, i32 2, i32 6
  %160 = load i32, ptr %159, align 8, !tbaa !117
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %158
  %163 = xor i32 %160, -1
  %164 = sext i32 %163 to i64
  %165 = and i64 %162, %164
  %166 = inttoptr i64 %165 to ptr
  store ptr %166, ptr %135, align 8, !tbaa !110
  %167 = getelementptr inbounds %struct.bitmap_obstack, ptr %116, i64 0, i32 2, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !103
  %169 = ptrtoint ptr %168 to i64
  %170 = sub i64 %165, %169
  %171 = load ptr, ptr %133, align 8, !tbaa !108
  %172 = ptrtoint ptr %171 to i64
  %173 = sub i64 %172, %169
  %174 = icmp sgt i64 %170, %173
  br i1 %174, label %175, label %176, !prof !130

175:                                              ; preds = %154
  store ptr %171, ptr %135, align 8, !tbaa !110
  br label %176

176:                                              ; preds = %175, %154
  %177 = load ptr, ptr %135, align 8, !tbaa !110
  store ptr %177, ptr %147, align 8, !tbaa !109
  br label %193

178:                                              ; preds = %114
  %179 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %180 = icmp eq ptr %179, null
  br i1 %180, label %191, label %181, !prof !131

181:                                              ; preds = %178
  %182 = load ptr, ptr %179, align 8, !tbaa !90
  %183 = icmp eq ptr %182, null
  br i1 %183, label %188, label %184, !prof !132

184:                                              ; preds = %181
  store ptr %182, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %185 = getelementptr inbounds %struct.bitmap_element_def, ptr %179, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !87
  %187 = getelementptr inbounds %struct.bitmap_element_def, ptr %182, i64 0, i32 1
  store ptr %186, ptr %187, align 8, !tbaa !87
  br label %193

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.bitmap_element_def, ptr %179, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !87
  store ptr %190, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %193

191:                                              ; preds = %178
  %192 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #24
  br label %193

193:                                              ; preds = %191, %188, %184, %176, %128, %124
  %194 = phi ptr [ %119, %124 ], [ %119, %128 ], [ %155, %176 ], [ %179, %184 ], [ %179, %188 ], [ %192, %191 ]
  %195 = getelementptr inbounds %struct.bitmap_element_def, ptr %194, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %195, i8 0, i64 16, i1 false)
  %196 = getelementptr inbounds %struct.bitmap_element_def, ptr %194, i64 0, i32 2
  store i32 %113, ptr %196, align 8, !tbaa !92
  %197 = icmp eq ptr %20, null
  br i1 %197, label %198, label %211, !prof !223

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !91
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %204, !prof !224

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store ptr %194, ptr %199, align 8, !tbaa !91
  store i32 %113, ptr %203, align 8, !tbaa !94
  br label %204

204:                                              ; preds = %202, %198
  %205 = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %205, ptr %194, align 8, !tbaa !90
  %206 = icmp eq ptr %205, null
  br i1 %206, label %209, label %207, !prof !224

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.bitmap_element_def, ptr %205, i64 0, i32 1
  store ptr %194, ptr %208, align 8, !tbaa !87
  br label %209

209:                                              ; preds = %207, %204
  store ptr %194, ptr %0, align 8, !tbaa !83
  %210 = getelementptr inbounds %struct.bitmap_element_def, ptr %194, i64 0, i32 1
  store ptr null, ptr %210, align 8, !tbaa !87
  br label %225

211:                                              ; preds = %193
  %212 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !91
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %216, !prof !225

215:                                              ; preds = %211
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #24
  br label %216

216:                                              ; preds = %215, %211
  %217 = load ptr, ptr %20, align 8, !tbaa !90
  store ptr %217, ptr %194, align 8, !tbaa !90
  %218 = icmp eq ptr %217, null
  br i1 %218, label %221, label %219, !prof !226

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.bitmap_element_def, ptr %217, i64 0, i32 1
  store ptr %194, ptr %220, align 8, !tbaa !87
  br label %221

221:                                              ; preds = %219, %216
  store ptr %194, ptr %20, align 8, !tbaa !90
  %222 = getelementptr inbounds %struct.bitmap_element_def, ptr %194, i64 0, i32 1
  store ptr %20, ptr %222, align 8, !tbaa !87
  br label %225

223:                                              ; preds = %111
  %224 = getelementptr inbounds %struct.bitmap_element_def, ptr %23, i64 0, i32 2
  store i32 %113, ptr %224, align 8, !tbaa !92
  br label %225

225:                                              ; preds = %223, %221, %209
  %226 = phi ptr [ %23, %223 ], [ %194, %209 ], [ %194, %221 ]
  %227 = getelementptr inbounds %struct.bitmap_element_def, ptr %226, i64 0, i32 3
  %228 = getelementptr inbounds %struct.bitmap_element_def, ptr %85, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %227, ptr noundef nonnull align 8 dereferenceable(16) %228, i64 16, i1 false)
  br label %229

229:                                              ; preds = %107, %65, %54, %225
  %230 = phi i8 [ 1, %225 ], [ %55, %54 ], [ 1, %65 ], [ %108, %107 ]
  %231 = and i1 %17, %16
  br i1 %231, label %232, label %241, !prof !405

232:                                              ; preds = %229
  %233 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %234 = load i32, ptr %233, align 8, !tbaa !92
  %235 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %236 = load i32, ptr %235, align 8, !tbaa !92
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %238, label %241, !prof !406

238:                                              ; preds = %232
  %239 = load ptr, ptr %22, align 8, !tbaa !90
  %240 = load ptr, ptr %21, align 8, !tbaa !90
  br label %261

241:                                              ; preds = %232, %229
  br i1 %17, label %242, label %251, !prof !407

242:                                              ; preds = %241
  br i1 %16, label %243, label %249, !prof !408

243:                                              ; preds = %242
  %244 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %245 = load i32, ptr %244, align 8, !tbaa !92
  %246 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %247 = load i32, ptr %246, align 8, !tbaa !92
  %248 = icmp ugt i32 %245, %247
  br i1 %248, label %251, label %249, !prof !409

249:                                              ; preds = %243, %242
  %250 = load ptr, ptr %22, align 8, !tbaa !90
  br label %261

251:                                              ; preds = %243, %241
  br i1 %16, label %252, label %261, !prof !410

252:                                              ; preds = %251
  br i1 %17, label %253, label %259, !prof !411

253:                                              ; preds = %252
  %254 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %255 = load i32, ptr %254, align 8, !tbaa !92
  %256 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %257 = load i32, ptr %256, align 8, !tbaa !92
  %258 = icmp ugt i32 %255, %257
  br i1 %258, label %261, label %259, !prof !412

259:                                              ; preds = %253, %252
  %260 = load ptr, ptr %21, align 8, !tbaa !90
  br label %261

261:                                              ; preds = %249, %259, %253, %251, %238
  %262 = phi ptr [ %239, %238 ], [ %250, %249 ], [ %22, %259 ], [ %22, %253 ], [ %22, %251 ]
  %263 = phi ptr [ %240, %238 ], [ %21, %249 ], [ %260, %259 ], [ %21, %253 ], [ null, %251 ]
  %264 = load ptr, ptr %19, align 8, !tbaa !63
  %265 = load ptr, ptr %264, align 8, !tbaa !63
  %266 = icmp ne ptr %262, null
  %267 = icmp ne ptr %263, null
  %268 = select i1 %266, i1 true, i1 %267, !prof !383
  br i1 %268, label %15, label %269, !prof !413, !llvm.loop !414

269:                                              ; preds = %261, %11
  %270 = phi ptr [ %4, %11 ], [ %265, %261 ]
  %271 = phi i8 [ 0, %11 ], [ %230, %261 ]
  %272 = icmp eq ptr %270, null
  br i1 %272, label %274, label %273, !prof !415

273:                                              ; preds = %269
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %270)
  br label %274

274:                                              ; preds = %273, %269
  %275 = phi i8 [ 1, %273 ], [ %271, %269 ]
  %276 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !91
  %278 = icmp eq ptr %277, null
  %279 = load ptr, ptr %0, align 8, !tbaa !83
  %280 = icmp ne ptr %279, null
  %281 = xor i1 %278, %280
  br i1 %281, label %283, label %282, !prof !415

282:                                              ; preds = %274
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1566, ptr noundef nonnull @.str.1) #24
  br label %283

283:                                              ; preds = %274, %282
  %284 = load ptr, ptr %276, align 8, !tbaa !91
  %285 = icmp eq ptr %284, null
  br i1 %285, label %290, label %286, !prof !382

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.bitmap_element_def, ptr %284, i64 0, i32 2
  %288 = load i32, ptr %287, align 8, !tbaa !92
  %289 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %288, ptr %289, align 8, !tbaa !94
  br label %290

290:                                              ; preds = %286, %283
  ret i8 %275
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @bitmap_ior_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #12 !prof !416 {
  %3 = load ptr, ptr %1, align 8, !tbaa !83
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %342, label %5, !prof !417

5:                                                ; preds = %2
  %6 = icmp eq ptr %3, null
  br i1 %6, label %326, label %7, !prof !418

7:                                                ; preds = %5, %321
  %8 = phi i8 [ %323, %321 ], [ 0, %5 ]
  %9 = phi ptr [ %324, %321 ], [ %0, %5 ]
  %10 = phi ptr [ %324, %321 ], [ null, %5 ]
  %11 = phi ptr [ %322, %321 ], [ %3, %5 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !63
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14, !prof !419

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !92
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !92
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %202, !prof !420

20:                                               ; preds = %14, %7
  %21 = icmp ne ptr %12, null
  br i1 %21, label %22, label %61, !prof !386

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !92
  %25 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !92
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %54, !prof !387

28:                                               ; preds = %22
  %29 = icmp eq i8 %8, 0
  br i1 %29, label %30, label %44, !prof !388

30:                                               ; preds = %28, %40
  %31 = phi i64 [ %42, %40 ], [ 1, %28 ]
  %32 = phi i8 [ %41, %40 ], [ 0, %28 ]
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3, i64 %31
  %34 = load i64, ptr %33, align 8, !tbaa !152
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3, i64 %31
  %36 = load i64, ptr %35, align 8, !tbaa !152
  %37 = or i64 %36, %34
  %38 = icmp eq i64 %37, %34
  br i1 %38, label %40, label %39, !prof !390

39:                                               ; preds = %30
  store i64 %37, ptr %33, align 8, !tbaa !152
  br label %40

40:                                               ; preds = %39, %30
  %41 = phi i8 [ 1, %39 ], [ %32, %30 ]
  %42 = add nsw i64 %31, -1
  %43 = icmp eq i64 %31, 0
  br i1 %43, label %318, label %30, !prof !391, !llvm.loop !392

44:                                               ; preds = %28, %44
  %45 = phi i64 [ %46, %44 ], [ 2, %28 ]
  %46 = add nsw i64 %45, -1
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !152
  %49 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3, i64 %46
  %50 = load i64, ptr %49, align 8, !tbaa !152
  %51 = or i64 %50, %48
  %52 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3, i64 %46
  store i64 %51, ptr %52, align 8, !tbaa !152
  %53 = icmp eq i64 %46, 0
  br i1 %53, label %318, label %44, !prof !394, !llvm.loop !395

54:                                               ; preds = %22
  br i1 %21, label %55, label %61, !prof !397

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !92
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !92
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %62, label %61, !prof !398

61:                                               ; preds = %20, %55, %54
  br label %62

62:                                               ; preds = %55, %61
  %63 = phi ptr [ %11, %61 ], [ %12, %55 ]
  %64 = icmp eq i8 %8, 0
  %65 = and i1 %64, %21
  br i1 %65, label %66, label %85, !prof !400

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !92
  %69 = getelementptr inbounds %struct.bitmap_element_def, ptr %63, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !92
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %85, !prof !401

72:                                               ; preds = %66, %81
  %73 = phi i64 [ %83, %81 ], [ 1, %66 ]
  %74 = phi i8 [ %82, %81 ], [ 0, %66 ]
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %63, i64 0, i32 3, i64 %73
  %76 = load i64, ptr %75, align 8, !tbaa !152
  %77 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3, i64 %73
  %78 = load i64, ptr %77, align 8, !tbaa !152
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %81, label %80, !prof !402

80:                                               ; preds = %72
  store i64 %76, ptr %77, align 8, !tbaa !152
  br label %81

81:                                               ; preds = %80, %72
  %82 = phi i8 [ 1, %80 ], [ %74, %72 ]
  %83 = add nsw i64 %73, -1
  %84 = icmp eq i64 %73, 0
  br i1 %84, label %318, label %72, !prof !403, !llvm.loop !271

85:                                               ; preds = %66, %62
  %86 = getelementptr inbounds %struct.bitmap_element_def, ptr %63, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !92
  br i1 %21, label %197, label %88, !prof !404

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !86
  %91 = icmp eq ptr %90, null
  br i1 %91, label %152, label %92, !prof !125

92:                                               ; preds = %88
  %93 = load ptr, ptr %90, align 8, !tbaa !126
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95, !prof !127

95:                                               ; preds = %92
  %96 = load ptr, ptr %93, align 8, !tbaa !90
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98, !prof !128

98:                                               ; preds = %95
  store ptr %96, ptr %90, align 8, !tbaa !126
  %99 = getelementptr inbounds %struct.bitmap_element_def, ptr %93, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !87
  %101 = getelementptr inbounds %struct.bitmap_element_def, ptr %96, i64 0, i32 1
  store ptr %100, ptr %101, align 8, !tbaa !87
  br label %167

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.bitmap_element_def, ptr %93, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !87
  store ptr %104, ptr %90, align 8, !tbaa !126
  br label %167

105:                                              ; preds = %92
  %106 = getelementptr inbounds %struct.bitmap_obstack, ptr %90, i64 0, i32 2, i32 5
  store i64 40, ptr %106, align 8, !tbaa !106
  %107 = getelementptr inbounds %struct.bitmap_obstack, ptr %90, i64 0, i32 2, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !108
  %109 = getelementptr inbounds %struct.bitmap_obstack, ptr %90, i64 0, i32 2, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !110
  %111 = ptrtoint ptr %108 to i64
  %112 = ptrtoint ptr %110 to i64
  %113 = sub i64 %111, %112
  %114 = icmp slt i64 %113, 40
  br i1 %114, label %115, label %117, !prof !129

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.bitmap_obstack, ptr %90, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %116, i32 noundef 40) #24
  br label %117

117:                                              ; preds = %115, %105
  %118 = load i64, ptr %106, align 8, !tbaa !106
  %119 = load ptr, ptr %109, align 8, !tbaa !110
  %120 = getelementptr inbounds i8, ptr %119, i64 %118
  store ptr %120, ptr %109, align 8, !tbaa !110
  %121 = getelementptr inbounds %struct.bitmap_obstack, ptr %90, i64 0, i32 2, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !109
  %123 = icmp eq ptr %120, %122
  br i1 %123, label %124, label %128, !prof !130

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.bitmap_obstack, ptr %90, i64 0, i32 2, i32 10
  %126 = load i8, ptr %125, align 8
  %127 = or i8 %126, 2
  store i8 %127, ptr %125, align 8
  br label %128

128:                                              ; preds = %124, %117
  %129 = load ptr, ptr %121, align 8, !tbaa !109
  %130 = ptrtoint ptr %129 to i64
  store i64 %130, ptr %106, align 8, !tbaa !106
  %131 = load ptr, ptr %109, align 8, !tbaa !110
  %132 = ptrtoint ptr %131 to i64
  %133 = getelementptr inbounds %struct.bitmap_obstack, ptr %90, i64 0, i32 2, i32 6
  %134 = load i32, ptr %133, align 8, !tbaa !117
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %132
  %137 = xor i32 %134, -1
  %138 = sext i32 %137 to i64
  %139 = and i64 %136, %138
  %140 = inttoptr i64 %139 to ptr
  store ptr %140, ptr %109, align 8, !tbaa !110
  %141 = getelementptr inbounds %struct.bitmap_obstack, ptr %90, i64 0, i32 2, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !103
  %143 = ptrtoint ptr %142 to i64
  %144 = sub i64 %139, %143
  %145 = load ptr, ptr %107, align 8, !tbaa !108
  %146 = ptrtoint ptr %145 to i64
  %147 = sub i64 %146, %143
  %148 = icmp sgt i64 %144, %147
  br i1 %148, label %149, label %150, !prof !130

149:                                              ; preds = %128
  store ptr %145, ptr %109, align 8, !tbaa !110
  br label %150

150:                                              ; preds = %149, %128
  %151 = load ptr, ptr %109, align 8, !tbaa !110
  store ptr %151, ptr %121, align 8, !tbaa !109
  br label %167

152:                                              ; preds = %88
  %153 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %154 = icmp eq ptr %153, null
  br i1 %154, label %165, label %155, !prof !131

155:                                              ; preds = %152
  %156 = load ptr, ptr %153, align 8, !tbaa !90
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158, !prof !132

158:                                              ; preds = %155
  store ptr %156, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %159 = getelementptr inbounds %struct.bitmap_element_def, ptr %153, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !87
  %161 = getelementptr inbounds %struct.bitmap_element_def, ptr %156, i64 0, i32 1
  store ptr %160, ptr %161, align 8, !tbaa !87
  br label %167

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.bitmap_element_def, ptr %153, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !87
  store ptr %164, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %167

165:                                              ; preds = %152
  %166 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #24
  br label %167

167:                                              ; preds = %165, %162, %158, %150, %102, %98
  %168 = phi ptr [ %93, %98 ], [ %93, %102 ], [ %129, %150 ], [ %153, %158 ], [ %153, %162 ], [ %166, %165 ]
  %169 = getelementptr inbounds %struct.bitmap_element_def, ptr %168, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %169, i8 0, i64 16, i1 false)
  %170 = getelementptr inbounds %struct.bitmap_element_def, ptr %168, i64 0, i32 2
  store i32 %87, ptr %170, align 8, !tbaa !92
  %171 = icmp eq ptr %10, null
  br i1 %171, label %172, label %185, !prof !223

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !91
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %178, !prof !224

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store ptr %168, ptr %173, align 8, !tbaa !91
  store i32 %87, ptr %177, align 8, !tbaa !94
  br label %178

178:                                              ; preds = %176, %172
  %179 = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %179, ptr %168, align 8, !tbaa !90
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181, !prof !224

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.bitmap_element_def, ptr %179, i64 0, i32 1
  store ptr %168, ptr %182, align 8, !tbaa !87
  br label %183

183:                                              ; preds = %181, %178
  store ptr %168, ptr %0, align 8, !tbaa !83
  %184 = getelementptr inbounds %struct.bitmap_element_def, ptr %168, i64 0, i32 1
  store ptr null, ptr %184, align 8, !tbaa !87
  br label %199

185:                                              ; preds = %167
  %186 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !91
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %190, !prof !225

189:                                              ; preds = %185
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #24
  br label %190

190:                                              ; preds = %189, %185
  %191 = load ptr, ptr %10, align 8, !tbaa !90
  store ptr %191, ptr %168, align 8, !tbaa !90
  %192 = icmp eq ptr %191, null
  br i1 %192, label %195, label %193, !prof !226

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.bitmap_element_def, ptr %191, i64 0, i32 1
  store ptr %168, ptr %194, align 8, !tbaa !87
  br label %195

195:                                              ; preds = %193, %190
  store ptr %168, ptr %10, align 8, !tbaa !90
  %196 = getelementptr inbounds %struct.bitmap_element_def, ptr %168, i64 0, i32 1
  store ptr %10, ptr %196, align 8, !tbaa !87
  br label %199

197:                                              ; preds = %85
  %198 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  store i32 %87, ptr %198, align 8, !tbaa !92
  br label %199

199:                                              ; preds = %197, %195, %183
  %200 = phi ptr [ %12, %197 ], [ %168, %183 ], [ %168, %195 ]
  %201 = getelementptr inbounds %struct.bitmap_element_def, ptr %200, i64 0, i32 3
  br label %314

202:                                              ; preds = %14
  %203 = icmp ugt i32 %16, %18
  br i1 %203, label %204, label %321, !prof !421

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !86
  %207 = icmp eq ptr %206, null
  br i1 %207, label %268, label %208, !prof !125

208:                                              ; preds = %204
  %209 = load ptr, ptr %206, align 8, !tbaa !126
  %210 = icmp eq ptr %209, null
  br i1 %210, label %221, label %211, !prof !127

211:                                              ; preds = %208
  %212 = load ptr, ptr %209, align 8, !tbaa !90
  %213 = icmp eq ptr %212, null
  br i1 %213, label %218, label %214, !prof !128

214:                                              ; preds = %211
  store ptr %212, ptr %206, align 8, !tbaa !126
  %215 = getelementptr inbounds %struct.bitmap_element_def, ptr %209, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !87
  %217 = getelementptr inbounds %struct.bitmap_element_def, ptr %212, i64 0, i32 1
  store ptr %216, ptr %217, align 8, !tbaa !87
  br label %283

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.bitmap_element_def, ptr %209, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !87
  store ptr %220, ptr %206, align 8, !tbaa !126
  br label %283

221:                                              ; preds = %208
  %222 = getelementptr inbounds %struct.bitmap_obstack, ptr %206, i64 0, i32 2, i32 5
  store i64 40, ptr %222, align 8, !tbaa !106
  %223 = getelementptr inbounds %struct.bitmap_obstack, ptr %206, i64 0, i32 2, i32 4
  %224 = load ptr, ptr %223, align 8, !tbaa !108
  %225 = getelementptr inbounds %struct.bitmap_obstack, ptr %206, i64 0, i32 2, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !110
  %227 = ptrtoint ptr %224 to i64
  %228 = ptrtoint ptr %226 to i64
  %229 = sub i64 %227, %228
  %230 = icmp slt i64 %229, 40
  br i1 %230, label %231, label %233, !prof !129

231:                                              ; preds = %221
  %232 = getelementptr inbounds %struct.bitmap_obstack, ptr %206, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %232, i32 noundef 40) #24
  br label %233

233:                                              ; preds = %231, %221
  %234 = load i64, ptr %222, align 8, !tbaa !106
  %235 = load ptr, ptr %225, align 8, !tbaa !110
  %236 = getelementptr inbounds i8, ptr %235, i64 %234
  store ptr %236, ptr %225, align 8, !tbaa !110
  %237 = getelementptr inbounds %struct.bitmap_obstack, ptr %206, i64 0, i32 2, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !109
  %239 = icmp eq ptr %236, %238
  br i1 %239, label %240, label %244, !prof !130

240:                                              ; preds = %233
  %241 = getelementptr inbounds %struct.bitmap_obstack, ptr %206, i64 0, i32 2, i32 10
  %242 = load i8, ptr %241, align 8
  %243 = or i8 %242, 2
  store i8 %243, ptr %241, align 8
  br label %244

244:                                              ; preds = %240, %233
  %245 = load ptr, ptr %237, align 8, !tbaa !109
  %246 = ptrtoint ptr %245 to i64
  store i64 %246, ptr %222, align 8, !tbaa !106
  %247 = load ptr, ptr %225, align 8, !tbaa !110
  %248 = ptrtoint ptr %247 to i64
  %249 = getelementptr inbounds %struct.bitmap_obstack, ptr %206, i64 0, i32 2, i32 6
  %250 = load i32, ptr %249, align 8, !tbaa !117
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %251, %248
  %253 = xor i32 %250, -1
  %254 = sext i32 %253 to i64
  %255 = and i64 %252, %254
  %256 = inttoptr i64 %255 to ptr
  store ptr %256, ptr %225, align 8, !tbaa !110
  %257 = getelementptr inbounds %struct.bitmap_obstack, ptr %206, i64 0, i32 2, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !103
  %259 = ptrtoint ptr %258 to i64
  %260 = sub i64 %255, %259
  %261 = load ptr, ptr %223, align 8, !tbaa !108
  %262 = ptrtoint ptr %261 to i64
  %263 = sub i64 %262, %259
  %264 = icmp sgt i64 %260, %263
  br i1 %264, label %265, label %266, !prof !130

265:                                              ; preds = %244
  store ptr %261, ptr %225, align 8, !tbaa !110
  br label %266

266:                                              ; preds = %265, %244
  %267 = load ptr, ptr %225, align 8, !tbaa !110
  store ptr %267, ptr %237, align 8, !tbaa !109
  br label %283

268:                                              ; preds = %204
  %269 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %270 = icmp eq ptr %269, null
  br i1 %270, label %281, label %271, !prof !131

271:                                              ; preds = %268
  %272 = load ptr, ptr %269, align 8, !tbaa !90
  %273 = icmp eq ptr %272, null
  br i1 %273, label %278, label %274, !prof !132

274:                                              ; preds = %271
  store ptr %272, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %275 = getelementptr inbounds %struct.bitmap_element_def, ptr %269, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !87
  %277 = getelementptr inbounds %struct.bitmap_element_def, ptr %272, i64 0, i32 1
  store ptr %276, ptr %277, align 8, !tbaa !87
  br label %283

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct.bitmap_element_def, ptr %269, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !87
  store ptr %280, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %283

281:                                              ; preds = %268
  %282 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #24
  br label %283

283:                                              ; preds = %281, %278, %274, %266, %218, %214
  %284 = phi ptr [ %209, %214 ], [ %209, %218 ], [ %245, %266 ], [ %269, %274 ], [ %269, %278 ], [ %282, %281 ]
  %285 = getelementptr inbounds %struct.bitmap_element_def, ptr %284, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %285, i8 0, i64 16, i1 false)
  %286 = getelementptr inbounds %struct.bitmap_element_def, ptr %284, i64 0, i32 2
  store i32 %18, ptr %286, align 8, !tbaa !92
  %287 = icmp eq ptr %10, null
  br i1 %287, label %288, label %297, !prof !223

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !91
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %294, !prof !224

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store ptr %284, ptr %289, align 8, !tbaa !91
  store i32 %18, ptr %293, align 8, !tbaa !94
  br label %294

294:                                              ; preds = %292, %288
  %295 = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %295, ptr %284, align 8, !tbaa !90
  %296 = icmp eq ptr %295, null
  br i1 %296, label %310, label %305, !prof !224

297:                                              ; preds = %283
  %298 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !91
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %302, !prof !225

301:                                              ; preds = %297
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #24
  br label %302

302:                                              ; preds = %301, %297
  %303 = load ptr, ptr %10, align 8, !tbaa !90
  store ptr %303, ptr %284, align 8, !tbaa !90
  %304 = icmp eq ptr %303, null
  br i1 %304, label %310, label %305, !prof !226

305:                                              ; preds = %302, %294
  %306 = phi ptr [ %295, %294 ], [ %303, %302 ]
  %307 = phi ptr [ %0, %294 ], [ %10, %302 ]
  %308 = phi ptr [ null, %294 ], [ %10, %302 ]
  %309 = getelementptr inbounds %struct.bitmap_element_def, ptr %306, i64 0, i32 1
  store ptr %284, ptr %309, align 8, !tbaa !87
  br label %310

310:                                              ; preds = %305, %302, %294
  %311 = phi ptr [ %0, %294 ], [ %10, %302 ], [ %307, %305 ]
  %312 = phi ptr [ null, %294 ], [ %10, %302 ], [ %308, %305 ]
  store ptr %284, ptr %311, align 8, !tbaa !63
  %313 = getelementptr inbounds %struct.bitmap_element_def, ptr %284, i64 0, i32 1
  store ptr %312, ptr %313, align 8, !tbaa !87
  br label %314

314:                                              ; preds = %310, %199
  %315 = phi ptr [ %63, %199 ], [ %11, %310 ]
  %316 = phi ptr [ %201, %199 ], [ %285, %310 ]
  %317 = getelementptr inbounds %struct.bitmap_element_def, ptr %315, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %316, ptr noundef nonnull align 8 dereferenceable(16) %317, i64 16, i1 false)
  br label %318

318:                                              ; preds = %81, %44, %40, %314
  %319 = phi i8 [ 1, %314 ], [ %41, %40 ], [ 1, %44 ], [ %82, %81 ]
  %320 = load ptr, ptr %11, align 8, !tbaa !90
  br label %321

321:                                              ; preds = %318, %202
  %322 = phi ptr [ %11, %202 ], [ %320, %318 ]
  %323 = phi i8 [ %8, %202 ], [ %319, %318 ]
  %324 = load ptr, ptr %9, align 8, !tbaa !63
  %325 = icmp eq ptr %322, null
  br i1 %325, label %326, label %7, !prof !422, !llvm.loop !423

326:                                              ; preds = %321, %5
  %327 = phi i8 [ 0, %5 ], [ %323, %321 ]
  %328 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !91
  %330 = icmp eq ptr %329, null
  %331 = load ptr, ptr %0, align 8, !tbaa !83
  %332 = icmp ne ptr %331, null
  %333 = xor i1 %330, %332
  br i1 %333, label %335, label %334, !prof !424

334:                                              ; preds = %326
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1605, ptr noundef nonnull @.str.1) #24
  br label %335

335:                                              ; preds = %326, %334
  %336 = load ptr, ptr %328, align 8, !tbaa !91
  %337 = icmp eq ptr %336, null
  br i1 %337, label %342, label %338, !prof !425

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.bitmap_element_def, ptr %336, i64 0, i32 2
  %340 = load i32, ptr %339, align 8, !tbaa !92
  %341 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %340, ptr %341, align 8, !tbaa !94
  br label %342

342:                                              ; preds = %335, %338, %2
  %343 = phi i8 [ 0, %2 ], [ %327, %338 ], [ %327, %335 ]
  ret i8 %343
}

; Function Attrs: cold nounwind uwtable
define dso_local void @bitmap_xor(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #18 !prof !62 {
  %4 = load ptr, ptr %0, align 8, !tbaa !83
  %5 = load ptr, ptr %1, align 8, !tbaa !83
  %6 = load ptr, ptr %2, align 8, !tbaa !83
  %7 = icmp eq ptr %0, %1
  %8 = icmp eq ptr %0, %2
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1621, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %3, %10
  %12 = icmp eq ptr %1, %2
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = icmp ne ptr %5, null
  %15 = icmp ne ptr %6, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %21, label %99

17:                                               ; preds = %11
  %18 = load ptr, ptr %0, align 8, !tbaa !83
  %19 = icmp eq ptr %18, null
  br i1 %19, label %116, label %20

20:                                               ; preds = %17
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %18)
  br label %116

21:                                               ; preds = %13, %91
  %22 = phi i1 [ %97, %91 ], [ %15, %13 ]
  %23 = phi i1 [ %96, %91 ], [ %14, %13 ]
  %24 = phi ptr [ %95, %91 ], [ %4, %13 ]
  %25 = phi ptr [ %94, %91 ], [ null, %13 ]
  %26 = phi ptr [ %93, %91 ], [ %6, %13 ]
  %27 = phi ptr [ %92, %91 ], [ %5, %13 ]
  %28 = select i1 %23, i1 %22, i1 false
  br i1 %28, label %29, label %59

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !92
  %32 = getelementptr inbounds %struct.bitmap_element_def, ptr %26, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !92
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = icmp eq ptr %24, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %25, i32 noundef %31)
  br label %41

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %24, i64 0, i32 2
  store i32 %31, ptr %40, align 8, !tbaa !92
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi ptr [ %24, %39 ], [ %38, %37 ]
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ 2, %41 ], [ %46, %43 ]
  %45 = phi i64 [ 0, %41 ], [ %52, %43 ]
  %46 = add nsw i64 %44, -1
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !152
  %49 = getelementptr inbounds %struct.bitmap_element_def, ptr %26, i64 0, i32 3, i64 %46
  %50 = load i64, ptr %49, align 8, !tbaa !152
  %51 = xor i64 %50, %48
  %52 = or i64 %51, %45
  %53 = getelementptr inbounds %struct.bitmap_element_def, ptr %42, i64 0, i32 3, i64 %46
  store i64 %51, ptr %53, align 8, !tbaa !152
  %54 = icmp eq i64 %46, 0
  br i1 %54, label %55, label %43, !llvm.loop !426

55:                                               ; preds = %43
  %56 = load ptr, ptr %27, align 8, !tbaa !90
  %57 = load ptr, ptr %26, align 8, !tbaa !90
  %58 = icmp eq i64 %52, 0
  br i1 %58, label %91, label %86

59:                                               ; preds = %29, %21
  br i1 %22, label %60, label %67

60:                                               ; preds = %59
  br i1 %23, label %61, label %69

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !92
  %64 = getelementptr inbounds %struct.bitmap_element_def, ptr %26, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !92
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61, %59
  %68 = load ptr, ptr %27, align 8, !tbaa !90
  br label %71

69:                                               ; preds = %61, %60
  %70 = load ptr, ptr %26, align 8, !tbaa !90
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %68, %67 ], [ %27, %69 ]
  %73 = phi ptr [ %26, %67 ], [ %70, %69 ]
  %74 = phi ptr [ %27, %67 ], [ %26, %69 ]
  %75 = icmp eq ptr %24, null
  %76 = getelementptr inbounds %struct.bitmap_element_def, ptr %74, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !92
  br i1 %75, label %78, label %80

78:                                               ; preds = %71
  %79 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %25, i32 noundef %77)
  br label %82

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.bitmap_element_def, ptr %24, i64 0, i32 2
  store i32 %77, ptr %81, align 8, !tbaa !92
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi ptr [ %24, %80 ], [ %79, %78 ]
  %84 = getelementptr inbounds %struct.bitmap_element_def, ptr %83, i64 0, i32 3
  %85 = getelementptr inbounds %struct.bitmap_element_def, ptr %74, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %84, ptr noundef nonnull align 8 dereferenceable(16) %85, i64 16, i1 false)
  br label %86

86:                                               ; preds = %55, %82
  %87 = phi ptr [ %83, %82 ], [ %42, %55 ]
  %88 = phi ptr [ %72, %82 ], [ %56, %55 ]
  %89 = phi ptr [ %73, %82 ], [ %57, %55 ]
  %90 = load ptr, ptr %87, align 8, !tbaa !90
  br label %91

91:                                               ; preds = %86, %55
  %92 = phi ptr [ %56, %55 ], [ %88, %86 ]
  %93 = phi ptr [ %57, %55 ], [ %89, %86 ]
  %94 = phi ptr [ %25, %55 ], [ %87, %86 ]
  %95 = phi ptr [ %42, %55 ], [ %90, %86 ]
  %96 = icmp ne ptr %92, null
  %97 = icmp ne ptr %93, null
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %21, label %99, !llvm.loop !427

99:                                               ; preds = %91, %13
  %100 = phi ptr [ %4, %13 ], [ %95, %91 ]
  %101 = load ptr, ptr %0, align 8, !tbaa !83
  %102 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  store ptr %101, ptr %102, align 8, !tbaa !91
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef %100)
  %103 = load ptr, ptr %102, align 8, !tbaa !91
  %104 = icmp eq ptr %103, null
  %105 = load ptr, ptr %0, align 8, !tbaa !83
  %106 = icmp ne ptr %105, null
  %107 = xor i1 %104, %106
  br i1 %107, label %109, label %108

108:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1683, ptr noundef nonnull @.str.1) #24
  br label %109

109:                                              ; preds = %99, %108
  %110 = load ptr, ptr %102, align 8, !tbaa !91
  %111 = icmp eq ptr %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.bitmap_element_def, ptr %110, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !92
  %115 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %114, ptr %115, align 8, !tbaa !94
  br label %116

116:                                              ; preds = %20, %17, %109, %112
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @bitmap_xor_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #18 !prof !62 {
  %3 = load ptr, ptr %0, align 8, !tbaa !83
  %4 = load ptr, ptr %1, align 8, !tbaa !83
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, null
  br i1 %7, label %86, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  br label %14

11:                                               ; preds = %2
  %12 = icmp eq ptr %3, null
  br i1 %12, label %101, label %13

13:                                               ; preds = %11
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %3)
  br label %101

14:                                               ; preds = %8, %81
  %15 = phi ptr [ %3, %8 ], [ %84, %81 ]
  %16 = phi ptr [ %4, %8 ], [ %83, %81 ]
  %17 = phi ptr [ null, %8 ], [ %82, %81 ]
  %18 = icmp eq ptr %15, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !92
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %15, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !92
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19, %14
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !92
  %28 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %17, i32 noundef %27)
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false)
  %31 = load ptr, ptr %16, align 8, !tbaa !90
  br label %81

32:                                               ; preds = %19
  %33 = icmp ult i32 %23, %21
  %34 = load ptr, ptr %15, align 8, !tbaa !90
  br i1 %33, label %81, label %35

35:                                               ; preds = %32, %35
  %36 = phi i64 [ %38, %35 ], [ 2, %32 ]
  %37 = phi i64 [ %44, %35 ], [ 0, %32 ]
  %38 = add nsw i64 %36, -1
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %15, i64 0, i32 3, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !152
  %41 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 3, i64 %38
  %42 = load i64, ptr %41, align 8, !tbaa !152
  %43 = xor i64 %42, %40
  %44 = or i64 %43, %37
  store i64 %43, ptr %39, align 8, !tbaa !152
  %45 = icmp eq i64 %38, 0
  br i1 %45, label %46, label %35, !llvm.loop !428

46:                                               ; preds = %35
  %47 = load ptr, ptr %16, align 8, !tbaa !90
  %48 = icmp eq i64 %44, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.bitmap_element_def, ptr %15, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !87
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store ptr %34, ptr %51, align 8, !tbaa !90
  br label %54

54:                                               ; preds = %53, %49
  %55 = icmp eq ptr %34, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.bitmap_element_def, ptr %34, i64 0, i32 1
  store ptr %51, ptr %57, align 8, !tbaa !87
  br label %58

58:                                               ; preds = %56, %54
  %59 = load ptr, ptr %0, align 8, !tbaa !83
  %60 = icmp eq ptr %59, %15
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store ptr %34, ptr %0, align 8, !tbaa !83
  br label %62

62:                                               ; preds = %61, %58
  %63 = load ptr, ptr %9, align 8, !tbaa !91
  %64 = icmp eq ptr %63, %15
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = select i1 %55, ptr %51, ptr %34
  store ptr %66, ptr %9, align 8, !tbaa !91
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %66, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !92
  store i32 %71, ptr %69, align 8, !tbaa !94
  br label %74

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 0, ptr %73, align 8, !tbaa !94
  br label %74

74:                                               ; preds = %72, %68, %62
  %75 = load ptr, ptr %10, align 8, !tbaa !86
  store ptr null, ptr %15, align 8, !tbaa !90
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %75, align 8, !tbaa !126
  store ptr %78, ptr %50, align 8, !tbaa !87
  store ptr %15, ptr %75, align 8, !tbaa !126
  br label %81

79:                                               ; preds = %74
  %80 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  store ptr %80, ptr %50, align 8, !tbaa !87
  store ptr %15, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %81

81:                                               ; preds = %32, %79, %77, %46, %25
  %82 = phi ptr [ %28, %25 ], [ %15, %46 ], [ %17, %77 ], [ %17, %79 ], [ %15, %32 ]
  %83 = phi ptr [ %31, %25 ], [ %47, %46 ], [ %47, %77 ], [ %47, %79 ], [ %16, %32 ]
  %84 = phi ptr [ %15, %25 ], [ %34, %46 ], [ %34, %77 ], [ %34, %79 ], [ %34, %32 ]
  %85 = icmp eq ptr %83, null
  br i1 %85, label %86, label %14, !llvm.loop !429

86:                                               ; preds = %81, %6
  %87 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !91
  %89 = icmp eq ptr %88, null
  %90 = load ptr, ptr %0, align 8, !tbaa !83
  %91 = icmp ne ptr %90, null
  %92 = xor i1 %89, %91
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1740, ptr noundef nonnull @.str.1) #24
  br label %94

94:                                               ; preds = %86, %93
  %95 = load ptr, ptr %87, align 8, !tbaa !91
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.bitmap_element_def, ptr %95, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !92
  %100 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %99, ptr %100, align 8, !tbaa !94
  br label %101

101:                                              ; preds = %13, %11, %94, %97
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @bitmap_equal_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #19 !prof !430 {
  %3 = load ptr, ptr %1, align 8, !tbaa !63
  %4 = load ptr, ptr %0, align 8, !tbaa !63
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %3, null
  %7 = select i1 %5, i1 %6, i1 false, !prof !431
  br i1 %7, label %14, label %33, !prof !432

8:                                                ; preds = %22
  %9 = load ptr, ptr %16, align 8, !tbaa !63
  %10 = load ptr, ptr %15, align 8, !tbaa !63
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %9, null
  %13 = select i1 %11, i1 %12, i1 false, !prof !431
  br i1 %13, label %14, label %33, !prof !433, !llvm.loop !434

14:                                               ; preds = %2, %8
  %15 = phi ptr [ %10, %8 ], [ %4, %2 ]
  %16 = phi ptr [ %9, %8 ], [ %3, %2 ]
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %15, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !92
  %19 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !92
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %39, !prof !435

22:                                               ; preds = %14, %25
  %23 = phi i64 [ %26, %25 ], [ 2, %14 ]
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %8, label %25, !prof !436

25:                                               ; preds = %22
  %26 = add nsw i64 %23, -1
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds %struct.bitmap_element_def, ptr %15, i64 0, i32 3, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !152
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 3, i64 %27
  %31 = load i64, ptr %30, align 8, !tbaa !152
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %22, label %39, !prof !437, !llvm.loop !438

33:                                               ; preds = %8, %2
  %34 = phi i1 [ %5, %2 ], [ %11, %8 ]
  %35 = phi i1 [ %6, %2 ], [ %12, %8 ]
  %36 = select i1 %34, i1 true, i1 %35, !prof !439
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %14, %25, %33
  %40 = phi i8 [ %38, %33 ], [ 0, %25 ], [ 0, %14 ]
  ret i8 %40
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @bitmap_intersect_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #19 !prof !440 {
  %3 = load ptr, ptr %0, align 8, !tbaa !83
  %4 = load ptr, ptr %1, align 8, !tbaa !83
  %5 = icmp ne ptr %3, null
  %6 = icmp ne ptr %4, null
  %7 = select i1 %5, i1 %6, i1 false, !prof !441
  br i1 %7, label %8, label %43, !prof !442

8:                                                ; preds = %2, %37
  %9 = phi ptr [ %39, %37 ], [ %4, %2 ]
  %10 = phi ptr [ %38, %37 ], [ %3, %2 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !92
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !92
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %18, !prof !443

16:                                               ; preds = %8
  %17 = load ptr, ptr %10, align 8, !tbaa !90
  br label %37

18:                                               ; preds = %8
  %19 = icmp ult i32 %14, %12
  br i1 %19, label %20, label %22, !prof !444

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !90
  br label %37

22:                                               ; preds = %18, %25
  %23 = phi i64 [ %26, %25 ], [ 2, %18 ]
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25, !prof !445

25:                                               ; preds = %22
  %26 = add nsw i64 %23, -1
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !152
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3, i64 %27
  %31 = load i64, ptr %30, align 8, !tbaa !152
  %32 = and i64 %31, %29
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %22, label %43, !prof !446, !llvm.loop !447

34:                                               ; preds = %22
  %35 = load ptr, ptr %10, align 8, !tbaa !90
  %36 = load ptr, ptr %9, align 8, !tbaa !90
  br label %37

37:                                               ; preds = %20, %34, %16
  %38 = phi ptr [ %17, %16 ], [ %10, %20 ], [ %35, %34 ]
  %39 = phi ptr [ %9, %16 ], [ %21, %20 ], [ %36, %34 ]
  %40 = icmp ne ptr %38, null
  %41 = icmp ne ptr %39, null
  %42 = select i1 %40, i1 %41, i1 false, !prof !441
  br i1 %42, label %8, label %43, !prof !448, !llvm.loop !449

43:                                               ; preds = %37, %25, %2
  %44 = phi i8 [ 0, %2 ], [ 1, %25 ], [ 0, %37 ]
  ret i8 %44
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @bitmap_intersect_compl_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #17 !prof !62 {
  %3 = load ptr, ptr %0, align 8, !tbaa !83
  %4 = load ptr, ptr %1, align 8, !tbaa !63
  %5 = icmp ne ptr %3, null
  %6 = icmp ne ptr %4, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %39

8:                                                ; preds = %2, %33
  %9 = phi ptr [ %35, %33 ], [ %4, %2 ]
  %10 = phi ptr [ %34, %33 ], [ %3, %2 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !92
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !92
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %42, label %16

16:                                               ; preds = %8
  %17 = icmp ult i32 %14, %12
  br i1 %17, label %33, label %18

18:                                               ; preds = %16, %21
  %19 = phi i64 [ %22, %21 ], [ 2, %16 ]
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = add nsw i64 %19, -1
  %23 = and i64 %22, 4294967295
  %24 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !152
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3, i64 %23
  %27 = load i64, ptr %26, align 8, !tbaa !152
  %28 = xor i64 %27, -1
  %29 = and i64 %25, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %18, label %42, !llvm.loop !450

31:                                               ; preds = %18
  %32 = load ptr, ptr %10, align 8, !tbaa !90
  br label %33

33:                                               ; preds = %16, %31
  %34 = phi ptr [ %32, %31 ], [ %10, %16 ]
  %35 = load ptr, ptr %9, align 8, !tbaa !63
  %36 = icmp ne ptr %34, null
  %37 = icmp ne ptr %35, null
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %8, label %39, !llvm.loop !451

39:                                               ; preds = %33, %2
  %40 = phi i1 [ %5, %2 ], [ %36, %33 ]
  %41 = zext i1 %40 to i8
  br label %42

42:                                               ; preds = %8, %21, %39
  %43 = phi i8 [ %41, %39 ], [ 1, %21 ], [ 1, %8 ]
  ret i8 %43
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @bitmap_ior_and_compl(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !prof !452 {
  %5 = alloca %struct.bitmap_element_def, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !83
  %7 = load ptr, ptr %1, align 8, !tbaa !83
  %8 = load ptr, ptr %2, align 8, !tbaa !83
  %9 = load ptr, ptr %3, align 8, !tbaa !83
  %10 = icmp eq ptr %0, %1
  %11 = icmp eq ptr %0, %2
  %12 = or i1 %10, %11
  %13 = icmp eq ptr %0, %3
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %16, !prof !453

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1839, ptr noundef nonnull @.str.1) #24
  br label %16

16:                                               ; preds = %4, %15
  %17 = icmp eq ptr %2, %3
  br i1 %17, label %21, label %18, !prof !453

18:                                               ; preds = %16
  %19 = load ptr, ptr %2, align 8, !tbaa !83
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %61, !prof !454

21:                                               ; preds = %18, %16
  %22 = load ptr, ptr %1, align 8, !tbaa !63
  %23 = load ptr, ptr %0, align 8, !tbaa !63
  %24 = icmp ne ptr %23, null
  %25 = icmp ne ptr %22, null
  %26 = select i1 %24, i1 %25, i1 false, !prof !455
  br i1 %26, label %33, label %52, !prof !456

27:                                               ; preds = %41
  %28 = load ptr, ptr %35, align 8, !tbaa !63
  %29 = load ptr, ptr %34, align 8, !tbaa !63
  %30 = icmp ne ptr %29, null
  %31 = icmp ne ptr %28, null
  %32 = select i1 %30, i1 %31, i1 false, !prof !455
  br i1 %32, label %33, label %52, !prof !457, !llvm.loop !434

33:                                               ; preds = %21, %27
  %34 = phi ptr [ %29, %27 ], [ %23, %21 ]
  %35 = phi ptr [ %28, %27 ], [ %22, %21 ]
  %36 = getelementptr inbounds %struct.bitmap_element_def, ptr %34, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !92
  %38 = getelementptr inbounds %struct.bitmap_element_def, ptr %35, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !92
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %57, !prof !458

41:                                               ; preds = %33, %44
  %42 = phi i64 [ %45, %44 ], [ 2, %33 ]
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %27, label %44, !prof !459

44:                                               ; preds = %41
  %45 = add nsw i64 %42, -1
  %46 = and i64 %45, 4294967295
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %34, i64 0, i32 3, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !152
  %49 = getelementptr inbounds %struct.bitmap_element_def, ptr %35, i64 0, i32 3, i64 %46
  %50 = load i64, ptr %49, align 8, !tbaa !152
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %41, label %57, !prof !460, !llvm.loop !438

52:                                               ; preds = %27, %21
  %53 = phi i1 [ %24, %21 ], [ %30, %27 ]
  %54 = phi i1 [ %25, %21 ], [ %31, %27 ]
  %55 = select i1 %53, i1 true, i1 %54, !prof !461
  %56 = zext i1 %55 to i8
  br label %57

57:                                               ; preds = %33, %44, %52
  %58 = phi i8 [ %56, %52 ], [ 1, %44 ], [ 1, %33 ]
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %890, label %60, !prof !462

60:                                               ; preds = %57
  tail call void @bitmap_copy(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %890

61:                                               ; preds = %18
  %62 = load ptr, ptr %3, align 8, !tbaa !83
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %339, !prof !463

64:                                               ; preds = %61
  %65 = load ptr, ptr %0, align 8, !tbaa !83
  %66 = load ptr, ptr %1, align 8, !tbaa !83
  br i1 %12, label %67, label %68, !prof !382

67:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1537, ptr noundef nonnull @.str.1) #24
  br label %68

68:                                               ; preds = %67, %64
  %69 = icmp ne ptr %66, null
  br label %70

70:                                               ; preds = %312, %68
  %71 = phi i1 [ true, %68 ], [ %318, %312 ]
  %72 = phi i1 [ %69, %68 ], [ %317, %312 ]
  %73 = phi i8 [ 0, %68 ], [ %282, %312 ]
  %74 = phi ptr [ %0, %68 ], [ %315, %312 ]
  %75 = phi ptr [ null, %68 ], [ %315, %312 ]
  %76 = phi ptr [ %19, %68 ], [ %314, %312 ]
  %77 = phi ptr [ %66, %68 ], [ %313, %312 ]
  %78 = phi ptr [ %65, %68 ], [ %316, %312 ]
  %79 = or i1 %71, %72
  br i1 %79, label %81, label %80, !prof !385

80:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1475, ptr noundef nonnull @.str.1) #24
  br label %81

81:                                               ; preds = %80, %70
  %82 = and i1 %71, %72
  br i1 %82, label %83, label %130, !prof !386

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.bitmap_element_def, ptr %77, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !92
  %86 = getelementptr inbounds %struct.bitmap_element_def, ptr %76, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !92
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %130, !prof !387

89:                                               ; preds = %83
  %90 = icmp eq i8 %73, 0
  %91 = icmp ne ptr %78, null
  %92 = and i1 %90, %91
  br i1 %92, label %93, label %113, !prof !388

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.bitmap_element_def, ptr %78, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !92
  %96 = icmp eq i32 %95, %85
  br i1 %96, label %97, label %113, !prof !389

97:                                               ; preds = %93, %109
  %98 = phi i64 [ %111, %109 ], [ 1, %93 ]
  %99 = phi i8 [ %110, %109 ], [ 0, %93 ]
  %100 = getelementptr inbounds %struct.bitmap_element_def, ptr %77, i64 0, i32 3, i64 %98
  %101 = load i64, ptr %100, align 8, !tbaa !152
  %102 = getelementptr inbounds %struct.bitmap_element_def, ptr %76, i64 0, i32 3, i64 %98
  %103 = load i64, ptr %102, align 8, !tbaa !152
  %104 = or i64 %103, %101
  %105 = getelementptr inbounds %struct.bitmap_element_def, ptr %78, i64 0, i32 3, i64 %98
  %106 = load i64, ptr %105, align 8, !tbaa !152
  %107 = icmp eq i64 %104, %106
  br i1 %107, label %109, label %108, !prof !390

108:                                              ; preds = %97
  store i64 %104, ptr %105, align 8, !tbaa !152
  br label %109

109:                                              ; preds = %108, %97
  %110 = phi i8 [ 1, %108 ], [ %99, %97 ]
  %111 = add nsw i64 %98, -1
  %112 = icmp eq i64 %98, 0
  br i1 %112, label %281, label %97, !prof !391, !llvm.loop !392

113:                                              ; preds = %93, %89
  br i1 %91, label %116, label %114, !prof !393

114:                                              ; preds = %113
  %115 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %75, i32 noundef %85)
  br label %118

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.bitmap_element_def, ptr %78, i64 0, i32 2
  store i32 %85, ptr %117, align 8, !tbaa !92
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi ptr [ %78, %116 ], [ %115, %114 ]
  br label %120

120:                                              ; preds = %120, %118
  %121 = phi i64 [ 2, %118 ], [ %122, %120 ]
  %122 = add nsw i64 %121, -1
  %123 = getelementptr inbounds %struct.bitmap_element_def, ptr %77, i64 0, i32 3, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !152
  %125 = getelementptr inbounds %struct.bitmap_element_def, ptr %76, i64 0, i32 3, i64 %122
  %126 = load i64, ptr %125, align 8, !tbaa !152
  %127 = or i64 %126, %124
  %128 = getelementptr inbounds %struct.bitmap_element_def, ptr %119, i64 0, i32 3, i64 %122
  store i64 %127, ptr %128, align 8, !tbaa !152
  %129 = icmp eq i64 %122, 0
  br i1 %129, label %281, label %120, !prof !394, !llvm.loop !395

130:                                              ; preds = %83, %81
  br i1 %71, label %131, label %139, !prof !396

131:                                              ; preds = %130
  br i1 %72, label %132, label %138, !prof !397

132:                                              ; preds = %131
  %133 = getelementptr inbounds %struct.bitmap_element_def, ptr %77, i64 0, i32 2
  %134 = load i32, ptr %133, align 8, !tbaa !92
  %135 = getelementptr inbounds %struct.bitmap_element_def, ptr %76, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !92
  %137 = icmp ult i32 %134, %136
  br i1 %137, label %139, label %138, !prof !398

138:                                              ; preds = %132, %131
  br label %139

139:                                              ; preds = %138, %132, %130
  %140 = phi ptr [ %76, %138 ], [ %77, %132 ], [ %77, %130 ]
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %143, !prof !399

142:                                              ; preds = %139
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1518, ptr noundef nonnull @.str.1) #24
  br label %143

143:                                              ; preds = %142, %139
  %144 = icmp eq i8 %73, 0
  %145 = icmp ne ptr %78, null
  %146 = and i1 %144, %145
  br i1 %146, label %147, label %166, !prof !400

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.bitmap_element_def, ptr %78, i64 0, i32 2
  %149 = load i32, ptr %148, align 8, !tbaa !92
  %150 = getelementptr inbounds %struct.bitmap_element_def, ptr %140, i64 0, i32 2
  %151 = load i32, ptr %150, align 8, !tbaa !92
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %166, !prof !401

153:                                              ; preds = %147, %162
  %154 = phi i64 [ %164, %162 ], [ 1, %147 ]
  %155 = phi i8 [ %163, %162 ], [ 0, %147 ]
  %156 = getelementptr inbounds %struct.bitmap_element_def, ptr %140, i64 0, i32 3, i64 %154
  %157 = load i64, ptr %156, align 8, !tbaa !152
  %158 = getelementptr inbounds %struct.bitmap_element_def, ptr %78, i64 0, i32 3, i64 %154
  %159 = load i64, ptr %158, align 8, !tbaa !152
  %160 = icmp eq i64 %157, %159
  br i1 %160, label %162, label %161, !prof !402

161:                                              ; preds = %153
  store i64 %157, ptr %158, align 8, !tbaa !152
  br label %162

162:                                              ; preds = %161, %153
  %163 = phi i8 [ 1, %161 ], [ %155, %153 ]
  %164 = add nsw i64 %154, -1
  %165 = icmp eq i64 %154, 0
  br i1 %165, label %281, label %153, !prof !403, !llvm.loop !271

166:                                              ; preds = %147, %143
  %167 = getelementptr inbounds %struct.bitmap_element_def, ptr %140, i64 0, i32 2
  %168 = load i32, ptr %167, align 8, !tbaa !92
  br i1 %145, label %275, label %169, !prof !404

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %171 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %172 = load ptr, ptr %170, align 8, !tbaa !86
  %173 = icmp eq ptr %172, null
  br i1 %173, label %234, label %174, !prof !125

174:                                              ; preds = %169
  %175 = load ptr, ptr %172, align 8, !tbaa !126
  %176 = icmp eq ptr %175, null
  br i1 %176, label %187, label %177, !prof !127

177:                                              ; preds = %174
  %178 = load ptr, ptr %175, align 8, !tbaa !90
  %179 = icmp eq ptr %178, null
  br i1 %179, label %184, label %180, !prof !128

180:                                              ; preds = %177
  store ptr %178, ptr %172, align 8, !tbaa !126
  %181 = getelementptr inbounds %struct.bitmap_element_def, ptr %175, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !87
  %183 = getelementptr inbounds %struct.bitmap_element_def, ptr %178, i64 0, i32 1
  store ptr %182, ptr %183, align 8, !tbaa !87
  br label %249

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.bitmap_element_def, ptr %175, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !87
  store ptr %186, ptr %172, align 8, !tbaa !126
  br label %249

187:                                              ; preds = %174
  %188 = getelementptr inbounds %struct.bitmap_obstack, ptr %172, i64 0, i32 2, i32 5
  store i64 40, ptr %188, align 8, !tbaa !106
  %189 = getelementptr inbounds %struct.bitmap_obstack, ptr %172, i64 0, i32 2, i32 4
  %190 = load ptr, ptr %189, align 8, !tbaa !108
  %191 = getelementptr inbounds %struct.bitmap_obstack, ptr %172, i64 0, i32 2, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !110
  %193 = ptrtoint ptr %190 to i64
  %194 = ptrtoint ptr %192 to i64
  %195 = sub i64 %193, %194
  %196 = icmp slt i64 %195, 40
  br i1 %196, label %197, label %199, !prof !129

197:                                              ; preds = %187
  %198 = getelementptr inbounds %struct.bitmap_obstack, ptr %172, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %198, i32 noundef 40) #24
  br label %199

199:                                              ; preds = %197, %187
  %200 = load i64, ptr %188, align 8, !tbaa !106
  %201 = load ptr, ptr %191, align 8, !tbaa !110
  %202 = getelementptr inbounds i8, ptr %201, i64 %200
  store ptr %202, ptr %191, align 8, !tbaa !110
  %203 = getelementptr inbounds %struct.bitmap_obstack, ptr %172, i64 0, i32 2, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !109
  %205 = icmp eq ptr %202, %204
  br i1 %205, label %206, label %210, !prof !130

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.bitmap_obstack, ptr %172, i64 0, i32 2, i32 10
  %208 = load i8, ptr %207, align 8
  %209 = or i8 %208, 2
  store i8 %209, ptr %207, align 8
  br label %210

210:                                              ; preds = %206, %199
  %211 = load ptr, ptr %203, align 8, !tbaa !109
  %212 = ptrtoint ptr %211 to i64
  store i64 %212, ptr %188, align 8, !tbaa !106
  %213 = load ptr, ptr %191, align 8, !tbaa !110
  %214 = ptrtoint ptr %213 to i64
  %215 = getelementptr inbounds %struct.bitmap_obstack, ptr %172, i64 0, i32 2, i32 6
  %216 = load i32, ptr %215, align 8, !tbaa !117
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %214
  %219 = xor i32 %216, -1
  %220 = sext i32 %219 to i64
  %221 = and i64 %218, %220
  %222 = inttoptr i64 %221 to ptr
  store ptr %222, ptr %191, align 8, !tbaa !110
  %223 = getelementptr inbounds %struct.bitmap_obstack, ptr %172, i64 0, i32 2, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !103
  %225 = ptrtoint ptr %224 to i64
  %226 = sub i64 %221, %225
  %227 = load ptr, ptr %189, align 8, !tbaa !108
  %228 = ptrtoint ptr %227 to i64
  %229 = sub i64 %228, %225
  %230 = icmp sgt i64 %226, %229
  br i1 %230, label %231, label %232, !prof !130

231:                                              ; preds = %210
  store ptr %227, ptr %191, align 8, !tbaa !110
  br label %232

232:                                              ; preds = %231, %210
  %233 = load ptr, ptr %191, align 8, !tbaa !110
  store ptr %233, ptr %203, align 8, !tbaa !109
  br label %249

234:                                              ; preds = %169
  %235 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %236 = icmp eq ptr %235, null
  br i1 %236, label %247, label %237, !prof !131

237:                                              ; preds = %234
  %238 = load ptr, ptr %235, align 8, !tbaa !90
  %239 = icmp eq ptr %238, null
  br i1 %239, label %244, label %240, !prof !132

240:                                              ; preds = %237
  store ptr %238, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %241 = getelementptr inbounds %struct.bitmap_element_def, ptr %235, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !87
  %243 = getelementptr inbounds %struct.bitmap_element_def, ptr %238, i64 0, i32 1
  store ptr %242, ptr %243, align 8, !tbaa !87
  br label %249

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.bitmap_element_def, ptr %235, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !87
  store ptr %246, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %249

247:                                              ; preds = %234
  %248 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #24
  br label %249

249:                                              ; preds = %247, %244, %240, %232, %184, %180
  %250 = phi ptr [ %175, %180 ], [ %175, %184 ], [ %211, %232 ], [ %235, %240 ], [ %235, %244 ], [ %248, %247 ]
  %251 = getelementptr inbounds %struct.bitmap_element_def, ptr %250, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %251, i8 0, i64 16, i1 false)
  %252 = getelementptr inbounds %struct.bitmap_element_def, ptr %250, i64 0, i32 2
  store i32 %168, ptr %252, align 8, !tbaa !92
  %253 = icmp eq ptr %75, null
  %254 = load ptr, ptr %171, align 8, !tbaa !91
  %255 = icmp eq ptr %254, null
  br i1 %253, label %256, label %266, !prof !223

256:                                              ; preds = %249
  br i1 %255, label %257, label %259, !prof !224

257:                                              ; preds = %256
  %258 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store ptr %250, ptr %171, align 8, !tbaa !91
  store i32 %168, ptr %258, align 8, !tbaa !94
  br label %259

259:                                              ; preds = %257, %256
  %260 = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %260, ptr %250, align 8, !tbaa !90
  %261 = icmp eq ptr %260, null
  br i1 %261, label %264, label %262, !prof !224

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.bitmap_element_def, ptr %260, i64 0, i32 1
  store ptr %250, ptr %263, align 8, !tbaa !87
  br label %264

264:                                              ; preds = %262, %259
  store ptr %250, ptr %0, align 8, !tbaa !83
  %265 = getelementptr inbounds %struct.bitmap_element_def, ptr %250, i64 0, i32 1
  store ptr null, ptr %265, align 8, !tbaa !87
  br label %277

266:                                              ; preds = %249
  br i1 %255, label %267, label %268, !prof !225

267:                                              ; preds = %266
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #24
  br label %268

268:                                              ; preds = %267, %266
  %269 = load ptr, ptr %75, align 8, !tbaa !90
  store ptr %269, ptr %250, align 8, !tbaa !90
  %270 = icmp eq ptr %269, null
  br i1 %270, label %273, label %271, !prof !226

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.bitmap_element_def, ptr %269, i64 0, i32 1
  store ptr %250, ptr %272, align 8, !tbaa !87
  br label %273

273:                                              ; preds = %271, %268
  store ptr %250, ptr %75, align 8, !tbaa !90
  %274 = getelementptr inbounds %struct.bitmap_element_def, ptr %250, i64 0, i32 1
  store ptr %75, ptr %274, align 8, !tbaa !87
  br label %277

275:                                              ; preds = %166
  %276 = getelementptr inbounds %struct.bitmap_element_def, ptr %78, i64 0, i32 2
  store i32 %168, ptr %276, align 8, !tbaa !92
  br label %277

277:                                              ; preds = %275, %273, %264
  %278 = phi ptr [ %78, %275 ], [ %250, %264 ], [ %250, %273 ]
  %279 = getelementptr inbounds %struct.bitmap_element_def, ptr %278, i64 0, i32 3
  %280 = getelementptr inbounds %struct.bitmap_element_def, ptr %140, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %279, ptr noundef nonnull align 8 dereferenceable(16) %280, i64 16, i1 false)
  br label %281

281:                                              ; preds = %162, %120, %109, %277
  %282 = phi i8 [ 1, %277 ], [ %110, %109 ], [ 1, %120 ], [ %163, %162 ]
  br i1 %82, label %283, label %292, !prof !405

283:                                              ; preds = %281
  %284 = getelementptr inbounds %struct.bitmap_element_def, ptr %77, i64 0, i32 2
  %285 = load i32, ptr %284, align 8, !tbaa !92
  %286 = getelementptr inbounds %struct.bitmap_element_def, ptr %76, i64 0, i32 2
  %287 = load i32, ptr %286, align 8, !tbaa !92
  %288 = icmp eq i32 %285, %287
  br i1 %288, label %289, label %292, !prof !406

289:                                              ; preds = %283
  %290 = load ptr, ptr %77, align 8, !tbaa !90
  %291 = load ptr, ptr %76, align 8, !tbaa !90
  br label %312

292:                                              ; preds = %283, %281
  br i1 %72, label %293, label %302, !prof !407

293:                                              ; preds = %292
  br i1 %71, label %294, label %300, !prof !408

294:                                              ; preds = %293
  %295 = getelementptr inbounds %struct.bitmap_element_def, ptr %77, i64 0, i32 2
  %296 = load i32, ptr %295, align 8, !tbaa !92
  %297 = getelementptr inbounds %struct.bitmap_element_def, ptr %76, i64 0, i32 2
  %298 = load i32, ptr %297, align 8, !tbaa !92
  %299 = icmp ugt i32 %296, %298
  br i1 %299, label %302, label %300, !prof !409

300:                                              ; preds = %294, %293
  %301 = load ptr, ptr %77, align 8, !tbaa !90
  br label %312

302:                                              ; preds = %294, %292
  br i1 %71, label %303, label %312, !prof !410

303:                                              ; preds = %302
  br i1 %72, label %304, label %310, !prof !411

304:                                              ; preds = %303
  %305 = getelementptr inbounds %struct.bitmap_element_def, ptr %76, i64 0, i32 2
  %306 = load i32, ptr %305, align 8, !tbaa !92
  %307 = getelementptr inbounds %struct.bitmap_element_def, ptr %77, i64 0, i32 2
  %308 = load i32, ptr %307, align 8, !tbaa !92
  %309 = icmp ugt i32 %306, %308
  br i1 %309, label %312, label %310, !prof !412

310:                                              ; preds = %304, %303
  %311 = load ptr, ptr %76, align 8, !tbaa !90
  br label %312

312:                                              ; preds = %310, %304, %302, %300, %289
  %313 = phi ptr [ %290, %289 ], [ %301, %300 ], [ %77, %310 ], [ %77, %304 ], [ %77, %302 ]
  %314 = phi ptr [ %291, %289 ], [ %76, %300 ], [ %311, %310 ], [ %76, %304 ], [ null, %302 ]
  %315 = load ptr, ptr %74, align 8, !tbaa !63
  %316 = load ptr, ptr %315, align 8, !tbaa !63
  %317 = icmp ne ptr %313, null
  %318 = icmp ne ptr %314, null
  %319 = select i1 %317, i1 true, i1 %318, !prof !383
  br i1 %319, label %70, label %320, !prof !413, !llvm.loop !414

320:                                              ; preds = %312
  %321 = icmp eq ptr %316, null
  br i1 %321, label %323, label %322, !prof !415

322:                                              ; preds = %320
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %316)
  br label %323

323:                                              ; preds = %322, %320
  %324 = phi i8 [ 1, %322 ], [ %282, %320 ]
  %325 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !91
  %327 = icmp eq ptr %326, null
  %328 = load ptr, ptr %0, align 8, !tbaa !83
  %329 = icmp ne ptr %328, null
  %330 = xor i1 %327, %329
  br i1 %330, label %332, label %331, !prof !415

331:                                              ; preds = %323
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1566, ptr noundef nonnull @.str.1) #24
  br label %332

332:                                              ; preds = %331, %323
  %333 = load ptr, ptr %325, align 8, !tbaa !91
  %334 = icmp eq ptr %333, null
  br i1 %334, label %890, label %335, !prof !382

335:                                              ; preds = %332
  %336 = getelementptr inbounds %struct.bitmap_element_def, ptr %333, i64 0, i32 2
  %337 = load i32, ptr %336, align 8, !tbaa !92
  %338 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %337, ptr %338, align 8, !tbaa !94
  br label %890

339:                                              ; preds = %61
  %340 = load ptr, ptr %1, align 8, !tbaa !83
  %341 = icmp eq ptr %340, null
  br i1 %341, label %348, label %342, !prof !464

342:                                              ; preds = %339
  %343 = icmp ne ptr %7, null
  %344 = icmp ne ptr %8, null
  %345 = select i1 %343, i1 true, i1 %344, !prof !465
  br i1 %345, label %346, label %869, !prof !466

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  br label %350

348:                                              ; preds = %339
  %349 = tail call zeroext i8 @bitmap_and_compl(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3), !range !467
  br label %890

350:                                              ; preds = %346, %862
  %351 = phi i1 [ %344, %346 ], [ %867, %862 ]
  %352 = phi i1 [ %343, %346 ], [ %866, %862 ]
  %353 = phi ptr [ %0, %346 ], [ %865, %862 ]
  %354 = phi ptr [ null, %346 ], [ %864, %862 ]
  %355 = phi ptr [ %9, %346 ], [ %856, %862 ]
  %356 = phi ptr [ %8, %346 ], [ %855, %862 ]
  %357 = phi ptr [ %7, %346 ], [ %854, %862 ]
  %358 = phi ptr [ %6, %346 ], [ %863, %862 ]
  %359 = phi i8 [ 0, %346 ], [ %853, %862 ]
  %360 = icmp ne ptr %355, null
  %361 = select i1 %351, i1 %360, i1 false, !prof !468
  br i1 %361, label %362, label %373, !prof !469

362:                                              ; preds = %350
  %363 = getelementptr inbounds %struct.bitmap_element_def, ptr %356, i64 0, i32 2
  %364 = load i32, ptr %363, align 8, !tbaa !92
  br label %365

365:                                              ; preds = %362, %370
  %366 = phi ptr [ %371, %370 ], [ %355, %362 ]
  %367 = getelementptr inbounds %struct.bitmap_element_def, ptr %366, i64 0, i32 2
  %368 = load i32, ptr %367, align 8, !tbaa !92
  %369 = icmp ult i32 %368, %364
  br i1 %369, label %370, label %373, !prof !470

370:                                              ; preds = %365
  %371 = load ptr, ptr %366, align 8, !tbaa !90
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %365, !prof !471

373:                                              ; preds = %370, %365, %350
  %374 = phi ptr [ %355, %350 ], [ %366, %365 ], [ null, %370 ]
  %375 = icmp ne ptr %374, null
  %376 = select i1 %351, i1 %375, i1 false, !prof !468
  br i1 %376, label %377, label %614, !prof !472

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.bitmap_element_def, ptr %374, i64 0, i32 2
  %379 = load i32, ptr %378, align 8, !tbaa !92
  %380 = getelementptr inbounds %struct.bitmap_element_def, ptr %356, i64 0, i32 2
  %381 = load i32, ptr %380, align 8, !tbaa !92
  %382 = icmp eq i32 %379, %381
  br i1 %382, label %383, label %614, !prof !473

383:                                              ; preds = %377
  br i1 %352, label %384, label %388, !prof !474

384:                                              ; preds = %383
  %385 = getelementptr inbounds %struct.bitmap_element_def, ptr %357, i64 0, i32 2
  %386 = load i32, ptr %385, align 8, !tbaa !92
  %387 = icmp ult i32 %386, %381
  br i1 %387, label %614, label %388, !prof !475

388:                                              ; preds = %384, %383
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #24
  %389 = load i32, ptr %380, align 8, !tbaa !92
  store i32 %389, ptr %347, align 8, !tbaa !92
  br label %390

390:                                              ; preds = %388, %390
  %391 = phi i64 [ 2, %388 ], [ %393, %390 ]
  %392 = phi i64 [ 0, %388 ], [ %400, %390 ]
  %393 = add nsw i64 %391, -1
  %394 = getelementptr inbounds %struct.bitmap_element_def, ptr %356, i64 0, i32 3, i64 %393
  %395 = load i64, ptr %394, align 8, !tbaa !152
  %396 = getelementptr inbounds %struct.bitmap_element_def, ptr %374, i64 0, i32 3, i64 %393
  %397 = load i64, ptr %396, align 8, !tbaa !152
  %398 = xor i64 %397, -1
  %399 = and i64 %395, %398
  %400 = or i64 %399, %392
  %401 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 3, i64 %393
  store i64 %399, ptr %401, align 8, !tbaa !152
  %402 = icmp eq i64 %393, 0
  br i1 %402, label %403, label %390, !prof !476, !llvm.loop !477

403:                                              ; preds = %390
  %404 = icmp eq i64 %400, 0
  br i1 %404, label %608, label %405, !prof !478

405:                                              ; preds = %403
  br i1 %352, label %406, label %456, !prof !386

406:                                              ; preds = %405
  %407 = getelementptr inbounds %struct.bitmap_element_def, ptr %357, i64 0, i32 2
  %408 = load i32, ptr %407, align 8, !tbaa !92
  %409 = icmp eq i32 %408, %389
  br i1 %409, label %410, label %451, !prof !387

410:                                              ; preds = %406
  %411 = icmp eq i8 %359, 0
  %412 = icmp ne ptr %358, null
  %413 = and i1 %411, %412
  br i1 %413, label %414, label %434, !prof !388

414:                                              ; preds = %410
  %415 = getelementptr inbounds %struct.bitmap_element_def, ptr %358, i64 0, i32 2
  %416 = load i32, ptr %415, align 8, !tbaa !92
  %417 = icmp eq i32 %416, %408
  br i1 %417, label %418, label %434, !prof !389

418:                                              ; preds = %414, %430
  %419 = phi i64 [ %432, %430 ], [ 1, %414 ]
  %420 = phi i8 [ %431, %430 ], [ 0, %414 ]
  %421 = getelementptr inbounds %struct.bitmap_element_def, ptr %357, i64 0, i32 3, i64 %419
  %422 = load i64, ptr %421, align 8, !tbaa !152
  %423 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 3, i64 %419
  %424 = load i64, ptr %423, align 8, !tbaa !152
  %425 = or i64 %424, %422
  %426 = getelementptr inbounds %struct.bitmap_element_def, ptr %358, i64 0, i32 3, i64 %419
  %427 = load i64, ptr %426, align 8, !tbaa !152
  %428 = icmp eq i64 %425, %427
  br i1 %428, label %430, label %429, !prof !390

429:                                              ; preds = %418
  store i64 %425, ptr %426, align 8, !tbaa !152
  br label %430

430:                                              ; preds = %429, %418
  %431 = phi i8 [ 1, %429 ], [ %420, %418 ]
  %432 = add nsw i64 %419, -1
  %433 = icmp eq i64 %419, 0
  br i1 %433, label %599, label %418, !prof !391, !llvm.loop !392

434:                                              ; preds = %414, %410
  br i1 %412, label %437, label %435, !prof !393

435:                                              ; preds = %434
  %436 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef %0, ptr noundef %354, i32 noundef %408)
  br label %439

437:                                              ; preds = %434
  %438 = getelementptr inbounds %struct.bitmap_element_def, ptr %358, i64 0, i32 2
  store i32 %408, ptr %438, align 8, !tbaa !92
  br label %439

439:                                              ; preds = %437, %435
  %440 = phi ptr [ %358, %437 ], [ %436, %435 ]
  br label %441

441:                                              ; preds = %441, %439
  %442 = phi i64 [ 2, %439 ], [ %443, %441 ]
  %443 = add nsw i64 %442, -1
  %444 = getelementptr inbounds %struct.bitmap_element_def, ptr %357, i64 0, i32 3, i64 %443
  %445 = load i64, ptr %444, align 8, !tbaa !152
  %446 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 3, i64 %443
  %447 = load i64, ptr %446, align 8, !tbaa !152
  %448 = or i64 %447, %445
  %449 = getelementptr inbounds %struct.bitmap_element_def, ptr %440, i64 0, i32 3, i64 %443
  store i64 %448, ptr %449, align 8, !tbaa !152
  %450 = icmp eq i64 %443, 0
  br i1 %450, label %599, label %441, !prof !394, !llvm.loop !395

451:                                              ; preds = %406
  br i1 %352, label %452, label %456, !prof !397

452:                                              ; preds = %451
  %453 = getelementptr inbounds %struct.bitmap_element_def, ptr %357, i64 0, i32 2
  %454 = load i32, ptr %453, align 8, !tbaa !92
  %455 = icmp ult i32 %454, %389
  br i1 %455, label %457, label %456, !prof !398

456:                                              ; preds = %405, %452, %451
  br label %457

457:                                              ; preds = %452, %456
  %458 = phi ptr [ %5, %456 ], [ %357, %452 ]
  %459 = icmp eq i8 %359, 0
  %460 = icmp ne ptr %358, null
  %461 = and i1 %459, %460
  br i1 %461, label %462, label %481, !prof !400

462:                                              ; preds = %457
  %463 = getelementptr inbounds %struct.bitmap_element_def, ptr %358, i64 0, i32 2
  %464 = load i32, ptr %463, align 8, !tbaa !92
  %465 = getelementptr inbounds %struct.bitmap_element_def, ptr %458, i64 0, i32 2
  %466 = load i32, ptr %465, align 8, !tbaa !92
  %467 = icmp eq i32 %464, %466
  br i1 %467, label %468, label %481, !prof !401

468:                                              ; preds = %462, %477
  %469 = phi i64 [ %479, %477 ], [ 1, %462 ]
  %470 = phi i8 [ %478, %477 ], [ 0, %462 ]
  %471 = getelementptr inbounds %struct.bitmap_element_def, ptr %458, i64 0, i32 3, i64 %469
  %472 = load i64, ptr %471, align 8, !tbaa !152
  %473 = getelementptr inbounds %struct.bitmap_element_def, ptr %358, i64 0, i32 3, i64 %469
  %474 = load i64, ptr %473, align 8, !tbaa !152
  %475 = icmp eq i64 %472, %474
  br i1 %475, label %477, label %476, !prof !402

476:                                              ; preds = %468
  store i64 %472, ptr %473, align 8, !tbaa !152
  br label %477

477:                                              ; preds = %476, %468
  %478 = phi i8 [ 1, %476 ], [ %470, %468 ]
  %479 = add nsw i64 %469, -1
  %480 = icmp eq i64 %469, 0
  br i1 %480, label %599, label %468, !prof !403, !llvm.loop !271

481:                                              ; preds = %462, %457
  %482 = getelementptr inbounds %struct.bitmap_element_def, ptr %458, i64 0, i32 2
  %483 = load i32, ptr %482, align 8, !tbaa !92
  br i1 %460, label %593, label %484, !prof !404

484:                                              ; preds = %481
  %485 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %486 = load ptr, ptr %485, align 8, !tbaa !86
  %487 = icmp eq ptr %486, null
  br i1 %487, label %548, label %488, !prof !125

488:                                              ; preds = %484
  %489 = load ptr, ptr %486, align 8, !tbaa !126
  %490 = icmp eq ptr %489, null
  br i1 %490, label %501, label %491, !prof !127

491:                                              ; preds = %488
  %492 = load ptr, ptr %489, align 8, !tbaa !90
  %493 = icmp eq ptr %492, null
  br i1 %493, label %498, label %494, !prof !128

494:                                              ; preds = %491
  store ptr %492, ptr %486, align 8, !tbaa !126
  %495 = getelementptr inbounds %struct.bitmap_element_def, ptr %489, i64 0, i32 1
  %496 = load ptr, ptr %495, align 8, !tbaa !87
  %497 = getelementptr inbounds %struct.bitmap_element_def, ptr %492, i64 0, i32 1
  store ptr %496, ptr %497, align 8, !tbaa !87
  br label %563

498:                                              ; preds = %491
  %499 = getelementptr inbounds %struct.bitmap_element_def, ptr %489, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !87
  store ptr %500, ptr %486, align 8, !tbaa !126
  br label %563

501:                                              ; preds = %488
  %502 = getelementptr inbounds %struct.bitmap_obstack, ptr %486, i64 0, i32 2, i32 5
  store i64 40, ptr %502, align 8, !tbaa !106
  %503 = getelementptr inbounds %struct.bitmap_obstack, ptr %486, i64 0, i32 2, i32 4
  %504 = load ptr, ptr %503, align 8, !tbaa !108
  %505 = getelementptr inbounds %struct.bitmap_obstack, ptr %486, i64 0, i32 2, i32 3
  %506 = load ptr, ptr %505, align 8, !tbaa !110
  %507 = ptrtoint ptr %504 to i64
  %508 = ptrtoint ptr %506 to i64
  %509 = sub i64 %507, %508
  %510 = icmp slt i64 %509, 40
  br i1 %510, label %511, label %513, !prof !129

511:                                              ; preds = %501
  %512 = getelementptr inbounds %struct.bitmap_obstack, ptr %486, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %512, i32 noundef 40) #24
  br label %513

513:                                              ; preds = %511, %501
  %514 = load i64, ptr %502, align 8, !tbaa !106
  %515 = load ptr, ptr %505, align 8, !tbaa !110
  %516 = getelementptr inbounds i8, ptr %515, i64 %514
  store ptr %516, ptr %505, align 8, !tbaa !110
  %517 = getelementptr inbounds %struct.bitmap_obstack, ptr %486, i64 0, i32 2, i32 2
  %518 = load ptr, ptr %517, align 8, !tbaa !109
  %519 = icmp eq ptr %516, %518
  br i1 %519, label %520, label %524, !prof !130

520:                                              ; preds = %513
  %521 = getelementptr inbounds %struct.bitmap_obstack, ptr %486, i64 0, i32 2, i32 10
  %522 = load i8, ptr %521, align 8
  %523 = or i8 %522, 2
  store i8 %523, ptr %521, align 8
  br label %524

524:                                              ; preds = %520, %513
  %525 = load ptr, ptr %517, align 8, !tbaa !109
  %526 = ptrtoint ptr %525 to i64
  store i64 %526, ptr %502, align 8, !tbaa !106
  %527 = load ptr, ptr %505, align 8, !tbaa !110
  %528 = ptrtoint ptr %527 to i64
  %529 = getelementptr inbounds %struct.bitmap_obstack, ptr %486, i64 0, i32 2, i32 6
  %530 = load i32, ptr %529, align 8, !tbaa !117
  %531 = sext i32 %530 to i64
  %532 = add nsw i64 %531, %528
  %533 = xor i32 %530, -1
  %534 = sext i32 %533 to i64
  %535 = and i64 %532, %534
  %536 = inttoptr i64 %535 to ptr
  store ptr %536, ptr %505, align 8, !tbaa !110
  %537 = getelementptr inbounds %struct.bitmap_obstack, ptr %486, i64 0, i32 2, i32 1
  %538 = load ptr, ptr %537, align 8, !tbaa !103
  %539 = ptrtoint ptr %538 to i64
  %540 = sub i64 %535, %539
  %541 = load ptr, ptr %503, align 8, !tbaa !108
  %542 = ptrtoint ptr %541 to i64
  %543 = sub i64 %542, %539
  %544 = icmp sgt i64 %540, %543
  br i1 %544, label %545, label %546, !prof !130

545:                                              ; preds = %524
  store ptr %541, ptr %505, align 8, !tbaa !110
  br label %546

546:                                              ; preds = %545, %524
  %547 = load ptr, ptr %505, align 8, !tbaa !110
  store ptr %547, ptr %517, align 8, !tbaa !109
  br label %563

548:                                              ; preds = %484
  %549 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %550 = icmp eq ptr %549, null
  br i1 %550, label %561, label %551, !prof !131

551:                                              ; preds = %548
  %552 = load ptr, ptr %549, align 8, !tbaa !90
  %553 = icmp eq ptr %552, null
  br i1 %553, label %558, label %554, !prof !132

554:                                              ; preds = %551
  store ptr %552, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %555 = getelementptr inbounds %struct.bitmap_element_def, ptr %549, i64 0, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !87
  %557 = getelementptr inbounds %struct.bitmap_element_def, ptr %552, i64 0, i32 1
  store ptr %556, ptr %557, align 8, !tbaa !87
  br label %563

558:                                              ; preds = %551
  %559 = getelementptr inbounds %struct.bitmap_element_def, ptr %549, i64 0, i32 1
  %560 = load ptr, ptr %559, align 8, !tbaa !87
  store ptr %560, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %563

561:                                              ; preds = %548
  %562 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #24
  br label %563

563:                                              ; preds = %561, %558, %554, %546, %498, %494
  %564 = phi ptr [ %489, %494 ], [ %489, %498 ], [ %525, %546 ], [ %549, %554 ], [ %549, %558 ], [ %562, %561 ]
  %565 = getelementptr inbounds %struct.bitmap_element_def, ptr %564, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %565, i8 0, i64 16, i1 false)
  %566 = getelementptr inbounds %struct.bitmap_element_def, ptr %564, i64 0, i32 2
  store i32 %483, ptr %566, align 8, !tbaa !92
  %567 = icmp eq ptr %354, null
  br i1 %567, label %568, label %581, !prof !223

568:                                              ; preds = %563
  %569 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %570 = load ptr, ptr %569, align 8, !tbaa !91
  %571 = icmp eq ptr %570, null
  br i1 %571, label %572, label %574, !prof !224

572:                                              ; preds = %568
  %573 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store ptr %564, ptr %569, align 8, !tbaa !91
  store i32 %483, ptr %573, align 8, !tbaa !94
  br label %574

574:                                              ; preds = %572, %568
  %575 = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %575, ptr %564, align 8, !tbaa !90
  %576 = icmp eq ptr %575, null
  br i1 %576, label %579, label %577, !prof !224

577:                                              ; preds = %574
  %578 = getelementptr inbounds %struct.bitmap_element_def, ptr %575, i64 0, i32 1
  store ptr %564, ptr %578, align 8, !tbaa !87
  br label %579

579:                                              ; preds = %577, %574
  store ptr %564, ptr %0, align 8, !tbaa !83
  %580 = getelementptr inbounds %struct.bitmap_element_def, ptr %564, i64 0, i32 1
  store ptr null, ptr %580, align 8, !tbaa !87
  br label %595

581:                                              ; preds = %563
  %582 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %583 = load ptr, ptr %582, align 8, !tbaa !91
  %584 = icmp eq ptr %583, null
  br i1 %584, label %585, label %586, !prof !225

585:                                              ; preds = %581
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #24
  br label %586

586:                                              ; preds = %585, %581
  %587 = load ptr, ptr %354, align 8, !tbaa !90
  store ptr %587, ptr %564, align 8, !tbaa !90
  %588 = icmp eq ptr %587, null
  br i1 %588, label %591, label %589, !prof !226

589:                                              ; preds = %586
  %590 = getelementptr inbounds %struct.bitmap_element_def, ptr %587, i64 0, i32 1
  store ptr %564, ptr %590, align 8, !tbaa !87
  br label %591

591:                                              ; preds = %589, %586
  store ptr %564, ptr %354, align 8, !tbaa !90
  %592 = getelementptr inbounds %struct.bitmap_element_def, ptr %564, i64 0, i32 1
  store ptr %354, ptr %592, align 8, !tbaa !87
  br label %595

593:                                              ; preds = %481
  %594 = getelementptr inbounds %struct.bitmap_element_def, ptr %358, i64 0, i32 2
  store i32 %483, ptr %594, align 8, !tbaa !92
  br label %595

595:                                              ; preds = %593, %591, %579
  %596 = phi ptr [ %358, %593 ], [ %564, %579 ], [ %564, %591 ]
  %597 = getelementptr inbounds %struct.bitmap_element_def, ptr %596, i64 0, i32 3
  %598 = getelementptr inbounds %struct.bitmap_element_def, ptr %458, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %597, ptr noundef nonnull align 8 dereferenceable(16) %598, i64 16, i1 false)
  br label %599

599:                                              ; preds = %477, %441, %430, %595
  %600 = phi i8 [ 1, %595 ], [ %431, %430 ], [ 1, %441 ], [ %478, %477 ]
  br i1 %352, label %601, label %608, !prof !479

601:                                              ; preds = %599
  %602 = getelementptr inbounds %struct.bitmap_element_def, ptr %357, i64 0, i32 2
  %603 = load i32, ptr %602, align 8, !tbaa !92
  %604 = load i32, ptr %380, align 8, !tbaa !92
  %605 = icmp eq i32 %603, %604
  br i1 %605, label %606, label %608, !prof !480

606:                                              ; preds = %601
  %607 = load ptr, ptr %357, align 8, !tbaa !90
  br label %608

608:                                              ; preds = %599, %601, %606, %403
  %609 = phi i8 [ %600, %606 ], [ %600, %601 ], [ %600, %599 ], [ %359, %403 ]
  %610 = phi ptr [ %607, %606 ], [ %357, %601 ], [ null, %599 ], [ %357, %403 ]
  %611 = phi i8 [ 1, %606 ], [ 1, %601 ], [ 1, %599 ], [ 0, %403 ]
  %612 = load ptr, ptr %356, align 8, !tbaa !90
  %613 = load ptr, ptr %374, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #24
  br label %852

614:                                              ; preds = %384, %377, %373
  %615 = or i1 %352, %351
  br i1 %615, label %617, label %616, !prof !385

616:                                              ; preds = %614
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1475, ptr noundef nonnull @.str.1) #24
  br label %617

617:                                              ; preds = %616, %614
  %618 = and i1 %352, %351
  br i1 %618, label %619, label %666, !prof !386

619:                                              ; preds = %617
  %620 = getelementptr inbounds %struct.bitmap_element_def, ptr %357, i64 0, i32 2
  %621 = load i32, ptr %620, align 8, !tbaa !92
  %622 = getelementptr inbounds %struct.bitmap_element_def, ptr %356, i64 0, i32 2
  %623 = load i32, ptr %622, align 8, !tbaa !92
  %624 = icmp eq i32 %621, %623
  br i1 %624, label %625, label %666, !prof !387

625:                                              ; preds = %619
  %626 = icmp eq i8 %359, 0
  %627 = icmp ne ptr %358, null
  %628 = and i1 %626, %627
  br i1 %628, label %629, label %649, !prof !388

629:                                              ; preds = %625
  %630 = getelementptr inbounds %struct.bitmap_element_def, ptr %358, i64 0, i32 2
  %631 = load i32, ptr %630, align 8, !tbaa !92
  %632 = icmp eq i32 %631, %621
  br i1 %632, label %633, label %649, !prof !389

633:                                              ; preds = %629, %645
  %634 = phi i64 [ %647, %645 ], [ 1, %629 ]
  %635 = phi i8 [ %646, %645 ], [ 0, %629 ]
  %636 = getelementptr inbounds %struct.bitmap_element_def, ptr %357, i64 0, i32 3, i64 %634
  %637 = load i64, ptr %636, align 8, !tbaa !152
  %638 = getelementptr inbounds %struct.bitmap_element_def, ptr %356, i64 0, i32 3, i64 %634
  %639 = load i64, ptr %638, align 8, !tbaa !152
  %640 = or i64 %639, %637
  %641 = getelementptr inbounds %struct.bitmap_element_def, ptr %358, i64 0, i32 3, i64 %634
  %642 = load i64, ptr %641, align 8, !tbaa !152
  %643 = icmp eq i64 %640, %642
  br i1 %643, label %645, label %644, !prof !390

644:                                              ; preds = %633
  store i64 %640, ptr %641, align 8, !tbaa !152
  br label %645

645:                                              ; preds = %644, %633
  %646 = phi i8 [ 1, %644 ], [ %635, %633 ]
  %647 = add nsw i64 %634, -1
  %648 = icmp eq i64 %634, 0
  br i1 %648, label %820, label %633, !prof !391, !llvm.loop !392

649:                                              ; preds = %629, %625
  br i1 %627, label %652, label %650, !prof !393

650:                                              ; preds = %649
  %651 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef %0, ptr noundef %354, i32 noundef %621)
  br label %654

652:                                              ; preds = %649
  %653 = getelementptr inbounds %struct.bitmap_element_def, ptr %358, i64 0, i32 2
  store i32 %621, ptr %653, align 8, !tbaa !92
  br label %654

654:                                              ; preds = %652, %650
  %655 = phi ptr [ %358, %652 ], [ %651, %650 ]
  br label %656

656:                                              ; preds = %656, %654
  %657 = phi i64 [ 2, %654 ], [ %658, %656 ]
  %658 = add nsw i64 %657, -1
  %659 = getelementptr inbounds %struct.bitmap_element_def, ptr %357, i64 0, i32 3, i64 %658
  %660 = load i64, ptr %659, align 8, !tbaa !152
  %661 = getelementptr inbounds %struct.bitmap_element_def, ptr %356, i64 0, i32 3, i64 %658
  %662 = load i64, ptr %661, align 8, !tbaa !152
  %663 = or i64 %662, %660
  %664 = getelementptr inbounds %struct.bitmap_element_def, ptr %655, i64 0, i32 3, i64 %658
  store i64 %663, ptr %664, align 8, !tbaa !152
  %665 = icmp eq i64 %658, 0
  br i1 %665, label %820, label %656, !prof !394, !llvm.loop !395

666:                                              ; preds = %619, %617
  br i1 %351, label %667, label %675, !prof !396

667:                                              ; preds = %666
  br i1 %352, label %668, label %674, !prof !397

668:                                              ; preds = %667
  %669 = getelementptr inbounds %struct.bitmap_element_def, ptr %357, i64 0, i32 2
  %670 = load i32, ptr %669, align 8, !tbaa !92
  %671 = getelementptr inbounds %struct.bitmap_element_def, ptr %356, i64 0, i32 2
  %672 = load i32, ptr %671, align 8, !tbaa !92
  %673 = icmp ult i32 %670, %672
  br i1 %673, label %675, label %674, !prof !398

674:                                              ; preds = %668, %667
  br label %675

675:                                              ; preds = %674, %668, %666
  %676 = phi ptr [ %356, %674 ], [ %357, %668 ], [ %357, %666 ]
  %677 = icmp eq ptr %676, null
  br i1 %677, label %678, label %679, !prof !399

678:                                              ; preds = %675
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1518, ptr noundef nonnull @.str.1) #24
  br label %679

679:                                              ; preds = %678, %675
  %680 = icmp eq i8 %359, 0
  %681 = icmp ne ptr %358, null
  %682 = and i1 %680, %681
  br i1 %682, label %683, label %702, !prof !400

683:                                              ; preds = %679
  %684 = getelementptr inbounds %struct.bitmap_element_def, ptr %358, i64 0, i32 2
  %685 = load i32, ptr %684, align 8, !tbaa !92
  %686 = getelementptr inbounds %struct.bitmap_element_def, ptr %676, i64 0, i32 2
  %687 = load i32, ptr %686, align 8, !tbaa !92
  %688 = icmp eq i32 %685, %687
  br i1 %688, label %689, label %702, !prof !401

689:                                              ; preds = %683, %698
  %690 = phi i64 [ %700, %698 ], [ 1, %683 ]
  %691 = phi i8 [ %699, %698 ], [ 0, %683 ]
  %692 = getelementptr inbounds %struct.bitmap_element_def, ptr %676, i64 0, i32 3, i64 %690
  %693 = load i64, ptr %692, align 8, !tbaa !152
  %694 = getelementptr inbounds %struct.bitmap_element_def, ptr %358, i64 0, i32 3, i64 %690
  %695 = load i64, ptr %694, align 8, !tbaa !152
  %696 = icmp eq i64 %693, %695
  br i1 %696, label %698, label %697, !prof !402

697:                                              ; preds = %689
  store i64 %693, ptr %694, align 8, !tbaa !152
  br label %698

698:                                              ; preds = %697, %689
  %699 = phi i8 [ 1, %697 ], [ %691, %689 ]
  %700 = add nsw i64 %690, -1
  %701 = icmp eq i64 %690, 0
  br i1 %701, label %820, label %689, !prof !403, !llvm.loop !271

702:                                              ; preds = %683, %679
  %703 = getelementptr inbounds %struct.bitmap_element_def, ptr %676, i64 0, i32 2
  %704 = load i32, ptr %703, align 8, !tbaa !92
  br i1 %681, label %814, label %705, !prof !404

705:                                              ; preds = %702
  %706 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %707 = load ptr, ptr %706, align 8, !tbaa !86
  %708 = icmp eq ptr %707, null
  br i1 %708, label %769, label %709, !prof !125

709:                                              ; preds = %705
  %710 = load ptr, ptr %707, align 8, !tbaa !126
  %711 = icmp eq ptr %710, null
  br i1 %711, label %722, label %712, !prof !127

712:                                              ; preds = %709
  %713 = load ptr, ptr %710, align 8, !tbaa !90
  %714 = icmp eq ptr %713, null
  br i1 %714, label %719, label %715, !prof !128

715:                                              ; preds = %712
  store ptr %713, ptr %707, align 8, !tbaa !126
  %716 = getelementptr inbounds %struct.bitmap_element_def, ptr %710, i64 0, i32 1
  %717 = load ptr, ptr %716, align 8, !tbaa !87
  %718 = getelementptr inbounds %struct.bitmap_element_def, ptr %713, i64 0, i32 1
  store ptr %717, ptr %718, align 8, !tbaa !87
  br label %784

719:                                              ; preds = %712
  %720 = getelementptr inbounds %struct.bitmap_element_def, ptr %710, i64 0, i32 1
  %721 = load ptr, ptr %720, align 8, !tbaa !87
  store ptr %721, ptr %707, align 8, !tbaa !126
  br label %784

722:                                              ; preds = %709
  %723 = getelementptr inbounds %struct.bitmap_obstack, ptr %707, i64 0, i32 2, i32 5
  store i64 40, ptr %723, align 8, !tbaa !106
  %724 = getelementptr inbounds %struct.bitmap_obstack, ptr %707, i64 0, i32 2, i32 4
  %725 = load ptr, ptr %724, align 8, !tbaa !108
  %726 = getelementptr inbounds %struct.bitmap_obstack, ptr %707, i64 0, i32 2, i32 3
  %727 = load ptr, ptr %726, align 8, !tbaa !110
  %728 = ptrtoint ptr %725 to i64
  %729 = ptrtoint ptr %727 to i64
  %730 = sub i64 %728, %729
  %731 = icmp slt i64 %730, 40
  br i1 %731, label %732, label %734, !prof !129

732:                                              ; preds = %722
  %733 = getelementptr inbounds %struct.bitmap_obstack, ptr %707, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %733, i32 noundef 40) #24
  br label %734

734:                                              ; preds = %732, %722
  %735 = load i64, ptr %723, align 8, !tbaa !106
  %736 = load ptr, ptr %726, align 8, !tbaa !110
  %737 = getelementptr inbounds i8, ptr %736, i64 %735
  store ptr %737, ptr %726, align 8, !tbaa !110
  %738 = getelementptr inbounds %struct.bitmap_obstack, ptr %707, i64 0, i32 2, i32 2
  %739 = load ptr, ptr %738, align 8, !tbaa !109
  %740 = icmp eq ptr %737, %739
  br i1 %740, label %741, label %745, !prof !130

741:                                              ; preds = %734
  %742 = getelementptr inbounds %struct.bitmap_obstack, ptr %707, i64 0, i32 2, i32 10
  %743 = load i8, ptr %742, align 8
  %744 = or i8 %743, 2
  store i8 %744, ptr %742, align 8
  br label %745

745:                                              ; preds = %741, %734
  %746 = load ptr, ptr %738, align 8, !tbaa !109
  %747 = ptrtoint ptr %746 to i64
  store i64 %747, ptr %723, align 8, !tbaa !106
  %748 = load ptr, ptr %726, align 8, !tbaa !110
  %749 = ptrtoint ptr %748 to i64
  %750 = getelementptr inbounds %struct.bitmap_obstack, ptr %707, i64 0, i32 2, i32 6
  %751 = load i32, ptr %750, align 8, !tbaa !117
  %752 = sext i32 %751 to i64
  %753 = add nsw i64 %752, %749
  %754 = xor i32 %751, -1
  %755 = sext i32 %754 to i64
  %756 = and i64 %753, %755
  %757 = inttoptr i64 %756 to ptr
  store ptr %757, ptr %726, align 8, !tbaa !110
  %758 = getelementptr inbounds %struct.bitmap_obstack, ptr %707, i64 0, i32 2, i32 1
  %759 = load ptr, ptr %758, align 8, !tbaa !103
  %760 = ptrtoint ptr %759 to i64
  %761 = sub i64 %756, %760
  %762 = load ptr, ptr %724, align 8, !tbaa !108
  %763 = ptrtoint ptr %762 to i64
  %764 = sub i64 %763, %760
  %765 = icmp sgt i64 %761, %764
  br i1 %765, label %766, label %767, !prof !130

766:                                              ; preds = %745
  store ptr %762, ptr %726, align 8, !tbaa !110
  br label %767

767:                                              ; preds = %766, %745
  %768 = load ptr, ptr %726, align 8, !tbaa !110
  store ptr %768, ptr %738, align 8, !tbaa !109
  br label %784

769:                                              ; preds = %705
  %770 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %771 = icmp eq ptr %770, null
  br i1 %771, label %782, label %772, !prof !131

772:                                              ; preds = %769
  %773 = load ptr, ptr %770, align 8, !tbaa !90
  %774 = icmp eq ptr %773, null
  br i1 %774, label %779, label %775, !prof !132

775:                                              ; preds = %772
  store ptr %773, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %776 = getelementptr inbounds %struct.bitmap_element_def, ptr %770, i64 0, i32 1
  %777 = load ptr, ptr %776, align 8, !tbaa !87
  %778 = getelementptr inbounds %struct.bitmap_element_def, ptr %773, i64 0, i32 1
  store ptr %777, ptr %778, align 8, !tbaa !87
  br label %784

779:                                              ; preds = %772
  %780 = getelementptr inbounds %struct.bitmap_element_def, ptr %770, i64 0, i32 1
  %781 = load ptr, ptr %780, align 8, !tbaa !87
  store ptr %781, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %784

782:                                              ; preds = %769
  %783 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #24
  br label %784

784:                                              ; preds = %782, %779, %775, %767, %719, %715
  %785 = phi ptr [ %710, %715 ], [ %710, %719 ], [ %746, %767 ], [ %770, %775 ], [ %770, %779 ], [ %783, %782 ]
  %786 = getelementptr inbounds %struct.bitmap_element_def, ptr %785, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %786, i8 0, i64 16, i1 false)
  %787 = getelementptr inbounds %struct.bitmap_element_def, ptr %785, i64 0, i32 2
  store i32 %704, ptr %787, align 8, !tbaa !92
  %788 = icmp eq ptr %354, null
  br i1 %788, label %789, label %802, !prof !223

789:                                              ; preds = %784
  %790 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %791 = load ptr, ptr %790, align 8, !tbaa !91
  %792 = icmp eq ptr %791, null
  br i1 %792, label %793, label %795, !prof !224

793:                                              ; preds = %789
  %794 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store ptr %785, ptr %790, align 8, !tbaa !91
  store i32 %704, ptr %794, align 8, !tbaa !94
  br label %795

795:                                              ; preds = %793, %789
  %796 = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %796, ptr %785, align 8, !tbaa !90
  %797 = icmp eq ptr %796, null
  br i1 %797, label %800, label %798, !prof !224

798:                                              ; preds = %795
  %799 = getelementptr inbounds %struct.bitmap_element_def, ptr %796, i64 0, i32 1
  store ptr %785, ptr %799, align 8, !tbaa !87
  br label %800

800:                                              ; preds = %798, %795
  store ptr %785, ptr %0, align 8, !tbaa !83
  %801 = getelementptr inbounds %struct.bitmap_element_def, ptr %785, i64 0, i32 1
  store ptr null, ptr %801, align 8, !tbaa !87
  br label %816

802:                                              ; preds = %784
  %803 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %804 = load ptr, ptr %803, align 8, !tbaa !91
  %805 = icmp eq ptr %804, null
  br i1 %805, label %806, label %807, !prof !225

806:                                              ; preds = %802
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #24
  br label %807

807:                                              ; preds = %806, %802
  %808 = load ptr, ptr %354, align 8, !tbaa !90
  store ptr %808, ptr %785, align 8, !tbaa !90
  %809 = icmp eq ptr %808, null
  br i1 %809, label %812, label %810, !prof !226

810:                                              ; preds = %807
  %811 = getelementptr inbounds %struct.bitmap_element_def, ptr %808, i64 0, i32 1
  store ptr %785, ptr %811, align 8, !tbaa !87
  br label %812

812:                                              ; preds = %810, %807
  store ptr %785, ptr %354, align 8, !tbaa !90
  %813 = getelementptr inbounds %struct.bitmap_element_def, ptr %785, i64 0, i32 1
  store ptr %354, ptr %813, align 8, !tbaa !87
  br label %816

814:                                              ; preds = %702
  %815 = getelementptr inbounds %struct.bitmap_element_def, ptr %358, i64 0, i32 2
  store i32 %704, ptr %815, align 8, !tbaa !92
  br label %816

816:                                              ; preds = %814, %812, %800
  %817 = phi ptr [ %358, %814 ], [ %785, %800 ], [ %785, %812 ]
  %818 = getelementptr inbounds %struct.bitmap_element_def, ptr %817, i64 0, i32 3
  %819 = getelementptr inbounds %struct.bitmap_element_def, ptr %676, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %818, ptr noundef nonnull align 8 dereferenceable(16) %819, i64 16, i1 false)
  br label %820

820:                                              ; preds = %698, %656, %645, %816
  %821 = phi i8 [ 1, %816 ], [ %646, %645 ], [ 1, %656 ], [ %699, %698 ]
  %822 = and i1 %352, %351
  br i1 %822, label %823, label %832, !prof !481

823:                                              ; preds = %820
  %824 = getelementptr inbounds %struct.bitmap_element_def, ptr %357, i64 0, i32 2
  %825 = load i32, ptr %824, align 8, !tbaa !92
  %826 = getelementptr inbounds %struct.bitmap_element_def, ptr %356, i64 0, i32 2
  %827 = load i32, ptr %826, align 8, !tbaa !92
  %828 = icmp eq i32 %825, %827
  br i1 %828, label %829, label %832, !prof !482

829:                                              ; preds = %823
  %830 = load ptr, ptr %357, align 8, !tbaa !90
  %831 = load ptr, ptr %356, align 8, !tbaa !90
  br label %852

832:                                              ; preds = %823, %820
  br i1 %352, label %833, label %842, !prof !483

833:                                              ; preds = %832
  br i1 %351, label %834, label %840, !prof !484

834:                                              ; preds = %833
  %835 = getelementptr inbounds %struct.bitmap_element_def, ptr %357, i64 0, i32 2
  %836 = load i32, ptr %835, align 8, !tbaa !92
  %837 = getelementptr inbounds %struct.bitmap_element_def, ptr %356, i64 0, i32 2
  %838 = load i32, ptr %837, align 8, !tbaa !92
  %839 = icmp ugt i32 %836, %838
  br i1 %839, label %842, label %840, !prof !485

840:                                              ; preds = %834, %833
  %841 = load ptr, ptr %357, align 8, !tbaa !90
  br label %852

842:                                              ; preds = %834, %832
  br i1 %351, label %843, label %852, !prof !486

843:                                              ; preds = %842
  br i1 %352, label %844, label %850, !prof !487

844:                                              ; preds = %843
  %845 = getelementptr inbounds %struct.bitmap_element_def, ptr %356, i64 0, i32 2
  %846 = load i32, ptr %845, align 8, !tbaa !92
  %847 = getelementptr inbounds %struct.bitmap_element_def, ptr %357, i64 0, i32 2
  %848 = load i32, ptr %847, align 8, !tbaa !92
  %849 = icmp ugt i32 %846, %848
  br i1 %849, label %852, label %850, !prof !488

850:                                              ; preds = %844, %843
  %851 = load ptr, ptr %356, align 8, !tbaa !90
  br label %852

852:                                              ; preds = %829, %842, %844, %850, %840, %608
  %853 = phi i8 [ %609, %608 ], [ %821, %829 ], [ %821, %840 ], [ %821, %850 ], [ %821, %844 ], [ %821, %842 ]
  %854 = phi ptr [ %610, %608 ], [ %830, %829 ], [ %841, %840 ], [ %357, %850 ], [ %357, %844 ], [ %357, %842 ]
  %855 = phi ptr [ %612, %608 ], [ %831, %829 ], [ %356, %840 ], [ %851, %850 ], [ %356, %844 ], [ null, %842 ]
  %856 = phi ptr [ %613, %608 ], [ %374, %829 ], [ %374, %840 ], [ %374, %850 ], [ %374, %844 ], [ %374, %842 ]
  %857 = phi i8 [ %611, %608 ], [ 1, %829 ], [ 1, %840 ], [ 1, %850 ], [ 1, %844 ], [ 1, %842 ]
  %858 = icmp eq i8 %857, 0
  br i1 %858, label %862, label %859, !prof !489

859:                                              ; preds = %852
  %860 = load ptr, ptr %353, align 8, !tbaa !63
  %861 = load ptr, ptr %860, align 8, !tbaa !63
  br label %862

862:                                              ; preds = %859, %852
  %863 = phi ptr [ %861, %859 ], [ %358, %852 ]
  %864 = phi ptr [ %860, %859 ], [ %354, %852 ]
  %865 = phi ptr [ %860, %859 ], [ %353, %852 ]
  %866 = icmp ne ptr %854, null
  %867 = icmp ne ptr %855, null
  %868 = select i1 %866, i1 true, i1 %867, !prof !465
  br i1 %868, label %350, label %869, !prof !490, !llvm.loop !491

869:                                              ; preds = %862, %342
  %870 = phi i8 [ 0, %342 ], [ %853, %862 ]
  %871 = phi ptr [ %6, %342 ], [ %863, %862 ]
  %872 = icmp eq ptr %871, null
  br i1 %872, label %874, label %873, !prof !492

873:                                              ; preds = %869
  tail call fastcc void @bitmap_elt_clear_from(ptr noundef nonnull %0, ptr noundef nonnull %871)
  br label %874

874:                                              ; preds = %873, %869
  %875 = phi i8 [ 1, %873 ], [ %870, %869 ]
  %876 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %877 = load ptr, ptr %876, align 8, !tbaa !91
  %878 = icmp eq ptr %877, null
  %879 = load ptr, ptr %0, align 8, !tbaa !83
  %880 = icmp ne ptr %879, null
  %881 = xor i1 %878, %880
  br i1 %881, label %883, label %882, !prof !492

882:                                              ; preds = %874
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1922, ptr noundef nonnull @.str.1) #24
  br label %883

883:                                              ; preds = %874, %882
  %884 = load ptr, ptr %876, align 8, !tbaa !91
  %885 = icmp eq ptr %884, null
  br i1 %885, label %890, label %886, !prof !493

886:                                              ; preds = %883
  %887 = getelementptr inbounds %struct.bitmap_element_def, ptr %884, i64 0, i32 2
  %888 = load i32, ptr %887, align 8, !tbaa !92
  %889 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %888, ptr %889, align 8, !tbaa !94
  br label %890

890:                                              ; preds = %335, %332, %883, %886, %57, %60, %348
  %891 = phi i8 [ %349, %348 ], [ %58, %60 ], [ %58, %57 ], [ %875, %886 ], [ %875, %883 ], [ %324, %332 ], [ %324, %335 ]
  ret i8 %891
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #18 !prof !62 {
  %4 = alloca %struct.bitmap_head_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %5 = getelementptr inbounds %struct.bitmap_head_def, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.bitmap_head_def, ptr %4, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr @bitmap_default_obstack, ptr %6, align 8, !tbaa !86
  %7 = call zeroext i8 @bitmap_and_compl(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2), !range !467
  %8 = call zeroext i8 @bitmap_ior_into(ptr noundef %0, ptr noundef nonnull %4), !range !467
  %9 = load ptr, ptr %4, align 8, !tbaa !83
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  store ptr null, ptr %14, align 8, !tbaa !90
  %17 = load ptr, ptr %5, align 8, !tbaa !91
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !92
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !92
  %22 = icmp ugt i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  store ptr %14, ptr %5, align 8, !tbaa !91
  %24 = getelementptr inbounds %struct.bitmap_head_def, ptr %4, i64 0, i32 2
  store i32 %21, ptr %24, align 8, !tbaa !94
  br label %26

25:                                               ; preds = %11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  br label %26

26:                                               ; preds = %25, %23, %16
  %27 = icmp eq ptr %12, null
  %28 = select i1 %27, ptr @bitmap_ggc_free, ptr %12
  %29 = load ptr, ptr %28, align 8, !tbaa !63
  store ptr %29, ptr %13, align 8, !tbaa !87
  store ptr %9, ptr %28, align 8, !tbaa !63
  br label %30

30:                                               ; preds = %26, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  ret i8 %8
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @bitmap_ior_and_into(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #12 !prof !494 {
  %4 = alloca %struct.bitmap_element_def, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !83
  %6 = load ptr, ptr %1, align 8, !tbaa !83
  %7 = load ptr, ptr %2, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #24
  %8 = icmp eq ptr %1, %2
  br i1 %8, label %9, label %11, !prof !495

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %0, ptr noundef nonnull %1), !range !467
  br label %300

11:                                               ; preds = %3
  %12 = icmp eq ptr %6, null
  %13 = icmp eq ptr %7, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %300, label %15, !prof !496

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  store i32 -1, ptr %16, align 8, !tbaa !92
  br label %17

17:                                               ; preds = %15, %281
  %18 = phi i8 [ 0, %15 ], [ %279, %281 ]
  %19 = phi ptr [ %0, %15 ], [ %278, %281 ]
  %20 = phi ptr [ null, %15 ], [ %277, %281 ]
  %21 = phi ptr [ %7, %15 ], [ %276, %281 ]
  %22 = phi ptr [ %6, %15 ], [ %275, %281 ]
  %23 = phi ptr [ %5, %15 ], [ %274, %281 ]
  %24 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !92
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !92
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %49, label %29, !prof !497

29:                                               ; preds = %17, %41
  %30 = phi i32 [ %47, %41 ], [ %27, %17 ]
  %31 = phi i32 [ %45, %41 ], [ %25, %17 ]
  %32 = phi ptr [ %43, %41 ], [ %21, %17 ]
  %33 = phi ptr [ %42, %41 ], [ %22, %17 ]
  %34 = icmp ult i32 %31, %30
  br i1 %34, label %35, label %38, !prof !498

35:                                               ; preds = %29
  %36 = load ptr, ptr %33, align 8, !tbaa !90
  %37 = icmp eq ptr %36, null
  br i1 %37, label %273, label %41, !prof !499

38:                                               ; preds = %29
  %39 = load ptr, ptr %32, align 8, !tbaa !90
  %40 = icmp eq ptr %39, null
  br i1 %40, label %273, label %41, !prof !500

41:                                               ; preds = %38, %35
  %42 = phi ptr [ %36, %35 ], [ %33, %38 ]
  %43 = phi ptr [ %32, %35 ], [ %39, %38 ]
  %44 = getelementptr inbounds %struct.bitmap_element_def, ptr %42, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !92
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %43, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !92
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %29, !prof !501, !llvm.loop !502

49:                                               ; preds = %41, %17
  %50 = phi ptr [ %22, %17 ], [ %42, %41 ]
  %51 = phi ptr [ %21, %17 ], [ %43, %41 ]
  %52 = phi i32 [ %25, %17 ], [ %45, %41 ]
  store i32 %52, ptr %16, align 8, !tbaa !92
  br label %53

53:                                               ; preds = %49, %53
  %54 = phi i64 [ 2, %49 ], [ %56, %53 ]
  %55 = phi i64 [ 0, %49 ], [ %63, %53 ]
  %56 = add nsw i64 %54, -1
  %57 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !152
  %59 = getelementptr inbounds %struct.bitmap_element_def, ptr %51, i64 0, i32 3, i64 %56
  %60 = load i64, ptr %59, align 8, !tbaa !152
  %61 = and i64 %60, %58
  %62 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 %56
  store i64 %61, ptr %62, align 8, !tbaa !152
  %63 = or i64 %61, %55
  %64 = icmp eq i64 %56, 0
  br i1 %64, label %65, label %53, !prof !503, !llvm.loop !504

65:                                               ; preds = %53
  %66 = load ptr, ptr %50, align 8, !tbaa !90
  %67 = load ptr, ptr %51, align 8, !tbaa !90
  %68 = icmp eq i64 %63, 0
  br i1 %68, label %273, label %69, !prof !505, !llvm.loop !506

69:                                               ; preds = %65, %267
  %70 = phi ptr [ %270, %267 ], [ %23, %65 ]
  %71 = phi ptr [ %269, %267 ], [ %20, %65 ]
  %72 = phi ptr [ %269, %267 ], [ %19, %65 ]
  %73 = phi i8 [ %268, %267 ], [ %18, %65 ]
  %74 = icmp eq ptr %70, null
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  %76 = select i1 %74, ptr %16, ptr %75, !prof !507
  %77 = load i32, ptr %76, align 8, !tbaa !92
  %78 = load i32, ptr %16, align 8, !tbaa !92
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %258, !prof !508

80:                                               ; preds = %69
  %81 = icmp ne ptr %70, null
  br i1 %81, label %82, label %117, !prof !386

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !92
  %85 = icmp eq i32 %84, %78
  br i1 %85, label %86, label %112, !prof !387

86:                                               ; preds = %82
  %87 = icmp eq i8 %73, 0
  br i1 %87, label %88, label %102, !prof !388

88:                                               ; preds = %86, %98
  %89 = phi i64 [ %100, %98 ], [ 1, %86 ]
  %90 = phi i8 [ %99, %98 ], [ 0, %86 ]
  %91 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 3, i64 %89
  %92 = load i64, ptr %91, align 8, !tbaa !152
  %93 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 %89
  %94 = load i64, ptr %93, align 8, !tbaa !152
  %95 = or i64 %94, %92
  %96 = icmp eq i64 %95, %92
  br i1 %96, label %98, label %97, !prof !390

97:                                               ; preds = %88
  store i64 %95, ptr %91, align 8, !tbaa !152
  br label %98

98:                                               ; preds = %97, %88
  %99 = phi i8 [ 1, %97 ], [ %90, %88 ]
  %100 = add nsw i64 %89, -1
  %101 = icmp eq i64 %89, 0
  br i1 %101, label %267, label %88, !prof !391, !llvm.loop !392

102:                                              ; preds = %86, %102
  %103 = phi i64 [ %104, %102 ], [ 2, %86 ]
  %104 = add nsw i64 %103, -1
  %105 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 3, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !152
  %107 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 %104
  %108 = load i64, ptr %107, align 8, !tbaa !152
  %109 = or i64 %108, %106
  %110 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 3, i64 %104
  store i64 %109, ptr %110, align 8, !tbaa !152
  %111 = icmp eq i64 %104, 0
  br i1 %111, label %267, label %102, !prof !394, !llvm.loop !395

112:                                              ; preds = %82
  br i1 %81, label %113, label %117, !prof !397

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !92
  %116 = icmp ult i32 %115, %78
  br i1 %116, label %118, label %117, !prof !398

117:                                              ; preds = %80, %113, %112
  br label %118

118:                                              ; preds = %113, %117
  %119 = phi ptr [ %4, %117 ], [ %70, %113 ]
  %120 = icmp eq i8 %73, 0
  %121 = and i1 %81, %120
  br i1 %121, label %122, label %141, !prof !400

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !92
  %125 = getelementptr inbounds %struct.bitmap_element_def, ptr %119, i64 0, i32 2
  %126 = load i32, ptr %125, align 8, !tbaa !92
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %141, !prof !401

128:                                              ; preds = %122, %137
  %129 = phi i64 [ %139, %137 ], [ 1, %122 ]
  %130 = phi i8 [ %138, %137 ], [ 0, %122 ]
  %131 = getelementptr inbounds %struct.bitmap_element_def, ptr %119, i64 0, i32 3, i64 %129
  %132 = load i64, ptr %131, align 8, !tbaa !152
  %133 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 3, i64 %129
  %134 = load i64, ptr %133, align 8, !tbaa !152
  %135 = icmp eq i64 %132, %134
  br i1 %135, label %137, label %136, !prof !402

136:                                              ; preds = %128
  store i64 %132, ptr %133, align 8, !tbaa !152
  br label %137

137:                                              ; preds = %136, %128
  %138 = phi i8 [ 1, %136 ], [ %130, %128 ]
  %139 = add nsw i64 %129, -1
  %140 = icmp eq i64 %129, 0
  br i1 %140, label %267, label %128, !prof !403, !llvm.loop !271

141:                                              ; preds = %122, %118
  %142 = getelementptr inbounds %struct.bitmap_element_def, ptr %119, i64 0, i32 2
  %143 = load i32, ptr %142, align 8, !tbaa !92
  br i1 %81, label %253, label %144, !prof !404

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !86
  %147 = icmp eq ptr %146, null
  br i1 %147, label %208, label %148, !prof !125

148:                                              ; preds = %144
  %149 = load ptr, ptr %146, align 8, !tbaa !126
  %150 = icmp eq ptr %149, null
  br i1 %150, label %161, label %151, !prof !127

151:                                              ; preds = %148
  %152 = load ptr, ptr %149, align 8, !tbaa !90
  %153 = icmp eq ptr %152, null
  br i1 %153, label %158, label %154, !prof !128

154:                                              ; preds = %151
  store ptr %152, ptr %146, align 8, !tbaa !126
  %155 = getelementptr inbounds %struct.bitmap_element_def, ptr %149, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !87
  %157 = getelementptr inbounds %struct.bitmap_element_def, ptr %152, i64 0, i32 1
  store ptr %156, ptr %157, align 8, !tbaa !87
  br label %223

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.bitmap_element_def, ptr %149, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !87
  store ptr %160, ptr %146, align 8, !tbaa !126
  br label %223

161:                                              ; preds = %148
  %162 = getelementptr inbounds %struct.bitmap_obstack, ptr %146, i64 0, i32 2, i32 5
  store i64 40, ptr %162, align 8, !tbaa !106
  %163 = getelementptr inbounds %struct.bitmap_obstack, ptr %146, i64 0, i32 2, i32 4
  %164 = load ptr, ptr %163, align 8, !tbaa !108
  %165 = getelementptr inbounds %struct.bitmap_obstack, ptr %146, i64 0, i32 2, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !110
  %167 = ptrtoint ptr %164 to i64
  %168 = ptrtoint ptr %166 to i64
  %169 = sub i64 %167, %168
  %170 = icmp slt i64 %169, 40
  br i1 %170, label %171, label %173, !prof !129

171:                                              ; preds = %161
  %172 = getelementptr inbounds %struct.bitmap_obstack, ptr %146, i64 0, i32 2
  tail call void @_obstack_newchunk(ptr noundef nonnull %172, i32 noundef 40) #24
  br label %173

173:                                              ; preds = %171, %161
  %174 = load i64, ptr %162, align 8, !tbaa !106
  %175 = load ptr, ptr %165, align 8, !tbaa !110
  %176 = getelementptr inbounds i8, ptr %175, i64 %174
  store ptr %176, ptr %165, align 8, !tbaa !110
  %177 = getelementptr inbounds %struct.bitmap_obstack, ptr %146, i64 0, i32 2, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !109
  %179 = icmp eq ptr %176, %178
  br i1 %179, label %180, label %184, !prof !130

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.bitmap_obstack, ptr %146, i64 0, i32 2, i32 10
  %182 = load i8, ptr %181, align 8
  %183 = or i8 %182, 2
  store i8 %183, ptr %181, align 8
  br label %184

184:                                              ; preds = %180, %173
  %185 = load ptr, ptr %177, align 8, !tbaa !109
  %186 = ptrtoint ptr %185 to i64
  store i64 %186, ptr %162, align 8, !tbaa !106
  %187 = load ptr, ptr %165, align 8, !tbaa !110
  %188 = ptrtoint ptr %187 to i64
  %189 = getelementptr inbounds %struct.bitmap_obstack, ptr %146, i64 0, i32 2, i32 6
  %190 = load i32, ptr %189, align 8, !tbaa !117
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %191, %188
  %193 = xor i32 %190, -1
  %194 = sext i32 %193 to i64
  %195 = and i64 %192, %194
  %196 = inttoptr i64 %195 to ptr
  store ptr %196, ptr %165, align 8, !tbaa !110
  %197 = getelementptr inbounds %struct.bitmap_obstack, ptr %146, i64 0, i32 2, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !103
  %199 = ptrtoint ptr %198 to i64
  %200 = sub i64 %195, %199
  %201 = load ptr, ptr %163, align 8, !tbaa !108
  %202 = ptrtoint ptr %201 to i64
  %203 = sub i64 %202, %199
  %204 = icmp sgt i64 %200, %203
  br i1 %204, label %205, label %206, !prof !130

205:                                              ; preds = %184
  store ptr %201, ptr %165, align 8, !tbaa !110
  br label %206

206:                                              ; preds = %205, %184
  %207 = load ptr, ptr %165, align 8, !tbaa !110
  store ptr %207, ptr %177, align 8, !tbaa !109
  br label %223

208:                                              ; preds = %144
  %209 = load ptr, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %210 = icmp eq ptr %209, null
  br i1 %210, label %221, label %211, !prof !131

211:                                              ; preds = %208
  %212 = load ptr, ptr %209, align 8, !tbaa !90
  %213 = icmp eq ptr %212, null
  br i1 %213, label %218, label %214, !prof !132

214:                                              ; preds = %211
  store ptr %212, ptr @bitmap_ggc_free, align 8, !tbaa !63
  %215 = getelementptr inbounds %struct.bitmap_element_def, ptr %209, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !87
  %217 = getelementptr inbounds %struct.bitmap_element_def, ptr %212, i64 0, i32 1
  store ptr %216, ptr %217, align 8, !tbaa !87
  br label %223

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.bitmap_element_def, ptr %209, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !87
  store ptr %220, ptr @bitmap_ggc_free, align 8, !tbaa !63
  br label %223

221:                                              ; preds = %208
  %222 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #24
  br label %223

223:                                              ; preds = %221, %218, %214, %206, %158, %154
  %224 = phi ptr [ %149, %154 ], [ %149, %158 ], [ %185, %206 ], [ %209, %214 ], [ %209, %218 ], [ %222, %221 ]
  %225 = getelementptr inbounds %struct.bitmap_element_def, ptr %224, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %225, i8 0, i64 16, i1 false)
  %226 = getelementptr inbounds %struct.bitmap_element_def, ptr %224, i64 0, i32 2
  store i32 %143, ptr %226, align 8, !tbaa !92
  %227 = icmp eq ptr %71, null
  br i1 %227, label %228, label %241, !prof !223

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !91
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %234, !prof !224

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store ptr %224, ptr %229, align 8, !tbaa !91
  store i32 %143, ptr %233, align 8, !tbaa !94
  br label %234

234:                                              ; preds = %232, %228
  %235 = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %235, ptr %224, align 8, !tbaa !90
  %236 = icmp eq ptr %235, null
  br i1 %236, label %239, label %237, !prof !224

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.bitmap_element_def, ptr %235, i64 0, i32 1
  store ptr %224, ptr %238, align 8, !tbaa !87
  br label %239

239:                                              ; preds = %237, %234
  store ptr %224, ptr %0, align 8, !tbaa !83
  %240 = getelementptr inbounds %struct.bitmap_element_def, ptr %224, i64 0, i32 1
  store ptr null, ptr %240, align 8, !tbaa !87
  br label %255

241:                                              ; preds = %223
  %242 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !91
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %246, !prof !225

245:                                              ; preds = %241
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #24
  br label %246

246:                                              ; preds = %245, %241
  %247 = load ptr, ptr %71, align 8, !tbaa !90
  store ptr %247, ptr %224, align 8, !tbaa !90
  %248 = icmp eq ptr %247, null
  br i1 %248, label %251, label %249, !prof !226

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.bitmap_element_def, ptr %247, i64 0, i32 1
  store ptr %224, ptr %250, align 8, !tbaa !87
  br label %251

251:                                              ; preds = %249, %246
  store ptr %224, ptr %71, align 8, !tbaa !90
  %252 = getelementptr inbounds %struct.bitmap_element_def, ptr %224, i64 0, i32 1
  store ptr %71, ptr %252, align 8, !tbaa !87
  br label %255

253:                                              ; preds = %141
  %254 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  store i32 %143, ptr %254, align 8, !tbaa !92
  br label %255

255:                                              ; preds = %253, %251, %239
  %256 = phi ptr [ %70, %253 ], [ %224, %239 ], [ %224, %251 ]
  %257 = getelementptr inbounds %struct.bitmap_element_def, ptr %119, i64 0, i32 3
  br label %263

258:                                              ; preds = %69
  %259 = icmp ugt i32 %77, %78
  br i1 %259, label %260, label %267, !prof !509

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3
  %262 = tail call fastcc ptr @bitmap_elt_insert_after(ptr noundef nonnull %0, ptr noundef %71, i32 noundef %78)
  br label %263

263:                                              ; preds = %260, %255
  %264 = phi ptr [ %257, %255 ], [ %261, %260 ]
  %265 = phi ptr [ %256, %255 ], [ %262, %260 ]
  %266 = getelementptr inbounds %struct.bitmap_element_def, ptr %265, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %266, ptr noundef nonnull align 8 dereferenceable(16) %264, i64 16, i1 false)
  br label %267

267:                                              ; preds = %137, %102, %98, %263, %258
  %268 = phi i8 [ %73, %258 ], [ 1, %263 ], [ %99, %98 ], [ 1, %102 ], [ %138, %137 ]
  %269 = load ptr, ptr %72, align 8, !tbaa !63
  %270 = load ptr, ptr %269, align 8, !tbaa !63
  %271 = load i32, ptr %16, align 8, !tbaa !92
  %272 = icmp ult i32 %77, %271
  br i1 %272, label %69, label %273, !prof !510, !llvm.loop !511

273:                                              ; preds = %38, %35, %267, %65
  %274 = phi ptr [ %23, %65 ], [ %270, %267 ], [ %23, %35 ], [ %23, %38 ]
  %275 = phi ptr [ %66, %65 ], [ %66, %267 ], [ %33, %38 ], [ null, %35 ]
  %276 = phi ptr [ %67, %65 ], [ %67, %267 ], [ null, %38 ], [ %32, %35 ]
  %277 = phi ptr [ %20, %65 ], [ %269, %267 ], [ %20, %35 ], [ %20, %38 ]
  %278 = phi ptr [ %19, %65 ], [ %269, %267 ], [ %19, %35 ], [ %19, %38 ]
  %279 = phi i8 [ %18, %65 ], [ %268, %267 ], [ %18, %35 ], [ %18, %38 ]
  %280 = phi i32 [ 2, %65 ], [ 0, %267 ], [ 6, %35 ], [ 6, %38 ]
  switch i32 %280, label %300 [
    i32 0, label %281
    i32 2, label %281
    i32 6, label %285
  ], !prof !512

281:                                              ; preds = %273, %273
  %282 = icmp ne ptr %275, null
  %283 = icmp ne ptr %276, null
  %284 = select i1 %282, i1 %283, i1 false, !prof !513
  br i1 %284, label %17, label %285, !prof !514, !llvm.loop !506

285:                                              ; preds = %273, %281
  %286 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !91
  %288 = icmp eq ptr %287, null
  %289 = load ptr, ptr %0, align 8, !tbaa !83
  %290 = icmp ne ptr %289, null
  %291 = xor i1 %288, %290
  br i1 %291, label %293, label %292, !prof !515

292:                                              ; preds = %285
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2018, ptr noundef nonnull @.str.1) #24
  br label %293

293:                                              ; preds = %285, %292
  %294 = load ptr, ptr %286, align 8, !tbaa !91
  %295 = icmp eq ptr %294, null
  br i1 %295, label %300, label %296, !prof !516

296:                                              ; preds = %293
  %297 = getelementptr inbounds %struct.bitmap_element_def, ptr %294, i64 0, i32 2
  %298 = load i32, ptr %297, align 8, !tbaa !92
  %299 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 2
  store i32 %298, ptr %299, align 8, !tbaa !94
  br label %300

300:                                              ; preds = %273, %293, %296, %11, %9
  %301 = phi i8 [ %10, %9 ], [ 0, %11 ], [ %279, %296 ], [ %279, %293 ], [ undef, %273 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #24
  ret i8 %301
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_bitmap_file(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #20 !prof !62 {
  %3 = load ptr, ptr %1, align 8, !tbaa !83
  %4 = getelementptr inbounds %struct.bitmap_head_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.bitmap_head_def, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !94
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %5, i32 noundef %7)
  %9 = load ptr, ptr %1, align 8, !tbaa !63
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %2, %52
  %12 = phi ptr [ %54, %52 ], [ %9, %2 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !92
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %12, ptr noundef %13, ptr noundef %15, i32 noundef %17)
  br label %19

19:                                               ; preds = %11, %49
  %20 = phi i64 [ 0, %11 ], [ %50, %49 ]
  %21 = phi i32 [ 26, %11 ], [ %46, %49 ]
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3, i64 %20
  %23 = trunc i64 %20 to i32
  %24 = shl i32 %23, 6
  br label %25

25:                                               ; preds = %19, %45
  %26 = phi i64 [ 0, %19 ], [ %47, %45 ]
  %27 = phi i32 [ %21, %19 ], [ %46, %45 ]
  %28 = load i64, ptr %22, align 8, !tbaa !152
  %29 = shl nuw i64 1, %26
  %30 = and i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %25
  %33 = icmp ugt i32 %27, 70
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 4, i64 1, ptr %0)
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ 24, %34 ], [ %27, %32 ]
  %38 = load i32, ptr %16, align 8, !tbaa !92
  %39 = shl i32 %38, 7
  %40 = add nuw nsw i32 %39, %24
  %41 = trunc i64 %26 to i32
  %42 = add nuw nsw i32 %40, %41
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %42)
  %44 = add nuw nsw i32 %37, 4
  br label %45

45:                                               ; preds = %25, %36
  %46 = phi i32 [ %44, %36 ], [ %27, %25 ]
  %47 = add nuw nsw i64 %26, 1
  %48 = icmp eq i64 %47, 64
  br i1 %48, label %49, label %25, !llvm.loop !517

49:                                               ; preds = %45
  %50 = add nuw nsw i64 %20, 1
  %51 = icmp eq i64 %20, 0
  br i1 %51, label %19, label %52, !llvm.loop !518

52:                                               ; preds = %49
  %53 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 3, i64 1, ptr %0)
  %54 = load ptr, ptr %12, align 8, !tbaa !63
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %11, !llvm.loop !519

56:                                               ; preds = %52, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_bitmap(ptr nocapture noundef readonly %0) local_unnamed_addr #20 !prof !62 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !63
  tail call void @debug_bitmap_file(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @bitmap_print(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #20 !prof !62 {
  %5 = tail call i32 @fputs(ptr noundef %2, ptr noundef %0)
  %6 = load ptr, ptr %1, align 8, !tbaa !83
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @bitmap_zero_bits, ptr %6
  %9 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !92
  %11 = shl i32 %10, 7
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !152
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = or disjoint i32 %11, %15
  br label %17

17:                                               ; preds = %79, %4
  %18 = phi i64 [ %13, %4 ], [ %81, %79 ]
  %19 = phi i32 [ 0, %4 ], [ %75, %79 ]
  %20 = phi i32 [ %16, %4 ], [ %82, %79 ]
  %21 = phi ptr [ %8, %4 ], [ %77, %79 ]
  %22 = phi ptr [ @.str.7, %4 ], [ @.str.9, %79 ]
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %52, %17
  %25 = phi i64 [ %18, %17 ], [ %57, %52 ]
  %26 = phi i32 [ %19, %17 ], [ %53, %52 ]
  %27 = phi i32 [ %20, %17 ], [ %54, %52 ]
  %28 = phi ptr [ %21, %17 ], [ %45, %52 ]
  %29 = and i64 %25, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %24, %31
  %32 = phi i32 [ %35, %31 ], [ %27, %24 ]
  %33 = phi i64 [ %34, %31 ], [ %25, %24 ]
  %34 = lshr exact i64 %33, 1
  %35 = add i32 %32, 1
  %36 = and i64 %33, 2
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %31, label %73, !llvm.loop !520

38:                                               ; preds = %17
  %39 = add i32 %20, 63
  %40 = and i32 %39, -64
  %41 = add i32 %19, 1
  br label %42

42:                                               ; preds = %69, %38
  %43 = phi i64 [ %18, %38 ], [ %64, %69 ]
  %44 = phi i32 [ %40, %38 ], [ %72, %69 ]
  %45 = phi ptr [ %21, %38 ], [ %67, %69 ]
  %46 = phi i32 [ %41, %38 ], [ 0, %69 ]
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %63, label %48

48:                                               ; preds = %42
  %49 = add i32 %44, 128
  %50 = shl i32 %46, 6
  %51 = sub i32 %49, %50
  br label %52

52:                                               ; preds = %48, %59
  %53 = phi i32 [ %61, %59 ], [ %46, %48 ]
  %54 = phi i32 [ %60, %59 ], [ %44, %48 ]
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 3, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !152
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %24

59:                                               ; preds = %52
  %60 = add i32 %54, 64
  %61 = add i32 %53, 1
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %52, !llvm.loop !521

63:                                               ; preds = %59, %42
  %64 = phi i64 [ %43, %42 ], [ %57, %59 ]
  %65 = phi i32 [ %44, %42 ], [ %51, %59 ]
  %66 = phi i32 [ %46, %42 ], [ 2, %59 ]
  %67 = load ptr, ptr %45, align 8, !tbaa !90
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %67, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !92
  %72 = shl i32 %71, 7
  br label %42, !llvm.loop !522

73:                                               ; preds = %63, %31, %24
  %74 = phi i64 [ %25, %24 ], [ %34, %31 ], [ %64, %63 ]
  %75 = phi i32 [ %26, %24 ], [ %26, %31 ], [ %66, %63 ]
  %76 = phi i32 [ %27, %24 ], [ %35, %31 ], [ %65, %63 ]
  %77 = phi ptr [ %28, %24 ], [ %28, %31 ], [ %67, %63 ]
  %78 = phi i1 [ false, %24 ], [ false, %31 ], [ true, %63 ]
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %22, i32 noundef %76)
  %81 = lshr i64 %74, 1
  %82 = add i32 %76, 1
  br label %17, !llvm.loop !523

83:                                               ; preds = %73
  %84 = tail call i32 @fputs(ptr noundef %3, ptr noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @dump_bitmap_statistics() local_unnamed_addr #21 !prof !62 {
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @bitmap_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #19 !prof !524 {
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %7, !prof !525

4:                                                ; preds = %14
  %5 = load ptr, ptr %8, align 8, !tbaa !63
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7, !prof !526, !llvm.loop !527

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = phi i64 [ %19, %4 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !92
  %12 = zext i32 %11 to i64
  %13 = xor i64 %9, %12
  br label %14

14:                                               ; preds = %7, %14
  %15 = phi i64 [ 0, %7 ], [ %20, %14 ]
  %16 = phi i64 [ %13, %7 ], [ %19, %14 ]
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 3, i64 %15
  %18 = load i64, ptr %17, align 8, !tbaa !152
  %19 = xor i64 %18, %16
  %20 = add nuw nsw i64 %15, 1
  %21 = icmp eq i64 %20, 2
  br i1 %21, label %4, label %14, !prof !528, !llvm.loop !529

22:                                               ; preds = %4
  %23 = trunc i64 %19 to i32
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi i32 [ 0, %1 ], [ %23, %22 ]
  ret i32 %25
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #23

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { nofree nounwind }
attributes #24 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!61}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!35 = !{ptr @bitmap_obstack_initialize, ptr @_obstack_begin, i64 1663}
!36 = !{ptr @bitmap_obstack_release, ptr @obstack_free, i64 1660}
!37 = !{ptr @bitmap_obstack_alloc_stat, ptr @_obstack_newchunk, i64 72819}
!38 = !{ptr @bitmap_gc_alloc_stat, ptr @ggc_alloc_stat, i64 43950}
!39 = !{ptr @bitmap_copy, ptr @_obstack_newchunk, i64 43273}
!40 = !{ptr @bitmap_copy, ptr @ggc_alloc_stat, i64 316}
!41 = !{ptr @bitmap_set_bit, ptr @_obstack_newchunk, i64 59400}
!42 = !{ptr @bitmap_set_bit, ptr @ggc_alloc_stat, i64 433}
!43 = !{ptr @bitmap_and, ptr @_obstack_newchunk, i64 6951}
!44 = !{ptr @bitmap_and, ptr @ggc_alloc_stat, i64 51}
!45 = !{ptr @bitmap_elt_insert_after, ptr @_obstack_newchunk, i64 18}
!46 = !{ptr @bitmap_and_compl, ptr @_obstack_newchunk, i64 531}
!47 = !{ptr @bitmap_and_compl, ptr @ggc_alloc_stat, i64 3}
!48 = !{ptr @bitmap_set_range, ptr @_obstack_newchunk, i64 221}
!49 = !{ptr @bitmap_set_range, ptr @ggc_alloc_stat, i64 2}
!50 = !{ptr @bitmap_set_range, ptr @bitmap_elt_insert_after, i64 73}
!51 = !{ptr @bitmap_ior, ptr @bitmap_elt_insert_after, i64 7}
!52 = !{ptr @bitmap_ior, ptr @_obstack_newchunk, i64 23}
!53 = !{ptr @bitmap_ior_into, ptr @_obstack_newchunk, i64 26762}
!54 = !{ptr @bitmap_ior_into, ptr @ggc_alloc_stat, i64 195}
!55 = !{ptr @bitmap_ior_and_compl, ptr @bitmap_elt_insert_after, i64 2255}
!56 = !{ptr @bitmap_ior_and_compl, ptr @_obstack_newchunk, i64 7538}
!57 = !{ptr @bitmap_ior_and_compl, ptr @ggc_alloc_stat, i64 55}
!58 = !{ptr @bitmap_ior_and_compl, ptr @bitmap_and_compl, i64 169030}
!59 = !{ptr @bitmap_ior_and_into, ptr @_obstack_newchunk, i64 56}
!60 = !{ptr @bitmap_ior_and_into, ptr @bitmap_elt_insert_after, i64 24}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !{!68, !64, i64 8}
!68 = !{!"_IO_FILE", !69, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !64, i64 96, !64, i64 104, !69, i64 112, !69, i64 116, !70, i64 120, !71, i64 128, !65, i64 130, !65, i64 131, !64, i64 136, !70, i64 144, !64, i64 152, !64, i64 160, !64, i64 168, !64, i64 176, !70, i64 184, !69, i64 192, !65, i64 196}
!69 = !{!"int", !65, i64 0}
!70 = !{!"long", !65, i64 0}
!71 = !{!"short", !65, i64 0}
!72 = !{!68, !64, i64 16}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{!65, !65, i64 0}
!75 = !{!68, !64, i64 40}
!76 = !{!68, !64, i64 48}
!77 = !{!68, !69, i64 0}
!78 = !{!69, !69, i64 0}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!"function_entry_count", i64 42874309}
!83 = !{!84, !64, i64 0}
!84 = !{!"bitmap_head_def", !64, i64 0, !64, i64 8, !69, i64 16, !64, i64 24}
!85 = !{!"branch_weights", i32 19335366, i32 23538943}
!86 = !{!84, !64, i64 24}
!87 = !{!88, !64, i64 8}
!88 = !{!"bitmap_element_def", !64, i64 0, !64, i64 8, !69, i64 16, !65, i64 24}
!89 = !{!"branch_weights", i32 45789238, i32 1104236}
!90 = !{!88, !64, i64 0}
!91 = !{!84, !64, i64 8}
!92 = !{!88, !69, i64 16}
!93 = !{!"branch_weights", i32 0, i32 1104236}
!94 = !{!84, !69, i64 16}
!95 = !{!"branch_weights", i32 92825, i32 46800649}
!96 = !{!"bitmap.c;bitmap_elt_clear_from"}
!97 = !{!"branch_weights", i32 15239789, i32 46893474}
!98 = !{!"function_entry_count", i64 1663}
!99 = !{!"branch_weights", i32 79, i32 1584}
!100 = !{!"branch_weights", i32 79, i32 0}
!101 = !{!"function_entry_count", i64 1660}
!102 = !{!"branch_weights", i32 79, i32 1581}
!103 = !{!104, !64, i64 24}
!104 = !{!"bitmap_obstack", !64, i64 0, !64, i64 8, !105, i64 16}
!105 = !{!"obstack", !70, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !70, i64 40, !69, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !69, i64 80, !69, i64 80, !69, i64 80}
!106 = !{!104, !70, i64 56}
!107 = !{!"branch_weights", i32 0, i32 1660}
!108 = !{!104, !64, i64 48}
!109 = !{!104, !64, i64 32}
!110 = !{!104, !64, i64 40}
!111 = !{!"function_entry_count", i64 19278775}
!112 = !{!"branch_weights", i32 10152469, i32 9126306}
!113 = !{!104, !64, i64 8}
!114 = !{!"branch_weights", i32 9015697, i32 10263078}
!115 = !{!"branch_weights", i32 72819, i32 8942878}
!116 = !{!"branch_weights", i32 0, i32 9015697}
!117 = !{!104, !69, i64 64}
!118 = !{!"function_entry_count", i64 43950}
!119 = !{!"function_entry_count", i64 14239009}
!120 = !{!"branch_weights", i32 579361, i32 13659648}
!121 = !{!"branch_weights", i32 3950037, i32 9709611}
!122 = !{!"function_entry_count", i64 12425566}
!123 = !{!"branch_weights", i32 5122166, i32 7303400}
!124 = !{!"branch_weights", i32 1, i32 12425565}
!125 = !{!"branch_weights", i32 93918, i32 79616099}
!126 = !{!104, !64, i64 0}
!127 = !{!"branch_weights", i32 14768290, i32 64847809}
!128 = !{!"branch_weights", i32 49170598, i32 15677211}
!129 = !{!"branch_weights", i32 144713, i32 14623577}
!130 = !{!"branch_weights", i32 0, i32 14768290}
!131 = !{!"branch_weights", i32 1056, i32 92862}
!132 = !{!"branch_weights", i32 92825, i32 37}
!133 = !{!"branch_weights", i32 11646552, i32 12188978}
!134 = !{!"branch_weights", i32 12425565, i32 11409965}
!135 = distinct !{!135, !80, !81}
!136 = !{!"function_entry_count", i64 125491430}
!137 = !{!"branch_weights", i32 14627148, i32 110864282}
!138 = !{!"branch_weights", i32 107464121, i32 3400161}
!139 = !{!"branch_weights", i32 1039951, i32 2360210}
!140 = !{!"branch_weights", i32 602085, i32 3077016}
!141 = !{!"branch_weights", i32 2639150, i32 437866}
!142 = distinct !{!142, !80, !81}
!143 = !{!"branch_weights", i32 300314, i32 2059896}
!144 = !{!"branch_weights", i32 45909, i32 1773598}
!145 = !{!"branch_weights", i32 1519193, i32 254405}
!146 = distinct !{!146, !80, !81}
!147 = !{!"branch_weights", i32 1397036, i32 1120491}
!148 = !{!"branch_weights", i32 457631, i32 662860}
!149 = distinct !{!149, !80, !81}
!150 = !{!"branch_weights", i32 1542579, i32 1857582}
!151 = !{!"branch_weights", i32 16484730, i32 109006700}
!152 = !{!70, !70, i64 0}
!153 = !{!"branch_weights", i32 27136981, i32 81869719}
!154 = !{!"branch_weights", i32 3548324, i32 105458376}
!155 = !{!"branch_weights", i32 1006384, i32 2541940}
!156 = !{!"branch_weights", i32 2078103, i32 1470221}
!157 = !{!"branch_weights", i32 3548324, i32 0}
!158 = !{!"branch_weights", i32 869477, i32 2678847}
!159 = !{!"branch_weights", i32 0, i32 3548324}
!160 = !{!"function_entry_count", i64 178091693}
!161 = !{!"branch_weights", i32 26002680, i32 152089013}
!162 = !{!"branch_weights", i32 136895803, i32 15193210}
!163 = !{!"branch_weights", i32 8839755, i32 6353455}
!164 = !{!"branch_weights", i32 6598122, i32 183919233}
!165 = !{!"branch_weights", i32 181677600, i32 2241633}
!166 = !{!"branch_weights", i32 2603320, i32 3750135}
!167 = !{!"branch_weights", i32 740771, i32 60977807}
!168 = !{!"branch_weights", i32 59115258, i32 1862549}
!169 = !{!"branch_weights", i32 807402, i32 51443804}
!170 = !{!"branch_weights", i32 48501071, i32 2942733}
!171 = !{!"branch_weights", i32 8477427, i32 6715783}
!172 = !{!"branch_weights", i32 32718463, i32 145373230}
!173 = !{!"branch_weights", i32 26002680, i32 6715783}
!174 = !{!"branch_weights", i32 1959548, i32 4756235}
!175 = !{!"branch_weights", i32 760610, i32 1198938}
!176 = !{!"branch_weights", i32 0, i32 1198938}
!177 = distinct !{!177, !80, !81}
!178 = !{!"branch_weights", i32 4051737, i32 704498}
!179 = !{!"branch_weights", i32 0, i32 704498}
!180 = distinct !{!180, !80, !81}
!181 = !{!"branch_weights", i32 115538382, i32 29834848}
!182 = !{!"function_entry_count", i64 178942441}
!183 = !{!"branch_weights", i32 32864251, i32 146078190}
!184 = !{!"branch_weights", i32 120835175, i32 25243015}
!185 = !{!"branch_weights", i32 12902117, i32 12340898}
!186 = !{!"branch_weights", i32 9786121, i32 204609028}
!187 = !{!"branch_weights", i32 201493032, i32 3115996}
!188 = !{!"branch_weights", i32 3997994, i32 8342904}
!189 = !{!"branch_weights", i32 2643419, i32 36792831}
!190 = !{!"branch_weights", i32 35438256, i32 1354575}
!191 = !{!"branch_weights", i32 3370007, i32 53336360}
!192 = !{!"branch_weights", i32 48363463, i32 4972897}
!193 = !{!"branch_weights", i32 10191546, i32 15051469}
!194 = !{!"branch_weights", i32 47915720, i32 131026721}
!195 = !{!"function_entry_count", i64 63554}
!196 = !{!"branch_weights", i32 1, i32 63553}
!197 = !{!"branch_weights", i32 63553, i32 31715}
!198 = distinct !{!198, !80, !81}
!199 = !{!"branch_weights", i32 1333752, i32 190536}
!200 = distinct !{!200, !80, !81}
!201 = !{!"branch_weights", i32 95268, i32 95268}
!202 = distinct !{!202, !80, !81}
!203 = distinct !{!203, !80, !81}
!204 = !{!"function_entry_count", i64 12027698}
!205 = !{!"branch_weights", i32 0, i32 12027698}
!206 = !{!"branch_weights", i32 5977541, i32 12027698}
!207 = !{!"branch_weights", i32 0, i32 18005239}
!208 = distinct !{!208, !80, !81}
!209 = !{!"branch_weights", i32 5996921, i32 6030777}
!210 = !{!"branch_weights", i32 6004665, i32 6023033}
!211 = !{!"branch_weights", i32 6011904, i32 6015794}
!212 = !{!"branch_weights", i32 6012856, i32 6014842}
!213 = !{!"branch_weights", i32 6013495, i32 6014203}
!214 = distinct !{!214, !80, !81}
!215 = distinct !{!215, !80, !81}
!216 = !{!"function_entry_count", i64 9345879}
!217 = !{!"branch_weights", i32 0, i32 9345879}
!218 = !{!"branch_weights", i32 13671030, i32 8077842}
!219 = !{!"branch_weights", i32 9345878, i32 1}
!220 = !{!"branch_weights", i32 1982283, i32 10420710}
!221 = !{!"branch_weights", i32 1286835, i32 9133875}
!222 = !{!"branch_weights", i32 3828752, i32 5305123}
!223 = !{!"branch_weights", i32 13167031, i32 9867196}
!224 = !{!"branch_weights", i32 13001615, i32 165416}
!225 = !{!"branch_weights", i32 0, i32 9867196}
!226 = !{!"branch_weights", i32 8960071, i32 907125}
!227 = !{!"branch_weights", i32 9133875, i32 9133875}
!228 = distinct !{!228, !80, !81}
!229 = !{!"branch_weights", i32 5551269, i32 3582606}
!230 = !{!"branch_weights", i32 3057115, i32 9345878}
!231 = distinct !{!231, !80, !81}
!232 = !{!"branch_weights", i32 9345879, i32 0}
!233 = !{!"branch_weights", i32 5803624, i32 3542255}
!234 = !{!"function_entry_count", i64 9792}
!235 = !{!"bitmap.c;bitmap_elt_insert_after"}
!236 = !{!"function_entry_count", i64 12232200}
!237 = !{!"branch_weights", i32 0, i32 12232200}
!238 = !{!"branch_weights", i32 19883504, i32 11684177}
!239 = !{!"branch_weights", i32 12232199, i32 1}
!240 = !{!"branch_weights", i32 539346, i32 18796135}
!241 = !{!"branch_weights", i32 8721, i32 530625}
!242 = !{!"branch_weights", i32 8571, i32 530775}
!243 = !{!"branch_weights", i32 8687, i32 530659}
!244 = !{!"branch_weights", i32 8571, i32 116}
!245 = !{!"branch_weights", i32 0, i32 539346}
!246 = !{!"branch_weights", i32 24796, i32 18771339}
!247 = !{!"branch_weights", i32 18771339, i32 18771339}
!248 = distinct !{!248, !80, !81}
!249 = !{!"branch_weights", i32 3944, i32 18767395}
!250 = !{!"branch_weights", i32 3905, i32 39}
!251 = !{!"branch_weights", i32 3686, i32 258}
!252 = !{!"branch_weights", i32 3647, i32 258}
!253 = !{!"branch_weights", i32 0, i32 3944}
!254 = !{!"branch_weights", i32 7103282, i32 12232199}
!255 = distinct !{!255, !80, !81}
!256 = !{!"branch_weights", i32 12232200, i32 0}
!257 = !{!"branch_weights", i32 754330, i32 11477870}
!258 = !{!"branch_weights", i32 11477870, i32 0}
!259 = !{!"function_entry_count", i64 543016}
!260 = !{!"branch_weights", i32 0, i32 543016}
!261 = !{!"branch_weights", i32 1, i32 543015}
!262 = !{!"branch_weights", i32 191104, i32 233837}
!263 = !{!"branch_weights", i32 13794, i32 220043}
!264 = !{!"branch_weights", i32 233837, i32 0}
!265 = distinct !{!265, !80, !81}
!266 = !{!"branch_weights", i32 14800, i32 205243}
!267 = !{!"branch_weights", i32 302701, i32 137040}
!268 = !{!"branch_weights", i32 302683, i32 18}
!269 = !{!"branch_weights", i32 604840, i32 526}
!270 = !{!"branch_weights", i32 302683, i32 302683}
!271 = distinct !{!271, !80, !81}
!272 = !{!"branch_weights", i32 20, i32 137038}
!273 = !{!"branch_weights", i32 202161, i32 3082}
!274 = !{!"branch_weights", i32 80964, i32 124279}
!275 = !{!"branch_weights", i32 80953, i32 11}
!276 = !{!"branch_weights", i32 161496, i32 410}
!277 = !{!"branch_weights", i32 80953, i32 80953}
!278 = distinct !{!278, !80, !81}
!279 = !{!"branch_weights", i32 11, i32 124279}
!280 = !{!"branch_weights", i32 2, i32 9}
!281 = !{!"branch_weights", i32 124290, i32 124290}
!282 = distinct !{!282, !80, !81}
!283 = !{!"branch_weights", i32 4390, i32 119900}
!284 = !{!"branch_weights", i32 3163, i32 1227}
!285 = !{!"branch_weights", i32 4390, i32 0}
!286 = !{!"branch_weights", i32 3163, i32 0}
!287 = !{!"branch_weights", i32 0, i32 4390}
!288 = !{!"branch_weights", i32 4687, i32 200556}
!289 = !{!"branch_weights", i32 543015, i32 101969}
!290 = distinct !{!290, !80, !81}
!291 = !{!"branch_weights", i32 539786, i32 3230}
!292 = !{!"branch_weights", i32 543016, i32 0}
!293 = !{!"branch_weights", i32 120980, i32 422036}
!294 = !{!"function_entry_count", i64 2395518}
!295 = !{!"branch_weights", i32 0, i32 2395518}
!296 = !{!"branch_weights", i32 5889348, i32 1083119}
!297 = !{!"branch_weights", i32 2395517, i32 1}
!298 = !{!"branch_weights", i32 2199436, i32 2377513}
!299 = !{!"branch_weights", i32 306092, i32 2071421}
!300 = !{!"branch_weights", i32 2071421, i32 2071421}
!301 = distinct !{!301, !80, !81}
!302 = !{!"branch_weights", i32 29485, i32 2041936}
!303 = !{!"branch_weights", i32 273, i32 29212}
!304 = !{!"branch_weights", i32 8176, i32 21309}
!305 = !{!"branch_weights", i32 24510, i32 4975}
!306 = !{!"branch_weights", i32 7248, i32 17262}
!307 = !{!"branch_weights", i32 1, i32 24509}
!308 = !{!"branch_weights", i32 0, i32 29485}
!309 = !{!"branch_weights", i32 2181432, i32 2395517}
!310 = distinct !{!310, !80, !81}
!311 = !{!"branch_weights", i32 2395518, i32 0}
!312 = !{!"branch_weights", i32 214, i32 2395304}
!313 = !{!"branch_weights", i32 2395304, i32 0}
!314 = !{!"function_entry_count", i64 147071}
!315 = !{!"branch_weights", i32 0, i32 147071}
!316 = !{!"branch_weights", i32 102222, i32 44849}
!317 = !{!"branch_weights", i32 24291, i32 20558}
!318 = !{!"branch_weights", i32 14307, i32 6251}
!319 = !{!"branch_weights", i32 14307, i32 1}
!320 = !{!"branch_weights", i32 1, i32 0}
!321 = !{!"branch_weights", i32 6212, i32 39}
!322 = !{!"branch_weights", i32 6212, i32 1041}
!323 = !{!"branch_weights", i32 1041, i32 0}
!324 = !{!"branch_weights", i32 23, i32 16}
!325 = !{!"branch_weights", i32 0, i32 16}
!326 = !{!"branch_weights", i32 983, i32 19575}
!327 = !{!"branch_weights", i32 121797, i32 25274}
!328 = !{!"branch_weights", i32 102222, i32 19575}
!329 = !{!"branch_weights", i32 5260, i32 14315}
!330 = !{!"branch_weights", i32 5260, i32 0}
!331 = !{!"branch_weights", i32 14306, i32 9}
!332 = !{!"branch_weights", i32 0, i32 9}
!333 = !{!"branch_weights", i32 147071, i32 0}
!334 = !{!"branch_weights", i32 1, i32 147070}
!335 = !{!"branch_weights", i32 73, i32 147077}
!336 = !{!"branch_weights", i32 147077, i32 0}
!337 = !{!"branch_weights", i32 79, i32 147071}
!338 = !{!"branch_weights", i32 145950, i32 1200}
!339 = !{!"branch_weights", i32 145926, i32 1224}
!340 = !{!"branch_weights", i32 147070, i32 80}
!341 = distinct !{!341, !80, !81}
!342 = !{!"branch_weights", i32 140820, i32 6251}
!343 = !{!"function_entry_count", i64 4528536}
!344 = !{!"branch_weights", i32 0, i32 4528536}
!345 = !{!"branch_weights", i32 155924, i32 4372612}
!346 = !{!"branch_weights", i32 36618, i32 4335994}
!347 = !{!"branch_weights", i32 834398, i32 3501596}
!348 = !{!"branch_weights", i32 231189, i32 2968709}
!349 = !{!"branch_weights", i32 2365500, i32 603209}
!350 = !{!"branch_weights", i32 2314793, i32 1186803}
!351 = !{!"branch_weights", i32 63212, i32 4637271}
!352 = !{!"branch_weights", i32 2385690, i32 2251581}
!353 = !{!"branch_weights", i32 29594, i32 4395204}
!354 = !{!"branch_weights", i32 3237995, i32 1157209}
!355 = !{!"branch_weights", i32 868048, i32 3467946}
!356 = !{!"branch_weights", i32 3623870, i32 904666}
!357 = !{!"branch_weights", i32 155924, i32 3467946}
!358 = !{!"branch_weights", i32 2407803, i32 1060143}
!359 = !{!"branch_weights", i32 167762, i32 2240041}
!360 = !{!"branch_weights", i32 4117291, i32 2125645}
!361 = !{!"branch_weights", i32 1265122, i32 860523}
!362 = !{!"branch_weights", i32 219899, i32 640624}
!363 = !{!"branch_weights", i32 0, i32 860523}
!364 = !{!"branch_weights", i32 346495, i32 514028}
!365 = !{!"branch_weights", i32 0, i32 346495}
!366 = !{!"branch_weights", i32 364769, i32 900353}
!367 = !{!"branch_weights", i32 534729, i32 730393}
!368 = !{!"branch_weights", i32 954939, i32 310183}
!369 = !{!"branch_weights", i32 1959533, i32 153457}
!370 = distinct !{!370, !80, !81}
!371 = !{!"branch_weights", i32 1001325, i32 1111665}
!372 = !{!"branch_weights", i32 75279, i32 78178}
!373 = !{!"branch_weights", i32 65, i32 153392}
!374 = !{!"branch_weights", i32 119736, i32 33721}
!375 = !{!"branch_weights", i32 65, i32 119671}
!376 = !{!"branch_weights", i32 35, i32 119701}
!377 = !{!"branch_weights", i32 87559, i32 6155377}
!378 = distinct !{!378, !80, !81}
!379 = distinct !{!379, !80, !81}
!380 = distinct !{!380, !80, !81}
!381 = !{!"function_entry_count", i64 33122}
!382 = !{!"branch_weights", i32 0, i32 5502819}
!383 = !{!"branch_weights", i32 2569485, i32 12082535}
!384 = !{!"branch_weights", i32 5502818, i32 1}
!385 = !{!"branch_weights", i32 77643366, i32 0}
!386 = !{!"branch_weights", i32 55565168, i32 22078198}
!387 = !{!"branch_weights", i32 54801703, i32 763465}
!388 = !{!"branch_weights", i32 52186696, i32 2615007}
!389 = !{!"branch_weights", i32 52186695, i32 1}
!390 = !{!"branch_weights", i32 99314370, i32 5059020}
!391 = !{!"branch_weights", i32 52186695, i32 52186695}
!392 = distinct !{!392, !80, !81}
!393 = !{!"branch_weights", i32 2605311, i32 9697}
!394 = !{!"branch_weights", i32 2615008, i32 2615008}
!395 = distinct !{!395, !80, !81}
!396 = !{!"branch_weights", i32 22743539, i32 98124}
!397 = !{!"branch_weights", i32 763465, i32 21980074}
!398 = !{!"branch_weights", i32 465156, i32 298309}
!399 = !{!"branch_weights", i32 0, i32 22841663}
!400 = !{!"branch_weights", i32 4944168, i32 17897495}
!401 = !{!"branch_weights", i32 4805702, i32 138466}
!402 = !{!"branch_weights", i32 9611386, i32 18}
!403 = !{!"branch_weights", i32 4805702, i32 4805702}
!404 = !{!"branch_weights", i32 174114, i32 17861847}
!405 = !{!"branch_weights", i32 2525955, i32 6623246}
!406 = !{!"branch_weights", i32 2091015, i32 434940}
!407 = !{!"branch_weights", i32 478470, i32 6579716}
!408 = !{!"branch_weights", i32 434940, i32 43530}
!409 = !{!"branch_weights", i32 224393, i32 210547}
!410 = !{!"branch_weights", i32 6804109, i32 0}
!411 = !{!"branch_weights", i32 224393, i32 6579716}
!412 = !{!"branch_weights", i32 0, i32 224393}
!413 = !{!"branch_weights", i32 3646383, i32 5502818}
!414 = distinct !{!414, !80, !81}
!415 = !{!"branch_weights", i32 5502819, i32 0}
!416 = !{!"function_entry_count", i64 45585784}
!417 = !{!"branch_weights", i32 0, i32 45585784}
!418 = !{!"branch_weights", i32 1, i32 45585783}
!419 = !{!"branch_weights", i32 13388643, i32 198959768}
!420 = !{!"branch_weights", i32 46026799, i32 152932969}
!421 = !{!"branch_weights", i32 1072517, i32 151860452}
!422 = !{!"branch_weights", i32 45585783, i32 166762628}
!423 = distinct !{!423, !80, !81}
!424 = !{!"branch_weights", i32 45585784, i32 0}
!425 = !{!"branch_weights", i32 2146147, i32 43439637}
!426 = distinct !{!426, !80, !81}
!427 = distinct !{!427, !80, !81}
!428 = distinct !{!428, !80, !81}
!429 = distinct !{!429, !80, !81}
!430 = !{!"function_entry_count", i64 1810649}
!431 = !{!"branch_weights", i32 4093954, i32 1655918}
!432 = !{!"branch_weights", i32 1656183, i32 1}
!433 = !{!"branch_weights", i32 2437505, i32 1656183}
!434 = distinct !{!434, !80, !81}
!435 = !{!"branch_weights", i32 3940992, i32 152696}
!436 = !{!"branch_weights", i32 3939223, i32 7881312}
!437 = !{!"branch_weights", i32 7879543, i32 1769}
!438 = distinct !{!438, !80, !81}
!439 = !{!"branch_weights", i32 266, i32 1655918}
!440 = !{!"function_entry_count", i64 780758}
!441 = !{!"branch_weights", i32 553974, i32 576273}
!442 = !{!"branch_weights", i32 349757, i32 430733}
!443 = !{!"branch_weights", i32 560, i32 349197}
!444 = !{!"branch_weights", i32 253, i32 348944}
!445 = !{!"branch_weights", i32 348676, i32 697888}
!446 = !{!"branch_weights", i32 697620, i32 268}
!447 = distinct !{!447, !80, !81}
!448 = !{!"branch_weights", i32 0, i32 349757}
!449 = distinct !{!449, !80, !81}
!450 = distinct !{!450, !80, !81}
!451 = distinct !{!451, !80, !81}
!452 = !{!"function_entry_count", i64 11714459}
!453 = !{!"branch_weights", i32 0, i32 11714459}
!454 = !{!"branch_weights", i32 737868, i32 10976591}
!455 = !{!"branch_weights", i32 1218, i32 737868}
!456 = !{!"branch_weights", i32 1218, i32 736650}
!457 = !{!"branch_weights", i32 0, i32 1218}
!458 = !{!"branch_weights", i32 1218, i32 0}
!459 = !{!"branch_weights", i32 1218, i32 2436}
!460 = !{!"branch_weights", i32 2436, i32 0}
!461 = !{!"branch_weights", i32 0, i32 737868}
!462 = !{!"branch_weights", i32 737868, i32 0}
!463 = !{!"branch_weights", i32 5469697, i32 5506894}
!464 = !{!"branch_weights", i32 169030, i32 5337864}
!465 = !{!"branch_weights", i32 6951273, i32 7606886}
!466 = !{!"branch_weights", i32 5337863, i32 1}
!467 = !{i8 0, i8 2}
!468 = !{!"branch_weights", i32 9165701, i32 54594}
!469 = !{!"branch_weights", i32 7602420, i32 1617875}
!470 = !{!"branch_weights", i32 1240925, i32 6586716}
!471 = !{!"branch_weights", i32 1015704, i32 225221}
!472 = !{!"branch_weights", i32 6586716, i32 2633579}
!473 = !{!"branch_weights", i32 5613422, i32 973294}
!474 = !{!"branch_weights", i32 5334304, i32 279118}
!475 = !{!"branch_weights", i32 612, i32 5333692}
!476 = !{!"branch_weights", i32 5612810, i32 5612810}
!477 = distinct !{!477, !80, !81}
!478 = !{!"branch_weights", i32 266932, i32 5345878}
!479 = !{!"branch_weights", i32 5327816, i32 18062}
!480 = !{!"branch_weights", i32 5279079, i32 48737}
!481 = !{!"branch_weights", i32 1562987, i32 2044498}
!482 = !{!"branch_weights", i32 1283199, i32 279788}
!483 = !{!"branch_weights", i32 334382, i32 1989904}
!484 = !{!"branch_weights", i32 279788, i32 54594}
!485 = !{!"branch_weights", i32 25179, i32 254609}
!486 = !{!"branch_weights", i32 2015083, i32 0}
!487 = !{!"branch_weights", i32 25179, i32 1989904}
!488 = !{!"branch_weights", i32 0, i32 25179}
!489 = !{!"branch_weights", i32 266932, i32 8953363}
!490 = !{!"branch_weights", i32 3882432, i32 5337863}
!491 = distinct !{!491, !80, !81}
!492 = !{!"branch_weights", i32 5337864, i32 0}
!493 = !{!"branch_weights", i32 0, i32 5337864}
!494 = !{!"function_entry_count", i64 662925}
!495 = !{!"branch_weights", i32 0, i32 662925}
!496 = !{!"branch_weights", i32 1118321, i32 -863848401}
!497 = !{!"branch_weights", i32 419414, i32 251938}
!498 = !{!"branch_weights", i32 137865, i32 114073}
!499 = !{!"branch_weights", i32 109207, i32 28658}
!500 = !{!"branch_weights", i32 103957, i32 10116}
!501 = !{!"branch_weights", i32 251938, i32 0}
!502 = distinct !{!502, !80, !81}
!503 = !{!"branch_weights", i32 671352, i32 671352}
!504 = distinct !{!504, !80, !81}
!505 = !{!"branch_weights", i32 545970, i32 125382}
!506 = distinct !{!506, !80, !81}
!507 = !{!"branch_weights", i32 3749, i32 121649}
!508 = !{!"branch_weights", i32 125360, i32 38}
!509 = !{!"branch_weights", i32 22, i32 16}
!510 = !{!"branch_weights", i32 16, i32 125382}
!511 = distinct !{!511, !80, !81}
!512 = !{!"branch_weights", i32 0, i32 125382, i32 545970, i32 213164}
!513 = !{!"branch_weights", i32 1068454, i32 265607}
!514 = !{!"branch_weights", i32 434971, i32 449545}
!515 = !{!"branch_weights", i32 662709, i32 0}
!516 = !{!"branch_weights", i32 329065, i32 333644}
!517 = distinct !{!517, !80, !81}
!518 = distinct !{!518, !80, !81}
!519 = distinct !{!519, !80, !81}
!520 = distinct !{!520, !80, !81}
!521 = distinct !{!521, !80, !81}
!522 = distinct !{!522, !81}
!523 = distinct !{!523, !80, !81}
!524 = !{!"function_entry_count", i64 89963}
!525 = !{!"branch_weights", i32 1030, i32 88933}
!526 = !{!"branch_weights", i32 88933, i32 0}
!527 = distinct !{!527, !80, !81}
!528 = !{!"branch_weights", i32 88933, i32 88933}
!529 = distinct !{!529, !80, !81}
