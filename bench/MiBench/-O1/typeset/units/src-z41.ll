; ModuleID = 'src/z41.c'
source_filename = "src/z41.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }
%struct.GAP = type { i16, i16 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }

@.str = private unnamed_addr constant [44 x i8] c"database index file seems to be out of date\00", align 1
@StartSym = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"syntax error in database file\00", align 1
@last_write_fnum = internal unnamed_addr global i16 0, align 2
@last_write_fp = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"file name %s%s is too long\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"cannot append to database file %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"rename(%s, %s) failed\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"WriteObject: Down(y) == y!\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"WriteObject: next_gap!\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"@@C\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"@@D\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c" \22%d %d\22\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"WriteObject: ENV/CLOSURE!\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"@@A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"WriteObject: ENV/ENV!\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"@@B\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"WriteObject: ENV/ENV+CLOSURE!\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"@@E\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"WriteObject/CROSS: type(y) != CLOSURE!\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"@@V\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"&&&\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"@Null\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"@PageLabel\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"@BeginHeaderComponent\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"@EndHeaderComponent\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"@SetHeaderComponent\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"@ClearHeaderComponent\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"@OneCol\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"@OneRow\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"@Wide\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"@High\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"@HShift\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"@VShift\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"@HScale\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"@VScale\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"@HCover\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"@VCover\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"@Scale\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"@KernShrink\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"@HContract\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"@VContract\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"@HLimited\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"@VLimited\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"@HExpand\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"@VExpand\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"@StartHVSpan\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"@StartHSpan\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"@StartVSpan\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"@HSpan\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"@VSpan\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"@PAdjust\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"@HAdjust\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"@VAdjust\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"@Rotate\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"@Background\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"@Case\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"@Yield\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"@BackEnd\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"@Char\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"@Font\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"@Space\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"@YUnit\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"@ZUnit\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"@Break\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"@Underline\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"@SetColour\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"@Outline\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"@Language\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"@CurrLang\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"@CurrFamily\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"@CurrFace\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"@CurrYUnit\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"@CurrZUnit\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"@Common\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"@Rump\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"@Meld\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"@Insert\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"@OneOf\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"@Next\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"@Plus\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"@Minus\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"@Open\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"@Tagged\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"@IncludeGraphic\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"@SysIncludeGraphic\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"@PlainGraphic\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"@Graphic\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"@LinkSource\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"@LinkDest\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"@Verbatim\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"@RawVerbatim\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"@Begin\00", align 1
@.str.101 = private unnamed_addr constant [22 x i8] c"WriteObject/VERBATIM!\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"WriteObject/VERBATIM/WORD!\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"WriteObject:\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"@LUse\00", align 1
@.str.107 = private unnamed_addr constant [27 x i8] c"WriteObject/CLOSURE: LPAR!\00", align 1
@.str.108 = private unnamed_addr constant [27 x i8] c"WriteObject/CLOSURE: NPAR!\00", align 1
@.str.111 = private unnamed_addr constant [27 x i8] c"WriteObject/CLOSURE: RPAR!\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"WriteClosure:\00", align 1
@.str.114 = private unnamed_addr constant [43 x i8] c"OptimizeParameterList: type(x) != CLOSURE!\00", align 1
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @ReadFromFile(i16 noundef zeroext %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %5 = trunc i64 %1 to i32
  tail call void @LexPush(i16 noundef zeroext %0, i32 noundef %5, i32 noundef 3, i32 noundef %2, i32 noundef 0) #8
  %6 = tail call ptr @LexGetToken() #8
  store ptr %6, ptr %4, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.word_type, ptr %6, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !9
  %9 = icmp eq i8 %8, 102
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 41, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %7) #8
  br label %12

12:                                               ; preds = %10, %3
  %13 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %14 = call ptr @Parse(ptr noundef nonnull %4, ptr noundef %13, i32 noundef 0, i32 noundef 0) #8
  %15 = load ptr, ptr %4, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  %19 = load i8, ptr %18, align 8, !tbaa !9
  %20 = icmp eq i8 %19, 2
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %12
  %22 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  %23 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 41, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull %22) #8
  br label %24

24:                                               ; preds = %21, %17
  call void @LexPop() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @LexPush(i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @LexGetToken() local_unnamed_addr #2

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Parse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @LexPop() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @AppendToFile(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca [512 x i8], align 16
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %7 = load i16, ptr @last_write_fnum, align 2, !tbaa !10
  %8 = icmp eq i16 %7, %1
  br i1 %8, label %38, label %9

9:                                                ; preds = %4
  %10 = icmp eq i16 %7, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %13 = tail call i32 @fclose(ptr noundef %12)
  br label %14

14:                                               ; preds = %11, %9
  %15 = tail call ptr @FileName(i16 noundef zeroext %1) #8
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #9
  %17 = add i64 %16, -511
  %18 = icmp ult i64 %17, -512
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = tail call ptr @PosOfFile(i16 noundef zeroext %1) #8
  %21 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 41, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %20, ptr noundef %15, ptr noundef nonnull @.str.3) #8
  br label %22

22:                                               ; preds = %19, %14
  %23 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %15) #8
  %24 = call i64 @strlen(ptr nonnull dereferenceable(1) %5)
  %25 = getelementptr inbounds i8, ptr %5, i64 %24
  store i16 120, ptr %25, align 1
  %26 = call i32 @FileTestUpdated(i16 noundef zeroext %1) #8
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr @.str.5, ptr @.str.4
  %29 = call noalias ptr @fopen(ptr noundef nonnull %5, ptr noundef nonnull %28)
  store ptr %29, ptr @last_write_fp, align 8, !tbaa !5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %33 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 41, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef %32, ptr noundef nonnull %5) #8
  %34 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  br label %35

35:                                               ; preds = %31, %22
  %36 = phi ptr [ %34, %31 ], [ %29, %22 ]
  store i16 %1, ptr @last_write_fnum, align 2, !tbaa !10
  %37 = call i32 @fseek(ptr noundef %36, i64 noundef 0, i32 noundef 2)
  br label %38

38:                                               ; preds = %35, %4
  %39 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %40 = call i64 @ftell(ptr noundef %39)
  %41 = trunc i64 %40 to i32
  store i32 %41, ptr %2, align 4, !tbaa !12
  %42 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %43 = call i32 @fputc(i32 123, ptr %42)
  %44 = call i32 @FileGetLineCount(i16 noundef zeroext %1) #8
  store i32 %44, ptr %6, align 4, !tbaa !12
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %3, align 4, !tbaa !12
  call fastcc void @WriteObject(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %6, i16 noundef zeroext %1)
  %46 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %47 = call i32 @fputc(i32 125, ptr %46)
  %48 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %49 = call i32 @fputc(i32 10, ptr %48)
  %50 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %51 = call i32 @fputc(i32 10, ptr %50)
  %52 = load i32, ptr %6, align 4, !tbaa !12
  %53 = add nsw i32 %52, 2
  call void @FileSetUpdated(i16 noundef zeroext %1, i32 noundef %53) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

declare ptr @FileName(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare ptr @PosOfFile(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

declare i32 @FileTestUpdated(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

declare i32 @FileGetLineCount(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @WriteObject(ptr noundef %0, i32 noundef %1, ptr noundef %2, i16 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %7 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !9
  switch i8 %8, label %583 [
    i8 11, label %9
    i8 12, label %22
    i8 19, label %28
    i8 18, label %26
    i8 17, label %27
    i8 82, label %173
    i8 2, label %292
    i8 6, label %340
    i8 7, label %340
    i8 5, label %468
    i8 4, label %401
    i8 20, label %402
    i8 21, label %403
    i8 22, label %404
    i8 23, label %405
    i8 24, label %406
    i8 25, label %407
    i8 26, label %408
    i8 27, label %409
    i8 28, label %410
    i8 29, label %411
    i8 30, label %412
    i8 31, label %413
    i8 32, label %414
    i8 33, label %415
    i8 34, label %416
    i8 35, label %417
    i8 36, label %418
    i8 37, label %419
    i8 38, label %420
    i8 39, label %421
    i8 40, label %422
    i8 41, label %423
    i8 44, label %424
    i8 42, label %425
    i8 43, label %426
    i8 45, label %427
    i8 46, label %428
    i8 47, label %429
    i8 48, label %430
    i8 49, label %431
    i8 50, label %432
    i8 51, label %433
    i8 52, label %434
    i8 55, label %435
    i8 56, label %436
    i8 58, label %437
    i8 59, label %438
    i8 60, label %439
    i8 61, label %440
    i8 62, label %441
    i8 63, label %442
    i8 64, label %443
    i8 65, label %444
    i8 66, label %445
    i8 67, label %446
    i8 68, label %447
    i8 69, label %448
    i8 70, label %449
    i8 71, label %450
    i8 72, label %451
    i8 73, label %452
    i8 74, label %453
    i8 75, label %454
    i8 76, label %455
    i8 77, label %456
    i8 78, label %457
    i8 79, label %458
    i8 80, label %459
    i8 92, label %460
    i8 93, label %461
    i8 94, label %462
    i8 95, label %463
    i8 96, label %464
    i8 97, label %465
    i8 98, label %466
    i8 99, label %467
    i8 54, label %516
    i8 53, label %516
    i8 57, label %581
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  %13 = icmp sgt i32 %1, 7
  %14 = and i1 %13, %12
  %15 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  br i1 %14, label %16, label %20

16:                                               ; preds = %9
  %17 = tail call i32 @fputc(i32 123, ptr %15)
  %18 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %19 = tail call i32 @fputc(i32 125, ptr %18)
  br label %589

20:                                               ; preds = %9
  %21 = tail call i32 @fputs(ptr noundef nonnull %10, ptr noundef %15)
  br label %589

22:                                               ; preds = %4
  %23 = tail call ptr @StringQuotedWord(ptr noundef nonnull %0) #8
  %24 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %25 = tail call i32 @fputs(ptr noundef %23, ptr noundef %24)
  br label %589

26:                                               ; preds = %4
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %4, %27, %26
  %29 = phi i32 [ 7, %27 ], [ 6, %26 ], [ 5, %4 ]
  %30 = icmp slt i32 %29, %1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %33 = tail call i32 @fputc(i32 123, ptr %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !9
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %169, label %38

38:                                               ; preds = %34, %164
  %39 = phi ptr [ %167, %164 ], [ %36, %34 ]
  %40 = phi i32 [ %165, %164 ], [ %29, %34 ]
  br label %41

41:                                               ; preds = %38, %41
  %42 = phi ptr [ %44, %41 ], [ %39, %38 ]
  %43 = getelementptr inbounds [2 x %struct.LIST], ptr %42, i64 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !9
  switch i8 %46, label %134 [
    i8 0, label %41
    i8 1, label %47
  ]

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.LIST, ptr %44, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = icmp eq ptr %49, %44
  br i1 %50, label %51, label %91

51:                                               ; preds = %47
  %52 = load i8, ptr %7, align 8, !tbaa !9
  %53 = icmp eq i8 %52, 17
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %56 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef %55, ptr noundef nonnull @.str.14) #8
  br label %57

57:                                               ; preds = %54, %51
  %58 = getelementptr inbounds i8, ptr %44, i64 42
  %59 = load i8, ptr %58, align 2, !tbaa !9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %57, %61
  %62 = phi i32 [ %65, %61 ], [ 1, %57 ]
  %63 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %64 = tail call i32 @fputc(i32 10, ptr %63)
  %65 = add nuw nsw i32 %62, 1
  %66 = load i8, ptr %58, align 2, !tbaa !9
  %67 = zext i8 %66 to i32
  %68 = icmp ult i32 %62, %67
  br i1 %68, label %61, label %69

69:                                               ; preds = %61, %57
  %70 = phi i32 [ 0, %57 ], [ %67, %61 ]
  %71 = load i32, ptr %2, align 4, !tbaa !12
  %72 = add nsw i32 %71, %70
  store i32 %72, ptr %2, align 4, !tbaa !12
  %73 = getelementptr inbounds i8, ptr %44, i64 41
  %74 = load i8, ptr %73, align 1, !tbaa !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %69, %76
  %77 = phi i32 [ %80, %76 ], [ 1, %69 ]
  %78 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %79 = tail call i32 @fputc(i32 32, ptr %78)
  %80 = add nuw nsw i32 %77, 1
  %81 = load i8, ptr %73, align 1, !tbaa !9
  %82 = zext i8 %81 to i32
  %83 = icmp ult i32 %77, %82
  br i1 %83, label %76, label %84

84:                                               ; preds = %76, %69
  %85 = phi i32 [ 0, %69 ], [ %82, %76 ]
  %86 = load i8, ptr %58, align 2, !tbaa !9
  %87 = zext i8 %86 to i32
  %88 = sub nsw i32 0, %85
  %89 = icmp eq i32 %87, %88
  %90 = select i1 %89, i32 103, i32 7
  br label %164

91:                                               ; preds = %47, %91
  %92 = phi ptr [ %94, %91 ], [ %49, %47 ]
  %93 = getelementptr inbounds [2 x %struct.LIST], ptr %92, i64 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !9
  %95 = getelementptr inbounds %struct.word_type, ptr %94, i64 0, i32 1
  %96 = load i8, ptr %95, align 8, !tbaa !9
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %91, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.word_type, ptr %94, i64 0, i32 1
  %100 = load i8, ptr %7, align 8, !tbaa !9
  %101 = icmp eq i8 %100, 17
  %102 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  br i1 %101, label %103, label %105

103:                                              ; preds = %98
  %104 = tail call i32 @fputc(i32 32, ptr %102)
  br label %109

105:                                              ; preds = %98
  %106 = tail call i32 @fputc(i32 10, ptr %102)
  %107 = load i32, ptr %2, align 4, !tbaa !12
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %2, align 4, !tbaa !12
  br label %109

109:                                              ; preds = %105, %103
  %110 = load i8, ptr %7, align 8, !tbaa !9
  %111 = zext i8 %110 to i32
  %112 = getelementptr inbounds %struct.gapobj_type, ptr %44, i64 0, i32 3
  %113 = load i16, ptr %112, align 4
  %114 = lshr i16 %113, 8
  %115 = and i16 %114, 1
  %116 = zext nneg i16 %115 to i32
  %117 = lshr i16 %113, 9
  %118 = and i16 %117, 1
  %119 = zext nneg i16 %118 to i32
  %120 = tail call ptr @EchoCatOp(i32 noundef %111, i32 noundef %116, i32 noundef %119) #8
  %121 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %122 = tail call i32 @fputs(ptr noundef %120, ptr noundef %121)
  %123 = load i8, ptr %99, align 8, !tbaa !9
  %124 = add i8 %123, -11
  %125 = icmp ult i8 %124, 2
  br i1 %125, label %126, label %130

126:                                              ; preds = %109
  %127 = getelementptr inbounds %struct.word_type, ptr %94, i64 0, i32 4
  %128 = load i8, ptr %127, align 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %109, %126
  tail call fastcc void @WriteObject(ptr noundef nonnull %94, i32 noundef 105, ptr noundef %2, i16 noundef zeroext %3)
  br label %131

131:                                              ; preds = %130, %126
  %132 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %133 = tail call i32 @fputc(i32 32, ptr %132)
  br label %164

134:                                              ; preds = %41
  %135 = load i8, ptr %7, align 8, !tbaa !9
  %136 = icmp eq i8 %135, 17
  br i1 %136, label %137, label %163

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.LIST, ptr %39, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !9
  %140 = icmp eq ptr %139, %0
  br i1 %140, label %160, label %141

141:                                              ; preds = %137, %141
  %142 = phi ptr [ %144, %141 ], [ %139, %137 ]
  %143 = getelementptr inbounds [2 x %struct.LIST], ptr %142, i64 0, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !9
  %145 = getelementptr inbounds %struct.word_type, ptr %144, i64 0, i32 1
  %146 = load i8, ptr %145, align 8, !tbaa !9
  switch i8 %146, label %147 [
    i8 0, label %141
    i8 1, label %150
  ]

147:                                              ; preds = %141
  %148 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %149 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef %148, ptr noundef nonnull @.str.16) #8
  br label %150

150:                                              ; preds = %141, %147
  %151 = getelementptr inbounds i8, ptr %144, i64 42
  %152 = load i8, ptr %151, align 2, !tbaa !9
  %153 = zext i8 %152 to i32
  %154 = getelementptr inbounds i8, ptr %144, i64 41
  %155 = load i8, ptr %154, align 1, !tbaa !9
  %156 = zext i8 %155 to i32
  %157 = sub nsw i32 0, %156
  %158 = icmp eq i32 %153, %157
  %159 = select i1 %158, i32 103, i32 7
  br label %160

160:                                              ; preds = %137, %150
  %161 = phi i32 [ %159, %150 ], [ %29, %137 ]
  %162 = tail call i32 @llvm.smax.i32(i32 %40, i32 %161)
  tail call fastcc void @WriteObject(ptr noundef %44, i32 noundef %162, ptr noundef %2, i16 noundef zeroext %3)
  br label %164

163:                                              ; preds = %134
  tail call fastcc void @WriteObject(ptr noundef nonnull %44, i32 noundef %29, ptr noundef %2, i16 noundef zeroext %3)
  br label %164

164:                                              ; preds = %131, %84, %163, %160
  %165 = phi i32 [ %90, %84 ], [ %29, %131 ], [ %40, %160 ], [ %40, %163 ]
  %166 = getelementptr inbounds %struct.LIST, ptr %39, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !9
  %168 = icmp eq ptr %167, %0
  br i1 %168, label %169, label %38

169:                                              ; preds = %164, %34
  br i1 %30, label %170, label %589

170:                                              ; preds = %169
  %171 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %172 = tail call i32 @fputc(i32 125, ptr %171)
  br label %589

173:                                              ; preds = %4
  %174 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !9
  %176 = icmp eq ptr %175, %0
  br i1 %176, label %177, label %184

177:                                              ; preds = %173
  %178 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %179 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 3, i64 1, ptr %178)
  %180 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %181 = tail call i32 @fputc(i32 10, ptr %180)
  %182 = load i32, ptr %2, align 4, !tbaa !12
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %2, align 4, !tbaa !12
  br label %589

184:                                              ; preds = %173
  %185 = call i32 @EnvWriteRetrieve(ptr noundef nonnull %0, i16 noundef zeroext %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %186 = icmp eq i32 %185, 0
  %187 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  br i1 %186, label %198, label %188

188:                                              ; preds = %184
  %189 = call i64 @fwrite(ptr nonnull @.str.18, i64 3, i64 1, ptr %187)
  %190 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %191 = load i32, ptr %5, align 4, !tbaa !12
  %192 = load i32, ptr %6, align 4, !tbaa !12
  %193 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %190, ptr noundef nonnull @.str.19, i32 noundef %191, i32 noundef %192)
  %194 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %195 = call i32 @fputc(i32 10, ptr %194)
  %196 = load i32, ptr %2, align 4, !tbaa !12
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %2, align 4, !tbaa !12
  br label %589

198:                                              ; preds = %184
  %199 = call i64 @ftell(ptr noundef %187)
  %200 = trunc i64 %199 to i32
  %201 = load i32, ptr %2, align 4, !tbaa !12
  call void @EnvWriteInsert(ptr noundef nonnull %0, i16 noundef zeroext %3, i32 noundef %200, i32 noundef %201) #8
  %202 = load ptr, ptr %174, align 8, !tbaa !9
  %203 = load ptr, ptr %0, align 8, !tbaa !9
  %204 = icmp eq ptr %202, %203
  br i1 %204, label %205, label %239

205:                                              ; preds = %198, %205
  %206 = phi ptr [ %208, %205 ], [ %202, %198 ]
  %207 = getelementptr inbounds [2 x %struct.LIST], ptr %206, i64 0, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !9
  %209 = getelementptr inbounds %struct.word_type, ptr %208, i64 0, i32 1
  %210 = load i8, ptr %209, align 8, !tbaa !9
  switch i8 %210, label %211 [
    i8 0, label %205
    i8 2, label %214
  ]

211:                                              ; preds = %205
  %212 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %213 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef %212, ptr noundef nonnull @.str.20) #8
  br label %214

214:                                              ; preds = %205, %211
  %215 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %216 = call i32 @fputc(i32 123, ptr %215)
  %217 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %218 = call i32 @fputc(i32 32, ptr %217)
  %219 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %220 = call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %219)
  %221 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %222 = call i32 @fputc(i32 32, ptr %221)
  %223 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %224 = call i32 @fputc(i32 123, ptr %223)
  %225 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %226 = call i32 @fputc(i32 32, ptr %225)
  call fastcc void @WriteObject(ptr noundef nonnull %208, i32 noundef 0, ptr noundef nonnull %2, i16 noundef zeroext %3)
  %227 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %228 = call i32 @fputc(i32 32, ptr %227)
  %229 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %230 = call i32 @fputc(i32 125, ptr %229)
  %231 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %232 = call i32 @fputc(i32 32, ptr %231)
  %233 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %234 = call i32 @fputc(i32 125, ptr %233)
  %235 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %236 = call i32 @fputc(i32 10, ptr %235)
  %237 = load i32, ptr %2, align 4, !tbaa !12
  %238 = add nsw i32 %237, 1
  store i32 %238, ptr %2, align 4, !tbaa !12
  br label %589

239:                                              ; preds = %198, %239
  %240 = phi ptr [ %242, %239 ], [ %203, %198 ]
  %241 = getelementptr inbounds [2 x %struct.LIST], ptr %240, i64 0, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !9
  %243 = getelementptr inbounds %struct.word_type, ptr %242, i64 0, i32 1
  %244 = load i8, ptr %243, align 8, !tbaa !9
  switch i8 %244, label %245 [
    i8 0, label %239
    i8 82, label %248
  ]

245:                                              ; preds = %239
  %246 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %247 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef %246, ptr noundef nonnull @.str.22) #8
  br label %248

248:                                              ; preds = %239, %245
  %249 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %250 = call i32 @fputc(i32 123, ptr %249)
  %251 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %252 = call i32 @fputc(i32 32, ptr %251)
  %253 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %254 = call i64 @fwrite(ptr nonnull @.str.23, i64 3, i64 1, ptr %253)
  %255 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %256 = call i32 @fputc(i32 32, ptr %255)
  %257 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %258 = call i32 @fputc(i32 123, ptr %257)
  %259 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %260 = call i32 @fputc(i32 32, ptr %259)
  call fastcc void @WriteObject(ptr noundef nonnull %242, i32 noundef 0, ptr noundef nonnull %2, i16 noundef zeroext %3)
  %261 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %262 = call i32 @fputc(i32 32, ptr %261)
  %263 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %264 = call i32 @fputc(i32 125, ptr %263)
  %265 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %266 = call i32 @fputc(i32 10, ptr %265)
  %267 = load i32, ptr %2, align 4, !tbaa !12
  %268 = add nsw i32 %267, 1
  store i32 %268, ptr %2, align 4, !tbaa !12
  %269 = load ptr, ptr %174, align 8, !tbaa !9
  br label %270

270:                                              ; preds = %270, %248
  %271 = phi ptr [ %269, %248 ], [ %273, %270 ]
  %272 = getelementptr inbounds [2 x %struct.LIST], ptr %271, i64 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !9
  %274 = getelementptr inbounds %struct.word_type, ptr %273, i64 0, i32 1
  %275 = load i8, ptr %274, align 8, !tbaa !9
  switch i8 %275, label %276 [
    i8 0, label %270
    i8 2, label %279
  ]

276:                                              ; preds = %270
  %277 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %278 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef %277, ptr noundef nonnull @.str.24) #8
  br label %279

279:                                              ; preds = %270, %276
  %280 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %281 = call i32 @fputc(i32 123, ptr %280)
  call fastcc void @WriteObject(ptr noundef nonnull %273, i32 noundef 0, ptr noundef nonnull %2, i16 noundef zeroext %3)
  %282 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %283 = call i32 @fputc(i32 125, ptr %282)
  %284 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %285 = call i32 @fputc(i32 32, ptr %284)
  %286 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %287 = call i32 @fputc(i32 125, ptr %286)
  %288 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %289 = call i32 @fputc(i32 10, ptr %288)
  %290 = load i32, ptr %2, align 4, !tbaa !12
  %291 = add nsw i32 %290, 1
  store i32 %291, ptr %2, align 4, !tbaa !12
  br label %589

292:                                              ; preds = %4
  %293 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %294 = load ptr, ptr %293, align 8, !tbaa !9
  %295 = load ptr, ptr %0, align 8, !tbaa !9
  %296 = icmp eq ptr %295, %0
  br i1 %296, label %303, label %297

297:                                              ; preds = %292, %297
  %298 = phi ptr [ %300, %297 ], [ %295, %292 ]
  %299 = getelementptr inbounds [2 x %struct.LIST], ptr %298, i64 0, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !9
  %301 = getelementptr inbounds %struct.word_type, ptr %300, i64 0, i32 1
  %302 = load i8, ptr %301, align 8, !tbaa !9
  switch i8 %302, label %303 [
    i8 0, label %297
    i8 82, label %315
  ]

303:                                              ; preds = %297, %292
  %304 = getelementptr inbounds %struct.word_type, ptr %294, i64 0, i32 2
  %305 = load i8, ptr %304, align 8, !tbaa !9
  %306 = zext i8 %305 to i32
  %307 = icmp sgt i32 %306, %1
  br i1 %307, label %332, label %308

308:                                              ; preds = %303
  %309 = getelementptr inbounds i8, ptr %294, i64 41
  %310 = load i24, ptr %309, align 1
  %311 = and i24 %310, 12
  %312 = icmp ne i24 %311, 0
  %313 = icmp ugt i32 %1, 102
  %314 = or i1 %313, %312
  br i1 %314, label %334, label %588

315:                                              ; preds = %297
  %316 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %317 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 3, i64 1, ptr %316)
  %318 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %319 = tail call i32 @fputc(i32 32, ptr %318)
  %320 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %321 = tail call i32 @fputc(i32 123, ptr %320)
  %322 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %323 = tail call i32 @fputc(i32 10, ptr %322)
  %324 = load i32, ptr %2, align 4, !tbaa !12
  %325 = add nsw i32 %324, 1
  store i32 %325, ptr %2, align 4, !tbaa !12
  tail call fastcc void @WriteObject(ptr noundef nonnull %300, i32 noundef 0, ptr noundef %2, i16 noundef zeroext %3)
  %326 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %327 = tail call i32 @fputc(i32 125, ptr %326)
  %328 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %329 = tail call i32 @fputc(i32 10, ptr %328)
  %330 = load i32, ptr %2, align 4, !tbaa !12
  %331 = add nsw i32 %330, 1
  store i32 %331, ptr %2, align 4, !tbaa !12
  br label %334

332:                                              ; preds = %303
  %333 = icmp sgt i32 %1, 102
  br i1 %333, label %334, label %588

334:                                              ; preds = %308, %315, %332
  %335 = phi ptr [ %300, %315 ], [ null, %332 ], [ null, %308 ]
  %336 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %337 = tail call i32 @fputc(i32 123, ptr %336)
  tail call fastcc void @WriteClosure(ptr noundef nonnull %0, ptr noundef %2, i16 noundef zeroext %3, ptr noundef %335)
  %338 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %339 = tail call i32 @fputc(i32 125, ptr %338)
  br label %589

340:                                              ; preds = %4, %4
  %341 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !9
  br label %343

343:                                              ; preds = %343, %340
  %344 = phi ptr [ %342, %340 ], [ %346, %343 ]
  %345 = getelementptr inbounds [2 x %struct.LIST], ptr %344, i64 0, i64 1
  %346 = load ptr, ptr %345, align 8, !tbaa !9
  %347 = getelementptr inbounds %struct.word_type, ptr %346, i64 0, i32 1
  %348 = load i8, ptr %347, align 8, !tbaa !9
  switch i8 %348, label %349 [
    i8 0, label %343
    i8 2, label %352
  ]

349:                                              ; preds = %343
  %350 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %351 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef %350, ptr noundef nonnull @.str.26) #8
  br label %352

352:                                              ; preds = %343, %349
  %353 = icmp sgt i32 %1, 99
  br i1 %353, label %354, label %357

354:                                              ; preds = %352
  %355 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %356 = tail call i32 @fputc(i32 123, ptr %355)
  br label %357

357:                                              ; preds = %354, %352
  %358 = getelementptr inbounds %struct.closure_type, ptr %346, i64 0, i32 5
  %359 = load ptr, ptr %358, align 8, !tbaa !9
  %360 = getelementptr inbounds i8, ptr %359, i64 41
  %361 = load i24, ptr %360, align 1
  %362 = and i24 %361, 65536
  %363 = icmp eq i24 %362, 0
  br i1 %363, label %364, label %379

364:                                              ; preds = %357
  %365 = getelementptr inbounds %struct.symbol_type, ptr %359, i64 0, i32 3
  %366 = load ptr, ptr %365, align 8, !tbaa !9
  %367 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %368 = icmp eq ptr %366, %367
  br i1 %368, label %379, label %369

369:                                              ; preds = %364
  %370 = getelementptr inbounds %struct.word_type, ptr %366, i64 0, i32 1
  %371 = load i8, ptr %370, align 8, !tbaa !9
  %372 = icmp eq i8 %371, -113
  br i1 %372, label %373, label %379

373:                                              ; preds = %369
  %374 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %375 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 3, i64 1, ptr %374)
  %376 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %377 = tail call i32 @fputc(i32 32, ptr %376)
  %378 = load ptr, ptr %358, align 8, !tbaa !9
  br label %379

379:                                              ; preds = %357, %364, %373, %369
  %380 = phi ptr [ %359, %357 ], [ %359, %364 ], [ %378, %373 ], [ %359, %369 ]
  %381 = tail call ptr @SymName(ptr noundef %380) #8
  %382 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %383 = tail call i32 @fputs(ptr noundef %381, ptr noundef %382)
  %384 = load i8, ptr %7, align 8, !tbaa !9
  %385 = icmp eq i8 %384, 6
  %386 = select i1 %385, ptr @.str.28, ptr @.str.29
  %387 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %388 = tail call i32 @fputs(ptr noundef nonnull %386, ptr noundef %387)
  %389 = load ptr, ptr %0, align 8, !tbaa !9
  br label %390

390:                                              ; preds = %390, %379
  %391 = phi ptr [ %389, %379 ], [ %393, %390 ]
  %392 = getelementptr inbounds [2 x %struct.LIST], ptr %391, i64 0, i64 1
  %393 = load ptr, ptr %392, align 8, !tbaa !9
  %394 = getelementptr inbounds %struct.word_type, ptr %393, i64 0, i32 1
  %395 = load i8, ptr %394, align 8, !tbaa !9
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %390, label %397

397:                                              ; preds = %390
  tail call fastcc void @WriteObject(ptr noundef nonnull %393, i32 noundef 105, ptr noundef %2, i16 noundef zeroext %3)
  br i1 %353, label %398, label %589

398:                                              ; preds = %397
  %399 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %400 = tail call i32 @fputc(i32 125, ptr %399)
  br label %589

401:                                              ; preds = %4
  br label %468

402:                                              ; preds = %4
  br label %468

403:                                              ; preds = %4
  br label %468

404:                                              ; preds = %4
  br label %468

405:                                              ; preds = %4
  br label %468

406:                                              ; preds = %4
  br label %468

407:                                              ; preds = %4
  br label %468

408:                                              ; preds = %4
  br label %468

409:                                              ; preds = %4
  br label %468

410:                                              ; preds = %4
  br label %468

411:                                              ; preds = %4
  br label %468

412:                                              ; preds = %4
  br label %468

413:                                              ; preds = %4
  br label %468

414:                                              ; preds = %4
  br label %468

415:                                              ; preds = %4
  br label %468

416:                                              ; preds = %4
  br label %468

417:                                              ; preds = %4
  br label %468

418:                                              ; preds = %4
  br label %468

419:                                              ; preds = %4
  br label %468

420:                                              ; preds = %4
  br label %468

421:                                              ; preds = %4
  br label %468

422:                                              ; preds = %4
  br label %468

423:                                              ; preds = %4
  br label %468

424:                                              ; preds = %4
  br label %468

425:                                              ; preds = %4
  br label %468

426:                                              ; preds = %4
  br label %468

427:                                              ; preds = %4
  br label %468

428:                                              ; preds = %4
  br label %468

429:                                              ; preds = %4
  br label %468

430:                                              ; preds = %4
  br label %468

431:                                              ; preds = %4
  br label %468

432:                                              ; preds = %4
  br label %468

433:                                              ; preds = %4
  br label %468

434:                                              ; preds = %4
  br label %468

435:                                              ; preds = %4
  br label %468

436:                                              ; preds = %4
  br label %468

437:                                              ; preds = %4
  br label %468

438:                                              ; preds = %4
  br label %468

439:                                              ; preds = %4
  br label %468

440:                                              ; preds = %4
  br label %468

441:                                              ; preds = %4
  br label %468

442:                                              ; preds = %4
  br label %468

443:                                              ; preds = %4
  br label %468

444:                                              ; preds = %4
  br label %468

445:                                              ; preds = %4
  br label %468

446:                                              ; preds = %4
  br label %468

447:                                              ; preds = %4
  br label %468

448:                                              ; preds = %4
  br label %468

449:                                              ; preds = %4
  br label %468

450:                                              ; preds = %4
  br label %468

451:                                              ; preds = %4
  br label %468

452:                                              ; preds = %4
  br label %468

453:                                              ; preds = %4
  br label %468

454:                                              ; preds = %4
  br label %468

455:                                              ; preds = %4
  br label %468

456:                                              ; preds = %4
  br label %468

457:                                              ; preds = %4
  br label %468

458:                                              ; preds = %4
  br label %468

459:                                              ; preds = %4
  br label %468

460:                                              ; preds = %4
  br label %468

461:                                              ; preds = %4
  br label %468

462:                                              ; preds = %4
  br label %468

463:                                              ; preds = %4
  br label %468

464:                                              ; preds = %4
  br label %468

465:                                              ; preds = %4
  br label %468

466:                                              ; preds = %4
  br label %468

467:                                              ; preds = %4
  br label %468

468:                                              ; preds = %4, %467, %466, %465, %464, %463, %462, %461, %460, %459, %458, %457, %456, %455, %454, %453, %452, %451, %450, %449, %448, %447, %446, %445, %444, %443, %442, %441, %440, %439, %438, %437, %436, %435, %434, %433, %432, %431, %430, %429, %428, %427, %426, %425, %424, %423, %422, %421, %420, %419, %418, %417, %416, %415, %414, %413, %412, %411, %410, %409, %408, %407, %406, %405, %404, %403, %402, %401
  %469 = phi ptr [ @.str.97, %467 ], [ @.str.96, %466 ], [ @.str.95, %465 ], [ @.str.94, %464 ], [ @.str.93, %463 ], [ @.str.92, %462 ], [ @.str.91, %461 ], [ @.str.90, %460 ], [ @.str.89, %459 ], [ @.str.88, %458 ], [ @.str.87, %457 ], [ @.str.86, %456 ], [ @.str.85, %455 ], [ @.str.84, %454 ], [ @.str.83, %453 ], [ @.str.82, %452 ], [ @.str.81, %451 ], [ @.str.80, %450 ], [ @.str.79, %449 ], [ @.str.78, %448 ], [ @.str.77, %447 ], [ @.str.76, %446 ], [ @.str.75, %445 ], [ @.str.74, %444 ], [ @.str.73, %443 ], [ @.str.72, %442 ], [ @.str.71, %441 ], [ @.str.70, %440 ], [ @.str.69, %439 ], [ @.str.68, %438 ], [ @.str.67, %437 ], [ @.str.66, %436 ], [ @.str.65, %435 ], [ @.str.64, %434 ], [ @.str.63, %433 ], [ @.str.62, %432 ], [ @.str.61, %431 ], [ @.str.60, %430 ], [ @.str.59, %429 ], [ @.str.58, %428 ], [ @.str.57, %427 ], [ @.str.56, %426 ], [ @.str.55, %425 ], [ @.str.54, %424 ], [ @.str.53, %423 ], [ @.str.52, %422 ], [ @.str.51, %421 ], [ @.str.50, %420 ], [ @.str.49, %419 ], [ @.str.48, %418 ], [ @.str.47, %417 ], [ @.str.46, %416 ], [ @.str.45, %415 ], [ @.str.44, %414 ], [ @.str.43, %413 ], [ @.str.42, %412 ], [ @.str.41, %411 ], [ @.str.40, %410 ], [ @.str.39, %409 ], [ @.str.38, %408 ], [ @.str.37, %407 ], [ @.str.36, %406 ], [ @.str.35, %405 ], [ @.str.34, %404 ], [ @.str.33, %403 ], [ @.str.32, %402 ], [ @.str.31, %401 ], [ @.str.30, %4 ]
  %470 = icmp sgt i32 %1, 99
  br i1 %470, label %471, label %474

471:                                              ; preds = %468
  %472 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %473 = tail call i32 @fputc(i32 123, ptr %472)
  br label %474

474:                                              ; preds = %471, %468
  %475 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %476 = load ptr, ptr %475, align 8, !tbaa !9
  %477 = load ptr, ptr %0, align 8, !tbaa !9
  %478 = icmp eq ptr %476, %477
  br i1 %478, label %489, label %479

479:                                              ; preds = %474, %479
  %480 = phi ptr [ %482, %479 ], [ %476, %474 ]
  %481 = getelementptr inbounds [2 x %struct.LIST], ptr %480, i64 0, i64 1
  %482 = load ptr, ptr %481, align 8, !tbaa !9
  %483 = getelementptr inbounds %struct.word_type, ptr %482, i64 0, i32 1
  %484 = load i8, ptr %483, align 8, !tbaa !9
  %485 = icmp eq i8 %484, 0
  br i1 %485, label %479, label %486

486:                                              ; preds = %479
  tail call fastcc void @WriteObject(ptr noundef nonnull %482, i32 noundef 100, ptr noundef %2, i16 noundef zeroext %3)
  %487 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %488 = tail call i32 @fputc(i32 32, ptr %487)
  br label %489

489:                                              ; preds = %486, %474
  %490 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %491 = tail call i32 @fputs(ptr noundef nonnull %469, ptr noundef %490)
  %492 = load ptr, ptr %0, align 8, !tbaa !9
  %493 = icmp eq ptr %492, %0
  br i1 %493, label %512, label %494

494:                                              ; preds = %489, %494
  %495 = phi ptr [ %497, %494 ], [ %492, %489 ]
  %496 = getelementptr inbounds [2 x %struct.LIST], ptr %495, i64 0, i64 1
  %497 = load ptr, ptr %496, align 8, !tbaa !9
  %498 = getelementptr inbounds %struct.word_type, ptr %497, i64 0, i32 1
  %499 = load i8, ptr %498, align 8, !tbaa !9
  %500 = icmp eq i8 %499, 0
  br i1 %500, label %494, label %501

501:                                              ; preds = %494
  %502 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %503 = tail call i32 @fputc(i32 32, ptr %502)
  %504 = load i8, ptr %7, align 8, !tbaa !9
  %505 = icmp eq i8 %504, 92
  br i1 %505, label %506, label %511

506:                                              ; preds = %501
  %507 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %508 = tail call i32 @fputc(i32 123, ptr %507)
  tail call fastcc void @WriteObject(ptr noundef nonnull %497, i32 noundef 0, ptr noundef %2, i16 noundef zeroext %3)
  %509 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %510 = tail call i32 @fputc(i32 125, ptr %509)
  br label %512

511:                                              ; preds = %501
  tail call fastcc void @WriteObject(ptr noundef nonnull %497, i32 noundef 100, ptr noundef %2, i16 noundef zeroext %3)
  br label %512

512:                                              ; preds = %506, %511, %489
  br i1 %470, label %513, label %589

513:                                              ; preds = %512
  %514 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %515 = tail call i32 @fputc(i32 125, ptr %514)
  br label %589

516:                                              ; preds = %4, %4
  %517 = icmp eq i8 %8, 53
  %518 = select i1 %517, ptr @.str.98, ptr @.str.99
  %519 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %520 = tail call i32 @fputs(ptr noundef nonnull %518, ptr noundef %519)
  %521 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %522 = tail call i32 @fputc(i32 32, ptr %521)
  %523 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %524 = tail call i64 @fwrite(ptr nonnull @.str.100, i64 6, i64 1, ptr %523)
  %525 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %526 = tail call i32 @fputc(i32 10, ptr %525)
  %527 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %528 = load ptr, ptr %527, align 8, !tbaa !9
  br label %529

529:                                              ; preds = %529, %516
  %530 = phi ptr [ %528, %516 ], [ %532, %529 ]
  %531 = getelementptr inbounds [2 x %struct.LIST], ptr %530, i64 0, i64 1
  %532 = load ptr, ptr %531, align 8, !tbaa !9
  %533 = getelementptr inbounds %struct.word_type, ptr %532, i64 0, i32 1
  %534 = load i8, ptr %533, align 8, !tbaa !9
  switch i8 %534, label %541 [
    i8 0, label %529
    i8 11, label %535
    i8 19, label %544
  ]

535:                                              ; preds = %529
  %536 = getelementptr inbounds %struct.word_type, ptr %532, i64 0, i32 4
  %537 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %538 = tail call i32 @fputs(ptr noundef nonnull %536, ptr noundef %537)
  %539 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %540 = tail call i32 @fputc(i32 32, ptr %539)
  br label %571

541:                                              ; preds = %529
  %542 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %543 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef %542, ptr noundef nonnull @.str.101) #8
  br label %544

544:                                              ; preds = %529, %541
  %545 = getelementptr inbounds %struct.LIST, ptr %532, i64 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !9
  %547 = icmp eq ptr %546, %532
  br i1 %547, label %571, label %548

548:                                              ; preds = %544, %567
  %549 = phi ptr [ %569, %567 ], [ %546, %544 ]
  br label %550

550:                                              ; preds = %548, %550
  %551 = phi ptr [ %553, %550 ], [ %549, %548 ]
  %552 = getelementptr inbounds [2 x %struct.LIST], ptr %551, i64 0, i64 1
  %553 = load ptr, ptr %552, align 8, !tbaa !9
  %554 = getelementptr inbounds %struct.word_type, ptr %553, i64 0, i32 1
  %555 = load i8, ptr %554, align 8, !tbaa !9
  switch i8 %555, label %556 [
    i8 0, label %550
    i8 1, label %567
    i8 11, label %559
  ]

556:                                              ; preds = %550
  %557 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %558 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef %557, ptr noundef nonnull @.str.102) #8
  br label %559

559:                                              ; preds = %550, %556
  %560 = getelementptr inbounds %struct.word_type, ptr %553, i64 0, i32 4
  %561 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %562 = tail call i32 @fputs(ptr noundef nonnull %560, ptr noundef %561)
  %563 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %564 = tail call i32 @fputc(i32 10, ptr %563)
  %565 = load i32, ptr %2, align 4, !tbaa !12
  %566 = add nsw i32 %565, 1
  store i32 %566, ptr %2, align 4, !tbaa !12
  br label %567

567:                                              ; preds = %550, %559
  %568 = getelementptr inbounds %struct.LIST, ptr %549, i64 0, i32 1
  %569 = load ptr, ptr %568, align 8, !tbaa !9
  %570 = icmp eq ptr %569, %532
  br i1 %570, label %571, label %548

571:                                              ; preds = %567, %544, %535
  %572 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %573 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 4, i64 1, ptr %572)
  %574 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %575 = tail call i32 @fputc(i32 32, ptr %574)
  %576 = load i8, ptr %7, align 8, !tbaa !9
  %577 = icmp eq i8 %576, 53
  %578 = select i1 %577, ptr @.str.98, ptr @.str.99
  %579 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %580 = tail call i32 @fputs(ptr noundef nonnull %578, ptr noundef %579)
  br label %589

581:                                              ; preds = %4
  %582 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  tail call void @FilterWrite(ptr noundef nonnull %0, ptr noundef %582, ptr noundef %2) #8
  br label %589

583:                                              ; preds = %4
  %584 = zext i8 %8 to i32
  %585 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %586 = tail call ptr @Image(i32 noundef %584) #8
  %587 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.104, i32 noundef 0, ptr noundef %585, ptr noundef nonnull @.str.105, ptr noundef %586) #8
  br label %589

588:                                              ; preds = %308, %332
  tail call fastcc void @WriteClosure(ptr noundef nonnull %0, ptr noundef %2, i16 noundef zeroext %3, ptr noundef null)
  br label %589

589:                                              ; preds = %588, %512, %513, %397, %398, %334, %177, %214, %279, %188, %169, %170, %16, %20, %583, %581, %571, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret void
}

declare void @FileSetUpdated(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CloseFiles() local_unnamed_addr #0 {
  %1 = alloca [512 x i8], align 16
  %2 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #8
  %3 = load i16, ptr @last_write_fnum, align 2, !tbaa !10
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %7 = tail call i32 @fclose(ptr noundef %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = tail call zeroext i16 @FirstFile(i32 noundef 0) #8
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8, %11
  %12 = phi i16 [ %18, %11 ], [ %9, %8 ]
  %13 = call ptr @FileName(i16 noundef zeroext %12) #8
  %14 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13) #8
  %15 = call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  store i32 6581294, ptr %16, align 1
  %17 = call i32 @remove(ptr noundef nonnull %1) #8
  %18 = call zeroext i16 @NextFile(i16 noundef zeroext %12) #8
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %11

20:                                               ; preds = %11, %8
  %21 = call zeroext i16 @FirstFile(i32 noundef 3) #8
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %20, %44
  %24 = phi i16 [ %45, %44 ], [ %21, %20 ]
  %25 = call i32 @FileTestUpdated(i16 noundef zeroext %24) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  %28 = call ptr @FileName(i16 noundef zeroext %24) #8
  %29 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %28) #8
  %30 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %1) #8
  %31 = call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %32 = getelementptr inbounds i8, ptr %2, i64 %31
  store i16 120, ptr %32, align 1
  %33 = call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.11)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = call i32 @fclose(ptr noundef nonnull %33)
  %37 = call i32 @remove(ptr noundef nonnull %1) #8
  br label %38

38:                                               ; preds = %35, %27
  %39 = call i32 @rename(ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %43 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 41, i32 noundef 5, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %42, ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  br label %44

44:                                               ; preds = %23, %41, %38
  %45 = call zeroext i16 @NextFile(i16 noundef zeroext %24) #8
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %23

47:                                               ; preds = %44, %20
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %1) #8
  ret void
}

declare zeroext i16 @FirstFile(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #3

declare zeroext i16 @NextFile(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

declare ptr @StringQuotedWord(ptr noundef) local_unnamed_addr #2

declare ptr @EchoCatOp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EnvWriteRetrieve(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare void @EnvWriteInsert(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @WriteClosure(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.symbol_type, ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %12 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 5, i64 1, ptr %11)
  br label %233

13:                                               ; preds = %4
  tail call fastcc void @OptimizeParameterList(ptr noundef nonnull %0, ptr noundef %3)
  %14 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %216, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %6, i64 41
  %19 = getelementptr inbounds %struct.symbol_type, ptr %6, i64 0, i32 3
  %20 = getelementptr inbounds %struct.symbol_type, ptr %6, i64 0, i32 10
  %21 = getelementptr inbounds %struct.word_type, ptr %6, i64 0, i32 2
  br label %22

22:                                               ; preds = %17, %208
  %23 = phi ptr [ %15, %17 ], [ %212, %208 ]
  %24 = phi i32 [ 0, %17 ], [ %210, %208 ]
  %25 = phi i32 [ 0, %17 ], [ %209, %208 ]
  br label %26

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %29, %26 ], [ %23, %22 ]
  %28 = getelementptr inbounds [2 x %struct.LIST], ptr %27, i64 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = getelementptr inbounds %struct.word_type, ptr %29, i64 0, i32 1
  %31 = load i8, ptr %30, align 8, !tbaa !9
  switch i8 %31, label %208 [
    i8 0, label %26
    i8 10, label %32
  ]

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.closure_type, ptr %29, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  %35 = getelementptr inbounds %struct.word_type, ptr %34, i64 0, i32 1
  %36 = load i8, ptr %35, align 8, !tbaa !9
  switch i8 %36, label %203 [
    i8 -112, label %37
    i8 -111, label %59
    i8 -110, label %130
  ]

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.LIST, ptr %29, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  %40 = icmp eq ptr %39, %29
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %43 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef %42, ptr noundef nonnull @.str.107) #8
  %44 = load ptr, ptr %38, align 8, !tbaa !9
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi ptr [ %39, %37 ], [ %44, %41 ]
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi ptr [ %50, %47 ], [ %46, %45 ]
  %49 = getelementptr inbounds [2 x %struct.LIST], ptr %48, i64 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !9
  %51 = getelementptr inbounds %struct.word_type, ptr %50, i64 0, i32 1
  %52 = load i8, ptr %51, align 8, !tbaa !9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %47, label %54

54:                                               ; preds = %47
  %55 = load i8, ptr %21, align 8, !tbaa !9
  %56 = zext i8 %55 to i32
  tail call fastcc void @WriteObject(ptr noundef nonnull %50, i32 noundef %56, ptr noundef %1, i16 noundef zeroext %2)
  %57 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %58 = tail call i32 @fputc(i32 32, ptr %57)
  br label %208

59:                                               ; preds = %32
  %60 = getelementptr inbounds %struct.LIST, ptr %29, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !9
  %62 = icmp eq ptr %61, %29
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %65 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef %64, ptr noundef nonnull @.str.108) #8
  %66 = load ptr, ptr %60, align 8, !tbaa !9
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi ptr [ %61, %59 ], [ %66, %63 ]
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi ptr [ %72, %69 ], [ %68, %67 ]
  %71 = getelementptr inbounds [2 x %struct.LIST], ptr %70, i64 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !9
  %73 = getelementptr inbounds %struct.word_type, ptr %72, i64 0, i32 1
  %74 = load i8, ptr %73, align 8, !tbaa !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %69, label %76

76:                                               ; preds = %69
  %77 = icmp eq i32 %24, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %76
  %79 = load i24, ptr %18, align 1
  %80 = and i24 %79, 65536
  %81 = icmp eq i24 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load ptr, ptr %19, align 8, !tbaa !9
  %84 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %95, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.word_type, ptr %83, i64 0, i32 1
  %88 = load i8, ptr %87, align 8, !tbaa !9
  %89 = icmp eq i8 %88, -113
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %92 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 3, i64 1, ptr %91)
  %93 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %94 = tail call i32 @fputc(i32 32, ptr %93)
  br label %95

95:                                               ; preds = %78, %82, %90, %86
  %96 = tail call ptr @SymName(ptr noundef nonnull %6) #8
  %97 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %98 = tail call i32 @fputs(ptr noundef %96, ptr noundef %97)
  br label %99

99:                                               ; preds = %95, %76
  %100 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %101 = tail call i32 @fputc(i32 10, ptr %100)
  %102 = load i32, ptr %1, align 4, !tbaa !12
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %1, align 4, !tbaa !12
  %104 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %105 = tail call i32 @fputc(i32 32, ptr %104)
  %106 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %107 = tail call i32 @fputc(i32 32, ptr %106)
  %108 = load ptr, ptr %33, align 8, !tbaa !9
  %109 = getelementptr inbounds %struct.symbol_type, ptr %108, i64 0, i32 15
  %110 = load i8, ptr %109, align 1, !tbaa !9
  %111 = icmp eq i8 %110, 32
  br i1 %111, label %121, label %112

112:                                              ; preds = %99
  %113 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %114 = tail call i32 @fputc(i32 92, ptr %113)
  %115 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %116 = load ptr, ptr %33, align 8, !tbaa !9
  %117 = getelementptr inbounds %struct.symbol_type, ptr %116, i64 0, i32 15
  %118 = load i8, ptr %117, align 1, !tbaa !9
  %119 = sext i8 %118 to i32
  %120 = tail call i32 @fputc(i32 %119, ptr %115)
  br label %125

121:                                              ; preds = %99
  %122 = tail call ptr @SymName(ptr noundef nonnull %108) #8
  %123 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %124 = tail call i32 @fputs(ptr noundef %122, ptr noundef %123)
  br label %125

125:                                              ; preds = %121, %112
  %126 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %127 = tail call i32 @fputc(i32 123, ptr %126)
  tail call fastcc void @WriteObject(ptr noundef nonnull %72, i32 noundef 0, ptr noundef nonnull %1, i16 noundef zeroext %2)
  %128 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %129 = tail call i32 @fputc(i32 125, ptr %128)
  br label %208

130:                                              ; preds = %32
  %131 = getelementptr inbounds %struct.LIST, ptr %29, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !9
  %133 = icmp eq ptr %132, %29
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %136 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef %135, ptr noundef nonnull @.str.111) #8
  %137 = load ptr, ptr %131, align 8, !tbaa !9
  br label %138

138:                                              ; preds = %134, %130
  %139 = phi ptr [ %132, %130 ], [ %137, %134 ]
  br label %140

140:                                              ; preds = %138, %140
  %141 = phi ptr [ %143, %140 ], [ %139, %138 ]
  %142 = getelementptr inbounds [2 x %struct.LIST], ptr %141, i64 0, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !9
  %144 = getelementptr inbounds %struct.word_type, ptr %143, i64 0, i32 1
  %145 = load i8, ptr %144, align 8, !tbaa !9
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %140, label %147

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.word_type, ptr %143, i64 0, i32 1
  %149 = icmp eq i32 %24, 0
  br i1 %149, label %150, label %171

150:                                              ; preds = %147
  %151 = load i24, ptr %18, align 1
  %152 = and i24 %151, 65536
  %153 = icmp eq i24 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %150
  %155 = load ptr, ptr %19, align 8, !tbaa !9
  %156 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %157 = icmp eq ptr %155, %156
  br i1 %157, label %167, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.word_type, ptr %155, i64 0, i32 1
  %160 = load i8, ptr %159, align 8, !tbaa !9
  %161 = icmp eq i8 %160, -113
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %164 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 3, i64 1, ptr %163)
  %165 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %166 = tail call i32 @fputc(i32 32, ptr %165)
  br label %167

167:                                              ; preds = %150, %154, %162, %158
  %168 = tail call ptr @SymName(ptr noundef nonnull %6) #8
  %169 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %170 = tail call i32 @fputs(ptr noundef %168, ptr noundef %169)
  br label %171

171:                                              ; preds = %167, %147
  %172 = icmp eq i32 %25, 0
  %173 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  br i1 %172, label %178, label %174

174:                                              ; preds = %171
  %175 = tail call i32 @fputc(i32 10, ptr %173)
  %176 = load i32, ptr %1, align 4, !tbaa !12
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %1, align 4, !tbaa !12
  br label %180

178:                                              ; preds = %171
  %179 = tail call i32 @fputc(i32 32, ptr %173)
  br label %180

180:                                              ; preds = %178, %174
  %181 = load ptr, ptr %20, align 8, !tbaa !9
  %182 = icmp eq ptr %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %180
  %184 = load i8, ptr %148, align 8, !tbaa !9
  %185 = icmp eq i8 %184, 57
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  tail call fastcc void @WriteObject(ptr noundef nonnull %143, i32 noundef 0, ptr noundef %1, i16 noundef zeroext %2)
  br label %208

187:                                              ; preds = %183, %180
  %188 = load i24, ptr %18, align 1
  %189 = and i24 %188, 256
  %190 = icmp eq i24 %189, 0
  br i1 %190, label %200, label %191

191:                                              ; preds = %187
  %192 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %193 = tail call i32 @fputc(i32 123, ptr %192)
  %194 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %195 = tail call i32 @fputc(i32 32, ptr %194)
  tail call fastcc void @WriteObject(ptr noundef nonnull %143, i32 noundef 0, ptr noundef %1, i16 noundef zeroext %2)
  %196 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %197 = tail call i32 @fputc(i32 32, ptr %196)
  %198 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %199 = tail call i32 @fputc(i32 125, ptr %198)
  br label %208

200:                                              ; preds = %187
  %201 = load i8, ptr %21, align 8, !tbaa !9
  %202 = zext i8 %201 to i32
  tail call fastcc void @WriteObject(ptr noundef nonnull %143, i32 noundef %202, ptr noundef %1, i16 noundef zeroext %2)
  br label %208

203:                                              ; preds = %32
  %204 = zext i8 %36 to i32
  %205 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %206 = tail call ptr @Image(i32 noundef %204) #8
  %207 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.104, i32 noundef 0, ptr noundef %205, ptr noundef nonnull @.str.113, ptr noundef %206) #8
  br label %208

208:                                              ; preds = %26, %186, %200, %191, %203, %125, %54
  %209 = phi i32 [ %25, %203 ], [ %25, %186 ], [ %25, %191 ], [ %25, %200 ], [ 1, %125 ], [ %25, %54 ], [ %25, %26 ]
  %210 = phi i32 [ %24, %203 ], [ 1, %186 ], [ 1, %191 ], [ 1, %200 ], [ 1, %125 ], [ %24, %54 ], [ %24, %26 ]
  %211 = getelementptr inbounds %struct.LIST, ptr %23, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !9
  %213 = icmp eq ptr %212, %0
  br i1 %213, label %214, label %22

214:                                              ; preds = %208
  %215 = icmp eq i32 %210, 0
  br i1 %215, label %216, label %240

216:                                              ; preds = %13, %214
  %217 = getelementptr inbounds i8, ptr %6, i64 41
  %218 = load i24, ptr %217, align 1
  %219 = and i24 %218, 65536
  %220 = icmp eq i24 %219, 0
  br i1 %220, label %221, label %236

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.symbol_type, ptr %6, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !9
  %224 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %225 = icmp eq ptr %223, %224
  br i1 %225, label %236, label %226

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.word_type, ptr %223, i64 0, i32 1
  %228 = load i8, ptr %227, align 8, !tbaa !9
  %229 = icmp eq i8 %228, -113
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %232 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 3, i64 1, ptr %231)
  br label %233

233:                                              ; preds = %10, %230
  %234 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %235 = tail call i32 @fputc(i32 32, ptr %234)
  br label %236

236:                                              ; preds = %233, %226, %221, %216
  %237 = tail call ptr @SymName(ptr noundef nonnull %6) #8
  %238 = load ptr, ptr @last_write_fp, align 8, !tbaa !5
  %239 = tail call i32 @fputs(ptr noundef %237, ptr noundef %238)
  br label %240

240:                                              ; preds = %236, %214
  ret void
}

declare ptr @SymName(ptr noundef) local_unnamed_addr #2

declare void @FilterWrite(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Image(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @OptimizeParameterList(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !9
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %8 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef %7, ptr noundef nonnull @.str.114) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %56, label %15

15:                                               ; preds = %11, %52
  %16 = phi ptr [ %54, %52 ], [ %13, %11 ]
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %20, %17 ], [ %16, %15 ]
  %19 = getelementptr inbounds [2 x %struct.LIST], ptr %18, i64 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.word_type, ptr %20, i64 0, i32 1
  %22 = load i8, ptr %21, align 8, !tbaa !9
  switch i8 %22, label %52 [
    i8 0, label %17
    i8 10, label %23
  ]

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.LIST, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  br label %26

26:                                               ; preds = %26, %23
  %27 = phi ptr [ %25, %23 ], [ %29, %26 ]
  %28 = getelementptr inbounds [2 x %struct.LIST], ptr %27, i64 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = getelementptr inbounds %struct.word_type, ptr %29, i64 0, i32 1
  %31 = load i8, ptr %30, align 8, !tbaa !9
  switch i8 %31, label %52 [
    i8 0, label %26
    i8 2, label %32
    i8 17, label %33
  ]

32:                                               ; preds = %26
  tail call fastcc void @Optimize(ptr noundef nonnull %29, ptr noundef nonnull %1)
  br label %52

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.LIST, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !9
  %36 = icmp eq ptr %35, %29
  br i1 %36, label %52, label %37

37:                                               ; preds = %33, %49
  %38 = phi ptr [ %50, %49 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.LIST, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !9
  br label %41

41:                                               ; preds = %41, %37
  %42 = phi ptr [ %40, %37 ], [ %44, %41 ]
  %43 = getelementptr inbounds [2 x %struct.LIST], ptr %42, i64 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !9
  switch i8 %46, label %49 [
    i8 0, label %41
    i8 2, label %47
  ]

47:                                               ; preds = %41
  tail call fastcc void @Optimize(ptr noundef nonnull %44, ptr noundef nonnull %1)
  %48 = load ptr, ptr %39, align 8, !tbaa !9
  br label %49

49:                                               ; preds = %41, %47
  %50 = phi ptr [ %48, %47 ], [ %40, %41 ]
  %51 = icmp eq ptr %50, %29
  br i1 %51, label %52, label %37

52:                                               ; preds = %17, %26, %49, %33, %32
  %53 = getelementptr inbounds %struct.LIST, ptr %16, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !9
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %56, label %15

56:                                               ; preds = %52, %11, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Optimize(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @OptimizeParameterList(ptr noundef nonnull %0, ptr noundef %1)
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call ptr @ParameterCheck(ptr noundef nonnull %0, ptr noundef %1) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store ptr null, ptr @xx_tmp, align 8, !tbaa !5
  store ptr %8, ptr @zz_res, align 8, !tbaa !5
  store ptr null, ptr @zz_hold, align 8, !tbaa !5
  br label %25

15:                                               ; preds = %10
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = getelementptr inbounds [2 x %struct.LIST], ptr %12, i64 0, i64 1
  store ptr %17, ptr %18, align 8, !tbaa !9
  %19 = getelementptr inbounds [2 x %struct.LIST], ptr %17, i64 0, i64 1, i32 1
  store ptr %12, ptr %19, align 8, !tbaa !9
  store ptr %0, ptr %11, align 8, !tbaa !9
  store ptr %0, ptr %16, align 8, !tbaa !9
  store ptr %12, ptr @xx_tmp, align 8, !tbaa !5
  store ptr %8, ptr @zz_res, align 8, !tbaa !5
  store ptr %12, ptr @zz_hold, align 8, !tbaa !5
  %20 = load ptr, ptr %18, align 8, !tbaa !9
  store ptr %20, ptr @zz_tmp, align 8, !tbaa !5
  %21 = getelementptr inbounds [2 x %struct.LIST], ptr %8, i64 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  store ptr %22, ptr %18, align 8, !tbaa !9
  %23 = getelementptr inbounds [2 x %struct.LIST], ptr %22, i64 0, i64 1, i32 1
  store ptr %12, ptr %23, align 8, !tbaa !9
  store ptr %20, ptr %21, align 8, !tbaa !9
  %24 = getelementptr inbounds [2 x %struct.LIST], ptr %20, i64 0, i64 1, i32 1
  store ptr %8, ptr %24, align 8, !tbaa !9
  br label %25

25:                                               ; preds = %14, %15
  %26 = tail call i32 @DisposeObject(ptr noundef nonnull %0) #8
  br label %27

27:                                               ; preds = %25, %7
  ret void
}

declare ptr @ParameterCheck(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
