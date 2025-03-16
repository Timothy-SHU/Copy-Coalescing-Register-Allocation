; ModuleID = 'src/z50.c'
source_filename = "src/z50.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GRAPHICS_STATE = type { i32, i32, i32, i32, i16 }
%struct.back_end_rec = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }
%struct.mapvec = type { ptr, i16, i32, i32, ptr, [256 x ptr], [353 x i8], [4 x [256 x i8]] }
%struct.font_rec = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr }

@prologue_done = internal unnamed_addr global i1 false, align 4
@out_fp = internal unnamed_addr global ptr null, align 8
@gs_stack_top = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"rotations, graphics etc. too deeply nested (max is %d)\00", align 1
@currentfont = internal unnamed_addr global i32 0, align 4
@gs_stack = internal unnamed_addr global [50 x %struct.GRAPHICS_STATE] zeroinitializer, align 16
@currentcolour = internal unnamed_addr global i32 0, align 4
@cpexists = internal unnamed_addr global i32 0, align 4
@currenty = internal unnamed_addr global i32 0, align 4
@currentxheight2 = internal unnamed_addr global i16 0, align 2
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"error in left parameter of %s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"@Graphic\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"PrintGraphic: type(x) != GRAPHIC!\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"cannot include EPS file in PDF output; EPS file %s ignored\00", align 1
@pdf_back = internal global %struct.back_end_rec { i32 1, ptr @.str.9, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, ptr @PDF_PrintInitialize, ptr @PDF_PrintLength, ptr @PDF_PrintPageSetupForFont, ptr @PDF_PrintPageResourceForFont, ptr @PDF_PrintMapping, ptr @PDF_PrintBeforeFirstPage, ptr @PDF_PrintBetweenPages, ptr @PDF_PrintAfterLastPage, ptr @PDF_PrintWord, ptr @PDF_PrintPlainGraphic, ptr @PDF_PrintUnderline, ptr @PDF_CoordTranslate, ptr @PDF_CoordRotate, ptr @PDF_CoordScale, ptr @PDF_SaveGraphicState, ptr @PDF_RestoreGraphicState, ptr @PDF_PrintGraphicObject, ptr @PDF_DefineGraphicNames, ptr @PDF_SaveTranslateDefineSave, ptr @PDF_PrintGraphicInclude, ptr @PDF_LinkSource, ptr @PDF_LinkDest, ptr @PDF_LinkCheck }, align 8
@PDF_BackEnd = dso_local local_unnamed_addr global ptr @pdf_back, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@needs = internal unnamed_addr global ptr null, align 8
@supplied = internal unnamed_addr global ptr null, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"%.3fc\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"%%%%IncludeResource: font %s\0A\00", align 1
@MapTable = external local_unnamed_addr global [0 x ptr], align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"/%s%c\00", align 1
@PDF_PrintWord.last_hpos = internal unnamed_addr global i32 0, align 4
@TotalWordCount = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@finfo = external local_unnamed_addr global ptr, align 8
@EightBitToPrintForm = external local_unnamed_addr global [0 x ptr], align 8
@.str.16 = private unnamed_addr constant [60 x i8] c"PDF_PrintPlainGraphic: this routine should never be called!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @PDF_PrintAfterLastPage() #0 {
  %1 = load i1, ptr @prologue_done, align 4
  br i1 %1, label %2, label %5

2:                                                ; preds = %0
  %3 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @PDFPage_Cleanup(ptr noundef %3) #7
  %4 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @PDFFile_Cleanup(ptr noundef %4) #7
  br label %5

5:                                                ; preds = %2, %0
  ret void
}

declare void @PDFPage_Cleanup(ptr noundef) local_unnamed_addr #1

declare void @PDFFile_Cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @PDF_SaveGraphicState(ptr noundef %0) #0 {
  %2 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @PDFPage_Push(ptr noundef %2) #7
  %3 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr @gs_stack_top, align 4, !tbaa !9
  %5 = icmp sgt i32 %3, 48
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %8 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 50, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %7, i32 noundef 50) #7
  %9 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ %4, %1 ]
  %12 = load i32, ptr @currentfont, align 4, !tbaa !9
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %13
  store i32 %12, ptr %14, align 4, !tbaa !11
  %15 = load i32, ptr @currentcolour, align 4, !tbaa !9
  %16 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %13, i32 1
  store i32 %15, ptr %16, align 4, !tbaa !14
  %17 = load i32, ptr @cpexists, align 4, !tbaa !9
  %18 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %13, i32 2
  store i32 %17, ptr %18, align 4, !tbaa !15
  %19 = load i32, ptr @currenty, align 4, !tbaa !9
  %20 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %13, i32 3
  store i32 %19, ptr %20, align 4, !tbaa !16
  %21 = load i16, ptr @currentxheight2, align 2, !tbaa !17
  %22 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %13, i32 4
  store i16 %21, ptr %22, align 4, !tbaa !18
  ret void
}

declare void @PDFPage_Push(ptr noundef) local_unnamed_addr #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @PDF_RestoreGraphicState() #0 {
  %1 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @PDFPage_Pop(ptr noundef %1) #7
  %2 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !11
  store i32 %5, ptr @currentfont, align 4, !tbaa !9
  %6 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %3, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !14
  store i32 %7, ptr @currentcolour, align 4, !tbaa !9
  %8 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %3, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !15
  store i32 %9, ptr @cpexists, align 4, !tbaa !9
  %10 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %3, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !16
  store i32 %11, ptr @currenty, align 4, !tbaa !9
  %12 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %3, i32 4
  %13 = load i16, ptr %12, align 4, !tbaa !18
  store i16 %13, ptr @currentxheight2, align 2, !tbaa !17
  %14 = add nsw i32 %2, -1
  store i32 %14, ptr @gs_stack_top, align 4, !tbaa !9
  ret void
}

declare void @PDFPage_Pop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @PDF_PrintGraphicObject(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !19
  switch i8 %3, label %41 [
    i8 11, label %8
    i8 12, label %8
    i8 17, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %43, label %11

8:                                                ; preds = %1, %1
  %9 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  tail call void @PDFPage_WriteGraphic(ptr noundef %9, ptr noundef nonnull %10) #7
  br label %43

11:                                               ; preds = %4, %37
  %12 = phi ptr [ %39, %37 ], [ %6, %4 ]
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %16, %13 ], [ %12, %11 ]
  %15 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !19
  switch i8 %18, label %32 [
    i8 0, label %13
    i8 1, label %19
    i8 11, label %31
    i8 12, label %31
    i8 17, label %31
    i8 26, label %37
  ]

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, ptr %16, i64 42
  %21 = load i8, ptr %20, align 2, !tbaa !19
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @PDFPage_Write(ptr noundef %24, ptr noundef nonnull @.str.1) #7
  br label %37

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %16, i64 41
  %27 = load i8, ptr %26, align 1, !tbaa !19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @PDFPage_Write(ptr noundef %30, ptr noundef nonnull @.str.2) #7
  br label %37

31:                                               ; preds = %13, %13, %13
  tail call void @PDF_PrintGraphicObject(ptr noundef nonnull %16)
  br label %37

32:                                               ; preds = %13
  %33 = add i8 %18, -119
  %34 = icmp ult i8 %33, 20
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 50, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull @.str.4) #7
  br label %37

37:                                               ; preds = %13, %32, %25, %29, %23, %35, %31
  %38 = getelementptr inbounds %struct.LIST, ptr %12, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !19
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %43, label %11

41:                                               ; preds = %1
  %42 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 50, i32 noundef 3, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull @.str.4) #7
  br label %43

43:                                               ; preds = %37, %4, %41, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @PDFPage_WriteGraphic(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PDFPage_Write(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @PDF_DefineGraphicNames(ptr noundef %0) #0 {
  %2 = alloca [256 x i8], align 16
  %3 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !19
  %5 = icmp eq i8 %4, 97
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %8 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef %7, ptr noundef nonnull @.str.6) #7
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 4095
  %13 = load i32, ptr @currentfont, align 4, !tbaa !9
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %9
  store i32 %12, ptr @currentfont, align 4, !tbaa !9
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %15
  %18 = tail call i32 @FontHalfXHeight(i32 noundef %12) #7
  %19 = trunc i32 %18 to i16
  store i16 %19, ptr @currentxheight2, align 2, !tbaa !17
  %20 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %21 = load i32, ptr @currentfont, align 4, !tbaa !9
  %22 = tail call i32 @FontSize(i32 noundef %21, ptr noundef nonnull %0) #7
  %23 = load i32, ptr @currentfont, align 4, !tbaa !9
  %24 = tail call ptr @FontName(i32 noundef %23) #7
  tail call void @PDFFont_Set(ptr noundef %20, i32 noundef %22, ptr noundef %24) #7
  %25 = load i32, ptr %10, align 4
  br label %26

26:                                               ; preds = %15, %17, %9
  %27 = phi i32 [ %11, %15 ], [ %25, %17 ], [ %11, %9 ]
  %28 = lshr i32 %27, 12
  %29 = and i32 %28, 1023
  %30 = load i32, ptr @currentcolour, align 4, !tbaa !9
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  store i32 %29, ptr @currentcolour, align 4, !tbaa !9
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #7
  %35 = tail call ptr @ColourCommand(i32 noundef %29) #7
  %36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef %35) #7
  %37 = load ptr, ptr @out_fp, align 8, !tbaa !5
  call void @PDFPage_Write(ptr noundef %37, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #7
  br label %38

38:                                               ; preds = %32, %34, %26
  %39 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !19
  %41 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !19
  %43 = getelementptr inbounds i8, ptr %0, i64 52
  %44 = load i32, ptr %43, align 4, !tbaa !19
  %45 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  %46 = load i32, ptr %45, align 4, !tbaa !19
  %47 = load i32, ptr @currentfont, align 4, !tbaa !9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  %50 = call i32 @FontSize(i32 noundef %47, ptr noundef nonnull %0) #7
  br label %51

51:                                               ; preds = %38, %49
  %52 = phi i32 [ %50, %49 ], [ 240, %38 ]
  %53 = add nsw i32 %46, %44
  %54 = add nsw i32 %42, %40
  %55 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %56 = load i16, ptr %55, align 2, !tbaa !19
  %57 = sext i16 %56 to i32
  %58 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %59 = load i16, ptr %58, align 2, !tbaa !19
  %60 = sext i16 %59 to i32
  call void @PDFPage_SetVars(i32 noundef %54, i32 noundef %53, i32 noundef %40, i32 noundef %46, i32 noundef %52, i32 noundef %57, i32 noundef %60) #7
  ret void
}

declare i32 @FontHalfXHeight(i32 noundef) local_unnamed_addr #1

declare void @PDFFont_Set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @FontSize(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @FontName(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @ColourCommand(i32 noundef) local_unnamed_addr #1

declare void @PDFPage_SetVars(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @PDF_SaveTranslateDefineSave(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @PDFPage_Push(ptr noundef %4) #7
  %5 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @gs_stack_top, align 4, !tbaa !9
  %7 = icmp sgt i32 %5, 48
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 50, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %9, i32 noundef 50) #7
  %11 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi i32 [ %11, %8 ], [ %6, %3 ]
  %14 = load i32, ptr @currentfont, align 4, !tbaa !9
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %15
  store i32 %14, ptr %16, align 4, !tbaa !11
  %17 = load i32, ptr @currentcolour, align 4, !tbaa !9
  %18 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %15, i32 1
  store i32 %17, ptr %18, align 4, !tbaa !14
  %19 = load i32, ptr @cpexists, align 4, !tbaa !9
  %20 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %15, i32 2
  store i32 %19, ptr %20, align 4, !tbaa !15
  %21 = load i32, ptr @currenty, align 4, !tbaa !9
  %22 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %15, i32 3
  store i32 %21, ptr %22, align 4, !tbaa !16
  %23 = load i16, ptr @currentxheight2, align 2, !tbaa !17
  %24 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %15, i32 4
  store i16 %23, ptr %24, align 4, !tbaa !18
  %25 = or i32 %2, %1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %12
  %28 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %29 = sitofp i32 %1 to float
  %30 = sitofp i32 %2 to float
  tail call void @PDFPage_Translate(ptr noundef %28, float noundef %29, float noundef %30) #7
  br label %31

31:                                               ; preds = %12, %27
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  tail call void @PDF_DefineGraphicNames(ptr noundef %0)
  %32 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @PDFPage_Push(ptr noundef %32) #7
  %33 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr @gs_stack_top, align 4, !tbaa !9
  %35 = icmp sgt i32 %33, 48
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %38 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 50, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %37, i32 noundef 50) #7
  %39 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  br label %40

40:                                               ; preds = %31, %36
  %41 = phi i32 [ %39, %36 ], [ %34, %31 ]
  %42 = load i32, ptr @currentfont, align 4, !tbaa !9
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %43
  store i32 %42, ptr %44, align 4, !tbaa !11
  %45 = load i32, ptr @currentcolour, align 4, !tbaa !9
  %46 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %43, i32 1
  store i32 %45, ptr %46, align 4, !tbaa !14
  %47 = load i32, ptr @cpexists, align 4, !tbaa !9
  %48 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %43, i32 2
  store i32 %47, ptr %48, align 4, !tbaa !15
  %49 = load i32, ptr @currenty, align 4, !tbaa !9
  %50 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %43, i32 3
  store i32 %49, ptr %50, align 4, !tbaa !16
  %51 = load i16, ptr @currentxheight2, align 2, !tbaa !17
  %52 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %43, i32 4
  store i16 %51, ptr %52, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_CoordTranslate(i32 noundef %0, i32 noundef %1) #0 {
  %3 = or i32 %1, %0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %7 = sitofp i32 %0 to float
  %8 = sitofp i32 %1 to float
  tail call void @PDFPage_Translate(ptr noundef %6, float noundef %7, float noundef %8) #7
  br label %9

9:                                                ; preds = %2, %5
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PDF_PrintGraphicInclude(ptr noundef %0, i32 %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %5, %3 ], [ %9, %6 ]
  %8 = getelementptr inbounds [2 x %struct.LIST], ptr %7, i64 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.word_type, ptr %9, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !19
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %6, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.word_type, ptr %9, i64 0, i32 4
  %16 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 50, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef 2, ptr noundef nonnull %14, ptr noundef nonnull %15) #7
  ret void
}

declare void @PDFPage_Translate(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintInitialize(ptr noundef %0) #0 {
  store ptr %0, ptr @out_fp, align 8, !tbaa !5
  store i1 false, ptr @prologue_done, align 4
  store i32 -1, ptr @gs_stack_top, align 4, !tbaa !9
  store i32 0, ptr @currentfont, align 4, !tbaa !9
  store i32 0, ptr @currentcolour, align 4, !tbaa !9
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  %2 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !19
  %3 = zext i8 %2 to i32
  store i32 %3, ptr @zz_size, align 4, !tbaa !9
  %4 = zext i8 %2 to i64
  %5 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %10 = tail call ptr @GetMemory(i32 noundef %3, ptr noundef %9) #7
  store ptr %10, ptr @zz_hold, align 8, !tbaa !5
  br label %13

11:                                               ; preds = %1
  store ptr %6, ptr @zz_hold, align 8, !tbaa !5
  %12 = load ptr, ptr %6, align 8, !tbaa !19
  store ptr %12, ptr %5, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi ptr [ %10, %8 ], [ %6, %11 ]
  %15 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  store i8 17, ptr %15, align 8, !tbaa !19
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !19
  %17 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1
  store ptr %14, ptr %17, align 8, !tbaa !19
  %18 = getelementptr inbounds %struct.LIST, ptr %14, i64 0, i32 1
  store ptr %14, ptr %18, align 8, !tbaa !19
  store ptr %14, ptr %14, align 8, !tbaa !19
  store ptr %14, ptr @needs, align 8, !tbaa !5
  %19 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !19
  %20 = zext i8 %19 to i32
  store i32 %20, ptr @zz_size, align 4, !tbaa !9
  %21 = zext i8 %19 to i64
  %22 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %27 = tail call ptr @GetMemory(i32 noundef %20, ptr noundef %26) #7
  store ptr %27, ptr @zz_hold, align 8, !tbaa !5
  br label %30

28:                                               ; preds = %13
  store ptr %23, ptr @zz_hold, align 8, !tbaa !5
  %29 = load ptr, ptr %23, align 8, !tbaa !19
  store ptr %29, ptr %22, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi ptr [ %27, %25 ], [ %23, %28 ]
  %32 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 1
  store i8 17, ptr %32, align 8, !tbaa !19
  %33 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1, i32 1
  store ptr %31, ptr %33, align 8, !tbaa !19
  %34 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1
  store ptr %31, ptr %34, align 8, !tbaa !19
  %35 = getelementptr inbounds %struct.LIST, ptr %31, i64 0, i32 1
  store ptr %31, ptr %35, align 8, !tbaa !19
  store ptr %31, ptr %31, align 8, !tbaa !19
  store ptr %31, ptr @supplied, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @PDF_PrintLength(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 %2) #4 {
  %4 = sitofp i32 %1 to float
  %5 = fdiv float %4, 5.670000e+02
  %6 = fpext float %5 to double
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %6) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintPageSetupForFont(ptr nocapture noundef readonly %0, i32 %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.12, ptr noundef %2)
  %7 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  %8 = load i8, ptr %7, align 4
  %9 = icmp sgt i8 %8, -1
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = and i8 %8, 127
  %12 = zext nneg i8 %11 to i32
  tail call void @MapEnsurePrinted(i32 noundef %12, i32 noundef 1) #7
  %13 = tail call ptr @MapEncodingName(i32 noundef %12) #7
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi ptr [ %13, %10 ], [ null, %4 ]
  %16 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @PDFFont_AddFont(ptr noundef %16, ptr noundef %3, ptr noundef %2, ptr noundef %15) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @PDF_PrintPageResourceForFont(ptr nocapture readnone %0, i32 %1) #5 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintMapping(i32 noundef %0) #0 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [0 x ptr], ptr @MapTable, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.mapvec, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.word_type, ptr %7, i64 0, i32 4
  tail call void @PDFFile_BeginFontEncoding(ptr noundef %5, ptr noundef nonnull %8) #7
  br label %9

9:                                                ; preds = %1, %9
  %10 = phi i64 [ 0, %1 ], [ %15, %9 ]
  %11 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.mapvec, ptr %4, i64 0, i32 5, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.word_type, ptr %13, i64 0, i32 4
  %15 = add nuw nsw i64 %10, 1
  %16 = and i64 %15, 7
  %17 = icmp eq i64 %16, 0
  %18 = select i1 %17, i32 10, i32 32
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.13, ptr noundef nonnull %14, i32 noundef %18)
  %20 = icmp eq i64 %15, 256
  br i1 %20, label %21, label %9

21:                                               ; preds = %9
  %22 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @PDFFile_EndFontEncoding(ptr noundef %22) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintBeforeFirstPage(i32 noundef %0, i32 noundef %1, ptr nocapture readnone %2) #0 {
  %4 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %5 = sdiv i32 %0, 20
  %6 = sdiv i32 %1, 20
  tail call void @PDFFile_Init(ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef 1440, i32 noundef 567, i32 noundef 20, i32 noundef 120) #7
  %7 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @FontPrintPageSetup(ptr noundef %7) #7
  %8 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @PDFPage_Init(ptr noundef %8, float noundef 0x3FA99999A0000000, i32 noundef 10) #7
  %9 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @FontPrintPageResources(ptr noundef %9) #7
  tail call void @FontAdvanceCurrentPage() #7
  store i1 true, ptr @prologue_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintBetweenPages(i32 %0, i32 %1, ptr nocapture readnone %2) #0 {
  %4 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @PDFPage_Cleanup(ptr noundef %4) #7
  %5 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @PDFPage_Init(ptr noundef %5, float noundef 0x3FA99999A0000000, i32 noundef 10) #7
  %6 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @FontPrintPageResources(ptr noundef %6) #7
  %7 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @FontPrintPageSetup(ptr noundef %7) #7
  tail call void @FontAdvanceCurrentPage() #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintWord(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [256 x i8], align 16
  %5 = load i32, ptr @TotalWordCount, align 4, !tbaa !9
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @TotalWordCount, align 4, !tbaa !9
  %7 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 4095
  %10 = load i32, ptr @currentfont, align 4, !tbaa !9
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  store i32 %9, ptr @currentfont, align 4, !tbaa !9
  %13 = tail call i32 @FontHalfXHeight(i32 noundef %9) #7
  %14 = trunc i32 %13 to i16
  store i16 %14, ptr @currentxheight2, align 2, !tbaa !17
  %15 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %16 = load i32, ptr @currentfont, align 4, !tbaa !9
  %17 = tail call i32 @FontSize(i32 noundef %16, ptr noundef nonnull %0) #7
  %18 = load i32, ptr @currentfont, align 4, !tbaa !9
  %19 = tail call ptr @FontName(i32 noundef %18) #7
  tail call void @PDFFont_Set(ptr noundef %15, i32 noundef %17, ptr noundef %19) #7
  %20 = load i32, ptr %7, align 8
  br label %21

21:                                               ; preds = %12, %3
  %22 = phi i32 [ %20, %12 ], [ %8, %3 ]
  %23 = lshr i32 %22, 12
  %24 = and i32 %23, 1023
  %25 = load i32, ptr @currentcolour, align 4, !tbaa !9
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  store i32 %24, ptr @currentcolour, align 4, !tbaa !9
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #7
  %30 = tail call ptr @ColourCommand(i32 noundef %24) #7
  %31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef %30) #7
  %32 = load ptr, ptr @out_fp, align 8, !tbaa !5
  call void @PDFPage_Write(ptr noundef %32, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #7
  br label %33

33:                                               ; preds = %27, %29, %21
  %34 = load i16, ptr @currentxheight2, align 2, !tbaa !17
  %35 = sext i16 %34 to i32
  %36 = sub nsw i32 %2, %35
  %37 = load i32, ptr @cpexists, align 4, !tbaa !9
  %38 = icmp ne i32 %37, 0
  %39 = load i32, ptr @currenty, align 4
  %40 = icmp eq i32 %39, %36
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = call i32 @PDFHasValidTextMatrix() #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %33
  store i32 %36, ptr @currenty, align 4, !tbaa !9
  store i32 1, ptr @cpexists, align 4, !tbaa !9
  br label %46

46:                                               ; preds = %42, %45
  %47 = phi ptr [ @.str.15, %45 ], [ @.str.14, %42 ]
  %48 = load ptr, ptr @finfo, align 8, !tbaa !5
  %49 = load i32, ptr %7, align 8
  %50 = and i32 %49, 4095
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds %struct.font_rec, ptr %48, i64 %51, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !22
  %54 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %55 = load i8, ptr %54, align 1, !tbaa !19
  br label %56

56:                                               ; preds = %113, %46
  %57 = phi i8 [ %55, %46 ], [ %115, %113 ]
  %58 = phi ptr [ %54, %46 ], [ %61, %113 ]
  %59 = phi ptr [ %54, %46 ], [ %114, %113 ]
  %60 = getelementptr inbounds i8, ptr %59, i64 1
  %61 = getelementptr inbounds i8, ptr %58, i64 1
  store i8 %57, ptr %58, align 1, !tbaa !19
  %62 = zext i8 %57 to i64
  %63 = getelementptr inbounds i8, ptr %53, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !19
  %65 = icmp ult i8 %64, 2
  br i1 %65, label %113, label %66

66:                                               ; preds = %56
  %67 = load i8, ptr %59, align 1, !tbaa !19
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds i8, ptr %53, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !19
  %71 = zext i8 %70 to i64
  %72 = or disjoint i64 %71, 256
  %73 = getelementptr inbounds i8, ptr %53, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !19
  %75 = icmp eq i8 %74, %67
  br i1 %75, label %76, label %113

76:                                               ; preds = %66
  %77 = load i8, ptr %60, align 1, !tbaa !19
  br label %78

78:                                               ; preds = %76, %109
  %79 = phi ptr [ %73, %76 ], [ %110, %109 ]
  %80 = getelementptr inbounds i8, ptr %79, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !19
  %82 = icmp eq i8 %81, %77
  br i1 %82, label %83, label %96

83:                                               ; preds = %78, %92
  %84 = phi i8 [ %88, %92 ], [ %77, %78 ]
  %85 = phi ptr [ %87, %92 ], [ %80, %78 ]
  %86 = phi ptr [ %93, %92 ], [ %60, %78 ]
  %87 = getelementptr inbounds i8, ptr %85, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !19
  %89 = icmp eq i8 %88, 0
  %90 = icmp eq i8 %84, 0
  %91 = or i1 %90, %89
  br i1 %91, label %96, label %92

92:                                               ; preds = %83
  %93 = getelementptr inbounds i8, ptr %86, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !19
  %95 = icmp eq i8 %88, %94
  br i1 %95, label %83, label %96

96:                                               ; preds = %92, %83, %78
  %97 = phi ptr [ %60, %78 ], [ %86, %83 ], [ %93, %92 ]
  %98 = phi ptr [ %80, %78 ], [ %85, %83 ], [ %87, %92 ]
  %99 = phi i8 [ %81, %78 ], [ %84, %83 ], [ %88, %92 ]
  %100 = getelementptr inbounds i8, ptr %98, i64 1
  %101 = load i8, ptr %100, align 1, !tbaa !19
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i8 %99, ptr %58, align 1, !tbaa !19
  br label %113

104:                                              ; preds = %96, %104
  %105 = phi ptr [ %106, %104 ], [ %98, %96 ]
  %106 = getelementptr inbounds i8, ptr %105, i64 1
  %107 = load i8, ptr %106, align 1, !tbaa !19
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %104

109:                                              ; preds = %104
  %110 = getelementptr inbounds i8, ptr %105, i64 2
  %111 = load i8, ptr %110, align 1, !tbaa !19
  %112 = icmp eq i8 %111, %67
  br i1 %112, label %78, label %113

113:                                              ; preds = %109, %66, %56, %103
  %114 = phi ptr [ %97, %103 ], [ %60, %56 ], [ %60, %66 ], [ %60, %109 ]
  %115 = load i8, ptr %114, align 1, !tbaa !19
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %56

117:                                              ; preds = %113
  store i8 0, ptr %61, align 1, !tbaa !19
  %118 = load i8, ptr %47, align 1, !tbaa !19
  switch i8 %118, label %126 [
    i8 109, label %119
    i8 115, label %121
  ]

119:                                              ; preds = %117
  %120 = load ptr, ptr @out_fp, align 8, !tbaa !5
  call void @PDFText_OpenXY(ptr noundef %120, i32 noundef %1, i32 noundef %36) #7
  br label %125

121:                                              ; preds = %117
  %122 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %123 = load i32, ptr @PDF_PrintWord.last_hpos, align 4, !tbaa !9
  %124 = sub nsw i32 %1, %123
  call void @PDFText_OpenX(ptr noundef %122, i32 noundef %124) #7
  br label %125

125:                                              ; preds = %119, %121
  store i32 %1, ptr @PDF_PrintWord.last_hpos, align 4, !tbaa !9
  br label %126

126:                                              ; preds = %125, %117
  %127 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %128 = load i8, ptr %54, align 1, !tbaa !19
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds [0 x ptr], ptr @EightBitToPrintForm, i64 0, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !5
  call void @PDFPage_Write(ptr noundef %127, ptr noundef %131) #7
  %132 = load ptr, ptr @finfo, align 8, !tbaa !5
  %133 = load i32, ptr %7, align 8
  %134 = and i32 %133, 4095
  %135 = zext nneg i32 %134 to i64
  %136 = getelementptr inbounds %struct.font_rec, ptr %132, i64 %135, i32 5
  %137 = load ptr, ptr %136, align 8, !tbaa !24
  %138 = getelementptr inbounds %struct.word_type, ptr %137, i64 0, i32 3, i32 1, i64 4
  %139 = load i8, ptr %138, align 4
  %140 = and i8 %139, 127
  %141 = zext nneg i8 %140 to i64
  %142 = getelementptr inbounds [0 x ptr], ptr @MapTable, i64 0, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !5
  %144 = getelementptr inbounds %struct.mapvec, ptr %143, i64 0, i32 7, i64 2
  %145 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 1
  %146 = load i8, ptr %145, align 1, !tbaa !19
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %211, label %148

148:                                              ; preds = %126, %203
  %149 = phi i8 [ %209, %203 ], [ %146, %126 ]
  %150 = phi ptr [ %208, %203 ], [ %145, %126 ]
  %151 = getelementptr inbounds i8, ptr %150, i64 -1
  %152 = load i8, ptr %151, align 1, !tbaa !19
  %153 = zext i8 %152 to i64
  %154 = getelementptr inbounds i8, ptr %144, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !19
  %156 = zext i8 %149 to i64
  %157 = getelementptr inbounds i8, ptr %144, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !19
  %159 = load ptr, ptr @finfo, align 8, !tbaa !5
  %160 = load i32, ptr %7, align 8
  %161 = and i32 %160, 4095
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds %struct.font_rec, ptr %159, i64 %162, i32 6
  %164 = load ptr, ptr %163, align 8, !tbaa !25
  %165 = getelementptr inbounds %struct.word_type, ptr %164, i64 0, i32 2
  %166 = load i16, ptr %165, align 8
  %167 = and i16 %166, 4095
  %168 = zext nneg i16 %167 to i64
  %169 = getelementptr inbounds %struct.font_rec, ptr %159, i64 %168, i32 9
  %170 = load ptr, ptr %169, align 8, !tbaa !26
  %171 = zext i8 %155 to i64
  %172 = getelementptr inbounds i16, ptr %170, i64 %171
  %173 = load i16, ptr %172, align 2, !tbaa !17
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %203, label %175

175:                                              ; preds = %148
  %176 = getelementptr inbounds %struct.font_rec, ptr %159, i64 %168, i32 10
  %177 = load ptr, ptr %176, align 8, !tbaa !27
  %178 = zext i16 %173 to i64
  br label %179

179:                                              ; preds = %179, %175
  %180 = phi i64 [ %184, %179 ], [ %178, %175 ]
  %181 = getelementptr inbounds i8, ptr %177, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !19
  %183 = icmp ugt i8 %182, %158
  %184 = add nuw i64 %180, 1
  br i1 %183, label %179, label %185

185:                                              ; preds = %179
  %186 = icmp eq i8 %182, %158
  br i1 %186, label %187, label %203

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.font_rec, ptr %159, i64 %168, i32 12
  %189 = load ptr, ptr %188, align 8, !tbaa !28
  %190 = getelementptr inbounds %struct.font_rec, ptr %159, i64 %168, i32 11
  %191 = load ptr, ptr %190, align 8, !tbaa !29
  %192 = getelementptr inbounds i8, ptr %191, i64 %180
  %193 = load i8, ptr %192, align 1, !tbaa !19
  %194 = zext i8 %193 to i64
  %195 = getelementptr inbounds i16, ptr %189, i64 %194
  %196 = load i16, ptr %195, align 2, !tbaa !17
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %187
  %199 = sext i16 %196 to i32
  %200 = load ptr, ptr @out_fp, align 8, !tbaa !5
  call void @PDFText_Kern(ptr noundef %200, i32 noundef %199) #7
  %201 = load i8, ptr %150, align 1, !tbaa !19
  %202 = zext i8 %201 to i64
  br label %203

203:                                              ; preds = %185, %148, %198, %187
  %204 = phi i64 [ %156, %185 ], [ %156, %148 ], [ %202, %198 ], [ %156, %187 ]
  %205 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %206 = getelementptr inbounds [0 x ptr], ptr @EightBitToPrintForm, i64 0, i64 %204
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  call void @PDFPage_Write(ptr noundef %205, ptr noundef %207) #7
  %208 = getelementptr inbounds i8, ptr %150, i64 1
  %209 = load i8, ptr %208, align 1, !tbaa !19
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %148

211:                                              ; preds = %203, %126
  %212 = load ptr, ptr @out_fp, align 8, !tbaa !5
  call void @PDFText_Close(ptr noundef %212) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintPlainGraphic(ptr nocapture readnone %0, i32 %1, i32 %2, ptr nocapture readnone %3) #0 {
  %5 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %6 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef %5, ptr noundef nonnull @.str.16) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintUnderline(i32 noundef %0, i32 %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %7 = load ptr, ptr @finfo, align 8, !tbaa !5
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds %struct.font_rec, ptr %7, i64 %8, i32 7
  %10 = load i16, ptr %9, align 8, !tbaa !30
  %11 = sext i16 %10 to i32
  %12 = sub nsw i32 %4, %11
  %13 = getelementptr inbounds %struct.font_rec, ptr %7, i64 %8, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !31
  %15 = sext i16 %14 to i32
  tail call void @PDFPage_PrintUnderline(ptr noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %12, i32 noundef %15) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_CoordRotate(i32 noundef %0) #0 {
  %2 = sdiv i32 %0, 128
  %3 = srem i32 %2, 360
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %7 = sitofp i32 %3 to double
  %8 = fmul double %7, 0x400921FB54442D18
  %9 = fdiv double %8, 1.800000e+02
  %10 = fptrunc double %9 to float
  tail call void @PDFPage_Rotate(ptr noundef %6, float noundef %10) #7
  br label %11

11:                                               ; preds = %5, %1
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_CoordScale(float noundef %0, float noundef %1) #0 {
  %3 = fpext float %0 to double
  %4 = fadd double %3, -1.000000e+00
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ogt double %5, 1.000000e-02
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = fpext float %1 to double
  %9 = fadd double %8, -1.000000e+00
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fcmp ogt double %10, 1.000000e-02
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %2
  %13 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @PDFPage_Scale(ptr noundef %13, float noundef %0, float noundef %1) #7
  br label %14

14:                                               ; preds = %12, %7
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @PDF_LinkSource(ptr nocapture readnone %0, i32 %1, i32 %2, i32 %3, i32 %4) #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @PDF_LinkDest(ptr nocapture readnone %0, i32 %1, i32 %2, i32 %3, i32 %4) #5 {
  ret void
}

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare void @MapEnsurePrinted(i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @MapEncodingName(i32 noundef) local_unnamed_addr #1

declare void @PDFFont_AddFont(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PDFFile_BeginFontEncoding(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PDFFile_EndFontEncoding(ptr noundef) local_unnamed_addr #1

declare void @PDFFile_Init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @FontPrintPageSetup(ptr noundef) local_unnamed_addr #1

declare void @PDFPage_Init(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @FontPrintPageResources(ptr noundef) local_unnamed_addr #1

declare void @FontAdvanceCurrentPage() local_unnamed_addr #1

declare i32 @PDFHasValidTextMatrix() local_unnamed_addr #1

declare void @PDFText_OpenXY(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @PDFText_OpenX(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @PDFText_Kern(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @PDFText_Close(ptr noundef) local_unnamed_addr #1

declare void @PDFPage_PrintUnderline(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @PDFPage_Rotate(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

declare void @PDFPage_Scale(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @PDF_LinkCheck() #5 {
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !13, i64 16}
!13 = !{!"short", !7, i64 0}
!14 = !{!12, !10, i64 4}
!15 = !{!12, !10, i64 8}
!16 = !{!12, !10, i64 12}
!17 = !{!13, !13, i64 0}
!18 = !{!12, !13, i64 16}
!19 = !{!7, !7, i64 0}
!20 = !{!21, !6, i64 24}
!21 = !{!"mapvec", !6, i64 0, !13, i64 8, !10, i64 12, !10, i64 16, !6, i64 24, !7, i64 32, !7, i64 2080, !7, i64 2433}
!22 = !{!23, !6, i64 8}
!23 = !{!"font_rec", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !10, i64 32, !6, i64 40, !6, i64 48, !13, i64 56, !13, i64 58, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!24 = !{!23, !6, i64 40}
!25 = !{!23, !6, i64 48}
!26 = !{!23, !6, i64 64}
!27 = !{!23, !6, i64 72}
!28 = !{!23, !6, i64 88}
!29 = !{!23, !6, i64 80}
!30 = !{!23, !13, i64 56}
!31 = !{!23, !13, i64 58}
