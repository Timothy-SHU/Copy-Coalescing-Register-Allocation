; ModuleID = 'magick/mime.c'
source_filename = "magick/mime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._MimeInfo = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i64, i64, i32, i64, ptr, i32, i64 }

@mime_cache = internal unnamed_addr global ptr null, align 8
@mime_semaphore = internal global ptr null, align 8
@.str = private unnamed_addr constant [14 x i8] c"magick/mime.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Type                   Description\0A\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"file.%s\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"image/x-%s\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"built-in\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Loading mime map \22%s\22 ...\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"IncludeElementNestedTooDeeply\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"mime\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"data-type\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"endian\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"<?xml version=\221.0\22?><mimemap></mimemap>\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"mime.xml\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @LoadMimeLists(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @AcquireMimeCache(ptr noundef %0, ptr noundef %1) #14
  store ptr %3, ptr @mime_cache, align 8, !tbaa !5
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireMimeCache(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call ptr @NewLinkedList(i64 noundef 0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #16
  call void @GetExceptionInfo(ptr noundef nonnull %3) #15
  %7 = tail call ptr @__errno_location() #17
  %8 = load i32, ptr %7, align 4, !tbaa !9
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #15
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 168, i32 noundef 700, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %9) #15
  %11 = call ptr @DestroyString(ptr noundef %9) #15
  call void @CatchException(ptr noundef nonnull %3) #15
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #15
  call void @MagickCoreTerminus() #15
  call void @_exit(i32 noundef 1) #18
  unreachable

13:                                               ; preds = %2
  %14 = tail call ptr @GetConfigureOptions(ptr noundef %0, ptr noundef %1) #15
  %15 = tail call ptr @GetNextValueInLinkedList(ptr noundef %14) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %22, %17 ], [ %15, %13 ]
  %19 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %18) #15
  %20 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %18) #15
  %21 = tail call fastcc i32 @LoadMimeCache(ptr noundef nonnull %4, ptr noundef %19, ptr noundef %20, i64 noundef 0, ptr noundef %1) #14
  %22 = tail call ptr @GetNextValueInLinkedList(ptr noundef %14) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %17, !llvm.loop !11

24:                                               ; preds = %17, %13
  %25 = tail call ptr @DestroyConfigureOptions(ptr noundef %14) #15
  %26 = tail call i32 @IsLinkedListEmpty(ptr noundef nonnull %4) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @LoadMimeCache(ptr noundef nonnull %4, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.14, i64 noundef 0, ptr noundef %1) #14
  br label %30

30:                                               ; preds = %28, %24
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMimeInfo(ptr noundef %0, ptr noundef readonly %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @IsMimeCacheInstantiated(ptr noundef %3) #14, !range !13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %199, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @mime_semaphore, align 8, !tbaa !5
  tail call void @LockSemaphoreInfo(ptr noundef %8) #15
  %9 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  tail call void @ResetLinkedListIterator(ptr noundef %9) #15
  %10 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  %11 = tail call ptr @GetNextValueInLinkedList(ptr noundef %10) #15
  %12 = icmp eq ptr %1, null
  %13 = icmp eq i64 %2, 0
  %14 = or i1 %12, %13
  br i1 %14, label %196, label %15

15:                                               ; preds = %7
  %16 = icmp eq ptr %11, null
  br i1 %16, label %196, label %17

17:                                               ; preds = %15
  %18 = icmp ne ptr %0, null
  br label %45

19:                                               ; preds = %45, %26
  %20 = phi ptr [ %47, %45 ], [ %28, %26 ]
  br i1 %48, label %30, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct._MimeInfo, ptr %20, i64 0, i32 4
  %23 = load i64, ptr %22, align 8, !tbaa !14
  %24 = load i64, ptr %49, align 8, !tbaa !14
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  %28 = tail call ptr @GetNextValueInLinkedList(ptr noundef %27) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %191, label %19, !llvm.loop !18

30:                                               ; preds = %21, %19
  %31 = phi ptr [ %20, %21 ], [ %47, %19 ]
  %32 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  %34 = icmp ne ptr %33, null
  %35 = and i1 %18, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = tail call i32 @GlobExpression(ptr noundef nonnull %0, ptr noundef nonnull %33, i32 noundef 0) #15
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, ptr %46, ptr %31
  br label %40

40:                                               ; preds = %184, %176, %179, %64, %85, %120, %78, %81, %113, %116, %169, %172, %53, %36
  %41 = phi ptr [ %39, %36 ], [ %46, %120 ], [ %46, %85 ], [ %46, %64 ], [ %80, %78 ], [ %84, %81 ], [ %115, %113 ], [ %119, %116 ], [ %171, %169 ], [ %175, %172 ], [ %46, %53 ], [ %46, %179 ], [ %46, %176 ], [ %31, %184 ]
  %42 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  %43 = tail call ptr @GetNextValueInLinkedList(ptr noundef %42) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %189, label %45, !llvm.loop !18

45:                                               ; preds = %17, %40
  %46 = phi ptr [ null, %17 ], [ %41, %40 ]
  %47 = phi ptr [ %11, %17 ], [ %43, %40 ]
  %48 = icmp eq ptr %46, null
  %49 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 4
  br label %19

50:                                               ; preds = %30
  %51 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 7
  %52 = load i32, ptr %51, align 8, !tbaa !20
  switch i32 %52, label %53 [
    i32 2, label %64
    i32 3, label %85
    i32 4, label %120
  ]

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 6
  %55 = load i64, ptr %54, align 8, !tbaa !21
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %40, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 5
  %59 = load i64, ptr %58, align 8, !tbaa !22
  %60 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 11
  %61 = load i64, ptr %60, align 8, !tbaa !23
  %62 = getelementptr inbounds i8, ptr %1, i64 %59
  %63 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 12
  br label %179

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 5
  %66 = load i64, ptr %65, align 8, !tbaa !22
  %67 = add nsw i64 %66, 4
  %68 = icmp ugt i64 %67, %2
  br i1 %68, label %40, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds i8, ptr %1, i64 %66
  %71 = load i8, ptr %70, align 1, !tbaa !24
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 8
  %74 = load i64, ptr %73, align 8, !tbaa !25
  %75 = icmp eq i64 %74, 0
  %76 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 9
  %77 = load i64, ptr %76, align 8, !tbaa !26
  br i1 %75, label %78, label %81

78:                                               ; preds = %69
  %79 = icmp eq i64 %77, %72
  %80 = select i1 %79, ptr %31, ptr %46
  br label %40

81:                                               ; preds = %69
  %82 = and i64 %77, %74
  %83 = icmp eq i64 %82, %72
  %84 = select i1 %83, ptr %31, ptr %46
  br label %40

85:                                               ; preds = %50
  %86 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 5
  %87 = load i64, ptr %86, align 8, !tbaa !22
  %88 = add nsw i64 %87, 4
  %89 = icmp ugt i64 %88, %2
  br i1 %89, label %40, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, ptr %1, i64 %87
  %92 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 10
  %93 = load i32, ptr %92, align 8, !tbaa !27
  %94 = icmp ult i32 %93, 2
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i16, ptr %91, align 1
  %97 = zext i16 %96 to i64
  br label %106

98:                                               ; preds = %90
  %99 = getelementptr inbounds i8, ptr %91, i64 1
  %100 = load i8, ptr %91, align 1, !tbaa !24
  %101 = zext i8 %100 to i64
  %102 = shl nuw nsw i64 %101, 8
  %103 = load i8, ptr %99, align 1, !tbaa !24
  %104 = zext i8 %103 to i64
  %105 = or disjoint i64 %102, %104
  br label %106

106:                                              ; preds = %98, %95
  %107 = phi i64 [ %97, %95 ], [ %105, %98 ]
  %108 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 8
  %109 = load i64, ptr %108, align 8, !tbaa !25
  %110 = icmp eq i64 %109, 0
  %111 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 9
  %112 = load i64, ptr %111, align 8, !tbaa !26
  br i1 %110, label %113, label %116

113:                                              ; preds = %106
  %114 = icmp eq i64 %112, %107
  %115 = select i1 %114, ptr %31, ptr %46
  br label %40

116:                                              ; preds = %106
  %117 = and i64 %112, %109
  %118 = icmp eq i64 %117, %107
  %119 = select i1 %118, ptr %31, ptr %46
  br label %40

120:                                              ; preds = %50
  %121 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 5
  %122 = load i64, ptr %121, align 8, !tbaa !22
  %123 = add nsw i64 %122, 4
  %124 = icmp ugt i64 %123, %2
  br i1 %124, label %40, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds i8, ptr %1, i64 %122
  %127 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 10
  %128 = load i32, ptr %127, align 8, !tbaa !27
  %129 = icmp ult i32 %128, 2
  br i1 %129, label %130, label %144

130:                                              ; preds = %125
  %131 = load i16, ptr %126, align 1
  %132 = zext i16 %131 to i64
  %133 = getelementptr inbounds i8, ptr %126, i64 2
  %134 = getelementptr inbounds i8, ptr %126, i64 3
  %135 = load i8, ptr %133, align 1, !tbaa !24
  %136 = zext i8 %135 to i64
  %137 = shl nuw nsw i64 %136, 16
  %138 = or disjoint i64 %137, %132
  %139 = load i8, ptr %134, align 1, !tbaa !24
  %140 = zext i8 %139 to i32
  %141 = shl nuw i32 %140, 24
  %142 = sext i32 %141 to i64
  %143 = or disjoint i64 %138, %142
  br label %162

144:                                              ; preds = %125
  %145 = getelementptr inbounds i8, ptr %126, i64 1
  %146 = load i8, ptr %126, align 1, !tbaa !24
  %147 = zext i8 %146 to i64
  %148 = shl nuw nsw i64 %147, 24
  %149 = getelementptr inbounds i8, ptr %126, i64 2
  %150 = load i8, ptr %145, align 1, !tbaa !24
  %151 = zext i8 %150 to i64
  %152 = shl nuw nsw i64 %151, 16
  %153 = or disjoint i64 %152, %148
  %154 = getelementptr inbounds i8, ptr %126, i64 3
  %155 = load i8, ptr %149, align 1, !tbaa !24
  %156 = zext i8 %155 to i64
  %157 = shl nuw nsw i64 %156, 8
  %158 = or disjoint i64 %153, %157
  %159 = load i8, ptr %154, align 1, !tbaa !24
  %160 = zext i8 %159 to i64
  %161 = or disjoint i64 %158, %160
  br label %162

162:                                              ; preds = %144, %130
  %163 = phi i64 [ %143, %130 ], [ %161, %144 ]
  %164 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 8
  %165 = load i64, ptr %164, align 8, !tbaa !25
  %166 = icmp eq i64 %165, 0
  %167 = getelementptr inbounds %struct._MimeInfo, ptr %31, i64 0, i32 9
  %168 = load i64, ptr %167, align 8, !tbaa !26
  br i1 %166, label %169, label %172

169:                                              ; preds = %162
  %170 = icmp eq i64 %168, %163
  %171 = select i1 %170, ptr %31, ptr %46
  br label %40

172:                                              ; preds = %162
  %173 = and i64 %168, %165
  %174 = icmp eq i64 %173, %163
  %175 = select i1 %174, ptr %31, ptr %46
  br label %40

176:                                              ; preds = %184
  %177 = add nuw i64 %180, 1
  %178 = icmp eq i64 %180, %55
  br i1 %178, label %40, label %179, !llvm.loop !28

179:                                              ; preds = %57, %176
  %180 = phi i64 [ 0, %57 ], [ %177, %176 ]
  %181 = add nsw i64 %59, %180
  %182 = add i64 %181, %61
  %183 = icmp ugt i64 %182, %2
  br i1 %183, label %40, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds i8, ptr %62, i64 %180
  %186 = load ptr, ptr %63, align 8, !tbaa !29
  %187 = tail call i32 @bcmp(ptr %185, ptr %186, i64 %61)
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %40, label %176

189:                                              ; preds = %40
  %190 = icmp eq ptr %41, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %26, %189
  %192 = phi ptr [ %41, %189 ], [ %46, %26 ]
  %193 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  %194 = tail call ptr @RemoveElementByValueFromLinkedList(ptr noundef %193, ptr noundef null) #15
  %195 = tail call i32 @InsertValueInLinkedList(ptr noundef %193, i64 noundef 0, ptr noundef %194) #15
  br label %196

196:                                              ; preds = %189, %191, %15, %7
  %197 = phi ptr [ %11, %7 ], [ %192, %191 ], [ null, %189 ], [ null, %15 ]
  %198 = load ptr, ptr @mime_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %198) #15
  br label %199

199:                                              ; preds = %196, %4
  %200 = phi ptr [ null, %4 ], [ %197, %196 ]
  ret ptr %200
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @IsMimeCacheInstantiated(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = load ptr, ptr @mime_semaphore, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @mime_semaphore) #15
  %8 = load ptr, ptr @mime_semaphore, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %8, %7 ], [ %5, %4 ]
  tail call void @LockSemaphoreInfo(ptr noundef %10) #15
  %11 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @AcquireMimeCache(ptr noundef nonnull @.str.38, ptr noundef %0) #14
  store ptr %14, ptr @mime_cache, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %13, %9
  %16 = load ptr, ptr @mime_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #15
  %17 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i32 [ %19, %15 ], [ 1, %1 ]
  ret i32 %21
}

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMimeInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 466, ptr noundef nonnull @.str.2, ptr noundef %0) #15
  store i64 0, ptr %1, align 8, !tbaa !30
  %5 = tail call ptr @GetMimeInfo(ptr noundef null, ptr noundef nonnull @.str.3, i64 noundef 0, ptr noundef %2) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #15
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @mime_semaphore, align 8, !tbaa !5
  tail call void @LockSemaphoreInfo(ptr noundef %14) #15
  %15 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  tail call void @ResetLinkedListIterator(ptr noundef %15) #15
  %16 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %21 = phi ptr [ %36, %33 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._MimeInfo, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !31
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._MimeInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !32
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nsw i64 %20, 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %21, ptr %32, align 8, !tbaa !5
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = phi i64 [ %31, %30 ], [ %20, %25 ], [ %20, %19 ]
  %35 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  %36 = tail call ptr @GetNextValueInLinkedList(ptr noundef %35) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !33

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @mime_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #15
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @MimeInfoCompare) #15
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !5
  store i64 %39, ptr %1, align 8, !tbaa !30
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read) uwtable
define internal i32 @MimeInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 @strcasecmp(ptr noundef %4, ptr noundef %6) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._MimeInfo, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %12 = getelementptr inbounds %struct._MimeInfo, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  %14 = tail call i32 @strcasecmp(ptr noundef %11, ptr noundef %13) #20
  br label %15

15:                                               ; preds = %2, %9
  %16 = phi i32 [ %14, %9 ], [ %7, %2 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMimeList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 561, ptr noundef nonnull @.str.2, ptr noundef %0) #15
  store i64 0, ptr %1, align 8, !tbaa !30
  %5 = tail call ptr @GetMimeInfo(ptr noundef null, ptr noundef nonnull @.str.3, i64 noundef 0, ptr noundef %2) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #15
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @mime_semaphore, align 8, !tbaa !5
  tail call void @LockSemaphoreInfo(ptr noundef %14) #15
  %15 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  tail call void @ResetLinkedListIterator(ptr noundef %15) #15
  %16 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %13, %35
  %20 = phi i64 [ %36, %35 ], [ 0, %13 ]
  %21 = phi ptr [ %38, %35 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._MimeInfo, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !31
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._MimeInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !32
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !32
  %32 = tail call ptr @ConstantString(ptr noundef %31) #15
  %33 = add nsw i64 %20, 1
  %34 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %32, ptr %34, align 8, !tbaa !5
  br label %35

35:                                               ; preds = %30, %25, %19
  %36 = phi i64 [ %33, %30 ], [ %20, %25 ], [ %20, %19 ]
  %37 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  %38 = tail call ptr @GetNextValueInLinkedList(ptr noundef %37) #15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %19, !llvm.loop !35

40:                                               ; preds = %35, %13
  %41 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %42 = load ptr, ptr @mime_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #15
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %41, i64 noundef 8, ptr noundef nonnull @MimeCompare) #15
  %43 = getelementptr inbounds ptr, ptr %11, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !5
  store i64 %41, ptr %1, align 8, !tbaa !30
  br label %44

44:                                               ; preds = %7, %3, %40
  %45 = phi ptr [ %11, %40 ], [ null, %3 ], [ null, %7 ]
  ret ptr %45
}

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read) uwtable
define internal i32 @MimeCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef %1) #20
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMimeDescription(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 612, ptr noundef nonnull @.str.4) #15
  %3 = getelementptr inbounds %struct._MimeInfo, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMimeType(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 642, ptr noundef nonnull @.str.4) #15
  %3 = getelementptr inbounds %struct._MimeInfo, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListMimeInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = select i1 %4, ptr %5, ptr %0
  %7 = call ptr @GetMimeInfoList(ptr noundef nonnull @.str.3, ptr noundef nonnull %3, ptr noundef %1) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %74, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8, !tbaa !30
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %71

12:                                               ; preds = %9, %67
  %13 = phi i64 [ %69, %67 ], [ 0, %9 ]
  %14 = phi ptr [ %68, %67 ], [ null, %9 ]
  %15 = getelementptr inbounds ptr, ptr %7, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct._MimeInfo, ptr %16, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !31
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  %22 = load ptr, ptr %16, align 8, !tbaa !34
  br i1 %21, label %26, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @strcasecmp(ptr noundef nonnull %14, ptr noundef %22) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %20, %23
  %27 = icmp eq ptr %22, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef nonnull %22) #15
  br label %30

30:                                               ; preds = %28, %26
  %31 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.6) #15
  %32 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.7) #15
  %33 = load ptr, ptr %15, align 8, !tbaa !5
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %30, %23
  %36 = phi ptr [ %34, %30 ], [ %22, %23 ]
  %37 = phi ptr [ %33, %30 ], [ %16, %23 ]
  %38 = getelementptr inbounds %struct._MimeInfo, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !32
  %40 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef %39) #15
  %41 = load ptr, ptr %15, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct._MimeInfo, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !32
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %43) #20
  %45 = icmp ult i64 %44, 26
  br i1 %45, label %46, label %51

46:                                               ; preds = %35, %46
  %47 = phi i64 [ %49, %46 ], [ %44, %35 ]
  %48 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.8) #15
  %49 = add i64 %47, 1
  %50 = icmp eq i64 %49, 28
  br i1 %50, label %58, label %46, !llvm.loop !37

51:                                               ; preds = %35
  %52 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.9) #15
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi i64 [ 0, %51 ], [ %56, %53 ]
  %55 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.8) #15
  %56 = add nuw nsw i64 %54, 1
  %57 = icmp eq i64 %56, 28
  br i1 %57, label %58, label %53, !llvm.loop !38

58:                                               ; preds = %53, %46
  %59 = load ptr, ptr %15, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct._MimeInfo, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !36
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull %61) #15
  br label %65

65:                                               ; preds = %63, %58
  %66 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.9) #15
  br label %67

67:                                               ; preds = %12, %65
  %68 = phi ptr [ %14, %12 ], [ %36, %65 ]
  %69 = add nuw nsw i64 %13, 1
  %70 = icmp eq i64 %69, %10
  br i1 %70, label %71, label %12, !llvm.loop !39

71:                                               ; preds = %67, %9
  %72 = tail call i32 @fflush(ptr noundef %6) #14
  %73 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #15
  br label %74

74:                                               ; preds = %2, %71
  %75 = phi i32 [ 1, %71 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %75
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagickToMime(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #16
  %4 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef %0) #15
  call void @LocaleLower(ptr noundef nonnull %2) #15
  %5 = call ptr @AcquireExceptionInfo() #15
  %6 = call ptr @GetMimeInfo(ptr noundef nonnull %2, ptr noundef nonnull @.str.8, i64 noundef 1, ptr noundef %5) #14
  %7 = call ptr @DestroyExceptionInfo(ptr noundef %5) #15
  %8 = icmp eq ptr %6, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = call ptr @GetMimeType(ptr noundef nonnull %6) #14
  %11 = call ptr @ConstantString(ptr noundef %10) #15
  br label %16

12:                                               ; preds = %1
  %13 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef %0) #15
  %14 = getelementptr inbounds i8, ptr %3, i64 8
  call void @LocaleLower(ptr noundef nonnull %14) #15
  %15 = call ptr @ConstantString(ptr noundef nonnull %3) #15
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi ptr [ %11, %9 ], [ %15, %12 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #16
  ret ptr %17
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @LocaleLower(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MimeComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @mime_semaphore, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #15
  store ptr %4, ptr @mime_semaphore, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MimeComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @mime_semaphore, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @mime_semaphore) #15
  %4 = load ptr, ptr @mime_semaphore, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @LockSemaphoreInfo(ptr noundef %6) #15
  %7 = load ptr, ptr @mime_cache, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroyLinkedList(ptr noundef nonnull %7, ptr noundef nonnull @DestroyMimeElement) #15
  store ptr %10, ptr @mime_cache, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr @mime_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %12) #15
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @mime_semaphore) #15
  ret void
}

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @DestroyMimeElement(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._MimeInfo, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %3) #15
  store ptr %6, ptr %2, align 8, !tbaa !29
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._MimeInfo, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @DestroyString(ptr noundef nonnull %9) #15
  store ptr %12, ptr %8, align 8, !tbaa !19
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct._MimeInfo, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !36
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @DestroyString(ptr noundef nonnull %15) #15
  store ptr %18, ptr %14, align 8, !tbaa !36
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct._MimeInfo, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !32
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @DestroyString(ptr noundef nonnull %21) #15
  store ptr %24, ptr %20, align 8, !tbaa !32
  br label %25

25:                                               ; preds = %23, %19
  %26 = load ptr, ptr %0, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @DestroyString(ptr noundef nonnull %26) #15
  store ptr %29, ptr %0, align 8, !tbaa !34
  br label %30

30:                                               ; preds = %28, %25
  %31 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #15
  ret ptr null
}

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @NewLinkedList(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @LoadMimeCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._ExceptionInfo, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 821, ptr noundef nonnull @.str.15, ptr noundef %2) #15
  %12 = icmp eq ptr %1, null
  br i1 %12, label %217, label %13

13:                                               ; preds = %5
  %14 = tail call ptr @NewXMLTree(ptr noundef nonnull %1, ptr noundef %4) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %217, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %14, ptr noundef nonnull @.str.16) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %16
  %20 = icmp ugt i64 %3, 200
  %21 = add nuw nsw i64 %3, 1
  br label %22

22:                                               ; preds = %19, %51
  %23 = phi ptr [ %17, %19 ], [ %53, %51 ]
  %24 = phi i32 [ 1, %19 ], [ %52, %51 ]
  %25 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %23, ptr noundef nonnull @.str.17) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %22
  br i1 %20, label %28, label %30

28:                                               ; preds = %27
  %29 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 839, i32 noundef 495, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, ptr noundef %2) #15
  br label %51

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #16
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %6) #15
  %31 = load i8, ptr %6, align 16, !tbaa !24
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull @.str.19, i64 noundef 4096) #15
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i8, ptr %25, align 1, !tbaa !24
  %37 = icmp eq i8 %36, 47
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %25, i64 noundef 4096) #15
  br label %42

40:                                               ; preds = %35
  %41 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull %25, i64 noundef 4096) #15
  br label %42

42:                                               ; preds = %40, %38
  %43 = call ptr @FileToXML(ptr noundef nonnull %6, i64 noundef -1) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = call fastcc i32 @LoadMimeCache(ptr noundef %0, ptr noundef nonnull %43, ptr noundef nonnull %6, i64 noundef %21, ptr noundef %4) #14
  %47 = and i32 %46, %24
  %48 = call ptr @DestroyString(ptr noundef nonnull %43) #15
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i32 [ %47, %45 ], [ %24, %42 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #16
  br label %51

51:                                               ; preds = %28, %49, %22
  %52 = phi i32 [ %24, %28 ], [ %50, %49 ], [ %24, %22 ]
  %53 = call ptr @GetNextXMLTreeTag(ptr noundef nonnull %23) #15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %22, !llvm.loop !40

55:                                               ; preds = %51, %16
  %56 = phi i32 [ 1, %16 ], [ %52, %51 ]
  %57 = call ptr @GetXMLTreeChild(ptr noundef nonnull %14, ptr noundef nonnull @.str.20) #15
  %58 = icmp eq ptr %57, null
  br i1 %58, label %214, label %59

59:                                               ; preds = %55, %211
  %60 = phi ptr [ %212, %211 ], [ %57, %55 ]
  %61 = call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #21
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @GetExceptionInfo(ptr noundef nonnull %7) #15
  %64 = tail call ptr @__errno_location() #17
  %65 = load i32, ptr %64, align 4, !tbaa !9
  %66 = call ptr @GetExceptionMessage(i32 noundef %65) #15
  %67 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 876, i32 noundef 700, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %66) #15
  %68 = call ptr @DestroyString(ptr noundef %66) #15
  call void @CatchException(ptr noundef nonnull %7) #15
  %69 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %7) #15
  call void @MagickCoreTerminus() #15
  call void @_exit(i32 noundef 1) #18
  unreachable

70:                                               ; preds = %59
  %71 = call ptr @ResetMagickMemory(ptr noundef nonnull %61, i32 noundef 0, i64 noundef 120) #15
  %72 = call ptr @ConstantString(ptr noundef %2) #15
  store ptr %72, ptr %61, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 14
  store i64 2880220587, ptr %73, align 8, !tbaa !41
  %74 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.21) #15
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = call i64 @ParseCommandOption(i32 noundef 14, i32 noundef 1, ptr noundef nonnull %74) #15
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 7
  store i32 %78, ptr %79, align 8, !tbaa !20
  br label %80

80:                                               ; preds = %76, %70
  %81 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.22) #15
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = call ptr @ConstantString(ptr noundef nonnull %81) #15
  %85 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 2
  store ptr %84, ptr %85, align 8, !tbaa !36
  br label %86

86:                                               ; preds = %83, %80
  %87 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.23) #15
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = call i64 @ParseCommandOption(i32 noundef 22, i32 noundef 1, ptr noundef nonnull %87) #15
  %91 = trunc i64 %90 to i32
  %92 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 10
  store i32 %91, ptr %92, align 8, !tbaa !27
  br label %93

93:                                               ; preds = %89, %86
  %94 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.24) #15
  %95 = icmp eq ptr %94, null
  br i1 %95, label %162, label %96

96:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %97 = call ptr @AcquireString(ptr noundef nonnull %94) #15
  store ptr %97, ptr %8, align 8, !tbaa !5
  %98 = call i32 @SubstituteString(ptr noundef nonnull %8, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #15
  %99 = call i32 @SubstituteString(ptr noundef nonnull %8, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #15
  %100 = call i32 @SubstituteString(ptr noundef nonnull %8, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #15
  %101 = load ptr, ptr %8, align 8, !tbaa !5
  %102 = call ptr @AcquireString(ptr noundef %101) #15
  %103 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 12
  store ptr %102, ptr %103, align 8, !tbaa !29
  %104 = load ptr, ptr %8, align 8, !tbaa !5
  %105 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 11
  br label %106

106:                                              ; preds = %130, %96
  %107 = phi ptr [ %104, %96 ], [ %131, %130 ]
  %108 = phi ptr [ %102, %96 ], [ %132, %130 ]
  %109 = load i8, ptr %107, align 1, !tbaa !24
  switch i8 %109, label %147 [
    i8 0, label %151
    i8 92, label %110
  ]

110:                                              ; preds = %106
  %111 = getelementptr inbounds i8, ptr %107, i64 1
  %112 = tail call ptr @__ctype_b_loc() #17
  %113 = load ptr, ptr %112, align 8, !tbaa !5
  %114 = load i8, ptr %111, align 1, !tbaa !24
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds i16, ptr %113, i64 %115
  %117 = load i16, ptr %116, align 2, !tbaa !42
  %118 = and i16 %117, 2048
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %121 = call i64 @strtol(ptr noundef nonnull %111, ptr noundef nonnull %9, i32 noundef 8) #15
  %122 = trunc i64 %121 to i8
  store i8 %122, ptr %108, align 1, !tbaa !24
  %123 = load ptr, ptr %9, align 8, !tbaa !5
  %124 = ptrtoint ptr %123 to i64
  %125 = ptrtoint ptr %111 to i64
  %126 = sub i64 %124, %125
  %127 = getelementptr inbounds i8, ptr %111, i64 %126
  %128 = load i64, ptr %105, align 8, !tbaa !23
  %129 = add i64 %128, 1
  store i64 %129, ptr %105, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %130

130:                                              ; preds = %120, %142, %147
  %131 = phi ptr [ %127, %120 ], [ %144, %142 ], [ %148, %147 ]
  %132 = getelementptr inbounds i8, ptr %108, i64 1
  br label %106, !llvm.loop !44

133:                                              ; preds = %110
  switch i8 %114, label %141 [
    i8 98, label %142
    i8 102, label %134
    i8 110, label %135
    i8 114, label %136
    i8 116, label %137
    i8 118, label %138
    i8 97, label %139
    i8 63, label %140
  ]

134:                                              ; preds = %133
  br label %142

135:                                              ; preds = %133
  br label %142

136:                                              ; preds = %133
  br label %142

137:                                              ; preds = %133
  br label %142

138:                                              ; preds = %133
  br label %142

139:                                              ; preds = %133
  br label %142

140:                                              ; preds = %133
  br label %142

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %133, %141, %140, %139, %138, %137, %136, %135, %134
  %143 = phi i8 [ %114, %141 ], [ %114, %140 ], [ %114, %139 ], [ 11, %138 ], [ 9, %137 ], [ 13, %136 ], [ 10, %135 ], [ 12, %134 ], [ 8, %133 ]
  store i8 %143, ptr %108, align 1, !tbaa !24
  %144 = getelementptr inbounds i8, ptr %107, i64 2
  %145 = load i64, ptr %105, align 8, !tbaa !23
  %146 = add i64 %145, 1
  store i64 %146, ptr %105, align 8, !tbaa !23
  br label %130

147:                                              ; preds = %106
  %148 = getelementptr inbounds i8, ptr %107, i64 1
  store i8 %109, ptr %108, align 1, !tbaa !24
  %149 = load i64, ptr %105, align 8, !tbaa !23
  %150 = add i64 %149, 1
  store i64 %150, ptr %105, align 8, !tbaa !23
  br label %130

151:                                              ; preds = %106
  %152 = load ptr, ptr %8, align 8, !tbaa !5
  %153 = call ptr @DestroyString(ptr noundef %152) #15
  store ptr %153, ptr %8, align 8, !tbaa !5
  %154 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 7
  %155 = load i32, ptr %154, align 8, !tbaa !20
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %161, label %157

157:                                              ; preds = %151
  %158 = load ptr, ptr %103, align 8, !tbaa !29
  %159 = call i64 @strtoul(ptr nocapture noundef %158, ptr noundef null, i32 noundef 0) #15
  %160 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 9
  store i64 %159, ptr %160, align 8, !tbaa !26
  br label %161

161:                                              ; preds = %157, %151
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %162

162:                                              ; preds = %161, %93
  %163 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.31) #15
  %164 = icmp eq ptr %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = call i64 @strtoul(ptr nocapture noundef nonnull %163, ptr noundef null, i32 noundef 0) #15
  %167 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 8
  store i64 %166, ptr %167, align 8, !tbaa !25
  br label %168

168:                                              ; preds = %165, %162
  %169 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.32) #15
  %170 = icmp eq ptr %169, null
  br i1 %170, label %182, label %171

171:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %172 = call i64 @strtol(ptr noundef nonnull %169, ptr noundef nonnull %10, i32 noundef 0) #15
  %173 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 5
  store i64 %172, ptr %173, align 8, !tbaa !22
  %174 = load ptr, ptr %10, align 8, !tbaa !5
  %175 = load i8, ptr %174, align 1, !tbaa !24
  %176 = icmp eq i8 %175, 58
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = getelementptr inbounds i8, ptr %174, i64 1
  %179 = call i64 @strtol(ptr nocapture noundef nonnull %178, ptr noundef null, i32 noundef 0) #15
  %180 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 6
  store i64 %179, ptr %180, align 8, !tbaa !21
  br label %181

181:                                              ; preds = %177, %171
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %182

182:                                              ; preds = %181, %168
  %183 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.33) #15
  %184 = icmp eq ptr %183, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = call ptr @ConstantString(ptr noundef nonnull %183) #15
  %187 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 3
  store ptr %186, ptr %187, align 8, !tbaa !19
  br label %188

188:                                              ; preds = %185, %182
  %189 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.34) #15
  %190 = icmp eq ptr %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = call i64 @strtol(ptr nocapture noundef nonnull %189, ptr noundef null, i32 noundef 0) #15
  %193 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 4
  store i64 %192, ptr %193, align 8, !tbaa !14
  br label %194

194:                                              ; preds = %191, %188
  %195 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.35) #15
  %196 = icmp eq ptr %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = call i32 @IsMagickTrue(ptr noundef nonnull %195) #15
  %199 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 13
  store i32 %198, ptr %199, align 8, !tbaa !31
  br label %200

200:                                              ; preds = %197, %194
  %201 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.36) #15
  %202 = icmp eq ptr %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = call ptr @ConstantString(ptr noundef nonnull %201) #15
  %205 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 1
  store ptr %204, ptr %205, align 8, !tbaa !32
  br label %206

206:                                              ; preds = %203, %200
  %207 = call i32 @AppendValueToLinkedList(ptr noundef %0, ptr noundef nonnull %61) #15
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 976, i32 noundef 400, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %2) #15
  br label %211

211:                                              ; preds = %209, %206
  %212 = call ptr @GetNextXMLTreeTag(ptr noundef nonnull %60) #15
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %59, !llvm.loop !45

214:                                              ; preds = %211, %55
  %215 = phi i32 [ %56, %55 ], [ %207, %211 ]
  %216 = call ptr @DestroyXMLTree(ptr noundef nonnull %14) #15
  br label %217

217:                                              ; preds = %13, %5, %214
  %218 = phi i32 [ %215, %214 ], [ 0, %5 ], [ 0, %13 ]
  ret i32 %218
}

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsLinkedListEmpty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @NewXMLTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetXMLTreeChild(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetXMLTreeAttribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextXMLTreeTag(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyXMLTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize willreturn memory(none) }
attributes #18 = { noreturn nounwind optsize }
attributes #19 = { nounwind optsize allocsize(0,1) }
attributes #20 = { nounwind optsize willreturn memory(read) }
attributes #21 = { nounwind optsize allocsize(0) }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i32 0, i32 2}
!14 = !{!15, !16, i64 32}
!15 = !{!"_MimeInfo", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !16, i64 32, !17, i64 40, !16, i64 48, !10, i64 56, !16, i64 64, !16, i64 72, !10, i64 80, !16, i64 88, !6, i64 96, !10, i64 104, !16, i64 112}
!16 = !{!"long", !7, i64 0}
!17 = !{!"long long", !7, i64 0}
!18 = distinct !{!18, !12}
!19 = !{!15, !6, i64 24}
!20 = !{!15, !10, i64 56}
!21 = !{!15, !16, i64 48}
!22 = !{!15, !17, i64 40}
!23 = !{!15, !16, i64 88}
!24 = !{!7, !7, i64 0}
!25 = !{!15, !16, i64 64}
!26 = !{!15, !16, i64 72}
!27 = !{!15, !10, i64 80}
!28 = distinct !{!28, !12}
!29 = !{!15, !6, i64 96}
!30 = !{!16, !16, i64 0}
!31 = !{!15, !10, i64 104}
!32 = !{!15, !6, i64 8}
!33 = distinct !{!33, !12}
!34 = !{!15, !6, i64 0}
!35 = distinct !{!35, !12}
!36 = !{!15, !6, i64 16}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = !{!15, !16, i64 112}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !7, i64 0}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
