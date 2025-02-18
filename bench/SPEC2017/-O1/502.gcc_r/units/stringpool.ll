; ModuleID = 'stringpool.c'
source_filename = "stringpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.ht = type { %struct.obstack, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i8 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.string_pool_data = type { ptr, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@empty_string = dso_local constant [1 x i8] zeroinitializer, align 1
@digit_vector = dso_local constant [20 x i8] c"0\001\002\003\004\005\006\007\008\009\00", align 16
@ident_hash = dso_local local_unnamed_addr global ptr null, align 8
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@spd = internal global ptr null, align 8
@gt_ggc_r_gt_stringpool_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @spd, i64 1, i64 8, ptr @gt_ggc_mx_string_pool_data, ptr @gt_pch_nx_string_pool_data }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !45 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !46
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !45 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !46
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !56

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !50
  %11 = load i8, ptr %3, align 1, !tbaa !57
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !56

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !50
  %11 = load i8, ptr %3, align 1, !tbaa !57
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !45 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !46
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !56

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !50
  %11 = load i8, ptr %3, align 1, !tbaa !57
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !45 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !46
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !45 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !56

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !58
  store i8 %12, ptr %4, align 1, !tbaa !57
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !45 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !56

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !58
  store i8 %12, ptr %4, align 1, !tbaa !57
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !56

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !58
  store i8 %12, ptr %4, align 1, !tbaa !57
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !45 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !45 {
  %2 = load i32, ptr %0, align 8, !tbaa !60
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !45 {
  %2 = load i32, ptr %0, align 8, !tbaa !60
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !45 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !61
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !45 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !61
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !45 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #15
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
  br i1 %23, label %7, label %24, !llvm.loop !62

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @init_stringpool() local_unnamed_addr #9 !prof !65 {
  %1 = tail call ptr @ht_create(i32 noundef 14) #15
  store ptr %1, ptr @ident_hash, align 8, !tbaa !46
  %2 = getelementptr inbounds %struct.ht, ptr %1, i64 0, i32 2
  store ptr @alloc_node, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.ht, ptr %1, i64 0, i32 3
  store ptr @stringpool_ggc_alloc, ptr %3, align 8, !tbaa !69
  ret void
}

declare ptr @ht_create(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal nonnull ptr @alloc_node(ptr nocapture readnone %0) #10 !prof !70 !PGOFuncName !71 {
  %2 = tail call ptr @make_node_stat(i32 noundef 1) #15
  %3 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal ptr @stringpool_ggc_alloc(i64 noundef %0) #10 !prof !72 !PGOFuncName !73 {
  %2 = tail call ptr @ggc_alloc_stat(i64 noundef %0) #15
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @ggc_alloc_string(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !74 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %7, !prof !75

4:                                                ; preds = %2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %6 = trunc i64 %5 to i32
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ %6, %4 ], [ %1, %2 ]
  switch i32 %8, label %23 [
    i32 0, label %29
    i32 1, label %9
  ], !prof !76

9:                                                ; preds = %7
  %10 = load i8, ptr %0, align 1, !tbaa !57
  %11 = sext i8 %10 to i32
  %12 = and i32 %11, 255
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !77
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %9
  %19 = shl nsw i32 %11, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, ptr @digit_vector, i64 %20
  %22 = getelementptr i8, ptr %21, i64 -96
  br label %29

23:                                               ; preds = %7, %9
  %24 = add nsw i32 %8, 1
  %25 = sext i32 %24 to i64
  %26 = tail call ptr @ggc_alloc_stat(i64 noundef %25) #15
  %27 = sext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %0, i64 %27, i1 false), !prof !78
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  store i8 0, ptr %28, align 1, !tbaa !57
  br label %29

29:                                               ; preds = %7, %23, %18
  %30 = phi ptr [ %22, %18 ], [ %26, %23 ], [ @empty_string, %7 ]
  ret ptr %30
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @get_identifier(ptr noundef %0) local_unnamed_addr #10 !prof !79 {
  %2 = load ptr, ptr @ident_hash, align 8, !tbaa !46
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %4 = tail call ptr @ht_lookup(ptr noundef %2, ptr noundef %0, i64 noundef %3, i32 noundef 1) #15
  %5 = getelementptr inbounds i8, ptr %4, i64 -24
  ret ptr %5
}

declare ptr @ht_lookup(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local nonnull ptr @get_identifier_with_length(ptr noundef %0, i64 noundef %1) local_unnamed_addr #9 !prof !45 {
  %3 = load ptr, ptr @ident_hash, align 8, !tbaa !46
  %4 = tail call ptr @ht_lookup(ptr noundef %3, ptr noundef %0, i64 noundef %1, i32 noundef 1) #15
  %5 = getelementptr inbounds i8, ptr %4, i64 -24
  ret ptr %5
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @maybe_get_identifier(ptr noundef %0) local_unnamed_addr #13 !prof !80 {
  %2 = load ptr, ptr @ident_hash, align 8, !tbaa !46
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %4 = tail call ptr @ht_lookup(ptr noundef %2, ptr noundef %0, i64 noundef %3, i32 noundef 0) #15
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds i8, ptr %4, i64 -24
  %7 = select i1 %5, ptr null, ptr %6, !prof !81
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local void @stringpool_statistics() local_unnamed_addr #9 !prof !45 {
  %1 = load ptr, ptr @ident_hash, align 8, !tbaa !46
  tail call void @ht_dump_statistics(ptr noundef %1) #15
  ret void
}

declare void @ht_dump_statistics(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ggc_mark_stringpool() local_unnamed_addr #9 !prof !45 {
  %1 = load ptr, ptr @ident_hash, align 8, !tbaa !46
  tail call void @ht_forall(ptr noundef %1, ptr noundef nonnull @mark_ident, ptr noundef null) #15
  ret void
}

declare void @ht_forall(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @mark_ident(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #9 !prof !45 {
  %4 = getelementptr inbounds i8, ptr %1, i64 -24
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %4) #15
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ggc_purge_stringpool() local_unnamed_addr #9 !prof !45 {
  %1 = load ptr, ptr @ident_hash, align 8, !tbaa !46
  tail call void @ht_purge(ptr noundef %1, ptr noundef nonnull @maybe_delete_ident, ptr noundef null) #15
  ret void
}

declare void @ht_purge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @maybe_delete_ident(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #9 !prof !45 {
  %4 = getelementptr inbounds i8, ptr %1, i64 -24
  %5 = tail call i32 @ggc_marked_p(ptr noundef nonnull %4) #15
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gt_pch_p_S(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #14 !prof !45 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_S(ptr noundef %0) local_unnamed_addr #9 !prof !45 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_S, i32 noundef 217) #15
  ret void
}

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_save_stringpool() local_unnamed_addr #9 !prof !45 {
  %1 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #15
  store ptr %1, ptr @spd, align 8, !tbaa !46
  %2 = load ptr, ptr @ident_hash, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.ht, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.string_pool_data, ptr %1, i64 0, i32 1
  store i32 %4, ptr %5, align 8, !tbaa !83
  %6 = getelementptr inbounds %struct.ht, ptr %2, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds %struct.string_pool_data, ptr %1, i64 0, i32 2
  store i32 %7, ptr %8, align 4, !tbaa !86
  %9 = zext i32 %4 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = tail call ptr @ggc_alloc_stat(i64 noundef %10) #15
  %12 = load ptr, ptr @spd, align 8, !tbaa !46
  store ptr %11, ptr %12, align 8, !tbaa !87
  %13 = load ptr, ptr @spd, align 8, !tbaa !46
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = load ptr, ptr @ident_hash, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.ht, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = getelementptr inbounds %struct.string_pool_data, ptr %13, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !83
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %17, i64 %21, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gt_pch_fixup_stringpool() local_unnamed_addr #14 !prof !45 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_restore_stringpool() local_unnamed_addr #9 !prof !45 {
  %1 = load ptr, ptr @ident_hash, align 8, !tbaa !46
  %2 = load ptr, ptr @spd, align 8, !tbaa !46
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.string_pool_data, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = getelementptr inbounds %struct.string_pool_data, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !86
  tail call void @ht_load(ptr noundef %1, ptr noundef %3, i32 noundef %5, i32 noundef %7, i8 noundef zeroext 0) #15
  store ptr null, ptr @spd, align 8, !tbaa !46
  ret void
}

declare void @ht_load(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_string_pool_data(ptr noundef %0) #9 !prof !45 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !87
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.string_pool_data, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !83
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %9, %21
  %14 = phi i64 [ %22, %21 ], [ 0, %9 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !87
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, ptr %17, i64 -24
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %20) #15
  br label %21

21:                                               ; preds = %19, %13
  %22 = add i64 %14, 1
  %23 = load i32, ptr %10, align 8, !tbaa !83
  %24 = zext i32 %23 to i64
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %13, !llvm.loop !89

26:                                               ; preds = %21, %9
  %27 = load ptr, ptr %0, align 8, !tbaa !87
  %28 = icmp ult ptr %27, inttoptr (i64 2 to ptr)
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @ggc_set_mark(ptr noundef nonnull %27) #15
  br label %31

31:                                               ; preds = %26, %1, %29, %6, %3
  ret void
}

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_string_pool_data(ptr noundef %0) #9 !prof !45 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_16string_pool_data, i32 noundef 61) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !87
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.string_pool_data, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !83
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %7, %19
  %12 = phi i64 [ %20, %19 ], [ 0, %7 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !87
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %15, i64 -24
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %18) #15
  br label %19

19:                                               ; preds = %17, %11
  %20 = add i64 %12, 1
  %21 = load i32, ptr %8, align 8, !tbaa !83
  %22 = zext i32 %21 to i64
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %11, !llvm.loop !90

24:                                               ; preds = %19, %7
  %25 = load ptr, ptr %0, align 8, !tbaa !87
  %26 = tail call i32 @gt_pch_note_object(ptr noundef %25, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_16string_pool_data, i32 noundef 217) #15
  br label %27

27:                                               ; preds = %4, %24, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_16string_pool_data(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !45 {
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %1, align 8, !tbaa !87
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.string_pool_data, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !83
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %8, %22
  %13 = phi i64 [ %29, %22 ], [ 0, %8 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %14 = load ptr, ptr %1, align 8, !tbaa !87
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds i8, ptr %16, i64 -24
  %19 = select i1 %17, ptr null, ptr %18
  store ptr %19, ptr %5, align 8, !tbaa !46
  %20 = icmp eq ptr %14, %0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  call void %2(ptr noundef nonnull %5, ptr noundef %3) #15
  br label %22

22:                                               ; preds = %21, %12
  %23 = load ptr, ptr %5, align 8
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.tree_identifier, ptr %23, i64 0, i32 1
  %26 = select i1 %24, ptr null, ptr %25
  %27 = load ptr, ptr %1, align 8, !tbaa !87
  %28 = getelementptr inbounds ptr, ptr %27, i64 %13
  store ptr %26, ptr %28, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %29 = add i64 %13, 1
  %30 = load i32, ptr %9, align 8, !tbaa !83
  %31 = zext i32 %30 to i64
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %12, !llvm.loop !91

33:                                               ; preds = %22, %8
  %34 = icmp eq ptr %1, %0
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  call void %2(ptr noundef nonnull %1, ptr noundef %3) #15
  br label %36

36:                                               ; preds = %33, %35, %4
  ret void
}

declare void @gt_pch_nx_lang_tree_node(ptr noundef) local_unnamed_addr #3

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

declare i32 @ggc_marked_p(ptr noundef) local_unnamed_addr #3

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
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @init_stringpool, ptr @ht_create, i64 1}
!36 = !{ptr @alloc_node, ptr @make_node_stat, i64 23085}
!37 = !{ptr @stringpool_ggc_alloc, ptr @ggc_alloc_stat, i64 23478}
!38 = !{ptr @ggc_alloc_string, ptr @strlen, i64 6}
!39 = !{ptr @ggc_alloc_string, ptr @ggc_alloc_stat, i64 6}
!40 = !{ptr @get_identifier, ptr @strlen, i64 14222}
!41 = !{ptr @get_identifier, ptr @ht_lookup, i64 14222}
!42 = !{ptr @maybe_get_identifier, ptr @strlen, i64 332954}
!43 = !{ptr @maybe_get_identifier, ptr @ht_lookup, i64 332954}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!51, !47, i64 8}
!51 = !{!"_IO_FILE", !52, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !52, i64 112, !52, i64 116, !53, i64 120, !54, i64 128, !48, i64 130, !48, i64 131, !47, i64 136, !53, i64 144, !47, i64 152, !47, i64 160, !47, i64 168, !47, i64 176, !53, i64 184, !52, i64 192, !48, i64 196}
!52 = !{!"int", !48, i64 0}
!53 = !{!"long", !48, i64 0}
!54 = !{!"short", !48, i64 0}
!55 = !{!51, !47, i64 16}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{!48, !48, i64 0}
!58 = !{!51, !47, i64 40}
!59 = !{!51, !47, i64 48}
!60 = !{!51, !52, i64 0}
!61 = !{!52, !52, i64 0}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!"function_entry_count", i64 1}
!66 = !{!67, !47, i64 96}
!67 = !{!"ht", !68, i64 0, !47, i64 88, !47, i64 96, !47, i64 104, !52, i64 112, !52, i64 116, !47, i64 120, !52, i64 128, !52, i64 132, !48, i64 136}
!68 = !{!"obstack", !53, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !53, i64 40, !52, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !52, i64 80, !52, i64 80, !52, i64 80}
!69 = !{!67, !47, i64 104}
!70 = !{!"function_entry_count", i64 23085}
!71 = !{!"stringpool.c;alloc_node"}
!72 = !{!"function_entry_count", i64 23478}
!73 = !{!"stringpool.c;stringpool_ggc_alloc"}
!74 = !{!"function_entry_count", i64 6}
!75 = !{!"branch_weights", i32 6, i32 0}
!76 = !{!"branch_weights", i32 6, i32 0, i32 0}
!77 = !{!54, !54, i64 0}
!78 = !{!"VP", i32 1, i64 6, i64 5, i64 3, i64 9, i64 2, i64 17, i64 1}
!79 = !{!"function_entry_count", i64 14222}
!80 = !{!"function_entry_count", i64 332954}
!81 = !{!"branch_weights", i32 186712, i32 146242}
!82 = !{!67, !52, i64 112}
!83 = !{!84, !52, i64 8}
!84 = !{!"string_pool_data", !47, i64 0, !52, i64 8, !52, i64 12}
!85 = !{!67, !52, i64 116}
!86 = !{!84, !52, i64 12}
!87 = !{!84, !47, i64 0}
!88 = !{!67, !47, i64 88}
!89 = distinct !{!89, !63, !64}
!90 = distinct !{!90, !63, !64}
!91 = distinct !{!91, !63, !64}
