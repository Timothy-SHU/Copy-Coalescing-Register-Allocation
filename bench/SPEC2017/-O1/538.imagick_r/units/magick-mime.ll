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

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @LoadMimeLists(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @AcquireMimeCache(ptr noundef %0, ptr noundef %1)
  store ptr %3, ptr @mime_cache, align 8, !tbaa !34
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @AcquireMimeCache(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call ptr @NewLinkedList(i64 noundef 0) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  call void @GetExceptionInfo(ptr noundef nonnull %3) #14
  %7 = tail call ptr @__errno_location() #15
  %8 = load i32, ptr %7, align 4, !tbaa !38
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #14
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 168, i32 noundef 700, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %9) #14
  %11 = call ptr @DestroyString(ptr noundef %9) #14
  call void @CatchException(ptr noundef nonnull %3) #14
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #16
  unreachable

13:                                               ; preds = %2
  %14 = tail call ptr @GetConfigureOptions(ptr noundef %0, ptr noundef %1) #14
  %15 = tail call ptr @GetNextValueInLinkedList(ptr noundef %14) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %22, %17 ], [ %15, %13 ]
  %19 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %18) #14
  %20 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %18) #14
  %21 = tail call fastcc i32 @LoadMimeCache(ptr noundef nonnull %4, ptr noundef %19, ptr noundef %20, i64 noundef 0, ptr noundef %1)
  %22 = tail call ptr @GetNextValueInLinkedList(ptr noundef %14) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %17, !llvm.loop !40

24:                                               ; preds = %17, %13
  %25 = tail call ptr @DestroyConfigureOptions(ptr noundef %14) #14
  %26 = tail call i32 @IsLinkedListEmpty(ptr noundef nonnull %4) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @LoadMimeCache(ptr noundef nonnull %4, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.14, i64 noundef 0, ptr noundef %1)
  br label %30

30:                                               ; preds = %28, %24
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMimeInfo(ptr noundef %0, ptr noundef readonly %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = load ptr, ptr @mime_semaphore, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @mime_semaphore) #14
  br label %11

11:                                               ; preds = %10, %7
  %12 = load ptr, ptr @mime_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %12) #14
  %13 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @AcquireMimeCache(ptr noundef nonnull @.str.38, ptr noundef %3)
  store ptr %16, ptr @mime_cache, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %15, %11
  %18 = load ptr, ptr @mime_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %18) #14
  br label %19

19:                                               ; preds = %4, %17
  %20 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %218, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @mime_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %23) #14
  %24 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %24) #14
  %25 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  %26 = tail call ptr @GetNextValueInLinkedList(ptr noundef %25) #14
  %27 = icmp eq ptr %1, null
  %28 = icmp eq i64 %2, 0
  %29 = or i1 %27, %28
  br i1 %29, label %215, label %30

30:                                               ; preds = %22
  %31 = icmp eq ptr %26, null
  br i1 %31, label %208, label %32

32:                                               ; preds = %30
  %33 = icmp ne ptr %0, null
  br label %60

34:                                               ; preds = %60, %41
  %35 = phi ptr [ %62, %60 ], [ %43, %41 ]
  br i1 %63, label %45, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct._MimeInfo, ptr %35, i64 0, i32 4
  %38 = load i64, ptr %37, align 8, !tbaa !43
  %39 = load i64, ptr %64, align 8, !tbaa !43
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  %43 = tail call ptr @GetNextValueInLinkedList(ptr noundef %42) #14
  %44 = icmp eq ptr %43, null
  br i1 %44, label %208, label %34, !llvm.loop !47

45:                                               ; preds = %36, %34
  %46 = phi ptr [ %35, %36 ], [ %62, %34 ]
  %47 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = icmp ne ptr %48, null
  %50 = and i1 %33, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = tail call i32 @GlobExpression(ptr noundef nonnull %0, ptr noundef nonnull %48, i32 noundef 0) #14
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, ptr %61, ptr %46
  br label %55

55:                                               ; preds = %203, %195, %198, %79, %100, %137, %93, %96, %130, %133, %188, %191, %68, %51
  %56 = phi ptr [ %54, %51 ], [ %61, %137 ], [ %61, %100 ], [ %61, %79 ], [ %95, %93 ], [ %99, %96 ], [ %132, %130 ], [ %136, %133 ], [ %190, %188 ], [ %194, %191 ], [ %61, %68 ], [ %46, %203 ], [ %61, %195 ], [ %61, %198 ]
  %57 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  %58 = tail call ptr @GetNextValueInLinkedList(ptr noundef %57) #14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %208, label %60, !llvm.loop !47

60:                                               ; preds = %32, %55
  %61 = phi ptr [ null, %32 ], [ %56, %55 ]
  %62 = phi ptr [ %26, %32 ], [ %58, %55 ]
  %63 = icmp eq ptr %61, null
  %64 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 4
  br label %34

65:                                               ; preds = %45
  %66 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !49
  switch i32 %67, label %68 [
    i32 2, label %79
    i32 3, label %100
    i32 4, label %137
  ]

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 6
  %70 = load i64, ptr %69, align 8, !tbaa !50
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %55, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 5
  %74 = load i64, ptr %73, align 8, !tbaa !51
  %75 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 11
  %76 = load i64, ptr %75, align 8, !tbaa !52
  %77 = getelementptr inbounds i8, ptr %1, i64 %74
  %78 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 12
  br label %198

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 5
  %81 = load i64, ptr %80, align 8, !tbaa !51
  %82 = add nsw i64 %81, 4
  %83 = icmp ugt i64 %82, %2
  br i1 %83, label %55, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds i8, ptr %1, i64 %81
  %86 = load i8, ptr %85, align 1, !tbaa !53
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 8
  %89 = load i64, ptr %88, align 8, !tbaa !54
  %90 = icmp eq i64 %89, 0
  %91 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 9
  %92 = load i64, ptr %91, align 8, !tbaa !55
  br i1 %90, label %93, label %96

93:                                               ; preds = %84
  %94 = icmp eq i64 %92, %87
  %95 = select i1 %94, ptr %46, ptr %61
  br label %55

96:                                               ; preds = %84
  %97 = and i64 %92, %89
  %98 = icmp eq i64 %97, %87
  %99 = select i1 %98, ptr %46, ptr %61
  br label %55

100:                                              ; preds = %65
  %101 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 5
  %102 = load i64, ptr %101, align 8, !tbaa !51
  %103 = add nsw i64 %102, 4
  %104 = icmp ugt i64 %103, %2
  br i1 %104, label %55, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds i8, ptr %1, i64 %102
  %107 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 10
  %108 = load i32, ptr %107, align 8, !tbaa !56
  %109 = icmp ult i32 %108, 2
  %110 = getelementptr inbounds i8, ptr %106, i64 1
  %111 = load i8, ptr %106, align 1, !tbaa !53
  %112 = zext i8 %111 to i64
  br i1 %109, label %113, label %118

113:                                              ; preds = %105
  %114 = load i8, ptr %110, align 1, !tbaa !53
  %115 = zext i8 %114 to i64
  %116 = shl nuw nsw i64 %115, 8
  %117 = or disjoint i64 %116, %112
  br label %123

118:                                              ; preds = %105
  %119 = shl nuw nsw i64 %112, 8
  %120 = load i8, ptr %110, align 1, !tbaa !53
  %121 = zext i8 %120 to i64
  %122 = or disjoint i64 %119, %121
  br label %123

123:                                              ; preds = %118, %113
  %124 = phi i64 [ %117, %113 ], [ %122, %118 ]
  %125 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 8
  %126 = load i64, ptr %125, align 8, !tbaa !54
  %127 = icmp eq i64 %126, 0
  %128 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 9
  %129 = load i64, ptr %128, align 8, !tbaa !55
  br i1 %127, label %130, label %133

130:                                              ; preds = %123
  %131 = icmp eq i64 %129, %124
  %132 = select i1 %131, ptr %46, ptr %61
  br label %55

133:                                              ; preds = %123
  %134 = and i64 %129, %126
  %135 = icmp eq i64 %134, %124
  %136 = select i1 %135, ptr %46, ptr %61
  br label %55

137:                                              ; preds = %65
  %138 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 5
  %139 = load i64, ptr %138, align 8, !tbaa !51
  %140 = add nsw i64 %139, 4
  %141 = icmp ugt i64 %140, %2
  br i1 %141, label %55, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds i8, ptr %1, i64 %139
  %144 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 10
  %145 = load i32, ptr %144, align 8, !tbaa !56
  %146 = icmp ult i32 %145, 2
  %147 = getelementptr inbounds i8, ptr %143, i64 1
  %148 = load i8, ptr %143, align 1, !tbaa !53
  %149 = zext i8 %148 to i64
  br i1 %146, label %150, label %166

150:                                              ; preds = %142
  %151 = getelementptr inbounds i8, ptr %143, i64 2
  %152 = load i8, ptr %147, align 1, !tbaa !53
  %153 = zext i8 %152 to i64
  %154 = shl nuw nsw i64 %153, 8
  %155 = getelementptr inbounds i8, ptr %143, i64 3
  %156 = load i8, ptr %151, align 1, !tbaa !53
  %157 = zext i8 %156 to i64
  %158 = shl nuw nsw i64 %157, 16
  %159 = or disjoint i64 %154, %158
  %160 = load i8, ptr %155, align 1, !tbaa !53
  %161 = zext i8 %160 to i32
  %162 = shl nuw i32 %161, 24
  %163 = sext i32 %162 to i64
  %164 = or disjoint i64 %159, %163
  %165 = or disjoint i64 %164, %149
  br label %181

166:                                              ; preds = %142
  %167 = shl nuw nsw i64 %149, 24
  %168 = getelementptr inbounds i8, ptr %143, i64 2
  %169 = load i8, ptr %147, align 1, !tbaa !53
  %170 = zext i8 %169 to i64
  %171 = shl nuw nsw i64 %170, 16
  %172 = or disjoint i64 %171, %167
  %173 = getelementptr inbounds i8, ptr %143, i64 3
  %174 = load i8, ptr %168, align 1, !tbaa !53
  %175 = zext i8 %174 to i64
  %176 = shl nuw nsw i64 %175, 8
  %177 = or disjoint i64 %172, %176
  %178 = load i8, ptr %173, align 1, !tbaa !53
  %179 = zext i8 %178 to i64
  %180 = or disjoint i64 %177, %179
  br label %181

181:                                              ; preds = %166, %150
  %182 = phi i64 [ %165, %150 ], [ %180, %166 ]
  %183 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 8
  %184 = load i64, ptr %183, align 8, !tbaa !54
  %185 = icmp eq i64 %184, 0
  %186 = getelementptr inbounds %struct._MimeInfo, ptr %46, i64 0, i32 9
  %187 = load i64, ptr %186, align 8, !tbaa !55
  br i1 %185, label %188, label %191

188:                                              ; preds = %181
  %189 = icmp eq i64 %187, %182
  %190 = select i1 %189, ptr %46, ptr %61
  br label %55

191:                                              ; preds = %181
  %192 = and i64 %187, %184
  %193 = icmp eq i64 %192, %182
  %194 = select i1 %193, ptr %46, ptr %61
  br label %55

195:                                              ; preds = %203
  %196 = add nuw i64 %199, 1
  %197 = icmp eq i64 %199, %70
  br i1 %197, label %55, label %198, !llvm.loop !57

198:                                              ; preds = %72, %195
  %199 = phi i64 [ 0, %72 ], [ %196, %195 ]
  %200 = add nsw i64 %74, %199
  %201 = add i64 %200, %76
  %202 = icmp ugt i64 %201, %2
  br i1 %202, label %55, label %203

203:                                              ; preds = %198
  %204 = getelementptr inbounds i8, ptr %77, i64 %199
  %205 = load ptr, ptr %78, align 8, !tbaa !58
  %206 = tail call i32 @bcmp(ptr %204, ptr %205, i64 %76)
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %55, label %195

208:                                              ; preds = %55, %41, %30
  %209 = phi ptr [ null, %30 ], [ %61, %41 ], [ %56, %55 ]
  %210 = icmp eq ptr %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  %213 = tail call ptr @RemoveElementByValueFromLinkedList(ptr noundef %212, ptr noundef null) #14
  %214 = tail call i32 @InsertValueInLinkedList(ptr noundef %212, i64 noundef 0, ptr noundef %213) #14
  br label %215

215:                                              ; preds = %208, %211, %22
  %216 = phi ptr [ %26, %22 ], [ %209, %211 ], [ %209, %208 ]
  %217 = load ptr, ptr @mime_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %217) #14
  br label %218

218:                                              ; preds = %215, %19
  %219 = phi ptr [ null, %19 ], [ %216, %215 ]
  ret ptr %219
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #2

declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #2

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMimeInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 466, ptr noundef nonnull @.str.2, ptr noundef %0) #14
  store i64 0, ptr %1, align 8, !tbaa !59
  %5 = tail call ptr @GetMimeInfo(ptr noundef null, ptr noundef nonnull @.str.3, i64 noundef 0, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #14
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @mime_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %14) #14
  %15 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %15) #14
  %16 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %21 = phi ptr [ %36, %33 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._MimeInfo, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !60
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._MimeInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nsw i64 %20, 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %21, ptr %32, align 8, !tbaa !34
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = phi i64 [ %31, %30 ], [ %20, %25 ], [ %20, %19 ]
  %35 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  %36 = tail call ptr @GetNextValueInLinkedList(ptr noundef %35) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !62

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @mime_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #14
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @MimeInfoCompare) #14
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !34
  store i64 %39, ptr %1, align 8, !tbaa !59
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal i32 @MimeInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = tail call i32 @strcasecmp(ptr noundef %4, ptr noundef %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._MimeInfo, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct._MimeInfo, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = tail call i32 @strcasecmp(ptr noundef %11, ptr noundef %13) #18
  br label %15

15:                                               ; preds = %2, %9
  %16 = phi i32 [ %14, %9 ], [ %7, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMimeList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 561, ptr noundef nonnull @.str.2, ptr noundef %0) #14
  store i64 0, ptr %1, align 8, !tbaa !59
  %5 = tail call ptr @GetMimeInfo(ptr noundef null, ptr noundef nonnull @.str.3, i64 noundef 0, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #14
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @mime_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %14) #14
  %15 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %15) #14
  %16 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %13, %35
  %20 = phi i64 [ %36, %35 ], [ 0, %13 ]
  %21 = phi ptr [ %38, %35 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._MimeInfo, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !60
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._MimeInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !61
  %32 = tail call ptr @ConstantString(ptr noundef %31) #14
  %33 = add nsw i64 %20, 1
  %34 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %32, ptr %34, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %30, %25, %19
  %36 = phi i64 [ %33, %30 ], [ %20, %25 ], [ %20, %19 ]
  %37 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  %38 = tail call ptr @GetNextValueInLinkedList(ptr noundef %37) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %19, !llvm.loop !64

40:                                               ; preds = %35, %13
  %41 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %42 = load ptr, ptr @mime_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #14
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %41, i64 noundef 8, ptr noundef nonnull @MimeCompare) #14
  %43 = getelementptr inbounds ptr, ptr %11, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !34
  store i64 %41, ptr %1, align 8, !tbaa !59
  br label %44

44:                                               ; preds = %7, %3, %40
  %45 = phi ptr [ %11, %40 ], [ null, %3 ], [ null, %7 ]
  ret ptr %45
}

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal i32 @MimeCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef %1) #18
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMimeDescription(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 612, ptr noundef nonnull @.str.4) #14
  %3 = getelementptr inbounds %struct._MimeInfo, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMimeType(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 642, ptr noundef nonnull @.str.4) #14
  %3 = getelementptr inbounds %struct._MimeInfo, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ListMimeInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = select i1 %4, ptr %5, ptr %0
  %7 = call ptr @GetMimeInfoList(ptr noundef nonnull @.str.3, ptr noundef nonnull %3, ptr noundef %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %73, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8, !tbaa !59
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %9, %66
  %13 = phi i64 [ %68, %66 ], [ 0, %9 ]
  %14 = phi ptr [ %67, %66 ], [ null, %9 ]
  %15 = getelementptr inbounds ptr, ptr %7, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct._MimeInfo, ptr %16, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !60
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %16, align 8, !tbaa !63
  %24 = tail call i32 @strcasecmp(ptr noundef nonnull %14, ptr noundef %23) #18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22, %20
  %27 = load ptr, ptr %16, align 8, !tbaa !63
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef nonnull %27) #14
  br label %31

31:                                               ; preds = %29, %26
  %32 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.6) #14
  %33 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.7) #14
  br label %34

34:                                               ; preds = %31, %22
  %35 = load ptr, ptr %15, align 8, !tbaa !34
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  %37 = getelementptr inbounds %struct._MimeInfo, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !61
  %39 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef %38) #14
  %40 = load ptr, ptr %15, align 8, !tbaa !34
  %41 = getelementptr inbounds %struct._MimeInfo, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !61
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #18
  %44 = icmp ult i64 %43, 26
  br i1 %44, label %45, label %50

45:                                               ; preds = %34, %45
  %46 = phi i64 [ %48, %45 ], [ %43, %34 ]
  %47 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.8) #14
  %48 = add i64 %46, 1
  %49 = icmp eq i64 %48, 28
  br i1 %49, label %57, label %45, !llvm.loop !66

50:                                               ; preds = %34
  %51 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.9) #14
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi i64 [ 0, %50 ], [ %55, %52 ]
  %54 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.8) #14
  %55 = add nuw nsw i64 %53, 1
  %56 = icmp eq i64 %55, 28
  br i1 %56, label %57, label %52, !llvm.loop !67

57:                                               ; preds = %52, %45
  %58 = load ptr, ptr %15, align 8, !tbaa !34
  %59 = getelementptr inbounds %struct._MimeInfo, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !65
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull %60) #14
  br label %64

64:                                               ; preds = %62, %57
  %65 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.9) #14
  br label %66

66:                                               ; preds = %12, %64
  %67 = phi ptr [ %14, %12 ], [ %36, %64 ]
  %68 = add nuw nsw i64 %13, 1
  %69 = icmp eq i64 %68, %10
  br i1 %69, label %70, label %12, !llvm.loop !68

70:                                               ; preds = %66, %9
  %71 = tail call i32 @fflush(ptr noundef %6)
  %72 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #14
  br label %73

73:                                               ; preds = %2, %70
  %74 = phi i32 [ 1, %70 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 %74
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickToMime(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #14
  %4 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef %0) #14
  call void @LocaleLower(ptr noundef nonnull %2) #14
  %5 = call ptr @AcquireExceptionInfo() #14
  %6 = call ptr @GetMimeInfo(ptr noundef nonnull %2, ptr noundef nonnull @.str.8, i64 noundef 1, ptr noundef %5)
  %7 = call ptr @DestroyExceptionInfo(ptr noundef %5) #14
  %8 = icmp eq ptr %6, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 642, ptr noundef nonnull @.str.4) #14
  %11 = getelementptr inbounds %struct._MimeInfo, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = call ptr @ConstantString(ptr noundef %12) #14
  br label %18

14:                                               ; preds = %1
  %15 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef %0) #14
  %16 = getelementptr inbounds i8, ptr %3, i64 8
  call void @LocaleLower(ptr noundef nonnull %16) #14
  %17 = call ptr @ConstantString(ptr noundef nonnull %3) #14
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi ptr [ %13, %9 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #14
  ret ptr %19
}

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @LocaleLower(ptr noundef) local_unnamed_addr #2

declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MimeComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @mime_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #14
  store ptr %4, ptr @mime_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MimeComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @mime_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @mime_semaphore) #14
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @mime_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %5) #14
  %6 = load ptr, ptr @mime_cache, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @DestroyLinkedList(ptr noundef nonnull %6, ptr noundef nonnull @DestroyMimeElement) #14
  store ptr %9, ptr @mime_cache, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %8, %4
  %11 = load ptr, ptr @mime_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #14
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @mime_semaphore) #14
  ret void
}

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @DestroyMimeElement(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._MimeInfo, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %3) #14
  store ptr %6, ptr %2, align 8, !tbaa !58
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._MimeInfo, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @DestroyString(ptr noundef nonnull %9) #14
  store ptr %12, ptr %8, align 8, !tbaa !48
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct._MimeInfo, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @DestroyString(ptr noundef nonnull %15) #14
  store ptr %18, ptr %14, align 8, !tbaa !65
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct._MimeInfo, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @DestroyString(ptr noundef nonnull %21) #14
  store ptr %24, ptr %20, align 8, !tbaa !61
  br label %25

25:                                               ; preds = %23, %19
  %26 = load ptr, ptr %0, align 8, !tbaa !63
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @DestroyString(ptr noundef nonnull %26) #14
  store ptr %29, ptr %0, align 8, !tbaa !63
  br label %30

30:                                               ; preds = %28, %25
  %31 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #14
  ret ptr null
}

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare ptr @NewLinkedList(i64 noundef) local_unnamed_addr #2

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #10

declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadMimeCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._ExceptionInfo, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 821, ptr noundef nonnull @.str.15, ptr noundef %2) #14
  %12 = icmp eq ptr %1, null
  br i1 %12, label %219, label %13

13:                                               ; preds = %5
  %14 = tail call ptr @NewXMLTree(ptr noundef nonnull %1, ptr noundef %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %219, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %14, ptr noundef nonnull @.str.16) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %16
  %20 = icmp ugt i64 %3, 200
  %21 = add nuw nsw i64 %3, 1
  br label %22

22:                                               ; preds = %19, %51
  %23 = phi ptr [ %17, %19 ], [ %53, %51 ]
  %24 = phi i32 [ 1, %19 ], [ %52, %51 ]
  %25 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %23, ptr noundef nonnull @.str.17) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %22
  br i1 %20, label %28, label %30

28:                                               ; preds = %27
  %29 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 839, i32 noundef 495, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, ptr noundef %2) #14
  br label %51

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #14
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %6) #14
  %31 = load i8, ptr %6, align 16, !tbaa !53
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull @.str.19, i64 noundef 4096) #14
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i8, ptr %25, align 1, !tbaa !53
  %37 = icmp eq i8 %36, 47
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %25, i64 noundef 4096) #14
  br label %42

40:                                               ; preds = %35
  %41 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull %25, i64 noundef 4096) #14
  br label %42

42:                                               ; preds = %40, %38
  %43 = call ptr @FileToXML(ptr noundef nonnull %6, i64 noundef -1) #14
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = call fastcc i32 @LoadMimeCache(ptr noundef %0, ptr noundef nonnull %43, ptr noundef nonnull %6, i64 noundef %21, ptr noundef %4)
  %47 = and i32 %46, %24
  %48 = call ptr @DestroyString(ptr noundef nonnull %43) #14
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i32 [ %47, %45 ], [ %24, %42 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #14
  br label %51

51:                                               ; preds = %28, %49, %22
  %52 = phi i32 [ %24, %28 ], [ %50, %49 ], [ %24, %22 ]
  %53 = call ptr @GetNextXMLTreeTag(ptr noundef nonnull %23) #14
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %22, !llvm.loop !69

55:                                               ; preds = %51, %16
  %56 = phi i32 [ 1, %16 ], [ %52, %51 ]
  %57 = call ptr @GetXMLTreeChild(ptr noundef nonnull %14, ptr noundef nonnull @.str.20) #14
  %58 = icmp eq ptr %57, null
  br i1 %58, label %216, label %59

59:                                               ; preds = %55, %213
  %60 = phi ptr [ %214, %213 ], [ %57, %55 ]
  %61 = call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #19
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #14
  call void @GetExceptionInfo(ptr noundef nonnull %7) #14
  %64 = tail call ptr @__errno_location() #15
  %65 = load i32, ptr %64, align 4, !tbaa !38
  %66 = call ptr @GetExceptionMessage(i32 noundef %65) #14
  %67 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 876, i32 noundef 700, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %66) #14
  %68 = call ptr @DestroyString(ptr noundef %66) #14
  call void @CatchException(ptr noundef nonnull %7) #14
  %69 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %7) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #16
  unreachable

70:                                               ; preds = %59
  %71 = call ptr @ResetMagickMemory(ptr noundef %61, i32 noundef 0, i64 noundef 120) #14
  %72 = call ptr @ConstantString(ptr noundef %2) #14
  store ptr %72, ptr %61, align 8, !tbaa !63
  %73 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 14
  store i64 2880220587, ptr %73, align 8, !tbaa !70
  %74 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.21) #14
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = call i64 @ParseCommandOption(i32 noundef 14, i32 noundef 1, ptr noundef nonnull %74) #14
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 7
  store i32 %78, ptr %79, align 8, !tbaa !49
  br label %80

80:                                               ; preds = %76, %70
  %81 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.22) #14
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = call ptr @ConstantString(ptr noundef nonnull %81) #14
  %85 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 2
  store ptr %84, ptr %85, align 8, !tbaa !65
  br label %86

86:                                               ; preds = %83, %80
  %87 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.23) #14
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = call i64 @ParseCommandOption(i32 noundef 22, i32 noundef 1, ptr noundef nonnull %87) #14
  %91 = trunc i64 %90 to i32
  %92 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 10
  store i32 %91, ptr %92, align 8, !tbaa !56
  br label %93

93:                                               ; preds = %89, %86
  %94 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.24) #14
  %95 = icmp eq ptr %94, null
  br i1 %95, label %164, label %96

96:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  %97 = call ptr @AcquireString(ptr noundef nonnull %94) #14
  store ptr %97, ptr %8, align 8, !tbaa !34
  %98 = call i32 @SubstituteString(ptr noundef nonnull %8, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #14
  %99 = call i32 @SubstituteString(ptr noundef nonnull %8, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #14
  %100 = call i32 @SubstituteString(ptr noundef nonnull %8, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #14
  %101 = load ptr, ptr %8, align 8, !tbaa !34
  %102 = call ptr @AcquireString(ptr noundef %101) #14
  %103 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 12
  store ptr %102, ptr %103, align 8, !tbaa !58
  %104 = load ptr, ptr %8, align 8, !tbaa !34
  %105 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 11
  %106 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 11
  %107 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 11
  br label %108

108:                                              ; preds = %132, %96
  %109 = phi ptr [ %104, %96 ], [ %133, %132 ]
  %110 = phi ptr [ %102, %96 ], [ %134, %132 ]
  %111 = load i8, ptr %109, align 1, !tbaa !53
  switch i8 %111, label %149 [
    i8 0, label %153
    i8 92, label %112
  ]

112:                                              ; preds = %108
  %113 = getelementptr inbounds i8, ptr %109, i64 1
  %114 = tail call ptr @__ctype_b_loc() #15
  %115 = load ptr, ptr %114, align 8, !tbaa !34
  %116 = load i8, ptr %113, align 1, !tbaa !53
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds i16, ptr %115, i64 %117
  %119 = load i16, ptr %118, align 2, !tbaa !71
  %120 = and i16 %119, 2048
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %135, label %122

122:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %123 = call i64 @strtol(ptr noundef nonnull %113, ptr noundef nonnull %9, i32 noundef 8) #14
  %124 = trunc i64 %123 to i8
  store i8 %124, ptr %110, align 1, !tbaa !53
  %125 = load ptr, ptr %9, align 8, !tbaa !34
  %126 = ptrtoint ptr %125 to i64
  %127 = ptrtoint ptr %113 to i64
  %128 = sub i64 %126, %127
  %129 = getelementptr inbounds i8, ptr %113, i64 %128
  %130 = load i64, ptr %105, align 8, !tbaa !52
  %131 = add i64 %130, 1
  store i64 %131, ptr %105, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  br label %132

132:                                              ; preds = %122, %144, %149
  %133 = phi ptr [ %129, %122 ], [ %146, %144 ], [ %150, %149 ]
  %134 = getelementptr inbounds i8, ptr %110, i64 1
  br label %108, !llvm.loop !73

135:                                              ; preds = %112
  switch i8 %116, label %143 [
    i8 98, label %144
    i8 102, label %136
    i8 110, label %137
    i8 114, label %138
    i8 116, label %139
    i8 118, label %140
    i8 97, label %141
    i8 63, label %142
  ]

136:                                              ; preds = %135
  br label %144

137:                                              ; preds = %135
  br label %144

138:                                              ; preds = %135
  br label %144

139:                                              ; preds = %135
  br label %144

140:                                              ; preds = %135
  br label %144

141:                                              ; preds = %135
  br label %144

142:                                              ; preds = %135
  br label %144

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %135, %143, %142, %141, %140, %139, %138, %137, %136
  %145 = phi i8 [ %116, %143 ], [ %116, %142 ], [ %116, %141 ], [ 11, %140 ], [ 9, %139 ], [ 13, %138 ], [ 10, %137 ], [ 12, %136 ], [ 8, %135 ]
  store i8 %145, ptr %110, align 1, !tbaa !53
  %146 = getelementptr inbounds i8, ptr %109, i64 2
  %147 = load i64, ptr %106, align 8, !tbaa !52
  %148 = add i64 %147, 1
  store i64 %148, ptr %106, align 8, !tbaa !52
  br label %132

149:                                              ; preds = %108
  %150 = getelementptr inbounds i8, ptr %109, i64 1
  store i8 %111, ptr %110, align 1, !tbaa !53
  %151 = load i64, ptr %107, align 8, !tbaa !52
  %152 = add i64 %151, 1
  store i64 %152, ptr %107, align 8, !tbaa !52
  br label %132

153:                                              ; preds = %108
  %154 = load ptr, ptr %8, align 8, !tbaa !34
  %155 = call ptr @DestroyString(ptr noundef %154) #14
  store ptr %155, ptr %8, align 8, !tbaa !34
  %156 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 7
  %157 = load i32, ptr %156, align 8, !tbaa !49
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %163, label %159

159:                                              ; preds = %153
  %160 = load ptr, ptr %103, align 8, !tbaa !58
  %161 = call i64 @strtoul(ptr nocapture noundef %160, ptr noundef null, i32 noundef 0) #14
  %162 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 9
  store i64 %161, ptr %162, align 8, !tbaa !55
  br label %163

163:                                              ; preds = %159, %153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  br label %164

164:                                              ; preds = %163, %93
  %165 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.31) #14
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = call i64 @strtoul(ptr nocapture noundef nonnull %165, ptr noundef null, i32 noundef 0) #14
  %169 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 8
  store i64 %168, ptr %169, align 8, !tbaa !54
  br label %170

170:                                              ; preds = %167, %164
  %171 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.32) #14
  %172 = icmp eq ptr %171, null
  br i1 %172, label %184, label %173

173:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  %174 = call i64 @strtol(ptr noundef nonnull %171, ptr noundef nonnull %10, i32 noundef 0) #14
  %175 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 5
  store i64 %174, ptr %175, align 8, !tbaa !51
  %176 = load ptr, ptr %10, align 8, !tbaa !34
  %177 = load i8, ptr %176, align 1, !tbaa !53
  %178 = icmp eq i8 %177, 58
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = getelementptr inbounds i8, ptr %176, i64 1
  %181 = call i64 @strtol(ptr nocapture noundef nonnull %180, ptr noundef null, i32 noundef 0) #14
  %182 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 6
  store i64 %181, ptr %182, align 8, !tbaa !50
  br label %183

183:                                              ; preds = %179, %173
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  br label %184

184:                                              ; preds = %183, %170
  %185 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.33) #14
  %186 = icmp eq ptr %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = call ptr @ConstantString(ptr noundef nonnull %185) #14
  %189 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 3
  store ptr %188, ptr %189, align 8, !tbaa !48
  br label %190

190:                                              ; preds = %187, %184
  %191 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.34) #14
  %192 = icmp eq ptr %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = call i64 @strtol(ptr nocapture noundef nonnull %191, ptr noundef null, i32 noundef 0) #14
  %195 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 4
  store i64 %194, ptr %195, align 8, !tbaa !43
  br label %196

196:                                              ; preds = %193, %190
  %197 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.35) #14
  %198 = icmp eq ptr %197, null
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = call i32 @IsMagickTrue(ptr noundef nonnull %197) #14
  %201 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 13
  store i32 %200, ptr %201, align 8, !tbaa !60
  br label %202

202:                                              ; preds = %199, %196
  %203 = call ptr @GetXMLTreeAttribute(ptr noundef nonnull %60, ptr noundef nonnull @.str.36) #14
  %204 = icmp eq ptr %203, null
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = call ptr @ConstantString(ptr noundef nonnull %203) #14
  %207 = getelementptr inbounds %struct._MimeInfo, ptr %61, i64 0, i32 1
  store ptr %206, ptr %207, align 8, !tbaa !61
  br label %208

208:                                              ; preds = %205, %202
  %209 = call i32 @AppendValueToLinkedList(ptr noundef %0, ptr noundef nonnull %61) #14
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 976, i32 noundef 400, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %2) #14
  br label %213

213:                                              ; preds = %211, %208
  %214 = call ptr @GetNextXMLTreeTag(ptr noundef nonnull %60) #14
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %59, !llvm.loop !74

216:                                              ; preds = %213, %55
  %217 = phi i32 [ %56, %55 ], [ %209, %213 ]
  %218 = call ptr @DestroyXMLTree(ptr noundef nonnull %14) #14
  br label %219

219:                                              ; preds = %13, %5, %216
  %220 = phi i32 [ %217, %216 ], [ 0, %5 ], [ 0, %13 ]
  ret i32 %220
}

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #2

declare i32 @IsLinkedListEmpty(ptr noundef) local_unnamed_addr #2

declare ptr @NewXMLTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetXMLTreeChild(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetXMLTreeAttribute(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @GetNextXMLTreeTag(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #11

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

declare i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

declare i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyXMLTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 13301818}
!8 = !{!"MaxCount", i64 3247920}
!9 = !{!"MaxInternalCount", i64 3247920}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3247920, i32 1}
!18 = !{i32 100000, i64 3247920, i32 1}
!19 = !{i32 200000, i64 3247920, i32 1}
!20 = !{i32 300000, i64 1623960, i32 7}
!21 = !{i32 400000, i64 1623960, i32 7}
!22 = !{i32 500000, i64 1623960, i32 7}
!23 = !{i32 600000, i64 1623960, i32 7}
!24 = !{i32 700000, i64 1623960, i32 7}
!25 = !{i32 800000, i64 1623960, i32 7}
!26 = !{i32 900000, i64 1623960, i32 7}
!27 = !{i32 950000, i64 1623960, i32 7}
!28 = !{i32 990000, i64 204360, i32 8}
!29 = !{i32 999000, i64 25545, i32 12}
!30 = !{i32 999900, i64 3120, i32 13}
!31 = !{i32 999990, i64 195, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!44, !45, i64 32}
!44 = !{!"_MimeInfo", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !45, i64 32, !46, i64 40, !45, i64 48, !39, i64 56, !45, i64 64, !45, i64 72, !39, i64 80, !45, i64 88, !35, i64 96, !39, i64 104, !45, i64 112}
!45 = !{!"long", !36, i64 0}
!46 = !{!"long long", !36, i64 0}
!47 = distinct !{!47, !41, !42}
!48 = !{!44, !35, i64 24}
!49 = !{!44, !39, i64 56}
!50 = !{!44, !45, i64 48}
!51 = !{!44, !46, i64 40}
!52 = !{!44, !45, i64 88}
!53 = !{!36, !36, i64 0}
!54 = !{!44, !45, i64 64}
!55 = !{!44, !45, i64 72}
!56 = !{!44, !39, i64 80}
!57 = distinct !{!57, !41, !42}
!58 = !{!44, !35, i64 96}
!59 = !{!45, !45, i64 0}
!60 = !{!44, !39, i64 104}
!61 = !{!44, !35, i64 8}
!62 = distinct !{!62, !41, !42}
!63 = !{!44, !35, i64 0}
!64 = distinct !{!64, !41, !42}
!65 = !{!44, !35, i64 16}
!66 = distinct !{!66, !41, !42}
!67 = distinct !{!67, !41, !42}
!68 = distinct !{!68, !41, !42}
!69 = distinct !{!69, !41, !42}
!70 = !{!44, !45, i64 112}
!71 = !{!72, !72, i64 0}
!72 = !{!"short", !36, i64 0}
!73 = distinct !{!73, !41, !42}
!74 = distinct !{!74, !41, !42}
