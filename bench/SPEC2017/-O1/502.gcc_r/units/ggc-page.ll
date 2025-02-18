; ModuleID = 'ggc-page.c'
source_filename = "ggc-page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.globals = type { [84 x ptr], [84 x ptr], ptr, i64, i64, i64, i64, i64, i64, i64, i16, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr }
%struct.anon = type { i64, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.page_entry = type { ptr, ptr, i64, ptr, ptr, i64, i16, i16, i16, i8, [1 x i64] }
%struct.page_group = type { ptr, ptr, i64, i32 }
%struct.page_table_chain = type { ptr, i64, [256 x ptr] }
%struct.ggc_statistics = type { i32 }
%struct.ggc_pch_data = type { %struct.ggc_pch_ondisk, [84 x i64], [84 x i64] }
%struct.ggc_pch_ondisk = type { [84 x i32] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"Head=%p, Tail=%p:\0A\00", align 1
@G = internal unnamed_addr global %struct.globals zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%p(%1d|%3d) -> \00", align 1
@size_lookup = internal unnamed_addr global [512 x i8] c"\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09", align 16
@object_size_table = internal unnamed_addr global [84 x i64] zeroinitializer, align 16
@timevar_ggc_mem_total = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"ggc-page.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@inverse_table = internal unnamed_addr global [84 x %struct.anon] zeroinitializer, align 16
@extra_order_size_table = internal unnamed_addr constant [20 x i64] [i64 24, i64 40, i64 48, i64 56, i64 72, i64 80, i64 88, i64 96, i64 104, i64 112, i64 120, i64 184, i64 152, i64 136, i64 160, i64 168, i64 144, i64 104, i64 312, i64 152], align 16
@objects_per_page_table = internal unnamed_addr global [84 x i32] zeroinitializer, align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [62 x i8] c"Memory still allocated at the end of the compilation process\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%-5s %10s  %10s  %10s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Allocated\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Used\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Overhead\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"%-5lu %10lu%c %10lu%c %10lu%c\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"%-5s %10lu%c %10lu%c %10lu%c\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@ggc_pch_write_object.emptyBytes = internal constant [256 x i8] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [25 x i8] c"can't write PCH file: %m\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"can't write PCH file\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"can't read PCH file: %m\00", align 1
@str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !42 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !43
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !42 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !43
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !42 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !53

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !47
  %11 = load i8, ptr %3, align 1, !tbaa !54
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !42 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !53

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !47
  %11 = load i8, ptr %3, align 1, !tbaa !54
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !42 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !43
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !53

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #24
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !47
  %11 = load i8, ptr %3, align 1, !tbaa !54
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !42 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !43
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !42 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !53

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !55
  store i8 %12, ptr %4, align 1, !tbaa !54
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !42 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !53

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !55
  store i8 %12, ptr %4, align 1, !tbaa !54
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !42 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !53

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !55
  store i8 %12, ptr %4, align 1, !tbaa !54
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !42 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #24
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !42 {
  %2 = load i32, ptr %0, align 8, !tbaa !57
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !42 {
  %2 = load i32, ptr %0, align 8, !tbaa !57
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !42 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !58
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !42 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !58
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !42 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !42 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !42 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !42 {
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
  br i1 %23, label %7, label %24, !llvm.loop !59

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !42 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_print_page_list(i32 noundef %0) local_unnamed_addr #9 !prof !42 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %2
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %4, ptr noundef %6)
  %8 = load ptr, ptr %3, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %19, %10 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 6
  %13 = load i16, ptr %12, align 8, !tbaa !62
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 7
  %16 = load i16, ptr %15, align 2, !tbaa !64
  %17 = zext i16 %16 to i32
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %11, i32 noundef %14, i32 noundef %17)
  %19 = load ptr, ptr %11, align 8, !tbaa !43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !65

21:                                               ; preds = %10, %1
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %23 = load ptr, ptr @stdout, align 8, !tbaa !43
  %24 = tail call i32 @fflush(ptr noundef %23)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @ggc_alloc_typed_stat(i32 noundef %0, i64 noundef %1) local_unnamed_addr #10 !prof !42 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef %1)
  ret ptr %3
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @ggc_alloc_stat(i64 noundef %0) local_unnamed_addr #11 !prof !66 {
  %2 = icmp ult i64 %0, 512
  br i1 %2, label %3, label %9, !prof !67

3:                                                ; preds = %1
  %4 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %0
  %5 = load i8, ptr %4, align 1, !tbaa !54
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !68
  br label %15

9:                                                ; preds = %1, %9
  %10 = phi i64 [ %14, %9 ], [ 10, %1 ]
  %11 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !68
  %13 = icmp ult i64 %12, %0
  %14 = add i64 %10, 1
  br i1 %13, label %9, label %15, !prof !69, !llvm.loop !70

15:                                               ; preds = %9, %3
  %16 = phi i64 [ %8, %3 ], [ %12, %9 ]
  %17 = phi i64 [ %6, %3 ], [ %10, %9 ]
  %18 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !71

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 7
  %23 = load i16, ptr %22, align 2, !tbaa !64
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %260, !prof !72

25:                                               ; preds = %21, %15
  %26 = trunc i64 %17 to i32
  %27 = and i64 %17, 4294967295
  %28 = getelementptr inbounds [84 x i32], ptr @objects_per_page_table, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !58
  %30 = zext i32 %29 to i64
  %31 = add nuw nsw i64 %30, 64
  %32 = lshr i64 %31, 3
  %33 = and i64 %32, 1073741816
  %34 = add nuw nsw i64 %33, 56
  %35 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %27
  %36 = load i64, ptr %35, align 8, !tbaa !68
  %37 = mul i64 %36, %30
  %38 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !73
  %39 = tail call i64 @llvm.umax.i64(i64 %37, i64 %38)
  br label %40

40:                                               ; preds = %44, %25
  %41 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), %25 ], [ %42, %44 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = icmp eq ptr %42, null
  br i1 %43, label %60, label %44, !prof !75

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.page_entry, ptr %42, i64 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !76
  %47 = icmp eq i64 %46, %39
  br i1 %47, label %48, label %40, !prof !77, !llvm.loop !78

48:                                               ; preds = %44
  %49 = load ptr, ptr %42, align 8, !tbaa !79
  store ptr %49, ptr %41, align 8, !tbaa !43
  %50 = getelementptr inbounds %struct.page_entry, ptr %42, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !80
  %52 = getelementptr inbounds %struct.page_entry, ptr %42, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !81
  %54 = getelementptr inbounds %struct.page_entry, ptr %42, i64 0, i32 9
  %55 = load i8, ptr %54, align 2, !tbaa !82
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, %26
  br i1 %57, label %58, label %59, !prof !83

58:                                               ; preds = %48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %42, i8 0, i64 %34, i1 false), !prof !84
  br label %128

59:                                               ; preds = %48
  tail call void @free(ptr noundef %42)
  br label %128

60:                                               ; preds = %40
  %61 = icmp ult i64 %38, %37
  %62 = shl i64 %38, 4
  %63 = add i64 %38, -1
  %64 = add i64 %63, %39
  %65 = select i1 %61, i64 %64, i64 %62, !prof !85
  %66 = tail call ptr @xmalloc(i64 noundef %65) #24
  %67 = ptrtoint ptr %66 to i64
  %68 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8
  %69 = add i64 %68, -1
  %70 = add i64 %69, %67
  %71 = sub i64 0, %68
  %72 = and i64 %70, %71
  %73 = inttoptr i64 %72 to ptr
  %74 = sub i64 %72, %67
  br i1 %61, label %79, label %75, !prof !85

75:                                               ; preds = %60
  %76 = add i64 %65, %67
  %77 = add i64 %68, -1
  %78 = and i64 %76, %77
  br label %82

79:                                               ; preds = %60
  %80 = add i64 %39, %74
  %81 = sub i64 %65, %80
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi i64 [ %78, %75 ], [ %81, %79 ]
  %84 = getelementptr inbounds i8, ptr %66, i64 %65
  %85 = sub i64 0, %83
  %86 = getelementptr inbounds i8, ptr %84, i64 %85
  %87 = icmp ugt i64 %74, 31
  br i1 %87, label %88, label %90, !prof !86

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.page_group, ptr %73, i64 -1
  br label %97

90:                                               ; preds = %82
  %91 = icmp eq i64 %83, 0
  %92 = select i1 %91, i64 %71, i64 0, !prof !87
  %93 = getelementptr inbounds i8, ptr %86, i64 %92
  %94 = select i1 %91, i64 %68, i64 %83, !prof !87
  %95 = icmp ugt i64 %94, 31
  br i1 %95, label %97, label %96, !prof !88

96:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 847, ptr noundef nonnull @.str.4) #24
  br label %97

97:                                               ; preds = %96, %90, %88
  %98 = phi ptr [ %89, %88 ], [ %93, %90 ], [ %93, %96 ]
  %99 = phi ptr [ %86, %88 ], [ %93, %90 ], [ %93, %96 ]
  %100 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 12), align 8, !tbaa !89
  store ptr %100, ptr %98, align 8, !tbaa !90
  %101 = getelementptr inbounds %struct.page_group, ptr %98, i64 0, i32 1
  store ptr %66, ptr %101, align 8, !tbaa !92
  %102 = getelementptr inbounds %struct.page_group, ptr %98, i64 0, i32 2
  store i64 %65, ptr %102, align 8, !tbaa !93
  %103 = getelementptr inbounds %struct.page_group, ptr %98, i64 0, i32 3
  store i32 0, ptr %103, align 8, !tbaa !94
  store ptr %98, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 12), align 8, !tbaa !89
  %104 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 7), align 8, !tbaa !95
  %105 = add i64 %104, %65
  store i64 %105, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 7), align 8, !tbaa !95
  br i1 %61, label %128, label %106, !prof !85

106:                                              ; preds = %97
  %107 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), align 8, !tbaa !96
  %108 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !73
  %109 = sub i64 0, %108
  %110 = getelementptr inbounds i8, ptr %99, i64 %109
  %111 = icmp eq ptr %110, %73
  br i1 %111, label %126, label %112, !prof !97

112:                                              ; preds = %106
  %113 = trunc i64 %17 to i8
  br label %114

114:                                              ; preds = %112, %114
  %115 = phi ptr [ %107, %112 ], [ %117, %114 ]
  %116 = phi ptr [ %110, %112 ], [ %124, %114 ]
  %117 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %34) #24
  %118 = getelementptr inbounds %struct.page_entry, ptr %117, i64 0, i32 9
  store i8 %113, ptr %118, align 2, !tbaa !82
  %119 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !73
  %120 = getelementptr inbounds %struct.page_entry, ptr %117, i64 0, i32 2
  store i64 %119, ptr %120, align 8, !tbaa !76
  %121 = getelementptr inbounds %struct.page_entry, ptr %117, i64 0, i32 3
  store ptr %116, ptr %121, align 8, !tbaa !80
  %122 = getelementptr inbounds %struct.page_entry, ptr %117, i64 0, i32 4
  store ptr %98, ptr %122, align 8, !tbaa !81
  store ptr %115, ptr %117, align 8, !tbaa !79
  %123 = sub i64 0, %119
  %124 = getelementptr inbounds i8, ptr %116, i64 %123
  %125 = icmp eq ptr %124, %73
  br i1 %125, label %126, label %114, !prof !98, !llvm.loop !99

126:                                              ; preds = %114, %106
  %127 = phi ptr [ %107, %106 ], [ %117, %114 ]
  store ptr %127, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), align 8, !tbaa !96
  br label %128

128:                                              ; preds = %126, %97, %59, %58
  %129 = phi ptr [ %53, %58 ], [ %53, %59 ], [ %98, %126 ], [ %98, %97 ]
  %130 = phi ptr [ %51, %58 ], [ %51, %59 ], [ %73, %126 ], [ %73, %97 ]
  %131 = phi ptr [ %42, %58 ], [ null, %59 ], [ null, %126 ], [ null, %97 ]
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %135, !prof !100

133:                                              ; preds = %128
  %134 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %34) #24
  br label %135

135:                                              ; preds = %128, %133
  %136 = phi ptr [ %134, %133 ], [ %131, %128 ]
  %137 = getelementptr inbounds %struct.page_entry, ptr %136, i64 0, i32 2
  store i64 %39, ptr %137, align 8, !tbaa !76
  %138 = getelementptr inbounds %struct.page_entry, ptr %136, i64 0, i32 3
  store ptr %130, ptr %138, align 8, !tbaa !80
  %139 = load i16, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 10), align 8, !tbaa !101
  %140 = getelementptr inbounds %struct.page_entry, ptr %136, i64 0, i32 6
  store i16 %139, ptr %140, align 8, !tbaa !62
  %141 = trunc i64 %17 to i8
  %142 = getelementptr inbounds %struct.page_entry, ptr %136, i64 0, i32 9
  store i8 %141, ptr %142, align 2, !tbaa !82
  %143 = trunc i32 %29 to i16
  %144 = getelementptr inbounds %struct.page_entry, ptr %136, i64 0, i32 7
  store i16 %143, ptr %144, align 2, !tbaa !64
  %145 = getelementptr inbounds %struct.page_entry, ptr %136, i64 0, i32 8
  store i16 1, ptr %145, align 4, !tbaa !102
  %146 = zext nneg i16 %139 to i64
  %147 = shl nuw i64 1, %146
  %148 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 8), align 8, !tbaa !103
  %149 = or i64 %148, %147
  store i64 %149, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 8), align 8, !tbaa !103
  %150 = getelementptr inbounds %struct.page_entry, ptr %136, i64 0, i32 4
  store ptr %129, ptr %150, align 8, !tbaa !81
  %151 = getelementptr inbounds %struct.page_group, ptr %129, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !92
  %153 = ptrtoint ptr %130 to i64
  %154 = ptrtoint ptr %152 to i64
  %155 = sub i64 %153, %154
  %156 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !104
  %157 = lshr i64 %155, %156
  %158 = trunc i64 %157 to i32
  %159 = shl nuw i32 1, %158
  %160 = getelementptr inbounds %struct.page_group, ptr %129, i64 0, i32 3
  %161 = load i32, ptr %160, align 8, !tbaa !94
  %162 = or i32 %159, %161
  store i32 %162, ptr %160, align 8, !tbaa !94
  %163 = and i64 %30, 63
  %164 = shl nuw i64 1, %163
  %165 = lshr i64 %30, 6
  %166 = getelementptr inbounds %struct.page_entry, ptr %136, i64 0, i32 10, i64 %165
  store i64 %164, ptr %166, align 8, !tbaa !68
  %167 = and i64 %153, -4294967296
  br label %168

168:                                              ; preds = %172, %135
  %169 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), %135 ], [ %170, %172 ]
  %170 = load ptr, ptr %169, align 8, !tbaa !43
  %171 = icmp eq ptr %170, null
  br i1 %171, label %176, label %172, !prof !105

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.page_table_chain, ptr %170, i64 0, i32 1
  %174 = load i64, ptr %173, align 8, !tbaa !106
  %175 = icmp eq i64 %174, %167
  br i1 %175, label %180, label %168, !prof !108, !llvm.loop !109

176:                                              ; preds = %168
  %177 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 2064) #24
  %178 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), align 8, !tbaa !110
  store ptr %178, ptr %177, align 8, !tbaa !111
  %179 = getelementptr inbounds %struct.page_table_chain, ptr %177, i64 0, i32 1
  store i64 %167, ptr %179, align 8, !tbaa !106
  store ptr %177, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), align 8, !tbaa !110
  br label %180

180:                                              ; preds = %172, %176
  %181 = phi ptr [ %177, %176 ], [ %170, %172 ]
  %182 = getelementptr inbounds %struct.page_table_chain, ptr %181, i64 0, i32 2
  %183 = lshr i64 %153, 24
  %184 = and i64 %183, 255
  %185 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !104
  %186 = sub i64 24, %185
  %187 = getelementptr inbounds ptr, ptr %182, i64 %184
  %188 = load ptr, ptr %187, align 8, !tbaa !43
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %193, !prof !112

190:                                              ; preds = %180
  %191 = shl nuw i64 1, %186
  %192 = tail call ptr @xcalloc(i64 noundef %191, i64 noundef 8) #24
  store ptr %192, ptr %187, align 8, !tbaa !43
  br label %193

193:                                              ; preds = %180, %190
  %194 = lshr i64 %153, %185
  %195 = trunc i64 %186 to i32
  %196 = shl nsw i32 -1, %195
  %197 = xor i32 %196, -1
  %198 = zext nneg i32 %197 to i64
  %199 = and i64 %194, %198
  %200 = load ptr, ptr %187, align 8, !tbaa !43
  %201 = getelementptr inbounds ptr, ptr %200, i64 %199
  store ptr %136, ptr %201, align 8, !tbaa !43
  %202 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !113
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.page_entry, ptr %136, i64 0, i32 5
  store i64 %203, ptr %204, align 8, !tbaa !114
  %205 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !115
  %206 = icmp ult i32 %202, %205
  br i1 %206, label %218, label %207, !prof !116

207:                                              ; preds = %193
  %208 = shl i32 %205, 1
  store i32 %208, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !115
  %209 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !117
  %210 = zext i32 %208 to i64
  %211 = shl nuw nsw i64 %210, 3
  %212 = tail call ptr @xrealloc(ptr noundef %209, i64 noundef %211) #24
  store ptr %212, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !117
  %213 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !118
  %214 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !115
  %215 = zext i32 %214 to i64
  %216 = shl nuw nsw i64 %215, 3
  %217 = tail call ptr @xrealloc(ptr noundef %213, i64 noundef %216) #24
  store ptr %217, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !118
  br label %218

218:                                              ; preds = %193, %207
  %219 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !117
  %220 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !113
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds ptr, ptr %219, i64 %221
  store ptr %136, ptr %222, align 8, !tbaa !43
  %223 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !118
  %224 = add i32 %220, 1
  store i32 %224, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !113
  %225 = getelementptr inbounds ptr, ptr %223, i64 %221
  store ptr null, ptr %225, align 8, !tbaa !43
  %226 = load i16, ptr %140, align 8, !tbaa !62
  %227 = zext i16 %226 to i32
  %228 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !119
  %229 = icmp ugt i32 %228, %227
  br i1 %229, label %252, label %230, !prof !120

230:                                              ; preds = %218, %242
  %231 = phi i32 [ %250, %242 ], [ %228, %218 ]
  %232 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !113
  %233 = add i32 %232, -1
  %234 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 15), align 4, !tbaa !121
  %235 = icmp ult i32 %231, %234
  br i1 %235, label %242, label %236, !prof !122

236:                                              ; preds = %230
  %237 = shl i32 %234, 1
  store i32 %237, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 15), align 4, !tbaa !121
  %238 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 16), align 8, !tbaa !123
  %239 = zext i32 %237 to i64
  %240 = shl nuw nsw i64 %239, 2
  %241 = tail call ptr @xrealloc(ptr noundef %238, i64 noundef %240) #24
  store ptr %241, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 16), align 8, !tbaa !123
  br label %242

242:                                              ; preds = %230, %236
  %243 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 16), align 8, !tbaa !123
  %244 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !119
  %245 = add i32 %244, 1
  store i32 %245, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !119
  %246 = zext i32 %244 to i64
  %247 = getelementptr inbounds i32, ptr %243, i64 %246
  store i32 %233, ptr %247, align 4, !tbaa !58
  %248 = load i16, ptr %140, align 8, !tbaa !62
  %249 = zext i16 %248 to i32
  %250 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !119
  %251 = icmp ugt i32 %250, %249
  br i1 %251, label %252, label %230, !prof !122, !llvm.loop !124

252:                                              ; preds = %242, %218
  br i1 %20, label %253, label %255, !prof !125

253:                                              ; preds = %252
  %254 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %17
  br label %257

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 1
  br label %257

257:                                              ; preds = %255, %253
  %258 = phi ptr [ %256, %255 ], [ %254, %253 ]
  store ptr %136, ptr %258, align 8, !tbaa !43
  store ptr %19, ptr %136, align 8, !tbaa !79
  %259 = getelementptr inbounds %struct.page_entry, ptr %136, i64 0, i32 1
  store ptr null, ptr %259, align 8, !tbaa !126
  store ptr %136, ptr %18, align 8, !tbaa !43
  store i16 1, ptr %145, align 4, !tbaa !102
  br label %297

260:                                              ; preds = %21
  %261 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 8
  %262 = load i16, ptr %261, align 4, !tbaa !102
  %263 = zext i16 %262 to i32
  %264 = lshr i32 %263, 6
  %265 = zext nneg i32 %264 to i64
  %266 = and i32 %263, 63
  %267 = zext nneg i32 %266 to i64
  %268 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 10, i64 %265
  %269 = load i64, ptr %268, align 8, !tbaa !68
  %270 = shl nuw i64 1, %267
  %271 = and i64 %270, %269
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %289, label %273, !prof !127

273:                                              ; preds = %260, %273
  %274 = phi i64 [ %278, %273 ], [ 0, %260 ]
  %275 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 10, i64 %274
  %276 = load i64, ptr %275, align 8, !tbaa !68
  %277 = icmp eq i64 %276, -1
  %278 = add i64 %274, 1
  br i1 %277, label %273, label %279, !prof !128, !llvm.loop !129

279:                                              ; preds = %273, %279
  %280 = phi i64 [ %284, %279 ], [ 0, %273 ]
  %281 = shl nuw i64 1, %280
  %282 = and i64 %281, %276
  %283 = icmp eq i64 %282, 0
  %284 = add i64 %280, 1
  br i1 %283, label %285, label %279, !prof !130, !llvm.loop !131

285:                                              ; preds = %279
  %286 = shl i64 %274, 6
  %287 = add i64 %280, %286
  %288 = trunc i64 %287 to i32
  br label %289

289:                                              ; preds = %285, %260
  %290 = phi i64 [ %280, %285 ], [ %267, %260 ]
  %291 = phi i64 [ %274, %285 ], [ %265, %260 ]
  %292 = phi i32 [ %288, %285 ], [ %263, %260 ]
  %293 = trunc i32 %292 to i16
  %294 = add i16 %293, 1
  store i16 %294, ptr %261, align 4, !tbaa !102
  %295 = zext i32 %292 to i64
  %296 = mul i64 %16, %295
  br label %297

297:                                              ; preds = %289, %257
  %298 = phi i64 [ 0, %257 ], [ %290, %289 ]
  %299 = phi i64 [ 0, %257 ], [ %296, %289 ]
  %300 = phi ptr [ %136, %257 ], [ %19, %289 ]
  %301 = phi i64 [ 0, %257 ], [ %291, %289 ]
  %302 = shl nuw i64 1, %298
  %303 = getelementptr inbounds %struct.page_entry, ptr %300, i64 0, i32 10, i64 %301
  %304 = load i64, ptr %303, align 8, !tbaa !68
  %305 = or i64 %304, %302
  store i64 %305, ptr %303, align 8, !tbaa !68
  %306 = getelementptr inbounds %struct.page_entry, ptr %300, i64 0, i32 7
  %307 = load i16, ptr %306, align 2, !tbaa !64
  %308 = add i16 %307, -1
  store i16 %308, ptr %306, align 2, !tbaa !64
  %309 = icmp eq i16 %308, 0
  br i1 %309, label %310, label %324, !prof !132

310:                                              ; preds = %297
  %311 = load ptr, ptr %300, align 8, !tbaa !79
  %312 = icmp eq ptr %311, null
  br i1 %312, label %324, label %313, !prof !133

313:                                              ; preds = %310
  %314 = getelementptr inbounds %struct.page_entry, ptr %311, i64 0, i32 7
  %315 = load i16, ptr %314, align 2, !tbaa !64
  %316 = icmp eq i16 %315, 0
  br i1 %316, label %324, label %317, !prof !134

317:                                              ; preds = %313
  store ptr %311, ptr %18, align 8, !tbaa !43
  %318 = load ptr, ptr %300, align 8, !tbaa !79
  %319 = getelementptr inbounds %struct.page_entry, ptr %318, i64 0, i32 1
  store ptr null, ptr %319, align 8, !tbaa !126
  store ptr null, ptr %300, align 8, !tbaa !79
  %320 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %17
  %321 = load ptr, ptr %320, align 8, !tbaa !43
  %322 = getelementptr inbounds %struct.page_entry, ptr %300, i64 0, i32 1
  store ptr %321, ptr %322, align 8, !tbaa !126
  %323 = load ptr, ptr %320, align 8, !tbaa !43
  store ptr %300, ptr %323, align 8, !tbaa !79
  store ptr %300, ptr %320, align 8, !tbaa !43
  br label %324

324:                                              ; preds = %317, %313, %310, %297
  %325 = getelementptr inbounds %struct.page_entry, ptr %300, i64 0, i32 3
  %326 = load ptr, ptr %325, align 8, !tbaa !80
  %327 = getelementptr inbounds i8, ptr %326, i64 %299
  %328 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !135
  %329 = add i64 %328, %16
  store i64 %329, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !135
  %330 = load i64, ptr @timevar_ggc_mem_total, align 8, !tbaa !68
  %331 = add i64 %330, %16
  store i64 %331, ptr @timevar_ggc_mem_total, align 8, !tbaa !68
  ret ptr %327
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_S(ptr noundef %0) local_unnamed_addr #10 !prof !42 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %93, label %3

3:                                                ; preds = %1
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, -4294967296
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %93, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.page_table_chain, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !106
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %14, label %6, !llvm.loop !136

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.page_table_chain, ptr %8, i64 0, i32 2
  %16 = lshr i64 %4, 24
  %17 = and i64 %16, 255
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %93, label %21

21:                                               ; preds = %14
  %22 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !104
  %23 = lshr i64 %4, %22
  %24 = trunc i64 %22 to i32
  %25 = sub i32 24, %24
  %26 = shl nsw i32 -1, %25
  %27 = xor i32 %26, -1
  %28 = zext nneg i32 %27 to i64
  %29 = and i64 %23, %28
  %30 = getelementptr inbounds ptr, ptr %19, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = icmp eq ptr %31, null
  br i1 %32, label %93, label %33

33:                                               ; preds = %21, %33
  %34 = phi ptr [ %35, %33 ], [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), %21 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !43
  %36 = getelementptr inbounds %struct.page_table_chain, ptr %35, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !106
  %38 = icmp eq i64 %37, %5
  br i1 %38, label %39, label %33, !llvm.loop !137

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.page_table_chain, ptr %35, i64 0, i32 2
  %41 = lshr i64 %4, 24
  %42 = and i64 %41, 255
  %43 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !104
  %44 = lshr i64 %4, %43
  %45 = trunc i64 %43 to i32
  %46 = sub i32 24, %45
  %47 = shl nsw i32 -1, %46
  %48 = xor i32 %47, -1
  %49 = zext nneg i32 %48 to i64
  %50 = and i64 %44, %49
  %51 = getelementptr inbounds ptr, ptr %40, i64 %42
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  %53 = getelementptr inbounds ptr, ptr %52, i64 %50
  %54 = load ptr, ptr %53, align 8, !tbaa !43
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1294, ptr noundef nonnull @.str.4) #24
  br label %57

57:                                               ; preds = %39, %56
  %58 = getelementptr inbounds %struct.page_entry, ptr %54, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !80
  %60 = ptrtoint ptr %59 to i64
  %61 = sub i64 %4, %60
  %62 = getelementptr inbounds %struct.page_entry, ptr %54, i64 0, i32 9
  %63 = load i8, ptr %62, align 2, !tbaa !82
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !68
  %67 = urem i64 %61, %66
  switch i64 %67, label %68 [
    i64 0, label %72
    i64 28, label %69
  ]

68:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1306, ptr noundef nonnull @.str.4) #24
  br label %69

69:                                               ; preds = %57, %68
  %70 = sub i64 0, %67
  %71 = getelementptr inbounds i8, ptr %0, i64 %70
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %71) #24
  br label %93

72:                                               ; preds = %57
  %73 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %64
  %74 = load i64, ptr %73, align 16, !tbaa !138
  %75 = mul i64 %74, %61
  %76 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %64, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !140
  %78 = zext nneg i32 %77 to i64
  %79 = lshr i64 %75, %78
  %80 = lshr i64 %79, 6
  %81 = and i64 %79, 63
  %82 = shl nuw i64 1, %81
  %83 = and i64 %80, 67108863
  %84 = getelementptr inbounds %struct.page_entry, ptr %54, i64 0, i32 10, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !68
  %86 = and i64 %82, %85
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %72
  %89 = or i64 %82, %85
  store i64 %89, ptr %84, align 8, !tbaa !68
  %90 = getelementptr inbounds %struct.page_entry, ptr %54, i64 0, i32 7
  %91 = load i16, ptr %90, align 2, !tbaa !64
  %92 = add i16 %91, -1
  store i16 %92, ptr %90, align 2, !tbaa !64
  br label %93

93:                                               ; preds = %6, %14, %72, %1, %21, %88, %69
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @ggc_set_mark(ptr noundef %0) local_unnamed_addr #10 !prof !42 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, -4294967296
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), %1 ], [ %6, %4 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !106
  %9 = icmp eq i64 %8, %3
  br i1 %9, label %10, label %4, !llvm.loop !137

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 2
  %12 = lshr i64 %2, 24
  %13 = and i64 %12, 255
  %14 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !104
  %15 = lshr i64 %2, %14
  %16 = trunc i64 %14 to i32
  %17 = sub i32 24, %16
  %18 = shl nsw i32 -1, %17
  %19 = xor i32 %18, -1
  %20 = zext nneg i32 %19 to i64
  %21 = and i64 %15, %20
  %22 = getelementptr inbounds ptr, ptr %11, i64 %13
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = getelementptr inbounds ptr, ptr %23, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1344, ptr noundef nonnull @.str.4) #24
  br label %28

28:                                               ; preds = %10, %27
  %29 = getelementptr inbounds %struct.page_entry, ptr %25, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %2, %31
  %33 = getelementptr inbounds %struct.page_entry, ptr %25, i64 0, i32 9
  %34 = load i8, ptr %33, align 2, !tbaa !82
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %35
  %37 = load i64, ptr %36, align 16, !tbaa !138
  %38 = mul i64 %32, %37
  %39 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %35, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !140
  %41 = zext nneg i32 %40 to i64
  %42 = lshr i64 %38, %41
  %43 = lshr i64 %42, 6
  %44 = and i64 %42, 63
  %45 = shl nuw i64 1, %44
  %46 = and i64 %43, 67108863
  %47 = getelementptr inbounds %struct.page_entry, ptr %25, i64 0, i32 10, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !68
  %49 = and i64 %45, %48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %28
  %52 = or i64 %45, %48
  store i64 %52, ptr %47, align 8, !tbaa !68
  %53 = getelementptr inbounds %struct.page_entry, ptr %25, i64 0, i32 7
  %54 = load i16, ptr %53, align 2, !tbaa !64
  %55 = add i16 %54, -1
  store i16 %55, ptr %53, align 2, !tbaa !64
  br label %56

56:                                               ; preds = %28, %51
  %57 = phi i32 [ 0, %51 ], [ 1, %28 ]
  ret i32 %57
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @ggc_marked_p(ptr noundef %0) local_unnamed_addr #10 !prof !42 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, -4294967296
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), %1 ], [ %6, %4 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !106
  %9 = icmp eq i64 %8, %3
  br i1 %9, label %10, label %4, !llvm.loop !137

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 2
  %12 = lshr i64 %2, 24
  %13 = and i64 %12, 255
  %14 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !104
  %15 = lshr i64 %2, %14
  %16 = trunc i64 %14 to i32
  %17 = sub i32 24, %16
  %18 = shl nsw i32 -1, %17
  %19 = xor i32 %18, -1
  %20 = zext nneg i32 %19 to i64
  %21 = and i64 %15, %20
  %22 = getelementptr inbounds ptr, ptr %11, i64 %13
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = getelementptr inbounds ptr, ptr %23, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1380, ptr noundef nonnull @.str.4) #24
  br label %28

28:                                               ; preds = %10, %27
  %29 = getelementptr inbounds %struct.page_entry, ptr %25, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %2, %31
  %33 = getelementptr inbounds %struct.page_entry, ptr %25, i64 0, i32 9
  %34 = load i8, ptr %33, align 2, !tbaa !82
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %35
  %37 = load i64, ptr %36, align 16, !tbaa !138
  %38 = mul i64 %32, %37
  %39 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %35, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !140
  %41 = zext nneg i32 %40 to i64
  %42 = lshr i64 %38, %41
  %43 = lshr i64 %42, 6
  %44 = and i64 %42, 63
  %45 = shl nuw i64 1, %44
  %46 = and i64 %43, 67108863
  %47 = getelementptr inbounds %struct.page_entry, ptr %25, i64 0, i32 10, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !68
  %49 = and i64 %45, %48
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  ret i32 %51
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @ggc_get_size(ptr noundef %0) local_unnamed_addr #12 !prof !141 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, -4294967296
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), %1 ], [ %6, %4 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !106
  %9 = icmp eq i64 %8, %3
  br i1 %9, label %10, label %4, !prof !142, !llvm.loop !137

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 2
  %12 = lshr i64 %2, 24
  %13 = and i64 %12, 255
  %14 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !104
  %15 = lshr i64 %2, %14
  %16 = trunc i64 %14 to i32
  %17 = sub i32 24, %16
  %18 = shl nsw i32 -1, %17
  %19 = xor i32 %18, -1
  %20 = zext nneg i32 %19 to i64
  %21 = and i64 %15, %20
  %22 = getelementptr inbounds ptr, ptr %11, i64 %13
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = getelementptr inbounds ptr, ptr %23, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.page_entry, ptr %25, i64 0, i32 9
  %27 = load i8, ptr %26, align 2, !tbaa !82
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !68
  ret i64 %30
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ggc_free(ptr noundef %0) local_unnamed_addr #13 !prof !143 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, -4294967296
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), %1 ], [ %6, %4 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !106
  %9 = icmp eq i64 %8, %3
  br i1 %9, label %10, label %4, !prof !144, !llvm.loop !137

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 2
  %12 = lshr i64 %2, 24
  %13 = and i64 %12, 255
  %14 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !104
  %15 = lshr i64 %2, %14
  %16 = trunc i64 %14 to i32
  %17 = sub i32 24, %16
  %18 = shl nsw i32 -1, %17
  %19 = xor i32 %18, -1
  %20 = zext nneg i32 %19 to i64
  %21 = and i64 %15, %20
  %22 = getelementptr inbounds ptr, ptr %11, i64 %13
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = getelementptr inbounds ptr, ptr %23, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.page_entry, ptr %25, i64 0, i32 9
  %27 = load i8, ptr %26, align 2, !tbaa !82
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !68
  %31 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !135
  %32 = sub i64 %31, %30
  store i64 %32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !135
  %33 = getelementptr inbounds %struct.page_entry, ptr %25, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  %35 = ptrtoint ptr %34 to i64
  %36 = sub i64 %2, %35
  %37 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %28
  %38 = load i64, ptr %37, align 16, !tbaa !138
  %39 = mul i64 %36, %38
  %40 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %28, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !140
  %42 = zext nneg i32 %41 to i64
  %43 = lshr i64 %39, %42
  %44 = lshr i64 %43, 6
  %45 = and i64 %43, 63
  %46 = shl nuw i64 1, %45
  %47 = xor i64 %46, -1
  %48 = and i64 %44, 67108863
  %49 = getelementptr inbounds %struct.page_entry, ptr %25, i64 0, i32 10, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !68
  %51 = and i64 %50, %47
  store i64 %51, ptr %49, align 8, !tbaa !68
  %52 = getelementptr inbounds %struct.page_entry, ptr %25, i64 0, i32 7
  %53 = load i16, ptr %52, align 2, !tbaa !64
  %54 = add i16 %53, 1
  store i16 %54, ptr %52, align 2, !tbaa !64
  %55 = icmp eq i16 %53, 0
  br i1 %55, label %56, label %77, !prof !145

56:                                               ; preds = %10
  %57 = getelementptr inbounds %struct.page_entry, ptr %25, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !126
  %59 = icmp eq ptr %58, null
  br i1 %59, label %74, label %60, !prof !146

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.page_entry, ptr %58, i64 0, i32 7
  %62 = load i16, ptr %61, align 2, !tbaa !64
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %74, !prof !147

64:                                               ; preds = %60
  %65 = load ptr, ptr %25, align 8, !tbaa !79
  store ptr %65, ptr %58, align 8, !tbaa !79
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.page_entry, ptr %65, i64 0, i32 1
  %68 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %28
  %69 = select i1 %66, ptr %68, ptr %67, !prof !148
  store ptr %58, ptr %69, align 8, !tbaa !43
  %70 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %28
  %71 = load ptr, ptr %70, align 8, !tbaa !43
  store ptr %71, ptr %25, align 8, !tbaa !79
  store ptr null, ptr %57, align 8, !tbaa !126
  %72 = load ptr, ptr %70, align 8, !tbaa !43
  %73 = getelementptr inbounds %struct.page_entry, ptr %72, i64 0, i32 1
  store ptr %25, ptr %73, align 8, !tbaa !126
  store ptr %25, ptr %70, align 8, !tbaa !43
  br label %74

74:                                               ; preds = %64, %60, %56
  %75 = trunc i64 %43 to i16
  %76 = getelementptr inbounds %struct.page_entry, ptr %25, i64 0, i32 8
  store i16 %75, ptr %76, align 4, !tbaa !102
  br label %77

77:                                               ; preds = %74, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_ggc() local_unnamed_addr #14 !prof !149 {
  store i64 4096, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !73
  %1 = tail call i32 @exact_log2(i64 noundef 4096) #24
  %2 = sext i32 %1 to i64
  store i64 %2, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !104
  %3 = load ptr, ptr @stdout, align 8, !tbaa !43
  store ptr %3, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 13), align 8, !tbaa !150
  br label %4

4:                                                ; preds = %0, %4
  %5 = phi i64 [ 0, %0 ], [ %8, %4 ]
  %6 = shl nuw i64 1, %5
  %7 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %5
  store i64 %6, ptr %7, align 8, !tbaa !68
  %8 = add nuw nsw i64 %5, 1
  %9 = icmp eq i64 %8, 64
  br i1 %9, label %12, label %4, !prof !151, !llvm.loop !152

10:                                               ; preds = %12
  %11 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !73
  br label %22

12:                                               ; preds = %4, %12
  %13 = phi i64 [ %20, %12 ], [ 64, %4 ]
  %14 = add nsw i64 %13, -64
  %15 = getelementptr inbounds [20 x i64], ptr @extra_order_size_table, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !68
  %17 = add i64 %16, 7
  %18 = and i64 %17, -8
  %19 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %13
  store i64 %18, ptr %19, align 8, !tbaa !68
  %20 = add nuw nsw i64 %13, 1
  %21 = icmp eq i64 %20, 84
  br i1 %21, label %10, label %12, !prof !153, !llvm.loop !154

22:                                               ; preds = %10, %51
  %23 = phi i64 [ 0, %10 ], [ %55, %51 ]
  %24 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !68
  %26 = udiv i64 %11, %25
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds [84 x i32], ptr @objects_per_page_table, i64 0, i64 %23
  %29 = tail call i32 @llvm.umax.i32(i32 %27, i32 1)
  store i32 %29, ptr %28, align 4, !tbaa !58
  %30 = and i64 %25, 1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %37, label %32, !prof !155

32:                                               ; preds = %37, %22
  %33 = phi i64 [ %25, %22 ], [ %41, %37 ]
  %34 = phi i32 [ 0, %22 ], [ %40, %37 ]
  %35 = mul i64 %33, %33
  %36 = icmp eq i64 %35, 1
  br i1 %36, label %51, label %44, !prof !156

37:                                               ; preds = %22, %37
  %38 = phi i32 [ %40, %37 ], [ 0, %22 ]
  %39 = phi i64 [ %41, %37 ], [ %25, %22 ]
  %40 = add i32 %38, 1
  %41 = lshr exact i64 %39, 1
  %42 = and i64 %39, 2
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %37, label %32, !prof !157, !llvm.loop !158

44:                                               ; preds = %32, %44
  %45 = phi i64 [ %49, %44 ], [ %35, %32 ]
  %46 = phi i64 [ %48, %44 ], [ %33, %32 ]
  %47 = sub i64 2, %45
  %48 = mul i64 %47, %46
  %49 = mul i64 %48, %33
  %50 = icmp eq i64 %49, 1
  br i1 %50, label %51, label %44, !prof !159, !llvm.loop !160

51:                                               ; preds = %44, %32
  %52 = phi i64 [ %33, %32 ], [ %48, %44 ]
  %53 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %23
  store i64 %52, ptr %53, align 16, !tbaa !138
  %54 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %23, i32 1
  store i32 %34, ptr %54, align 8, !tbaa !140
  %55 = add nuw nsw i64 %23, 1
  %56 = icmp eq i64 %55, 84
  br i1 %56, label %57, label %22, !prof !161, !llvm.loop !162

57:                                               ; preds = %51, %82
  %58 = phi i64 [ %83, %82 ], [ 64, %51 ]
  %59 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !68
  %61 = trunc i64 %60 to i32
  %62 = icmp sgt i32 %61, 511
  br i1 %62, label %82, label %63, !prof !163

63:                                               ; preds = %57
  %64 = shl i64 %60, 32
  %65 = ashr exact i64 %64, 32
  %66 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !54
  %68 = shl i64 %60, 32
  %69 = ashr exact i64 %68, 32
  %70 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !54
  %72 = icmp eq i8 %67, %71
  br i1 %72, label %73, label %82, !prof !164

73:                                               ; preds = %63
  %74 = trunc i64 %58 to i8
  br label %75

75:                                               ; preds = %73, %75
  %76 = phi i64 [ %65, %73 ], [ %78, %75 ]
  %77 = phi ptr [ %70, %73 ], [ %79, %75 ]
  store i8 %74, ptr %77, align 1, !tbaa !54
  %78 = add i64 %76, -1
  %79 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !54
  %81 = icmp eq i8 %67, %80
  br i1 %81, label %75, label %82, !prof !165, !llvm.loop !166

82:                                               ; preds = %75, %63, %57
  %83 = add nuw nsw i64 %58, 1
  %84 = icmp eq i64 %83, 84
  br i1 %84, label %85, label %57, !prof !153, !llvm.loop !167

85:                                               ; preds = %82
  store i32 0, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !119
  store i32 10, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 15), align 4, !tbaa !121
  %86 = tail call ptr @xmalloc(i64 noundef 40) #24
  store ptr %86, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 16), align 8, !tbaa !123
  store i32 0, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !113
  store i32 128, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !115
  %87 = tail call ptr @xmalloc(i64 noundef 1024) #24
  store ptr %87, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !117
  %88 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !115
  %89 = zext i32 %88 to i64
  %90 = shl nuw nsw i64 %89, 3
  %91 = tail call ptr @xmalloc(i64 noundef %90) #24
  store ptr %91, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !118
  ret void
}

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @new_ggc_zone(ptr nocapture noundef readnone %0) local_unnamed_addr #15 !prof !42 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @destroy_ggc_zone(ptr nocapture noundef readnone %0) local_unnamed_addr #15 !prof !42 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ggc_collect() local_unnamed_addr #16 !prof !168 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ggc_print_statistics() local_unnamed_addr #10 !prof !42 {
  %1 = alloca %struct.ggc_statistics, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #24
  store i32 0, ptr %1, align 4
  store i64 0, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 6), align 8, !tbaa !169
  %2 = load ptr, ptr @stderr, align 8, !tbaa !43
  call void @ggc_print_common_statistics(ptr noundef %2, ptr noundef nonnull %1) #24
  %3 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %18, %0
  %6 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 12), align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %22

8:                                                ; preds = %0, %18
  %9 = phi ptr [ %20, %18 ], [ %3, %0 ]
  %10 = phi ptr [ %19, %18 ], [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), %0 ]
  %11 = getelementptr inbounds %struct.page_entry, ptr %9, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  %13 = getelementptr inbounds %struct.page_group, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !94
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load ptr, ptr %9, align 8, !tbaa !79
  store ptr %17, ptr %10, align 8, !tbaa !43
  call void @free(ptr noundef %9)
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi ptr [ %10, %16 ], [ %9, %8 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %5, label %8, !llvm.loop !170

22:                                               ; preds = %5, %36
  %23 = phi ptr [ %38, %36 ], [ %6, %5 ]
  %24 = phi ptr [ %37, %36 ], [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 12), %5 ]
  %25 = getelementptr inbounds %struct.page_group, ptr %23, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !94
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load ptr, ptr %23, align 8, !tbaa !90
  store ptr %29, ptr %24, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.page_group, ptr %23, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !93
  %32 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 7), align 8, !tbaa !95
  %33 = sub i64 %32, %31
  store i64 %33, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 7), align 8, !tbaa !95
  %34 = getelementptr inbounds %struct.page_group, ptr %23, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !92
  call void @free(ptr noundef %35)
  br label %36

36:                                               ; preds = %28, %22
  %37 = phi ptr [ %24, %28 ], [ %23, %22 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %22, !llvm.loop !171

40:                                               ; preds = %36, %5
  %41 = load ptr, ptr @stderr, align 8, !tbaa !43
  %42 = call i64 @fwrite(ptr nonnull @.str.5, i64 61, i64 1, ptr %41) #25
  %43 = load ptr, ptr @stderr, align 8, !tbaa !43
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #25
  br label %45

45:                                               ; preds = %40, %108
  %46 = phi i64 [ 0, %40 ], [ %110, %108 ]
  %47 = phi i64 [ 0, %40 ], [ %109, %108 ]
  %48 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %46
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = icmp eq ptr %49, null
  br i1 %50, label %108, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %46
  %53 = load i64, ptr %52, align 8, !tbaa !68
  br label %54

54:                                               ; preds = %51, %54
  %55 = phi i64 [ 0, %51 ], [ %78, %54 ]
  %56 = phi i64 [ 0, %51 ], [ %73, %54 ]
  %57 = phi i64 [ 0, %51 ], [ %61, %54 ]
  %58 = phi ptr [ %49, %51 ], [ %79, %54 ]
  %59 = getelementptr inbounds %struct.page_entry, ptr %58, i64 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !76
  %61 = add i64 %60, %57
  %62 = getelementptr inbounds %struct.page_entry, ptr %58, i64 0, i32 9
  %63 = load i8, ptr %62, align 2, !tbaa !82
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !68
  %67 = udiv i64 %60, %66
  %68 = getelementptr inbounds %struct.page_entry, ptr %58, i64 0, i32 7
  %69 = load i16, ptr %68, align 2, !tbaa !64
  %70 = zext i16 %69 to i64
  %71 = sub i64 %67, %70
  %72 = mul i64 %71, %53
  %73 = add i64 %72, %56
  %74 = add i64 %67, 64
  %75 = lshr i64 %74, 3
  %76 = and i64 %75, 2305843009213693944
  %77 = add i64 %55, 56
  %78 = add i64 %77, %76
  %79 = load ptr, ptr %58, align 8, !tbaa !79
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %54, !llvm.loop !172

81:                                               ; preds = %54
  %82 = load ptr, ptr @stderr, align 8, !tbaa !43
  %83 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %46
  %84 = load i64, ptr %83, align 8, !tbaa !68
  %85 = icmp ult i64 %61, 10240
  %86 = icmp ult i64 %61, 10485760
  %87 = select i1 %86, i64 10, i64 20
  %88 = select i1 %85, i64 0, i64 %87
  %89 = lshr i64 %61, %88
  %90 = select i1 %86, i32 107, i32 77
  %91 = select i1 %85, i32 32, i32 %90
  %92 = icmp ult i64 %73, 10240
  %93 = icmp ult i64 %73, 10485760
  %94 = select i1 %93, i64 10, i64 20
  %95 = select i1 %92, i64 0, i64 %94
  %96 = lshr i64 %73, %95
  %97 = select i1 %93, i32 107, i32 77
  %98 = select i1 %92, i32 32, i32 %97
  %99 = icmp ult i64 %78, 10240
  %100 = icmp ult i64 %78, 10485760
  %101 = select i1 %100, i64 10, i64 20
  %102 = select i1 %99, i64 0, i64 %101
  %103 = lshr i64 %78, %102
  %104 = select i1 %100, i32 107, i32 77
  %105 = select i1 %99, i32 32, i32 %104
  %106 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.11, i64 noundef %84, i64 noundef %89, i32 noundef %91, i64 noundef %96, i32 noundef %98, i64 noundef %103, i32 noundef %105) #25
  %107 = add i64 %78, %47
  br label %108

108:                                              ; preds = %45, %81
  %109 = phi i64 [ %107, %81 ], [ %47, %45 ]
  %110 = add nuw nsw i64 %46, 1
  %111 = icmp eq i64 %110, 84
  br i1 %111, label %112, label %45, !llvm.loop !173

112:                                              ; preds = %108
  %113 = load ptr, ptr @stderr, align 8, !tbaa !43
  %114 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 7), align 8
  %115 = icmp ult i64 %114, 10240
  %116 = icmp ult i64 %114, 10485760
  %117 = select i1 %116, i64 10, i64 20
  %118 = select i1 %115, i64 0, i64 %117
  %119 = lshr i64 %114, %118
  %120 = select i1 %116, i32 107, i32 77
  %121 = select i1 %115, i32 32, i32 %120
  %122 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8
  %123 = icmp ult i64 %122, 10240
  %124 = icmp ult i64 %122, 10485760
  %125 = select i1 %124, i64 10, i64 20
  %126 = select i1 %123, i64 0, i64 %125
  %127 = lshr i64 %122, %126
  %128 = select i1 %124, i32 107, i32 77
  %129 = select i1 %123, i32 32, i32 %128
  %130 = icmp ult i64 %109, 10240
  %131 = icmp ult i64 %109, 10485760
  %132 = select i1 %131, i64 10, i64 20
  %133 = select i1 %130, i64 0, i64 %132
  %134 = lshr i64 %109, %133
  %135 = select i1 %131, i32 107, i32 77
  %136 = select i1 %130, i32 32, i32 %135
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef %119, i32 noundef %121, i64 noundef %127, i32 noundef %129, i64 noundef %134, i32 noundef %136) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

declare void @ggc_print_common_statistics(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @init_ggc_pch() local_unnamed_addr #10 !prof !42 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 1680) #24
  ret ptr %1
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ggc_pch_count_object(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #18 !prof !42 {
  %6 = icmp ult i64 %2, 512
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %2
  %9 = load i8, ptr %8, align 1, !tbaa !54
  %10 = zext i8 %9 to i32
  br label %18

11:                                               ; preds = %5, %11
  %12 = phi i32 [ %17, %11 ], [ 10, %5 ]
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !68
  %16 = icmp ult i64 %15, %2
  %17 = add i32 %12, 1
  br i1 %16, label %11, label %18, !llvm.loop !174

18:                                               ; preds = %11, %7
  %19 = phi i32 [ %10, %7 ], [ %12, %11 ]
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [84 x i32], ptr %0, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !58
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !58
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @ggc_pch_total_size(ptr nocapture noundef readonly %0) local_unnamed_addr #19 !prof !42 {
  %2 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !73
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %18, %3 ]
  %5 = phi i64 [ 0, %1 ], [ %17, %3 ]
  %6 = getelementptr inbounds [84 x i32], ptr %0, i64 0, i64 %4
  %7 = load i32, ptr %6, align 4, !tbaa !58
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %4
  %10 = load i64, ptr %9, align 8, !tbaa !68
  %11 = mul i64 %10, %8
  %12 = add i64 %11, %2
  %13 = freeze i64 %12
  %14 = add i64 %13, -1
  %15 = urem i64 %14, %2
  %16 = sub i64 %5, %15
  %17 = add i64 %16, %14
  %18 = add nuw nsw i64 %4, 1
  %19 = icmp eq i64 %18, 84
  br i1 %19, label %20, label %3, !llvm.loop !175

20:                                               ; preds = %3
  ret i64 %17
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ggc_pch_this_base(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #18 !prof !42 {
  %3 = ptrtoint ptr %1 to i64
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %21, %4 ]
  %6 = phi i64 [ %3, %2 ], [ %20, %4 ]
  %7 = getelementptr inbounds %struct.ggc_pch_data, ptr %0, i64 0, i32 1, i64 %5
  store i64 %6, ptr %7, align 8, !tbaa !68
  %8 = getelementptr inbounds [84 x i32], ptr %0, i64 0, i64 %5
  %9 = load i32, ptr %8, align 4, !tbaa !58
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %5
  %12 = load i64, ptr %11, align 8, !tbaa !68
  %13 = mul i64 %12, %10
  %14 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !73
  %15 = add i64 %13, %14
  %16 = freeze i64 %15
  %17 = add i64 %16, -1
  %18 = urem i64 %17, %14
  %19 = sub i64 %6, %18
  %20 = add i64 %19, %17
  %21 = add nuw nsw i64 %5, 1
  %22 = icmp eq i64 %21, 84
  br i1 %22, label %23, label %4, !llvm.loop !176

23:                                               ; preds = %4
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @ggc_pch_alloc_object(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #18 !prof !42 {
  %6 = icmp ult i64 %2, 512
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %2
  %9 = load i8, ptr %8, align 1, !tbaa !54
  %10 = zext i8 %9 to i32
  br label %18

11:                                               ; preds = %5, %11
  %12 = phi i32 [ %17, %11 ], [ 10, %5 ]
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !68
  %16 = icmp ult i64 %15, %2
  %17 = add i32 %12, 1
  br i1 %16, label %11, label %18, !llvm.loop !177

18:                                               ; preds = %11, %7
  %19 = phi i32 [ %10, %7 ], [ %12, %11 ]
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ggc_pch_data, ptr %0, i64 0, i32 1, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !68
  %23 = inttoptr i64 %22 to ptr
  %24 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %20
  %25 = load i64, ptr %24, align 8, !tbaa !68
  %26 = add i64 %25, %22
  store i64 %26, ptr %21, align 8, !tbaa !68
  ret ptr %23
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ggc_pch_prepare_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #15 !prof !42 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ggc_pch_write_object(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readnone %3, i64 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #10 !prof !42 {
  %7 = icmp ult i64 %4, 512
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %4
  %10 = load i8, ptr %9, align 1, !tbaa !54
  %11 = zext i8 %10 to i32
  br label %19

12:                                               ; preds = %6, %12
  %13 = phi i32 [ %18, %12 ], [ 10, %6 ]
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !68
  %17 = icmp ult i64 %16, %4
  %18 = add i32 %13, 1
  br i1 %17, label %12, label %19, !llvm.loop !178

19:                                               ; preds = %12, %8
  %20 = phi i32 [ %11, %8 ], [ %13, %12 ]
  %21 = tail call i64 @fwrite(ptr noundef %2, i64 noundef %4, i64 noundef 1, ptr noundef %1)
  %22 = icmp eq i64 %21, 1
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.14) #24
  br label %24

24:                                               ; preds = %23, %19
  %25 = zext i32 %20 to i64
  %26 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !68
  %28 = icmp eq i64 %27, %4
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  %30 = sub i64 %27, %4
  %31 = and i64 %30, 4294967295
  %32 = icmp ult i64 %31, 257
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr noundef nonnull @ggc_pch_write_object.emptyBytes, i64 noundef 1, i64 noundef %31, ptr noundef %1)
  %35 = icmp eq i64 %34, %31
  br i1 %35, label %40, label %39

36:                                               ; preds = %29
  %37 = tail call i32 @fseek(ptr noundef %1, i64 noundef %31, i32 noundef 1)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %33
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.15) #24
  br label %40

40:                                               ; preds = %39, %33, %36, %24
  %41 = getelementptr inbounds %struct.ggc_pch_data, ptr %0, i64 0, i32 2, i64 %25
  %42 = load i64, ptr %41, align 8, !tbaa !68
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 8, !tbaa !68
  %44 = getelementptr inbounds [84 x i32], ptr %0, i64 0, i64 %25
  %45 = load i32, ptr %44, align 4, !tbaa !58
  %46 = zext i32 %45 to i64
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !73
  %50 = add i64 %49, -1
  %51 = load i64, ptr %26, align 8, !tbaa !68
  %52 = mul i64 %51, %46
  %53 = add i64 %52, %50
  %54 = urem i64 %53, %49
  %55 = sub i64 %50, %54
  %56 = tail call i32 @fseek(ptr noundef %1, i64 noundef %55, i32 noundef 1)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.14) #24
  br label %59

59:                                               ; preds = %58, %48, %40
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @ggc_pch_finish(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !prof !42 {
  %3 = tail call i64 @fwrite(ptr noundef %0, i64 noundef 336, i64 noundef 1, ptr noundef %1)
  %4 = icmp eq i64 %3, 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.14) #24
  br label %6

6:                                                ; preds = %5, %2
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: cold nounwind uwtable
define dso_local void @ggc_pch_read(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !42 {
  %3 = alloca %struct.ggc_pch_ondisk, align 4
  call void @llvm.lifetime.start.p0(i64 336, ptr nonnull %3) #24
  %4 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !113
  br label %5

5:                                                ; preds = %2, %64
  %6 = phi i64 [ 2, %2 ], [ %65, %64 ]
  %7 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %64, label %10

10:                                               ; preds = %5, %54
  %11 = phi ptr [ %62, %54 ], [ %8, %5 ]
  %12 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !76
  %14 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 9
  %15 = load i8, ptr %14, align 2, !tbaa !82
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !68
  %19 = udiv i64 %13, %18
  %20 = add i64 %19, 64
  %21 = lshr i64 %20, 3
  %22 = and i64 %21, 2305843009213693944
  %23 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !80
  %25 = ptrtoint ptr %24 to i64
  %26 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !73
  %27 = add i64 %26, -1
  %28 = and i64 %27, %25
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1685, ptr noundef nonnull @.str.4) #24
  br label %31

31:                                               ; preds = %30, %10
  %32 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 6
  %33 = load i16, ptr %32, align 8, !tbaa !62
  %34 = load i16, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 10), align 8, !tbaa !101
  %35 = icmp ult i16 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !118
  %38 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 5
  %39 = load i64, ptr %38, align 8, !tbaa !114
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = tail call ptr @xmalloc(i64 noundef %22) #24
  %45 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !118
  %46 = load i64, ptr %38, align 8, !tbaa !114
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46
  store ptr %44, ptr %47, align 8, !tbaa !43
  br label %48

48:                                               ; preds = %43, %36
  %49 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !118
  %50 = load i64, ptr %38, align 8, !tbaa !114
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  %53 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %52, ptr nonnull align 8 %53, i64 %22, i1 false)
  br label %54

54:                                               ; preds = %48, %31
  %55 = trunc i64 %19 to i16
  %56 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 7
  store i16 %55, ptr %56, align 2, !tbaa !64
  %57 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %57, i8 0, i64 %22, i1 false)
  %58 = and i64 %19, 63
  %59 = shl nuw i64 1, %58
  %60 = lshr i64 %19, 6
  %61 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 10, i64 %60
  store i64 %59, ptr %61, align 8, !tbaa !68
  %62 = load ptr, ptr %11, align 8, !tbaa !43
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %10, !llvm.loop !179

64:                                               ; preds = %54, %5
  %65 = add nuw nsw i64 %6, 1
  %66 = icmp eq i64 %65, 84
  br i1 %66, label %67, label %5, !llvm.loop !180

67:                                               ; preds = %64
  %68 = load i16, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 10), align 8, !tbaa !101
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2328, ptr noundef nonnull @.str.4) #24
  br label %71

71:                                               ; preds = %67, %70
  store i16 1, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 10), align 8, !tbaa !101
  br label %72

72:                                               ; preds = %71, %82
  %73 = phi i64 [ 0, %71 ], [ %83, %82 ]
  %74 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !43
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %72, %77
  %78 = phi ptr [ %80, %77 ], [ %75, %72 ]
  %79 = getelementptr inbounds %struct.page_entry, ptr %78, i64 0, i32 6
  store i16 1, ptr %79, align 8, !tbaa !62
  %80 = load ptr, ptr %78, align 8, !tbaa !43
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %77, !llvm.loop !181

82:                                               ; preds = %77, %72
  %83 = add nuw nsw i64 %73, 1
  %84 = icmp eq i64 %83, 84
  br i1 %84, label %85, label %72, !llvm.loop !182

85:                                               ; preds = %82
  %86 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 336, i64 noundef 1, ptr noundef %0)
  %87 = icmp eq i64 %86, 1
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.16) #24
  br label %89

89:                                               ; preds = %88, %85
  br label %90

90:                                               ; preds = %89, %183
  %91 = phi i64 [ %185, %183 ], [ 0, %89 ]
  %92 = phi ptr [ %184, %183 ], [ %1, %89 ]
  %93 = getelementptr inbounds [84 x i32], ptr %3, i64 0, i64 %91
  %94 = load i32, ptr %93, align 4, !tbaa !58
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %183, label %96

96:                                               ; preds = %90
  %97 = zext i32 %94 to i64
  %98 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %91
  %99 = load i64, ptr %98, align 8, !tbaa !68
  %100 = mul i64 %99, %97
  %101 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !73
  %102 = add i64 %100, %101
  %103 = freeze i64 %102
  %104 = add i64 %103, -1
  %105 = urem i64 %104, %101
  %106 = sub nuw i64 %104, %105
  %107 = udiv i64 %106, %99
  %108 = add i64 %107, 1
  %109 = add i64 %107, 64
  %110 = lshr i64 %109, 3
  %111 = and i64 %110, 2305843009213693944
  %112 = add nuw nsw i64 %111, 56
  %113 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %112) #24
  %114 = getelementptr inbounds %struct.page_entry, ptr %113, i64 0, i32 2
  store i64 %106, ptr %114, align 8, !tbaa !76
  %115 = getelementptr inbounds %struct.page_entry, ptr %113, i64 0, i32 3
  store ptr %92, ptr %115, align 8, !tbaa !80
  %116 = getelementptr inbounds %struct.page_entry, ptr %113, i64 0, i32 6
  store i16 0, ptr %116, align 8, !tbaa !62
  %117 = getelementptr inbounds i8, ptr %92, i64 %106
  %118 = getelementptr inbounds %struct.page_entry, ptr %113, i64 0, i32 7
  store i16 0, ptr %118, align 2, !tbaa !64
  %119 = trunc i64 %91 to i8
  %120 = getelementptr inbounds %struct.page_entry, ptr %113, i64 0, i32 9
  store i8 %119, ptr %120, align 2, !tbaa !82
  %121 = icmp ult i64 %108, 64
  br i1 %121, label %122, label %125

122:                                              ; preds = %125, %96
  %123 = phi i64 [ 0, %96 ], [ %126, %125 ]
  %124 = icmp ult i64 %123, %108
  br i1 %124, label %137, label %132

125:                                              ; preds = %96, %125
  %126 = phi i64 [ %130, %125 ], [ 64, %96 ]
  %127 = phi i64 [ %126, %125 ], [ 0, %96 ]
  %128 = lshr exact i64 %127, 6
  %129 = getelementptr inbounds %struct.page_entry, ptr %113, i64 0, i32 10, i64 %128
  store i64 -1, ptr %129, align 8, !tbaa !68
  %130 = add nuw i64 %126, 64
  %131 = icmp ugt i64 %130, %108
  br i1 %131, label %122, label %125, !llvm.loop !183

132:                                              ; preds = %137, %122
  %133 = load ptr, ptr %115, align 8, !tbaa !80
  %134 = load i64, ptr %114, align 8, !tbaa !76
  %135 = getelementptr inbounds i8, ptr %133, i64 %134
  %136 = icmp ult ptr %92, %135
  br i1 %136, label %147, label %155

137:                                              ; preds = %122, %137
  %138 = phi i64 [ %145, %137 ], [ %123, %122 ]
  %139 = and i64 %138, 63
  %140 = shl nuw i64 1, %139
  %141 = lshr i64 %138, 6
  %142 = getelementptr inbounds %struct.page_entry, ptr %113, i64 0, i32 10, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !68
  %144 = or i64 %143, %140
  store i64 %144, ptr %142, align 8, !tbaa !68
  %145 = add nuw i64 %138, 1
  %146 = icmp ult i64 %145, %108
  br i1 %146, label %137, label %132, !llvm.loop !184

147:                                              ; preds = %132, %147
  %148 = phi ptr [ %150, %147 ], [ %92, %132 ]
  tail call fastcc void @set_page_table_entry(ptr noundef %148, ptr noundef %113)
  %149 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !73
  %150 = getelementptr inbounds i8, ptr %148, i64 %149
  %151 = load ptr, ptr %115, align 8, !tbaa !80
  %152 = load i64, ptr %114, align 8, !tbaa !76
  %153 = getelementptr inbounds i8, ptr %151, i64 %152
  %154 = icmp ult ptr %150, %153
  br i1 %154, label %147, label %155, !llvm.loop !185

155:                                              ; preds = %147, %132
  %156 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %91
  %157 = load ptr, ptr %156, align 8, !tbaa !43
  %158 = icmp eq ptr %157, null
  %159 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %91
  %160 = select i1 %158, ptr %159, ptr %157
  store ptr %113, ptr %160, align 8, !tbaa !43
  store ptr %113, ptr %156, align 8, !tbaa !43
  %161 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !113
  %162 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !115
  %163 = icmp ult i32 %161, %162
  br i1 %163, label %175, label %164

164:                                              ; preds = %155
  %165 = shl i32 %162, 1
  store i32 %165, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !115
  %166 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !117
  %167 = zext i32 %165 to i64
  %168 = shl nuw nsw i64 %167, 3
  %169 = tail call ptr @xrealloc(ptr noundef %166, i64 noundef %168) #24
  store ptr %169, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !117
  %170 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !118
  %171 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !115
  %172 = zext i32 %171 to i64
  %173 = shl nuw nsw i64 %172, 3
  %174 = tail call ptr @xrealloc(ptr noundef %170, i64 noundef %173) #24
  store ptr %174, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !118
  br label %175

175:                                              ; preds = %155, %164
  %176 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !117
  %177 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !113
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds ptr, ptr %176, i64 %178
  store ptr %113, ptr %179, align 8, !tbaa !43
  %180 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !118
  %181 = add i32 %177, 1
  store i32 %181, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !113
  %182 = getelementptr inbounds ptr, ptr %180, i64 %178
  store ptr null, ptr %182, align 8, !tbaa !43
  br label %183

183:                                              ; preds = %90, %175
  %184 = phi ptr [ %117, %175 ], [ %92, %90 ]
  %185 = add nuw nsw i64 %91, 1
  %186 = icmp eq i64 %185, 84
  br i1 %186, label %187, label %90, !llvm.loop !186

187:                                              ; preds = %183
  %188 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !113
  %189 = sub i32 %188, %4
  %190 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !115
  %191 = zext i32 %190 to i64
  %192 = shl nuw nsw i64 %191, 3
  %193 = tail call ptr @xmalloc(i64 noundef %192) #24
  %194 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !115
  %195 = zext i32 %194 to i64
  %196 = shl nuw nsw i64 %195, 3
  %197 = tail call ptr @xmalloc(i64 noundef %196) #24
  %198 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !117
  %199 = sext i32 %4 to i64
  %200 = getelementptr inbounds ptr, ptr %198, i64 %199
  %201 = sext i32 %189 to i64
  %202 = shl nsw i64 %201, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %193, ptr align 8 %200, i64 %202, i1 false)
  %203 = getelementptr inbounds ptr, ptr %193, i64 %201
  %204 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !117
  %205 = shl nsw i64 %199, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %203, ptr align 8 %204, i64 %205, i1 false)
  %206 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !118
  %207 = getelementptr inbounds ptr, ptr %206, i64 %199
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %197, ptr align 8 %207, i64 %202, i1 false)
  %208 = getelementptr inbounds ptr, ptr %197, i64 %201
  %209 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !118
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %208, ptr align 8 %209, i64 %205, i1 false)
  %210 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !117
  tail call void @free(ptr noundef %210)
  %211 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !118
  tail call void @free(ptr noundef %211)
  store ptr %193, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !117
  store ptr %197, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !118
  %212 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !113
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %224, label %214

214:                                              ; preds = %187
  %215 = zext i32 %212 to i64
  br label %216

216:                                              ; preds = %214, %216
  %217 = phi i64 [ %215, %214 ], [ %219, %216 ]
  %218 = add nsw i64 %217, -1
  %219 = add nsw i64 %217, -1
  %220 = getelementptr inbounds ptr, ptr %193, i64 %218
  %221 = load ptr, ptr %220, align 8, !tbaa !43
  %222 = getelementptr inbounds %struct.page_entry, ptr %221, i64 0, i32 5
  store i64 %218, ptr %222, align 8, !tbaa !114
  %223 = icmp eq i64 %218, 0
  br i1 %223, label %224, label %216, !llvm.loop !187

224:                                              ; preds = %216, %187
  %225 = icmp eq i32 %4, 0
  br i1 %225, label %242, label %226

226:                                              ; preds = %224
  %227 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !119
  %228 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 15), align 4, !tbaa !121
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %236, label %230

230:                                              ; preds = %226
  %231 = shl i32 %228, 1
  store i32 %231, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 15), align 4, !tbaa !121
  %232 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 16), align 8, !tbaa !123
  %233 = zext i32 %231 to i64
  %234 = shl nuw nsw i64 %233, 2
  %235 = tail call ptr @xrealloc(ptr noundef %232, i64 noundef %234) #24
  store ptr %235, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 16), align 8, !tbaa !123
  br label %236

236:                                              ; preds = %230, %226
  %237 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 16), align 8, !tbaa !123
  %238 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !119
  %239 = add i32 %238, 1
  store i32 %239, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !119
  %240 = zext i32 %238 to i64
  %241 = getelementptr inbounds i32, ptr %237, i64 %240
  store i32 %189, ptr %241, align 4, !tbaa !58
  br label %242

242:                                              ; preds = %224, %236
  %243 = ptrtoint ptr %184 to i64
  %244 = ptrtoint ptr %1 to i64
  %245 = sub i64 %243, %244
  store i64 %245, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 6), align 8, !tbaa !169
  store i64 %245, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %3) #24
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_page_table_entry(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !42 !PGOFuncName !188 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, -4294967296
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !105

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.page_table_chain, ptr %7, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !106
  %12 = icmp eq i64 %11, %4
  br i1 %12, label %17, label %5, !prof !108, !llvm.loop !109

13:                                               ; preds = %5
  %14 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 2064) #24
  %15 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), align 8, !tbaa !110
  store ptr %15, ptr %14, align 8, !tbaa !111
  %16 = getelementptr inbounds %struct.page_table_chain, ptr %14, i64 0, i32 1
  store i64 %4, ptr %16, align 8, !tbaa !106
  store ptr %14, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), align 8, !tbaa !110
  br label %17

17:                                               ; preds = %9, %13
  %18 = phi ptr [ %14, %13 ], [ %7, %9 ]
  %19 = getelementptr inbounds %struct.page_table_chain, ptr %18, i64 0, i32 2
  %20 = lshr i64 %3, 24
  %21 = and i64 %20, 255
  %22 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !104
  %23 = sub i64 24, %22
  %24 = getelementptr inbounds ptr, ptr %19, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30, !prof !112

27:                                               ; preds = %17
  %28 = shl nuw i64 1, %23
  %29 = tail call ptr @xcalloc(i64 noundef %28, i64 noundef 8) #24
  store ptr %29, ptr %24, align 8, !tbaa !43
  br label %30

30:                                               ; preds = %27, %17
  %31 = lshr i64 %3, %22
  %32 = trunc i64 %23 to i32
  %33 = shl nsw i32 -1, %32
  %34 = xor i32 %33, -1
  %35 = zext nneg i32 %34 to i64
  %36 = and i64 %31, %35
  %37 = load ptr, ptr %24, align 8, !tbaa !43
  %38 = getelementptr inbounds ptr, ptr %37, i64 %36
  store ptr %1, ptr %38, align 8, !tbaa !43
  ret void
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @ggc_alloc_stat, ptr @free, i64 131120}
!36 = !{ptr @ggc_alloc_stat, ptr @xmalloc, i64 17439}
!37 = !{ptr @ggc_alloc_stat, ptr @xcalloc, i64 369769}
!38 = !{ptr @ggc_alloc_stat, ptr @xrealloc, i64 22}
!39 = !{ptr @init_ggc, ptr @exact_log2, i64 1}
!40 = !{ptr @init_ggc, ptr @xmalloc, i64 3}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!48, !44, i64 8}
!48 = !{!"_IO_FILE", !49, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !44, i64 104, !49, i64 112, !49, i64 116, !50, i64 120, !51, i64 128, !45, i64 130, !45, i64 131, !44, i64 136, !50, i64 144, !44, i64 152, !44, i64 160, !44, i64 168, !44, i64 176, !50, i64 184, !49, i64 192, !45, i64 196}
!49 = !{!"int", !45, i64 0}
!50 = !{!"long", !45, i64 0}
!51 = !{!"short", !45, i64 0}
!52 = !{!48, !44, i64 16}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{!45, !45, i64 0}
!55 = !{!48, !44, i64 40}
!56 = !{!48, !44, i64 48}
!57 = !{!48, !49, i64 0}
!58 = !{!49, !49, i64 0}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!63, !51, i64 48}
!63 = !{!"page_entry", !44, i64 0, !44, i64 8, !50, i64 16, !44, i64 24, !44, i64 32, !50, i64 40, !51, i64 48, !51, i64 50, !51, i64 52, !45, i64 54, !45, i64 56}
!64 = !{!63, !51, i64 50}
!65 = distinct !{!65, !60, !61}
!66 = !{!"function_entry_count", i64 24872622}
!67 = !{!"branch_weights", i32 24868384, i32 4238}
!68 = !{!50, !50, i64 0}
!69 = !{!"branch_weights", i32 12873, i32 4238}
!70 = distinct !{!70, !60, !61}
!71 = !{!"branch_weights", i32 37, i32 24872585}
!72 = !{!"branch_weights", i32 238521, i32 24634064}
!73 = !{!74, !50, i64 1352}
!74 = !{!"globals", !45, i64 0, !45, i64 672, !44, i64 1344, !50, i64 1352, !50, i64 1360, !50, i64 1368, !50, i64 1376, !50, i64 1384, !50, i64 1392, !50, i64 1400, !51, i64 1408, !44, i64 1416, !44, i64 1424, !44, i64 1432, !49, i64 1440, !49, i64 1444, !44, i64 1448, !49, i64 1456, !49, i64 1460, !44, i64 1464, !44, i64 1472}
!75 = !{!"branch_weights", i32 17439, i32 236936}
!76 = !{!63, !50, i64 16}
!77 = !{!"branch_weights", i32 221119, i32 15817}
!78 = distinct !{!78, !60, !61}
!79 = !{!63, !44, i64 0}
!80 = !{!63, !44, i64 24}
!81 = !{!63, !44, i64 32}
!82 = !{!63, !45, i64 54}
!83 = !{!"branch_weights", i32 89999, i32 131120}
!84 = !{!"VP", i32 1, i64 89999, i64 65, i64 62558, i64 64, i64 27382, i64 128, i64 59}
!85 = !{!"branch_weights", i32 1644, i32 15795}
!86 = !{!"branch_weights", i32 17269, i32 170}
!87 = !{!"branch_weights", i32 72, i32 98}
!88 = !{!"branch_weights", i32 170, i32 0}
!89 = !{!74, !44, i64 1424}
!90 = !{!91, !44, i64 0}
!91 = !{!"page_group", !44, i64 0, !44, i64 8, !50, i64 16, !49, i64 24}
!92 = !{!91, !44, i64 8}
!93 = !{!91, !50, i64 16}
!94 = !{!91, !49, i64 24}
!95 = !{!74, !50, i64 1384}
!96 = !{!74, !44, i64 1416}
!97 = !{!"branch_weights", i32 1, i32 15794}
!98 = !{!"branch_weights", i32 15794, i32 205336}
!99 = distinct !{!99, !60, !61}
!100 = !{!"branch_weights", i32 148559, i32 89999}
!101 = !{!74, !51, i64 1408}
!102 = !{!63, !51, i64 52}
!103 = !{!74, !50, i64 1392}
!104 = !{!74, !50, i64 1360}
!105 = !{!"branch_weights", i32 1, i32 238557}
!106 = !{!107, !50, i64 8}
!107 = !{!"page_table_chain", !44, i64 0, !50, i64 8, !45, i64 16}
!108 = !{!"branch_weights", i32 238557, i32 0}
!109 = distinct !{!109, !60, !61}
!110 = !{!74, !44, i64 1344}
!111 = !{!107, !44, i64 0}
!112 = !{!"branch_weights", i32 79, i32 238479}
!113 = !{!74, !49, i64 1456}
!114 = !{!63, !50, i64 40}
!115 = !{!74, !49, i64 1460}
!116 = !{!"branch_weights", i32 238547, i32 11}
!117 = !{!74, !44, i64 1464}
!118 = !{!74, !44, i64 1472}
!119 = !{!74, !49, i64 1440}
!120 = !{!"branch_weights", i32 238557, i32 1}
!121 = !{!74, !49, i64 1444}
!122 = !{!"branch_weights", i32 1, i32 0}
!123 = !{!74, !44, i64 1448}
!124 = distinct !{!124, !60, !61}
!125 = !{!"branch_weights", i32 37, i32 238521}
!126 = !{!63, !44, i64 8}
!127 = !{!"branch_weights", i32 24126212, i32 507852}
!128 = !{!"branch_weights", i32 65573, i32 507852}
!129 = distinct !{!129, !60, !61}
!130 = !{!"branch_weights", i32 507852, i32 15460125}
!131 = distinct !{!131, !60, !61}
!132 = !{!"branch_weights", i32 306124, i32 24566498}
!133 = !{!"branch_weights", i32 40, i32 306084}
!134 = !{!"branch_weights", i32 243096, i32 62988}
!135 = !{!74, !50, i64 1368}
!136 = distinct !{!136, !61}
!137 = distinct !{!137, !60, !61}
!138 = !{!139, !50, i64 0}
!139 = !{!"", !50, i64 0, !49, i64 8}
!140 = !{!139, !49, i64 8}
!141 = !{!"function_entry_count", i64 56117}
!142 = !{!"branch_weights", i32 56117, i32 0}
!143 = !{!"function_entry_count", i64 1228562}
!144 = !{!"branch_weights", i32 1228562, i32 0}
!145 = !{!"branch_weights", i32 69174, i32 1159388}
!146 = !{!"branch_weights", i32 4258, i32 64916}
!147 = !{!"branch_weights", i32 63977, i32 939}
!148 = !{!"branch_weights", i32 17219, i32 46758}
!149 = !{!"function_entry_count", i64 1}
!150 = !{!74, !44, i64 1432}
!151 = !{!"branch_weights", i32 1, i32 63}
!152 = distinct !{!152, !60, !61}
!153 = !{!"branch_weights", i32 1, i32 19}
!154 = distinct !{!154, !60, !61}
!155 = !{!"branch_weights", i32 167, i32 1}
!156 = !{!"branch_weights", i32 1, i32 167}
!157 = !{!"branch_weights", i32 4001, i32 167}
!158 = distinct !{!158, !60, !61}
!159 = !{!"branch_weights", i32 167, i32 17}
!160 = distinct !{!160, !60, !61}
!161 = !{!"branch_weights", i32 1, i32 83}
!162 = distinct !{!162, !60, !61}
!163 = !{!"branch_weights", i32 0, i32 20}
!164 = !{!"branch_weights", i32 159, i32 1}
!165 = !{!"branch_weights", i32 2017, i32 159}
!166 = distinct !{!166, !60, !61}
!167 = distinct !{!167, !60, !61}
!168 = !{!"function_entry_count", i64 11774}
!169 = !{!74, !50, i64 1376}
!170 = distinct !{!170, !60, !61}
!171 = distinct !{!171, !60, !61}
!172 = distinct !{!172, !60, !61}
!173 = distinct !{!173, !60, !61}
!174 = distinct !{!174, !60, !61}
!175 = distinct !{!175, !60, !61}
!176 = distinct !{!176, !60, !61}
!177 = distinct !{!177, !60, !61}
!178 = distinct !{!178, !60, !61}
!179 = distinct !{!179, !60, !61}
!180 = distinct !{!180, !60, !61}
!181 = distinct !{!181, !60, !61}
!182 = distinct !{!182, !60, !61}
!183 = distinct !{!183, !60, !61}
!184 = distinct !{!184, !60, !61}
!185 = distinct !{!185, !60, !61}
!186 = distinct !{!186, !60, !61}
!187 = distinct !{!187, !60, !61}
!188 = !{!"ggc-page.c;set_page_table_entry"}
