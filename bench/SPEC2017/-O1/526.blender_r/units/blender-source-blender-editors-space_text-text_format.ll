; ModuleID = 'blender/source/blender/editors/space_text/text_format.c'
source_filename = "blender/source/blender/editors/space_text/text_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.FlattenString = type { [256 x i8], [256 x i32], ptr, ptr, i32, i32 }
%struct.SpaceText = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], ptr, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, float, %struct.rcti, %struct.rcti, i32, i32, [256 x i8], [256 x i8], i16, i16, [4 x i8], ptr, [2 x float] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.TextLine = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.TextFormatType = type { ptr, ptr, ptr, ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"SyntaxFormat\00", align 1
@tft_lb = internal global %struct.ListBase zeroinitializer, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"fs->buf\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"fs->accum\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @flatten_string(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1304) %1, i8 0, i64 1304, i1 false)
  %4 = getelementptr inbounds %struct.FlattenString, ptr %1, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.FlattenString, ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.FlattenString, ptr %1, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.FlattenString, ptr %1, i64 0, i32 5
  store i32 256, ptr %7, align 4, !tbaa !41
  %8 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  %9 = getelementptr inbounds %struct.FlattenString, ptr %1, i64 0, i32 4
  br label %10

10:                                               ; preds = %65, %3
  %11 = phi i32 [ 0, %3 ], [ %70, %65 ]
  %12 = phi i32 [ 0, %3 ], [ %69, %65 ]
  %13 = phi ptr [ %2, %3 ], [ %68, %65 ]
  %14 = load i8, ptr %13, align 1, !tbaa !42
  switch i8 %14, label %62 [
    i8 0, label %71
    i8 9, label %15
  ]

15:                                               ; preds = %10
  %16 = load i32, ptr %8, align 8, !tbaa !43
  %17 = srem i32 %12, %16
  %18 = sub nsw i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %65, label %20

20:                                               ; preds = %15, %50
  %21 = phi i32 [ %22, %50 ], [ %18, %15 ]
  %22 = add nsw i32 %21, -1
  %23 = load i32, ptr %9, align 8, !tbaa !49
  %24 = load i32, ptr %7, align 4, !tbaa !41
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %50, label %26

26:                                               ; preds = %20
  %27 = shl nsw i32 %24, 1
  store i32 %27, ptr %7, align 4, !tbaa !41
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %29 = sext i32 %27 to i64
  %30 = tail call ptr %28(i64 noundef %29, ptr noundef nonnull @.str.3) #7
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %32 = load i32, ptr %7, align 4, !tbaa !41
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr %31(i64 noundef %34, ptr noundef nonnull @.str.4) #7
  %36 = load ptr, ptr %4, align 8, !tbaa !34
  %37 = load i32, ptr %9, align 8, !tbaa !49
  %38 = sext i32 %37 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr align 1 %36, i64 %38, i1 false)
  %39 = load ptr, ptr %6, align 8, !tbaa !40
  %40 = load i32, ptr %9, align 8, !tbaa !49
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %35, ptr align 4 %39, i64 %42, i1 false)
  %43 = load ptr, ptr %4, align 8, !tbaa !34
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %49, label %45

45:                                               ; preds = %26
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %46(ptr noundef %43) #7
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %48 = load ptr, ptr %6, align 8, !tbaa !40
  tail call void %47(ptr noundef %48) #7
  br label %49

49:                                               ; preds = %45, %26
  store ptr %30, ptr %4, align 8, !tbaa !34
  store ptr %35, ptr %6, align 8, !tbaa !40
  br label %50

50:                                               ; preds = %20, %49
  %51 = load ptr, ptr %4, align 8, !tbaa !34
  %52 = load i32, ptr %9, align 8, !tbaa !49
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %51, i64 %53
  store i8 32, ptr %54, align 1, !tbaa !42
  %55 = load ptr, ptr %6, align 8, !tbaa !40
  %56 = load i32, ptr %9, align 8, !tbaa !49
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, ptr %55, i64 %57
  store i32 %11, ptr %58, align 4, !tbaa !51
  %59 = load i32, ptr %9, align 8, !tbaa !49
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %9, align 8, !tbaa !49
  %61 = icmp eq i32 %22, 0
  br i1 %61, label %65, label %20, !llvm.loop !52

62:                                               ; preds = %10
  %63 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %13) #7
  %64 = sext i32 %63 to i64
  tail call fastcc void @flatten_string_append(ptr noundef %1, ptr noundef nonnull %13, i32 noundef %11, i32 noundef %63)
  br label %65

65:                                               ; preds = %50, %15, %62
  %66 = phi i64 [ %64, %62 ], [ 1, %15 ], [ 1, %50 ]
  %67 = phi i32 [ 1, %62 ], [ %18, %15 ], [ %18, %50 ]
  %68 = getelementptr inbounds i8, ptr %13, i64 %66
  %69 = add nsw i32 %67, %12
  %70 = add nuw nsw i32 %11, 1
  br label %10, !llvm.loop !55

71:                                               ; preds = %10
  %72 = getelementptr inbounds %struct.FlattenString, ptr %1, i64 0, i32 4
  %73 = load i32, ptr %72, align 8, !tbaa !49
  %74 = load i32, ptr %7, align 4, !tbaa !41
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %100, label %76

76:                                               ; preds = %71
  %77 = shl nsw i32 %74, 1
  store i32 %77, ptr %7, align 4, !tbaa !41
  %78 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %79 = sext i32 %77 to i64
  %80 = tail call ptr %78(i64 noundef %79, ptr noundef nonnull @.str.3) #7
  %81 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %82 = load i32, ptr %7, align 4, !tbaa !41
  %83 = sext i32 %82 to i64
  %84 = shl nsw i64 %83, 2
  %85 = tail call ptr %81(i64 noundef %84, ptr noundef nonnull @.str.4) #7
  %86 = load ptr, ptr %4, align 8, !tbaa !34
  %87 = load i32, ptr %72, align 8, !tbaa !49
  %88 = sext i32 %87 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %80, ptr align 1 %86, i64 %88, i1 false)
  %89 = load ptr, ptr %6, align 8, !tbaa !40
  %90 = load i32, ptr %72, align 8, !tbaa !49
  %91 = sext i32 %90 to i64
  %92 = shl nsw i64 %91, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %85, ptr align 4 %89, i64 %92, i1 false)
  %93 = load ptr, ptr %4, align 8, !tbaa !34
  %94 = icmp eq ptr %93, %1
  br i1 %94, label %99, label %95

95:                                               ; preds = %76
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %96(ptr noundef %93) #7
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %98 = load ptr, ptr %6, align 8, !tbaa !40
  tail call void %97(ptr noundef %98) #7
  br label %99

99:                                               ; preds = %95, %76
  store ptr %80, ptr %4, align 8, !tbaa !34
  store ptr %85, ptr %6, align 8, !tbaa !40
  br label %100

100:                                              ; preds = %71, %99
  %101 = load ptr, ptr %4, align 8, !tbaa !34
  %102 = load i32, ptr %72, align 8, !tbaa !49
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, ptr %101, i64 %103
  store i8 0, ptr %104, align 1, !tbaa !42
  %105 = load ptr, ptr %6, align 8, !tbaa !40
  %106 = load i32, ptr %72, align 8, !tbaa !49
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, ptr %105, i64 %107
  store i32 %11, ptr %108, align 4, !tbaa !51
  %109 = load i32, ptr %72, align 8, !tbaa !49
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %72, align 8, !tbaa !49
  ret i32 %12
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flatten_string_append(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !49
  %7 = add nsw i32 %6, %3
  %8 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %4
  %12 = shl nsw i32 %9, 1
  store i32 %12, ptr %8, align 4, !tbaa !41
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %14 = sext i32 %12 to i64
  %15 = tail call ptr %13(i64 noundef %14, ptr noundef nonnull @.str.3) #7
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %17 = load i32, ptr %8, align 4, !tbaa !41
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 2
  %20 = tail call ptr %16(i64 noundef %19, ptr noundef nonnull @.str.4) #7
  %21 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = load i32, ptr %5, align 8, !tbaa !49
  %24 = sext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %22, i64 %24, i1 false)
  %25 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !40
  %27 = load i32, ptr %5, align 8, !tbaa !49
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 4 %26, i64 %29, i1 false)
  %30 = load ptr, ptr %21, align 8, !tbaa !34
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %36, label %32

32:                                               ; preds = %11
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %33(ptr noundef %30) #7
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %35 = load ptr, ptr %25, align 8, !tbaa !40
  tail call void %34(ptr noundef %35) #7
  br label %36

36:                                               ; preds = %32, %11
  store ptr %15, ptr %21, align 8, !tbaa !34
  store ptr %20, ptr %25, align 8, !tbaa !40
  br label %37

37:                                               ; preds = %36, %4
  %38 = icmp sgt i32 %3, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 2
  %41 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 3
  %42 = zext nneg i32 %3 to i64
  br label %43

43:                                               ; preds = %39, %43
  %44 = phi i64 [ 0, %39 ], [ %59, %43 ]
  %45 = getelementptr inbounds i8, ptr %1, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !42
  %47 = load ptr, ptr %40, align 8, !tbaa !34
  %48 = load i32, ptr %5, align 8, !tbaa !49
  %49 = trunc i64 %44 to i32
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %47, i64 %51
  store i8 %46, ptr %52, align 1, !tbaa !42
  %53 = load ptr, ptr %41, align 8, !tbaa !40
  %54 = load i32, ptr %5, align 8, !tbaa !49
  %55 = trunc i64 %44 to i32
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, ptr %53, i64 %57
  store i32 %2, ptr %58, align 4, !tbaa !51
  %59 = add nuw nsw i64 %44, 1
  %60 = icmp eq i64 %59, %42
  br i1 %60, label %61, label %43, !llvm.loop !56

61:                                               ; preds = %43, %37
  %62 = load i32, ptr %5, align 8, !tbaa !49
  %63 = add nsw i32 %62, %3
  store i32 %63, ptr %5, align 8, !tbaa !49
  ret void
}

declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @flatten_string_free(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %6(ptr noundef %3) #7
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 1
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %13(ptr noundef %9) #7
  br label %14

14:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @flatten_string_strlen(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %8, %7
  %10 = trunc i64 %9 to i32
  %11 = add i32 %4, -1
  %12 = add i32 %11, %10
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @text_check_format_len(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TextLine, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #8
  %8 = zext i32 %1 to i64
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %11(ptr noundef nonnull %4) #7
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %13 = add i32 %1, 2
  %14 = zext i32 %13 to i64
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.2) #7
  store ptr %15, ptr %3, align 8, !tbaa !57
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %23

17:                                               ; preds = %2
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %19 = add i32 %1, 2
  %20 = zext i32 %19 to i64
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @.str.2) #7
  store ptr %21, ptr %3, align 8, !tbaa !57
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %6, %10
  br label %24

24:                                               ; preds = %17, %10, %23
  %25 = phi i32 [ 1, %23 ], [ 0, %10 ], [ 0, %17 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @text_format_fill(ptr nocapture noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !50
  %6 = load ptr, ptr %1, align 8, !tbaa !50
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %15, %8 ], [ %5, %4 ]
  %10 = phi i32 [ %16, %8 ], [ 0, %4 ]
  %11 = phi ptr [ %13, %8 ], [ %6, %4 ]
  %12 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef %9) #7
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 %2, ptr %11, align 1, !tbaa !42
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, ptr %9, i64 %14
  %16 = add nuw nsw i32 %10, 1
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %18, label %8, !llvm.loop !59

18:                                               ; preds = %8, %4
  %19 = phi ptr [ %6, %4 ], [ %13, %8 ]
  %20 = phi ptr [ %5, %4 ], [ %15, %8 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -1
  %22 = getelementptr inbounds i8, ptr %19, i64 -1
  store ptr %21, ptr %0, align 8, !tbaa !50
  store ptr %22, ptr %1, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @text_format_fill_ascii(ptr nocapture noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = load ptr, ptr %0, align 8, !tbaa !50
  %6 = load ptr, ptr %1, align 8, !tbaa !50
  %7 = sext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 %2, i64 %7, i1 false)
  %8 = add nsw i32 %3, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %5, i64 %9
  %11 = getelementptr inbounds i8, ptr %6, i64 %9
  store ptr %10, ptr %0, align 8, !tbaa !50
  store ptr %11, ptr %1, align 8, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_text_format_register(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_addtail(ptr noundef nonnull @tft_lb, ptr noundef %0) #7
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_text_format_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %5 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 46) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %5, i64 1
  br label %9

9:                                                ; preds = %30, %7
  %10 = phi ptr [ undef, %7 ], [ %32, %30 ]
  %11 = phi ptr [ @tft_lb, %7 ], [ %12, %30 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.TextFormatType, ptr %12, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull %8, ptr noundef nonnull %17) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19, %27
  %23 = phi ptr [ %24, %27 ], [ %16, %19 ]
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27, !llvm.loop !62

27:                                               ; preds = %22
  %28 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull %8, ptr noundef nonnull %25) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %22, !llvm.loop !62

30:                                               ; preds = %22, %27, %19, %14
  %31 = phi i1 [ %18, %14 ], [ %18, %19 ], [ %26, %27 ], [ %26, %22 ]
  %32 = phi ptr [ %10, %14 ], [ %12, %19 ], [ %12, %27 ], [ %10, %22 ]
  br i1 %31, label %9, label %37, !llvm.loop !63

33:                                               ; preds = %9, %3
  %34 = load ptr, ptr @tft_lb, align 8, !tbaa !64
  br label %37

35:                                               ; preds = %1
  %36 = load ptr, ptr @tft_lb, align 8, !tbaa !64
  br label %37

37:                                               ; preds = %30, %33, %35
  %38 = phi ptr [ %36, %35 ], [ %34, %33 ], [ %32, %30 ]
  ret ptr %38
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !38, i64 1280}
!35 = !{!"FlattenString", !36, i64 0, !36, i64 256, !38, i64 1280, !38, i64 1288, !39, i64 1296, !39, i64 1300}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!35, !38, i64 1288}
!41 = !{!35, !39, i64 1300}
!42 = !{!36, !36, i64 0}
!43 = !{!44, !39, i64 88}
!44 = !{!"SpaceText", !38, i64 0, !38, i64 8, !45, i64 16, !39, i64 32, !46, i64 36, !36, i64 40, !38, i64 56, !39, i64 64, !39, i64 68, !47, i64 72, !47, i64 74, !47, i64 76, !36, i64 78, !36, i64 79, !39, i64 80, !39, i64 84, !39, i64 88, !47, i64 92, !47, i64 94, !47, i64 96, !47, i64 98, !46, i64 100, !48, i64 104, !48, i64 120, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 400, !47, i64 656, !47, i64 658, !36, i64 660, !38, i64 664, !36, i64 672}
!45 = !{!"ListBase", !38, i64 0, !38, i64 8}
!46 = !{!"float", !36, i64 0}
!47 = !{!"short", !36, i64 0}
!48 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!49 = !{!35, !39, i64 1296}
!50 = !{!38, !38, i64 0}
!51 = !{!39, !39, i64 0}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !53, !54}
!56 = distinct !{!56, !53, !54}
!57 = !{!58, !38, i64 24}
!58 = !{!"TextLine", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !39, i64 36}
!59 = distinct !{!59, !53, !54}
!60 = !{!61, !38, i64 32}
!61 = !{!"TextFormatType", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32}
!62 = distinct !{!62, !53, !54}
!63 = distinct !{!63, !53, !54}
!64 = !{!45, !38, i64 0}
