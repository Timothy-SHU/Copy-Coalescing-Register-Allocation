; ModuleID = 'src/z38.c'
source_filename = "src/z38.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.mapvec = type { ptr, i16, i32, i32, ptr, [256 x ptr], [353 x i8], [4 x [256 x i8]] }
%struct.back_end_rec = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%union.anon.12 = type { ptr }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@maptop = internal unnamed_addr global i32 1, align 4
@MapTable = dso_local local_unnamed_addr global [20 x ptr] zeroinitializer, align 16
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@notdef_word = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"too many character mappings\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"run out of memory when loading character mapping\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"cannot open character mapping file %s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%d %o %s\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"character code(s) missing in mapping file (line %d)\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"decimal and octal codes disagree in mapping file (line %d)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"-none-\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"code %d too small (min is 1) in mapping file (line %d)\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"code %d out of order in mapping file (line %d)\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"code %d repeated in mapping file (line %d)\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"code %d too large (max is %d) in mapping file (line %d)\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%d %o %s%n\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"%s %[^;];%n\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"UC\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"LC\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"UA\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"unknown mapping name %s in mapping file %s (line %d)\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"unknown character %s in mapping file %s (line %d)\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"MapEncodingName: m out of range!\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"MapEnsurePrinted: not seen_recoded!\00", align 1
@BackEnd = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [19 x i8] c"%%%%+ encoding %s\0A\00", align 1
@MapSmallCaps.font_change_word = internal unnamed_addr global ptr null, align 8
@.str.27 = private unnamed_addr constant [32 x i8] c"MapSmallCaps: !is_word(type(x))\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"MapSmallCaps: mapping out of range!\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"0.7f\00", align 1
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @MapLoad(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca [512 x i8], align 16
  %10 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %10) #12
  %11 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(2) @.str) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %493, label %14

14:                                               ; preds = %2
  %15 = load i32, ptr @maptop, align 4, !tbaa !5
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = zext i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %52
  %20 = phi i64 [ 1, %17 ], [ %53, %52 ]
  %21 = getelementptr inbounds [20 x ptr], ptr @MapTable, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.word_type, ptr %23, i64 0, i32 4
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %11) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %19
  %28 = trunc i64 %20 to i32
  store ptr %0, ptr @zz_hold, align 8, !tbaa !9
  %29 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %30 = load i8, ptr %29, align 8, !tbaa !14
  %31 = add i8 %30, -11
  %32 = icmp ult i8 %31, 2
  %33 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 1
  %34 = zext i8 %30 to i64
  %35 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %34
  %36 = select i1 %32, ptr %33, ptr %35
  %37 = load i8, ptr %36, align 1, !tbaa !14
  %38 = zext i8 %37 to i32
  store i32 %38, ptr @zz_size, align 4, !tbaa !5
  %39 = zext i8 %37 to i64
  %40 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  store ptr %41, ptr %0, align 8, !tbaa !14
  %42 = load ptr, ptr @zz_hold, align 8, !tbaa !9
  %43 = load i32, ptr @zz_size, align 4, !tbaa !5
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %44
  store ptr %42, ptr %45, align 8, !tbaa !9
  %46 = load ptr, ptr %21, align 8, !tbaa !9
  %47 = getelementptr inbounds %struct.mapvec, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !15
  %49 = or i32 %48, %1
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, ptr %47, align 4, !tbaa !15
  br label %493

52:                                               ; preds = %19
  %53 = add nuw nsw i64 %20, 1
  %54 = icmp eq i64 %53, %18
  br i1 %54, label %55, label %19

55:                                               ; preds = %52, %14
  %56 = load ptr, ptr @notdef_word, align 8, !tbaa !9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %60 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %59) #12
  store ptr %60, ptr @notdef_word, align 8, !tbaa !9
  %61 = load i32, ptr @maptop, align 4, !tbaa !5
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i32 [ %61, %58 ], [ %15, %55 ]
  %64 = icmp eq i32 %63, 20
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %67 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef nonnull %66) #12
  %68 = load i32, ptr @maptop, align 4, !tbaa !5
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i32 [ %68, %65 ], [ %63, %62 ]
  %71 = tail call noalias dereferenceable_or_null(3464) ptr @malloc(i64 noundef 3464) #14
  %72 = add nsw i32 %70, 1
  store i32 %72, ptr @maptop, align 4, !tbaa !5
  %73 = zext i32 %70 to i64
  %74 = getelementptr inbounds [20 x ptr], ptr @MapTable, i64 0, i64 %73
  store ptr %71, ptr %74, align 8, !tbaa !9
  %75 = icmp eq ptr %71, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %78 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull %77) #12
  br label %79

79:                                               ; preds = %76, %69
  store ptr %0, ptr %71, align 8, !tbaa !11
  %80 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %81 = tail call zeroext i16 @DefineFile(ptr noundef nonnull %11, ptr noundef nonnull @.str.4, ptr noundef nonnull %80, i32 noundef 9, i32 noundef 7) #12
  %82 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 1
  store i16 %81, ptr %82, align 8, !tbaa !16
  %83 = tail call ptr @OpenFile(i16 noundef zeroext %81, i32 noundef 0, i32 noundef 0) #12
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i16, ptr %82, align 8, !tbaa !16
  %87 = tail call ptr @PosOfFile(i16 noundef zeroext %86) #12
  %88 = load i16, ptr %82, align 8, !tbaa !16
  %89 = tail call ptr @FileName(i16 noundef zeroext %88) #12
  %90 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef %87, ptr noundef %89) #12
  br label %91

91:                                               ; preds = %85, %79
  %92 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 2
  store i32 %1, ptr %92, align 4, !tbaa !15
  %93 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 3
  store i32 0, ptr %93, align 8, !tbaa !17
  store i32 6514038, ptr %7, align 16
  %94 = load i32, ptr @maptop, align 4, !tbaa !5
  %95 = tail call ptr @StringInt(i32 noundef %94) #12
  %96 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %95) #12
  %97 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %98 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %7, ptr noundef %97) #12
  %99 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 4
  store ptr %98, ptr %99, align 8, !tbaa !18
  %100 = getelementptr i8, ptr %71, i64 2433
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %100, i8 0, i64 1024, i1 false), !tbaa !14
  %101 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 0
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %101, align 1, !tbaa !14
  %102 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 16
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %102, align 1, !tbaa !14
  %103 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 32
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %103, align 1, !tbaa !14
  %104 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 48
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %104, align 1, !tbaa !14
  %105 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 64
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %105, align 1, !tbaa !14
  %106 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 80
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %106, align 1, !tbaa !14
  %107 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 96
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %107, align 1, !tbaa !14
  %108 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 112
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %108, align 1, !tbaa !14
  %109 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 128
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %109, align 1, !tbaa !14
  %110 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 144
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %110, align 1, !tbaa !14
  %111 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 160
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %111, align 1, !tbaa !14
  %112 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 176
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %112, align 1, !tbaa !14
  %113 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 192
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %113, align 1, !tbaa !14
  %114 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 208
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %114, align 1, !tbaa !14
  %115 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 224
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %115, align 1, !tbaa !14
  %116 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 2, i64 240
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %116, align 1, !tbaa !14
  %117 = load ptr, ptr @notdef_word, align 8, !tbaa !9
  %118 = insertelement <2 x ptr> poison, ptr %117, i64 0
  %119 = shufflevector <2 x ptr> %118, <2 x ptr> poison, <2 x i32> zeroinitializer
  %120 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 0
  %121 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 2
  store <2 x ptr> %119, ptr %120, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %121, align 8, !tbaa !9
  %122 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 4
  %123 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 6
  store <2 x ptr> %119, ptr %122, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %123, align 8, !tbaa !9
  %124 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 8
  %125 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 10
  store <2 x ptr> %119, ptr %124, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %125, align 8, !tbaa !9
  %126 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 12
  %127 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 14
  store <2 x ptr> %119, ptr %126, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %127, align 8, !tbaa !9
  %128 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 16
  %129 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 18
  store <2 x ptr> %119, ptr %128, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %129, align 8, !tbaa !9
  %130 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 20
  %131 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 22
  store <2 x ptr> %119, ptr %130, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %131, align 8, !tbaa !9
  %132 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 24
  %133 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 26
  store <2 x ptr> %119, ptr %132, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %133, align 8, !tbaa !9
  %134 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 28
  %135 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 30
  store <2 x ptr> %119, ptr %134, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %135, align 8, !tbaa !9
  %136 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 32
  %137 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 34
  store <2 x ptr> %119, ptr %136, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %137, align 8, !tbaa !9
  %138 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 36
  %139 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 38
  store <2 x ptr> %119, ptr %138, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %139, align 8, !tbaa !9
  %140 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 40
  %141 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 42
  store <2 x ptr> %119, ptr %140, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %141, align 8, !tbaa !9
  %142 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 44
  %143 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 46
  store <2 x ptr> %119, ptr %142, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %143, align 8, !tbaa !9
  %144 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 48
  %145 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 50
  store <2 x ptr> %119, ptr %144, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %145, align 8, !tbaa !9
  %146 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 52
  %147 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 54
  store <2 x ptr> %119, ptr %146, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %147, align 8, !tbaa !9
  %148 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 56
  %149 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 58
  store <2 x ptr> %119, ptr %148, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %149, align 8, !tbaa !9
  %150 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 60
  %151 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 62
  store <2 x ptr> %119, ptr %150, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %151, align 8, !tbaa !9
  %152 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 64
  %153 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 66
  store <2 x ptr> %119, ptr %152, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %153, align 8, !tbaa !9
  %154 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 68
  %155 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 70
  store <2 x ptr> %119, ptr %154, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %155, align 8, !tbaa !9
  %156 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 72
  %157 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 74
  store <2 x ptr> %119, ptr %156, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %157, align 8, !tbaa !9
  %158 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 76
  %159 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 78
  store <2 x ptr> %119, ptr %158, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %159, align 8, !tbaa !9
  %160 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 80
  %161 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 82
  store <2 x ptr> %119, ptr %160, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %161, align 8, !tbaa !9
  %162 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 84
  %163 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 86
  store <2 x ptr> %119, ptr %162, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %163, align 8, !tbaa !9
  %164 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 88
  %165 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 90
  store <2 x ptr> %119, ptr %164, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %165, align 8, !tbaa !9
  %166 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 92
  %167 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 94
  store <2 x ptr> %119, ptr %166, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %167, align 8, !tbaa !9
  %168 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 96
  %169 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 98
  store <2 x ptr> %119, ptr %168, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %169, align 8, !tbaa !9
  %170 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 100
  %171 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 102
  store <2 x ptr> %119, ptr %170, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %171, align 8, !tbaa !9
  %172 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 104
  %173 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 106
  store <2 x ptr> %119, ptr %172, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %173, align 8, !tbaa !9
  %174 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 108
  %175 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 110
  store <2 x ptr> %119, ptr %174, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %175, align 8, !tbaa !9
  %176 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 112
  %177 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 114
  store <2 x ptr> %119, ptr %176, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %177, align 8, !tbaa !9
  %178 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 116
  %179 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 118
  store <2 x ptr> %119, ptr %178, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %179, align 8, !tbaa !9
  %180 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 120
  %181 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 122
  store <2 x ptr> %119, ptr %180, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %181, align 8, !tbaa !9
  %182 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 124
  %183 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 126
  store <2 x ptr> %119, ptr %182, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %183, align 8, !tbaa !9
  %184 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 128
  %185 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 130
  store <2 x ptr> %119, ptr %184, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %185, align 8, !tbaa !9
  %186 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 132
  %187 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 134
  store <2 x ptr> %119, ptr %186, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %187, align 8, !tbaa !9
  %188 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 136
  %189 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 138
  store <2 x ptr> %119, ptr %188, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %189, align 8, !tbaa !9
  %190 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 140
  %191 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 142
  store <2 x ptr> %119, ptr %190, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %191, align 8, !tbaa !9
  %192 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 144
  %193 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 146
  store <2 x ptr> %119, ptr %192, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %193, align 8, !tbaa !9
  %194 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 148
  %195 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 150
  store <2 x ptr> %119, ptr %194, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %195, align 8, !tbaa !9
  %196 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 152
  %197 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 154
  store <2 x ptr> %119, ptr %196, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %197, align 8, !tbaa !9
  %198 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 156
  %199 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 158
  store <2 x ptr> %119, ptr %198, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %199, align 8, !tbaa !9
  %200 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 160
  %201 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 162
  store <2 x ptr> %119, ptr %200, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %201, align 8, !tbaa !9
  %202 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 164
  %203 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 166
  store <2 x ptr> %119, ptr %202, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %203, align 8, !tbaa !9
  %204 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 168
  %205 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 170
  store <2 x ptr> %119, ptr %204, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %205, align 8, !tbaa !9
  %206 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 172
  %207 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 174
  store <2 x ptr> %119, ptr %206, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %207, align 8, !tbaa !9
  %208 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 176
  %209 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 178
  store <2 x ptr> %119, ptr %208, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %209, align 8, !tbaa !9
  %210 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 180
  %211 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 182
  store <2 x ptr> %119, ptr %210, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %211, align 8, !tbaa !9
  %212 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 184
  %213 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 186
  store <2 x ptr> %119, ptr %212, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %213, align 8, !tbaa !9
  %214 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 188
  %215 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 190
  store <2 x ptr> %119, ptr %214, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %215, align 8, !tbaa !9
  %216 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 192
  %217 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 194
  store <2 x ptr> %119, ptr %216, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %217, align 8, !tbaa !9
  %218 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 196
  %219 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 198
  store <2 x ptr> %119, ptr %218, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %219, align 8, !tbaa !9
  %220 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 200
  %221 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 202
  store <2 x ptr> %119, ptr %220, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %221, align 8, !tbaa !9
  %222 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 204
  %223 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 206
  store <2 x ptr> %119, ptr %222, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %223, align 8, !tbaa !9
  %224 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 208
  %225 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 210
  store <2 x ptr> %119, ptr %224, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %225, align 8, !tbaa !9
  %226 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 212
  %227 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 214
  store <2 x ptr> %119, ptr %226, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %227, align 8, !tbaa !9
  %228 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 216
  %229 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 218
  store <2 x ptr> %119, ptr %228, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %229, align 8, !tbaa !9
  %230 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 220
  %231 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 222
  store <2 x ptr> %119, ptr %230, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %231, align 8, !tbaa !9
  %232 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 224
  %233 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 226
  store <2 x ptr> %119, ptr %232, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %233, align 8, !tbaa !9
  %234 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 228
  %235 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 230
  store <2 x ptr> %119, ptr %234, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %235, align 8, !tbaa !9
  %236 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 232
  %237 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 234
  store <2 x ptr> %119, ptr %236, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %237, align 8, !tbaa !9
  %238 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 236
  %239 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 238
  store <2 x ptr> %119, ptr %238, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %239, align 8, !tbaa !9
  %240 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 240
  %241 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 242
  store <2 x ptr> %119, ptr %240, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %241, align 8, !tbaa !9
  %242 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 244
  %243 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 246
  store <2 x ptr> %119, ptr %242, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %243, align 8, !tbaa !9
  %244 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 248
  %245 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 250
  store <2 x ptr> %119, ptr %244, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %245, align 8, !tbaa !9
  %246 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 252
  %247 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 254
  store <2 x ptr> %119, ptr %246, align 8, !tbaa !9
  store <2 x ptr> %119, ptr %247, align 8, !tbaa !9
  %248 = getelementptr i8, ptr %71, i64 2080
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(353) %248, i8 0, i64 353, i1 false), !tbaa !14
  store i32 353, ptr %3, align 4, !tbaa !5
  %249 = call ptr @fgets(ptr noundef nonnull %7, i32 noundef 512, ptr noundef %83)
  %250 = icmp eq ptr %249, %7
  br i1 %250, label %385, label %388

251:                                              ; preds = %385, %260
  %252 = phi i32 [ %387, %385 ], [ %253, %260 ]
  %253 = add nsw i32 %252, 1
  br label %254

254:                                              ; preds = %258, %251
  %255 = phi i64 [ %259, %258 ], [ 0, %251 ]
  %256 = getelementptr inbounds [512 x i8], ptr %7, i64 0, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !14
  switch i8 %257, label %264 [
    i8 32, label %258
    i8 9, label %258
    i8 35, label %260
    i8 10, label %260
    i8 0, label %260
  ]

258:                                              ; preds = %254, %254
  %259 = add nuw i64 %255, 1
  br label %254

260:                                              ; preds = %254, %254, %254
  %261 = trunc i64 %255 to i32
  store i32 %261, ptr %3, align 4, !tbaa !5
  %262 = call ptr @fgets(ptr noundef nonnull %7, i32 noundef 512, ptr noundef %83)
  %263 = icmp eq ptr %262, %7
  br i1 %263, label %251, label %388

264:                                              ; preds = %254
  %265 = trunc i64 %255 to i32
  store i32 %265, ptr %3, align 4, !tbaa !5
  %266 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %7, ptr noundef nonnull @.str.7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8) #12
  %267 = icmp slt i32 %266, 2
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  %269 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef nonnull %80) #12
  br label %270

270:                                              ; preds = %268, %264
  %271 = load i32, ptr %5, align 4, !tbaa !5
  %272 = load i32, ptr %6, align 4, !tbaa !5
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %277, label %274

274:                                              ; preds = %270
  %275 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %80) #12
  %276 = load i32, ptr %5, align 4, !tbaa !5
  br label %277

277:                                              ; preds = %274, %270
  %278 = phi i32 [ %276, %274 ], [ %271, %270 ]
  %279 = icmp slt i32 %278, 1
  br i1 %279, label %280, label %286

280:                                              ; preds = %277
  %281 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %8, ptr noundef nonnull dereferenceable(7) @.str.10, i64 7)
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %280
  %284 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 6, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull %80, i32 noundef %278, i32 noundef %253) #12
  %285 = load i32, ptr %5, align 4, !tbaa !5
  br label %286

286:                                              ; preds = %283, %280, %277
  %287 = phi i32 [ %285, %283 ], [ %278, %280 ], [ %278, %277 ]
  %288 = icmp slt i32 %287, %386
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 7, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef nonnull %80, i32 noundef %287, i32 noundef %253) #12
  %291 = load i32, ptr %5, align 4, !tbaa !5
  br label %292

292:                                              ; preds = %289, %286
  %293 = phi i32 [ %291, %289 ], [ %287, %286 ]
  %294 = icmp eq i32 %293, %386
  br i1 %294, label %295, label %298

295:                                              ; preds = %292
  %296 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef nonnull %80, i32 noundef %386, i32 noundef %253) #12
  %297 = load i32, ptr %5, align 4, !tbaa !5
  br label %298

298:                                              ; preds = %295, %292
  %299 = phi i32 [ %297, %295 ], [ %293, %292 ]
  %300 = icmp sgt i32 %299, 256
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef nonnull %80, i32 noundef %299, i32 noundef 256, i32 noundef %253) #12
  %303 = load i32, ptr %5, align 4, !tbaa !5
  br label %304

304:                                              ; preds = %301, %298
  %305 = phi i32 [ %303, %301 ], [ %299, %298 ]
  %306 = icmp sgt i32 %266, 2
  br i1 %306, label %307, label %382

307:                                              ; preds = %304
  %308 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %8, ptr noundef nonnull dereferenceable(7) @.str.10, i64 7)
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %382, label %310

310:                                              ; preds = %307
  %311 = load i8, ptr %8, align 16, !tbaa !14
  %312 = zext i8 %311 to i32
  %313 = shl nuw nsw i32 %312, 1
  br label %314

314:                                              ; preds = %314, %310
  %315 = phi i32 [ %313, %310 ], [ %322, %314 ]
  %316 = phi ptr [ %8, %310 ], [ %318, %314 ]
  %317 = freeze i32 %315
  %318 = getelementptr inbounds i8, ptr %316, i64 1
  %319 = load i8, ptr %318, align 1, !tbaa !14
  %320 = icmp eq i8 %319, 0
  %321 = zext i8 %319 to i32
  %322 = add nuw nsw i32 %317, %321
  br i1 %320, label %323, label %314

323:                                              ; preds = %314
  %324 = urem i32 %317, 353
  %325 = zext nneg i32 %324 to i64
  %326 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 6, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !14
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %339, %323
  br label %350

330:                                              ; preds = %323, %339
  %331 = phi i8 [ %345, %339 ], [ %327, %323 ]
  %332 = phi i32 [ %342, %339 ], [ %324, %323 ]
  %333 = zext i8 %331 to i64
  %334 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 %333
  %335 = load ptr, ptr %334, align 8, !tbaa !9
  %336 = getelementptr inbounds %struct.word_type, ptr %335, i64 0, i32 4
  %337 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %336, ptr noundef nonnull dereferenceable(1) %8) #13
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %347, label %339

339:                                              ; preds = %330
  %340 = add i32 %332, 1
  %341 = icmp eq i32 %340, 353
  %342 = select i1 %341, i32 0, i32 %340
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 6, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !14
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %329, label %330

347:                                              ; preds = %330
  %348 = sext i32 %305 to i64
  %349 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 %348
  store ptr %335, ptr %349, align 8, !tbaa !9
  br label %382

350:                                              ; preds = %329, %350
  %351 = phi i32 [ %358, %350 ], [ %313, %329 ]
  %352 = phi ptr [ %354, %350 ], [ %8, %329 ]
  %353 = freeze i32 %351
  %354 = getelementptr inbounds i8, ptr %352, i64 1
  %355 = load i8, ptr %354, align 1, !tbaa !14
  %356 = icmp eq i8 %355, 0
  %357 = zext i8 %355 to i32
  %358 = add nuw nsw i32 %353, %357
  br i1 %356, label %359, label %350

359:                                              ; preds = %350
  %360 = urem i32 %353, 353
  %361 = zext nneg i32 %360 to i64
  %362 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 6, i64 %361
  %363 = load i8, ptr %362, align 1, !tbaa !14
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %374, label %365

365:                                              ; preds = %359, %365
  %366 = phi i32 [ %369, %365 ], [ %360, %359 ]
  %367 = add i32 %366, 1
  %368 = icmp eq i32 %367, 353
  %369 = select i1 %368, i32 0, i32 %367
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 6, i64 %370
  %372 = load i8, ptr %371, align 1, !tbaa !14
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %374, label %365

374:                                              ; preds = %365, %359
  %375 = phi i64 [ %361, %359 ], [ %370, %365 ]
  %376 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 6, i64 %375
  %377 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %378 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %8, ptr noundef %377) #12
  %379 = sext i32 %305 to i64
  %380 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 %379
  store ptr %378, ptr %380, align 8, !tbaa !9
  %381 = trunc i32 %305 to i8
  store i8 %381, ptr %376, align 1, !tbaa !14
  br label %382

382:                                              ; preds = %347, %374, %307, %304
  %383 = call ptr @fgets(ptr noundef nonnull %7, i32 noundef 512, ptr noundef %83)
  %384 = icmp eq ptr %383, %7
  br i1 %384, label %385, label %388

385:                                              ; preds = %91, %382
  %386 = phi i32 [ %305, %382 ], [ -1, %91 ]
  %387 = phi i32 [ %253, %382 ], [ 0, %91 ]
  br label %251

388:                                              ; preds = %382, %260, %91
  call void @rewind(ptr noundef %83)
  %389 = call ptr @fgets(ptr noundef nonnull %7, i32 noundef 512, ptr noundef %83)
  %390 = icmp eq ptr %389, %7
  br i1 %390, label %395, label %491

391:                                              ; preds = %480, %411
  %392 = phi i32 [ %397, %411 ], [ %440, %480 ]
  %393 = call ptr @fgets(ptr noundef nonnull %7, i32 noundef 512, ptr noundef %83)
  %394 = icmp eq ptr %393, %7
  br i1 %394, label %395, label %491

395:                                              ; preds = %388, %391
  %396 = phi i32 [ %400, %391 ], [ 0, %388 ]
  %397 = phi i32 [ %392, %391 ], [ 4, %388 ]
  br label %398

398:                                              ; preds = %395, %407
  %399 = phi i32 [ %396, %395 ], [ %400, %407 ]
  %400 = add nsw i32 %399, 1
  br label %401

401:                                              ; preds = %405, %398
  %402 = phi i64 [ %406, %405 ], [ 0, %398 ]
  %403 = getelementptr inbounds [512 x i8], ptr %7, i64 0, i64 %402
  %404 = load i8, ptr %403, align 1, !tbaa !14
  switch i8 %404, label %411 [
    i8 32, label %405
    i8 9, label %405
    i8 35, label %407
    i8 10, label %407
    i8 0, label %407
  ]

405:                                              ; preds = %401, %401
  %406 = add nuw i64 %402, 1
  br label %401

407:                                              ; preds = %401, %401, %401
  %408 = trunc i64 %402 to i32
  store i32 %408, ptr %3, align 4, !tbaa !5
  %409 = call ptr @fgets(ptr noundef nonnull %7, i32 noundef 512, ptr noundef %83)
  %410 = icmp eq ptr %409, %7
  br i1 %410, label %398, label %491

411:                                              ; preds = %401
  %412 = trunc i64 %402 to i32
  store i32 %412, ptr %3, align 4, !tbaa !5
  %413 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %7, ptr noundef nonnull @.str.15, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %4) #12
  %414 = load i32, ptr %4, align 4, !tbaa !5
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [512 x i8], ptr %7, i64 0, i64 %415
  %417 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %416, ptr noundef nonnull @.str.16, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %3) #12
  %418 = icmp eq i32 %417, 2
  br i1 %418, label %419, label %391

419:                                              ; preds = %411, %480
  %420 = phi i32 [ %440, %480 ], [ %397, %411 ]
  %421 = load i32, ptr %3, align 4, !tbaa !5
  %422 = load i32, ptr %4, align 4, !tbaa !5
  %423 = add nsw i32 %422, %421
  store i32 %423, ptr %4, align 4, !tbaa !5
  %424 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %9, ptr noundef nonnull dereferenceable(3) @.str.17, i64 3)
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %439, label %426

426:                                              ; preds = %419
  %427 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %9, ptr noundef nonnull dereferenceable(3) @.str.18, i64 3)
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %439, label %429

429:                                              ; preds = %426
  %430 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %9, ptr noundef nonnull dereferenceable(3) @.str.19, i64 3)
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %439, label %432

432:                                              ; preds = %429
  %433 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %9, ptr noundef nonnull dereferenceable(3) @.str.20, i64 3)
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %439, label %435

435:                                              ; preds = %432
  %436 = load i16, ptr %82, align 8, !tbaa !16
  %437 = call ptr @FileName(i16 noundef zeroext %436) #12
  %438 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 10, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef nonnull %80, ptr noundef nonnull %9, ptr noundef %437, i32 noundef %400) #12
  br label %439

439:                                              ; preds = %432, %429, %426, %419, %435
  %440 = phi i32 [ %420, %435 ], [ 0, %419 ], [ 1, %426 ], [ 2, %429 ], [ 3, %432 ]
  %441 = load i8, ptr %10, align 16, !tbaa !14
  %442 = zext i8 %441 to i32
  %443 = shl nuw nsw i32 %442, 1
  br label %444

444:                                              ; preds = %444, %439
  %445 = phi i32 [ %443, %439 ], [ %452, %444 ]
  %446 = phi ptr [ %10, %439 ], [ %448, %444 ]
  %447 = freeze i32 %445
  %448 = getelementptr inbounds i8, ptr %446, i64 1
  %449 = load i8, ptr %448, align 1, !tbaa !14
  %450 = icmp eq i8 %449, 0
  %451 = zext i8 %449 to i32
  %452 = add nuw nsw i32 %447, %451
  br i1 %450, label %453, label %444

453:                                              ; preds = %444
  %454 = urem i32 %447, 353
  %455 = zext nneg i32 %454 to i64
  %456 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 6, i64 %455
  %457 = load i8, ptr %456, align 1, !tbaa !14
  %458 = icmp eq i8 %457, 0
  br i1 %458, label %476, label %459

459:                                              ; preds = %453, %468
  %460 = phi i8 [ %474, %468 ], [ %457, %453 ]
  %461 = phi i32 [ %471, %468 ], [ %454, %453 ]
  %462 = zext i8 %460 to i64
  %463 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 5, i64 %462
  %464 = load ptr, ptr %463, align 8, !tbaa !9
  %465 = getelementptr inbounds %struct.word_type, ptr %464, i64 0, i32 4
  %466 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %465, ptr noundef nonnull dereferenceable(1) %10) #13
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %480, label %468

468:                                              ; preds = %459
  %469 = add i32 %461, 1
  %470 = icmp eq i32 %469, 353
  %471 = select i1 %470, i32 0, i32 %469
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 6, i64 %472
  %474 = load i8, ptr %473, align 1, !tbaa !14
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %476, label %459

476:                                              ; preds = %468, %453
  %477 = load i16, ptr %82, align 8, !tbaa !16
  %478 = call ptr @FileName(i16 noundef zeroext %477) #12
  %479 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 11, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef nonnull %80, ptr noundef nonnull %10, ptr noundef %478, i32 noundef %400) #12
  br label %480

480:                                              ; preds = %459, %476
  %481 = phi i8 [ 0, %476 ], [ %460, %459 ]
  %482 = zext nneg i32 %440 to i64
  %483 = load i32, ptr %5, align 4, !tbaa !5
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.mapvec, ptr %71, i64 0, i32 7, i64 %482, i64 %484
  store i8 %481, ptr %485, align 1, !tbaa !14
  %486 = load i32, ptr %4, align 4, !tbaa !5
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [512 x i8], ptr %7, i64 0, i64 %487
  %489 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %488, ptr noundef nonnull @.str.16, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %3) #12
  %490 = icmp eq i32 %489, 2
  br i1 %490, label %419, label %391

491:                                              ; preds = %391, %407, %388
  %492 = call i32 @fclose(ptr noundef %83)
  br label %493

493:                                              ; preds = %2, %491, %27
  %494 = phi i32 [ %28, %27 ], [ %70, %491 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %494
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare zeroext i16 @DefineFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @OpenFile(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @PosOfFile(i16 noundef zeroext) local_unnamed_addr #3

declare ptr @FileName(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

declare ptr @StringInt(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @MapCharEncoding(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [20 x ptr], ptr @MapTable, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = load i8, ptr %0, align 1, !tbaa !14
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 1
  br label %9

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %8, %2 ], [ %17, %9 ]
  %11 = phi ptr [ %0, %2 ], [ %13, %9 ]
  %12 = freeze i32 %10
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !14
  %15 = icmp eq i8 %14, 0
  %16 = zext i8 %14 to i32
  %17 = add nuw nsw i32 %12, %16
  br i1 %15, label %18, label %9

18:                                               ; preds = %9
  %19 = urem i32 %12, 353
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.mapvec, ptr %5, i64 0, i32 6, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !14
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %18, %33
  %25 = phi i8 [ %39, %33 ], [ %22, %18 ]
  %26 = phi i32 [ %36, %33 ], [ %19, %18 ]
  %27 = zext i8 %25 to i64
  %28 = getelementptr inbounds %struct.mapvec, ptr %5, i64 0, i32 5, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = getelementptr inbounds %struct.word_type, ptr %29, i64 0, i32 4
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %0) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = add i32 %26, 1
  %35 = icmp eq i32 %34, 353
  %36 = select i1 %35, i32 0, i32 %34
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mapvec, ptr %5, i64 0, i32 6, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !14
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %24

41:                                               ; preds = %24, %33, %18
  %42 = phi i8 [ 0, %18 ], [ %25, %24 ], [ 0, %33 ]
  ret i8 %42
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @MapEncodingName(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @maptop, align 4, !tbaa !5
  %3 = icmp ugt i32 %2, %0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %6 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef %5, ptr noundef nonnull @.str.24) #12
  br label %7

7:                                                ; preds = %4, %1
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [20 x ptr], ptr @MapTable, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.mapvec, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.word_type, ptr %12, i64 0, i32 4
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local void @MapEnsurePrinted(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [20 x ptr], ptr @MapTable, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.mapvec, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef %10, ptr noundef nonnull @.str.25) #12
  br label %12

12:                                               ; preds = %9, %2
  %13 = getelementptr inbounds %struct.mapvec, ptr %5, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = icmp sge i32 %14, %1
  %16 = icmp eq i32 %14, 1
  %17 = or i1 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  store i32 %1, ptr %13, align 8, !tbaa !17
  %19 = load ptr, ptr @BackEnd, align 8, !tbaa !9
  %20 = getelementptr inbounds %struct.back_end_rec, ptr %19, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !19
  tail call void %21(i32 noundef %0) #12
  br label %22

22:                                               ; preds = %18, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MapPrintEncodings() local_unnamed_addr #0 {
  %1 = load i32, ptr @maptop, align 4, !tbaa !5
  %2 = icmp ugt i32 %1, 1
  br i1 %2, label %3, label %24

3:                                                ; preds = %0, %19
  %4 = phi i32 [ %20, %19 ], [ %1, %0 ]
  %5 = phi i64 [ %21, %19 ], [ 1, %0 ]
  %6 = getelementptr inbounds [20 x ptr], ptr @MapTable, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.mapvec, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @BackEnd, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.back_end_rec, ptr %12, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = trunc i64 %5 to i32
  tail call void %14(i32 noundef %15) #12
  %16 = load ptr, ptr %6, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.mapvec, ptr %16, i64 0, i32 3
  store i32 1, ptr %17, align 8, !tbaa !17
  %18 = load i32, ptr @maptop, align 4, !tbaa !5
  br label %19

19:                                               ; preds = %3, %11
  %20 = phi i32 [ %4, %3 ], [ %18, %11 ]
  %21 = add nuw nsw i64 %5, 1
  %22 = zext i32 %20 to i64
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %3, label %24

24:                                               ; preds = %19, %0
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @MapPrintPSResources(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = load i32, ptr @maptop, align 4, !tbaa !5
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %4, label %23

4:                                                ; preds = %1, %18
  %5 = phi i32 [ %19, %18 ], [ %2, %1 ]
  %6 = phi i64 [ %20, %18 ], [ 1, %1 ]
  %7 = getelementptr inbounds [20 x ptr], ptr @MapTable, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.mapvec, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.mapvec, ptr %8, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 4
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %15)
  %17 = load i32, ptr @maptop, align 4, !tbaa !5
  br label %18

18:                                               ; preds = %4, %12
  %19 = phi i32 [ %5, %4 ], [ %17, %12 ]
  %20 = add nuw nsw i64 %6, 1
  %21 = zext i32 %19 to i64
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %4, label %23

23:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @MapSmallCaps(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca %struct.STYLE, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !14
  %7 = add i8 %6, -11
  %8 = icmp ult i8 %7, 2
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef %10, ptr noundef nonnull @.str.27) #12
  br label %12

12:                                               ; preds = %2, %9
  %13 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 4095
  %16 = zext nneg i16 %15 to i32
  %17 = tail call i32 @FontMapping(i32 noundef %16, ptr noundef nonnull %5) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %871, label %19

19:                                               ; preds = %12
  %20 = load i32, ptr @maptop, align 4, !tbaa !5
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %24 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef %23, ptr noundef nonnull @.str.28) #12
  br label %25

25:                                               ; preds = %22, %19
  %26 = zext i32 %17 to i64
  %27 = getelementptr inbounds [20 x ptr], ptr @MapTable, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds %struct.mapvec, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr @BackEnd, align 8, !tbaa !9
  %31 = getelementptr inbounds %struct.back_end_rec, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 0
  %36 = load i8, ptr %35, align 1, !tbaa !14
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %871, label %38

38:                                               ; preds = %34, %47
  %39 = phi i64 [ %48, %47 ], [ 0, %34 ]
  %40 = phi i8 [ %50, %47 ], [ %36, %34 ]
  %41 = phi ptr [ %49, %47 ], [ %35, %34 ]
  %42 = zext i8 %40 to i64
  %43 = getelementptr inbounds i8, ptr %29, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !14
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  store i8 %44, ptr %41, align 1, !tbaa !14
  br label %47

47:                                               ; preds = %38, %46
  %48 = add nuw nsw i64 %39, 1
  %49 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !14
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %871, label %38

52:                                               ; preds = %25
  %53 = load ptr, ptr @MapSmallCaps.font_change_word, align 8, !tbaa !9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %57 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.29, ptr noundef %56) #12
  store ptr %57, ptr @MapSmallCaps.font_change_word, align 8, !tbaa !9
  br label %58

58:                                               ; preds = %55, %52
  %59 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %60 = load i8, ptr %59, align 1, !tbaa !14
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %871, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %3, i64 1
  %64 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %65 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %66 = getelementptr inbounds %struct.GAP, ptr %1, i64 0, i32 1
  %67 = getelementptr inbounds %struct.GAP, ptr %4, i64 0, i32 1
  %68 = getelementptr inbounds %struct.STYLE, ptr %1, i64 0, i32 1
  %69 = getelementptr inbounds %struct.STYLE, ptr %4, i64 0, i32 1
  %70 = getelementptr inbounds %struct.STYLE, ptr %1, i64 0, i32 1, i32 0, i32 1
  %71 = getelementptr inbounds %struct.STYLE, ptr %4, i64 0, i32 1, i32 0, i32 1
  %72 = getelementptr inbounds %struct.STYLE, ptr %1, i64 0, i32 4
  %73 = getelementptr inbounds %struct.STYLE, ptr %4, i64 0, i32 4
  %74 = getelementptr inbounds %struct.STYLE, ptr %1, i64 0, i32 2
  %75 = getelementptr inbounds %struct.STYLE, ptr %4, i64 0, i32 2
  br label %76

76:                                               ; preds = %62, %624
  %77 = phi i8 [ %60, %62 ], [ %632, %624 ]
  %78 = phi i32 [ 0, %62 ], [ %630, %624 ]
  %79 = phi i32 [ undef, %62 ], [ %629, %624 ]
  %80 = phi i32 [ undef, %62 ], [ %628, %624 ]
  %81 = phi ptr [ %3, %62 ], [ %627, %624 ]
  %82 = phi ptr [ %59, %62 ], [ %631, %624 ]
  %83 = phi ptr [ undef, %62 ], [ %626, %624 ]
  %84 = phi ptr [ undef, %62 ], [ %625, %624 ]
  %85 = zext i8 %77 to i64
  %86 = getelementptr inbounds i8, ptr %29, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !14
  %88 = icmp eq i8 %87, 0
  switch i32 %78, label %623 [
    i32 0, label %89
    i32 1, label %124
    i32 2, label %316
    i32 3, label %476
    i32 4, label %550
  ]

89:                                               ; preds = %76
  %90 = getelementptr inbounds i8, ptr %81, i64 1
  br i1 %88, label %123, label %91

91:                                               ; preds = %89
  store i8 %87, ptr %81, align 1, !tbaa !14
  %92 = load i16, ptr %1, align 4
  %93 = load i16, ptr %4, align 4
  %94 = and i16 %93, 127
  %95 = and i16 %92, -128
  %96 = or disjoint i16 %94, %95
  store i16 %96, ptr %4, align 4
  %97 = load i16, ptr %66, align 2, !tbaa !14
  store i16 %97, ptr %67, align 2, !tbaa !14
  %98 = load i8, ptr %68, align 4
  %99 = load i8, ptr %69, align 4
  %100 = and i8 %99, -128
  %101 = and i8 %98, 127
  %102 = or disjoint i8 %100, %101
  store i8 %102, ptr %69, align 4
  %103 = trunc i16 %92 to i8
  %104 = trunc i16 %95 to i8
  %105 = load i16, ptr %68, align 4
  %106 = load i16, ptr %69, align 4
  %107 = and i16 %106, 127
  %108 = and i16 %105, -128
  %109 = or disjoint i16 %107, %108
  store i16 %109, ptr %69, align 4
  %110 = load i16, ptr %70, align 2, !tbaa !14
  store i16 %110, ptr %71, align 2, !tbaa !14
  %111 = load i32, ptr %72, align 4
  store i32 %111, ptr %73, align 4
  %112 = and i8 %103, 127
  %113 = or disjoint i8 %112, %104
  store i8 %113, ptr %4, align 4
  %114 = load <2 x i16>, ptr %74, align 4, !tbaa !22
  store <2 x i16> %114, ptr %75, align 4, !tbaa !22
  %115 = load ptr, ptr @MapSmallCaps.font_change_word, align 8, !tbaa !9
  call void @FontChange(ptr noundef nonnull %4, ptr noundef %115) #12
  %116 = load i32, ptr %73, align 4
  %117 = and i32 %116, 4095
  %118 = load i32, ptr %13, align 8
  %119 = and i32 %118, 4095
  %120 = call i32 @FontHalfXHeight(i32 noundef %119) #12
  %121 = call i32 @FontHalfXHeight(i32 noundef %117) #12
  %122 = sub nsw i32 %120, %121
  br label %624

123:                                              ; preds = %89
  store i8 %77, ptr %81, align 1, !tbaa !14
  br label %624

124:                                              ; preds = %76
  br i1 %88, label %314, label %125

125:                                              ; preds = %124
  %126 = load i16, ptr %1, align 4
  %127 = load i16, ptr %4, align 4
  %128 = and i16 %127, 127
  %129 = and i16 %126, -128
  %130 = or disjoint i16 %128, %129
  store i16 %130, ptr %4, align 4
  %131 = load i16, ptr %66, align 2, !tbaa !14
  store i16 %131, ptr %67, align 2, !tbaa !14
  %132 = load i8, ptr %68, align 4
  %133 = load i8, ptr %69, align 4
  %134 = and i8 %133, -128
  %135 = and i8 %132, 127
  %136 = or disjoint i8 %134, %135
  store i8 %136, ptr %69, align 4
  %137 = trunc i16 %126 to i8
  %138 = trunc i16 %129 to i8
  %139 = load i16, ptr %68, align 4
  %140 = load i16, ptr %69, align 4
  %141 = and i16 %140, 127
  %142 = and i16 %139, -128
  %143 = or disjoint i16 %141, %142
  store i16 %143, ptr %69, align 4
  %144 = load i16, ptr %70, align 2, !tbaa !14
  store i16 %144, ptr %71, align 2, !tbaa !14
  %145 = load i32, ptr %72, align 4
  store i32 %145, ptr %73, align 4
  %146 = and i8 %137, 127
  %147 = or disjoint i8 %146, %138
  store i8 %147, ptr %4, align 4
  %148 = load <2 x i16>, ptr %74, align 4, !tbaa !22
  store <2 x i16> %148, ptr %75, align 4, !tbaa !22
  %149 = load ptr, ptr @MapSmallCaps.font_change_word, align 8, !tbaa !9
  call void @FontChange(ptr noundef nonnull %4, ptr noundef %149) #12
  %150 = load i32, ptr %73, align 4
  %151 = and i32 %150, 4095
  %152 = load i32, ptr %13, align 8
  %153 = and i32 %152, 4095
  %154 = call i32 @FontHalfXHeight(i32 noundef %153) #12
  %155 = call i32 @FontHalfXHeight(i32 noundef %151) #12
  %156 = sub nsw i32 %154, %155
  %157 = load i32, ptr %13, align 8
  %158 = and i32 %157, 4095
  store i8 0, ptr %81, align 1, !tbaa !14
  %159 = load i8, ptr %5, align 8, !tbaa !14
  %160 = zext i8 %159 to i32
  %161 = call ptr @MakeWord(i32 noundef %160, ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %162 = getelementptr inbounds %struct.word_type, ptr %161, i64 0, i32 2
  %163 = load i32, ptr %162, align 8
  %164 = and i32 %163, -4096
  %165 = or disjoint i32 %164, %158
  store i32 %165, ptr %162, align 8
  %166 = load i32, ptr %13, align 8
  %167 = and i32 %166, 4190208
  %168 = and i32 %165, -4190209
  %169 = or disjoint i32 %168, %167
  store i32 %169, ptr %162, align 8
  %170 = load i32, ptr %13, align 8
  %171 = and i32 %170, 4194304
  %172 = and i32 %169, -4194305
  %173 = or disjoint i32 %172, %171
  store i32 %173, ptr %162, align 8
  %174 = load i32, ptr %13, align 8
  %175 = and i32 %174, 528482304
  %176 = and i32 %173, -528482305
  %177 = or disjoint i32 %176, %175
  store i32 %177, ptr %162, align 8
  %178 = load i32, ptr %13, align 8
  %179 = and i32 %178, -2147483648
  %180 = and i32 %177, 536870911
  %181 = or disjoint i32 %180, %179
  %182 = or disjoint i32 %181, 536870912
  store i32 %182, ptr %162, align 8
  %183 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 24), align 1, !tbaa !14
  %184 = zext i8 %183 to i32
  store i32 %184, ptr @zz_size, align 4, !tbaa !5
  %185 = zext i8 %183 to i64
  %186 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !9
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %125
  %190 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %191 = call ptr @GetMemory(i32 noundef %184, ptr noundef %190) #12
  store ptr %191, ptr @zz_hold, align 8, !tbaa !9
  br label %194

192:                                              ; preds = %125
  store ptr %187, ptr @zz_hold, align 8, !tbaa !9
  %193 = load ptr, ptr %187, align 8, !tbaa !14
  store ptr %193, ptr %186, align 8, !tbaa !9
  br label %194

194:                                              ; preds = %189, %192
  %195 = phi ptr [ %191, %189 ], [ %187, %192 ]
  %196 = getelementptr inbounds %struct.word_type, ptr %195, i64 0, i32 1
  store i8 24, ptr %196, align 8, !tbaa !14
  %197 = getelementptr inbounds [2 x %struct.LIST], ptr %195, i64 0, i64 1, i32 1
  store ptr %195, ptr %197, align 8, !tbaa !14
  %198 = getelementptr inbounds [2 x %struct.LIST], ptr %195, i64 0, i64 1
  store ptr %195, ptr %198, align 8, !tbaa !14
  %199 = getelementptr inbounds %struct.LIST, ptr %195, i64 0, i32 1
  store ptr %195, ptr %199, align 8, !tbaa !14
  store ptr %195, ptr %195, align 8, !tbaa !14
  %200 = load i16, ptr %64, align 2, !tbaa !14
  %201 = getelementptr inbounds %struct.word_type, ptr %195, i64 0, i32 1, i32 0, i32 2
  store i16 %200, ptr %201, align 2, !tbaa !14
  %202 = load i32, ptr %65, align 4
  %203 = and i32 %202, 1048575
  %204 = getelementptr inbounds %struct.word_type, ptr %195, i64 0, i32 1, i32 0, i32 3
  %205 = load i32, ptr %204, align 4
  %206 = and i32 %205, -1048576
  %207 = or disjoint i32 %206, %203
  store i32 %207, ptr %204, align 4
  %208 = load i32, ptr %65, align 4
  %209 = and i32 %208, -1048576
  %210 = or disjoint i32 %209, %203
  store i32 %210, ptr %204, align 4
  %211 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !14
  %212 = zext i8 %211 to i32
  store i32 %212, ptr @zz_size, align 4, !tbaa !5
  %213 = zext i8 %211 to i64
  %214 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %213
  %215 = load ptr, ptr %214, align 8, !tbaa !9
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %194
  %218 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %219 = call ptr @GetMemory(i32 noundef %212, ptr noundef %218) #12
  store ptr %219, ptr @zz_hold, align 8, !tbaa !9
  br label %222

220:                                              ; preds = %194
  store ptr %215, ptr @zz_hold, align 8, !tbaa !9
  %221 = load ptr, ptr %215, align 8, !tbaa !14
  store ptr %221, ptr %214, align 8, !tbaa !9
  br label %222

222:                                              ; preds = %217, %220
  %223 = phi ptr [ %219, %217 ], [ %215, %220 ]
  %224 = getelementptr inbounds %struct.word_type, ptr %223, i64 0, i32 1
  store i8 17, ptr %224, align 8, !tbaa !14
  %225 = getelementptr inbounds [2 x %struct.LIST], ptr %223, i64 0, i64 1
  %226 = getelementptr inbounds [2 x %struct.LIST], ptr %223, i64 0, i64 1, i32 1
  store ptr %223, ptr %226, align 8, !tbaa !14
  store ptr %223, ptr %225, align 8, !tbaa !14
  %227 = getelementptr inbounds %struct.LIST, ptr %223, i64 0, i32 1
  store ptr %223, ptr %227, align 8, !tbaa !14
  store ptr %223, ptr %223, align 8, !tbaa !14
  %228 = load i16, ptr %64, align 2, !tbaa !14
  %229 = getelementptr inbounds %struct.word_type, ptr %223, i64 0, i32 1, i32 0, i32 2
  store i16 %228, ptr %229, align 2, !tbaa !14
  %230 = load i32, ptr %65, align 4
  %231 = and i32 %230, 1048575
  %232 = getelementptr inbounds %struct.word_type, ptr %223, i64 0, i32 1, i32 0, i32 3
  %233 = load i32, ptr %232, align 4
  %234 = and i32 %233, -1048576
  %235 = or disjoint i32 %234, %231
  store i32 %235, ptr %232, align 4
  %236 = load i32, ptr %65, align 4
  %237 = and i32 %236, -1048576
  %238 = or disjoint i32 %237, %231
  store i32 %238, ptr %232, align 4
  %239 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %240 = zext i8 %239 to i32
  store i32 %240, ptr @zz_size, align 4, !tbaa !5
  %241 = zext i8 %239 to i64
  %242 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !9
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %222
  %246 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %247 = call ptr @GetMemory(i32 noundef %240, ptr noundef %246) #12
  br label %250

248:                                              ; preds = %222
  store ptr %243, ptr @zz_hold, align 8, !tbaa !9
  %249 = load ptr, ptr %243, align 8, !tbaa !14
  store ptr %249, ptr %242, align 8, !tbaa !9
  br label %250

250:                                              ; preds = %245, %248
  %251 = phi ptr [ %247, %245 ], [ %243, %248 ]
  %252 = getelementptr inbounds %struct.word_type, ptr %251, i64 0, i32 1
  store i8 0, ptr %252, align 8, !tbaa !14
  %253 = getelementptr inbounds [2 x %struct.LIST], ptr %251, i64 0, i64 1, i32 1
  store ptr %251, ptr %253, align 8, !tbaa !14
  %254 = getelementptr inbounds [2 x %struct.LIST], ptr %251, i64 0, i64 1
  store ptr %251, ptr %254, align 8, !tbaa !14
  %255 = getelementptr inbounds %struct.LIST, ptr %251, i64 0, i32 1
  store ptr %251, ptr %255, align 8, !tbaa !14
  store ptr %251, ptr %251, align 8, !tbaa !14
  store ptr %251, ptr @xx_link, align 8, !tbaa !9
  store ptr %251, ptr @zz_res, align 8, !tbaa !9
  store ptr %195, ptr @zz_hold, align 8, !tbaa !9
  %256 = load ptr, ptr %195, align 8, !tbaa !14
  store ptr %256, ptr @zz_tmp, align 8, !tbaa !9
  %257 = load ptr, ptr %251, align 8, !tbaa !14
  store ptr %257, ptr %195, align 8, !tbaa !14
  %258 = load ptr, ptr @zz_hold, align 8, !tbaa !9
  %259 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %260 = load ptr, ptr %259, align 8, !tbaa !14
  %261 = getelementptr inbounds %struct.LIST, ptr %260, i64 0, i32 1
  store ptr %258, ptr %261, align 8, !tbaa !14
  %262 = load ptr, ptr @zz_tmp, align 8, !tbaa !9
  store ptr %262, ptr %259, align 8, !tbaa !14
  %263 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %264 = getelementptr inbounds %struct.LIST, ptr %262, i64 0, i32 1
  store ptr %263, ptr %264, align 8, !tbaa !14
  %265 = load ptr, ptr @xx_link, align 8, !tbaa !9
  store ptr %265, ptr @zz_res, align 8, !tbaa !9
  store ptr %223, ptr @zz_hold, align 8, !tbaa !9
  %266 = icmp eq ptr %265, null
  br i1 %266, label %273, label %267

267:                                              ; preds = %250
  %268 = load ptr, ptr %225, align 8, !tbaa !14
  store ptr %268, ptr @zz_tmp, align 8, !tbaa !9
  %269 = getelementptr inbounds [2 x %struct.LIST], ptr %265, i64 0, i64 1
  %270 = load ptr, ptr %269, align 8, !tbaa !14
  store ptr %270, ptr %225, align 8, !tbaa !14
  %271 = getelementptr inbounds [2 x %struct.LIST], ptr %270, i64 0, i64 1, i32 1
  store ptr %223, ptr %271, align 8, !tbaa !14
  store ptr %268, ptr %269, align 8, !tbaa !14
  %272 = getelementptr inbounds [2 x %struct.LIST], ptr %268, i64 0, i64 1, i32 1
  store ptr %265, ptr %272, align 8, !tbaa !14
  br label %273

273:                                              ; preds = %250, %267
  %274 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %275 = zext i8 %274 to i32
  store i32 %275, ptr @zz_size, align 4, !tbaa !5
  %276 = zext i8 %274 to i64
  %277 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %276
  %278 = load ptr, ptr %277, align 8, !tbaa !9
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %273
  %281 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %282 = call ptr @GetMemory(i32 noundef %275, ptr noundef %281) #12
  br label %285

283:                                              ; preds = %273
  store ptr %278, ptr @zz_hold, align 8, !tbaa !9
  %284 = load ptr, ptr %278, align 8, !tbaa !14
  store ptr %284, ptr %277, align 8, !tbaa !9
  br label %285

285:                                              ; preds = %280, %283
  %286 = phi ptr [ %282, %280 ], [ %278, %283 ]
  %287 = getelementptr inbounds %struct.word_type, ptr %286, i64 0, i32 1
  store i8 0, ptr %287, align 8, !tbaa !14
  %288 = getelementptr inbounds [2 x %struct.LIST], ptr %286, i64 0, i64 1, i32 1
  store ptr %286, ptr %288, align 8, !tbaa !14
  %289 = getelementptr inbounds [2 x %struct.LIST], ptr %286, i64 0, i64 1
  store ptr %286, ptr %289, align 8, !tbaa !14
  %290 = getelementptr inbounds %struct.LIST, ptr %286, i64 0, i32 1
  store ptr %286, ptr %290, align 8, !tbaa !14
  store ptr %286, ptr %286, align 8, !tbaa !14
  store ptr %286, ptr @xx_link, align 8, !tbaa !9
  store ptr %286, ptr @zz_res, align 8, !tbaa !9
  store ptr %223, ptr @zz_hold, align 8, !tbaa !9
  %291 = load ptr, ptr %223, align 8, !tbaa !14
  store ptr %291, ptr @zz_tmp, align 8, !tbaa !9
  %292 = load ptr, ptr %286, align 8, !tbaa !14
  store ptr %292, ptr %223, align 8, !tbaa !14
  %293 = load ptr, ptr @zz_hold, align 8, !tbaa !9
  %294 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %295 = load ptr, ptr %294, align 8, !tbaa !14
  %296 = getelementptr inbounds %struct.LIST, ptr %295, i64 0, i32 1
  store ptr %293, ptr %296, align 8, !tbaa !14
  %297 = load ptr, ptr @zz_tmp, align 8, !tbaa !9
  store ptr %297, ptr %294, align 8, !tbaa !14
  %298 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %299 = getelementptr inbounds %struct.LIST, ptr %297, i64 0, i32 1
  store ptr %298, ptr %299, align 8, !tbaa !14
  %300 = load ptr, ptr @xx_link, align 8, !tbaa !9
  store ptr %300, ptr @zz_res, align 8, !tbaa !9
  store ptr %161, ptr @zz_hold, align 8, !tbaa !9
  %301 = icmp eq ptr %300, null
  br i1 %301, label %309, label %302

302:                                              ; preds = %285
  %303 = getelementptr inbounds [2 x %struct.LIST], ptr %161, i64 0, i64 1
  %304 = load ptr, ptr %303, align 8, !tbaa !14
  store ptr %304, ptr @zz_tmp, align 8, !tbaa !9
  %305 = getelementptr inbounds [2 x %struct.LIST], ptr %300, i64 0, i64 1
  %306 = load ptr, ptr %305, align 8, !tbaa !14
  store ptr %306, ptr %303, align 8, !tbaa !14
  %307 = getelementptr inbounds [2 x %struct.LIST], ptr %306, i64 0, i64 1, i32 1
  store ptr %161, ptr %307, align 8, !tbaa !14
  store ptr %304, ptr %305, align 8, !tbaa !14
  %308 = getelementptr inbounds [2 x %struct.LIST], ptr %304, i64 0, i64 1, i32 1
  store ptr %300, ptr %308, align 8, !tbaa !14
  br label %309

309:                                              ; preds = %285, %302
  call fastcc void @DoAddGap(ptr noundef nonnull %223)
  %310 = load i8, ptr %82, align 1, !tbaa !14
  %311 = zext i8 %310 to i64
  %312 = getelementptr inbounds i8, ptr %29, i64 %311
  %313 = load i8, ptr %312, align 1, !tbaa !14
  store i8 %313, ptr %3, align 16, !tbaa !14
  br label %624

314:                                              ; preds = %124
  %315 = getelementptr inbounds i8, ptr %81, i64 1
  store i8 %77, ptr %81, align 1, !tbaa !14
  br label %624

316:                                              ; preds = %76
  br i1 %88, label %319, label %317

317:                                              ; preds = %316
  %318 = getelementptr inbounds i8, ptr %81, i64 1
  store i8 %87, ptr %81, align 1, !tbaa !14
  br label %624

319:                                              ; preds = %316
  store i8 0, ptr %81, align 1, !tbaa !14
  %320 = load i8, ptr %5, align 8, !tbaa !14
  %321 = zext i8 %320 to i32
  %322 = call ptr @MakeWord(i32 noundef %321, ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %323 = getelementptr inbounds %struct.word_type, ptr %322, i64 0, i32 2
  %324 = load i32, ptr %323, align 8
  %325 = and i32 %80, 4095
  %326 = and i32 %324, -4096
  %327 = or disjoint i32 %326, %325
  store i32 %327, ptr %323, align 8
  %328 = load i32, ptr %13, align 8
  %329 = and i32 %328, 4190208
  %330 = and i32 %327, -4190209
  %331 = or disjoint i32 %330, %329
  store i32 %331, ptr %323, align 8
  %332 = load i32, ptr %13, align 8
  %333 = and i32 %332, 4194304
  %334 = and i32 %331, -4194305
  %335 = or disjoint i32 %334, %333
  store i32 %335, ptr %323, align 8
  %336 = load i32, ptr %13, align 8
  %337 = and i32 %336, 528482304
  %338 = and i32 %335, -528482305
  %339 = or disjoint i32 %338, %337
  store i32 %339, ptr %323, align 8
  %340 = load i32, ptr %13, align 8
  %341 = and i32 %340, -2147483648
  %342 = and i32 %339, 536870911
  %343 = or disjoint i32 %342, %341
  %344 = or disjoint i32 %343, 536870912
  store i32 %344, ptr %323, align 8
  %345 = call fastcc ptr @DoVShift(ptr noundef %0, i32 noundef %79, ptr noundef %322)
  %346 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 24), align 1, !tbaa !14
  %347 = zext i8 %346 to i32
  store i32 %347, ptr @zz_size, align 4, !tbaa !5
  %348 = zext i8 %346 to i64
  %349 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %348
  %350 = load ptr, ptr %349, align 8, !tbaa !9
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %355

352:                                              ; preds = %319
  %353 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %354 = call ptr @GetMemory(i32 noundef %347, ptr noundef %353) #12
  store ptr %354, ptr @zz_hold, align 8, !tbaa !9
  br label %357

355:                                              ; preds = %319
  store ptr %350, ptr @zz_hold, align 8, !tbaa !9
  %356 = load ptr, ptr %350, align 8, !tbaa !14
  store ptr %356, ptr %349, align 8, !tbaa !9
  br label %357

357:                                              ; preds = %352, %355
  %358 = phi ptr [ %354, %352 ], [ %350, %355 ]
  %359 = getelementptr inbounds %struct.word_type, ptr %358, i64 0, i32 1
  store i8 24, ptr %359, align 8, !tbaa !14
  %360 = getelementptr inbounds [2 x %struct.LIST], ptr %358, i64 0, i64 1, i32 1
  store ptr %358, ptr %360, align 8, !tbaa !14
  %361 = getelementptr inbounds [2 x %struct.LIST], ptr %358, i64 0, i64 1
  store ptr %358, ptr %361, align 8, !tbaa !14
  %362 = getelementptr inbounds %struct.LIST, ptr %358, i64 0, i32 1
  store ptr %358, ptr %362, align 8, !tbaa !14
  store ptr %358, ptr %358, align 8, !tbaa !14
  %363 = load i16, ptr %64, align 2, !tbaa !14
  %364 = getelementptr inbounds %struct.word_type, ptr %358, i64 0, i32 1, i32 0, i32 2
  store i16 %363, ptr %364, align 2, !tbaa !14
  %365 = load i32, ptr %65, align 4
  %366 = and i32 %365, 1048575
  %367 = getelementptr inbounds %struct.word_type, ptr %358, i64 0, i32 1, i32 0, i32 3
  %368 = load i32, ptr %367, align 4
  %369 = and i32 %368, -1048576
  %370 = or disjoint i32 %369, %366
  store i32 %370, ptr %367, align 4
  %371 = load i32, ptr %65, align 4
  %372 = and i32 %371, -1048576
  %373 = or disjoint i32 %372, %366
  store i32 %373, ptr %367, align 4
  %374 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !14
  %375 = zext i8 %374 to i32
  store i32 %375, ptr @zz_size, align 4, !tbaa !5
  %376 = zext i8 %374 to i64
  %377 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %376
  %378 = load ptr, ptr %377, align 8, !tbaa !9
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %383

380:                                              ; preds = %357
  %381 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %382 = call ptr @GetMemory(i32 noundef %375, ptr noundef %381) #12
  store ptr %382, ptr @zz_hold, align 8, !tbaa !9
  br label %385

383:                                              ; preds = %357
  store ptr %378, ptr @zz_hold, align 8, !tbaa !9
  %384 = load ptr, ptr %378, align 8, !tbaa !14
  store ptr %384, ptr %377, align 8, !tbaa !9
  br label %385

385:                                              ; preds = %380, %383
  %386 = phi ptr [ %382, %380 ], [ %378, %383 ]
  %387 = getelementptr inbounds %struct.word_type, ptr %386, i64 0, i32 1
  store i8 17, ptr %387, align 8, !tbaa !14
  %388 = getelementptr inbounds [2 x %struct.LIST], ptr %386, i64 0, i64 1
  %389 = getelementptr inbounds [2 x %struct.LIST], ptr %386, i64 0, i64 1, i32 1
  store ptr %386, ptr %389, align 8, !tbaa !14
  store ptr %386, ptr %388, align 8, !tbaa !14
  %390 = getelementptr inbounds %struct.LIST, ptr %386, i64 0, i32 1
  store ptr %386, ptr %390, align 8, !tbaa !14
  store ptr %386, ptr %386, align 8, !tbaa !14
  %391 = load i16, ptr %64, align 2, !tbaa !14
  %392 = getelementptr inbounds %struct.word_type, ptr %386, i64 0, i32 1, i32 0, i32 2
  store i16 %391, ptr %392, align 2, !tbaa !14
  %393 = load i32, ptr %65, align 4
  %394 = and i32 %393, 1048575
  %395 = getelementptr inbounds %struct.word_type, ptr %386, i64 0, i32 1, i32 0, i32 3
  %396 = load i32, ptr %395, align 4
  %397 = and i32 %396, -1048576
  %398 = or disjoint i32 %397, %394
  store i32 %398, ptr %395, align 4
  %399 = load i32, ptr %65, align 4
  %400 = and i32 %399, -1048576
  %401 = or disjoint i32 %400, %394
  store i32 %401, ptr %395, align 4
  %402 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %403 = zext i8 %402 to i32
  store i32 %403, ptr @zz_size, align 4, !tbaa !5
  %404 = zext i8 %402 to i64
  %405 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %404
  %406 = load ptr, ptr %405, align 8, !tbaa !9
  %407 = icmp eq ptr %406, null
  br i1 %407, label %408, label %411

408:                                              ; preds = %385
  %409 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %410 = call ptr @GetMemory(i32 noundef %403, ptr noundef %409) #12
  br label %413

411:                                              ; preds = %385
  store ptr %406, ptr @zz_hold, align 8, !tbaa !9
  %412 = load ptr, ptr %406, align 8, !tbaa !14
  store ptr %412, ptr %405, align 8, !tbaa !9
  br label %413

413:                                              ; preds = %408, %411
  %414 = phi ptr [ %410, %408 ], [ %406, %411 ]
  %415 = getelementptr inbounds %struct.word_type, ptr %414, i64 0, i32 1
  store i8 0, ptr %415, align 8, !tbaa !14
  %416 = getelementptr inbounds [2 x %struct.LIST], ptr %414, i64 0, i64 1, i32 1
  store ptr %414, ptr %416, align 8, !tbaa !14
  %417 = getelementptr inbounds [2 x %struct.LIST], ptr %414, i64 0, i64 1
  store ptr %414, ptr %417, align 8, !tbaa !14
  %418 = getelementptr inbounds %struct.LIST, ptr %414, i64 0, i32 1
  store ptr %414, ptr %418, align 8, !tbaa !14
  store ptr %414, ptr %414, align 8, !tbaa !14
  store ptr %414, ptr @xx_link, align 8, !tbaa !9
  store ptr %414, ptr @zz_res, align 8, !tbaa !9
  store ptr %358, ptr @zz_hold, align 8, !tbaa !9
  %419 = load ptr, ptr %358, align 8, !tbaa !14
  store ptr %419, ptr @zz_tmp, align 8, !tbaa !9
  %420 = load ptr, ptr %414, align 8, !tbaa !14
  store ptr %420, ptr %358, align 8, !tbaa !14
  %421 = load ptr, ptr @zz_hold, align 8, !tbaa !9
  %422 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %423 = load ptr, ptr %422, align 8, !tbaa !14
  %424 = getelementptr inbounds %struct.LIST, ptr %423, i64 0, i32 1
  store ptr %421, ptr %424, align 8, !tbaa !14
  %425 = load ptr, ptr @zz_tmp, align 8, !tbaa !9
  store ptr %425, ptr %422, align 8, !tbaa !14
  %426 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %427 = getelementptr inbounds %struct.LIST, ptr %425, i64 0, i32 1
  store ptr %426, ptr %427, align 8, !tbaa !14
  %428 = load ptr, ptr @xx_link, align 8, !tbaa !9
  store ptr %428, ptr @zz_res, align 8, !tbaa !9
  store ptr %386, ptr @zz_hold, align 8, !tbaa !9
  %429 = icmp eq ptr %428, null
  br i1 %429, label %436, label %430

430:                                              ; preds = %413
  %431 = load ptr, ptr %388, align 8, !tbaa !14
  store ptr %431, ptr @zz_tmp, align 8, !tbaa !9
  %432 = getelementptr inbounds [2 x %struct.LIST], ptr %428, i64 0, i64 1
  %433 = load ptr, ptr %432, align 8, !tbaa !14
  store ptr %433, ptr %388, align 8, !tbaa !14
  %434 = getelementptr inbounds [2 x %struct.LIST], ptr %433, i64 0, i64 1, i32 1
  store ptr %386, ptr %434, align 8, !tbaa !14
  store ptr %431, ptr %432, align 8, !tbaa !14
  %435 = getelementptr inbounds [2 x %struct.LIST], ptr %431, i64 0, i64 1, i32 1
  store ptr %428, ptr %435, align 8, !tbaa !14
  br label %436

436:                                              ; preds = %413, %430
  %437 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %438 = zext i8 %437 to i32
  store i32 %438, ptr @zz_size, align 4, !tbaa !5
  %439 = zext i8 %437 to i64
  %440 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %439
  %441 = load ptr, ptr %440, align 8, !tbaa !9
  %442 = icmp eq ptr %441, null
  br i1 %442, label %443, label %446

443:                                              ; preds = %436
  %444 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %445 = call ptr @GetMemory(i32 noundef %438, ptr noundef %444) #12
  br label %448

446:                                              ; preds = %436
  store ptr %441, ptr @zz_hold, align 8, !tbaa !9
  %447 = load ptr, ptr %441, align 8, !tbaa !14
  store ptr %447, ptr %440, align 8, !tbaa !9
  br label %448

448:                                              ; preds = %443, %446
  %449 = phi ptr [ %445, %443 ], [ %441, %446 ]
  %450 = getelementptr inbounds %struct.word_type, ptr %449, i64 0, i32 1
  store i8 0, ptr %450, align 8, !tbaa !14
  %451 = getelementptr inbounds [2 x %struct.LIST], ptr %449, i64 0, i64 1, i32 1
  store ptr %449, ptr %451, align 8, !tbaa !14
  %452 = getelementptr inbounds [2 x %struct.LIST], ptr %449, i64 0, i64 1
  store ptr %449, ptr %452, align 8, !tbaa !14
  %453 = getelementptr inbounds %struct.LIST, ptr %449, i64 0, i32 1
  store ptr %449, ptr %453, align 8, !tbaa !14
  store ptr %449, ptr %449, align 8, !tbaa !14
  store ptr %449, ptr @xx_link, align 8, !tbaa !9
  store ptr %449, ptr @zz_res, align 8, !tbaa !9
  store ptr %386, ptr @zz_hold, align 8, !tbaa !9
  %454 = load ptr, ptr %386, align 8, !tbaa !14
  store ptr %454, ptr @zz_tmp, align 8, !tbaa !9
  %455 = load ptr, ptr %449, align 8, !tbaa !14
  store ptr %455, ptr %386, align 8, !tbaa !14
  %456 = load ptr, ptr @zz_hold, align 8, !tbaa !9
  %457 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %458 = load ptr, ptr %457, align 8, !tbaa !14
  %459 = getelementptr inbounds %struct.LIST, ptr %458, i64 0, i32 1
  store ptr %456, ptr %459, align 8, !tbaa !14
  %460 = load ptr, ptr @zz_tmp, align 8, !tbaa !9
  store ptr %460, ptr %457, align 8, !tbaa !14
  %461 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %462 = getelementptr inbounds %struct.LIST, ptr %460, i64 0, i32 1
  store ptr %461, ptr %462, align 8, !tbaa !14
  %463 = load ptr, ptr @xx_link, align 8, !tbaa !9
  store ptr %463, ptr @zz_res, align 8, !tbaa !9
  store ptr %345, ptr @zz_hold, align 8, !tbaa !9
  %464 = icmp eq ptr %345, null
  %465 = icmp eq ptr %463, null
  %466 = select i1 %464, i1 true, i1 %465
  br i1 %466, label %474, label %467

467:                                              ; preds = %448
  %468 = getelementptr inbounds [2 x %struct.LIST], ptr %345, i64 0, i64 1
  %469 = load ptr, ptr %468, align 8, !tbaa !14
  store ptr %469, ptr @zz_tmp, align 8, !tbaa !9
  %470 = getelementptr inbounds [2 x %struct.LIST], ptr %463, i64 0, i64 1
  %471 = load ptr, ptr %470, align 8, !tbaa !14
  store ptr %471, ptr %468, align 8, !tbaa !14
  %472 = getelementptr inbounds [2 x %struct.LIST], ptr %471, i64 0, i64 1, i32 1
  store ptr %345, ptr %472, align 8, !tbaa !14
  store ptr %469, ptr %470, align 8, !tbaa !14
  %473 = getelementptr inbounds [2 x %struct.LIST], ptr %469, i64 0, i64 1, i32 1
  store ptr %463, ptr %473, align 8, !tbaa !14
  br label %474

474:                                              ; preds = %448, %467
  call fastcc void @DoAddGap(ptr noundef nonnull %386)
  %475 = load i8, ptr %82, align 1, !tbaa !14
  store i8 %475, ptr %3, align 16, !tbaa !14
  br label %624

476:                                              ; preds = %76
  br i1 %88, label %548, label %477

477:                                              ; preds = %476
  %478 = load i32, ptr %13, align 8
  %479 = and i32 %478, 4095
  store i8 0, ptr %81, align 1, !tbaa !14
  %480 = load i8, ptr %5, align 8, !tbaa !14
  %481 = zext i8 %480 to i32
  %482 = call ptr @MakeWord(i32 noundef %481, ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %483 = getelementptr inbounds %struct.word_type, ptr %482, i64 0, i32 2
  %484 = load i32, ptr %483, align 8
  %485 = and i32 %484, -4096
  %486 = or disjoint i32 %485, %479
  store i32 %486, ptr %483, align 8
  %487 = load i32, ptr %13, align 8
  %488 = and i32 %487, 4190208
  %489 = and i32 %486, -4190209
  %490 = or disjoint i32 %489, %488
  store i32 %490, ptr %483, align 8
  %491 = load i32, ptr %13, align 8
  %492 = and i32 %491, 4194304
  %493 = and i32 %490, -4194305
  %494 = or disjoint i32 %493, %492
  store i32 %494, ptr %483, align 8
  %495 = load i32, ptr %13, align 8
  %496 = and i32 %495, 528482304
  %497 = and i32 %494, -528482305
  %498 = or disjoint i32 %497, %496
  store i32 %498, ptr %483, align 8
  %499 = load i32, ptr %13, align 8
  %500 = and i32 %499, -2147483648
  %501 = and i32 %498, 536870911
  %502 = or disjoint i32 %501, %500
  %503 = or disjoint i32 %502, 536870912
  store i32 %503, ptr %483, align 8
  %504 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %505 = zext i8 %504 to i32
  store i32 %505, ptr @zz_size, align 4, !tbaa !5
  %506 = zext i8 %504 to i64
  %507 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %506
  %508 = load ptr, ptr %507, align 8, !tbaa !9
  %509 = icmp eq ptr %508, null
  br i1 %509, label %510, label %513

510:                                              ; preds = %477
  %511 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %512 = call ptr @GetMemory(i32 noundef %505, ptr noundef %511) #12
  br label %515

513:                                              ; preds = %477
  store ptr %508, ptr @zz_hold, align 8, !tbaa !9
  %514 = load ptr, ptr %508, align 8, !tbaa !14
  store ptr %514, ptr %507, align 8, !tbaa !9
  br label %515

515:                                              ; preds = %510, %513
  %516 = phi ptr [ %512, %510 ], [ %508, %513 ]
  %517 = getelementptr inbounds %struct.word_type, ptr %516, i64 0, i32 1
  store i8 0, ptr %517, align 8, !tbaa !14
  %518 = getelementptr inbounds [2 x %struct.LIST], ptr %516, i64 0, i64 1, i32 1
  store ptr %516, ptr %518, align 8, !tbaa !14
  %519 = getelementptr inbounds [2 x %struct.LIST], ptr %516, i64 0, i64 1
  store ptr %516, ptr %519, align 8, !tbaa !14
  %520 = getelementptr inbounds %struct.LIST, ptr %516, i64 0, i32 1
  store ptr %516, ptr %520, align 8, !tbaa !14
  store ptr %516, ptr %516, align 8, !tbaa !14
  store ptr %516, ptr @xx_link, align 8, !tbaa !9
  store ptr %516, ptr @zz_res, align 8, !tbaa !9
  store ptr %83, ptr @zz_hold, align 8, !tbaa !9
  %521 = icmp eq ptr %83, null
  br i1 %521, label %522, label %523

522:                                              ; preds = %515
  store ptr %482, ptr @zz_hold, align 8, !tbaa !9
  br label %535

523:                                              ; preds = %515
  %524 = load ptr, ptr %83, align 8, !tbaa !14
  store ptr %524, ptr @zz_tmp, align 8, !tbaa !9
  %525 = load ptr, ptr %516, align 8, !tbaa !14
  store ptr %525, ptr %83, align 8, !tbaa !14
  %526 = load ptr, ptr @zz_hold, align 8, !tbaa !9
  %527 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %528 = load ptr, ptr %527, align 8, !tbaa !14
  %529 = getelementptr inbounds %struct.LIST, ptr %528, i64 0, i32 1
  store ptr %526, ptr %529, align 8, !tbaa !14
  %530 = load ptr, ptr @zz_tmp, align 8, !tbaa !9
  store ptr %530, ptr %527, align 8, !tbaa !14
  %531 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %532 = getelementptr inbounds %struct.LIST, ptr %530, i64 0, i32 1
  store ptr %531, ptr %532, align 8, !tbaa !14
  %533 = load ptr, ptr @xx_link, align 8, !tbaa !9
  store ptr %533, ptr @zz_res, align 8, !tbaa !9
  store ptr %482, ptr @zz_hold, align 8, !tbaa !9
  %534 = icmp eq ptr %533, null
  br i1 %534, label %543, label %535

535:                                              ; preds = %522, %523
  %536 = phi ptr [ %516, %522 ], [ %533, %523 ]
  %537 = getelementptr inbounds [2 x %struct.LIST], ptr %482, i64 0, i64 1
  %538 = load ptr, ptr %537, align 8, !tbaa !14
  store ptr %538, ptr @zz_tmp, align 8, !tbaa !9
  %539 = getelementptr inbounds [2 x %struct.LIST], ptr %536, i64 0, i64 1
  %540 = load ptr, ptr %539, align 8, !tbaa !14
  store ptr %540, ptr %537, align 8, !tbaa !14
  %541 = getelementptr inbounds [2 x %struct.LIST], ptr %540, i64 0, i64 1, i32 1
  store ptr %482, ptr %541, align 8, !tbaa !14
  store ptr %538, ptr %539, align 8, !tbaa !14
  %542 = getelementptr inbounds [2 x %struct.LIST], ptr %538, i64 0, i64 1, i32 1
  store ptr %536, ptr %542, align 8, !tbaa !14
  br label %543

543:                                              ; preds = %523, %535
  call fastcc void @DoAddGap(ptr noundef %83)
  %544 = load i8, ptr %82, align 1, !tbaa !14
  %545 = zext i8 %544 to i64
  %546 = getelementptr inbounds i8, ptr %29, i64 %545
  %547 = load i8, ptr %546, align 1, !tbaa !14
  store i8 %547, ptr %3, align 16, !tbaa !14
  br label %624

548:                                              ; preds = %476
  %549 = getelementptr inbounds i8, ptr %81, i64 1
  store i8 %77, ptr %81, align 1, !tbaa !14
  br label %624

550:                                              ; preds = %76
  br i1 %88, label %553, label %551

551:                                              ; preds = %550
  %552 = getelementptr inbounds i8, ptr %81, i64 1
  store i8 %87, ptr %81, align 1, !tbaa !14
  br label %624

553:                                              ; preds = %550
  store i8 0, ptr %81, align 1, !tbaa !14
  %554 = load i8, ptr %5, align 8, !tbaa !14
  %555 = zext i8 %554 to i32
  %556 = call ptr @MakeWord(i32 noundef %555, ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %557 = getelementptr inbounds %struct.word_type, ptr %556, i64 0, i32 2
  %558 = load i32, ptr %557, align 8
  %559 = and i32 %80, 4095
  %560 = and i32 %558, -4096
  %561 = or disjoint i32 %560, %559
  store i32 %561, ptr %557, align 8
  %562 = load i32, ptr %13, align 8
  %563 = and i32 %562, 4190208
  %564 = and i32 %561, -4190209
  %565 = or disjoint i32 %564, %563
  store i32 %565, ptr %557, align 8
  %566 = load i32, ptr %13, align 8
  %567 = and i32 %566, 4194304
  %568 = and i32 %565, -4194305
  %569 = or disjoint i32 %568, %567
  store i32 %569, ptr %557, align 8
  %570 = load i32, ptr %13, align 8
  %571 = and i32 %570, 528482304
  %572 = and i32 %569, -528482305
  %573 = or disjoint i32 %572, %571
  store i32 %573, ptr %557, align 8
  %574 = load i32, ptr %13, align 8
  %575 = and i32 %574, -2147483648
  %576 = and i32 %573, 536870911
  %577 = or disjoint i32 %576, %575
  %578 = or disjoint i32 %577, 536870912
  store i32 %578, ptr %557, align 8
  %579 = call fastcc ptr @DoVShift(ptr noundef %0, i32 noundef %79, ptr noundef %556)
  %580 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %581 = zext i8 %580 to i32
  store i32 %581, ptr @zz_size, align 4, !tbaa !5
  %582 = zext i8 %580 to i64
  %583 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %582
  %584 = load ptr, ptr %583, align 8, !tbaa !9
  %585 = icmp eq ptr %584, null
  br i1 %585, label %586, label %589

586:                                              ; preds = %553
  %587 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %588 = call ptr @GetMemory(i32 noundef %581, ptr noundef %587) #12
  br label %591

589:                                              ; preds = %553
  store ptr %584, ptr @zz_hold, align 8, !tbaa !9
  %590 = load ptr, ptr %584, align 8, !tbaa !14
  store ptr %590, ptr %583, align 8, !tbaa !9
  br label %591

591:                                              ; preds = %586, %589
  %592 = phi ptr [ %588, %586 ], [ %584, %589 ]
  %593 = getelementptr inbounds %struct.word_type, ptr %592, i64 0, i32 1
  store i8 0, ptr %593, align 8, !tbaa !14
  %594 = getelementptr inbounds [2 x %struct.LIST], ptr %592, i64 0, i64 1, i32 1
  store ptr %592, ptr %594, align 8, !tbaa !14
  %595 = getelementptr inbounds [2 x %struct.LIST], ptr %592, i64 0, i64 1
  store ptr %592, ptr %595, align 8, !tbaa !14
  %596 = getelementptr inbounds %struct.LIST, ptr %592, i64 0, i32 1
  store ptr %592, ptr %596, align 8, !tbaa !14
  store ptr %592, ptr %592, align 8, !tbaa !14
  store ptr %592, ptr @xx_link, align 8, !tbaa !9
  store ptr %592, ptr @zz_res, align 8, !tbaa !9
  store ptr %83, ptr @zz_hold, align 8, !tbaa !9
  %597 = icmp eq ptr %83, null
  br i1 %597, label %609, label %598

598:                                              ; preds = %591
  %599 = load ptr, ptr %83, align 8, !tbaa !14
  store ptr %599, ptr @zz_tmp, align 8, !tbaa !9
  %600 = load ptr, ptr %592, align 8, !tbaa !14
  store ptr %600, ptr %83, align 8, !tbaa !14
  %601 = load ptr, ptr @zz_hold, align 8, !tbaa !9
  %602 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %603 = load ptr, ptr %602, align 8, !tbaa !14
  %604 = getelementptr inbounds %struct.LIST, ptr %603, i64 0, i32 1
  store ptr %601, ptr %604, align 8, !tbaa !14
  %605 = load ptr, ptr @zz_tmp, align 8, !tbaa !9
  store ptr %605, ptr %602, align 8, !tbaa !14
  %606 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %607 = getelementptr inbounds %struct.LIST, ptr %605, i64 0, i32 1
  store ptr %606, ptr %607, align 8, !tbaa !14
  %608 = load ptr, ptr @xx_link, align 8, !tbaa !9
  br label %609

609:                                              ; preds = %591, %598
  %610 = phi ptr [ %592, %591 ], [ %608, %598 ]
  store ptr %610, ptr @zz_res, align 8, !tbaa !9
  store ptr %579, ptr @zz_hold, align 8, !tbaa !9
  %611 = icmp eq ptr %579, null
  %612 = icmp eq ptr %610, null
  %613 = select i1 %611, i1 true, i1 %612
  br i1 %613, label %621, label %614

614:                                              ; preds = %609
  %615 = getelementptr inbounds [2 x %struct.LIST], ptr %579, i64 0, i64 1
  %616 = load ptr, ptr %615, align 8, !tbaa !14
  store ptr %616, ptr @zz_tmp, align 8, !tbaa !9
  %617 = getelementptr inbounds [2 x %struct.LIST], ptr %610, i64 0, i64 1
  %618 = load ptr, ptr %617, align 8, !tbaa !14
  store ptr %618, ptr %615, align 8, !tbaa !14
  %619 = getelementptr inbounds [2 x %struct.LIST], ptr %618, i64 0, i64 1, i32 1
  store ptr %579, ptr %619, align 8, !tbaa !14
  store ptr %616, ptr %617, align 8, !tbaa !14
  %620 = getelementptr inbounds [2 x %struct.LIST], ptr %616, i64 0, i64 1, i32 1
  store ptr %610, ptr %620, align 8, !tbaa !14
  br label %621

621:                                              ; preds = %609, %614
  call fastcc void @DoAddGap(ptr noundef %83)
  %622 = load i8, ptr %82, align 1, !tbaa !14
  store i8 %622, ptr %3, align 16, !tbaa !14
  br label %624

623:                                              ; preds = %76
  unreachable

624:                                              ; preds = %123, %91, %314, %309, %474, %317, %548, %543, %621, %551
  %625 = phi ptr [ %84, %551 ], [ %84, %621 ], [ %84, %543 ], [ %84, %548 ], [ %84, %317 ], [ %358, %474 ], [ %195, %309 ], [ %84, %314 ], [ %84, %91 ], [ %84, %123 ]
  %626 = phi ptr [ %83, %551 ], [ %83, %621 ], [ %83, %543 ], [ %83, %548 ], [ %83, %317 ], [ %386, %474 ], [ %223, %309 ], [ %83, %314 ], [ %83, %91 ], [ %83, %123 ]
  %627 = phi ptr [ %552, %551 ], [ %63, %621 ], [ %63, %543 ], [ %549, %548 ], [ %318, %317 ], [ %63, %474 ], [ %63, %309 ], [ %315, %314 ], [ %90, %91 ], [ %90, %123 ]
  %628 = phi i32 [ %80, %551 ], [ %80, %621 ], [ %80, %543 ], [ %80, %548 ], [ %80, %317 ], [ %80, %474 ], [ %151, %309 ], [ %80, %314 ], [ %117, %91 ], [ %80, %123 ]
  %629 = phi i32 [ %79, %551 ], [ %79, %621 ], [ %79, %543 ], [ %79, %548 ], [ %79, %317 ], [ %79, %474 ], [ %156, %309 ], [ %79, %314 ], [ %122, %91 ], [ %79, %123 ]
  %630 = phi i32 [ 4, %551 ], [ 3, %621 ], [ 4, %543 ], [ 3, %548 ], [ 2, %317 ], [ 3, %474 ], [ 4, %309 ], [ 1, %314 ], [ 2, %91 ], [ 1, %123 ]
  %631 = getelementptr inbounds i8, ptr %82, i64 1
  %632 = load i8, ptr %631, align 1, !tbaa !14
  %633 = icmp eq i8 %632, 0
  br i1 %633, label %634, label %76

634:                                              ; preds = %624
  %635 = and i32 %628, 4095
  switch i32 %630, label %871 [
    i32 4, label %767
    i32 3, label %682
    i32 2, label %636
  ]

636:                                              ; preds = %634
  store i8 0, ptr %627, align 1, !tbaa !14
  %637 = load i8, ptr %5, align 8, !tbaa !14
  %638 = zext i8 %637 to i32
  %639 = call ptr @MakeWord(i32 noundef %638, ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %640 = getelementptr inbounds %struct.word_type, ptr %639, i64 0, i32 2
  %641 = load i32, ptr %640, align 8
  %642 = and i32 %641, -4096
  %643 = or disjoint i32 %642, %635
  store i32 %643, ptr %640, align 8
  %644 = load i32, ptr %13, align 8
  %645 = and i32 %644, 4190208
  %646 = and i32 %643, -4190209
  %647 = or disjoint i32 %646, %645
  store i32 %647, ptr %640, align 8
  %648 = load i32, ptr %13, align 8
  %649 = and i32 %648, 4194304
  %650 = and i32 %647, -4194305
  %651 = or disjoint i32 %650, %649
  store i32 %651, ptr %640, align 8
  %652 = load i32, ptr %13, align 8
  %653 = and i32 %652, 528482304
  %654 = and i32 %651, -528482305
  %655 = or disjoint i32 %654, %653
  store i32 %655, ptr %640, align 8
  %656 = load i32, ptr %13, align 8
  %657 = and i32 %656, -2147483648
  %658 = and i32 %655, 536870911
  %659 = or disjoint i32 %658, %657
  %660 = or disjoint i32 %659, 536870912
  store i32 %660, ptr %640, align 8
  %661 = call fastcc ptr @DoVShift(ptr noundef %0, i32 noundef %629, ptr noundef %639)
  %662 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %663 = load ptr, ptr %662, align 8, !tbaa !14
  %664 = icmp eq ptr %663, %0
  br i1 %664, label %665, label %666

665:                                              ; preds = %636
  store ptr null, ptr @xx_tmp, align 8, !tbaa !9
  br label %680

666:                                              ; preds = %636
  %667 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %668 = load ptr, ptr %667, align 8, !tbaa !14
  %669 = getelementptr inbounds [2 x %struct.LIST], ptr %663, i64 0, i64 1
  store ptr %668, ptr %669, align 8, !tbaa !14
  %670 = getelementptr inbounds [2 x %struct.LIST], ptr %668, i64 0, i64 1, i32 1
  store ptr %663, ptr %670, align 8, !tbaa !14
  store ptr %0, ptr %662, align 8, !tbaa !14
  store ptr %0, ptr %667, align 8, !tbaa !14
  store ptr %663, ptr @xx_tmp, align 8, !tbaa !9
  store ptr %661, ptr @zz_res, align 8, !tbaa !9
  %671 = icmp eq ptr %663, null
  %672 = icmp eq ptr %661, null
  %673 = or i1 %672, %671
  br i1 %673, label %853, label %674

674:                                              ; preds = %666
  %675 = load ptr, ptr %669, align 8, !tbaa !14
  store ptr %675, ptr @zz_tmp, align 8, !tbaa !9
  %676 = getelementptr inbounds [2 x %struct.LIST], ptr %661, i64 0, i64 1
  %677 = load ptr, ptr %676, align 8, !tbaa !14
  store ptr %677, ptr %669, align 8, !tbaa !14
  %678 = getelementptr inbounds [2 x %struct.LIST], ptr %677, i64 0, i64 1, i32 1
  store ptr %663, ptr %678, align 8, !tbaa !14
  store ptr %675, ptr %676, align 8, !tbaa !14
  %679 = getelementptr inbounds [2 x %struct.LIST], ptr %675, i64 0, i64 1, i32 1
  br label %680

680:                                              ; preds = %674, %665
  %681 = phi ptr [ @zz_res, %665 ], [ %679, %674 ]
  store ptr %661, ptr %681, align 8, !tbaa !14
  br label %853

682:                                              ; preds = %634
  %683 = load i32, ptr %13, align 8
  %684 = and i32 %683, 4095
  store i8 0, ptr %627, align 1, !tbaa !14
  %685 = load i8, ptr %5, align 8, !tbaa !14
  %686 = zext i8 %685 to i32
  %687 = call ptr @MakeWord(i32 noundef %686, ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %688 = getelementptr inbounds %struct.word_type, ptr %687, i64 0, i32 2
  %689 = load i32, ptr %688, align 8
  %690 = and i32 %689, -4096
  %691 = or disjoint i32 %690, %684
  store i32 %691, ptr %688, align 8
  %692 = load i32, ptr %13, align 8
  %693 = and i32 %692, 4190208
  %694 = and i32 %691, -4190209
  %695 = or disjoint i32 %694, %693
  store i32 %695, ptr %688, align 8
  %696 = load i32, ptr %13, align 8
  %697 = and i32 %696, 4194304
  %698 = and i32 %695, -4194305
  %699 = or disjoint i32 %698, %697
  store i32 %699, ptr %688, align 8
  %700 = load i32, ptr %13, align 8
  %701 = and i32 %700, 528482304
  %702 = and i32 %699, -528482305
  %703 = or disjoint i32 %702, %701
  store i32 %703, ptr %688, align 8
  %704 = load i32, ptr %13, align 8
  %705 = and i32 %704, -2147483648
  %706 = and i32 %703, 536870911
  %707 = or disjoint i32 %706, %705
  %708 = or disjoint i32 %707, 536870912
  store i32 %708, ptr %688, align 8
  %709 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %710 = zext i8 %709 to i32
  store i32 %710, ptr @zz_size, align 4, !tbaa !5
  %711 = zext i8 %709 to i64
  %712 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %711
  %713 = load ptr, ptr %712, align 8, !tbaa !9
  %714 = icmp eq ptr %713, null
  br i1 %714, label %715, label %718

715:                                              ; preds = %682
  %716 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %717 = call ptr @GetMemory(i32 noundef %710, ptr noundef %716) #12
  br label %720

718:                                              ; preds = %682
  store ptr %713, ptr @zz_hold, align 8, !tbaa !9
  %719 = load ptr, ptr %713, align 8, !tbaa !14
  store ptr %719, ptr %712, align 8, !tbaa !9
  br label %720

720:                                              ; preds = %715, %718
  %721 = phi ptr [ %717, %715 ], [ %713, %718 ]
  %722 = getelementptr inbounds %struct.word_type, ptr %721, i64 0, i32 1
  store i8 0, ptr %722, align 8, !tbaa !14
  %723 = getelementptr inbounds [2 x %struct.LIST], ptr %721, i64 0, i64 1, i32 1
  store ptr %721, ptr %723, align 8, !tbaa !14
  %724 = getelementptr inbounds [2 x %struct.LIST], ptr %721, i64 0, i64 1
  store ptr %721, ptr %724, align 8, !tbaa !14
  %725 = getelementptr inbounds %struct.LIST, ptr %721, i64 0, i32 1
  store ptr %721, ptr %725, align 8, !tbaa !14
  store ptr %721, ptr %721, align 8, !tbaa !14
  store ptr %721, ptr @xx_link, align 8, !tbaa !9
  store ptr %721, ptr @zz_res, align 8, !tbaa !9
  store ptr %626, ptr @zz_hold, align 8, !tbaa !9
  %726 = icmp eq ptr %626, null
  br i1 %726, label %727, label %728

727:                                              ; preds = %720
  store ptr %687, ptr @zz_hold, align 8, !tbaa !9
  br label %740

728:                                              ; preds = %720
  %729 = load ptr, ptr %626, align 8, !tbaa !14
  store ptr %729, ptr @zz_tmp, align 8, !tbaa !9
  %730 = load ptr, ptr %721, align 8, !tbaa !14
  store ptr %730, ptr %626, align 8, !tbaa !14
  %731 = load ptr, ptr @zz_hold, align 8, !tbaa !9
  %732 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %733 = load ptr, ptr %732, align 8, !tbaa !14
  %734 = getelementptr inbounds %struct.LIST, ptr %733, i64 0, i32 1
  store ptr %731, ptr %734, align 8, !tbaa !14
  %735 = load ptr, ptr @zz_tmp, align 8, !tbaa !9
  store ptr %735, ptr %732, align 8, !tbaa !14
  %736 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %737 = getelementptr inbounds %struct.LIST, ptr %735, i64 0, i32 1
  store ptr %736, ptr %737, align 8, !tbaa !14
  %738 = load ptr, ptr @xx_link, align 8, !tbaa !9
  store ptr %687, ptr @zz_hold, align 8, !tbaa !9
  %739 = icmp eq ptr %738, null
  br i1 %739, label %748, label %740

740:                                              ; preds = %727, %728
  %741 = phi ptr [ %721, %727 ], [ %738, %728 ]
  %742 = getelementptr inbounds [2 x %struct.LIST], ptr %687, i64 0, i64 1
  %743 = load ptr, ptr %742, align 8, !tbaa !14
  store ptr %743, ptr @zz_tmp, align 8, !tbaa !9
  %744 = getelementptr inbounds [2 x %struct.LIST], ptr %741, i64 0, i64 1
  %745 = load ptr, ptr %744, align 8, !tbaa !14
  store ptr %745, ptr %742, align 8, !tbaa !14
  %746 = getelementptr inbounds [2 x %struct.LIST], ptr %745, i64 0, i64 1, i32 1
  store ptr %687, ptr %746, align 8, !tbaa !14
  store ptr %743, ptr %744, align 8, !tbaa !14
  %747 = getelementptr inbounds [2 x %struct.LIST], ptr %743, i64 0, i64 1, i32 1
  store ptr %741, ptr %747, align 8, !tbaa !14
  br label %748

748:                                              ; preds = %728, %740
  %749 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %750 = load ptr, ptr %749, align 8, !tbaa !14
  %751 = icmp eq ptr %750, %0
  br i1 %751, label %752, label %753

752:                                              ; preds = %748
  store ptr null, ptr @xx_tmp, align 8, !tbaa !9
  br label %765

753:                                              ; preds = %748
  %754 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %755 = load ptr, ptr %754, align 8, !tbaa !14
  %756 = getelementptr inbounds [2 x %struct.LIST], ptr %750, i64 0, i64 1
  store ptr %755, ptr %756, align 8, !tbaa !14
  %757 = getelementptr inbounds [2 x %struct.LIST], ptr %755, i64 0, i64 1, i32 1
  store ptr %750, ptr %757, align 8, !tbaa !14
  store ptr %0, ptr %749, align 8, !tbaa !14
  store ptr %0, ptr %754, align 8, !tbaa !14
  store ptr %750, ptr @xx_tmp, align 8, !tbaa !9
  store ptr %625, ptr @zz_res, align 8, !tbaa !9
  %758 = icmp eq ptr %625, null
  br i1 %758, label %853, label %759

759:                                              ; preds = %753
  %760 = load ptr, ptr %756, align 8, !tbaa !14
  store ptr %760, ptr @zz_tmp, align 8, !tbaa !9
  %761 = getelementptr inbounds [2 x %struct.LIST], ptr %625, i64 0, i64 1
  %762 = load ptr, ptr %761, align 8, !tbaa !14
  store ptr %762, ptr %756, align 8, !tbaa !14
  %763 = getelementptr inbounds [2 x %struct.LIST], ptr %762, i64 0, i64 1, i32 1
  store ptr %750, ptr %763, align 8, !tbaa !14
  store ptr %760, ptr %761, align 8, !tbaa !14
  %764 = getelementptr inbounds [2 x %struct.LIST], ptr %760, i64 0, i64 1, i32 1
  br label %765

765:                                              ; preds = %759, %752
  %766 = phi ptr [ @zz_res, %752 ], [ %764, %759 ]
  store ptr %625, ptr %766, align 8, !tbaa !14
  br label %853

767:                                              ; preds = %634
  store i8 0, ptr %627, align 1, !tbaa !14
  %768 = load i8, ptr %5, align 8, !tbaa !14
  %769 = zext i8 %768 to i32
  %770 = call ptr @MakeWord(i32 noundef %769, ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %771 = getelementptr inbounds %struct.word_type, ptr %770, i64 0, i32 2
  %772 = load i32, ptr %771, align 8
  %773 = and i32 %772, -4096
  %774 = or disjoint i32 %773, %635
  store i32 %774, ptr %771, align 8
  %775 = load i32, ptr %13, align 8
  %776 = and i32 %775, 4190208
  %777 = and i32 %774, -4190209
  %778 = or disjoint i32 %777, %776
  store i32 %778, ptr %771, align 8
  %779 = load i32, ptr %13, align 8
  %780 = and i32 %779, 4194304
  %781 = and i32 %778, -4194305
  %782 = or disjoint i32 %781, %780
  store i32 %782, ptr %771, align 8
  %783 = load i32, ptr %13, align 8
  %784 = and i32 %783, 528482304
  %785 = and i32 %782, -528482305
  %786 = or disjoint i32 %785, %784
  store i32 %786, ptr %771, align 8
  %787 = load i32, ptr %13, align 8
  %788 = and i32 %787, -2147483648
  %789 = and i32 %786, 536870911
  %790 = or disjoint i32 %789, %788
  %791 = or disjoint i32 %790, 536870912
  store i32 %791, ptr %771, align 8
  %792 = call fastcc ptr @DoVShift(ptr noundef %0, i32 noundef %629, ptr noundef %770)
  %793 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %794 = zext i8 %793 to i32
  store i32 %794, ptr @zz_size, align 4, !tbaa !5
  %795 = zext i8 %793 to i64
  %796 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %795
  %797 = load ptr, ptr %796, align 8, !tbaa !9
  %798 = icmp eq ptr %797, null
  br i1 %798, label %799, label %802

799:                                              ; preds = %767
  %800 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %801 = call ptr @GetMemory(i32 noundef %794, ptr noundef %800) #12
  br label %804

802:                                              ; preds = %767
  store ptr %797, ptr @zz_hold, align 8, !tbaa !9
  %803 = load ptr, ptr %797, align 8, !tbaa !14
  store ptr %803, ptr %796, align 8, !tbaa !9
  br label %804

804:                                              ; preds = %799, %802
  %805 = phi ptr [ %801, %799 ], [ %797, %802 ]
  %806 = getelementptr inbounds %struct.word_type, ptr %805, i64 0, i32 1
  store i8 0, ptr %806, align 8, !tbaa !14
  %807 = getelementptr inbounds [2 x %struct.LIST], ptr %805, i64 0, i64 1, i32 1
  store ptr %805, ptr %807, align 8, !tbaa !14
  %808 = getelementptr inbounds [2 x %struct.LIST], ptr %805, i64 0, i64 1
  store ptr %805, ptr %808, align 8, !tbaa !14
  %809 = getelementptr inbounds %struct.LIST, ptr %805, i64 0, i32 1
  store ptr %805, ptr %809, align 8, !tbaa !14
  store ptr %805, ptr %805, align 8, !tbaa !14
  store ptr %805, ptr @xx_link, align 8, !tbaa !9
  store ptr %805, ptr @zz_res, align 8, !tbaa !9
  store ptr %626, ptr @zz_hold, align 8, !tbaa !9
  %810 = icmp eq ptr %626, null
  br i1 %810, label %822, label %811

811:                                              ; preds = %804
  %812 = load ptr, ptr %626, align 8, !tbaa !14
  store ptr %812, ptr @zz_tmp, align 8, !tbaa !9
  %813 = load ptr, ptr %805, align 8, !tbaa !14
  store ptr %813, ptr %626, align 8, !tbaa !14
  %814 = load ptr, ptr @zz_hold, align 8, !tbaa !9
  %815 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %816 = load ptr, ptr %815, align 8, !tbaa !14
  %817 = getelementptr inbounds %struct.LIST, ptr %816, i64 0, i32 1
  store ptr %814, ptr %817, align 8, !tbaa !14
  %818 = load ptr, ptr @zz_tmp, align 8, !tbaa !9
  store ptr %818, ptr %815, align 8, !tbaa !14
  %819 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %820 = getelementptr inbounds %struct.LIST, ptr %818, i64 0, i32 1
  store ptr %819, ptr %820, align 8, !tbaa !14
  %821 = load ptr, ptr @xx_link, align 8, !tbaa !9
  br label %822

822:                                              ; preds = %804, %811
  %823 = phi ptr [ %805, %804 ], [ %821, %811 ]
  store ptr %792, ptr @zz_hold, align 8, !tbaa !9
  %824 = icmp eq ptr %792, null
  %825 = icmp eq ptr %823, null
  %826 = select i1 %824, i1 true, i1 %825
  br i1 %826, label %834, label %827

827:                                              ; preds = %822
  %828 = getelementptr inbounds [2 x %struct.LIST], ptr %792, i64 0, i64 1
  %829 = load ptr, ptr %828, align 8, !tbaa !14
  store ptr %829, ptr @zz_tmp, align 8, !tbaa !9
  %830 = getelementptr inbounds [2 x %struct.LIST], ptr %823, i64 0, i64 1
  %831 = load ptr, ptr %830, align 8, !tbaa !14
  store ptr %831, ptr %828, align 8, !tbaa !14
  %832 = getelementptr inbounds [2 x %struct.LIST], ptr %831, i64 0, i64 1, i32 1
  store ptr %792, ptr %832, align 8, !tbaa !14
  store ptr %829, ptr %830, align 8, !tbaa !14
  %833 = getelementptr inbounds [2 x %struct.LIST], ptr %829, i64 0, i64 1, i32 1
  store ptr %823, ptr %833, align 8, !tbaa !14
  br label %834

834:                                              ; preds = %822, %827
  %835 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %836 = load ptr, ptr %835, align 8, !tbaa !14
  %837 = icmp eq ptr %836, %0
  br i1 %837, label %838, label %839

838:                                              ; preds = %834
  store ptr null, ptr @xx_tmp, align 8, !tbaa !9
  br label %851

839:                                              ; preds = %834
  %840 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %841 = load ptr, ptr %840, align 8, !tbaa !14
  %842 = getelementptr inbounds [2 x %struct.LIST], ptr %836, i64 0, i64 1
  store ptr %841, ptr %842, align 8, !tbaa !14
  %843 = getelementptr inbounds [2 x %struct.LIST], ptr %841, i64 0, i64 1, i32 1
  store ptr %836, ptr %843, align 8, !tbaa !14
  store ptr %0, ptr %835, align 8, !tbaa !14
  store ptr %0, ptr %840, align 8, !tbaa !14
  store ptr %836, ptr @xx_tmp, align 8, !tbaa !9
  store ptr %625, ptr @zz_res, align 8, !tbaa !9
  %844 = icmp eq ptr %625, null
  br i1 %844, label %853, label %845

845:                                              ; preds = %839
  %846 = load ptr, ptr %842, align 8, !tbaa !14
  store ptr %846, ptr @zz_tmp, align 8, !tbaa !9
  %847 = getelementptr inbounds [2 x %struct.LIST], ptr %625, i64 0, i64 1
  %848 = load ptr, ptr %847, align 8, !tbaa !14
  store ptr %848, ptr %842, align 8, !tbaa !14
  %849 = getelementptr inbounds [2 x %struct.LIST], ptr %848, i64 0, i64 1, i32 1
  store ptr %836, ptr %849, align 8, !tbaa !14
  store ptr %846, ptr %847, align 8, !tbaa !14
  %850 = getelementptr inbounds [2 x %struct.LIST], ptr %846, i64 0, i64 1, i32 1
  br label %851

851:                                              ; preds = %845, %838
  %852 = phi ptr [ @zz_res, %838 ], [ %850, %845 ]
  store ptr %625, ptr %852, align 8, !tbaa !14
  br label %853

853:                                              ; preds = %839, %851, %753, %765, %666, %680
  %854 = phi ptr [ %661, %680 ], [ %661, %666 ], [ %625, %765 ], [ %625, %753 ], [ %625, %851 ], [ %625, %839 ]
  store ptr %0, ptr @zz_hold, align 8, !tbaa !9
  %855 = load i8, ptr %5, align 8, !tbaa !14
  %856 = add i8 %855, -11
  %857 = icmp ult i8 %856, 2
  %858 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 1
  %859 = zext i8 %855 to i64
  %860 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %859
  %861 = select i1 %857, ptr %858, ptr %860
  %862 = load i8, ptr %861, align 1, !tbaa !14
  %863 = zext i8 %862 to i32
  store i32 %863, ptr @zz_size, align 4, !tbaa !5
  %864 = zext i8 %862 to i64
  %865 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %864
  %866 = load ptr, ptr %865, align 8, !tbaa !9
  store ptr %866, ptr %0, align 8, !tbaa !14
  %867 = load ptr, ptr @zz_hold, align 8, !tbaa !9
  %868 = load i32, ptr @zz_size, align 4, !tbaa !5
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %869
  store ptr %867, ptr %870, align 8, !tbaa !9
  br label %871

871:                                              ; preds = %47, %853, %58, %34, %634, %12
  %872 = phi ptr [ %0, %12 ], [ %0, %634 ], [ %0, %34 ], [ %0, %58 ], [ %854, %853 ], [ %0, %47 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #12
  ret ptr %872
}

declare i32 @FontMapping(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @FontChange(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @FontHalfXHeight(i32 noundef) local_unnamed_addr #3

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @DoAddGap(ptr noundef %0) unnamed_addr #0 {
  %2 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !14
  %3 = zext i8 %2 to i32
  store i32 %3, ptr @zz_size, align 4, !tbaa !5
  %4 = zext i8 %2 to i64
  %5 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %10 = tail call ptr @GetMemory(i32 noundef %3, ptr noundef %9) #12
  store ptr %10, ptr @zz_hold, align 8, !tbaa !9
  br label %13

11:                                               ; preds = %1
  store ptr %6, ptr @zz_hold, align 8, !tbaa !9
  %12 = load ptr, ptr %6, align 8, !tbaa !14
  store ptr %12, ptr %5, align 8, !tbaa !9
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi ptr [ %10, %8 ], [ %6, %11 ]
  %15 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  store i8 1, ptr %15, align 8, !tbaa !14
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1
  %17 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1, i32 1
  store ptr %14, ptr %17, align 8, !tbaa !14
  store ptr %14, ptr %16, align 8, !tbaa !14
  %18 = getelementptr inbounds %struct.LIST, ptr %14, i64 0, i32 1
  store ptr %14, ptr %18, align 8, !tbaa !14
  store ptr %14, ptr %14, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %20 = load i16, ptr %19, align 2, !tbaa !14
  %21 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1, i32 0, i32 2
  store i16 %20, ptr %21, align 2, !tbaa !14
  %22 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1048575
  %25 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, -1048576
  %28 = or disjoint i32 %27, %24
  store i32 %28, ptr %25, align 4
  %29 = load i32, ptr %22, align 4
  %30 = and i32 %29, -1048576
  %31 = or disjoint i32 %30, %24
  store i32 %31, ptr %25, align 4
  %32 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 2
  %33 = getelementptr inbounds i8, ptr %14, i64 42
  store i8 0, ptr %33, align 2, !tbaa !14
  %34 = getelementptr inbounds i8, ptr %14, i64 41
  store i8 0, ptr %34, align 1, !tbaa !14
  %35 = getelementptr inbounds %struct.gapobj_type, ptr %14, i64 0, i32 3
  %36 = load i16, ptr %35, align 4
  %37 = and i16 %36, 127
  %38 = or disjoint i16 %37, 9856
  store i16 %38, ptr %35, align 4
  %39 = getelementptr inbounds %struct.gapobj_type, ptr %14, i64 0, i32 3, i32 1
  store i16 0, ptr %39, align 2, !tbaa !14
  %40 = load i32, ptr %32, align 8
  %41 = and i32 %40, -1610612737
  %42 = or disjoint i32 %41, 536870912
  store i32 %42, ptr %32, align 8
  %43 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %44 = zext i8 %43 to i32
  store i32 %44, ptr @zz_size, align 4, !tbaa !5
  %45 = zext i8 %43 to i64
  %46 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %13
  %50 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %51 = tail call ptr @GetMemory(i32 noundef %44, ptr noundef %50) #12
  br label %54

52:                                               ; preds = %13
  store ptr %47, ptr @zz_hold, align 8, !tbaa !9
  %53 = load ptr, ptr %47, align 8, !tbaa !14
  store ptr %53, ptr %46, align 8, !tbaa !9
  br label %54

54:                                               ; preds = %49, %52
  %55 = phi ptr [ %51, %49 ], [ %47, %52 ]
  %56 = getelementptr inbounds %struct.word_type, ptr %55, i64 0, i32 1
  store i8 0, ptr %56, align 8, !tbaa !14
  %57 = getelementptr inbounds [2 x %struct.LIST], ptr %55, i64 0, i64 1, i32 1
  store ptr %55, ptr %57, align 8, !tbaa !14
  %58 = getelementptr inbounds [2 x %struct.LIST], ptr %55, i64 0, i64 1
  store ptr %55, ptr %58, align 8, !tbaa !14
  %59 = getelementptr inbounds %struct.LIST, ptr %55, i64 0, i32 1
  store ptr %55, ptr %59, align 8, !tbaa !14
  store ptr %55, ptr %55, align 8, !tbaa !14
  store ptr %55, ptr @xx_link, align 8, !tbaa !9
  store ptr %55, ptr @zz_res, align 8, !tbaa !9
  store ptr %0, ptr @zz_hold, align 8, !tbaa !9
  %60 = load ptr, ptr %0, align 8, !tbaa !14
  store ptr %60, ptr @zz_tmp, align 8, !tbaa !9
  %61 = load ptr, ptr %55, align 8, !tbaa !14
  store ptr %61, ptr %0, align 8, !tbaa !14
  %62 = load ptr, ptr @zz_hold, align 8, !tbaa !9
  %63 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %64 = load ptr, ptr %63, align 8, !tbaa !14
  %65 = getelementptr inbounds %struct.LIST, ptr %64, i64 0, i32 1
  store ptr %62, ptr %65, align 8, !tbaa !14
  %66 = load ptr, ptr @zz_tmp, align 8, !tbaa !9
  store ptr %66, ptr %63, align 8, !tbaa !14
  %67 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %68 = getelementptr inbounds %struct.LIST, ptr %66, i64 0, i32 1
  store ptr %67, ptr %68, align 8, !tbaa !14
  %69 = load ptr, ptr @xx_link, align 8, !tbaa !9
  store ptr %69, ptr @zz_res, align 8, !tbaa !9
  store ptr %14, ptr @zz_hold, align 8, !tbaa !9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %54
  %72 = load ptr, ptr %16, align 8, !tbaa !14
  store ptr %72, ptr @zz_tmp, align 8, !tbaa !9
  %73 = getelementptr inbounds [2 x %struct.LIST], ptr %69, i64 0, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !14
  store ptr %74, ptr %16, align 8, !tbaa !14
  %75 = getelementptr inbounds [2 x %struct.LIST], ptr %74, i64 0, i64 1, i32 1
  store ptr %14, ptr %75, align 8, !tbaa !14
  store ptr %72, ptr %73, align 8, !tbaa !14
  %76 = getelementptr inbounds [2 x %struct.LIST], ptr %72, i64 0, i64 1, i32 1
  store ptr %69, ptr %76, align 8, !tbaa !14
  br label %77

77:                                               ; preds = %54, %71
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @DoVShift(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 29), align 1, !tbaa !14
  %5 = zext i8 %4 to i32
  store i32 %5, ptr @zz_size, align 4, !tbaa !5
  %6 = zext i8 %4 to i64
  %7 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %12 = tail call ptr @GetMemory(i32 noundef %5, ptr noundef %11) #12
  store ptr %12, ptr @zz_hold, align 8, !tbaa !9
  br label %15

13:                                               ; preds = %3
  store ptr %8, ptr @zz_hold, align 8, !tbaa !9
  %14 = load ptr, ptr %8, align 8, !tbaa !14
  store ptr %14, ptr %7, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi ptr [ %12, %10 ], [ %8, %13 ]
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  store i8 29, ptr %17, align 8, !tbaa !14
  %18 = getelementptr inbounds [2 x %struct.LIST], ptr %16, i64 0, i64 1, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !14
  %19 = getelementptr inbounds [2 x %struct.LIST], ptr %16, i64 0, i64 1
  store ptr %16, ptr %19, align 8, !tbaa !14
  %20 = getelementptr inbounds %struct.LIST, ptr %16, i64 0, i32 1
  store ptr %16, ptr %20, align 8, !tbaa !14
  store ptr %16, ptr %16, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %22 = load i16, ptr %21, align 2, !tbaa !14
  %23 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1, i32 0, i32 2
  store i16 %22, ptr %23, align 2, !tbaa !14
  %24 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1048575
  %27 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -1048576
  %30 = or disjoint i32 %29, %26
  store i32 %30, ptr %27, align 4
  %31 = load i32, ptr %24, align 4
  %32 = and i32 %31, -1048576
  %33 = or disjoint i32 %32, %26
  store i32 %33, ptr %27, align 4
  %34 = getelementptr inbounds %struct.closure_type, ptr %16, i64 0, i32 4
  %35 = getelementptr inbounds %struct.closure_type, ptr %16, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 160, ptr %35, align 2, !tbaa !14
  %36 = load i16, ptr %34, align 8
  %37 = and i16 %36, 1023
  %38 = or disjoint i16 %37, 9216
  store i16 %38, ptr %34, align 8
  %39 = trunc i32 %1 to i16
  %40 = getelementptr inbounds %struct.closure_type, ptr %16, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %39, ptr %40, align 2, !tbaa !14
  %41 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, -1610612737
  %44 = or disjoint i32 %43, 536870912
  store i32 %44, ptr %41, align 8
  %45 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %46 = zext i8 %45 to i32
  store i32 %46, ptr @zz_size, align 4, !tbaa !5
  %47 = zext i8 %45 to i64
  %48 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %15
  %52 = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %53 = tail call ptr @GetMemory(i32 noundef %46, ptr noundef %52) #12
  br label %56

54:                                               ; preds = %15
  store ptr %49, ptr @zz_hold, align 8, !tbaa !9
  %55 = load ptr, ptr %49, align 8, !tbaa !14
  store ptr %55, ptr %48, align 8, !tbaa !9
  br label %56

56:                                               ; preds = %51, %54
  %57 = phi ptr [ %53, %51 ], [ %49, %54 ]
  %58 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 1
  store i8 0, ptr %58, align 8, !tbaa !14
  %59 = getelementptr inbounds [2 x %struct.LIST], ptr %57, i64 0, i64 1, i32 1
  store ptr %57, ptr %59, align 8, !tbaa !14
  %60 = getelementptr inbounds [2 x %struct.LIST], ptr %57, i64 0, i64 1
  store ptr %57, ptr %60, align 8, !tbaa !14
  %61 = getelementptr inbounds %struct.LIST, ptr %57, i64 0, i32 1
  store ptr %57, ptr %61, align 8, !tbaa !14
  store ptr %57, ptr %57, align 8, !tbaa !14
  store ptr %57, ptr @xx_link, align 8, !tbaa !9
  store ptr %57, ptr @zz_res, align 8, !tbaa !9
  store ptr %16, ptr @zz_hold, align 8, !tbaa !9
  %62 = load ptr, ptr %16, align 8, !tbaa !14
  store ptr %62, ptr @zz_tmp, align 8, !tbaa !9
  %63 = load ptr, ptr %57, align 8, !tbaa !14
  store ptr %63, ptr %16, align 8, !tbaa !14
  %64 = load ptr, ptr @zz_hold, align 8, !tbaa !9
  %65 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %66 = load ptr, ptr %65, align 8, !tbaa !14
  %67 = getelementptr inbounds %struct.LIST, ptr %66, i64 0, i32 1
  store ptr %64, ptr %67, align 8, !tbaa !14
  %68 = load ptr, ptr @zz_tmp, align 8, !tbaa !9
  store ptr %68, ptr %65, align 8, !tbaa !14
  %69 = load ptr, ptr @zz_res, align 8, !tbaa !9
  %70 = getelementptr inbounds %struct.LIST, ptr %68, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !14
  %71 = load ptr, ptr @xx_link, align 8, !tbaa !9
  store ptr %71, ptr @zz_res, align 8, !tbaa !9
  store ptr %2, ptr @zz_hold, align 8, !tbaa !9
  %72 = icmp eq ptr %2, null
  %73 = icmp eq ptr %71, null
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %56
  %76 = getelementptr inbounds [2 x %struct.LIST], ptr %2, i64 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !14
  store ptr %77, ptr @zz_tmp, align 8, !tbaa !9
  %78 = getelementptr inbounds [2 x %struct.LIST], ptr %71, i64 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !14
  store ptr %79, ptr %76, align 8, !tbaa !14
  %80 = getelementptr inbounds [2 x %struct.LIST], ptr %79, i64 0, i64 1, i32 1
  store ptr %2, ptr %80, align 8, !tbaa !14
  store ptr %77, ptr %78, align 8, !tbaa !14
  %81 = getelementptr inbounds [2 x %struct.LIST], ptr %77, i64 0, i64 1, i32 1
  store ptr %71, ptr %81, align 8, !tbaa !14
  br label %82

82:                                               ; preds = %56, %75
  ret ptr %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MapIsLowerCase(i8 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [20 x ptr], ptr @MapTable, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.mapvec, ptr %5, i64 0, i32 7
  %7 = zext i8 %0 to i64
  %8 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"mapvec", !10, i64 0, !13, i64 8, !6, i64 12, !6, i64 16, !10, i64 24, !7, i64 32, !7, i64 2080, !7, i64 2433}
!13 = !{!"short", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!12, !6, i64 12}
!16 = !{!12, !13, i64 8}
!17 = !{!12, !6, i64 16}
!18 = !{!12, !10, i64 24}
!19 = !{!20, !10, i64 80}
!20 = !{!"back_end_rec", !6, i64 0, !10, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224}
!21 = !{!20, !6, i64 16}
!22 = !{!13, !13, i64 0}
