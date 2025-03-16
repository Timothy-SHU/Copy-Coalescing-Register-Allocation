; ModuleID = 'src/z33.c'
source_filename = "src/z33.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.anon.14 = type { i32, i32, [1 x ptr] }
%struct.cr_type = type { [2 x %struct.LIST], i8, i8, i16, ptr, i32, i32, i32, i32, ptr, ptr, i16 }
%struct.link_type = type { [2 x %struct.LIST], i8, i8, i8 }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"DbCreate: !is_word(type(x))\00", align 1
@DbInsert.extra_seq = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"DbInsert: db!\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"DbInsert: null tag!\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"DbInsert: null seq!\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"DbInsert: insert into reading database\00", align 1
@DbCheckTableInit = internal unnamed_addr global i1 false, align 4
@DbCheckTable = internal global ptr null, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"cross reference %s&&%s used previously, at%s\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"cross reference %s&&%s used previously\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"database file name %s%s is too long\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".lix\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"cannot write to database file %s\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"SymToNum: yy!\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [25 x i8] c"%s%d&%s\09%s\09%s\09%ld\09%d\09%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"DbConvert: reading database\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c".li\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"00 %s %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Basser Lout Version 3.24 (October 2000)\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"database index file\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"DbConvert: y!\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"%s %d %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"00target\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"00symbol\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c" \00", align 1
@xx_hold = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [4 x i8] c".ld\00", align 1
@StartSym = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [33 x i8] c"syntax error in database file %s\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"DbLoad: create && symbs == nilobj!\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"%s found in database but not declared in %s line\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"@Database\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"database symbol %s has no tag\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"database symbol tag is not a simple word\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"database symbol tag is an empty word\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"DbLoad: FileName(dfnum) (1)!\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"%s or end of file expected here\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"DbLoad: FileName(dfnum) (2)!\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"cannot open database file %s\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"DbLoad: FileName(index_fnum)!\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"DbLoad: type(symbs)!\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"00target \00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"00target %d\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"00symbol %d\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"DbLoad: type(y) != CLOSURE!\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"undefined symbol in database file %s (line %d)\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"%s%d&%s\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"%*[^\09]\09%[^\09]\09%*[^\09]\09%ld\09%d\09%[^\0A]\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"DbRetrieveNext: not reading\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"%d&%[^\09]\09%[^\09]\09%*[^\09]\09%ld\09%d\09%[^\0A]\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"NumToSym: no sym\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"NumToSym: y!\00", align 1
@OldCrossDb = dso_local local_unnamed_addr global ptr null, align 8
@NewCrossDb = dso_local local_unnamed_addr global ptr null, align 8
@.str.55 = private unnamed_addr constant [42 x i8] c"run out of memory enlarging dbcheck table\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"Dbcheck: entry inserted twice\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"dtab_rehash: ACAT!\00", align 1
@UseCollate = external local_unnamed_addr global i32, align 4
@.str.58 = private unnamed_addr constant [6 x i8] c"%[^\09]\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"SearchFile: l > mid!\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"SearchFile: mid >= mid_end!\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"SearchFile: mid_end > r!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @DbCreate(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !5
  %4 = add i8 %3, -11
  %5 = icmp ult i8 %4, 2
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %8 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %7, ptr noundef nonnull @.str.1) #12
  br label %9

9:                                                ; preds = %1, %6
  %10 = getelementptr inbounds i8, ptr %0, i64 42
  store i8 0, ptr %10, align 2, !tbaa !5
  %11 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  store ptr null, ptr %11, align 8, !tbaa !5
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @DbInsert(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i16 noundef zeroext %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %11) #12
  %12 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %13 = load i8, ptr %12, align 8, !tbaa !5
  %14 = add i8 %13, -11
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %18 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %17, ptr noundef nonnull @.str.2) #12
  br label %19

19:                                               ; preds = %10, %16
  %20 = load i8, ptr %3, align 1, !tbaa !5
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %24 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %23, ptr noundef nonnull @.str.3) #12
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i8, ptr %5, align 1, !tbaa !5
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %30 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %29, ptr noundef nonnull @.str.4) #12
  br label %31

31:                                               ; preds = %28, %25
  %32 = getelementptr inbounds i8, ptr %0, i64 42
  %33 = load i8, ptr %32, align 2, !tbaa !5
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %37 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %36, ptr noundef nonnull @.str.5) #12
  br label %38

38:                                               ; preds = %35, %31
  %39 = icmp eq i32 %9, 0
  br i1 %39, label %113, label %40

40:                                               ; preds = %38
  %41 = load i1, ptr @DbCheckTableInit, align 4
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = load ptr, ptr @DbCheckTable, align 8, !tbaa !8
  br label %52

44:                                               ; preds = %40
  %45 = tail call noalias dereferenceable_or_null(864) ptr @malloc(i64 noundef 864) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %49 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 1, ptr noundef nonnull @.str.55, i32 noundef 1, ptr noundef %48) #12
  br label %50

50:                                               ; preds = %44, %47
  store i32 107, ptr %45, align 8, !tbaa !10
  %51 = getelementptr inbounds %struct.anon.14, ptr %45, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(860) %51, i8 0, i64 860, i1 false)
  store ptr %45, ptr @DbCheckTable, align 8, !tbaa !8
  store i1 true, ptr @DbCheckTableInit, align 4
  br label %52

52:                                               ; preds = %42, %50
  %53 = phi ptr [ %43, %42 ], [ %45, %50 ]
  %54 = ptrtoint ptr %2 to i64
  %55 = load i8, ptr %3, align 1, !tbaa !5
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52, %57
  %58 = phi i8 [ %64, %57 ], [ %55, %52 ]
  %59 = phi ptr [ %61, %57 ], [ %3, %52 ]
  %60 = phi i64 [ %63, %57 ], [ %54, %52 ]
  %61 = getelementptr inbounds i8, ptr %59, i64 1
  %62 = zext i8 %58 to i64
  %63 = add i64 %60, %62
  %64 = load i8, ptr %61, align 1, !tbaa !5
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %57

66:                                               ; preds = %57, %52
  %67 = phi i64 [ %54, %52 ], [ %63, %57 ]
  %68 = load i32, ptr %53, align 8, !tbaa !10
  %69 = sext i32 %68 to i64
  %70 = urem i64 %67, %69
  %71 = getelementptr inbounds %struct.anon.14, ptr %53, i64 0, i32 2, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %99, label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.LIST, ptr %72, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  %77 = icmp eq ptr %76, %72
  br i1 %77, label %99, label %78

78:                                               ; preds = %74, %95
  %79 = phi ptr [ %97, %95 ], [ %76, %74 ]
  br label %80

80:                                               ; preds = %80, %78
  %81 = phi ptr [ %83, %80 ], [ %79, %78 ]
  %82 = getelementptr inbounds [2 x %struct.LIST], ptr %81, i64 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = getelementptr inbounds %struct.word_type, ptr %83, i64 0, i32 1
  %85 = load i8, ptr %84, align 8, !tbaa !5
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %80, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.word_type, ptr %83, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = icmp eq ptr %89, %2
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.word_type, ptr %83, i64 0, i32 4
  %93 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %92) #14
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %91, %87
  %96 = getelementptr inbounds %struct.LIST, ptr %79, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = icmp eq ptr %97, %72
  br i1 %98, label %99, label %78

99:                                               ; preds = %95, %66, %74
  %100 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %3, ptr noundef %4) #12
  %101 = getelementptr inbounds %struct.word_type, ptr %100, i64 0, i32 3
  store ptr %2, ptr %101, align 8, !tbaa !5
  tail call fastcc void @dtab_insert(ptr noundef %100, ptr noundef nonnull @DbCheckTable)
  br label %113

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.word_type, ptr %83, i64 0, i32 1, i32 0, i32 2
  %104 = load i16, ptr %103, align 2, !tbaa !5
  %105 = icmp eq i16 %104, 0
  %106 = tail call ptr @SymName(ptr noundef %2) #12
  br i1 %105, label %111, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.word_type, ptr %83, i64 0, i32 1
  %109 = tail call ptr @EchoFilePos(ptr noundef nonnull %108) #12
  %110 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef %4, ptr noundef %106, ptr noundef nonnull %3, ptr noundef %109) #12
  br label %113

111:                                              ; preds = %102
  %112 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 5, ptr noundef nonnull @.str.7, i32 noundef 2, ptr noundef %4, ptr noundef %106, ptr noundef nonnull %3) #12
  br label %113

113:                                              ; preds = %99, %111, %107, %38
  %114 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !5
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %133

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %119 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %118) #14
  %120 = add i64 %119, -508
  %121 = icmp ult i64 %120, -512
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %124 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef %123, ptr noundef nonnull %118, ptr noundef nonnull @.str.9) #12
  br label %125

125:                                              ; preds = %122, %117
  %126 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %118) #12
  %127 = call i64 @strlen(ptr nonnull dereferenceable(1) %11)
  %128 = getelementptr inbounds i8, ptr %11, i64 %127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %128, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, i64 5, i1 false)
  %129 = call noalias ptr @fopen(ptr noundef nonnull %11, ptr noundef nonnull @.str.10)
  store ptr %129, ptr %114, align 8, !tbaa !5
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 3, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull %12, ptr noundef nonnull %11) #12
  br label %133

133:                                              ; preds = %125, %131, %113
  %134 = icmp eq i16 %6, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %133
  %136 = call ptr @FileName(i16 noundef zeroext %6) #12
  %137 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %136) #12
  %138 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #14
  %139 = add i64 %138, -3
  %140 = getelementptr inbounds [512 x i8], ptr %11, i64 0, i64 %139
  store i8 0, ptr %140, align 1
  br label %142

141:                                              ; preds = %133
  store i16 46, ptr %11, align 16
  br label %142

142:                                              ; preds = %141, %135
  %143 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !5
  %145 = icmp eq ptr %144, %0
  br i1 %145, label %180, label %146

146:                                              ; preds = %142, %172
  %147 = phi ptr [ %175, %172 ], [ %144, %142 ]
  %148 = phi i32 [ %173, %172 ], [ 0, %142 ]
  br label %149

149:                                              ; preds = %146, %149
  %150 = phi ptr [ %152, %149 ], [ %147, %146 ]
  %151 = getelementptr inbounds [2 x %struct.LIST], ptr %150, i64 0, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !5
  %153 = getelementptr inbounds %struct.word_type, ptr %152, i64 0, i32 1
  %154 = load i8, ptr %153, align 8, !tbaa !5
  switch i8 %154, label %155 [
    i8 0, label %149
    i8 -116, label %160
    i8 17, label %160
  ]

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.word_type, ptr %152, i64 0, i32 1
  %157 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %158 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %157, ptr noundef nonnull @.str.14) #12
  %159 = load i8, ptr %156, align 8, !tbaa !5
  br label %160

160:                                              ; preds = %149, %149, %155
  %161 = phi i8 [ %159, %155 ], [ %154, %149 ], [ %154, %149 ]
  %162 = icmp eq i8 %161, -116
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.cr_type, ptr %152, i64 0, i32 9
  %165 = load ptr, ptr %164, align 8, !tbaa !5
  %166 = icmp eq ptr %165, %2
  %167 = getelementptr inbounds %struct.link_type, ptr %147, i64 0, i32 2
  %168 = load i8, ptr %167, align 1, !tbaa !5
  br i1 %166, label %233, label %169

169:                                              ; preds = %163
  %170 = zext i8 %168 to i32
  %171 = call i32 @llvm.smax.i32(i32 %148, i32 %170)
  br label %172

172:                                              ; preds = %169, %160
  %173 = phi i32 [ %148, %160 ], [ %171, %169 ]
  %174 = getelementptr inbounds %struct.LIST, ptr %147, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !5
  %176 = icmp eq ptr %175, %0
  br i1 %176, label %177, label %146

177:                                              ; preds = %172
  %178 = trunc i32 %173 to i8
  %179 = add i8 %178, 1
  br label %180

180:                                              ; preds = %177, %142
  %181 = phi i8 [ 1, %142 ], [ %179, %177 ]
  %182 = getelementptr inbounds %struct.symbol_type, ptr %2, i64 0, i32 8
  %183 = load ptr, ptr %182, align 8, !tbaa !5
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  call void @CrossInit(ptr noundef nonnull %2) #12
  br label %186

186:                                              ; preds = %185, %180
  %187 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %188 = zext i8 %187 to i32
  store i32 %188, ptr @zz_size, align 4, !tbaa !13
  %189 = zext i8 %187 to i64
  %190 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %195 = call ptr @GetMemory(i32 noundef %188, ptr noundef %194) #12
  br label %198

196:                                              ; preds = %186
  store ptr %191, ptr @zz_hold, align 8, !tbaa !8
  %197 = load ptr, ptr %191, align 8, !tbaa !5
  store ptr %197, ptr %190, align 8, !tbaa !8
  br label %198

198:                                              ; preds = %193, %196
  %199 = phi ptr [ %195, %193 ], [ %191, %196 ]
  %200 = getelementptr inbounds %struct.word_type, ptr %199, i64 0, i32 1
  store i8 0, ptr %200, align 8, !tbaa !5
  %201 = getelementptr inbounds [2 x %struct.LIST], ptr %199, i64 0, i64 1, i32 1
  store ptr %199, ptr %201, align 8, !tbaa !5
  %202 = getelementptr inbounds [2 x %struct.LIST], ptr %199, i64 0, i64 1
  store ptr %199, ptr %202, align 8, !tbaa !5
  %203 = getelementptr inbounds %struct.LIST, ptr %199, i64 0, i32 1
  store ptr %199, ptr %203, align 8, !tbaa !5
  store ptr %199, ptr %199, align 8, !tbaa !5
  store ptr %199, ptr @xx_link, align 8, !tbaa !8
  store ptr %199, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %204 = icmp eq ptr %0, null
  br i1 %204, label %216, label %205

205:                                              ; preds = %198
  %206 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %206, ptr @zz_tmp, align 8, !tbaa !8
  %207 = load ptr, ptr %199, align 8, !tbaa !5
  store ptr %207, ptr %0, align 8, !tbaa !5
  %208 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %209 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %210 = load ptr, ptr %209, align 8, !tbaa !5
  %211 = getelementptr inbounds %struct.LIST, ptr %210, i64 0, i32 1
  store ptr %208, ptr %211, align 8, !tbaa !5
  %212 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %212, ptr %209, align 8, !tbaa !5
  %213 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %214 = getelementptr inbounds %struct.LIST, ptr %212, i64 0, i32 1
  store ptr %213, ptr %214, align 8, !tbaa !5
  %215 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %216

216:                                              ; preds = %198, %205
  %217 = phi ptr [ %199, %198 ], [ %215, %205 ]
  store ptr %217, ptr @zz_res, align 8, !tbaa !8
  %218 = load ptr, ptr %182, align 8, !tbaa !5
  store ptr %218, ptr @zz_hold, align 8, !tbaa !8
  %219 = icmp eq ptr %218, null
  %220 = icmp eq ptr %217, null
  %221 = select i1 %219, i1 true, i1 %220
  br i1 %221, label %229, label %222

222:                                              ; preds = %216
  %223 = getelementptr inbounds [2 x %struct.LIST], ptr %218, i64 0, i64 1
  %224 = load ptr, ptr %223, align 8, !tbaa !5
  store ptr %224, ptr @zz_tmp, align 8, !tbaa !8
  %225 = getelementptr inbounds [2 x %struct.LIST], ptr %217, i64 0, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !5
  store ptr %226, ptr %223, align 8, !tbaa !5
  %227 = getelementptr inbounds [2 x %struct.LIST], ptr %226, i64 0, i64 1, i32 1
  store ptr %218, ptr %227, align 8, !tbaa !5
  store ptr %224, ptr %225, align 8, !tbaa !5
  %228 = getelementptr inbounds [2 x %struct.LIST], ptr %224, i64 0, i64 1, i32 1
  store ptr %217, ptr %228, align 8, !tbaa !5
  br label %229

229:                                              ; preds = %216, %222
  %230 = load ptr, ptr %0, align 8, !tbaa !5
  %231 = getelementptr inbounds %struct.link_type, ptr %230, i64 0, i32 2
  store i8 %181, ptr %231, align 1, !tbaa !5
  %232 = getelementptr inbounds %struct.link_type, ptr %230, i64 0, i32 3
  store i8 0, ptr %232, align 2, !tbaa !5
  br label %233

233:                                              ; preds = %163, %229
  %234 = phi i8 [ %181, %229 ], [ %168, %163 ]
  %235 = phi ptr [ %230, %229 ], [ %147, %163 ]
  %236 = icmp eq i32 %1, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds i8, ptr %2, i64 41
  %239 = load i24, ptr %238, align 1
  %240 = or i24 %239, 6144
  store i24 %240, ptr %238, align 1
  %241 = getelementptr inbounds %struct.link_type, ptr %235, i64 0, i32 3
  store i8 1, ptr %241, align 2, !tbaa !5
  br label %242

242:                                              ; preds = %237, %233
  %243 = phi ptr [ @.str.17, %237 ], [ @.str.12, %233 ]
  %244 = zext i8 %234 to i32
  %245 = load ptr, ptr %114, align 8, !tbaa !5
  %246 = load i32, ptr @DbInsert.extra_seq, align 4, !tbaa !13
  %247 = add nsw i32 %246, 1
  store i32 %247, ptr @DbInsert.extra_seq, align 4, !tbaa !13
  %248 = call ptr @StringFiveInt(i32 noundef %247) #12
  %249 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %245, ptr noundef nonnull @.str.16, ptr noundef nonnull %243, i32 noundef %244, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef %248, i64 noundef %7, i32 noundef %8, ptr noundef nonnull %11)
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %11) #12
  ret void
}

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @dtab_insert(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !8
  %5 = getelementptr inbounds %struct.anon.14, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !14
  %7 = load i32, ptr %4, align 8, !tbaa !10
  %8 = add nsw i32 %7, -1
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %74

10:                                               ; preds = %2
  %11 = shl nsw i32 %7, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = or disjoint i64 %13, 8
  %15 = tail call noalias ptr @malloc(i64 noundef %14) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %19 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 1, ptr noundef nonnull @.str.55, i32 noundef 1, ptr noundef %18) #12
  br label %20

20:                                               ; preds = %17, %10
  store i32 %11, ptr %15, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.anon.14, ptr %15, i64 0, i32 1
  store i32 0, ptr %21, align 4, !tbaa !14
  %22 = icmp sgt i32 %7, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %15, i64 8
  %25 = zext nneg i32 %11 to i64
  %26 = shl nuw nsw i64 %25, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %24, i8 0, i64 %26, i1 false), !tbaa !8
  br label %27

27:                                               ; preds = %20, %23
  store ptr %15, ptr %3, align 8, !tbaa !8
  %28 = load i32, ptr %4, align 8, !tbaa !10
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %27, %63
  %31 = phi i32 [ %64, %63 ], [ %28, %27 ]
  %32 = phi i64 [ %65, %63 ], [ 0, %27 ]
  %33 = getelementptr inbounds %struct.anon.14, ptr %4, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.word_type, ptr %34, i64 0, i32 1
  %38 = load i8, ptr %37, align 8, !tbaa !5
  %39 = icmp eq i8 %38, 17
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %42 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %41, ptr noundef nonnull @.str.57) #12
  br label %43

43:                                               ; preds = %40, %36
  %44 = getelementptr inbounds %struct.LIST, ptr %34, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %45, %34
  br i1 %46, label %60, label %47

47:                                               ; preds = %43, %56
  %48 = phi ptr [ %58, %56 ], [ %45, %43 ]
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi ptr [ %52, %49 ], [ %48, %47 ]
  %51 = getelementptr inbounds [2 x %struct.LIST], ptr %50, i64 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.word_type, ptr %52, i64 0, i32 1
  %54 = load i8, ptr %53, align 8, !tbaa !5
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %49, label %56

56:                                               ; preds = %49
  call fastcc void @dtab_insert(ptr noundef nonnull %52, ptr noundef nonnull %3)
  %57 = getelementptr inbounds %struct.LIST, ptr %48, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = icmp eq ptr %58, %34
  br i1 %59, label %60, label %47

60:                                               ; preds = %56, %43
  %61 = tail call i32 @DisposeObject(ptr noundef nonnull %34) #12
  %62 = load i32, ptr %4, align 8, !tbaa !10
  br label %63

63:                                               ; preds = %60, %30
  %64 = phi i32 [ %62, %60 ], [ %31, %30 ]
  %65 = add nuw nsw i64 %32, 1
  %66 = sext i32 %64 to i64
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %30, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %3, align 8, !tbaa !8
  br label %70

70:                                               ; preds = %68, %27
  %71 = phi ptr [ %69, %68 ], [ %15, %27 ]
  tail call void @free(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  store ptr %71, ptr %1, align 8, !tbaa !8
  %72 = getelementptr inbounds %struct.anon.14, ptr %71, i64 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !14
  br label %74

74:                                               ; preds = %70, %2
  %75 = phi i32 [ %73, %70 ], [ %6, %2 ]
  %76 = phi ptr [ %71, %70 ], [ %4, %2 ]
  %77 = getelementptr inbounds %struct.anon.14, ptr %76, i64 0, i32 1
  %78 = add nsw i32 %75, 1
  store i32 %78, ptr %77, align 4, !tbaa !14
  %79 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %80 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = ptrtoint ptr %81 to i64
  %83 = load i8, ptr %79, align 1, !tbaa !5
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %74, %85
  %86 = phi i8 [ %92, %85 ], [ %83, %74 ]
  %87 = phi ptr [ %89, %85 ], [ %79, %74 ]
  %88 = phi i64 [ %91, %85 ], [ %82, %74 ]
  %89 = getelementptr inbounds i8, ptr %87, i64 1
  %90 = zext i8 %86 to i64
  %91 = add i64 %88, %90
  %92 = load i8, ptr %89, align 1, !tbaa !5
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %85

94:                                               ; preds = %85, %74
  %95 = phi i64 [ %82, %74 ], [ %91, %85 ]
  %96 = load i32, ptr %76, align 8, !tbaa !10
  %97 = sext i32 %96 to i64
  %98 = urem i64 %95, %97
  %99 = getelementptr inbounds %struct.anon.14, ptr %76, i64 0, i32 2, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %125

102:                                              ; preds = %94
  %103 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %104 = zext i8 %103 to i32
  store i32 %104, ptr @zz_size, align 4, !tbaa !13
  %105 = zext i8 %103 to i64
  %106 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %111 = tail call ptr @GetMemory(i32 noundef %104, ptr noundef %110) #12
  store ptr %111, ptr @zz_hold, align 8, !tbaa !8
  br label %114

112:                                              ; preds = %102
  store ptr %107, ptr @zz_hold, align 8, !tbaa !8
  %113 = load ptr, ptr %107, align 8, !tbaa !5
  store ptr %113, ptr %106, align 8, !tbaa !8
  br label %114

114:                                              ; preds = %109, %112
  %115 = phi ptr [ %111, %109 ], [ %107, %112 ]
  %116 = getelementptr inbounds %struct.word_type, ptr %115, i64 0, i32 1
  store i8 17, ptr %116, align 8, !tbaa !5
  %117 = getelementptr inbounds [2 x %struct.LIST], ptr %115, i64 0, i64 1, i32 1
  store ptr %115, ptr %117, align 8, !tbaa !5
  %118 = getelementptr inbounds [2 x %struct.LIST], ptr %115, i64 0, i64 1
  store ptr %115, ptr %118, align 8, !tbaa !5
  %119 = getelementptr inbounds %struct.LIST, ptr %115, i64 0, i32 1
  store ptr %115, ptr %119, align 8, !tbaa !5
  store ptr %115, ptr %115, align 8, !tbaa !5
  %120 = load ptr, ptr %1, align 8, !tbaa !8
  %121 = getelementptr inbounds %struct.anon.14, ptr %120, i64 0, i32 2, i64 %98
  store ptr %115, ptr %121, align 8, !tbaa !8
  %122 = load ptr, ptr %1, align 8, !tbaa !8
  %123 = getelementptr inbounds %struct.anon.14, ptr %122, i64 0, i32 2, i64 %98
  %124 = load ptr, ptr %123, align 8, !tbaa !8
  br label %125

125:                                              ; preds = %114, %94
  %126 = phi ptr [ %124, %114 ], [ %100, %94 ]
  %127 = getelementptr inbounds %struct.LIST, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !5
  %129 = icmp eq ptr %128, %126
  br i1 %129, label %155, label %130

130:                                              ; preds = %125, %151
  %131 = phi ptr [ %153, %151 ], [ %128, %125 ]
  br label %132

132:                                              ; preds = %130, %132
  %133 = phi ptr [ %135, %132 ], [ %131, %130 ]
  %134 = getelementptr inbounds [2 x %struct.LIST], ptr %133, i64 0, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !5
  %136 = getelementptr inbounds %struct.word_type, ptr %135, i64 0, i32 1
  %137 = load i8, ptr %136, align 8, !tbaa !5
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %132, label %139

139:                                              ; preds = %132
  %140 = load ptr, ptr %80, align 8, !tbaa !5
  %141 = getelementptr inbounds %struct.word_type, ptr %135, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !5
  %143 = icmp eq ptr %140, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.word_type, ptr %135, i64 0, i32 4
  %146 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(1) %145) #14
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %150 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %149, ptr noundef nonnull @.str.56) #12
  br label %151

151:                                              ; preds = %139, %144, %148
  %152 = getelementptr inbounds %struct.LIST, ptr %131, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !5
  %154 = icmp eq ptr %153, %126
  br i1 %154, label %155, label %130

155:                                              ; preds = %151, %125
  %156 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %157 = zext i8 %156 to i32
  store i32 %157, ptr @zz_size, align 4, !tbaa !13
  %158 = zext i8 %156 to i64
  %159 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %164 = tail call ptr @GetMemory(i32 noundef %157, ptr noundef %163) #12
  store ptr %164, ptr @zz_hold, align 8, !tbaa !8
  br label %167

165:                                              ; preds = %155
  store ptr %160, ptr @zz_hold, align 8, !tbaa !8
  %166 = load ptr, ptr %160, align 8, !tbaa !5
  store ptr %166, ptr %159, align 8, !tbaa !8
  br label %167

167:                                              ; preds = %162, %165
  %168 = phi ptr [ %164, %162 ], [ %160, %165 ]
  %169 = getelementptr inbounds %struct.word_type, ptr %168, i64 0, i32 1
  store i8 0, ptr %169, align 8, !tbaa !5
  %170 = getelementptr inbounds [2 x %struct.LIST], ptr %168, i64 0, i64 1, i32 1
  store ptr %168, ptr %170, align 8, !tbaa !5
  %171 = getelementptr inbounds [2 x %struct.LIST], ptr %168, i64 0, i64 1
  store ptr %168, ptr %171, align 8, !tbaa !5
  %172 = getelementptr inbounds %struct.LIST, ptr %168, i64 0, i32 1
  store ptr %168, ptr %172, align 8, !tbaa !5
  store ptr %168, ptr %168, align 8, !tbaa !5
  store ptr %168, ptr @xx_link, align 8, !tbaa !8
  store ptr %168, ptr @zz_res, align 8, !tbaa !8
  %173 = load ptr, ptr %1, align 8, !tbaa !8
  %174 = getelementptr inbounds %struct.anon.14, ptr %173, i64 0, i32 2, i64 %98
  %175 = load ptr, ptr %174, align 8, !tbaa !8
  store ptr %175, ptr @zz_hold, align 8, !tbaa !8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %188, label %177

177:                                              ; preds = %167
  %178 = load ptr, ptr %175, align 8, !tbaa !5
  store ptr %178, ptr @zz_tmp, align 8, !tbaa !8
  %179 = load ptr, ptr %168, align 8, !tbaa !5
  store ptr %179, ptr %175, align 8, !tbaa !5
  %180 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %181 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %182 = load ptr, ptr %181, align 8, !tbaa !5
  %183 = getelementptr inbounds %struct.LIST, ptr %182, i64 0, i32 1
  store ptr %180, ptr %183, align 8, !tbaa !5
  %184 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %184, ptr %181, align 8, !tbaa !5
  %185 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %186 = getelementptr inbounds %struct.LIST, ptr %184, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !5
  %187 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %188

188:                                              ; preds = %167, %177
  %189 = phi ptr [ %168, %167 ], [ %187, %177 ]
  store ptr %189, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %190 = icmp eq ptr %0, null
  %191 = icmp eq ptr %189, null
  %192 = select i1 %190, i1 true, i1 %191
  br i1 %192, label %200, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %195 = load ptr, ptr %194, align 8, !tbaa !5
  store ptr %195, ptr @zz_tmp, align 8, !tbaa !8
  %196 = getelementptr inbounds [2 x %struct.LIST], ptr %189, i64 0, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !5
  store ptr %197, ptr %194, align 8, !tbaa !5
  %198 = getelementptr inbounds [2 x %struct.LIST], ptr %197, i64 0, i64 1, i32 1
  store ptr %0, ptr %198, align 8, !tbaa !5
  store ptr %195, ptr %196, align 8, !tbaa !5
  %199 = getelementptr inbounds [2 x %struct.LIST], ptr %195, i64 0, i64 1, i32 1
  store ptr %189, ptr %199, align 8, !tbaa !5
  br label %200

200:                                              ; preds = %188, %193
  ret void
}

declare ptr @SymName(ptr noundef) local_unnamed_addr #2

declare ptr @EchoFilePos(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

declare ptr @FileName(i16 noundef zeroext) local_unnamed_addr #2

declare void @CrossInit(ptr noundef) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare ptr @StringFiveInt(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DbConvert(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [522 x i8], align 16
  %4 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 522, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #12
  %5 = getelementptr inbounds i8, ptr %0, i64 42
  %6 = load i8, ptr %5, align 2, !tbaa !5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %9, ptr noundef nonnull @.str.18) #12
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %13 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %12) #12
  %14 = call i64 @strlen(ptr nonnull dereferenceable(1) %4)
  %15 = getelementptr inbounds i8, ptr %4, i64 %14
  store i32 6908974, ptr %15, align 1
  %16 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %12) #12
  %17 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %18 = getelementptr inbounds i8, ptr %3, i64 %17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %18, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, i64 5, i1 false)
  %19 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %98, label %22

22:                                               ; preds = %11
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22)
  %24 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %95, label %27

27:                                               ; preds = %22
  %28 = icmp eq i32 %1, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %27, %58
  %30 = phi ptr [ %60, %58 ], [ %25, %27 ]
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi ptr [ %34, %31 ], [ %30, %29 ]
  %33 = getelementptr inbounds [2 x %struct.LIST], ptr %32, i64 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.word_type, ptr %34, i64 0, i32 1
  %36 = load i8, ptr %35, align 8, !tbaa !5
  switch i8 %36, label %37 [
    i8 0, label %31
    i8 -116, label %42
    i8 17, label %42
  ]

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.word_type, ptr %34, i64 0, i32 1
  %39 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %40 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %39, ptr noundef nonnull @.str.23) #12
  %41 = load i8, ptr %38, align 8, !tbaa !5
  br label %42

42:                                               ; preds = %31, %31, %37
  %43 = phi i8 [ %41, %37 ], [ %36, %31 ], [ %36, %31 ]
  %44 = icmp eq i8 %43, -116
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load ptr, ptr %19, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.link_type, ptr %30, i64 0, i32 3
  %48 = load i8, ptr %47, align 2, !tbaa !5
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, ptr @.str.26, ptr @.str.25
  %51 = getelementptr inbounds %struct.link_type, ptr %30, i64 0, i32 2
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds %struct.cr_type, ptr %34, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = call ptr @SymName(ptr noundef %55) #12
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.24, ptr noundef nonnull %50, i32 noundef %53, ptr noundef %56)
  br label %58

58:                                               ; preds = %45, %42
  %59 = getelementptr inbounds %struct.LIST, ptr %30, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = icmp eq ptr %60, %0
  br i1 %61, label %95, label %29

62:                                               ; preds = %27, %91
  %63 = phi ptr [ %93, %91 ], [ %25, %27 ]
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi ptr [ %67, %64 ], [ %63, %62 ]
  %66 = getelementptr inbounds [2 x %struct.LIST], ptr %65, i64 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  %68 = getelementptr inbounds %struct.word_type, ptr %67, i64 0, i32 1
  %69 = load i8, ptr %68, align 8, !tbaa !5
  switch i8 %69, label %70 [
    i8 0, label %64
    i8 -116, label %75
    i8 17, label %75
  ]

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.word_type, ptr %67, i64 0, i32 1
  %72 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %73 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %72, ptr noundef nonnull @.str.23) #12
  %74 = load i8, ptr %71, align 8, !tbaa !5
  br label %75

75:                                               ; preds = %64, %64, %70
  %76 = phi i8 [ %74, %70 ], [ %69, %64 ], [ %69, %64 ]
  %77 = icmp eq i8 %76, -116
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load ptr, ptr %19, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.link_type, ptr %63, i64 0, i32 3
  %81 = load i8, ptr %80, align 2, !tbaa !5
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %82, ptr @.str.26, ptr @.str.25
  %84 = getelementptr inbounds %struct.link_type, ptr %63, i64 0, i32 2
  %85 = load i8, ptr %84, align 1, !tbaa !5
  %86 = zext i8 %85 to i32
  %87 = getelementptr inbounds %struct.cr_type, ptr %67, i64 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = call ptr @FullSymName(ptr noundef %88, ptr noundef nonnull @.str.27) #12
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.24, ptr noundef nonnull %83, i32 noundef %86, ptr noundef %89)
  br label %91

91:                                               ; preds = %75, %78
  %92 = getelementptr inbounds %struct.LIST, ptr %63, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %94 = icmp eq ptr %93, %0
  br i1 %94, label %95, label %62

95:                                               ; preds = %91, %58, %22
  %96 = load ptr, ptr %19, align 8, !tbaa !5
  %97 = call i32 @fclose(ptr noundef %96)
  call void @SortFile(ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  br label %100

98:                                               ; preds = %11
  %99 = call i32 @remove(ptr noundef nonnull %4) #12
  br label %100

100:                                              ; preds = %98, %95
  %101 = call i32 @remove(ptr noundef nonnull %3) #12
  store ptr %0, ptr @xx_hold, align 8, !tbaa !8
  %102 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %104 = icmp eq ptr %103, %0
  br i1 %104, label %105, label %110

105:                                              ; preds = %132, %100
  %106 = phi ptr [ %0, %100 ], [ %151, %132 ]
  %107 = getelementptr inbounds %struct.LIST, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !5
  %109 = icmp eq ptr %108, %106
  br i1 %109, label %200, label %155

110:                                              ; preds = %100, %132
  %111 = phi ptr [ %153, %132 ], [ %103, %100 ]
  store ptr %111, ptr @xx_link, align 8, !tbaa !8
  %112 = getelementptr inbounds [2 x %struct.LIST], ptr %111, i64 0, i64 1, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !5
  %114 = icmp eq ptr %113, %111
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  store ptr %113, ptr @zz_res, align 8, !tbaa !8
  %116 = getelementptr inbounds [2 x %struct.LIST], ptr %111, i64 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !5
  %118 = getelementptr inbounds [2 x %struct.LIST], ptr %113, i64 0, i64 1
  store ptr %117, ptr %118, align 8, !tbaa !5
  %119 = getelementptr inbounds [2 x %struct.LIST], ptr %117, i64 0, i64 1, i32 1
  store ptr %113, ptr %119, align 8, !tbaa !5
  store ptr %111, ptr %112, align 8, !tbaa !5
  store ptr %111, ptr %116, align 8, !tbaa !5
  br label %120

120:                                              ; preds = %110, %115
  store ptr %111, ptr @zz_hold, align 8, !tbaa !8
  %121 = getelementptr inbounds %struct.LIST, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  %123 = icmp eq ptr %122, %111
  br i1 %123, label %132, label %124

124:                                              ; preds = %120
  store ptr %122, ptr @zz_res, align 8, !tbaa !8
  %125 = load ptr, ptr %111, align 8, !tbaa !5
  store ptr %125, ptr %122, align 8, !tbaa !5
  %126 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %127 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %128 = load ptr, ptr %127, align 8, !tbaa !5
  %129 = getelementptr inbounds %struct.LIST, ptr %128, i64 0, i32 1
  store ptr %126, ptr %129, align 8, !tbaa !5
  %130 = getelementptr inbounds %struct.LIST, ptr %127, i64 0, i32 1
  store ptr %127, ptr %130, align 8, !tbaa !5
  store ptr %127, ptr %127, align 8, !tbaa !5
  %131 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %132

132:                                              ; preds = %120, %124
  %133 = phi ptr [ %111, %120 ], [ %131, %124 ]
  store ptr %133, ptr @zz_hold, align 8, !tbaa !8
  %134 = getelementptr inbounds %struct.word_type, ptr %133, i64 0, i32 1
  %135 = load i8, ptr %134, align 8, !tbaa !5
  %136 = add i8 %135, -11
  %137 = icmp ult i8 %136, 2
  %138 = getelementptr inbounds %struct.word_type, ptr %133, i64 0, i32 1, i32 0, i32 1
  %139 = zext i8 %135 to i64
  %140 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %139
  %141 = select i1 %137, ptr %138, ptr %140
  %142 = load i8, ptr %141, align 1, !tbaa !5
  %143 = zext i8 %142 to i32
  store i32 %143, ptr @zz_size, align 4, !tbaa !13
  %144 = zext i8 %142 to i64
  %145 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !8
  store ptr %146, ptr %133, align 8, !tbaa !5
  %147 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %148 = load i32, ptr @zz_size, align 4, !tbaa !13
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %149
  store ptr %147, ptr %150, align 8, !tbaa !8
  %151 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %152 = getelementptr inbounds [2 x %struct.LIST], ptr %151, i64 0, i64 1, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !5
  %154 = icmp eq ptr %153, %151
  br i1 %154, label %105, label %110

155:                                              ; preds = %105, %177
  %156 = phi ptr [ %198, %177 ], [ %108, %105 ]
  store ptr %156, ptr @xx_link, align 8, !tbaa !8
  %157 = getelementptr inbounds [2 x %struct.LIST], ptr %156, i64 0, i64 1, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !5
  %159 = icmp eq ptr %158, %156
  br i1 %159, label %165, label %160

160:                                              ; preds = %155
  store ptr %158, ptr @zz_res, align 8, !tbaa !8
  %161 = getelementptr inbounds [2 x %struct.LIST], ptr %156, i64 0, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !5
  %163 = getelementptr inbounds [2 x %struct.LIST], ptr %158, i64 0, i64 1
  store ptr %162, ptr %163, align 8, !tbaa !5
  %164 = getelementptr inbounds [2 x %struct.LIST], ptr %162, i64 0, i64 1, i32 1
  store ptr %158, ptr %164, align 8, !tbaa !5
  store ptr %156, ptr %157, align 8, !tbaa !5
  store ptr %156, ptr %161, align 8, !tbaa !5
  br label %165

165:                                              ; preds = %155, %160
  store ptr %156, ptr @zz_hold, align 8, !tbaa !8
  %166 = getelementptr inbounds %struct.LIST, ptr %156, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !5
  %168 = icmp eq ptr %167, %156
  br i1 %168, label %177, label %169

169:                                              ; preds = %165
  store ptr %167, ptr @zz_res, align 8, !tbaa !8
  %170 = load ptr, ptr %156, align 8, !tbaa !5
  store ptr %170, ptr %167, align 8, !tbaa !5
  %171 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %172 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %173 = load ptr, ptr %172, align 8, !tbaa !5
  %174 = getelementptr inbounds %struct.LIST, ptr %173, i64 0, i32 1
  store ptr %171, ptr %174, align 8, !tbaa !5
  %175 = getelementptr inbounds %struct.LIST, ptr %172, i64 0, i32 1
  store ptr %172, ptr %175, align 8, !tbaa !5
  store ptr %172, ptr %172, align 8, !tbaa !5
  %176 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %177

177:                                              ; preds = %165, %169
  %178 = phi ptr [ %156, %165 ], [ %176, %169 ]
  store ptr %178, ptr @zz_hold, align 8, !tbaa !8
  %179 = getelementptr inbounds %struct.word_type, ptr %178, i64 0, i32 1
  %180 = load i8, ptr %179, align 8, !tbaa !5
  %181 = add i8 %180, -11
  %182 = icmp ult i8 %181, 2
  %183 = getelementptr inbounds %struct.word_type, ptr %178, i64 0, i32 1, i32 0, i32 1
  %184 = zext i8 %180 to i64
  %185 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %184
  %186 = select i1 %182, ptr %183, ptr %185
  %187 = load i8, ptr %186, align 1, !tbaa !5
  %188 = zext i8 %187 to i32
  store i32 %188, ptr @zz_size, align 4, !tbaa !13
  %189 = zext i8 %187 to i64
  %190 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !8
  store ptr %191, ptr %178, align 8, !tbaa !5
  %192 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %193 = load i32, ptr @zz_size, align 4, !tbaa !13
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %194
  store ptr %192, ptr %195, align 8, !tbaa !8
  %196 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %197 = getelementptr inbounds %struct.LIST, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !5
  %199 = icmp eq ptr %198, %196
  br i1 %199, label %200, label %155

200:                                              ; preds = %177, %105
  %201 = phi ptr [ %106, %105 ], [ %196, %177 ]
  store ptr %201, ptr @zz_hold, align 8, !tbaa !8
  %202 = getelementptr inbounds %struct.word_type, ptr %201, i64 0, i32 1
  %203 = load i8, ptr %202, align 8, !tbaa !5
  %204 = add i8 %203, -11
  %205 = icmp ult i8 %204, 2
  %206 = getelementptr inbounds %struct.word_type, ptr %201, i64 0, i32 1, i32 0, i32 1
  %207 = zext i8 %203 to i64
  %208 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %207
  %209 = select i1 %205, ptr %206, ptr %208
  %210 = load i8, ptr %209, align 1, !tbaa !5
  %211 = zext i8 %210 to i32
  store i32 %211, ptr @zz_size, align 4, !tbaa !13
  %212 = zext i8 %210 to i64
  %213 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %212
  %214 = load ptr, ptr %213, align 8, !tbaa !8
  store ptr %214, ptr %201, align 8, !tbaa !5
  %215 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %216 = load i32, ptr @zz_size, align 4, !tbaa !13
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %217
  store ptr %215, ptr %218, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 522, ptr nonnull %3) #12
  ret void
}

declare ptr @FullSymName(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

declare void @SortFile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @DbClose(ptr noundef %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 43
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @fclose(ptr noundef nonnull %9)
  store ptr null, ptr %8, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %11, %7, %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DbLoad(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [512 x i8], align 16
  %9 = alloca [512 x i8], align 16
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %9) #12
  %11 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %13 = tail call zeroext i16 @DefineFile(ptr noundef nonnull %11, ptr noundef nonnull @.str.19, ptr noundef nonnull %12, i32 noundef 4, i32 noundef %1) #12
  %14 = tail call ptr @OpenFile(i16 noundef zeroext %13, i32 noundef %2, i32 noundef 0) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %5
  %17 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef 512, ptr noundef nonnull %14)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds [512 x i8], ptr %8, i64 0, i64 3
  %21 = call i32 @StringBeginsWith(ptr noundef nonnull %20, ptr noundef nonnull @.str.21) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %221

23:                                               ; preds = %19, %16
  %24 = call ptr @FileName(i16 noundef zeroext %13) #12
  %25 = call i32 @remove(ptr noundef %24) #12
  br label %26

26:                                               ; preds = %23, %5
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %221, label %28

28:                                               ; preds = %26
  %29 = call zeroext i16 @DefineFile(ptr noundef nonnull %11, ptr noundef nonnull @.str.28, ptr noundef nonnull %12, i32 noundef 3, i32 noundef %1) #12
  call void @LexPush(i16 noundef zeroext %29, i32 noundef 0, i32 noundef 3, i32 noundef 1, i32 noundef 0) #12
  %30 = call ptr @LexGetToken() #12
  %31 = icmp eq ptr %3, null
  %32 = getelementptr inbounds %struct.LIST, ptr %3, i64 0, i32 1
  br label %33

33:                                               ; preds = %170, %28
  %34 = phi ptr [ %30, %28 ], [ %176, %170 ]
  %35 = phi ptr [ null, %28 ], [ %171, %170 ]
  %36 = phi i64 [ 0, %28 ], [ %175, %170 ]
  store ptr %34, ptr %6, align 8, !tbaa !8
  %37 = getelementptr inbounds %struct.word_type, ptr %34, i64 0, i32 1, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1048575
  %40 = getelementptr inbounds %struct.word_type, ptr %34, i64 0, i32 1
  %41 = load i8, ptr %40, align 8, !tbaa !5
  switch i8 %41, label %177 [
    i8 102, label %42
    i8 105, label %180
  ]

42:                                               ; preds = %33
  %43 = load ptr, ptr @StartSym, align 8, !tbaa !8
  %44 = call ptr @Parse(ptr noundef nonnull %6, ptr noundef %43, i32 noundef 0, i32 noundef 0) #12
  %45 = load ptr, ptr %6, align 8, !tbaa !8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 1
  %49 = load i8, ptr %48, align 8, !tbaa !5
  %50 = icmp eq i8 %49, 2
  br i1 %50, label %55, label %51

51:                                               ; preds = %47, %42
  %52 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 1
  %53 = call ptr @FileName(i16 noundef zeroext %29) #12
  %54 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 6, ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef nonnull %52, ptr noundef %53) #12
  br label %55

55:                                               ; preds = %51, %47
  br i1 %31, label %61, label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %32, align 8, !tbaa !5
  %58 = icmp eq ptr %57, %3
  br i1 %58, label %81, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.closure_type, ptr %44, i64 0, i32 5
  br label %64

61:                                               ; preds = %55
  %62 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %63 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %62, ptr noundef nonnull @.str.30) #12
  br label %87

64:                                               ; preds = %59, %77
  %65 = phi ptr [ %57, %59 ], [ %79, %77 ]
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi ptr [ %69, %66 ], [ %65, %64 ]
  %68 = getelementptr inbounds [2 x %struct.LIST], ptr %67, i64 0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.word_type, ptr %69, i64 0, i32 1
  %71 = load i8, ptr %70, align 8, !tbaa !5
  switch i8 %71, label %77 [
    i8 0, label %66
    i8 2, label %72
  ]

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.closure_type, ptr %69, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  %75 = load ptr, ptr %60, align 8, !tbaa !5
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %87, label %77

77:                                               ; preds = %66, %72
  %78 = getelementptr inbounds %struct.LIST, ptr %65, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = icmp eq ptr %79, %3
  br i1 %80, label %81, label %64

81:                                               ; preds = %77, %56
  %82 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 1
  %83 = getelementptr inbounds %struct.closure_type, ptr %44, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = call ptr @SymName(ptr noundef %84) #12
  %86 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 7, ptr noundef nonnull @.str.31, i32 noundef 1, ptr noundef nonnull %82, ptr noundef %85, ptr noundef nonnull @.str.32) #12
  br label %87

87:                                               ; preds = %72, %61, %81
  %88 = getelementptr inbounds %struct.LIST, ptr %44, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = icmp eq ptr %89, %44
  br i1 %90, label %121, label %91

91:                                               ; preds = %87, %117
  %92 = phi ptr [ %119, %117 ], [ %89, %87 ]
  br label %93

93:                                               ; preds = %91, %93
  %94 = phi ptr [ %96, %93 ], [ %92, %91 ]
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %94, i64 0, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.word_type, ptr %96, i64 0, i32 1
  %98 = load i8, ptr %97, align 8, !tbaa !5
  switch i8 %98, label %117 [
    i8 0, label %93
    i8 10, label %99
  ]

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.closure_type, ptr %96, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !5
  %102 = getelementptr inbounds i8, ptr %101, i64 41
  %103 = load i24, ptr %102, align 1
  %104 = and i24 %103, 1
  %105 = icmp eq i24 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.LIST, ptr %96, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !5
  %109 = icmp eq ptr %108, %96
  br i1 %109, label %117, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %113, %110 ], [ %108, %106 ]
  %112 = getelementptr inbounds [2 x %struct.LIST], ptr %111, i64 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !5
  %114 = getelementptr inbounds %struct.word_type, ptr %113, i64 0, i32 1
  %115 = load i8, ptr %114, align 8, !tbaa !5
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %110, label %127

117:                                              ; preds = %93, %99, %106
  %118 = getelementptr inbounds %struct.LIST, ptr %92, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !5
  %120 = icmp eq ptr %119, %44
  br i1 %120, label %121, label %91

121:                                              ; preds = %117, %87
  %122 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 1
  %123 = getelementptr inbounds %struct.closure_type, ptr %44, i64 0, i32 5
  %124 = load ptr, ptr %123, align 8, !tbaa !5
  %125 = call ptr @SymName(ptr noundef %124) #12
  %126 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 8, ptr noundef nonnull @.str.33, i32 noundef 1, ptr noundef nonnull %122, ptr noundef %125) #12
  br label %127

127:                                              ; preds = %110, %121
  %128 = phi ptr [ null, %121 ], [ %113, %110 ]
  %129 = call ptr @ReplaceWithTidy(ptr noundef %128, i32 noundef 1) #12
  %130 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 1
  %131 = load i8, ptr %130, align 8, !tbaa !5
  %132 = add i8 %131, -11
  %133 = icmp ult i8 %132, 2
  br i1 %133, label %137, label %134

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 1
  %136 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.34, i32 noundef 1, ptr noundef nonnull %135) #12
  br label %137

137:                                              ; preds = %127, %134
  %138 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 4
  %139 = load i8, ptr %138, align 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 1
  %143 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 10, ptr noundef nonnull @.str.35, i32 noundef 1, ptr noundef nonnull %142) #12
  br label %144

144:                                              ; preds = %141, %137
  %145 = icmp eq ptr %35, null
  br i1 %145, label %146, label %170

146:                                              ; preds = %144
  %147 = call ptr @FileName(i16 noundef zeroext %29) #12
  %148 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %147) #12
  %149 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #14
  %150 = trunc i64 %149 to i32
  %151 = add i32 %150, -3
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %146
  %154 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %155 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %154, ptr noundef nonnull @.str.36) #12
  br label %156

156:                                              ; preds = %153, %146
  %157 = sext i32 %151 to i64
  %158 = getelementptr inbounds [512 x i8], ptr %8, i64 0, i64 %157
  store i8 0, ptr %158, align 1
  %159 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %8, ptr noundef nonnull %12) #12
  %160 = getelementptr inbounds %struct.word_type, ptr %159, i64 0, i32 1
  %161 = load i8, ptr %160, align 8, !tbaa !5
  %162 = add i8 %161, -11
  %163 = icmp ult i8 %162, 2
  br i1 %163, label %167, label %164

164:                                              ; preds = %156
  %165 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %166 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %165, ptr noundef nonnull @.str.1) #12
  br label %167

167:                                              ; preds = %156, %164
  %168 = getelementptr inbounds i8, ptr %159, i64 42
  store i8 0, ptr %168, align 2, !tbaa !5
  %169 = getelementptr inbounds %struct.word_type, ptr %159, i64 0, i32 3
  store ptr null, ptr %169, align 8, !tbaa !5
  br label %170

170:                                              ; preds = %167, %144
  %171 = phi ptr [ %159, %167 ], [ %35, %144 ]
  %172 = getelementptr inbounds %struct.closure_type, ptr %44, i64 0, i32 5
  %173 = load ptr, ptr %172, align 8, !tbaa !5
  call void @DbInsert(ptr noundef nonnull %171, i32 noundef 0, ptr noundef %173, ptr noundef nonnull %138, ptr noundef nonnull %130, ptr noundef nonnull @.str.17, i16 noundef zeroext 0, i64 noundef %36, i32 noundef %39, i32 noundef 1)
  %174 = call i32 @DisposeObject(ptr noundef %44) #12
  %175 = call i64 @LexNextTokenPos() #12
  %176 = call ptr @LexGetToken() #12
  br label %33

177:                                              ; preds = %33
  %178 = getelementptr inbounds %struct.word_type, ptr %34, i64 0, i32 1
  %179 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 11, ptr noundef nonnull @.str.37, i32 noundef 1, ptr noundef nonnull %178, ptr noundef nonnull @.str.38) #12
  br label %180

180:                                              ; preds = %33, %177
  call void @LexPop() #12
  %181 = icmp eq ptr %35, null
  br i1 %181, label %182, label %206

182:                                              ; preds = %180
  %183 = call ptr @FileName(i16 noundef zeroext %29) #12
  %184 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %183) #12
  %185 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #14
  %186 = trunc i64 %185 to i32
  %187 = add i32 %186, -3
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %182
  %190 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %191 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %190, ptr noundef nonnull @.str.39) #12
  br label %192

192:                                              ; preds = %189, %182
  %193 = sext i32 %187 to i64
  %194 = getelementptr inbounds [512 x i8], ptr %8, i64 0, i64 %193
  store i8 0, ptr %194, align 1
  %195 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %8, ptr noundef nonnull %12) #12
  %196 = getelementptr inbounds %struct.word_type, ptr %195, i64 0, i32 1
  %197 = load i8, ptr %196, align 8, !tbaa !5
  %198 = add i8 %197, -11
  %199 = icmp ult i8 %198, 2
  br i1 %199, label %203, label %200

200:                                              ; preds = %192
  %201 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %202 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %201, ptr noundef nonnull @.str.1) #12
  br label %203

203:                                              ; preds = %192, %200
  %204 = getelementptr inbounds i8, ptr %195, i64 42
  store i8 0, ptr %204, align 2, !tbaa !5
  %205 = getelementptr inbounds %struct.word_type, ptr %195, i64 0, i32 3
  store ptr null, ptr %205, align 8, !tbaa !5
  br label %206

206:                                              ; preds = %203, %180
  %207 = phi ptr [ %195, %203 ], [ %35, %180 ]
  call void @DbConvert(ptr noundef nonnull %207, i32 noundef 0)
  %208 = call ptr @OpenFile(i16 noundef zeroext %13, i32 noundef 0, i32 noundef 0) #12
  %209 = icmp eq ptr %208, null
  br i1 %209, label %217, label %210

210:                                              ; preds = %206
  %211 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef 512, ptr noundef nonnull %208)
  %212 = icmp eq ptr %211, null
  br i1 %212, label %217, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds [512 x i8], ptr %8, i64 0, i64 3
  %215 = call i32 @StringBeginsWith(ptr noundef nonnull %214, ptr noundef nonnull @.str.21) #12
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %213, %210, %206
  %218 = getelementptr inbounds %struct.word_type, ptr %207, i64 0, i32 1
  %219 = call ptr @FileName(i16 noundef zeroext %13) #12
  %220 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 12, ptr noundef nonnull @.str.40, i32 noundef 1, ptr noundef nonnull %218, ptr noundef %219) #12
  br label %221

221:                                              ; preds = %19, %213, %217, %26
  %222 = phi ptr [ %208, %217 ], [ %208, %213 ], [ null, %26 ], [ %14, %19 ]
  %223 = call ptr @FileName(i16 noundef zeroext %13) #12
  %224 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %223) #12
  %225 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #14
  %226 = trunc i64 %225 to i32
  %227 = add i32 %226, -3
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %221
  %230 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %231 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %230, ptr noundef nonnull @.str.41) #12
  br label %232

232:                                              ; preds = %229, %221
  %233 = sext i32 %227 to i64
  %234 = getelementptr inbounds [512 x i8], ptr %8, i64 0, i64 %233
  store i8 0, ptr %234, align 1
  %235 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %8, ptr noundef nonnull %12) #12
  %236 = getelementptr inbounds %struct.word_type, ptr %235, i64 0, i32 2
  %237 = getelementptr inbounds i8, ptr %235, i64 42
  store i8 1, ptr %237, align 2, !tbaa !5
  %238 = trunc i32 %4 to i8
  %239 = getelementptr inbounds i8, ptr %235, i64 43
  store i8 %238, ptr %239, align 1, !tbaa !5
  %240 = icmp eq ptr %3, null
  br i1 %240, label %284, label %241

241:                                              ; preds = %232
  %242 = getelementptr inbounds %struct.word_type, ptr %3, i64 0, i32 1
  %243 = load i8, ptr %242, align 8, !tbaa !5
  %244 = icmp eq i8 %243, 17
  br i1 %244, label %248, label %245

245:                                              ; preds = %241
  %246 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %247 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %246, ptr noundef nonnull @.str.42) #12
  br label %248

248:                                              ; preds = %245, %241
  %249 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %250 = zext i8 %249 to i32
  store i32 %250, ptr @zz_size, align 4, !tbaa !13
  %251 = zext i8 %249 to i64
  %252 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !8
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %248
  %256 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %257 = call ptr @GetMemory(i32 noundef %250, ptr noundef %256) #12
  br label %260

258:                                              ; preds = %248
  store ptr %253, ptr @zz_hold, align 8, !tbaa !8
  %259 = load ptr, ptr %253, align 8, !tbaa !5
  store ptr %259, ptr %252, align 8, !tbaa !8
  br label %260

260:                                              ; preds = %255, %258
  %261 = phi ptr [ %257, %255 ], [ %253, %258 ]
  %262 = getelementptr inbounds %struct.word_type, ptr %261, i64 0, i32 1
  store i8 0, ptr %262, align 8, !tbaa !5
  %263 = getelementptr inbounds [2 x %struct.LIST], ptr %261, i64 0, i64 1, i32 1
  store ptr %261, ptr %263, align 8, !tbaa !5
  %264 = getelementptr inbounds [2 x %struct.LIST], ptr %261, i64 0, i64 1
  store ptr %261, ptr %264, align 8, !tbaa !5
  %265 = getelementptr inbounds %struct.LIST, ptr %261, i64 0, i32 1
  store ptr %261, ptr %265, align 8, !tbaa !5
  store ptr %261, ptr %261, align 8, !tbaa !5
  store ptr %261, ptr @xx_link, align 8, !tbaa !8
  store ptr %261, ptr @zz_res, align 8, !tbaa !8
  store ptr %235, ptr @zz_hold, align 8, !tbaa !8
  %266 = load ptr, ptr %235, align 8, !tbaa !5
  store ptr %266, ptr @zz_tmp, align 8, !tbaa !8
  %267 = load ptr, ptr %261, align 8, !tbaa !5
  store ptr %267, ptr %235, align 8, !tbaa !5
  %268 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %269 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %270 = load ptr, ptr %269, align 8, !tbaa !5
  %271 = getelementptr inbounds %struct.LIST, ptr %270, i64 0, i32 1
  store ptr %268, ptr %271, align 8, !tbaa !5
  %272 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %272, ptr %269, align 8, !tbaa !5
  %273 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %274 = getelementptr inbounds %struct.LIST, ptr %272, i64 0, i32 1
  store ptr %273, ptr %274, align 8, !tbaa !5
  %275 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %275, ptr @zz_res, align 8, !tbaa !8
  store ptr %3, ptr @zz_hold, align 8, !tbaa !8
  %276 = icmp eq ptr %275, null
  br i1 %276, label %284, label %277

277:                                              ; preds = %260
  %278 = getelementptr inbounds [2 x %struct.LIST], ptr %3, i64 0, i64 1
  %279 = load ptr, ptr %278, align 8, !tbaa !5
  store ptr %279, ptr @zz_tmp, align 8, !tbaa !8
  %280 = getelementptr inbounds [2 x %struct.LIST], ptr %275, i64 0, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !5
  store ptr %281, ptr %278, align 8, !tbaa !5
  %282 = getelementptr inbounds [2 x %struct.LIST], ptr %281, i64 0, i64 1, i32 1
  store ptr %3, ptr %282, align 8, !tbaa !5
  store ptr %279, ptr %280, align 8, !tbaa !5
  %283 = getelementptr inbounds [2 x %struct.LIST], ptr %279, i64 0, i64 1, i32 1
  store ptr %275, ptr %283, align 8, !tbaa !5
  br label %284

284:                                              ; preds = %260, %277, %232
  %285 = icmp eq ptr %222, null
  br i1 %285, label %286, label %288

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.word_type, ptr %235, i64 0, i32 3
  store ptr null, ptr %287, align 8, !tbaa !5
  br label %472

288:                                              ; preds = %284
  %289 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef 512, ptr noundef nonnull %222)
  %290 = icmp eq ptr %289, null
  br i1 %290, label %449, label %291

291:                                              ; preds = %288
  %292 = getelementptr inbounds [512 x i8], ptr %8, i64 0, i64 1
  %293 = load i8, ptr %8, align 16, !tbaa !5
  %294 = icmp ne i8 %293, 48
  %295 = load i8, ptr %292, align 1
  %296 = icmp ne i8 %295, 48
  %297 = select i1 %294, i1 true, i1 %296
  br i1 %297, label %455, label %304

298:                                              ; preds = %444
  %299 = load i8, ptr %8, align 16, !tbaa !5
  %300 = icmp ne i8 %299, 48
  %301 = load i8, ptr %292, align 1
  %302 = icmp ne i8 %301, 48
  %303 = select i1 %300, i1 true, i1 %302
  br i1 %303, label %453, label %304

304:                                              ; preds = %291, %298
  %305 = phi i32 [ %306, %298 ], [ 1, %291 ]
  %306 = add nuw nsw i32 %305, 1
  %307 = call i64 @ftell(ptr noundef nonnull %222)
  %308 = call i32 @StringBeginsWith(ptr noundef nonnull %8, ptr noundef nonnull @.str.43) #12
  %309 = icmp eq i32 %308, 0
  %310 = select i1 %309, ptr @.str.45, ptr @.str.44
  %311 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull %310, ptr noundef nonnull %7) #12
  br label %312

312:                                              ; preds = %316, %304
  %313 = phi i64 [ %317, %316 ], [ 9, %304 ]
  %314 = getelementptr inbounds [512 x i8], ptr %8, i64 0, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !5
  switch i8 %315, label %316 [
    i8 32, label %318
    i8 0, label %318
  ]

316:                                              ; preds = %312
  %317 = add nuw i64 %313, 1
  br label %312

318:                                              ; preds = %312, %312
  br i1 %240, label %319, label %349

319:                                              ; preds = %318
  %320 = trunc i64 %313 to i32
  %321 = load ptr, ptr @StartSym, align 8, !tbaa !8
  br label %322

322:                                              ; preds = %330, %319
  %323 = phi i32 [ %342, %330 ], [ 1, %319 ]
  %324 = phi ptr [ %338, %330 ], [ %321, %319 ]
  %325 = phi i32 [ %341, %330 ], [ %320, %319 ]
  %326 = phi i32 [ %331, %330 ], [ 0, %319 ]
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds [512 x i8], ptr %8, i64 0, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !5
  switch i8 %329, label %330 [
    i8 10, label %343
    i8 0, label %343
  ]

330:                                              ; preds = %322
  call void @PushScope(ptr noundef %324, i32 noundef 0, i32 noundef 0) #12
  %331 = add nuw nsw i32 %326, 1
  %332 = add i32 %325, 1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [512 x i8], ptr %8, i64 0, i64 %333
  %335 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %334, ptr noundef nonnull @.str.46, ptr noundef nonnull %9) #12
  %336 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #14
  %337 = trunc i64 %336 to i32
  %338 = call ptr @SearchSym(ptr noundef nonnull %9, i32 noundef %337) #12
  %339 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #14
  %340 = trunc i64 %339 to i32
  %341 = add i32 %332, %340
  %342 = add nuw i32 %323, 1
  br label %322

343:                                              ; preds = %322, %322
  %344 = icmp eq i32 %326, 0
  br i1 %344, label %377, label %345

345:                                              ; preds = %343, %345
  %346 = phi i32 [ %347, %345 ], [ 1, %343 ]
  call void @PopScope() #12
  %347 = add nuw i32 %346, 1
  %348 = icmp eq i32 %347, %323
  br i1 %348, label %377, label %345

349:                                              ; preds = %318
  %350 = add i64 %313, 1
  %351 = and i64 %350, 4294967295
  %352 = getelementptr inbounds [512 x i8], ptr %8, i64 0, i64 %351
  %353 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %352, ptr noundef nonnull @.str.46, ptr noundef nonnull %9) #12
  br label %354

354:                                              ; preds = %368, %349
  %355 = phi ptr [ %3, %349 ], [ %357, %368 ]
  %356 = getelementptr inbounds %struct.LIST, ptr %355, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !5
  %358 = icmp eq ptr %357, %3
  br i1 %358, label %438, label %359

359:                                              ; preds = %354, %359
  %360 = phi ptr [ %362, %359 ], [ %357, %354 ]
  %361 = getelementptr inbounds [2 x %struct.LIST], ptr %360, i64 0, i64 1
  %362 = load ptr, ptr %361, align 8, !tbaa !5
  %363 = getelementptr inbounds %struct.word_type, ptr %362, i64 0, i32 1
  %364 = load i8, ptr %363, align 8, !tbaa !5
  switch i8 %364, label %365 [
    i8 0, label %359
    i8 2, label %368
  ]

365:                                              ; preds = %359
  %366 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %367 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %366, ptr noundef nonnull @.str.47) #12
  br label %368

368:                                              ; preds = %359, %365
  %369 = getelementptr inbounds %struct.closure_type, ptr %362, i64 0, i32 5
  %370 = load ptr, ptr %369, align 8, !tbaa !5
  %371 = call ptr @SymName(ptr noundef %370) #12
  %372 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %371) #14
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %354

374:                                              ; preds = %368
  %375 = getelementptr inbounds %struct.closure_type, ptr %362, i64 0, i32 5
  %376 = load ptr, ptr %375, align 8, !tbaa !5
  br label %377

377:                                              ; preds = %345, %343, %374
  %378 = phi ptr [ %376, %374 ], [ %324, %343 ], [ %324, %345 ]
  %379 = icmp eq ptr %378, null
  %380 = load ptr, ptr @StartSym, align 8
  %381 = icmp eq ptr %378, %380
  %382 = select i1 %379, i1 true, i1 %381
  br i1 %382, label %438, label %383

383:                                              ; preds = %377
  %384 = getelementptr inbounds %struct.symbol_type, ptr %378, i64 0, i32 8
  %385 = load ptr, ptr %384, align 8, !tbaa !5
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %388

387:                                              ; preds = %383
  call void @CrossInit(ptr noundef nonnull %378) #12
  br label %388

388:                                              ; preds = %387, %383
  %389 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %390 = zext i8 %389 to i32
  store i32 %390, ptr @zz_size, align 4, !tbaa !13
  %391 = zext i8 %389 to i64
  %392 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %391
  %393 = load ptr, ptr %392, align 8, !tbaa !8
  %394 = icmp eq ptr %393, null
  br i1 %394, label %395, label %398

395:                                              ; preds = %388
  %396 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %397 = call ptr @GetMemory(i32 noundef %390, ptr noundef %396) #12
  br label %400

398:                                              ; preds = %388
  store ptr %393, ptr @zz_hold, align 8, !tbaa !8
  %399 = load ptr, ptr %393, align 8, !tbaa !5
  store ptr %399, ptr %392, align 8, !tbaa !8
  br label %400

400:                                              ; preds = %395, %398
  %401 = phi ptr [ %397, %395 ], [ %393, %398 ]
  %402 = getelementptr inbounds %struct.word_type, ptr %401, i64 0, i32 1
  store i8 0, ptr %402, align 8, !tbaa !5
  %403 = getelementptr inbounds [2 x %struct.LIST], ptr %401, i64 0, i64 1, i32 1
  store ptr %401, ptr %403, align 8, !tbaa !5
  %404 = getelementptr inbounds [2 x %struct.LIST], ptr %401, i64 0, i64 1
  store ptr %401, ptr %404, align 8, !tbaa !5
  %405 = getelementptr inbounds %struct.LIST, ptr %401, i64 0, i32 1
  store ptr %401, ptr %405, align 8, !tbaa !5
  store ptr %401, ptr %401, align 8, !tbaa !5
  store ptr %401, ptr @xx_link, align 8, !tbaa !8
  store ptr %401, ptr @zz_res, align 8, !tbaa !8
  store ptr %235, ptr @zz_hold, align 8, !tbaa !8
  %406 = load ptr, ptr %235, align 8, !tbaa !5
  store ptr %406, ptr @zz_tmp, align 8, !tbaa !8
  %407 = load ptr, ptr %401, align 8, !tbaa !5
  store ptr %407, ptr %235, align 8, !tbaa !5
  %408 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %409 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %410 = load ptr, ptr %409, align 8, !tbaa !5
  %411 = getelementptr inbounds %struct.LIST, ptr %410, i64 0, i32 1
  store ptr %408, ptr %411, align 8, !tbaa !5
  %412 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %412, ptr %409, align 8, !tbaa !5
  %413 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %414 = getelementptr inbounds %struct.LIST, ptr %412, i64 0, i32 1
  store ptr %413, ptr %414, align 8, !tbaa !5
  %415 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %415, ptr @zz_res, align 8, !tbaa !8
  %416 = load ptr, ptr %384, align 8, !tbaa !5
  store ptr %416, ptr @zz_hold, align 8, !tbaa !8
  %417 = icmp eq ptr %416, null
  %418 = icmp eq ptr %415, null
  %419 = select i1 %417, i1 true, i1 %418
  br i1 %419, label %427, label %420

420:                                              ; preds = %400
  %421 = getelementptr inbounds [2 x %struct.LIST], ptr %416, i64 0, i64 1
  %422 = load ptr, ptr %421, align 8, !tbaa !5
  store ptr %422, ptr @zz_tmp, align 8, !tbaa !8
  %423 = getelementptr inbounds [2 x %struct.LIST], ptr %415, i64 0, i64 1
  %424 = load ptr, ptr %423, align 8, !tbaa !5
  store ptr %424, ptr %421, align 8, !tbaa !5
  %425 = getelementptr inbounds [2 x %struct.LIST], ptr %424, i64 0, i64 1, i32 1
  store ptr %416, ptr %425, align 8, !tbaa !5
  store ptr %422, ptr %423, align 8, !tbaa !5
  %426 = getelementptr inbounds [2 x %struct.LIST], ptr %422, i64 0, i64 1, i32 1
  store ptr %415, ptr %426, align 8, !tbaa !5
  br label %427

427:                                              ; preds = %400, %420
  %428 = load ptr, ptr %235, align 8, !tbaa !5
  %429 = load i32, ptr %7, align 4, !tbaa !13
  %430 = trunc i32 %429 to i8
  %431 = getelementptr inbounds %struct.link_type, ptr %428, i64 0, i32 2
  store i8 %430, ptr %431, align 1, !tbaa !5
  %432 = trunc i32 %308 to i8
  %433 = getelementptr inbounds %struct.link_type, ptr %428, i64 0, i32 3
  store i8 %432, ptr %433, align 2, !tbaa !5
  br i1 %309, label %444, label %434

434:                                              ; preds = %427
  %435 = getelementptr inbounds i8, ptr %378, i64 41
  %436 = load i24, ptr %435, align 1
  %437 = or i24 %436, 6144
  store i24 %437, ptr %435, align 1
  br label %444

438:                                              ; preds = %377, %354
  %439 = getelementptr inbounds %struct.word_type, ptr %235, i64 0, i32 1
  %440 = call ptr @FileName(i16 noundef zeroext %13) #12
  %441 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 33, i32 noundef 13, ptr noundef nonnull @.str.48, i32 noundef 2, ptr noundef nonnull %439, ptr noundef %440, i32 noundef %306) #12
  %442 = call i32 @fclose(ptr noundef nonnull %222)
  store i8 0, ptr %239, align 1, !tbaa !5
  %443 = getelementptr inbounds %struct.word_type, ptr %235, i64 0, i32 3
  store ptr null, ptr %443, align 8, !tbaa !5
  br label %472

444:                                              ; preds = %427, %434
  %445 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef 512, ptr noundef nonnull %222)
  %446 = icmp eq ptr %445, null
  br i1 %446, label %447, label %298

447:                                              ; preds = %444
  %448 = trunc i64 %307 to i16
  br label %449

449:                                              ; preds = %447, %288
  %450 = phi i16 [ 0, %288 ], [ %448, %447 ]
  %451 = load i8, ptr %239, align 1, !tbaa !5
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %469, label %459

453:                                              ; preds = %298
  %454 = trunc i64 %307 to i16
  br label %455

455:                                              ; preds = %453, %291
  %456 = phi i16 [ 0, %291 ], [ %454, %453 ]
  %457 = load i8, ptr %239, align 1, !tbaa !5
  %458 = icmp eq i8 %457, 0
  br i1 %458, label %469, label %461

459:                                              ; preds = %449
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  %460 = getelementptr inbounds %struct.word_type, ptr %235, i64 0, i32 3
  store ptr null, ptr %460, align 8, !tbaa !5
  br label %468

461:                                              ; preds = %455
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  %462 = call ptr @FileName(i16 noundef zeroext %13) #12
  %463 = call ptr @ReadLines(ptr noundef nonnull %222, ptr noundef %462, ptr noundef nonnull %8, ptr noundef nonnull %10) #12
  %464 = getelementptr inbounds %struct.word_type, ptr %235, i64 0, i32 3
  store ptr %463, ptr %464, align 8, !tbaa !5
  %465 = load i32, ptr %10, align 4, !tbaa !13
  %466 = trunc i32 %465 to i16
  store i16 %466, ptr %236, align 8, !tbaa !5
  %467 = and i32 %465, 65535
  call void @SortLines(ptr noundef %463, i32 noundef %467) #12
  br label %468

468:                                              ; preds = %461, %459
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  br label %472

469:                                              ; preds = %455, %449
  %470 = phi i16 [ %456, %455 ], [ %450, %449 ]
  %471 = getelementptr inbounds %struct.word_type, ptr %235, i64 0, i32 3
  store ptr %222, ptr %471, align 8, !tbaa !5
  store i16 %470, ptr %236, align 8, !tbaa !5
  br label %472

472:                                              ; preds = %468, %469, %438, %286
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret ptr %235
}

declare zeroext i16 @DefineFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OpenFile(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare i32 @StringBeginsWith(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @LexPush(i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @LexGetToken() local_unnamed_addr #2

declare ptr @Parse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ReplaceWithTidy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

declare i64 @LexNextTokenPos() local_unnamed_addr #2

declare void @LexPop() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare void @PushScope(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SearchSym(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PopScope() local_unnamed_addr #2

declare ptr @ReadLines(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SortLines(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DbRetrieve(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca [512 x i8], align 16
  %11 = alloca [512 x i8], align 16
  %12 = alloca [512 x i8], align 16
  %13 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %13) #12
  %14 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds i8, ptr %0, i64 42
  %16 = load i8, ptr %15, align 2, !tbaa !5
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %277, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %277, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %57, label %26

26:                                               ; preds = %22, %52
  %27 = phi ptr [ %55, %52 ], [ %24, %22 ]
  %28 = phi i32 [ %53, %52 ], [ 0, %22 ]
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %32, %29 ], [ %27, %26 ]
  %31 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.word_type, ptr %32, i64 0, i32 1
  %34 = load i8, ptr %33, align 8, !tbaa !5
  switch i8 %34, label %35 [
    i8 0, label %29
    i8 -116, label %40
    i8 17, label %40
  ]

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.word_type, ptr %32, i64 0, i32 1
  %37 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %38 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %37, ptr noundef nonnull @.str.14) #12
  %39 = load i8, ptr %36, align 8, !tbaa !5
  br label %40

40:                                               ; preds = %29, %29, %35
  %41 = phi i8 [ %39, %35 ], [ %34, %29 ], [ %34, %29 ]
  %42 = icmp eq i8 %41, -116
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.cr_type, ptr %32, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %45, %2
  %47 = getelementptr inbounds %struct.link_type, ptr %27, i64 0, i32 2
  %48 = load i8, ptr %47, align 1, !tbaa !5
  br i1 %46, label %112, label %49

49:                                               ; preds = %43
  %50 = zext i8 %48 to i32
  %51 = tail call i32 @llvm.smax.i32(i32 %28, i32 %50)
  br label %52

52:                                               ; preds = %49, %40
  %53 = phi i32 [ %28, %40 ], [ %51, %49 ]
  %54 = getelementptr inbounds %struct.LIST, ptr %27, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %57, label %26

57:                                               ; preds = %52, %22
  %58 = phi i32 [ 0, %22 ], [ %53, %52 ]
  %59 = getelementptr inbounds %struct.symbol_type, ptr %2, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  tail call void @CrossInit(ptr noundef nonnull %2) #12
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %65 = zext i8 %64 to i32
  store i32 %65, ptr @zz_size, align 4, !tbaa !13
  %66 = zext i8 %64 to i64
  %67 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %72 = tail call ptr @GetMemory(i32 noundef %65, ptr noundef %71) #12
  br label %75

73:                                               ; preds = %63
  store ptr %68, ptr @zz_hold, align 8, !tbaa !8
  %74 = load ptr, ptr %68, align 8, !tbaa !5
  store ptr %74, ptr %67, align 8, !tbaa !8
  br label %75

75:                                               ; preds = %70, %73
  %76 = phi ptr [ %72, %70 ], [ %68, %73 ]
  %77 = getelementptr inbounds %struct.word_type, ptr %76, i64 0, i32 1
  store i8 0, ptr %77, align 8, !tbaa !5
  %78 = getelementptr inbounds [2 x %struct.LIST], ptr %76, i64 0, i64 1, i32 1
  store ptr %76, ptr %78, align 8, !tbaa !5
  %79 = getelementptr inbounds [2 x %struct.LIST], ptr %76, i64 0, i64 1
  store ptr %76, ptr %79, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.LIST, ptr %76, i64 0, i32 1
  store ptr %76, ptr %80, align 8, !tbaa !5
  store ptr %76, ptr %76, align 8, !tbaa !5
  store ptr %76, ptr @xx_link, align 8, !tbaa !8
  store ptr %76, ptr @zz_res, align 8, !tbaa !8
  store ptr %0, ptr @zz_hold, align 8, !tbaa !8
  %81 = icmp eq ptr %0, null
  br i1 %81, label %93, label %82

82:                                               ; preds = %75
  %83 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %83, ptr @zz_tmp, align 8, !tbaa !8
  %84 = load ptr, ptr %76, align 8, !tbaa !5
  store ptr %84, ptr %0, align 8, !tbaa !5
  %85 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %86 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = getelementptr inbounds %struct.LIST, ptr %87, i64 0, i32 1
  store ptr %85, ptr %88, align 8, !tbaa !5
  %89 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %89, ptr %86, align 8, !tbaa !5
  %90 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %91 = getelementptr inbounds %struct.LIST, ptr %89, i64 0, i32 1
  store ptr %90, ptr %91, align 8, !tbaa !5
  %92 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %93

93:                                               ; preds = %75, %82
  %94 = phi ptr [ %76, %75 ], [ %92, %82 ]
  store ptr %94, ptr @zz_res, align 8, !tbaa !8
  %95 = load ptr, ptr %59, align 8, !tbaa !5
  store ptr %95, ptr @zz_hold, align 8, !tbaa !8
  %96 = icmp eq ptr %95, null
  %97 = icmp eq ptr %94, null
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %106, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds [2 x %struct.LIST], ptr %95, i64 0, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !5
  store ptr %101, ptr @zz_tmp, align 8, !tbaa !8
  %102 = getelementptr inbounds [2 x %struct.LIST], ptr %94, i64 0, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  store ptr %103, ptr %100, align 8, !tbaa !5
  %104 = getelementptr inbounds [2 x %struct.LIST], ptr %103, i64 0, i64 1, i32 1
  store ptr %95, ptr %104, align 8, !tbaa !5
  store ptr %101, ptr %102, align 8, !tbaa !5
  %105 = getelementptr inbounds [2 x %struct.LIST], ptr %101, i64 0, i64 1, i32 1
  store ptr %94, ptr %105, align 8, !tbaa !5
  br label %106

106:                                              ; preds = %93, %99
  %107 = load ptr, ptr %0, align 8, !tbaa !5
  %108 = trunc i32 %58 to i8
  %109 = add i8 %108, 1
  %110 = getelementptr inbounds %struct.link_type, ptr %107, i64 0, i32 2
  store i8 %109, ptr %110, align 1, !tbaa !5
  %111 = getelementptr inbounds %struct.link_type, ptr %107, i64 0, i32 3
  store i8 0, ptr %111, align 2, !tbaa !5
  br label %112

112:                                              ; preds = %43, %106
  %113 = phi i8 [ %109, %106 ], [ %48, %43 ]
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %1, 0
  %116 = select i1 %115, ptr @.str.12, ptr @.str.17
  %117 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef nonnull %116, i32 noundef %114, ptr noundef %3) #12
  %118 = getelementptr inbounds i8, ptr %0, i64 43
  %119 = load i8, ptr %118, align 1, !tbaa !5
  %120 = icmp eq i8 %119, 0
  %121 = load ptr, ptr %19, align 8, !tbaa !5
  br i1 %120, label %188, label %122

122:                                              ; preds = %112
  %123 = load i16, ptr %14, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %11) #12
  switch i16 %123, label %124 [
    i16 0, label %180
    i16 1, label %172
  ]

124:                                              ; preds = %122
  %125 = zext i16 %123 to i32
  %126 = add nsw i32 %125, -2
  %127 = load i32, ptr @UseCollate, align 4, !tbaa !13
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %124, %129
  %130 = phi i32 [ %142, %129 ], [ %126, %124 ]
  %131 = phi i32 [ %141, %129 ], [ 0, %124 ]
  %132 = add nsw i32 %131, %130
  %133 = sdiv i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %121, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !8
  %137 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %136) #14
  %138 = icmp slt i32 %137, 1
  %139 = add nsw i32 %133, -1
  %140 = add nsw i32 %133, 1
  %141 = select i1 %138, i32 %131, i32 %140
  %142 = select i1 %138, i32 %139, i32 %130
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %172, label %129

144:                                              ; preds = %124, %167
  %145 = phi i32 [ %168, %167 ], [ 1, %124 ]
  %146 = phi i32 [ %170, %167 ], [ %126, %124 ]
  %147 = phi i32 [ %169, %167 ], [ 0, %124 ]
  %148 = add nsw i32 %147, %146
  %149 = sdiv i32 %148, 2
  %150 = icmp eq i32 %145, 0
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds ptr, ptr %121, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !8
  br i1 %150, label %158, label %154

154:                                              ; preds = %144
  %155 = call i32 @strcollcmp(ptr noundef nonnull %13, ptr noundef %153) #12
  %156 = icmp slt i32 %155, 1
  %157 = load i32, ptr @UseCollate, align 4, !tbaa !13
  br i1 %156, label %161, label %164

158:                                              ; preds = %144
  %159 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %153) #14
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %164

161:                                              ; preds = %158, %154
  %162 = phi i32 [ 0, %158 ], [ %157, %154 ]
  %163 = add nsw i32 %149, -1
  br label %167

164:                                              ; preds = %158, %154
  %165 = phi i32 [ 0, %158 ], [ %157, %154 ]
  %166 = add nsw i32 %149, 1
  br label %167

167:                                              ; preds = %164, %161
  %168 = phi i32 [ %162, %161 ], [ %165, %164 ]
  %169 = phi i32 [ %147, %161 ], [ %166, %164 ]
  %170 = phi i32 [ %163, %161 ], [ %146, %164 ]
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %144, !llvm.loop !15

172:                                              ; preds = %167, %129, %122
  %173 = phi i32 [ 0, %122 ], [ %141, %129 ], [ %169, %167 ]
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds ptr, ptr %121, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !8
  %177 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %176, ptr noundef nonnull @.str.58, ptr noundef nonnull %11) #12
  %178 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %11) #14
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %122, %172
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %11) #12
  br label %277

181:                                              ; preds = %172
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %11) #12
  %182 = load ptr, ptr %19, align 8, !tbaa !5
  %183 = getelementptr inbounds ptr, ptr %182, i64 %174
  %184 = load ptr, ptr %183, align 8, !tbaa !8
  %185 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %184, ptr noundef nonnull @.str.50, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %13) #12
  %186 = add nsw i32 %173, 1
  %187 = sext i32 %186 to i64
  br label %264

188:                                              ; preds = %112
  %189 = tail call i32 @fseek(ptr noundef %121, i64 noundef 0, i32 noundef 2)
  %190 = load ptr, ptr %19, align 8, !tbaa !5
  %191 = load i16, ptr %14, align 8, !tbaa !5
  %192 = zext i16 %191 to i32
  %193 = tail call i64 @ftell(ptr noundef %190)
  %194 = trunc i64 %193 to i32
  %195 = add nsw i32 %194, -1
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %10) #12
  %196 = icmp sgt i32 %194, %192
  br i1 %196, label %197, label %249

197:                                              ; preds = %188, %245
  %198 = phi i32 [ %247, %245 ], [ %192, %188 ]
  %199 = phi i32 [ %246, %245 ], [ %195, %188 ]
  %200 = add nsw i32 %199, %198
  %201 = sdiv i32 %200, 2
  %202 = sext i32 %201 to i64
  %203 = call i32 @fseek(ptr noundef %190, i64 noundef %202, i32 noundef 0)
  br label %204

204:                                              ; preds = %204, %197
  %205 = phi i32 [ %201, %197 ], [ %206, %204 ]
  %206 = add nsw i32 %205, 1
  %207 = call i32 @getc(ptr noundef %190)
  %208 = icmp eq i32 %207, 10
  br i1 %208, label %209, label %204

209:                                              ; preds = %204
  %210 = icmp eq i32 %205, %199
  br i1 %210, label %211, label %214

211:                                              ; preds = %209
  %212 = sext i32 %198 to i64
  %213 = call i32 @fseek(ptr noundef %190, i64 noundef %212, i32 noundef 0)
  br label %214

214:                                              ; preds = %211, %209
  %215 = phi i32 [ %198, %211 ], [ %206, %209 ]
  %216 = call ptr @fgets(ptr noundef nonnull %12, i32 noundef 512, ptr noundef %190)
  %217 = call i64 @ftell(ptr noundef %190)
  %218 = trunc i64 %217 to i32
  %219 = add nsw i32 %218, -1
  %220 = icmp sgt i32 %198, %215
  br i1 %220, label %221, label %224

221:                                              ; preds = %214
  %222 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %223 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %222, ptr noundef nonnull @.str.59) #12
  br label %224

224:                                              ; preds = %221, %214
  %225 = icmp slt i32 %215, %219
  br i1 %225, label %229, label %226

226:                                              ; preds = %224
  %227 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %228 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %227, ptr noundef nonnull @.str.60) #12
  br label %229

229:                                              ; preds = %226, %224
  %230 = icmp sgt i32 %219, %199
  br i1 %230, label %231, label %234

231:                                              ; preds = %229
  %232 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %233 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %232, ptr noundef nonnull @.str.61) #12
  br label %234

234:                                              ; preds = %231, %229
  %235 = load i32, ptr @UseCollate, align 4, !tbaa !13
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %234
  %238 = call i32 @strcollcmp(ptr noundef nonnull %13, ptr noundef nonnull %12) #12
  %239 = icmp slt i32 %238, 1
  br i1 %239, label %243, label %245

240:                                              ; preds = %234
  %241 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %12) #14
  %242 = icmp slt i32 %241, 1
  br i1 %242, label %243, label %245

243:                                              ; preds = %240, %237
  %244 = add nsw i32 %215, -1
  br label %245

245:                                              ; preds = %243, %240, %237
  %246 = phi i32 [ %244, %243 ], [ %199, %240 ], [ %199, %237 ]
  %247 = phi i32 [ %198, %243 ], [ %218, %240 ], [ %218, %237 ]
  %248 = icmp sgt i32 %247, %246
  br i1 %248, label %249, label %197

249:                                              ; preds = %245, %188
  %250 = phi i32 [ %192, %188 ], [ %247, %245 ]
  %251 = icmp slt i32 %250, %195
  br i1 %251, label %253, label %252

252:                                              ; preds = %249
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %10) #12
  br label %277

253:                                              ; preds = %249
  %254 = sext i32 %250 to i64
  %255 = call i32 @fseek(ptr noundef %190, i64 noundef %254, i32 noundef 0)
  %256 = call ptr @fgets(ptr noundef nonnull %12, i32 noundef 512, ptr noundef %190)
  %257 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %12, ptr noundef nonnull @.str.58, ptr noundef nonnull %10) #12
  %258 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %10) #14
  %259 = icmp eq i32 %258, 0
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %10) #12
  br i1 %259, label %260, label %277

260:                                              ; preds = %253
  %261 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %12, ptr noundef nonnull @.str.50, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %13) #12
  %262 = load ptr, ptr %19, align 8, !tbaa !5
  %263 = call i64 @ftell(ptr noundef %262)
  br label %264

264:                                              ; preds = %260, %181
  %265 = phi i64 [ %263, %260 ], [ %187, %181 ]
  store i64 %265, ptr %8, align 8, !tbaa !17
  %266 = load i16, ptr %13, align 16
  %267 = icmp eq i16 %266, 46
  br i1 %267, label %268, label %271

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %270 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %269) #12
  br label %271

271:                                              ; preds = %268, %264
  %272 = call zeroext i16 @FileNum(ptr noundef nonnull %13, ptr noundef nonnull @.str.28) #12
  store i16 %272, ptr %5, align 2, !tbaa !19
  %273 = icmp eq i16 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %276 = call zeroext i16 @DefineFile(ptr noundef nonnull %13, ptr noundef nonnull @.str.28, ptr noundef nonnull %275, i32 noundef 3, i32 noundef 0) #12
  store i16 %276, ptr %5, align 2, !tbaa !19
  br label %277

277:                                              ; preds = %252, %180, %271, %274, %253, %9, %18
  %278 = phi i32 [ 0, %18 ], [ 0, %9 ], [ 0, %253 ], [ 1, %274 ], [ 1, %271 ], [ 0, %180 ], [ 0, %252 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %12) #12
  ret i32 %278
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i16 @FileNum(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DbRetrieveNext(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef %8) local_unnamed_addr #0 {
  %10 = alloca [512 x i8], align 16
  %11 = alloca [512 x i8], align 16
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  %13 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds i8, ptr %0, i64 42
  %15 = load i8, ptr %14, align 2, !tbaa !5
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %19 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %18, ptr noundef nonnull @.str.51) #12
  br label %20

20:                                               ; preds = %17, %9
  %21 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %114, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %0, i64 43
  %26 = load i8, ptr %25, align 1, !tbaa !5
  %27 = icmp eq i8 %26, 0
  %28 = load i64, ptr %8, align 8, !tbaa !17
  br i1 %27, label %44, label %29

29:                                               ; preds = %24
  %30 = load i16, ptr %13, align 8, !tbaa !5
  %31 = zext i16 %30 to i64
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %114

33:                                               ; preds = %29
  %34 = getelementptr inbounds ptr, ptr %22, i64 %28
  %35 = load ptr, ptr %34, align 8, !tbaa !8
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = icmp eq i8 %36, 48
  %38 = zext i1 %37 to i32
  store i32 %38, ptr %1, align 4, !tbaa !13
  %39 = zext i1 %37 to i64
  %40 = getelementptr inbounds i8, ptr %35, i64 %39
  %41 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %40, ptr noundef nonnull @.str.52, ptr noundef nonnull %12, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %11) #12
  %42 = load i64, ptr %8, align 8, !tbaa !17
  %43 = add nsw i64 %42, 1
  br label %64

44:                                               ; preds = %24
  %45 = icmp eq i64 %28, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i16, ptr %13, align 8, !tbaa !5
  %48 = zext i16 %47 to i64
  br label %49

49:                                               ; preds = %44, %46
  %50 = phi i64 [ %48, %46 ], [ %28, %44 ]
  %51 = tail call i32 @fseek(ptr noundef nonnull %22, i64 noundef %50, i32 noundef 0)
  %52 = load ptr, ptr %21, align 8, !tbaa !5
  %53 = call ptr @fgets(ptr noundef nonnull %10, i32 noundef 512, ptr noundef %52)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %114, label %55

55:                                               ; preds = %49
  %56 = load i8, ptr %10, align 16, !tbaa !5
  %57 = icmp eq i8 %56, 48
  %58 = zext i1 %57 to i32
  store i32 %58, ptr %1, align 4, !tbaa !13
  %59 = zext i1 %57 to i64
  %60 = getelementptr inbounds [512 x i8], ptr %10, i64 0, i64 %59
  %61 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %60, ptr noundef nonnull @.str.52, ptr noundef nonnull %12, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %11) #12
  %62 = load ptr, ptr %21, align 8, !tbaa !5
  %63 = call i64 @ftell(ptr noundef %62)
  br label %64

64:                                               ; preds = %55, %33
  %65 = phi i64 [ %63, %55 ], [ %43, %33 ]
  store i64 %65, ptr %8, align 8, !tbaa !17
  %66 = load i16, ptr %11, align 16
  %67 = icmp eq i16 %66, 46
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %70 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %69) #12
  br label %71

71:                                               ; preds = %68, %64
  %72 = call zeroext i16 @FileNum(ptr noundef nonnull %11, ptr noundef nonnull @.str.28) #12
  store i16 %72, ptr %5, align 2, !tbaa !19
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %76 = call zeroext i16 @DefineFile(ptr noundef nonnull %11, ptr noundef nonnull @.str.28, ptr noundef nonnull %75, i32 noundef 3, i32 noundef 0) #12
  store i16 %76, ptr %5, align 2, !tbaa !19
  br label %77

77:                                               ; preds = %74, %71
  %78 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = icmp eq ptr %79, %0
  br i1 %80, label %100, label %81

81:                                               ; preds = %77
  %82 = load i32, ptr %12, align 4
  br label %83

83:                                               ; preds = %81, %96
  %84 = phi ptr [ %79, %81 ], [ %98, %96 ]
  br label %85

85:                                               ; preds = %83, %85
  %86 = phi ptr [ %88, %85 ], [ %84, %83 ]
  %87 = getelementptr inbounds [2 x %struct.LIST], ptr %86, i64 0, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = getelementptr inbounds %struct.word_type, ptr %88, i64 0, i32 1
  %90 = load i8, ptr %89, align 8, !tbaa !5
  switch i8 %90, label %96 [
    i8 0, label %85
    i8 -116, label %91
  ]

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.link_type, ptr %84, i64 0, i32 2
  %93 = load i8, ptr %92, align 1, !tbaa !5
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %82, %94
  br i1 %95, label %110, label %96

96:                                               ; preds = %85, %91
  %97 = getelementptr inbounds %struct.LIST, ptr %84, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = icmp eq ptr %98, %0
  br i1 %99, label %100, label %83

100:                                              ; preds = %96, %77
  %101 = phi ptr [ undef, %77 ], [ %88, %96 ]
  %102 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %103 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %102, ptr noundef nonnull @.str.53) #12
  %104 = getelementptr inbounds %struct.word_type, ptr %101, i64 0, i32 1
  %105 = load i8, ptr %104, align 8, !tbaa !5
  %106 = icmp eq i8 %105, -116
  br i1 %106, label %110, label %107

107:                                              ; preds = %100
  %108 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %109 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %108, ptr noundef nonnull @.str.54) #12
  br label %110

110:                                              ; preds = %91, %107, %100
  %111 = phi ptr [ %101, %107 ], [ %101, %100 ], [ %88, %91 ]
  %112 = getelementptr inbounds %struct.cr_type, ptr %111, i64 0, i32 9
  %113 = load ptr, ptr %112, align 8, !tbaa !5
  store ptr %113, ptr %2, align 8, !tbaa !8
  br label %114

114:                                              ; preds = %49, %29, %20, %110
  %115 = phi i32 [ 1, %110 ], [ 0, %20 ], [ 0, %29 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %10) #12
  ret i32 %115
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

declare i32 @strcollcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(read) }

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
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 4, !6, i64 8}
!12 = !{!"int", !6, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!11, !12, i64 4}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unswitch.partial.disable"}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !6, i64 0}
