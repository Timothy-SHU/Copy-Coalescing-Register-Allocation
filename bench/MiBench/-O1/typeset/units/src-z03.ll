; ModuleID = 'src/z03.c'
source_filename = "src/z03.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.anon.14 = type { i32, i32, [1 x %struct.filetab_rec] }
%struct.filetab_rec = type { ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }

@no_fpos = dso_local local_unnamed_addr global ptr @no_file_pos, align 8
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@file_type = internal unnamed_addr global [11 x ptr] zeroinitializer, align 16
@file_path = internal unnamed_addr global [8 x ptr] zeroinitializer, align 16
@file_tab = internal global ptr null, align 8
@empty_path = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"DefineFile: ftype!\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c".ld\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"database file %s where source file expected\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c".li\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"database index file %s where source file expected\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"file name %s%s is too long\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"DatabaseFileNum: filter file position unknown\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"DatabaseFileNum: unexpected file type\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"FileName: x == nilobj!\00", align 1
@FullFileName.ffbuff = internal global [2 x [512 x i8]] zeroinitializer, align 16
@FullFileName.ffbp = internal unnamed_addr global i32 1, align 4
@bp = internal unnamed_addr global i32 1, align 4
@buff = internal global [2 x [512 x i8]] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [29 x i8] c"EchoFileSource: x == nilobj!\00", align 1
@MsgCat = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"PosOfFile: file_tab entry is nilobj!\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"OpenIncGraphicFile!\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"gunzip -c %s > %s\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"lout.eps\00", align 1
@SafeExecution = external local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [39 x i8] c"safe execution prohibiting command: %s\00", align 1
@no_file_pos = internal global { i8, i8, i16, i8, i8, i8, i8 } zeroinitializer, align 4
@.str.32 = private unnamed_addr constant [44 x i8] c"run out of memory when enlarging file table\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"too many files (maximum is %d)\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"EchoFilePos: file_tab entry is nilobj!\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"file position %s... is too long to print\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [34 x i8] c"file path name %s%s%s is too long\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"files %s and %s both exist\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"-gz\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c".z\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"_z\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c".Z\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @InitFiles() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %2 = zext i8 %1 to i32
  store i32 %2, ptr @zz_size, align 4, !tbaa !8
  %3 = zext i8 %1 to i64
  %4 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %9 = tail call ptr @GetMemory(i32 noundef %2, ptr noundef %8) #15
  store ptr %9, ptr @zz_hold, align 8, !tbaa !10
  br label %12

10:                                               ; preds = %0
  store ptr %5, ptr @zz_hold, align 8, !tbaa !10
  %11 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %11, ptr %4, align 8, !tbaa !10
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi ptr [ %9, %7 ], [ %5, %10 ]
  %14 = getelementptr inbounds %struct.word_type, ptr %13, i64 0, i32 1
  store i8 17, ptr %14, align 8, !tbaa !5
  %15 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !5
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1
  store ptr %13, ptr %16, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.LIST, ptr %13, i64 0, i32 1
  store ptr %13, ptr %17, align 8, !tbaa !5
  store ptr %13, ptr %13, align 8, !tbaa !5
  store ptr %13, ptr @file_type, align 16, !tbaa !10
  %18 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %19 = zext i8 %18 to i32
  store i32 %19, ptr @zz_size, align 4, !tbaa !8
  %20 = zext i8 %18 to i64
  %21 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %12
  store ptr %22, ptr @zz_hold, align 8, !tbaa !10
  %25 = load ptr, ptr %22, align 8, !tbaa !5
  store ptr %25, ptr %21, align 8, !tbaa !10
  br label %29

26:                                               ; preds = %12
  %27 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %28 = tail call ptr @GetMemory(i32 noundef %19, ptr noundef %27) #15
  store ptr %28, ptr @zz_hold, align 8, !tbaa !10
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi ptr [ %28, %26 ], [ %22, %24 ]
  %31 = getelementptr inbounds %struct.word_type, ptr %30, i64 0, i32 1
  store i8 17, ptr %31, align 8, !tbaa !5
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1, i32 1
  store ptr %30, ptr %32, align 8, !tbaa !5
  %33 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1
  store ptr %30, ptr %33, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.LIST, ptr %30, i64 0, i32 1
  store ptr %30, ptr %34, align 8, !tbaa !5
  store ptr %30, ptr %30, align 8, !tbaa !5
  store ptr %30, ptr getelementptr inbounds ([11 x ptr], ptr @file_type, i64 0, i64 1), align 8, !tbaa !10
  %35 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %36 = zext i8 %35 to i32
  store i32 %36, ptr @zz_size, align 4, !tbaa !8
  %37 = zext i8 %35 to i64
  %38 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %29
  store ptr %39, ptr @zz_hold, align 8, !tbaa !10
  %42 = load ptr, ptr %39, align 8, !tbaa !5
  store ptr %42, ptr %38, align 8, !tbaa !10
  br label %46

43:                                               ; preds = %29
  %44 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %45 = tail call ptr @GetMemory(i32 noundef %36, ptr noundef %44) #15
  store ptr %45, ptr @zz_hold, align 8, !tbaa !10
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi ptr [ %45, %43 ], [ %39, %41 ]
  %48 = getelementptr inbounds %struct.word_type, ptr %47, i64 0, i32 1
  store i8 17, ptr %48, align 8, !tbaa !5
  %49 = getelementptr inbounds [2 x %struct.LIST], ptr %47, i64 0, i64 1, i32 1
  store ptr %47, ptr %49, align 8, !tbaa !5
  %50 = getelementptr inbounds [2 x %struct.LIST], ptr %47, i64 0, i64 1
  store ptr %47, ptr %50, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.LIST, ptr %47, i64 0, i32 1
  store ptr %47, ptr %51, align 8, !tbaa !5
  store ptr %47, ptr %47, align 8, !tbaa !5
  store ptr %47, ptr getelementptr inbounds ([11 x ptr], ptr @file_type, i64 0, i64 2), align 16, !tbaa !10
  %52 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %53 = zext i8 %52 to i32
  store i32 %53, ptr @zz_size, align 4, !tbaa !8
  %54 = zext i8 %52 to i64
  %55 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %46
  store ptr %56, ptr @zz_hold, align 8, !tbaa !10
  %59 = load ptr, ptr %56, align 8, !tbaa !5
  store ptr %59, ptr %55, align 8, !tbaa !10
  br label %63

60:                                               ; preds = %46
  %61 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %62 = tail call ptr @GetMemory(i32 noundef %53, ptr noundef %61) #15
  store ptr %62, ptr @zz_hold, align 8, !tbaa !10
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi ptr [ %62, %60 ], [ %56, %58 ]
  %65 = getelementptr inbounds %struct.word_type, ptr %64, i64 0, i32 1
  store i8 17, ptr %65, align 8, !tbaa !5
  %66 = getelementptr inbounds [2 x %struct.LIST], ptr %64, i64 0, i64 1, i32 1
  store ptr %64, ptr %66, align 8, !tbaa !5
  %67 = getelementptr inbounds [2 x %struct.LIST], ptr %64, i64 0, i64 1
  store ptr %64, ptr %67, align 8, !tbaa !5
  %68 = getelementptr inbounds %struct.LIST, ptr %64, i64 0, i32 1
  store ptr %64, ptr %68, align 8, !tbaa !5
  store ptr %64, ptr %64, align 8, !tbaa !5
  store ptr %64, ptr getelementptr inbounds ([11 x ptr], ptr @file_type, i64 0, i64 3), align 8, !tbaa !10
  %69 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %70 = zext i8 %69 to i32
  store i32 %70, ptr @zz_size, align 4, !tbaa !8
  %71 = zext i8 %69 to i64
  %72 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !10
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %63
  store ptr %73, ptr @zz_hold, align 8, !tbaa !10
  %76 = load ptr, ptr %73, align 8, !tbaa !5
  store ptr %76, ptr %72, align 8, !tbaa !10
  br label %80

77:                                               ; preds = %63
  %78 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %79 = tail call ptr @GetMemory(i32 noundef %70, ptr noundef %78) #15
  store ptr %79, ptr @zz_hold, align 8, !tbaa !10
  br label %80

80:                                               ; preds = %77, %75
  %81 = phi ptr [ %79, %77 ], [ %73, %75 ]
  %82 = getelementptr inbounds %struct.word_type, ptr %81, i64 0, i32 1
  store i8 17, ptr %82, align 8, !tbaa !5
  %83 = getelementptr inbounds [2 x %struct.LIST], ptr %81, i64 0, i64 1, i32 1
  store ptr %81, ptr %83, align 8, !tbaa !5
  %84 = getelementptr inbounds [2 x %struct.LIST], ptr %81, i64 0, i64 1
  store ptr %81, ptr %84, align 8, !tbaa !5
  %85 = getelementptr inbounds %struct.LIST, ptr %81, i64 0, i32 1
  store ptr %81, ptr %85, align 8, !tbaa !5
  store ptr %81, ptr %81, align 8, !tbaa !5
  store ptr %81, ptr getelementptr inbounds ([11 x ptr], ptr @file_type, i64 0, i64 4), align 16, !tbaa !10
  %86 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %87 = zext i8 %86 to i32
  store i32 %87, ptr @zz_size, align 4, !tbaa !8
  %88 = zext i8 %86 to i64
  %89 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %80
  store ptr %90, ptr @zz_hold, align 8, !tbaa !10
  %93 = load ptr, ptr %90, align 8, !tbaa !5
  store ptr %93, ptr %89, align 8, !tbaa !10
  br label %97

94:                                               ; preds = %80
  %95 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %96 = tail call ptr @GetMemory(i32 noundef %87, ptr noundef %95) #15
  store ptr %96, ptr @zz_hold, align 8, !tbaa !10
  br label %97

97:                                               ; preds = %94, %92
  %98 = phi ptr [ %96, %94 ], [ %90, %92 ]
  %99 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  store i8 17, ptr %99, align 8, !tbaa !5
  %100 = getelementptr inbounds [2 x %struct.LIST], ptr %98, i64 0, i64 1, i32 1
  store ptr %98, ptr %100, align 8, !tbaa !5
  %101 = getelementptr inbounds [2 x %struct.LIST], ptr %98, i64 0, i64 1
  store ptr %98, ptr %101, align 8, !tbaa !5
  %102 = getelementptr inbounds %struct.LIST, ptr %98, i64 0, i32 1
  store ptr %98, ptr %102, align 8, !tbaa !5
  store ptr %98, ptr %98, align 8, !tbaa !5
  store ptr %98, ptr getelementptr inbounds ([11 x ptr], ptr @file_type, i64 0, i64 5), align 8, !tbaa !10
  %103 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %104 = zext i8 %103 to i32
  store i32 %104, ptr @zz_size, align 4, !tbaa !8
  %105 = zext i8 %103 to i64
  %106 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !10
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %97
  store ptr %107, ptr @zz_hold, align 8, !tbaa !10
  %110 = load ptr, ptr %107, align 8, !tbaa !5
  store ptr %110, ptr %106, align 8, !tbaa !10
  br label %114

111:                                              ; preds = %97
  %112 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %113 = tail call ptr @GetMemory(i32 noundef %104, ptr noundef %112) #15
  store ptr %113, ptr @zz_hold, align 8, !tbaa !10
  br label %114

114:                                              ; preds = %111, %109
  %115 = phi ptr [ %113, %111 ], [ %107, %109 ]
  %116 = getelementptr inbounds %struct.word_type, ptr %115, i64 0, i32 1
  store i8 17, ptr %116, align 8, !tbaa !5
  %117 = getelementptr inbounds [2 x %struct.LIST], ptr %115, i64 0, i64 1, i32 1
  store ptr %115, ptr %117, align 8, !tbaa !5
  %118 = getelementptr inbounds [2 x %struct.LIST], ptr %115, i64 0, i64 1
  store ptr %115, ptr %118, align 8, !tbaa !5
  %119 = getelementptr inbounds %struct.LIST, ptr %115, i64 0, i32 1
  store ptr %115, ptr %119, align 8, !tbaa !5
  store ptr %115, ptr %115, align 8, !tbaa !5
  store ptr %115, ptr getelementptr inbounds ([11 x ptr], ptr @file_type, i64 0, i64 6), align 16, !tbaa !10
  %120 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %121 = zext i8 %120 to i32
  store i32 %121, ptr @zz_size, align 4, !tbaa !8
  %122 = zext i8 %120 to i64
  %123 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !10
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %114
  store ptr %124, ptr @zz_hold, align 8, !tbaa !10
  %127 = load ptr, ptr %124, align 8, !tbaa !5
  store ptr %127, ptr %123, align 8, !tbaa !10
  br label %131

128:                                              ; preds = %114
  %129 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %130 = tail call ptr @GetMemory(i32 noundef %121, ptr noundef %129) #15
  store ptr %130, ptr @zz_hold, align 8, !tbaa !10
  br label %131

131:                                              ; preds = %128, %126
  %132 = phi ptr [ %130, %128 ], [ %124, %126 ]
  %133 = getelementptr inbounds %struct.word_type, ptr %132, i64 0, i32 1
  store i8 17, ptr %133, align 8, !tbaa !5
  %134 = getelementptr inbounds [2 x %struct.LIST], ptr %132, i64 0, i64 1, i32 1
  store ptr %132, ptr %134, align 8, !tbaa !5
  %135 = getelementptr inbounds [2 x %struct.LIST], ptr %132, i64 0, i64 1
  store ptr %132, ptr %135, align 8, !tbaa !5
  %136 = getelementptr inbounds %struct.LIST, ptr %132, i64 0, i32 1
  store ptr %132, ptr %136, align 8, !tbaa !5
  store ptr %132, ptr %132, align 8, !tbaa !5
  store ptr %132, ptr getelementptr inbounds ([11 x ptr], ptr @file_type, i64 0, i64 7), align 8, !tbaa !10
  %137 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %138 = zext i8 %137 to i32
  store i32 %138, ptr @zz_size, align 4, !tbaa !8
  %139 = zext i8 %137 to i64
  %140 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !10
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %131
  store ptr %141, ptr @zz_hold, align 8, !tbaa !10
  %144 = load ptr, ptr %141, align 8, !tbaa !5
  store ptr %144, ptr %140, align 8, !tbaa !10
  br label %148

145:                                              ; preds = %131
  %146 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %147 = tail call ptr @GetMemory(i32 noundef %138, ptr noundef %146) #15
  store ptr %147, ptr @zz_hold, align 8, !tbaa !10
  br label %148

148:                                              ; preds = %145, %143
  %149 = phi ptr [ %147, %145 ], [ %141, %143 ]
  %150 = getelementptr inbounds %struct.word_type, ptr %149, i64 0, i32 1
  store i8 17, ptr %150, align 8, !tbaa !5
  %151 = getelementptr inbounds [2 x %struct.LIST], ptr %149, i64 0, i64 1, i32 1
  store ptr %149, ptr %151, align 8, !tbaa !5
  %152 = getelementptr inbounds [2 x %struct.LIST], ptr %149, i64 0, i64 1
  store ptr %149, ptr %152, align 8, !tbaa !5
  %153 = getelementptr inbounds %struct.LIST, ptr %149, i64 0, i32 1
  store ptr %149, ptr %153, align 8, !tbaa !5
  store ptr %149, ptr %149, align 8, !tbaa !5
  store ptr %149, ptr getelementptr inbounds ([11 x ptr], ptr @file_type, i64 0, i64 8), align 16, !tbaa !10
  %154 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %155 = zext i8 %154 to i32
  store i32 %155, ptr @zz_size, align 4, !tbaa !8
  %156 = zext i8 %154 to i64
  %157 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !10
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %148
  store ptr %158, ptr @zz_hold, align 8, !tbaa !10
  %161 = load ptr, ptr %158, align 8, !tbaa !5
  store ptr %161, ptr %157, align 8, !tbaa !10
  br label %165

162:                                              ; preds = %148
  %163 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %164 = tail call ptr @GetMemory(i32 noundef %155, ptr noundef %163) #15
  store ptr %164, ptr @zz_hold, align 8, !tbaa !10
  br label %165

165:                                              ; preds = %162, %160
  %166 = phi ptr [ %164, %162 ], [ %158, %160 ]
  %167 = getelementptr inbounds %struct.word_type, ptr %166, i64 0, i32 1
  store i8 17, ptr %167, align 8, !tbaa !5
  %168 = getelementptr inbounds [2 x %struct.LIST], ptr %166, i64 0, i64 1, i32 1
  store ptr %166, ptr %168, align 8, !tbaa !5
  %169 = getelementptr inbounds [2 x %struct.LIST], ptr %166, i64 0, i64 1
  store ptr %166, ptr %169, align 8, !tbaa !5
  %170 = getelementptr inbounds %struct.LIST, ptr %166, i64 0, i32 1
  store ptr %166, ptr %170, align 8, !tbaa !5
  store ptr %166, ptr %166, align 8, !tbaa !5
  store ptr %166, ptr getelementptr inbounds ([11 x ptr], ptr @file_type, i64 0, i64 9), align 8, !tbaa !10
  %171 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %172 = zext i8 %171 to i32
  store i32 %172, ptr @zz_size, align 4, !tbaa !8
  %173 = zext i8 %171 to i64
  %174 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !10
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %165
  store ptr %175, ptr @zz_hold, align 8, !tbaa !10
  %178 = load ptr, ptr %175, align 8, !tbaa !5
  store ptr %178, ptr %174, align 8, !tbaa !10
  br label %182

179:                                              ; preds = %165
  %180 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %181 = tail call ptr @GetMemory(i32 noundef %172, ptr noundef %180) #15
  store ptr %181, ptr @zz_hold, align 8, !tbaa !10
  br label %182

182:                                              ; preds = %179, %177
  %183 = phi ptr [ %181, %179 ], [ %175, %177 ]
  %184 = getelementptr inbounds %struct.word_type, ptr %183, i64 0, i32 1
  store i8 17, ptr %184, align 8, !tbaa !5
  %185 = getelementptr inbounds [2 x %struct.LIST], ptr %183, i64 0, i64 1, i32 1
  store ptr %183, ptr %185, align 8, !tbaa !5
  %186 = getelementptr inbounds [2 x %struct.LIST], ptr %183, i64 0, i64 1
  store ptr %183, ptr %186, align 8, !tbaa !5
  %187 = getelementptr inbounds %struct.LIST, ptr %183, i64 0, i32 1
  store ptr %183, ptr %187, align 8, !tbaa !5
  store ptr %183, ptr %183, align 8, !tbaa !5
  store ptr %183, ptr getelementptr inbounds ([11 x ptr], ptr @file_type, i64 0, i64 10), align 16, !tbaa !10
  %188 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %189 = zext i8 %188 to i32
  store i32 %189, ptr @zz_size, align 4, !tbaa !8
  %190 = zext i8 %188 to i64
  %191 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !10
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %182
  %195 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %196 = tail call ptr @GetMemory(i32 noundef %189, ptr noundef %195) #15
  store ptr %196, ptr @zz_hold, align 8, !tbaa !10
  br label %199

197:                                              ; preds = %182
  store ptr %192, ptr @zz_hold, align 8, !tbaa !10
  %198 = load ptr, ptr %192, align 8, !tbaa !5
  store ptr %198, ptr %191, align 8, !tbaa !10
  br label %199

199:                                              ; preds = %194, %197
  %200 = phi ptr [ %196, %194 ], [ %192, %197 ]
  %201 = getelementptr inbounds %struct.word_type, ptr %200, i64 0, i32 1
  store i8 17, ptr %201, align 8, !tbaa !5
  %202 = getelementptr inbounds [2 x %struct.LIST], ptr %200, i64 0, i64 1, i32 1
  store ptr %200, ptr %202, align 8, !tbaa !5
  %203 = getelementptr inbounds [2 x %struct.LIST], ptr %200, i64 0, i64 1
  store ptr %200, ptr %203, align 8, !tbaa !5
  %204 = getelementptr inbounds %struct.LIST, ptr %200, i64 0, i32 1
  store ptr %200, ptr %204, align 8, !tbaa !5
  store ptr %200, ptr %200, align 8, !tbaa !5
  store ptr %200, ptr @file_path, align 16, !tbaa !10
  %205 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %206 = zext i8 %205 to i32
  store i32 %206, ptr @zz_size, align 4, !tbaa !8
  %207 = zext i8 %205 to i64
  %208 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !10
  %210 = icmp eq ptr %209, null
  br i1 %210, label %213, label %211

211:                                              ; preds = %199
  store ptr %209, ptr @zz_hold, align 8, !tbaa !10
  %212 = load ptr, ptr %209, align 8, !tbaa !5
  store ptr %212, ptr %208, align 8, !tbaa !10
  br label %216

213:                                              ; preds = %199
  %214 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %215 = tail call ptr @GetMemory(i32 noundef %206, ptr noundef %214) #15
  store ptr %215, ptr @zz_hold, align 8, !tbaa !10
  br label %216

216:                                              ; preds = %213, %211
  %217 = phi ptr [ %215, %213 ], [ %209, %211 ]
  %218 = getelementptr inbounds %struct.word_type, ptr %217, i64 0, i32 1
  store i8 17, ptr %218, align 8, !tbaa !5
  %219 = getelementptr inbounds [2 x %struct.LIST], ptr %217, i64 0, i64 1, i32 1
  store ptr %217, ptr %219, align 8, !tbaa !5
  %220 = getelementptr inbounds [2 x %struct.LIST], ptr %217, i64 0, i64 1
  store ptr %217, ptr %220, align 8, !tbaa !5
  %221 = getelementptr inbounds %struct.LIST, ptr %217, i64 0, i32 1
  store ptr %217, ptr %221, align 8, !tbaa !5
  store ptr %217, ptr %217, align 8, !tbaa !5
  store ptr %217, ptr getelementptr inbounds ([8 x ptr], ptr @file_path, i64 0, i64 1), align 8, !tbaa !10
  %222 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %223 = zext i8 %222 to i32
  store i32 %223, ptr @zz_size, align 4, !tbaa !8
  %224 = zext i8 %222 to i64
  %225 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !10
  %227 = icmp eq ptr %226, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %216
  store ptr %226, ptr @zz_hold, align 8, !tbaa !10
  %229 = load ptr, ptr %226, align 8, !tbaa !5
  store ptr %229, ptr %225, align 8, !tbaa !10
  br label %233

230:                                              ; preds = %216
  %231 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %232 = tail call ptr @GetMemory(i32 noundef %223, ptr noundef %231) #15
  store ptr %232, ptr @zz_hold, align 8, !tbaa !10
  br label %233

233:                                              ; preds = %230, %228
  %234 = phi ptr [ %232, %230 ], [ %226, %228 ]
  %235 = getelementptr inbounds %struct.word_type, ptr %234, i64 0, i32 1
  store i8 17, ptr %235, align 8, !tbaa !5
  %236 = getelementptr inbounds [2 x %struct.LIST], ptr %234, i64 0, i64 1, i32 1
  store ptr %234, ptr %236, align 8, !tbaa !5
  %237 = getelementptr inbounds [2 x %struct.LIST], ptr %234, i64 0, i64 1
  store ptr %234, ptr %237, align 8, !tbaa !5
  %238 = getelementptr inbounds %struct.LIST, ptr %234, i64 0, i32 1
  store ptr %234, ptr %238, align 8, !tbaa !5
  store ptr %234, ptr %234, align 8, !tbaa !5
  store ptr %234, ptr getelementptr inbounds ([8 x ptr], ptr @file_path, i64 0, i64 2), align 16, !tbaa !10
  %239 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %240 = zext i8 %239 to i32
  store i32 %240, ptr @zz_size, align 4, !tbaa !8
  %241 = zext i8 %239 to i64
  %242 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !10
  %244 = icmp eq ptr %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %233
  store ptr %243, ptr @zz_hold, align 8, !tbaa !10
  %246 = load ptr, ptr %243, align 8, !tbaa !5
  store ptr %246, ptr %242, align 8, !tbaa !10
  br label %250

247:                                              ; preds = %233
  %248 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %249 = tail call ptr @GetMemory(i32 noundef %240, ptr noundef %248) #15
  store ptr %249, ptr @zz_hold, align 8, !tbaa !10
  br label %250

250:                                              ; preds = %247, %245
  %251 = phi ptr [ %249, %247 ], [ %243, %245 ]
  %252 = getelementptr inbounds %struct.word_type, ptr %251, i64 0, i32 1
  store i8 17, ptr %252, align 8, !tbaa !5
  %253 = getelementptr inbounds [2 x %struct.LIST], ptr %251, i64 0, i64 1, i32 1
  store ptr %251, ptr %253, align 8, !tbaa !5
  %254 = getelementptr inbounds [2 x %struct.LIST], ptr %251, i64 0, i64 1
  store ptr %251, ptr %254, align 8, !tbaa !5
  %255 = getelementptr inbounds %struct.LIST, ptr %251, i64 0, i32 1
  store ptr %251, ptr %255, align 8, !tbaa !5
  store ptr %251, ptr %251, align 8, !tbaa !5
  store ptr %251, ptr getelementptr inbounds ([8 x ptr], ptr @file_path, i64 0, i64 3), align 8, !tbaa !10
  %256 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %257 = zext i8 %256 to i32
  store i32 %257, ptr @zz_size, align 4, !tbaa !8
  %258 = zext i8 %256 to i64
  %259 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !10
  %261 = icmp eq ptr %260, null
  br i1 %261, label %264, label %262

262:                                              ; preds = %250
  store ptr %260, ptr @zz_hold, align 8, !tbaa !10
  %263 = load ptr, ptr %260, align 8, !tbaa !5
  store ptr %263, ptr %259, align 8, !tbaa !10
  br label %267

264:                                              ; preds = %250
  %265 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %266 = tail call ptr @GetMemory(i32 noundef %257, ptr noundef %265) #15
  store ptr %266, ptr @zz_hold, align 8, !tbaa !10
  br label %267

267:                                              ; preds = %264, %262
  %268 = phi ptr [ %266, %264 ], [ %260, %262 ]
  %269 = getelementptr inbounds %struct.word_type, ptr %268, i64 0, i32 1
  store i8 17, ptr %269, align 8, !tbaa !5
  %270 = getelementptr inbounds [2 x %struct.LIST], ptr %268, i64 0, i64 1, i32 1
  store ptr %268, ptr %270, align 8, !tbaa !5
  %271 = getelementptr inbounds [2 x %struct.LIST], ptr %268, i64 0, i64 1
  store ptr %268, ptr %271, align 8, !tbaa !5
  %272 = getelementptr inbounds %struct.LIST, ptr %268, i64 0, i32 1
  store ptr %268, ptr %272, align 8, !tbaa !5
  store ptr %268, ptr %268, align 8, !tbaa !5
  store ptr %268, ptr getelementptr inbounds ([8 x ptr], ptr @file_path, i64 0, i64 4), align 16, !tbaa !10
  %273 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %274 = zext i8 %273 to i32
  store i32 %274, ptr @zz_size, align 4, !tbaa !8
  %275 = zext i8 %273 to i64
  %276 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %275
  %277 = load ptr, ptr %276, align 8, !tbaa !10
  %278 = icmp eq ptr %277, null
  br i1 %278, label %281, label %279

279:                                              ; preds = %267
  store ptr %277, ptr @zz_hold, align 8, !tbaa !10
  %280 = load ptr, ptr %277, align 8, !tbaa !5
  store ptr %280, ptr %276, align 8, !tbaa !10
  br label %284

281:                                              ; preds = %267
  %282 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %283 = tail call ptr @GetMemory(i32 noundef %274, ptr noundef %282) #15
  store ptr %283, ptr @zz_hold, align 8, !tbaa !10
  br label %284

284:                                              ; preds = %281, %279
  %285 = phi ptr [ %283, %281 ], [ %277, %279 ]
  %286 = getelementptr inbounds %struct.word_type, ptr %285, i64 0, i32 1
  store i8 17, ptr %286, align 8, !tbaa !5
  %287 = getelementptr inbounds [2 x %struct.LIST], ptr %285, i64 0, i64 1, i32 1
  store ptr %285, ptr %287, align 8, !tbaa !5
  %288 = getelementptr inbounds [2 x %struct.LIST], ptr %285, i64 0, i64 1
  store ptr %285, ptr %288, align 8, !tbaa !5
  %289 = getelementptr inbounds %struct.LIST, ptr %285, i64 0, i32 1
  store ptr %285, ptr %289, align 8, !tbaa !5
  store ptr %285, ptr %285, align 8, !tbaa !5
  store ptr %285, ptr getelementptr inbounds ([8 x ptr], ptr @file_path, i64 0, i64 5), align 8, !tbaa !10
  %290 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %291 = zext i8 %290 to i32
  store i32 %291, ptr @zz_size, align 4, !tbaa !8
  %292 = zext i8 %290 to i64
  %293 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %292
  %294 = load ptr, ptr %293, align 8, !tbaa !10
  %295 = icmp eq ptr %294, null
  br i1 %295, label %298, label %296

296:                                              ; preds = %284
  store ptr %294, ptr @zz_hold, align 8, !tbaa !10
  %297 = load ptr, ptr %294, align 8, !tbaa !5
  store ptr %297, ptr %293, align 8, !tbaa !10
  br label %301

298:                                              ; preds = %284
  %299 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %300 = tail call ptr @GetMemory(i32 noundef %291, ptr noundef %299) #15
  store ptr %300, ptr @zz_hold, align 8, !tbaa !10
  br label %301

301:                                              ; preds = %298, %296
  %302 = phi ptr [ %300, %298 ], [ %294, %296 ]
  %303 = getelementptr inbounds %struct.word_type, ptr %302, i64 0, i32 1
  store i8 17, ptr %303, align 8, !tbaa !5
  %304 = getelementptr inbounds [2 x %struct.LIST], ptr %302, i64 0, i64 1, i32 1
  store ptr %302, ptr %304, align 8, !tbaa !5
  %305 = getelementptr inbounds [2 x %struct.LIST], ptr %302, i64 0, i64 1
  store ptr %302, ptr %305, align 8, !tbaa !5
  %306 = getelementptr inbounds %struct.LIST, ptr %302, i64 0, i32 1
  store ptr %302, ptr %306, align 8, !tbaa !5
  store ptr %302, ptr %302, align 8, !tbaa !5
  store ptr %302, ptr getelementptr inbounds ([8 x ptr], ptr @file_path, i64 0, i64 6), align 16, !tbaa !10
  %307 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %308 = zext i8 %307 to i32
  store i32 %308, ptr @zz_size, align 4, !tbaa !8
  %309 = zext i8 %307 to i64
  %310 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %309
  %311 = load ptr, ptr %310, align 8, !tbaa !10
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313

313:                                              ; preds = %301
  store ptr %311, ptr @zz_hold, align 8, !tbaa !10
  %314 = load ptr, ptr %311, align 8, !tbaa !5
  store ptr %314, ptr %310, align 8, !tbaa !10
  br label %318

315:                                              ; preds = %301
  %316 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %317 = tail call ptr @GetMemory(i32 noundef %308, ptr noundef %316) #15
  store ptr %317, ptr @zz_hold, align 8, !tbaa !10
  br label %318

318:                                              ; preds = %315, %313
  %319 = phi ptr [ %317, %315 ], [ %311, %313 ]
  %320 = getelementptr inbounds %struct.word_type, ptr %319, i64 0, i32 1
  store i8 17, ptr %320, align 8, !tbaa !5
  %321 = getelementptr inbounds [2 x %struct.LIST], ptr %319, i64 0, i64 1, i32 1
  store ptr %319, ptr %321, align 8, !tbaa !5
  %322 = getelementptr inbounds [2 x %struct.LIST], ptr %319, i64 0, i64 1
  store ptr %319, ptr %322, align 8, !tbaa !5
  %323 = getelementptr inbounds %struct.LIST, ptr %319, i64 0, i32 1
  store ptr %319, ptr %323, align 8, !tbaa !5
  store ptr %319, ptr %319, align 8, !tbaa !5
  store ptr %319, ptr getelementptr inbounds ([8 x ptr], ptr @file_path, i64 0, i64 7), align 8, !tbaa !10
  %324 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #16
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %329

326:                                              ; preds = %318
  %327 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %328 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 3, i32 noundef 1, ptr noundef nonnull @.str.32, i32 noundef 1, ptr noundef %327) #15
  br label %329

329:                                              ; preds = %318, %326
  store i32 3, ptr %324, align 8, !tbaa !12
  %330 = getelementptr inbounds %struct.anon.14, ptr %324, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %330, i8 0, i64 52, i1 false)
  store ptr %324, ptr @file_tab, align 8, !tbaa !10
  %331 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %332 = zext i8 %331 to i32
  store i32 %332, ptr @zz_size, align 4, !tbaa !8
  %333 = zext i8 %331 to i64
  %334 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %333
  %335 = load ptr, ptr %334, align 8, !tbaa !10
  %336 = icmp eq ptr %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %329
  %338 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %339 = tail call ptr @GetMemory(i32 noundef %332, ptr noundef %338) #15
  store ptr %339, ptr @zz_hold, align 8, !tbaa !10
  br label %342

340:                                              ; preds = %329
  store ptr %335, ptr @zz_hold, align 8, !tbaa !10
  %341 = load ptr, ptr %335, align 8, !tbaa !5
  store ptr %341, ptr %334, align 8, !tbaa !10
  br label %342

342:                                              ; preds = %337, %340
  %343 = phi ptr [ %339, %337 ], [ %335, %340 ]
  %344 = getelementptr inbounds %struct.word_type, ptr %343, i64 0, i32 1
  store i8 17, ptr %344, align 8, !tbaa !5
  %345 = getelementptr inbounds [2 x %struct.LIST], ptr %343, i64 0, i64 1, i32 1
  store ptr %343, ptr %345, align 8, !tbaa !5
  %346 = getelementptr inbounds [2 x %struct.LIST], ptr %343, i64 0, i64 1
  store ptr %343, ptr %346, align 8, !tbaa !5
  %347 = getelementptr inbounds %struct.LIST, ptr %343, i64 0, i32 1
  store ptr %343, ptr %347, align 8, !tbaa !5
  store ptr %343, ptr %343, align 8, !tbaa !5
  store ptr %343, ptr @empty_path, align 8, !tbaa !10
  %348 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %349 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %348) #15
  %350 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %351 = zext i8 %350 to i32
  store i32 %351, ptr @zz_size, align 4, !tbaa !8
  %352 = zext i8 %350 to i64
  %353 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !10
  %355 = icmp eq ptr %354, null
  br i1 %355, label %356, label %359

356:                                              ; preds = %342
  %357 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %358 = tail call ptr @GetMemory(i32 noundef %351, ptr noundef %357) #15
  br label %361

359:                                              ; preds = %342
  store ptr %354, ptr @zz_hold, align 8, !tbaa !10
  %360 = load ptr, ptr %354, align 8, !tbaa !5
  store ptr %360, ptr %353, align 8, !tbaa !10
  br label %361

361:                                              ; preds = %356, %359
  %362 = phi ptr [ %358, %356 ], [ %354, %359 ]
  %363 = getelementptr inbounds %struct.word_type, ptr %362, i64 0, i32 1
  store i8 0, ptr %363, align 8, !tbaa !5
  %364 = getelementptr inbounds [2 x %struct.LIST], ptr %362, i64 0, i64 1, i32 1
  store ptr %362, ptr %364, align 8, !tbaa !5
  %365 = getelementptr inbounds [2 x %struct.LIST], ptr %362, i64 0, i64 1
  store ptr %362, ptr %365, align 8, !tbaa !5
  %366 = getelementptr inbounds %struct.LIST, ptr %362, i64 0, i32 1
  store ptr %362, ptr %366, align 8, !tbaa !5
  store ptr %362, ptr %362, align 8, !tbaa !5
  store ptr %362, ptr @xx_link, align 8, !tbaa !10
  store ptr %362, ptr @zz_res, align 8, !tbaa !10
  %367 = load ptr, ptr @empty_path, align 8, !tbaa !10
  store ptr %367, ptr @zz_hold, align 8, !tbaa !10
  %368 = icmp eq ptr %367, null
  br i1 %368, label %380, label %369

369:                                              ; preds = %361
  %370 = load ptr, ptr %367, align 8, !tbaa !5
  store ptr %370, ptr @zz_tmp, align 8, !tbaa !10
  %371 = load ptr, ptr %362, align 8, !tbaa !5
  store ptr %371, ptr %367, align 8, !tbaa !5
  %372 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %373 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %374 = load ptr, ptr %373, align 8, !tbaa !5
  %375 = getelementptr inbounds %struct.LIST, ptr %374, i64 0, i32 1
  store ptr %372, ptr %375, align 8, !tbaa !5
  %376 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %376, ptr %373, align 8, !tbaa !5
  %377 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %378 = getelementptr inbounds %struct.LIST, ptr %376, i64 0, i32 1
  store ptr %377, ptr %378, align 8, !tbaa !5
  %379 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %380

380:                                              ; preds = %361, %369
  %381 = phi ptr [ %362, %361 ], [ %379, %369 ]
  store ptr %381, ptr @zz_res, align 8, !tbaa !10
  store ptr %349, ptr @zz_hold, align 8, !tbaa !10
  %382 = icmp eq ptr %349, null
  %383 = icmp eq ptr %381, null
  %384 = select i1 %382, i1 true, i1 %383
  br i1 %384, label %392, label %385

385:                                              ; preds = %380
  %386 = getelementptr inbounds [2 x %struct.LIST], ptr %349, i64 0, i64 1
  %387 = load ptr, ptr %386, align 8, !tbaa !5
  store ptr %387, ptr @zz_tmp, align 8, !tbaa !10
  %388 = getelementptr inbounds [2 x %struct.LIST], ptr %381, i64 0, i64 1
  %389 = load ptr, ptr %388, align 8, !tbaa !5
  store ptr %389, ptr %386, align 8, !tbaa !5
  %390 = getelementptr inbounds [2 x %struct.LIST], ptr %389, i64 0, i64 1, i32 1
  store ptr %349, ptr %390, align 8, !tbaa !5
  store ptr %387, ptr %388, align 8, !tbaa !5
  %391 = getelementptr inbounds [2 x %struct.LIST], ptr %387, i64 0, i64 1, i32 1
  store ptr %381, ptr %391, align 8, !tbaa !5
  br label %392

392:                                              ; preds = %380, %385
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @AddToPath(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %4 = zext i8 %3 to i32
  store i32 %4, ptr @zz_size, align 4, !tbaa !8
  %5 = zext i8 %3 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %11 = tail call ptr @GetMemory(i32 noundef %4, ptr noundef %10) #15
  br label %14

12:                                               ; preds = %2
  store ptr %7, ptr @zz_hold, align 8, !tbaa !10
  %13 = load ptr, ptr %7, align 8, !tbaa !5
  store ptr %13, ptr %6, align 8, !tbaa !10
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi ptr [ %11, %9 ], [ %7, %12 ]
  %16 = getelementptr inbounds %struct.word_type, ptr %15, i64 0, i32 1
  store i8 0, ptr %16, align 8, !tbaa !5
  %17 = getelementptr inbounds [2 x %struct.LIST], ptr %15, i64 0, i64 1, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !5
  %18 = getelementptr inbounds [2 x %struct.LIST], ptr %15, i64 0, i64 1
  store ptr %15, ptr %18, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.LIST, ptr %15, i64 0, i32 1
  store ptr %15, ptr %19, align 8, !tbaa !5
  store ptr %15, ptr %15, align 8, !tbaa !5
  store ptr %15, ptr @xx_link, align 8, !tbaa !10
  store ptr %15, ptr @zz_res, align 8, !tbaa !10
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds [8 x ptr], ptr @file_path, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  store ptr %22, ptr @zz_hold, align 8, !tbaa !10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %14
  %25 = load ptr, ptr %22, align 8, !tbaa !5
  store ptr %25, ptr @zz_tmp, align 8, !tbaa !10
  %26 = load ptr, ptr %15, align 8, !tbaa !5
  store ptr %26, ptr %22, align 8, !tbaa !5
  %27 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %28 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.LIST, ptr %29, i64 0, i32 1
  store ptr %27, ptr %30, align 8, !tbaa !5
  %31 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %31, ptr %28, align 8, !tbaa !5
  %32 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %33 = getelementptr inbounds %struct.LIST, ptr %31, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !5
  %34 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %35

35:                                               ; preds = %14, %24
  %36 = phi ptr [ %15, %14 ], [ %34, %24 ]
  store ptr %36, ptr @zz_res, align 8, !tbaa !10
  store ptr %1, ptr @zz_hold, align 8, !tbaa !10
  %37 = icmp eq ptr %1, null
  %38 = icmp eq ptr %36, null
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds [2 x %struct.LIST], ptr %1, i64 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  store ptr %42, ptr @zz_tmp, align 8, !tbaa !10
  %43 = getelementptr inbounds [2 x %struct.LIST], ptr %36, i64 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  store ptr %44, ptr %41, align 8, !tbaa !5
  %45 = getelementptr inbounds [2 x %struct.LIST], ptr %44, i64 0, i64 1, i32 1
  store ptr %1, ptr %45, align 8, !tbaa !5
  store ptr %42, ptr %43, align 8, !tbaa !5
  %46 = getelementptr inbounds [2 x %struct.LIST], ptr %42, i64 0, i64 1, i32 1
  store ptr %36, ptr %46, align 8, !tbaa !5
  br label %47

47:                                               ; preds = %35, %40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @DefineFile(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp slt i32 %3, 11
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @.str.3) #15
  br label %29

10:                                               ; preds = %5
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %10
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = and i64 %13, 4294967295
  %18 = getelementptr i8, ptr %0, i64 %17
  %19 = getelementptr i8, ptr %18, i64 -3
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str.4) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 3, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef %2, ptr noundef %0) #15
  br label %24

24:                                               ; preds = %22, %16
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str.6) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 3, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef 1, ptr noundef %2, ptr noundef %0) #15
  br label %29

29:                                               ; preds = %7, %24, %27, %12, %10
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %32 = add i64 %31, %30
  %33 = icmp ugt i64 %32, 2047
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %36 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 3, i32 noundef 5, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef %35, ptr noundef %0, ptr noundef %1) #15
  br label %37

37:                                               ; preds = %34, %29
  %38 = tail call ptr @MakeWordTwo(i32 noundef 11, ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  %39 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %40 = zext i8 %39 to i32
  store i32 %40, ptr @zz_size, align 4, !tbaa !8
  %41 = zext i8 %39 to i64
  %42 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %47 = tail call ptr @GetMemory(i32 noundef %40, ptr noundef %46) #15
  br label %50

48:                                               ; preds = %37
  store ptr %43, ptr @zz_hold, align 8, !tbaa !10
  %49 = load ptr, ptr %43, align 8, !tbaa !5
  store ptr %49, ptr %42, align 8, !tbaa !10
  br label %50

50:                                               ; preds = %45, %48
  %51 = phi ptr [ %47, %45 ], [ %43, %48 ]
  %52 = getelementptr inbounds %struct.word_type, ptr %51, i64 0, i32 1
  store i8 0, ptr %52, align 8, !tbaa !5
  %53 = getelementptr inbounds [2 x %struct.LIST], ptr %51, i64 0, i64 1, i32 1
  store ptr %51, ptr %53, align 8, !tbaa !5
  %54 = getelementptr inbounds [2 x %struct.LIST], ptr %51, i64 0, i64 1
  store ptr %51, ptr %54, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.LIST, ptr %51, i64 0, i32 1
  store ptr %51, ptr %55, align 8, !tbaa !5
  store ptr %51, ptr %51, align 8, !tbaa !5
  store ptr %51, ptr @xx_link, align 8, !tbaa !10
  store ptr %51, ptr @zz_res, align 8, !tbaa !10
  %56 = sext i32 %3 to i64
  %57 = getelementptr inbounds [11 x ptr], ptr @file_type, i64 0, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !10
  store ptr %58, ptr @zz_hold, align 8, !tbaa !10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %50
  %61 = load ptr, ptr %58, align 8, !tbaa !5
  store ptr %61, ptr @zz_tmp, align 8, !tbaa !10
  %62 = load ptr, ptr %51, align 8, !tbaa !5
  store ptr %62, ptr %58, align 8, !tbaa !5
  %63 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %64 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.LIST, ptr %65, i64 0, i32 1
  store ptr %63, ptr %66, align 8, !tbaa !5
  %67 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %67, ptr %64, align 8, !tbaa !5
  %68 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %69 = getelementptr inbounds %struct.LIST, ptr %67, i64 0, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !5
  %70 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %71

71:                                               ; preds = %50, %60
  %72 = phi ptr [ %51, %50 ], [ %70, %60 ]
  store ptr %72, ptr @zz_res, align 8, !tbaa !10
  store ptr %38, ptr @zz_hold, align 8, !tbaa !10
  %73 = icmp eq ptr %38, null
  %74 = icmp eq ptr %72, null
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds [2 x %struct.LIST], ptr %38, i64 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  store ptr %78, ptr @zz_tmp, align 8, !tbaa !10
  %79 = getelementptr inbounds [2 x %struct.LIST], ptr %72, i64 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  store ptr %80, ptr %77, align 8, !tbaa !5
  %81 = getelementptr inbounds [2 x %struct.LIST], ptr %80, i64 0, i64 1, i32 1
  store ptr %38, ptr %81, align 8, !tbaa !5
  store ptr %78, ptr %79, align 8, !tbaa !5
  %82 = getelementptr inbounds [2 x %struct.LIST], ptr %78, i64 0, i64 1, i32 1
  store ptr %72, ptr %82, align 8, !tbaa !5
  br label %83

83:                                               ; preds = %71, %76
  %84 = getelementptr inbounds %struct.word_type, ptr %38, i64 0, i32 3
  store i32 %4, ptr %84, align 8, !tbaa !5
  %85 = getelementptr inbounds %struct.word_type, ptr %38, i64 0, i32 3, i32 1
  store i32 0, ptr %85, align 8, !tbaa !5
  %86 = getelementptr inbounds %struct.word_type, ptr %38, i64 0, i32 3, i32 1, i64 4
  store i32 0, ptr %86, align 4, !tbaa !5
  %87 = getelementptr inbounds %struct.word_type, ptr %38, i64 0, i32 2
  %88 = load i32, ptr %87, align 8
  %89 = shl i32 %3, 12
  %90 = and i32 %89, 4190208
  %91 = and i32 %88, 2143293439
  %92 = or disjoint i32 %91, %90
  store i32 %92, ptr %87, align 8
  tail call fastcc void @ftab_insert(ptr noundef %38, ptr noundef nonnull @file_tab)
  %93 = load i32, ptr %87, align 8
  %94 = trunc i32 %93 to i16
  %95 = and i16 %94, 4095
  ret i16 %95
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare ptr @MakeWordTwo(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ftab_insert(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.anon.14, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !14
  %7 = load i32, ptr %4, align 8, !tbaa !12
  %8 = add nsw i32 %7, -1
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %59

10:                                               ; preds = %2
  %11 = shl nsw i32 %7, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 4
  %14 = or disjoint i64 %13, 8
  %15 = tail call noalias ptr @malloc(i64 noundef %14) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %19 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 3, i32 noundef 1, ptr noundef nonnull @.str.32, i32 noundef 1, ptr noundef %18) #15
  br label %20

20:                                               ; preds = %17, %10
  store i32 %11, ptr %15, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.anon.14, ptr %15, i64 0, i32 1
  store i32 0, ptr %21, align 4, !tbaa !14
  %22 = icmp sgt i32 %7, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %15, i64 8
  %25 = zext nneg i32 %11 to i64
  %26 = shl nuw nsw i64 %25, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %24, i8 0, i64 %26, i1 false), !tbaa !10
  br label %27

27:                                               ; preds = %20, %23
  store ptr %15, ptr %3, align 8, !tbaa !10
  %28 = load i32, ptr %5, align 4, !tbaa !14
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %33, %27
  %31 = load i32, ptr %4, align 8, !tbaa !12
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %41, label %55

33:                                               ; preds = %27, %33
  %34 = phi i64 [ %37, %33 ], [ 1, %27 ]
  %35 = getelementptr inbounds %struct.anon.14, ptr %4, i64 0, i32 2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !15
  call fastcc void @ftab_insert(ptr noundef %36, ptr noundef nonnull %3)
  %37 = add nuw nsw i64 %34, 1
  %38 = load i32, ptr %5, align 4, !tbaa !14
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %34, %39
  br i1 %40, label %33, label %30

41:                                               ; preds = %30, %50
  %42 = phi i32 [ %51, %50 ], [ %31, %30 ]
  %43 = phi i64 [ %52, %50 ], [ 0, %30 ]
  %44 = getelementptr inbounds %struct.anon.14, ptr %4, i64 0, i32 2, i64 %43, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !17
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = tail call i32 @DisposeObject(ptr noundef nonnull %45) #15
  %49 = load i32, ptr %4, align 8, !tbaa !12
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i32 [ %49, %47 ], [ %42, %41 ]
  %52 = add nuw nsw i64 %43, 1
  %53 = sext i32 %51 to i64
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %41, label %55

55:                                               ; preds = %50, %30
  tail call void @free(ptr noundef nonnull %4) #15
  %56 = load ptr, ptr %3, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  store ptr %56, ptr %1, align 8, !tbaa !10
  %57 = getelementptr inbounds %struct.anon.14, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !14
  br label %59

59:                                               ; preds = %55, %2
  %60 = phi i32 [ %58, %55 ], [ %6, %2 ]
  %61 = phi ptr [ %56, %55 ], [ %4, %2 ]
  %62 = getelementptr inbounds %struct.anon.14, ptr %61, i64 0, i32 1
  %63 = add nsw i32 %60, 1
  store i32 %63, ptr %62, align 4, !tbaa !14
  %64 = icmp sgt i32 %60, 65534
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %67 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 3, i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef 1, ptr noundef nonnull %66, i32 noundef 65535) #15
  br label %68

68:                                               ; preds = %65, %59
  %69 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %70 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 1
  %71 = load i8, ptr %69, align 1, !tbaa !5
  %72 = zext i8 %71 to i32
  %73 = load i8, ptr %70, align 1, !tbaa !5
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %68, %75
  %76 = phi i8 [ %82, %75 ], [ %73, %68 ]
  %77 = phi ptr [ %79, %75 ], [ %70, %68 ]
  %78 = phi i32 [ %81, %75 ], [ %72, %68 ]
  %79 = getelementptr inbounds i8, ptr %77, i64 1
  %80 = zext i8 %76 to i32
  %81 = add nuw nsw i32 %78, %80
  %82 = load i8, ptr %79, align 1, !tbaa !5
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %75

84:                                               ; preds = %75, %68
  %85 = phi i32 [ %72, %68 ], [ %81, %75 ]
  %86 = load ptr, ptr %1, align 8, !tbaa !10
  %87 = load i32, ptr %86, align 8, !tbaa !12
  %88 = srem i32 %85, %87
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds %struct.anon.14, ptr %86, i64 0, i32 2, i64 %89, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !17
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %113

93:                                               ; preds = %84
  %94 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %95 = zext i8 %94 to i32
  store i32 %95, ptr @zz_size, align 4, !tbaa !8
  %96 = zext i8 %94 to i64
  %97 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !10
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %102 = tail call ptr @GetMemory(i32 noundef %95, ptr noundef %101) #15
  store ptr %102, ptr @zz_hold, align 8, !tbaa !10
  br label %105

103:                                              ; preds = %93
  store ptr %98, ptr @zz_hold, align 8, !tbaa !10
  %104 = load ptr, ptr %98, align 8, !tbaa !5
  store ptr %104, ptr %97, align 8, !tbaa !10
  br label %105

105:                                              ; preds = %100, %103
  %106 = phi ptr [ %102, %100 ], [ %98, %103 ]
  %107 = getelementptr inbounds %struct.word_type, ptr %106, i64 0, i32 1
  store i8 17, ptr %107, align 8, !tbaa !5
  %108 = getelementptr inbounds [2 x %struct.LIST], ptr %106, i64 0, i64 1, i32 1
  store ptr %106, ptr %108, align 8, !tbaa !5
  %109 = getelementptr inbounds [2 x %struct.LIST], ptr %106, i64 0, i64 1
  store ptr %106, ptr %109, align 8, !tbaa !5
  %110 = getelementptr inbounds %struct.LIST, ptr %106, i64 0, i32 1
  store ptr %106, ptr %110, align 8, !tbaa !5
  store ptr %106, ptr %106, align 8, !tbaa !5
  %111 = load ptr, ptr %1, align 8, !tbaa !10
  %112 = getelementptr inbounds %struct.anon.14, ptr %111, i64 0, i32 2, i64 %89, i32 1
  store ptr %106, ptr %112, align 8, !tbaa !17
  br label %113

113:                                              ; preds = %105, %84
  %114 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %115 = zext i8 %114 to i32
  store i32 %115, ptr @zz_size, align 4, !tbaa !8
  %116 = zext i8 %114 to i64
  %117 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !10
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %122 = tail call ptr @GetMemory(i32 noundef %115, ptr noundef %121) #15
  store ptr %122, ptr @zz_hold, align 8, !tbaa !10
  br label %125

123:                                              ; preds = %113
  store ptr %118, ptr @zz_hold, align 8, !tbaa !10
  %124 = load ptr, ptr %118, align 8, !tbaa !5
  store ptr %124, ptr %117, align 8, !tbaa !10
  br label %125

125:                                              ; preds = %120, %123
  %126 = phi ptr [ %122, %120 ], [ %118, %123 ]
  %127 = getelementptr inbounds %struct.word_type, ptr %126, i64 0, i32 1
  store i8 0, ptr %127, align 8, !tbaa !5
  %128 = getelementptr inbounds [2 x %struct.LIST], ptr %126, i64 0, i64 1, i32 1
  store ptr %126, ptr %128, align 8, !tbaa !5
  %129 = getelementptr inbounds [2 x %struct.LIST], ptr %126, i64 0, i64 1
  store ptr %126, ptr %129, align 8, !tbaa !5
  %130 = getelementptr inbounds %struct.LIST, ptr %126, i64 0, i32 1
  store ptr %126, ptr %130, align 8, !tbaa !5
  store ptr %126, ptr %126, align 8, !tbaa !5
  store ptr %126, ptr @xx_link, align 8, !tbaa !10
  store ptr %126, ptr @zz_res, align 8, !tbaa !10
  %131 = load ptr, ptr %1, align 8, !tbaa !10
  %132 = getelementptr inbounds %struct.anon.14, ptr %131, i64 0, i32 2, i64 %89, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !17
  store ptr %133, ptr @zz_hold, align 8, !tbaa !10
  %134 = icmp eq ptr %133, null
  br i1 %134, label %146, label %135

135:                                              ; preds = %125
  %136 = load ptr, ptr %133, align 8, !tbaa !5
  store ptr %136, ptr @zz_tmp, align 8, !tbaa !10
  %137 = load ptr, ptr %126, align 8, !tbaa !5
  store ptr %137, ptr %133, align 8, !tbaa !5
  %138 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %139 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %140 = load ptr, ptr %139, align 8, !tbaa !5
  %141 = getelementptr inbounds %struct.LIST, ptr %140, i64 0, i32 1
  store ptr %138, ptr %141, align 8, !tbaa !5
  %142 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %142, ptr %139, align 8, !tbaa !5
  %143 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %144 = getelementptr inbounds %struct.LIST, ptr %142, i64 0, i32 1
  store ptr %143, ptr %144, align 8, !tbaa !5
  %145 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %146

146:                                              ; preds = %125, %135
  %147 = phi ptr [ %126, %125 ], [ %145, %135 ]
  store ptr %147, ptr @zz_res, align 8, !tbaa !10
  store ptr %0, ptr @zz_hold, align 8, !tbaa !10
  %148 = icmp eq ptr %0, null
  %149 = icmp eq ptr %147, null
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !5
  store ptr %153, ptr @zz_tmp, align 8, !tbaa !10
  %154 = getelementptr inbounds [2 x %struct.LIST], ptr %147, i64 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !5
  store ptr %155, ptr %152, align 8, !tbaa !5
  %156 = getelementptr inbounds [2 x %struct.LIST], ptr %155, i64 0, i64 1, i32 1
  store ptr %0, ptr %156, align 8, !tbaa !5
  store ptr %153, ptr %154, align 8, !tbaa !5
  %157 = getelementptr inbounds [2 x %struct.LIST], ptr %153, i64 0, i64 1, i32 1
  store ptr %147, ptr %157, align 8, !tbaa !5
  br label %158

158:                                              ; preds = %146, %151
  %159 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %160 = load i32, ptr %159, align 8
  %161 = and i32 %63, 4095
  %162 = and i32 %160, -4096
  %163 = or disjoint i32 %162, %161
  store i32 %163, ptr %159, align 8
  %164 = load ptr, ptr %1, align 8, !tbaa !10
  %165 = sext i32 %63 to i64
  %166 = getelementptr inbounds %struct.anon.14, ptr %164, i64 0, i32 2, i64 %165
  store ptr %0, ptr %166, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i16 @FirstFile(i32 noundef %0) local_unnamed_addr #4 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [11 x ptr], ptr @file_type, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.LIST, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.word_type, ptr %6, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i8 %8, 17
  br i1 %9, label %22, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %13, %10 ], [ %6, %1 ]
  %12 = getelementptr inbounds [2 x %struct.LIST], ptr %11, i64 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.word_type, ptr %13, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !5
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %10, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.word_type, ptr %13, i64 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = trunc i32 %19 to i16
  %21 = and i16 %20, 4095
  br label %22

22:                                               ; preds = %1, %17
  %23 = phi i16 [ %21, %17 ], [ 0, %1 ]
  ret i16 %23
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i16 @NextFile(i16 noundef zeroext %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @file_tab, align 8, !tbaa !10
  %3 = zext i16 %0 to i64
  %4 = getelementptr inbounds %struct.anon.14, ptr %2, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = getelementptr inbounds [2 x %struct.LIST], ptr %5, i64 0, i64 1, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.LIST, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.word_type, ptr %9, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i8 %11, 17
  br i1 %12, label %25, label %13

13:                                               ; preds = %1, %13
  %14 = phi ptr [ %16, %13 ], [ %9, %1 ]
  %15 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %13, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = trunc i32 %22 to i16
  %24 = and i16 %23, 4095
  br label %25

25:                                               ; preds = %1, %20
  %26 = phi i16 [ %24, %20 ], [ 0, %1 ]
  ret i16 %26
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @FileNum(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #15
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %6 = add i64 %5, %4
  %7 = icmp ugt i64 %6, 511
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 3, i32 noundef 6, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef %9, ptr noundef %0, ptr noundef %1) #15
  br label %11

11:                                               ; preds = %8, %2
  %12 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %0) #15
  %13 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #15
  %14 = load ptr, ptr @file_tab, align 8, !tbaa !10
  %15 = load i8, ptr %3, align 16, !tbaa !5
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %17, %11
  %18 = phi i32 [ %16, %11 ], [ %24, %17 ]
  %19 = phi ptr [ %3, %11 ], [ %20, %17 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = icmp eq i8 %21, 0
  %23 = zext i8 %21 to i32
  %24 = add nuw nsw i32 %18, %23
  br i1 %22, label %25, label %17

25:                                               ; preds = %17
  %26 = load i32, ptr %14, align 8, !tbaa !12
  %27 = srem i32 %18, %26
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds %struct.anon.14, ptr %14, i64 0, i32 2, i64 %28, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %25, %44
  %33 = phi ptr [ %35, %44 ], [ %30, %25 ]
  %34 = getelementptr inbounds %struct.LIST, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = icmp eq ptr %35, %30
  br i1 %36, label %53, label %37

37:                                               ; preds = %32, %37
  %38 = phi ptr [ %40, %37 ], [ %35, %32 ]
  %39 = getelementptr inbounds [2 x %struct.LIST], ptr %38, i64 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 1
  %42 = load i8, ptr %41, align 8, !tbaa !5
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %37, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 4
  %46 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %45) #17
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %32

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = trunc i32 %50 to i16
  %52 = and i16 %51, 4095
  br label %53

53:                                               ; preds = %32, %25, %48
  %54 = phi i16 [ %52, %48 ], [ 0, %25 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #15
  ret i16 %54
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @DatabaseFileNum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @file_tab, align 8, !tbaa !10
  br label %3

3:                                                ; preds = %37, %1
  %4 = phi ptr [ %2, %1 ], [ %38, %37 ]
  %5 = phi ptr [ %0, %1 ], [ %39, %37 ]
  %6 = getelementptr inbounds %struct.FILE_POS, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !18
  %8 = zext i16 %7 to i64
  %9 = getelementptr inbounds %struct.anon.14, ptr %4, i64 0, i32 2, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.word_type, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 12
  %14 = and i32 %13, 1023
  switch i32 %14, label %48 [
    i32 0, label %15
    i32 1, label %15
    i32 3, label %33
    i32 10, label %40
  ]

15:                                               ; preds = %3, %3
  %16 = getelementptr inbounds %struct.LIST, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, %10
  br i1 %18, label %26, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %22, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds [2 x %struct.LIST], ptr %20, i64 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1
  %24 = load i8, ptr %23, align 8, !tbaa !5
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %19, label %26

26:                                               ; preds = %19, %15
  %27 = phi ptr [ %10, %15 ], [ %22, %19 ]
  %28 = getelementptr inbounds %struct.word_type, ptr %27, i64 0, i32 4
  %29 = tail call zeroext i16 @FileNum(ptr noundef nonnull %28, ptr noundef nonnull @.str.4), !range !21
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = tail call zeroext i16 @DefineFile(ptr noundef nonnull %28, ptr noundef nonnull @.str.4, ptr noundef %5, i32 noundef 3, i32 noundef 0), !range !21
  br label %51

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.word_type, ptr %10, i64 0, i32 1, i32 0, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !5
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %33, %40, %44
  %38 = phi ptr [ %4, %40 ], [ %47, %44 ], [ %4, %33 ]
  %39 = getelementptr inbounds %struct.word_type, ptr %10, i64 0, i32 1
  br label %3

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.word_type, ptr %10, i64 0, i32 1, i32 0, i32 2
  %42 = load i16, ptr %41, align 2, !tbaa !5
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %37

44:                                               ; preds = %40
  %45 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %46 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 3, i32 noundef 7, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef %45) #15
  %47 = load ptr, ptr @file_tab, align 8, !tbaa !10
  br label %37

48:                                               ; preds = %3
  %49 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %50 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 3, i32 noundef 8, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %49) #15
  br label %51

51:                                               ; preds = %33, %26, %31, %48
  %52 = phi i16 [ 0, %48 ], [ %32, %31 ], [ %29, %26 ], [ %7, %33 ]
  ret i16 %52
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @FileName(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @file_tab, align 8, !tbaa !10
  %3 = zext i16 %0 to i64
  %4 = getelementptr inbounds %struct.anon.14, ptr %2, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @.str.11) #15
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.LIST, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, %5
  br i1 %13, label %21, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %15, i64 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.word_type, ptr %17, i64 0, i32 1
  %19 = load i8, ptr %18, align 8, !tbaa !5
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %14, label %21

21:                                               ; preds = %14, %10
  %22 = phi ptr [ %5, %10 ], [ %17, %14 ]
  %23 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 4
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @FullFileName(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @file_tab, align 8, !tbaa !10
  %3 = zext i16 %0 to i64
  %4 = getelementptr inbounds %struct.anon.14, ptr %2, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @.str.11) #15
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.word_type, ptr %5, i64 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp sgt i32 %12, -1
  %14 = getelementptr inbounds %struct.LIST, ptr %5, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, %5
  br i1 %13, label %36, label %17

17:                                               ; preds = %10
  br i1 %16, label %25, label %18

18:                                               ; preds = %17, %18
  %19 = phi ptr [ %21, %18 ], [ %15, %17 ]
  %20 = getelementptr inbounds [2 x %struct.LIST], ptr %19, i64 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.word_type, ptr %21, i64 0, i32 1
  %23 = load i8, ptr %22, align 8, !tbaa !5
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %18, label %25

25:                                               ; preds = %18, %17
  %26 = phi ptr [ %5, %17 ], [ %21, %18 ]
  %27 = load i32, ptr @FullFileName.ffbp, align 4, !tbaa !8
  %28 = and i32 %27, 1
  %29 = xor i32 %28, 1
  store i32 %29, ptr @FullFileName.ffbp, align 4, !tbaa !8
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [2 x [512 x i8]], ptr @FullFileName.ffbuff, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.word_type, ptr %26, i64 0, i32 4
  %33 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %32) #15
  %34 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %31)
  %35 = getelementptr inbounds i8, ptr %31, i64 %34
  store i32 7629870, ptr %35, align 1
  br label %47

36:                                               ; preds = %10
  br i1 %16, label %44, label %37

37:                                               ; preds = %36, %37
  %38 = phi ptr [ %40, %37 ], [ %15, %36 ]
  %39 = getelementptr inbounds [2 x %struct.LIST], ptr %38, i64 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 1
  %42 = load i8, ptr %41, align 8, !tbaa !5
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %37, label %44

44:                                               ; preds = %37, %36
  %45 = phi ptr [ %5, %36 ], [ %40, %37 ]
  %46 = getelementptr inbounds %struct.word_type, ptr %45, i64 0, i32 4
  br label %47

47:                                               ; preds = %44, %25
  %48 = phi ptr [ %31, %25 ], [ %46, %44 ]
  ret ptr %48
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @EchoFilePos(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @bp, align 4, !tbaa !8
  %3 = and i32 %2, 1
  %4 = xor i32 %3, 1
  store i32 %4, ptr @bp, align 4, !tbaa !8
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %5
  store i8 0, ptr %6, align 16
  %7 = getelementptr inbounds %struct.FILE_POS, ptr %0, i64 0, i32 2
  %8 = load i16, ptr %7, align 2, !tbaa !18
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  tail call fastcc void @append_fpos(ptr noundef nonnull %0)
  %11 = load i32, ptr @bp, align 4, !tbaa !8
  %12 = zext nneg i32 %11 to i64
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi i64 [ %12, %10 ], [ %5, %1 ]
  %15 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %14
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal fastcc void @append_fpos(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @file_tab, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.FILE_POS, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !18
  %5 = zext i16 %4 to i64
  %6 = getelementptr inbounds %struct.anon.14, ptr %2, i64 0, i32 2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %10, ptr noundef nonnull @.str.34) #15
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.word_type, ptr %7, i64 0, i32 1, i32 0, i32 2
  %14 = load i16, ptr %13, align 2, !tbaa !5
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, ptr @bp, align 4, !tbaa !8
  %18 = zext nneg i32 %17 to i64
  br label %39

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.word_type, ptr %7, i64 0, i32 1
  tail call fastcc void @append_fpos(ptr noundef nonnull %20)
  %21 = load i32, ptr @bp, align 4, !tbaa !8
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %22
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #17
  %25 = add i64 %24, -510
  %26 = icmp ult i64 %25, -512
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %29 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 3, i32 noundef 9, ptr noundef nonnull @.str.35, i32 noundef 1, ptr noundef %28, ptr noundef nonnull %23) #15
  %30 = load i32, ptr @bp, align 4, !tbaa !8
  %31 = zext nneg i32 %30 to i64
  br label %32

32:                                               ; preds = %27, %19
  %33 = phi i64 [ %31, %27 ], [ %22, %19 ]
  %34 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %33
  %35 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %34)
  %36 = getelementptr inbounds i8, ptr %34, i64 %35
  store i16 32, ptr %36, align 1
  %37 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %34)
  %38 = getelementptr inbounds i8, ptr %34, i64 %37
  store i16 47, ptr %38, align 1
  br label %39

39:                                               ; preds = %16, %32
  %40 = phi i64 [ %18, %16 ], [ %33, %32 ]
  %41 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %40
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41) #17
  %43 = getelementptr inbounds %struct.word_type, ptr %7, i64 0, i32 4
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %43) #17
  %45 = add i64 %42, -499
  %46 = add i64 %45, %44
  %47 = icmp ult i64 %46, -512
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %50 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 3, i32 noundef 10, ptr noundef nonnull @.str.35, i32 noundef 1, ptr noundef %49, ptr noundef nonnull %41) #15
  %51 = load i32, ptr @bp, align 4, !tbaa !8
  %52 = zext nneg i32 %51 to i64
  br label %53

53:                                               ; preds = %48, %39
  %54 = phi i64 [ %52, %48 ], [ %40, %39 ]
  %55 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %54
  %56 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %55)
  %57 = getelementptr inbounds i8, ptr %55, i64 %56
  store i16 32, ptr %57, align 1
  %58 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %55)
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  store i16 34, ptr %59, align 1
  %60 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(1) %43) #15
  %61 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %55)
  %62 = getelementptr inbounds i8, ptr %55, i64 %61
  store i16 34, ptr %62, align 1
  %63 = getelementptr inbounds %struct.FILE_POS, ptr %0, i64 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1048575
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %53
  %68 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %55)
  %69 = getelementptr inbounds i8, ptr %55, i64 %68
  store i16 32, ptr %69, align 1
  %70 = load i32, ptr %63, align 4
  %71 = and i32 %70, 1048575
  %72 = tail call ptr @StringInt(i32 noundef %71) #15
  %73 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(1) %72) #15
  %74 = load i32, ptr @bp, align 4, !tbaa !8
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %75
  %77 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %76)
  %78 = getelementptr inbounds i8, ptr %76, i64 %77
  store i16 44, ptr %78, align 1
  %79 = load i32, ptr %63, align 4
  %80 = lshr i32 %79, 20
  %81 = tail call ptr @StringInt(i32 noundef %80) #15
  %82 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %76, ptr noundef nonnull dereferenceable(1) %81) #15
  br label %83

83:                                               ; preds = %67, %53
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @EchoAltFilePos(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @bp, align 4, !tbaa !8
  %3 = and i32 %2, 1
  %4 = xor i32 %3, 1
  store i32 %4, ptr @bp, align 4, !tbaa !8
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %5
  store i8 0, ptr %6, align 16
  %7 = getelementptr inbounds %struct.FILE_POS, ptr %0, i64 0, i32 2
  %8 = load i16, ptr %7, align 2, !tbaa !18
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %83, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @file_tab, align 8, !tbaa !10
  %12 = zext i16 %8 to i64
  %13 = getelementptr inbounds %struct.anon.14, ptr %11, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %18 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %17, ptr noundef nonnull @.str.11) #15
  br label %19

19:                                               ; preds = %16, %10
  %20 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = icmp sgt i32 %21, -1
  %23 = getelementptr inbounds %struct.LIST, ptr %14, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = icmp eq ptr %24, %14
  br i1 %22, label %45, label %26

26:                                               ; preds = %19
  br i1 %25, label %34, label %27

27:                                               ; preds = %26, %27
  %28 = phi ptr [ %30, %27 ], [ %24, %26 ]
  %29 = getelementptr inbounds [2 x %struct.LIST], ptr %28, i64 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.word_type, ptr %30, i64 0, i32 1
  %32 = load i8, ptr %31, align 8, !tbaa !5
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %27, label %34

34:                                               ; preds = %27, %26
  %35 = phi ptr [ %14, %26 ], [ %30, %27 ]
  %36 = load i32, ptr @FullFileName.ffbp, align 4, !tbaa !8
  %37 = and i32 %36, 1
  %38 = xor i32 %37, 1
  store i32 %38, ptr @FullFileName.ffbp, align 4, !tbaa !8
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [2 x [512 x i8]], ptr @FullFileName.ffbuff, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.word_type, ptr %35, i64 0, i32 4
  %42 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(1) %41) #15
  %43 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %40)
  %44 = getelementptr inbounds i8, ptr %40, i64 %43
  store i32 7629870, ptr %44, align 1
  br label %56

45:                                               ; preds = %19
  br i1 %25, label %53, label %46

46:                                               ; preds = %45, %46
  %47 = phi ptr [ %49, %46 ], [ %24, %45 ]
  %48 = getelementptr inbounds [2 x %struct.LIST], ptr %47, i64 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.word_type, ptr %49, i64 0, i32 1
  %51 = load i8, ptr %50, align 8, !tbaa !5
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %46, label %53

53:                                               ; preds = %46, %45
  %54 = phi ptr [ %14, %45 ], [ %49, %46 ]
  %55 = getelementptr inbounds %struct.word_type, ptr %54, i64 0, i32 4
  br label %56

56:                                               ; preds = %34, %53
  %57 = phi ptr [ %40, %34 ], [ %55, %53 ]
  %58 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %57) #15
  %59 = getelementptr inbounds %struct.FILE_POS, ptr %0, i64 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 1048575
  %62 = icmp eq i32 %61, 0
  %63 = load i32, ptr @bp, align 4, !tbaa !8
  br i1 %62, label %83, label %64

64:                                               ; preds = %56
  %65 = zext nneg i32 %63 to i64
  %66 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %65
  %67 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %66)
  %68 = getelementptr inbounds i8, ptr %66, i64 %67
  store i16 58, ptr %68, align 1
  %69 = load i32, ptr %59, align 4
  %70 = and i32 %69, 1048575
  %71 = tail call ptr @StringInt(i32 noundef %70) #15
  %72 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(1) %71) #15
  %73 = load i32, ptr @bp, align 4, !tbaa !8
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %74
  %76 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %75)
  %77 = getelementptr inbounds i8, ptr %75, i64 %76
  store i16 58, ptr %77, align 1
  %78 = load i32, ptr %59, align 4
  %79 = lshr i32 %78, 20
  %80 = tail call ptr @StringInt(i32 noundef %79) #15
  %81 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(1) %80) #15
  %82 = load i32, ptr @bp, align 4, !tbaa !8
  br label %83

83:                                               ; preds = %56, %64, %1
  %84 = phi i32 [ %63, %56 ], [ %82, %64 ], [ %4, %1 ]
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %85
  ret ptr %86
}

declare ptr @StringInt(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @EchoFileSource(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @bp, align 4, !tbaa !8
  %3 = and i32 %2, 1
  %4 = xor i32 %3, 1
  store i32 %4, ptr @bp, align 4, !tbaa !8
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %5
  store i8 0, ptr %6, align 16
  %7 = icmp eq i16 %0, 0
  br i1 %7, label %181, label %8

8:                                                ; preds = %1
  %9 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %6)
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  store i16 32, ptr %10, align 1
  %11 = load ptr, ptr @file_tab, align 8, !tbaa !10
  %12 = zext i16 %0 to i64
  %13 = getelementptr inbounds %struct.anon.14, ptr %11, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %18 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %17, ptr noundef nonnull @.str.15) #15
  %19 = load i32, ptr @bp, align 4, !tbaa !8
  br label %20

20:                                               ; preds = %16, %8
  %21 = phi i32 [ %19, %16 ], [ %4, %8 ]
  %22 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 4190208
  %25 = icmp eq i32 %24, 40960
  %26 = load ptr, ptr @MsgCat, align 8, !tbaa !10
  %27 = zext nneg i32 %21 to i64
  br i1 %25, label %28, label %44

28:                                               ; preds = %20
  %29 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %27
  %30 = icmp eq ptr %26, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = tail call ptr @catgets(ptr noundef nonnull %26, i32 noundef 3, i32 noundef 11, ptr noundef nonnull @.str.16) #15
  %33 = load i32, ptr @bp, align 4, !tbaa !8
  %34 = load ptr, ptr @MsgCat, align 8, !tbaa !10
  %35 = zext nneg i32 %33 to i64
  br label %36

36:                                               ; preds = %28, %31
  %37 = phi i64 [ %27, %28 ], [ %35, %31 ]
  %38 = phi ptr [ null, %28 ], [ %34, %31 ]
  %39 = phi ptr [ @.str.16, %28 ], [ %32, %31 ]
  %40 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %39) #15
  %41 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %37
  %42 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %41)
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  store i16 32, ptr %43, align 1
  br label %44

44:                                               ; preds = %20, %36
  %45 = phi i64 [ %37, %36 ], [ %27, %20 ]
  %46 = phi ptr [ %38, %36 ], [ %26, %20 ]
  %47 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %45
  %48 = icmp eq ptr %46, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = tail call ptr @catgets(ptr noundef nonnull %46, i32 noundef 3, i32 noundef 12, ptr noundef nonnull @.str.17) #15
  %51 = load i32, ptr @bp, align 4, !tbaa !8
  %52 = zext nneg i32 %51 to i64
  br label %53

53:                                               ; preds = %44, %49
  %54 = phi i64 [ %45, %44 ], [ %52, %49 ]
  %55 = phi ptr [ @.str.17, %44 ], [ %50, %49 ]
  %56 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(1) %55) #15
  %57 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %54
  %58 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %57)
  %59 = getelementptr inbounds i8, ptr %57, i64 %58
  store i16 32, ptr %59, align 1
  %60 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %57)
  %61 = getelementptr inbounds i8, ptr %57, i64 %60
  store i16 34, ptr %61, align 1
  %62 = load ptr, ptr @file_tab, align 8, !tbaa !10
  %63 = getelementptr inbounds %struct.anon.14, ptr %62, i64 0, i32 2, i64 %12
  %64 = load ptr, ptr %63, align 8, !tbaa !15
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %68 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %67, ptr noundef nonnull @.str.11) #15
  br label %69

69:                                               ; preds = %66, %53
  %70 = getelementptr inbounds %struct.word_type, ptr %64, i64 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = icmp sgt i32 %71, -1
  %73 = getelementptr inbounds %struct.LIST, ptr %64, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  %75 = icmp eq ptr %74, %64
  br i1 %72, label %95, label %76

76:                                               ; preds = %69
  br i1 %75, label %84, label %77

77:                                               ; preds = %76, %77
  %78 = phi ptr [ %80, %77 ], [ %74, %76 ]
  %79 = getelementptr inbounds [2 x %struct.LIST], ptr %78, i64 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  %81 = getelementptr inbounds %struct.word_type, ptr %80, i64 0, i32 1
  %82 = load i8, ptr %81, align 8, !tbaa !5
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %77, label %84

84:                                               ; preds = %77, %76
  %85 = phi ptr [ %64, %76 ], [ %80, %77 ]
  %86 = load i32, ptr @FullFileName.ffbp, align 4, !tbaa !8
  %87 = and i32 %86, 1
  %88 = xor i32 %87, 1
  store i32 %88, ptr @FullFileName.ffbp, align 4, !tbaa !8
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds [2 x [512 x i8]], ptr @FullFileName.ffbuff, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.word_type, ptr %85, i64 0, i32 4
  %92 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(1) %91) #15
  %93 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %90)
  %94 = getelementptr inbounds i8, ptr %90, i64 %93
  store i32 7629870, ptr %94, align 1
  br label %106

95:                                               ; preds = %69
  br i1 %75, label %103, label %96

96:                                               ; preds = %95, %96
  %97 = phi ptr [ %99, %96 ], [ %74, %95 ]
  %98 = getelementptr inbounds [2 x %struct.LIST], ptr %97, i64 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = getelementptr inbounds %struct.word_type, ptr %99, i64 0, i32 1
  %101 = load i8, ptr %100, align 8, !tbaa !5
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %96, label %103

103:                                              ; preds = %96, %95
  %104 = phi ptr [ %64, %95 ], [ %99, %96 ]
  %105 = getelementptr inbounds %struct.word_type, ptr %104, i64 0, i32 4
  br label %106

106:                                              ; preds = %84, %103
  %107 = phi ptr [ %90, %84 ], [ %105, %103 ]
  %108 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(1) %107) #15
  %109 = load i32, ptr @bp, align 4, !tbaa !8
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %110
  %112 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %111)
  %113 = getelementptr inbounds i8, ptr %111, i64 %112
  store i16 34, ptr %113, align 1
  %114 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1, i32 0, i32 2
  %115 = load i16, ptr %114, align 2, !tbaa !5
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %181, label %117

117:                                              ; preds = %106
  %118 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %111)
  %119 = getelementptr inbounds i8, ptr %111, i64 %118
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %119, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, i64 3, i1 false)
  br label %120

120:                                              ; preds = %179, %117
  %121 = phi i32 [ %109, %117 ], [ %174, %179 ]
  %122 = phi ptr [ %14, %117 ], [ %128, %179 ]
  %123 = load ptr, ptr @file_tab, align 8, !tbaa !10
  %124 = getelementptr inbounds %struct.word_type, ptr %122, i64 0, i32 1, i32 0, i32 2
  %125 = load i16, ptr %124, align 2, !tbaa !5
  %126 = zext i16 %125 to i64
  %127 = getelementptr inbounds %struct.anon.14, ptr %123, i64 0, i32 2, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !15
  %129 = zext nneg i32 %121 to i64
  %130 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %129
  %131 = load ptr, ptr @MsgCat, align 8, !tbaa !10
  %132 = icmp eq ptr %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %120
  %134 = tail call ptr @catgets(ptr noundef nonnull %131, i32 noundef 3, i32 noundef 13, ptr noundef nonnull @.str.20) #15
  %135 = load i32, ptr @bp, align 4, !tbaa !8
  %136 = load ptr, ptr @MsgCat, align 8, !tbaa !10
  %137 = zext nneg i32 %135 to i64
  br label %138

138:                                              ; preds = %120, %133
  %139 = phi i64 [ %129, %120 ], [ %137, %133 ]
  %140 = phi ptr [ null, %120 ], [ %136, %133 ]
  %141 = phi ptr [ @.str.20, %120 ], [ %134, %133 ]
  %142 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %130, ptr noundef nonnull dereferenceable(1) %141) #15
  %143 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %139
  %144 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %143)
  %145 = getelementptr inbounds i8, ptr %143, i64 %144
  store i16 32, ptr %145, align 1
  %146 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %143)
  %147 = getelementptr inbounds i8, ptr %143, i64 %146
  store i16 34, ptr %147, align 1
  %148 = getelementptr inbounds %struct.word_type, ptr %128, i64 0, i32 4
  %149 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %143, ptr noundef nonnull dereferenceable(1) %148) #15
  %150 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %143)
  %151 = getelementptr inbounds i8, ptr %143, i64 %150
  store i16 34, ptr %151, align 1
  %152 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %143)
  %153 = getelementptr inbounds i8, ptr %143, i64 %152
  store i16 32, ptr %153, align 1
  %154 = icmp eq ptr %140, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %138
  %156 = tail call ptr @catgets(ptr noundef nonnull %140, i32 noundef 3, i32 noundef 14, ptr noundef nonnull @.str.21) #15
  %157 = load i32, ptr @bp, align 4, !tbaa !8
  %158 = zext nneg i32 %157 to i64
  br label %159

159:                                              ; preds = %138, %155
  %160 = phi i64 [ %139, %138 ], [ %158, %155 ]
  %161 = phi ptr [ @.str.21, %138 ], [ %156, %155 ]
  %162 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %143, ptr noundef nonnull dereferenceable(1) %161) #15
  %163 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %160
  %164 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %163)
  %165 = getelementptr inbounds i8, ptr %163, i64 %164
  store i16 32, ptr %165, align 1
  %166 = getelementptr inbounds %struct.word_type, ptr %122, i64 0, i32 1, i32 0, i32 3
  %167 = load i32, ptr %166, align 4
  %168 = and i32 %167, 1048575
  %169 = tail call ptr @StringInt(i32 noundef %168) #15
  %170 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(1) %169) #15
  %171 = getelementptr inbounds %struct.word_type, ptr %128, i64 0, i32 1, i32 0, i32 2
  %172 = load i16, ptr %171, align 2, !tbaa !5
  %173 = icmp eq i16 %172, 0
  %174 = load i32, ptr @bp, align 4, !tbaa !8
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %175
  %177 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %176)
  %178 = getelementptr inbounds i8, ptr %176, i64 %177
  br i1 %173, label %180, label %179

179:                                              ; preds = %159
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %178, ptr noundef nonnull align 1 dereferenceable(3) @.str.22, i64 3, i1 false)
  br label %120

180:                                              ; preds = %159
  store i16 41, ptr %178, align 1
  br label %181

181:                                              ; preds = %106, %180, %1
  %182 = phi i64 [ %110, %106 ], [ %175, %180 ], [ %5, %1 ]
  %183 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %182
  ret ptr %183
}

; Function Attrs: nounwind
declare ptr @catgets(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @EchoFileLine(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @bp, align 4, !tbaa !8
  %3 = and i32 %2, 1
  %4 = xor i32 %3, 1
  store i32 %4, ptr @bp, align 4, !tbaa !8
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %5
  store i8 0, ptr %6, align 16
  %7 = getelementptr inbounds %struct.FILE_POS, ptr %0, i64 0, i32 2
  %8 = load i16, ptr %7, align 2, !tbaa !18
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.FILE_POS, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1048575
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @StringInt(i32 noundef %13) #15
  %17 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %16) #15
  %18 = load i32, ptr @bp, align 4, !tbaa !8
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %19
  %21 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %20)
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  store i16 44, ptr %22, align 1
  %23 = load i32, ptr %11, align 4
  %24 = lshr i32 %23, 20
  %25 = tail call ptr @StringInt(i32 noundef %24) #15
  %26 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %25) #15
  %27 = load i32, ptr @bp, align 4, !tbaa !8
  %28 = zext nneg i32 %27 to i64
  br label %29

29:                                               ; preds = %15, %10, %1
  %30 = phi i64 [ %28, %15 ], [ %5, %10 ], [ %5, %1 ]
  %31 = getelementptr inbounds [2 x [512 x i8]], ptr @buff, i64 0, i64 %30
  ret ptr %31
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @PosOfFile(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @file_tab, align 8, !tbaa !10
  %3 = zext i16 %0 to i64
  %4 = getelementptr inbounds %struct.anon.14, ptr %2, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @.str.25) #15
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.word_type, ptr %5, i64 0, i32 1
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OpenFile(i16 noundef zeroext %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %6 = load ptr, ptr @file_tab, align 8, !tbaa !10
  %7 = zext i16 %0 to i64
  %8 = getelementptr inbounds %struct.anon.14, ptr %6, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.LIST, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %23, label %13

13:                                               ; preds = %3, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %3 ]
  %15 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %13, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 4
  %22 = tail call noalias ptr @fopen(ptr noundef nonnull %21, ptr noundef nonnull @.str.27)
  br label %77

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.word_type, ptr %9, i64 0, i32 4
  %25 = getelementptr inbounds %struct.word_type, ptr %9, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !5
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x ptr], ptr @file_path, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !10
  %30 = getelementptr inbounds %struct.word_type, ptr %9, i64 0, i32 1
  %31 = getelementptr inbounds %struct.word_type, ptr %9, i64 0, i32 2
  %32 = call fastcc ptr @SearchPath(ptr noundef nonnull %24, ptr noundef %29, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %30, ptr noundef nonnull @.str.27, ptr noundef nonnull %5)
  %33 = load ptr, ptr %4, align 8, !tbaa !10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %71, label %35

35:                                               ; preds = %23
  %36 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %37 = zext i8 %36 to i32
  store i32 %37, ptr @zz_size, align 4, !tbaa !8
  %38 = zext i8 %36 to i64
  %39 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %44 = tail call ptr @GetMemory(i32 noundef %37, ptr noundef %43) #15
  br label %47

45:                                               ; preds = %35
  store ptr %40, ptr @zz_hold, align 8, !tbaa !10
  %46 = load ptr, ptr %40, align 8, !tbaa !5
  store ptr %46, ptr %39, align 8, !tbaa !10
  br label %47

47:                                               ; preds = %42, %45
  %48 = phi ptr [ %44, %42 ], [ %40, %45 ]
  %49 = getelementptr inbounds %struct.word_type, ptr %48, i64 0, i32 1
  store i8 0, ptr %49, align 8, !tbaa !5
  %50 = getelementptr inbounds [2 x %struct.LIST], ptr %48, i64 0, i64 1, i32 1
  store ptr %48, ptr %50, align 8, !tbaa !5
  %51 = getelementptr inbounds [2 x %struct.LIST], ptr %48, i64 0, i64 1
  store ptr %48, ptr %51, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.LIST, ptr %48, i64 0, i32 1
  store ptr %48, ptr %52, align 8, !tbaa !5
  store ptr %48, ptr %48, align 8, !tbaa !5
  store ptr %48, ptr @xx_link, align 8, !tbaa !10
  store ptr %48, ptr @zz_res, align 8, !tbaa !10
  store ptr %9, ptr @zz_hold, align 8, !tbaa !10
  %53 = load ptr, ptr %9, align 8, !tbaa !5
  store ptr %53, ptr @zz_tmp, align 8, !tbaa !10
  %54 = load ptr, ptr %48, align 8, !tbaa !5
  store ptr %54, ptr %9, align 8, !tbaa !5
  %55 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %56 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = getelementptr inbounds %struct.LIST, ptr %57, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !5
  %59 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %59, ptr %56, align 8, !tbaa !5
  %60 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %61 = getelementptr inbounds %struct.LIST, ptr %59, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !5
  %62 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %62, ptr @zz_res, align 8, !tbaa !10
  store ptr %33, ptr @zz_hold, align 8, !tbaa !10
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %47
  %65 = getelementptr inbounds [2 x %struct.LIST], ptr %33, i64 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  store ptr %66, ptr @zz_tmp, align 8, !tbaa !10
  %67 = getelementptr inbounds [2 x %struct.LIST], ptr %62, i64 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  store ptr %68, ptr %65, align 8, !tbaa !5
  %69 = getelementptr inbounds [2 x %struct.LIST], ptr %68, i64 0, i64 1, i32 1
  store ptr %33, ptr %69, align 8, !tbaa !5
  store ptr %66, ptr %67, align 8, !tbaa !5
  %70 = getelementptr inbounds [2 x %struct.LIST], ptr %66, i64 0, i64 1, i32 1
  store ptr %62, ptr %70, align 8, !tbaa !5
  br label %71

71:                                               ; preds = %47, %64, %23
  %72 = load i32, ptr %5, align 4, !tbaa !8
  %73 = load i32, ptr %31, align 8
  %74 = shl i32 %72, 31
  %75 = and i32 %73, 2147483647
  %76 = or disjoint i32 %75, %74
  store i32 %76, ptr %31, align 8
  br label %77

77:                                               ; preds = %71, %20
  %78 = phi ptr [ %22, %20 ], [ %32, %71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret ptr %78
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc ptr @SearchPath(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #0 {
  %9 = alloca [512 x i8], align 16
  %10 = alloca [512 x i8], align 16
  %11 = alloca %struct.stat, align 8
  %12 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %10) #15
  store i32 0, ptr %7, align 4, !tbaa !8
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.37) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  store ptr null, ptr %4, align 8, !tbaa !10
  %16 = load ptr, ptr @stdin, align 8, !tbaa !10
  br label %121

17:                                               ; preds = %8
  %18 = tail call i32 @StringBeginsWith(ptr noundef %0, ptr noundef nonnull @.str.36) #15
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr @empty_path, align 8
  %21 = select i1 %19, ptr %1, ptr %20
  %22 = getelementptr inbounds %struct.LIST, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, %21
  br i1 %24, label %118, label %25

25:                                               ; preds = %17
  %26 = icmp ne i32 %2, 0
  %27 = getelementptr inbounds %struct.stat, ptr %12, i64 0, i32 13
  %28 = getelementptr inbounds %struct.stat, ptr %11, i64 0, i32 13
  %29 = icmp eq i32 %3, 0
  br label %30

30:                                               ; preds = %25, %104
  %31 = phi ptr [ %23, %25 ], [ %106, %104 ]
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi ptr [ %35, %32 ], [ %31, %30 ]
  %34 = getelementptr inbounds [2 x %struct.LIST], ptr %33, i64 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.word_type, ptr %35, i64 0, i32 1
  %37 = load i8, ptr %36, align 8, !tbaa !5
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %32, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.word_type, ptr %35, i64 0, i32 1
  %41 = getelementptr inbounds %struct.word_type, ptr %35, i64 0, i32 4
  %42 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41) #17
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #15
  br label %58

46:                                               ; preds = %39
  %47 = add i64 %42, 1
  %48 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %49 = add i64 %47, %48
  %50 = icmp ugt i64 %49, 511
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 3, i32 noundef 15, ptr noundef nonnull @.str.38, i32 noundef 1, ptr noundef nonnull %40, ptr noundef nonnull %41, ptr noundef nonnull @.str.36, ptr noundef %0) #15
  br label %53

53:                                               ; preds = %51, %46
  %54 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %41) #15
  %55 = call i64 @strlen(ptr nonnull dereferenceable(1) %9)
  %56 = getelementptr inbounds i8, ptr %9, i64 %55
  store i16 47, ptr %56, align 1
  %57 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #15
  br label %58

58:                                               ; preds = %53, %44
  %59 = call noalias ptr @fopen(ptr noundef nonnull %9, ptr noundef %6)
  %60 = icmp eq ptr %59, null
  %61 = and i1 %26, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %9) #15
  %64 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #17
  %65 = add i64 %64, -3
  %66 = getelementptr inbounds [512 x i8], ptr %10, i64 0, i64 %65
  store i32 6581294, ptr %66, align 1
  %67 = call noalias ptr @fopen(ptr noundef nonnull %10, ptr noundef nonnull @.str.27)
  %68 = icmp eq ptr %67, null
  br i1 %68, label %92, label %69

69:                                               ; preds = %62
  %70 = call i32 @fclose(ptr noundef nonnull %67)
  store ptr null, ptr %4, align 8, !tbaa !10
  br label %121

71:                                               ; preds = %58
  %72 = icmp ne ptr %59, null
  %73 = and i1 %26, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %12) #15
  %75 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %9) #15
  %76 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #17
  %77 = add i64 %76, -3
  %78 = getelementptr inbounds [512 x i8], ptr %10, i64 0, i64 %77
  store i32 6581294, ptr %78, align 1
  %79 = call i32 @stat(ptr noundef nonnull %9, ptr noundef nonnull %11) #15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = call i32 @stat(ptr noundef nonnull %10, ptr noundef nonnull %12) #15
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i64, ptr %27, align 8, !tbaa !22
  %86 = load i64, ptr %28, align 8, !tbaa !22
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = call i32 @fclose(ptr noundef nonnull %59)
  %90 = call i32 @remove(ptr noundef nonnull %9) #15
  store ptr null, ptr %4, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %11) #15
  br label %121

91:                                               ; preds = %74, %81, %84
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %11) #15
  br label %92

92:                                               ; preds = %62, %91, %71
  %93 = phi i1 [ true, %91 ], [ %72, %71 ], [ false, %62 ]
  br i1 %29, label %104, label %94

94:                                               ; preds = %92
  %95 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %9) #15
  %96 = call i64 @strlen(ptr nonnull dereferenceable(1) %10)
  %97 = getelementptr inbounds i8, ptr %10, i64 %96
  store i32 7629870, ptr %97, align 1
  %98 = call noalias ptr @fopen(ptr noundef nonnull %10, ptr noundef nonnull @.str.27)
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %94
  br i1 %93, label %101, label %103

101:                                              ; preds = %100
  %102 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 3, i32 noundef 16, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef %5, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  br label %103

103:                                              ; preds = %100, %101
  store i32 1, ptr %7, align 4, !tbaa !8
  br label %111

104:                                              ; preds = %92, %94
  %105 = getelementptr inbounds %struct.LIST, ptr %31, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  %107 = icmp eq ptr %59, null
  %108 = icmp ne ptr %106, %21
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %30, label %110

110:                                              ; preds = %104
  br i1 %107, label %118, label %111

111:                                              ; preds = %103, %110
  %112 = phi ptr [ %98, %103 ], [ %59, %110 ]
  %113 = getelementptr inbounds %struct.word_type, ptr %35, i64 0, i32 4
  %114 = load i8, ptr %113, align 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %9, ptr noundef %5) #15
  br label %118

118:                                              ; preds = %17, %110, %111, %116
  %119 = phi ptr [ %112, %116 ], [ %112, %111 ], [ %59, %110 ], [ null, %17 ]
  %120 = phi ptr [ %117, %116 ], [ null, %111 ], [ null, %110 ], [ null, %17 ]
  store ptr %120, ptr %4, align 8, !tbaa !10
  br label %121

121:                                              ; preds = %88, %118, %69, %15
  %122 = phi ptr [ %16, %15 ], [ null, %69 ], [ %119, %118 ], [ null, %88 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %9) #15
  ret ptr %122
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OpenIncGraphicFile(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  %8 = icmp eq i8 %1, 94
  %9 = and i8 %1, -2
  %10 = icmp eq i8 %9, 94
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %13 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %12, ptr noundef nonnull @.str.26) #15
  br label %14

14:                                               ; preds = %11, %5
  %15 = select i1 %8, i64 1, i64 2
  %16 = getelementptr inbounds [8 x ptr], ptr @file_path, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = call fastcc ptr @SearchPath(ptr noundef %0, ptr noundef %17, i32 noundef 0, i32 noundef 0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull %6)
  %19 = load ptr, ptr %2, align 8, !tbaa !10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef %0, ptr noundef %3) #15
  store ptr %22, ptr %2, align 8, !tbaa !10
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi ptr [ %22, %21 ], [ %19, %14 ]
  %25 = icmp eq ptr %18, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.word_type, ptr %24, i64 0, i32 4
  %28 = tail call i32 @StringEndsWith(ptr noundef nonnull %27, ptr noundef nonnull @.str.40) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %57

30:                                               ; preds = %23
  store i32 0, ptr %4, align 4, !tbaa !8
  br label %72

31:                                               ; preds = %26
  %32 = load ptr, ptr %2, align 8, !tbaa !10
  %33 = getelementptr inbounds %struct.word_type, ptr %32, i64 0, i32 4
  %34 = tail call i32 @StringEndsWith(ptr noundef nonnull %33, ptr noundef nonnull @.str.41) #15
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load ptr, ptr %2, align 8, !tbaa !10
  %38 = getelementptr inbounds %struct.word_type, ptr %37, i64 0, i32 4
  %39 = tail call i32 @StringEndsWith(ptr noundef nonnull %38, ptr noundef nonnull @.str.42) #15
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load ptr, ptr %2, align 8, !tbaa !10
  %43 = getelementptr inbounds %struct.word_type, ptr %42, i64 0, i32 4
  %44 = tail call i32 @StringEndsWith(ptr noundef nonnull %43, ptr noundef nonnull @.str.43) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load ptr, ptr %2, align 8, !tbaa !10
  %48 = getelementptr inbounds %struct.word_type, ptr %47, i64 0, i32 4
  %49 = tail call i32 @StringEndsWith(ptr noundef nonnull %48, ptr noundef nonnull @.str.44) #15
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load ptr, ptr %2, align 8, !tbaa !10
  %53 = getelementptr inbounds %struct.word_type, ptr %52, i64 0, i32 4
  %54 = tail call i32 @StringEndsWith(ptr noundef nonnull %53, ptr noundef nonnull @.str.45) #15
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, ptr %4, align 4, !tbaa !8
  br label %72

57:                                               ; preds = %51, %46, %41, %36, %31, %26
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #15
  %58 = tail call i32 @fclose(ptr noundef nonnull %18)
  %59 = load ptr, ptr %2, align 8, !tbaa !10
  %60 = getelementptr inbounds %struct.word_type, ptr %59, i64 0, i32 4
  %61 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull %60, ptr noundef nonnull @.str.29) #15
  %62 = load i32, ptr @SafeExecution, align 4, !tbaa !8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 3, i32 noundef 17, ptr noundef nonnull @.str.30, i32 noundef 2, ptr noundef %3, ptr noundef nonnull %7) #15
  br label %69

66:                                               ; preds = %57
  %67 = call i32 @system(ptr noundef nonnull %7) #15
  %68 = tail call noalias ptr @fopen(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27)
  br label %69

69:                                               ; preds = %66, %64
  %70 = phi i32 [ 1, %66 ], [ 0, %64 ]
  %71 = phi ptr [ %68, %66 ], [ null, %64 ]
  store i32 %70, ptr %4, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #15
  br label %72

72:                                               ; preds = %69, %56, %30
  %73 = phi ptr [ null, %30 ], [ %71, %69 ], [ %18, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  ret ptr %73
}

declare i32 @StringEndsWith(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i32 @system(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FileSetUpdated(i16 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = load ptr, ptr @file_tab, align 8, !tbaa !10
  %4 = zext i16 %0 to i64
  %5 = getelementptr inbounds %struct.anon.14, ptr %3, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.word_type, ptr %6, i64 0, i32 3, i32 1
  store i32 1, ptr %7, align 8, !tbaa !5
  %8 = load ptr, ptr %5, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.word_type, ptr %8, i64 0, i32 3, i32 1, i64 4
  store i32 %1, ptr %9, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileGetLineCount(i16 noundef zeroext %0) local_unnamed_addr #10 {
  %2 = load ptr, ptr @file_tab, align 8, !tbaa !10
  %3 = zext i16 %0 to i64
  %4 = getelementptr inbounds %struct.anon.14, ptr %2, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.word_type, ptr %5, i64 0, i32 3, i32 1, i64 4
  %7 = load i32, ptr %6, align 4, !tbaa !5
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FileTestUpdated(i16 noundef zeroext %0) local_unnamed_addr #10 {
  %2 = load ptr, ptr @file_tab, align 8, !tbaa !10
  %3 = zext i16 %0 to i64
  %4 = getelementptr inbounds %struct.anon.14, ptr %2, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.word_type, ptr %5, i64 0, i32 3, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !5
  ret i32 %7
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

declare i32 @StringBeginsWith(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !9, i64 0}
!13 = !{!"", !9, i64 0, !9, i64 4, !6, i64 8}
!14 = !{!13, !9, i64 4}
!15 = !{!16, !11, i64 0}
!16 = !{!"filetab_rec", !11, i64 0, !11, i64 8}
!17 = !{!16, !11, i64 8}
!18 = !{!19, !20, i64 2}
!19 = !{!"", !6, i64 0, !6, i64 1, !20, i64 2, !9, i64 4, !9, i64 6}
!20 = !{!"short", !6, i64 0}
!21 = !{i16 0, i16 4096}
!22 = !{!23, !24, i64 88}
!23 = !{!"stat", !24, i64 0, !24, i64 8, !24, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !24, i64 88, !24, i64 96, !24, i64 104, !24, i64 112, !6, i64 120}
!24 = !{!"long", !6, i64 0}
