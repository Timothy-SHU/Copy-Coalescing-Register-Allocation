; ModuleID = 'magick/xml-tree.c'
source_filename = "magick/xml-tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._XMLTreeInfo = type { ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64 }
%struct._XMLTreeRoot = type { %struct._XMLTreeInfo, ptr, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@sentinel = internal global [1 x ptr] zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"magick/xml-tree.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"<base64>\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"</base64>\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"&#xA;\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"&#x9;\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"&#xD;\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"ParseError\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"root tag missing\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"UTF16 to UTF8 failed\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"\09\0D\0A />\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"\09\0D\0A =/>\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"\09\0D\0A =\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"missing %c\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"missing >\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"\09\0D\0A >\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"\09\0D\0A \00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"!--\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"unclosed <!--\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"![CDATA[\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"]]>\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"unclosed <![CDATA[\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"!DOCTYPE\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"[]>\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"unclosed <!DOCTYPE\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"unclosed <?\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"unexpected <\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"unclosed tag: `%s'\00", align 1
@NewXMLTreeTag.predefined_entities = internal global [11 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr null], align 16
@.str.37 = private unnamed_addr constant [4 x i8] c"lt;\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"&#60;\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"gt;\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"&#62;\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"quot;\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"&#34;\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"apos;\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"&#39;\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"amp;\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"&#38;\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"UnableToAcquireString\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"<?%s%s%s?>\0A\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"\0A<?%s%s%s?>\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"&#\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"unexpected closing tag </%s>\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"<!ENTITY\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"\09\0D\0A %\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"circular entity declaration &%s\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"<!ATTLIST\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"unclosed <!ATTLIST\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"malformed <!ATTLIST\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"CDATA\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"NOTATION\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"\09\0D\0A )\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"#FIXED\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"-->\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"<?\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"?>\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"standalone\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"\09\0D\0A ='\22\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"<%s\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c" %s=\22\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"</%s>\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AddChildToXMLTree(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = tail call dereferenceable_or_null(96) ptr @AcquireMagickMemory(i64 noundef 96) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 96) #20
  %10 = tail call ptr @ConstantString(ptr noundef %1) #20
  store ptr %10, ptr %6, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._XMLTreeInfo, ptr %6, i64 0, i32 1
  store ptr @sentinel, ptr %11, align 8, !tbaa !41
  %12 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20
  %13 = getelementptr inbounds %struct._XMLTreeInfo, ptr %6, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !42
  %14 = tail call i32 @IsEventLogging() #20
  %15 = getelementptr inbounds %struct._XMLTreeInfo, ptr %6, i64 0, i32 9
  store i32 %14, ptr %15, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._XMLTreeInfo, ptr %6, i64 0, i32 11
  store i64 2880220587, ptr %16, align 8, !tbaa !44
  %17 = tail call ptr @InsertTagIntoXMLTree(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %2)
  br label %18

18:                                               ; preds = %5, %3, %8
  %19 = phi ptr [ %6, %8 ], [ null, %3 ], [ null, %5 ]
  ret ptr %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #3

declare i32 @IsEventLogging() local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @InsertTagIntoXMLTree(ptr noundef %0, ptr noundef returned %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct._XMLTreeInfo, ptr %1, i64 0, i32 7
  %5 = getelementptr inbounds %struct._XMLTreeInfo, ptr %1, i64 0, i32 6
  %6 = getelementptr inbounds %struct._XMLTreeInfo, ptr %1, i64 0, i32 5
  %7 = getelementptr inbounds %struct._XMLTreeInfo, ptr %1, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i64 %2, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %1, i64 0, i32 4
  store ptr %0, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %90, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct._XMLTreeInfo, ptr %10, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !45
  %15 = icmp ugt i64 %14, %2
  br i1 %15, label %27, label %16

16:                                               ; preds = %12, %21
  %17 = phi ptr [ %19, %21 ], [ %10, %12 ]
  %18 = getelementptr inbounds %struct._XMLTreeInfo, ptr %17, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct._XMLTreeInfo, ptr %19, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !45
  %24 = icmp ugt i64 %23, %2
  br i1 %24, label %25, label %16, !llvm.loop !49

25:                                               ; preds = %16, %21
  %26 = getelementptr inbounds %struct._XMLTreeInfo, ptr %17, i64 0, i32 7
  br label %27

27:                                               ; preds = %12, %25
  %28 = phi ptr [ %19, %25 ], [ %10, %12 ]
  %29 = phi ptr [ %26, %25 ], [ %9, %12 ]
  store ptr %28, ptr %4, align 8, !tbaa !48
  store ptr %1, ptr %29, align 8, !tbaa !52
  %30 = load ptr, ptr %1, align 8, !tbaa !34
  %31 = load ptr, ptr %10, align 8, !tbaa !34
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %30) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %38

34:                                               ; preds = %38
  %35 = load ptr, ptr %41, align 8, !tbaa !34
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %30) #21
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38, !llvm.loop !53

38:                                               ; preds = %27, %34
  %39 = phi ptr [ %41, %34 ], [ %10, %27 ]
  %40 = getelementptr inbounds %struct._XMLTreeInfo, ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = icmp ne ptr %41, null
  br i1 %42, label %34, label %61, !llvm.loop !53

43:                                               ; preds = %34, %27
  %44 = phi i1 [ true, %27 ], [ %42, %34 ]
  %45 = phi ptr [ null, %27 ], [ %39, %34 ]
  %46 = phi ptr [ %10, %27 ], [ %41, %34 ]
  %47 = getelementptr inbounds %struct._XMLTreeInfo, ptr %46, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !45
  %49 = icmp ugt i64 %48, %2
  br i1 %49, label %61, label %50

50:                                               ; preds = %43, %55
  %51 = phi ptr [ %53, %55 ], [ %46, %43 ]
  %52 = getelementptr inbounds %struct._XMLTreeInfo, ptr %51, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !55
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct._XMLTreeInfo, ptr %53, i64 0, i32 3
  %57 = load i64, ptr %56, align 8, !tbaa !45
  %58 = icmp ugt i64 %57, %2
  br i1 %58, label %59, label %50, !llvm.loop !56

59:                                               ; preds = %50, %55
  %60 = getelementptr inbounds %struct._XMLTreeInfo, ptr %51, i64 0, i32 5
  store ptr %53, ptr %6, align 8, !tbaa !55
  br label %90

61:                                               ; preds = %38, %43
  %62 = phi ptr [ %46, %43 ], [ %41, %38 ]
  %63 = phi ptr [ %45, %43 ], [ %39, %38 ]
  %64 = phi i1 [ %44, %43 ], [ %42, %38 ]
  %65 = icmp ne ptr %63, null
  %66 = and i1 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct._XMLTreeInfo, ptr %62, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  %70 = getelementptr inbounds %struct._XMLTreeInfo, ptr %63, i64 0, i32 6
  store ptr %69, ptr %70, align 8, !tbaa !54
  br label %71

71:                                               ; preds = %67, %61
  store ptr %62, ptr %6, align 8, !tbaa !55
  %72 = getelementptr inbounds %struct._XMLTreeInfo, ptr %10, i64 0, i32 3
  %73 = load i64, ptr %72, align 8, !tbaa !45
  %74 = icmp ugt i64 %73, %2
  br i1 %74, label %84, label %79

75:                                               ; preds = %79
  %76 = getelementptr inbounds %struct._XMLTreeInfo, ptr %82, i64 0, i32 3
  %77 = load i64, ptr %76, align 8, !tbaa !45
  %78 = icmp ugt i64 %77, %2
  br i1 %78, label %84, label %79, !llvm.loop !57

79:                                               ; preds = %71, %75
  %80 = phi ptr [ %82, %75 ], [ %10, %71 ]
  %81 = getelementptr inbounds %struct._XMLTreeInfo, ptr %80, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !54
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %75, !llvm.loop !57

84:                                               ; preds = %75, %79, %71
  %85 = phi ptr [ %10, %71 ], [ %82, %79 ], [ %82, %75 ]
  %86 = phi ptr [ null, %71 ], [ %80, %79 ], [ %80, %75 ]
  store ptr %85, ptr %5, align 8, !tbaa !54
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct._XMLTreeInfo, ptr %86, i64 0, i32 6
  br label %90

90:                                               ; preds = %3, %88, %59
  %91 = phi ptr [ %60, %59 ], [ %89, %88 ], [ %9, %3 ]
  store ptr %1, ptr %91, align 8, !tbaa !52
  br label %92

92:                                               ; preds = %90, %84
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @AddPathToXMLTree(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %7 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 238, ptr noundef nonnull @.str.2) #20
  br label %12

12:                                               ; preds = %10, %3
  %13 = call ptr @GetPathComponents(ptr noundef %1, ptr noundef nonnull %6) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %91, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %6, align 8, !tbaa !58
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %76

18:                                               ; preds = %15, %70
  %19 = phi ptr [ %68, %70 ], [ %0, %15 ]
  %20 = phi i64 [ %73, %70 ], [ 0, %15 ]
  %21 = getelementptr inbounds ptr, ptr %13, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  call void @GetPathComponent(ptr noundef %22, i32 noundef 7, ptr noundef nonnull %4) #20
  %23 = load ptr, ptr %21, align 8, !tbaa !52
  call void @GetPathComponent(ptr noundef %23, i32 noundef 8, ptr noundef nonnull %5) #20
  %24 = getelementptr inbounds %struct._XMLTreeInfo, ptr %19, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !43
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 928, ptr noundef nonnull @.str.2) #20
  br label %29

29:                                               ; preds = %27, %18
  %30 = getelementptr inbounds %struct._XMLTreeInfo, ptr %19, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %29, %38
  %34 = phi ptr [ %40, %38 ], [ %31, %29 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %5) #21
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct._XMLTreeInfo, ptr %34, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %33

42:                                               ; preds = %33, %38, %29
  %43 = phi ptr [ %31, %29 ], [ null, %38 ], [ %34, %33 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call ptr @AddChildToXMLTree(ptr noundef %19, ptr noundef nonnull %5, i64 noundef %2)
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi ptr [ %46, %45 ], [ %43, %42 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %76, label %50

50:                                               ; preds = %47
  %51 = call i64 @strtol(ptr nocapture noundef nonnull %4, ptr noundef null, i32 noundef 10) #20
  br label %52

52:                                               ; preds = %63, %50
  %53 = phi i64 [ %51, %50 ], [ %55, %63 ]
  %54 = phi ptr [ %48, %50 ], [ %65, %63 ]
  %55 = add nsw i64 %53, -1
  %56 = icmp sgt i64 %53, 1
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct._XMLTreeInfo, ptr %54, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !43
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 997, ptr noundef nonnull @.str.2) #20
  br label %63

63:                                               ; preds = %57, %61
  %64 = getelementptr inbounds %struct._XMLTreeInfo, ptr %54, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !48
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %52, !llvm.loop !59

67:                                               ; preds = %63, %52
  %68 = phi ptr [ null, %63 ], [ %54, %52 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %21, align 8, !tbaa !52
  %72 = call ptr @DestroyString(ptr noundef %71) #20
  store ptr %72, ptr %21, align 8, !tbaa !52
  %73 = add nuw nsw i64 %20, 1
  %74 = load i64, ptr %6, align 8, !tbaa !58
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %18, label %76, !llvm.loop !60

76:                                               ; preds = %70, %47, %67, %15
  %77 = phi i64 [ 0, %15 ], [ %73, %70 ], [ %20, %47 ], [ %20, %67 ]
  %78 = phi ptr [ %0, %15 ], [ %68, %70 ], [ null, %47 ], [ null, %67 ]
  %79 = load i64, ptr %6, align 8, !tbaa !58
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %76, %81
  %82 = phi i64 [ %86, %81 ], [ %77, %76 ]
  %83 = getelementptr inbounds ptr, ptr %13, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !52
  %85 = call ptr @DestroyString(ptr noundef %84) #20
  store ptr %85, ptr %83, align 8, !tbaa !52
  %86 = add nuw nsw i64 %82, 1
  %87 = load i64, ptr %6, align 8, !tbaa !58
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %81, label %89, !llvm.loop !61

89:                                               ; preds = %81, %76
  %90 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %13) #20
  br label %91

91:                                               ; preds = %12, %89
  %92 = phi ptr [ %78, %89 ], [ null, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #20
  ret ptr %92
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @GetPathComponents(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetXMLTreeChild(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 928, ptr noundef nonnull @.str.2) #20
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp ne ptr %1, null
  %12 = icmp ne ptr %10, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %23

14:                                               ; preds = %8, %19
  %15 = phi ptr [ %21, %19 ], [ %10, %8 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %1) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct._XMLTreeInfo, ptr %15, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14

23:                                               ; preds = %14, %19, %8
  %24 = phi ptr [ %10, %8 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetXMLTreeOrdered(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 997, ptr noundef nonnull @.str.2) #20
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  ret ptr %9
}

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @CanonicalXMLContent(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = load i8, ptr %0, align 1, !tbaa !62
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2, %7
  %8 = phi i8 [ %15, %7 ], [ %5, %2 ]
  %9 = phi i64 [ %13, %7 ], [ 0, %2 ]
  %10 = phi ptr [ %14, %7 ], [ %0, %2 ]
  %11 = icmp sgt i8 %8, -1
  %12 = select i1 %11, i64 1, i64 2
  %13 = add i64 %12, %9
  %14 = getelementptr inbounds i8, ptr %10, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !62
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %7, !llvm.loop !63

17:                                               ; preds = %7, %2
  %18 = phi i64 [ 0, %2 ], [ %13, %7 ]
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = add i64 %18, 1
  %22 = tail call ptr @AcquireQuantumMemory(i64 noundef %21, i64 noundef 1) #22
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %22, %20 ], [ null, %17 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %23
  %27 = load i8, ptr %0, align 1, !tbaa !62
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %26, %42
  %30 = phi i8 [ %45, %42 ], [ %27, %26 ]
  %31 = phi ptr [ %43, %42 ], [ %24, %26 ]
  %32 = phi ptr [ %44, %42 ], [ %0, %26 ]
  %33 = icmp sgt i8 %30, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %30, ptr %31, align 1, !tbaa !62
  br label %42

36:                                               ; preds = %29
  %37 = lshr i8 %30, 6
  %38 = or disjoint i8 %37, -64
  %39 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %38, ptr %31, align 1, !tbaa !62
  %40 = and i8 %30, -65
  %41 = getelementptr inbounds i8, ptr %31, i64 2
  store i8 %40, ptr %39, align 1, !tbaa !62
  br label %42

42:                                               ; preds = %36, %34
  %43 = phi ptr [ %35, %34 ], [ %41, %36 ]
  %44 = getelementptr inbounds i8, ptr %32, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !62
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %29, !llvm.loop !64

47:                                               ; preds = %42, %26
  %48 = phi ptr [ %24, %26 ], [ %43, %42 ]
  store i8 0, ptr %48, align 1, !tbaa !62
  br label %49

49:                                               ; preds = %23, %47
  %50 = phi ptr [ %24, %47 ], [ null, %23 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %149, label %52

52:                                               ; preds = %49
  %53 = load i8, ptr %50, align 1, !tbaa !62
  %54 = freeze i8 %53
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %52, %61
  %57 = phi i8 [ %64, %61 ], [ %54, %52 ]
  %58 = phi ptr [ %62, %61 ], [ %50, %52 ]
  %59 = icmp ugt i8 %57, 31
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  switch i8 %57, label %66 [
    i8 13, label %61
    i8 10, label %61
    i8 9, label %61
    i8 0, label %77
  ]

61:                                               ; preds = %60, %60, %60, %56
  %62 = getelementptr inbounds i8, ptr %58, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !62
  %64 = freeze i8 %63
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %77, label %56, !llvm.loop !65

66:                                               ; preds = %60
  %67 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50) #21
  %68 = call ptr @Base64Encode(ptr noundef nonnull %50, i64 noundef %67, ptr noundef nonnull %4) #20
  %69 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %50) #20
  %70 = icmp eq ptr %68, null
  br i1 %70, label %149, label %71

71:                                               ; preds = %66
  %72 = call ptr @AcquireString(ptr noundef nonnull @.str.3) #20
  store ptr %72, ptr %3, align 8, !tbaa !52
  %73 = call i32 @ConcatenateString(ptr noundef nonnull %3, ptr noundef nonnull %68) #20
  %74 = call ptr @DestroyString(ptr noundef nonnull %68) #20
  %75 = call i32 @ConcatenateString(ptr noundef nonnull %3, ptr noundef nonnull @.str.4) #20
  %76 = load ptr, ptr %3, align 8, !tbaa !52
  br label %149

77:                                               ; preds = %60, %61, %52
  %78 = tail call ptr @AcquireString(ptr noundef null) #20
  store ptr %78, ptr %3, align 8, !tbaa !52
  %79 = load i8, ptr %50, align 1, !tbaa !62
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %143, label %81

81:                                               ; preds = %77
  %82 = icmp eq i32 %1, 0
  %83 = icmp eq i32 %1, 0
  br label %84

84:                                               ; preds = %81, %138
  %85 = phi i64 [ 4096, %81 ], [ %96, %138 ]
  %86 = phi i64 [ 0, %81 ], [ %139, %138 ]
  %87 = phi ptr [ %50, %81 ], [ %140, %138 ]
  %88 = add nsw i64 %86, 4096
  %89 = icmp sgt i64 %88, %85
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = add i64 %85, 4096
  %92 = load ptr, ptr %3, align 8, !tbaa !52
  %93 = tail call ptr @ResizeQuantumMemory(ptr noundef %92, i64 noundef %91, i64 noundef 1) #23
  store ptr %93, ptr %3, align 8, !tbaa !52
  %94 = icmp eq ptr %93, null
  br i1 %94, label %149, label %95

95:                                               ; preds = %90, %84
  %96 = phi i64 [ %91, %90 ], [ %85, %84 ]
  %97 = load i8, ptr %87, align 1, !tbaa !62
  %98 = load ptr, ptr %3, align 8, !tbaa !52
  switch i8 %97, label %135 [
    i8 38, label %99
    i8 60, label %103
    i8 62, label %107
    i8 34, label %111
    i8 10, label %115
    i8 9, label %123
    i8 13, label %131
  ]

99:                                               ; preds = %95
  %100 = getelementptr inbounds i8, ptr %98, i64 %86
  %101 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %100, i64 noundef %96, ptr noundef nonnull @.str.5) #20
  %102 = add nsw i64 %101, %86
  br label %138

103:                                              ; preds = %95
  %104 = getelementptr inbounds i8, ptr %98, i64 %86
  %105 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %104, i64 noundef %96, ptr noundef nonnull @.str.6) #20
  %106 = add nsw i64 %105, %86
  br label %138

107:                                              ; preds = %95
  %108 = getelementptr inbounds i8, ptr %98, i64 %86
  %109 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %108, i64 noundef %96, ptr noundef nonnull @.str.7) #20
  %110 = add nsw i64 %109, %86
  br label %138

111:                                              ; preds = %95
  %112 = getelementptr inbounds i8, ptr %98, i64 %86
  %113 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %112, i64 noundef %96, ptr noundef nonnull @.str.8) #20
  %114 = add nsw i64 %113, %86
  br label %138

115:                                              ; preds = %95
  br i1 %83, label %116, label %119

116:                                              ; preds = %115
  %117 = add nsw i64 %86, 1
  %118 = getelementptr inbounds i8, ptr %98, i64 %86
  store i8 %97, ptr %118, align 1, !tbaa !62
  br label %138

119:                                              ; preds = %115
  %120 = getelementptr inbounds i8, ptr %98, i64 %86
  %121 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %120, i64 noundef %96, ptr noundef nonnull @.str.9) #20
  %122 = add nsw i64 %121, %86
  br label %138

123:                                              ; preds = %95
  br i1 %82, label %124, label %127

124:                                              ; preds = %123
  %125 = add nsw i64 %86, 1
  %126 = getelementptr inbounds i8, ptr %98, i64 %86
  store i8 %97, ptr %126, align 1, !tbaa !62
  br label %138

127:                                              ; preds = %123
  %128 = getelementptr inbounds i8, ptr %98, i64 %86
  %129 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %128, i64 noundef %96, ptr noundef nonnull @.str.10) #20
  %130 = add nsw i64 %129, %86
  br label %138

131:                                              ; preds = %95
  %132 = getelementptr inbounds i8, ptr %98, i64 %86
  %133 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %132, i64 noundef %96, ptr noundef nonnull @.str.11) #20
  %134 = add nsw i64 %133, %86
  br label %138

135:                                              ; preds = %95
  %136 = add nsw i64 %86, 1
  %137 = getelementptr inbounds i8, ptr %98, i64 %86
  store i8 %97, ptr %137, align 1, !tbaa !62
  br label %138

138:                                              ; preds = %99, %103, %107, %111, %116, %119, %124, %127, %131, %135
  %139 = phi i64 [ %136, %135 ], [ %134, %131 ], [ %125, %124 ], [ %130, %127 ], [ %117, %116 ], [ %122, %119 ], [ %114, %111 ], [ %110, %107 ], [ %106, %103 ], [ %102, %99 ]
  %140 = getelementptr inbounds i8, ptr %87, i64 1
  %141 = load i8, ptr %140, align 1, !tbaa !62
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %84, !llvm.loop !66

143:                                              ; preds = %138, %77
  %144 = phi i64 [ 0, %77 ], [ %139, %138 ]
  %145 = load ptr, ptr %3, align 8, !tbaa !52
  %146 = getelementptr inbounds i8, ptr %145, i64 %144
  store i8 0, ptr %146, align 1, !tbaa !62
  %147 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %50) #20
  %148 = load ptr, ptr %3, align 8, !tbaa !52
  br label %149

149:                                              ; preds = %90, %66, %49, %143, %71
  %150 = phi ptr [ %76, %71 ], [ %148, %143 ], [ null, %49 ], [ null, %66 ], [ null, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %150
}

declare ptr @Base64Encode(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #3

declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @DestroyXMLTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 576, ptr noundef nonnull @.str.2) #20
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %7, %17
  %12 = phi ptr [ %18, %17 ], [ %9, %7 ]
  %13 = phi ptr [ %19, %17 ], [ null, %7 ]
  %14 = getelementptr inbounds %struct._XMLTreeInfo, ptr %12, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11, %23
  %18 = phi ptr [ %15, %11 ], [ %13, %23 ]
  %19 = phi ptr [ %12, %11 ], [ null, %23 ]
  br label %11, !llvm.loop !67

20:                                               ; preds = %11
  %21 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %12)
  %22 = icmp eq ptr %13, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._XMLTreeInfo, ptr %13, i64 0, i32 8
  store ptr null, ptr %24, align 8, !tbaa !47
  br label %17

25:                                               ; preds = %20, %7
  store ptr null, ptr %8, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25, %35
  %30 = phi ptr [ %36, %35 ], [ %27, %25 ]
  %31 = phi ptr [ %37, %35 ], [ null, %25 ]
  %32 = getelementptr inbounds %struct._XMLTreeInfo, ptr %30, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29, %41
  %36 = phi ptr [ %33, %29 ], [ %31, %41 ]
  %37 = phi ptr [ %30, %29 ], [ null, %41 ]
  br label %29, !llvm.loop !68

38:                                               ; preds = %29
  %39 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %30)
  %40 = icmp eq ptr %31, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct._XMLTreeInfo, ptr %31, i64 0, i32 7
  store ptr null, ptr %42, align 8, !tbaa !48
  br label %35

43:                                               ; preds = %38, %25
  store ptr null, ptr %26, align 8, !tbaa !48
  %44 = load i32, ptr %2, align 8, !tbaa !43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 525, ptr noundef nonnull @.str.2) #20
  br label %48

48:                                               ; preds = %46, %43
  %49 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %181

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !69
  %55 = getelementptr inbounds ptr, ptr %54, i64 10
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %52, %58
  %59 = phi ptr [ %68, %58 ], [ %54, %52 ]
  %60 = phi i64 [ %67, %58 ], [ 10, %52 ]
  %61 = or disjoint i64 %60, 1
  %62 = getelementptr inbounds ptr, ptr %59, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !52
  %64 = tail call ptr @DestroyString(ptr noundef %63) #20
  %65 = load ptr, ptr %53, align 8, !tbaa !69
  %66 = getelementptr inbounds ptr, ptr %65, i64 %61
  store ptr %64, ptr %66, align 8, !tbaa !52
  %67 = add nuw nsw i64 %60, 2
  %68 = load ptr, ptr %53, align 8, !tbaa !69
  %69 = getelementptr inbounds ptr, ptr %68, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !52
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %58, !llvm.loop !71

72:                                               ; preds = %58, %52
  %73 = phi ptr [ %54, %52 ], [ %68, %58 ]
  %74 = tail call ptr @RelinquishMagickMemory(ptr noundef %73) #20
  store ptr %74, ptr %53, align 8, !tbaa !69
  %75 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !72
  %77 = load ptr, ptr %76, align 8, !tbaa !52
  %78 = icmp eq ptr %77, null
  br i1 %78, label %118, label %79

79:                                               ; preds = %72, %111
  %80 = phi ptr [ %116, %111 ], [ %77, %72 ]
  %81 = phi i64 [ %113, %111 ], [ 0, %72 ]
  %82 = load ptr, ptr %80, align 8, !tbaa !52
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = tail call ptr @DestroyString(ptr noundef nonnull %82) #20
  store ptr %85, ptr %80, align 8, !tbaa !52
  br label %86

86:                                               ; preds = %84, %79
  %87 = getelementptr inbounds ptr, ptr %80, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !52
  %89 = icmp eq ptr %88, null
  br i1 %89, label %111, label %90

90:                                               ; preds = %86, %106
  %91 = phi ptr [ %109, %106 ], [ %88, %86 ]
  %92 = phi ptr [ %108, %106 ], [ %87, %86 ]
  %93 = phi i64 [ %107, %106 ], [ 1, %86 ]
  %94 = tail call ptr @DestroyString(ptr noundef nonnull %91) #20
  store ptr %94, ptr %92, align 8, !tbaa !52
  %95 = getelementptr ptr, ptr %92, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !52
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %90
  %99 = tail call ptr @DestroyString(ptr noundef nonnull %96) #20
  store ptr %99, ptr %95, align 8, !tbaa !52
  br label %100

100:                                              ; preds = %98, %90
  %101 = getelementptr ptr, ptr %92, i64 2
  %102 = load ptr, ptr %101, align 8, !tbaa !52
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = tail call ptr @DestroyString(ptr noundef nonnull %102) #20
  store ptr %105, ptr %101, align 8, !tbaa !52
  br label %106

106:                                              ; preds = %104, %100
  %107 = add nuw nsw i64 %93, 3
  %108 = getelementptr inbounds ptr, ptr %80, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !52
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %90, !llvm.loop !73

111:                                              ; preds = %106, %86
  %112 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %80) #20
  %113 = add nuw nsw i64 %81, 1
  %114 = load ptr, ptr %75, align 8, !tbaa !72
  %115 = getelementptr inbounds ptr, ptr %114, i64 %113
  %116 = load ptr, ptr %115, align 8, !tbaa !52
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %79, !llvm.loop !74

118:                                              ; preds = %111, %72
  %119 = phi ptr [ %76, %72 ], [ %114, %111 ]
  %120 = load ptr, ptr %119, align 8, !tbaa !52
  %121 = icmp eq ptr %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 5
  %124 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %119) #20
  store ptr %124, ptr %123, align 8, !tbaa !72
  br label %125

125:                                              ; preds = %122, %118
  %126 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !75
  %128 = load ptr, ptr %127, align 8, !tbaa !52
  %129 = icmp eq ptr %128, null
  br i1 %129, label %181, label %130

130:                                              ; preds = %125
  %131 = load ptr, ptr %126, align 8, !tbaa !75
  %132 = load ptr, ptr %131, align 8, !tbaa !52
  %133 = icmp eq ptr %132, null
  br i1 %133, label %178, label %134

134:                                              ; preds = %130, %156
  %135 = phi i64 [ %173, %156 ], [ 0, %130 ]
  %136 = load ptr, ptr %126, align 8, !tbaa !75
  %137 = getelementptr inbounds ptr, ptr %136, i64 %135
  %138 = load ptr, ptr %137, align 8, !tbaa !52
  %139 = load ptr, ptr %138, align 8, !tbaa !52
  %140 = icmp eq ptr %139, null
  br i1 %140, label %156, label %141

141:                                              ; preds = %134, %141
  %142 = phi ptr [ %154, %141 ], [ %139, %134 ]
  %143 = phi i64 [ %149, %141 ], [ 0, %134 ]
  %144 = tail call ptr @DestroyString(ptr noundef nonnull %142) #20
  %145 = load ptr, ptr %126, align 8, !tbaa !75
  %146 = getelementptr inbounds ptr, ptr %145, i64 %135
  %147 = load ptr, ptr %146, align 8, !tbaa !52
  %148 = getelementptr inbounds ptr, ptr %147, i64 %143
  store ptr %144, ptr %148, align 8, !tbaa !52
  %149 = add nuw nsw i64 %143, 1
  %150 = load ptr, ptr %126, align 8, !tbaa !75
  %151 = getelementptr inbounds ptr, ptr %150, i64 %135
  %152 = load ptr, ptr %151, align 8, !tbaa !52
  %153 = getelementptr inbounds ptr, ptr %152, i64 %149
  %154 = load ptr, ptr %153, align 8, !tbaa !52
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %141, !llvm.loop !76

156:                                              ; preds = %141, %134
  %157 = phi i64 [ 0, %134 ], [ %149, %141 ]
  %158 = phi ptr [ %138, %134 ], [ %152, %141 ]
  %159 = add nuw nsw i64 %157, 1
  %160 = getelementptr inbounds ptr, ptr %158, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !52
  %162 = tail call ptr @DestroyString(ptr noundef %161) #20
  %163 = load ptr, ptr %126, align 8, !tbaa !75
  %164 = getelementptr inbounds ptr, ptr %163, i64 %135
  %165 = load ptr, ptr %164, align 8, !tbaa !52
  %166 = getelementptr inbounds ptr, ptr %165, i64 %159
  store ptr %162, ptr %166, align 8, !tbaa !52
  %167 = load ptr, ptr %126, align 8, !tbaa !75
  %168 = getelementptr inbounds ptr, ptr %167, i64 %135
  %169 = load ptr, ptr %168, align 8, !tbaa !52
  %170 = tail call ptr @RelinquishMagickMemory(ptr noundef %169) #20
  %171 = load ptr, ptr %126, align 8, !tbaa !75
  %172 = getelementptr inbounds ptr, ptr %171, i64 %135
  store ptr %170, ptr %172, align 8, !tbaa !52
  %173 = add nuw nsw i64 %135, 1
  %174 = load ptr, ptr %126, align 8, !tbaa !75
  %175 = getelementptr inbounds ptr, ptr %174, i64 %173
  %176 = load ptr, ptr %175, align 8, !tbaa !52
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %134, !llvm.loop !77

178:                                              ; preds = %156, %130
  %179 = phi ptr [ %131, %130 ], [ %174, %156 ]
  %180 = tail call ptr @RelinquishMagickMemory(ptr noundef %179) #20
  store ptr %180, ptr %126, align 8, !tbaa !75
  br label %181

181:                                              ; preds = %48, %125, %178
  %182 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !41
  %184 = icmp eq ptr %183, null
  %185 = icmp eq ptr %183, @sentinel
  %186 = or i1 %184, %185
  br i1 %186, label %208, label %187

187:                                              ; preds = %181
  %188 = load ptr, ptr %183, align 8, !tbaa !52
  %189 = icmp eq ptr %188, null
  br i1 %189, label %206, label %190

190:                                              ; preds = %187, %201
  %191 = phi ptr [ %204, %201 ], [ %188, %187 ]
  %192 = phi ptr [ %203, %201 ], [ %183, %187 ]
  %193 = phi i64 [ %202, %201 ], [ 0, %187 ]
  %194 = tail call ptr @DestroyString(ptr noundef nonnull %191) #20
  store ptr %194, ptr %192, align 8, !tbaa !52
  %195 = or disjoint i64 %193, 1
  %196 = getelementptr inbounds ptr, ptr %183, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !52
  %198 = icmp eq ptr %197, null
  br i1 %198, label %201, label %199

199:                                              ; preds = %190
  %200 = tail call ptr @DestroyString(ptr noundef nonnull %197) #20
  store ptr %200, ptr %196, align 8, !tbaa !52
  br label %201

201:                                              ; preds = %199, %190
  %202 = add nuw nsw i64 %193, 2
  %203 = getelementptr inbounds ptr, ptr %183, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !52
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %190, !llvm.loop !78

206:                                              ; preds = %201, %187
  %207 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %183) #20
  br label %208

208:                                              ; preds = %181, %206
  store ptr null, ptr %182, align 8, !tbaa !41
  %209 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !42
  %211 = tail call ptr @DestroyString(ptr noundef %210) #20
  store ptr %211, ptr %209, align 8, !tbaa !42
  %212 = load ptr, ptr %0, align 8, !tbaa !34
  %213 = tail call ptr @DestroyString(ptr noundef %212) #20
  store ptr %213, ptr %0, align 8, !tbaa !34
  %214 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #20
  ret ptr null
}

; Function Attrs: nounwind uwtable
define hidden ptr @FileToXML(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  %4 = load ptr, ptr @stdin, align 8, !tbaa !52
  %5 = tail call i32 @fileno(ptr noundef %4) #20
  %6 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef nonnull @.str.12) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0, i32 noundef 0) #20
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %5, %2 ]
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %122, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @lseek(i32 noundef %11, i64 noundef 0, i32 noundef 2) #20
  %15 = load ptr, ptr @stdin, align 8, !tbaa !52
  %16 = tail call i32 @fileno(ptr noundef %15) #20
  %17 = icmp eq i32 %11, %16
  %18 = icmp slt i64 %14, 0
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %78

20:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #20
  %21 = tail call i64 @lseek(i32 noundef %11, i64 noundef 0, i32 noundef 0) #20
  %22 = call i32 @fstat(i32 noundef %11, ptr noundef nonnull %3) #20
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = select i1 %23, i1 %26, i1 false
  %28 = tail call i64 @llvm.umin.i64(i64 %25, i64 262142)
  %29 = select i1 %27, i64 %28, i64 262142
  %30 = tail call ptr @AcquireQuantumMemory(i64 noundef %29, i64 noundef 1) #22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %57, label %32

32:                                               ; preds = %20
  %33 = sub nuw nsw i64 -2, %29
  %34 = add nuw nsw i64 %29, 1
  br label %37

35:                                               ; preds = %52
  %36 = icmp eq ptr %54, null
  br i1 %36, label %57, label %37, !llvm.loop !79

37:                                               ; preds = %32, %35
  %38 = phi i64 [ 0, %32 ], [ %55, %35 ]
  %39 = phi ptr [ %30, %32 ], [ %54, %35 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 %38
  %41 = tail call i64 @read(i32 noundef %11, ptr noundef nonnull %40, i64 noundef %29) #20
  %42 = icmp slt i64 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = tail call ptr @__errno_location() #24
  %45 = load i32, ptr %44, align 4, !tbaa !80
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %57

47:                                               ; preds = %43, %37
  %48 = phi i64 [ 0, %43 ], [ %41, %37 ]
  %49 = icmp ult i64 %33, %38
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %39) #20
  br label %57

52:                                               ; preds = %47
  %53 = add i64 %34, %38
  %54 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %39, i64 noundef %53, i64 noundef 1) #23
  %55 = add i64 %48, %38
  %56 = icmp ult i64 %55, %1
  br i1 %56, label %35, label %57, !llvm.loop !79

57:                                               ; preds = %35, %43, %52, %20, %50
  %58 = phi i64 [ %38, %50 ], [ 0, %20 ], [ %38, %52 ], [ %38, %43 ], [ %55, %35 ]
  %59 = phi ptr [ %51, %50 ], [ null, %20 ], [ %54, %52 ], [ %39, %43 ], [ null, %35 ]
  %60 = phi i64 [ %48, %50 ], [ 0, %20 ], [ %48, %52 ], [ 0, %43 ], [ %48, %35 ]
  %61 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef nonnull @.str.12) #20
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = tail call i32 @close(i32 noundef %11) #20
  br label %65

65:                                               ; preds = %63, %57
  %66 = phi i32 [ %64, %63 ], [ %11, %57 ]
  %67 = icmp eq ptr %59, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = icmp eq i32 %66, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  %71 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %59) #20
  br label %76

72:                                               ; preds = %68
  %73 = add i64 %60, %58
  %74 = tail call i64 @llvm.umin.i64(i64 %73, i64 %1)
  %75 = getelementptr inbounds i8, ptr %59, i64 %74
  store i8 0, ptr %75, align 1, !tbaa !62
  br label %76

76:                                               ; preds = %65, %72, %70
  %77 = phi ptr [ null, %70 ], [ %59, %72 ], [ null, %65 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #20
  br label %122

78:                                               ; preds = %13
  %79 = tail call i64 @llvm.umin.i64(i64 %14, i64 %1)
  %80 = add i64 %79, 4096
  %81 = tail call ptr @AcquireQuantumMemory(i64 noundef %80, i64 noundef 1) #22
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = tail call i32 @close(i32 noundef %11) #20
  br label %122

85:                                               ; preds = %78
  %86 = tail call ptr @MapBlob(i32 noundef %11, i32 noundef 0, i64 noundef 0, i64 noundef %79) #20
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %81, ptr nonnull align 1 %86, i64 %79, i1 false)
  %89 = tail call i32 @UnmapBlob(ptr noundef nonnull %86, i64 noundef %79) #20
  br label %111

90:                                               ; preds = %85
  %91 = tail call i64 @lseek(i32 noundef %11, i64 noundef 0, i32 noundef 0) #20
  %92 = icmp eq i64 %79, 0
  br i1 %92, label %111, label %93

93:                                               ; preds = %90, %104
  %94 = phi i64 [ %106, %104 ], [ 0, %90 ]
  %95 = getelementptr inbounds i8, ptr %81, i64 %94
  %96 = sub i64 %79, %94
  %97 = tail call i64 @llvm.umin.i64(i64 %96, i64 9223372036854775807)
  %98 = tail call i64 @read(i32 noundef %11, ptr noundef nonnull %95, i64 noundef %97) #20
  %99 = icmp slt i64 %98, 1
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = tail call ptr @__errno_location() #24
  %102 = load i32, ptr %101, align 4, !tbaa !80
  %103 = icmp eq i32 %102, 4
  br i1 %103, label %104, label %108

104:                                              ; preds = %93, %100
  %105 = phi i64 [ 0, %100 ], [ %98, %93 ]
  %106 = add i64 %105, %94
  %107 = icmp ult i64 %106, %79
  br i1 %107, label %93, label %111, !llvm.loop !81

108:                                              ; preds = %100
  %109 = tail call i32 @close(i32 noundef %11) #20
  %110 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %81) #20
  br label %122

111:                                              ; preds = %104, %90, %88
  %112 = getelementptr inbounds i8, ptr %81, i64 %79
  store i8 0, ptr %112, align 1, !tbaa !62
  %113 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef nonnull @.str.12) #20
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = tail call i32 @close(i32 noundef %11) #20
  br label %117

117:                                              ; preds = %115, %111
  %118 = phi i32 [ %116, %115 ], [ %11, %111 ]
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %81) #20
  br label %122

122:                                              ; preds = %117, %120, %10, %108, %83, %76
  %123 = phi ptr [ %77, %76 ], [ null, %83 ], [ null, %108 ], [ null, %10 ], [ %121, %120 ], [ %81, %117 ]
  ret ptr %123
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #7

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextXMLTreeTag(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 773, ptr noundef nonnull @.str.2) #20
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetXMLTreeAttribute(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 818, ptr noundef nonnull @.str.2) #20
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %88, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %1) #21
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %21

18:                                               ; preds = %21
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21, !llvm.loop !82

21:                                               ; preds = %15, %18
  %22 = phi i64 [ %23, %18 ], [ 0, %15 ]
  %23 = add nuw nsw i64 %22, 2
  %24 = getelementptr inbounds ptr, ptr %10, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %18, !llvm.loop !82

27:                                               ; preds = %18
  %28 = or disjoint i64 %23, 1
  br label %29

29:                                               ; preds = %27, %15
  %30 = phi i1 [ %26, %27 ], [ %14, %15 ]
  %31 = phi i64 [ %28, %27 ], [ 1, %15 ]
  br i1 %30, label %32, label %33

32:                                               ; preds = %21, %12, %29
  br label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds ptr, ptr %10, i64 %31
  br label %85

35:                                               ; preds = %32, %35
  %36 = phi ptr [ %38, %35 ], [ %0, %32 ]
  %37 = getelementptr inbounds %struct._XMLTreeInfo, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !83
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %35, !llvm.loop !84

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct._XMLTreeRoot, ptr %36, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  %44 = icmp eq ptr %43, null
  br i1 %44, label %88, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %0, align 8, !tbaa !34
  %47 = load ptr, ptr %43, align 8, !tbaa !52
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(1) %46) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45, %56
  %51 = phi i64 [ %52, %56 ], [ 0, %45 ]
  %52 = add nuw nsw i64 %51, 1
  %53 = getelementptr inbounds ptr, ptr %42, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !52
  %55 = icmp eq ptr %54, null
  br i1 %55, label %88, label %56, !llvm.loop !85

56:                                               ; preds = %50
  %57 = load ptr, ptr %54, align 8, !tbaa !52
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(1) %46) #21
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %50, !llvm.loop !85

60:                                               ; preds = %56, %45
  %61 = phi i1 [ %44, %45 ], [ %55, %56 ]
  %62 = phi ptr [ %43, %45 ], [ %54, %56 ]
  br i1 %61, label %88, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds ptr, ptr %62, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !52
  %66 = icmp eq ptr %65, null
  br i1 %66, label %88, label %67

67:                                               ; preds = %63
  %68 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) %1) #21
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %79, label %73

70:                                               ; preds = %73
  %71 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %77, ptr noundef nonnull dereferenceable(1) %1) #21
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73, !llvm.loop !86

73:                                               ; preds = %67, %70
  %74 = phi i64 [ %75, %70 ], [ 1, %67 ]
  %75 = add nuw nsw i64 %74, 3
  %76 = getelementptr inbounds ptr, ptr %62, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !52
  %78 = icmp eq ptr %77, null
  br i1 %78, label %88, label %70, !llvm.loop !86

79:                                               ; preds = %70, %67
  %80 = phi i1 [ %66, %67 ], [ %78, %70 ]
  %81 = phi i64 [ 1, %67 ], [ %75, %70 ]
  br i1 %80, label %88, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds ptr, ptr %62, i64 %81
  %84 = getelementptr ptr, ptr %83, i64 1
  br label %85

85:                                               ; preds = %33, %82
  %86 = phi ptr [ %84, %82 ], [ %34, %33 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !52
  br label %88

88:                                               ; preds = %50, %73, %85, %40, %63, %79, %60, %8
  %89 = phi ptr [ null, %8 ], [ null, %60 ], [ null, %79 ], [ null, %63 ], [ null, %40 ], [ %87, %85 ], [ null, %73 ], [ null, %50 ]
  ret ptr %89
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GetXMLTreeAttributes(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 881, ptr noundef nonnull @.str.2) #20
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %9, align 8, !tbaa !41
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %29, %16 ], [ %14, %12 ]
  %18 = phi i64 [ %26, %16 ], [ 0, %12 ]
  %19 = tail call ptr @ConstantString(ptr noundef nonnull %17) #20
  %20 = load ptr, ptr %9, align 8, !tbaa !41
  %21 = or disjoint i64 %18, 1
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = tail call ptr @ConstantString(ptr noundef %23) #20
  %25 = tail call i32 @AddValueToSplayTree(ptr noundef %1, ptr noundef %19, ptr noundef %24) #20
  %26 = add nuw nsw i64 %18, 2
  %27 = load ptr, ptr %9, align 8, !tbaa !41
  %28 = getelementptr inbounds ptr, ptr %27, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %16, !llvm.loop !87

31:                                               ; preds = %16, %12, %8
  ret i32 1
}

declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetXMLTreeContent(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 965, ptr noundef nonnull @.str.2) #20
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetXMLTreePath(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1049, ptr noundef nonnull @.str.2) #20
  br label %11

11:                                               ; preds = %9, %2
  %12 = call ptr @GetPathComponents(ptr noundef %1, ptr noundef nonnull %5) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %85, label %14

14:                                               ; preds = %11
  %15 = load i64, ptr %5, align 8, !tbaa !58
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %70

17:                                               ; preds = %14, %64
  %18 = phi ptr [ %62, %64 ], [ %0, %14 ]
  %19 = phi i64 [ %67, %64 ], [ 0, %14 ]
  %20 = getelementptr inbounds ptr, ptr %12, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  call void @GetPathComponent(ptr noundef %21, i32 noundef 7, ptr noundef nonnull %3) #20
  %22 = load ptr, ptr %20, align 8, !tbaa !52
  call void @GetPathComponent(ptr noundef %22, i32 noundef 8, ptr noundef nonnull %4) #20
  %23 = getelementptr inbounds %struct._XMLTreeInfo, ptr %18, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !43
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 928, ptr noundef nonnull @.str.2) #20
  br label %28

28:                                               ; preds = %26, %17
  %29 = getelementptr inbounds %struct._XMLTreeInfo, ptr %18, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !47
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28, %37
  %33 = phi ptr [ %39, %37 ], [ %30, %28 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %4) #21
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct._XMLTreeInfo, ptr %33, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %32

41:                                               ; preds = %32, %37, %28
  %42 = phi ptr [ %30, %28 ], [ null, %37 ], [ %33, %32 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %70, label %44

44:                                               ; preds = %41
  %45 = call i64 @strtol(ptr nocapture noundef nonnull %3, ptr noundef null, i32 noundef 10) #20
  br label %46

46:                                               ; preds = %57, %44
  %47 = phi i64 [ %45, %44 ], [ %49, %57 ]
  %48 = phi ptr [ %42, %44 ], [ %59, %57 ]
  %49 = add nsw i64 %47, -1
  %50 = icmp sgt i64 %47, 1
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct._XMLTreeInfo, ptr %48, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !43
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 997, ptr noundef nonnull @.str.2) #20
  br label %57

57:                                               ; preds = %51, %55
  %58 = getelementptr inbounds %struct._XMLTreeInfo, ptr %48, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %46, !llvm.loop !88

61:                                               ; preds = %57, %46
  %62 = phi ptr [ null, %57 ], [ %48, %46 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %20, align 8, !tbaa !52
  %66 = call ptr @DestroyString(ptr noundef %65) #20
  store ptr %66, ptr %20, align 8, !tbaa !52
  %67 = add nuw nsw i64 %19, 1
  %68 = load i64, ptr %5, align 8, !tbaa !58
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %17, label %70, !llvm.loop !89

70:                                               ; preds = %64, %41, %61, %14
  %71 = phi i64 [ 0, %14 ], [ %67, %64 ], [ %19, %41 ], [ %19, %61 ]
  %72 = phi ptr [ %0, %14 ], [ %62, %64 ], [ null, %41 ], [ null, %61 ]
  %73 = load i64, ptr %5, align 8, !tbaa !58
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %70, %75
  %76 = phi i64 [ %80, %75 ], [ %71, %70 ]
  %77 = getelementptr inbounds ptr, ptr %12, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !52
  %79 = call ptr @DestroyString(ptr noundef %78) #20
  store ptr %79, ptr %77, align 8, !tbaa !52
  %80 = add nuw nsw i64 %76, 1
  %81 = load i64, ptr %5, align 8, !tbaa !58
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %75, label %83, !llvm.loop !90

83:                                               ; preds = %75, %70
  %84 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %12) #20
  br label %85

85:                                               ; preds = %11, %83
  %86 = phi ptr [ %72, %83 ], [ null, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #20
  ret ptr %86
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @GetXMLTreeProcessingInstructions(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1114, ptr noundef nonnull @.str.2) #20
  br label %8

8:                                                ; preds = %6, %2
  br label %9

9:                                                ; preds = %8, %9
  %10 = phi ptr [ %12, %9 ], [ %0, %8 ]
  %11 = getelementptr inbounds %struct._XMLTreeInfo, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !91

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._XMLTreeRoot, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %17, align 8, !tbaa !52
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %1) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %19, %29
  %24 = phi i64 [ %25, %29 ], [ 0, %19 ]
  %25 = add nuw nsw i64 %24, 1
  %26 = getelementptr inbounds ptr, ptr %16, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29, !llvm.loop !92

29:                                               ; preds = %23
  %30 = load ptr, ptr %27, align 8, !tbaa !52
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %1) #21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %23, !llvm.loop !92

33:                                               ; preds = %23, %29, %19, %14
  %34 = phi ptr [ %17, %14 ], [ %17, %19 ], [ %27, %29 ], [ %27, %23 ]
  %35 = phi i1 [ %18, %14 ], [ %18, %19 ], [ %28, %29 ], [ %28, %23 ]
  %36 = getelementptr inbounds ptr, ptr %34, i64 1
  %37 = select i1 %35, ptr @sentinel, ptr %36
  ret ptr %37
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetXMLTreeSibling(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1155, ptr noundef nonnull @.str.2) #20
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetXMLTreeTag(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1187, ptr noundef nonnull @.str.2) #20
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @NewXMLTree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = alloca %struct._ExceptionInfo, align 8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i8, ptr %0, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %2
  %13 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1967, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #20
  br label %1057

14:                                               ; preds = %9
  %15 = tail call ptr @NewXMLTreeTag(ptr noundef null)
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %17 = tail call ptr @AcquireQuantumMemory(i64 noundef %16, i64 noundef 1) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %123, label %19

19:                                               ; preds = %14
  %20 = load i8, ptr %0, align 1, !tbaa !62
  %21 = icmp eq i8 %20, -1
  %22 = icmp ult i8 %20, -2
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = add i64 %16, -1
  %25 = getelementptr i8, ptr %0, i64 3
  %26 = getelementptr i8, ptr %0, i64 3
  %27 = icmp sgt i64 %24, 2
  br i1 %27, label %30, label %119

28:                                               ; preds = %19
  %29 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %17, ptr noundef nonnull %0, i64 noundef %16) #20
  br label %123

30:                                               ; preds = %23, %115
  %31 = phi i64 [ %116, %115 ], [ 0, %23 ]
  %32 = phi i64 [ %79, %115 ], [ %16, %23 ]
  %33 = phi i64 [ %117, %115 ], [ 2, %23 ]
  %34 = phi ptr [ %78, %115 ], [ %17, %23 ]
  %35 = getelementptr i8, ptr %0, i64 %33
  %36 = getelementptr i8, ptr %35, i64 1
  %37 = getelementptr i8, ptr %35, i64 1
  %38 = select i1 %21, ptr %35, ptr %37
  %39 = select i1 %21, ptr %36, ptr %35
  %40 = load i8, ptr %39, align 1, !tbaa !62
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = load i8, ptr %38, align 1, !tbaa !62
  %44 = zext i8 %43 to i32
  %45 = or disjoint i32 %42, %44
  %46 = and i32 %41, 248
  %47 = icmp eq i32 %46, 216
  br i1 %47, label %48, label %69

48:                                               ; preds = %30
  %49 = add nsw i64 %33, 2
  %50 = icmp slt i64 %49, %24
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = getelementptr i8, ptr %26, i64 %33
  %53 = getelementptr inbounds i8, ptr %0, i64 %49
  %54 = getelementptr inbounds i8, ptr %0, i64 %49
  %55 = getelementptr i8, ptr %25, i64 %33
  %56 = select i1 %21, ptr %53, ptr %55
  %57 = select i1 %21, ptr %52, ptr %54
  %58 = load i8, ptr %57, align 1, !tbaa !62
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 8
  %61 = load i8, ptr %56, align 1, !tbaa !62
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %45, 10
  %64 = and i32 %63, 1047552
  %65 = and i32 %60, 768
  %66 = or disjoint i32 %65, %62
  %67 = add nuw nsw i32 %64, 65536
  %68 = or disjoint i32 %67, %66
  br label %69

69:                                               ; preds = %51, %48, %30
  %70 = phi i32 [ %68, %51 ], [ %45, %48 ], [ %45, %30 ]
  %71 = phi i64 [ %49, %51 ], [ %49, %48 ], [ %33, %30 ]
  %72 = add nsw i64 %31, 4096
  %73 = icmp ugt i64 %72, %32
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = tail call ptr @ResizeQuantumMemory(ptr noundef %34, i64 noundef %72, i64 noundef 1) #23
  %76 = icmp eq ptr %75, null
  br i1 %76, label %123, label %77

77:                                               ; preds = %74, %69
  %78 = phi ptr [ %75, %74 ], [ %34, %69 ]
  %79 = phi i64 [ %72, %74 ], [ %32, %69 ]
  %80 = icmp slt i32 %70, 128
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = trunc i32 %70 to i8
  %83 = getelementptr inbounds i8, ptr %78, i64 %31
  store i8 %82, ptr %83, align 1, !tbaa !62
  %84 = add nsw i64 %31, 1
  br label %115

85:                                               ; preds = %77, %85
  %86 = phi i32 [ %89, %85 ], [ %70, %77 ]
  %87 = phi i32 [ %88, %85 ], [ 0, %77 ]
  %88 = add nuw nsw i32 %87, 1
  %89 = lshr i32 %86, 1
  %90 = icmp ult i32 %86, 2
  br i1 %90, label %91, label %85, !llvm.loop !93

91:                                               ; preds = %85
  %92 = add nsw i32 %87, -1
  %93 = sdiv i32 %92, 5
  %94 = sub nsw i32 7, %93
  %95 = shl i32 255, %94
  %96 = mul nsw i32 %93, 6
  %97 = lshr i32 %70, %96
  %98 = or i32 %95, %97
  %99 = trunc i32 %98 to i8
  %100 = getelementptr inbounds i8, ptr %78, i64 %31
  store i8 %99, ptr %100, align 1, !tbaa !62
  %101 = add nsw i64 %31, 1
  %102 = icmp ult i32 %87, 6
  br i1 %102, label %115, label %103

103:                                              ; preds = %91, %103
  %104 = phi i64 [ %113, %103 ], [ %101, %91 ]
  %105 = phi i32 [ %106, %103 ], [ %93, %91 ]
  %106 = add nsw i32 %105, -1
  %107 = mul nsw i32 %106, 6
  %108 = lshr i32 %70, %107
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 63
  %111 = or disjoint i8 %110, -128
  %112 = getelementptr inbounds i8, ptr %78, i64 %104
  store i8 %111, ptr %112, align 1, !tbaa !62
  %113 = add nsw i64 %104, 1
  %114 = icmp eq i32 %106, 0
  br i1 %114, label %115, label %103, !llvm.loop !94

115:                                              ; preds = %103, %91, %81
  %116 = phi i64 [ %84, %81 ], [ %101, %91 ], [ %113, %103 ]
  %117 = add nsw i64 %71, 2
  %118 = icmp slt i64 %117, %24
  br i1 %118, label %30, label %119, !llvm.loop !95

119:                                              ; preds = %115, %23
  %120 = phi ptr [ %17, %23 ], [ %78, %115 ]
  %121 = phi i64 [ 0, %23 ], [ %116, %115 ]
  %122 = tail call ptr @ResizeQuantumMemory(ptr noundef %120, i64 noundef %121, i64 noundef 1) #23
  br label %123

123:                                              ; preds = %74, %14, %28, %119
  %124 = phi i64 [ %16, %14 ], [ %16, %28 ], [ %121, %119 ], [ %16, %74 ]
  %125 = phi ptr [ null, %14 ], [ %17, %28 ], [ %122, %119 ], [ null, %74 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1976, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15) #20
  br label %1057

129:                                              ; preds = %123
  %130 = getelementptr i8, ptr %125, i64 %124
  %131 = getelementptr i8, ptr %130, i64 -1
  %132 = load i8, ptr %131, align 1, !tbaa !62
  store i8 0, ptr %131, align 1, !tbaa !62
  br label %133

133:                                              ; preds = %155, %129
  %134 = phi ptr [ %125, %129 ], [ %156, %155 ]
  %135 = load i8, ptr %134, align 1, !tbaa !62
  switch i8 %135, label %155 [
    i8 0, label %157
    i8 60, label %136
  ]

136:                                              ; preds = %133
  %137 = tail call ptr @__ctype_b_loc() #24
  %138 = icmp ne i8 %132, 62
  %139 = icmp ne i8 %132, 62
  %140 = getelementptr inbounds %struct._XMLTreeRoot, ptr %15, i64 0, i32 2
  %141 = getelementptr inbounds %struct._XMLTreeRoot, ptr %15, i64 0, i32 5
  %142 = getelementptr inbounds %struct._XMLTreeRoot, ptr %15, i64 0, i32 4
  %143 = getelementptr inbounds %struct._XMLTreeRoot, ptr %15, i64 0, i32 1
  %144 = getelementptr inbounds %struct._XMLTreeRoot, ptr %15, i64 0, i32 4
  %145 = icmp ne i8 %132, 62
  %146 = icmp ne i8 %132, 62
  %147 = getelementptr inbounds %struct._XMLTreeRoot, ptr %15, i64 0, i32 1
  %148 = getelementptr inbounds %struct._XMLTreeRoot, ptr %15, i64 0, i32 1
  %149 = getelementptr inbounds %struct._XMLTreeRoot, ptr %15, i64 0, i32 5
  %150 = getelementptr inbounds %struct._XMLTreeRoot, ptr %15, i64 0, i32 4
  %151 = icmp eq i8 %132, 62
  %152 = icmp ne i8 %132, 62
  %153 = getelementptr inbounds %struct._XMLTreeRoot, ptr %15, i64 0, i32 1
  %154 = getelementptr inbounds %struct._XMLTreeRoot, ptr %15, i64 0, i32 4
  br label %160

155:                                              ; preds = %133
  %156 = getelementptr inbounds i8, ptr %134, i64 1
  br label %133, !llvm.loop !96

157:                                              ; preds = %133
  %158 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1987, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #20
  %159 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  br label %1057

160:                                              ; preds = %1016, %136
  %161 = phi ptr [ null, %136 ], [ %1009, %1016 ]
  %162 = phi ptr [ %134, %136 ], [ %1017, %1016 ]
  %163 = getelementptr inbounds i8, ptr %162, i64 1
  %164 = load i8, ptr %163, align 1, !tbaa !62
  %165 = load ptr, ptr %137, align 8, !tbaa !52
  %166 = zext i8 %164 to i64
  %167 = getelementptr inbounds i16, ptr %165, i64 %166
  %168 = load i16, ptr %167, align 2, !tbaa !97
  %169 = and i16 %168, 1024
  %170 = icmp ne i16 %169, 0
  %171 = icmp eq i8 %164, 95
  %172 = or i1 %171, %170
  br i1 %172, label %177, label %173

173:                                              ; preds = %160
  %174 = icmp eq i8 %164, 58
  %175 = icmp slt i8 %164, 0
  %176 = or i1 %174, %175
  br i1 %176, label %177, label %480

177:                                              ; preds = %173, %160
  %178 = load ptr, ptr %148, align 8, !tbaa !99
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2006, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #20
  %182 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  br label %1057

183:                                              ; preds = %177
  %184 = tail call i64 @strcspn(ptr noundef nonnull %163, ptr noundef nonnull @.str.16) #21
  %185 = getelementptr inbounds i8, ptr %163, i64 %184
  %186 = load ptr, ptr %137, align 8, !tbaa !52
  %187 = load i8, ptr %185, align 1, !tbaa !62
  %188 = zext i8 %187 to i64
  %189 = getelementptr inbounds i16, ptr %186, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !97
  %191 = and i16 %190, 8192
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %203, label %193

193:                                              ; preds = %183, %193
  %194 = phi ptr [ %195, %193 ], [ %185, %183 ]
  %195 = getelementptr inbounds i8, ptr %194, i64 1
  store i8 0, ptr %194, align 1, !tbaa !62
  %196 = load ptr, ptr %137, align 8, !tbaa !52
  %197 = load i8, ptr %195, align 1, !tbaa !62
  %198 = zext i8 %197 to i64
  %199 = getelementptr inbounds i16, ptr %196, i64 %198
  %200 = load i16, ptr %199, align 2, !tbaa !97
  %201 = and i16 %200, 8192
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %203, label %193, !llvm.loop !100

203:                                              ; preds = %193, %183
  %204 = phi ptr [ %185, %183 ], [ %195, %193 ]
  %205 = phi i8 [ %187, %183 ], [ %197, %193 ]
  switch i8 %205, label %206 [
    i8 0, label %221
    i8 47, label %221
    i8 62, label %221
  ]

206:                                              ; preds = %203
  %207 = load ptr, ptr %149, align 8, !tbaa !72
  %208 = load ptr, ptr %207, align 8, !tbaa !52
  %209 = icmp eq ptr %208, null
  br i1 %209, label %221, label %215

210:                                              ; preds = %215
  %211 = add nuw nsw i64 %217, 1
  %212 = getelementptr inbounds ptr, ptr %207, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !52
  %214 = icmp eq ptr %213, null
  br i1 %214, label %221, label %215, !llvm.loop !101

215:                                              ; preds = %206, %210
  %216 = phi ptr [ %213, %210 ], [ %208, %206 ]
  %217 = phi i64 [ %211, %210 ], [ 0, %206 ]
  %218 = load ptr, ptr %216, align 8, !tbaa !52
  %219 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %218, ptr noundef nonnull dereferenceable(1) %163) #21
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %210

221:                                              ; preds = %210, %215, %206, %203, %203, %203
  %222 = phi ptr [ %161, %203 ], [ %161, %203 ], [ %161, %203 ], [ %208, %206 ], [ %216, %215 ], [ %213, %210 ]
  %223 = icmp eq ptr %222, null
  br label %225

224:                                              ; preds = %344
  br label %225, !llvm.loop !102

225:                                              ; preds = %224, %221
  %226 = phi ptr [ @sentinel, %221 ], [ %238, %224 ]
  %227 = phi ptr [ %204, %221 ], [ %345, %224 ]
  %228 = phi i64 [ 0, %221 ], [ %244, %224 ]
  %229 = load i8, ptr %227, align 1, !tbaa !62
  switch i8 %229, label %230 [
    i8 47, label %353
    i8 62, label %427
    i8 0, label %424
  ]

230:                                              ; preds = %225
  %231 = icmp eq i64 %228, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %230
  %233 = tail call dereferenceable_or_null(32) ptr @AcquireQuantumMemory(i64 noundef 4, i64 noundef 8) #22
  br label %237

234:                                              ; preds = %230
  %235 = add nuw nsw i64 %228, 4
  %236 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %226, i64 noundef %235, i64 noundef 8) #23
  br label %237

237:                                              ; preds = %234, %232
  %238 = phi ptr [ %233, %232 ], [ %236, %234 ]
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2037, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str) #20
  %242 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  br label %1057

243:                                              ; preds = %237
  %244 = add nuw nsw i64 %228, 2
  %245 = getelementptr inbounds ptr, ptr %238, i64 %244
  store ptr null, ptr %245, align 8, !tbaa !52
  %246 = or disjoint i64 %228, 1
  %247 = getelementptr inbounds ptr, ptr %238, i64 %246
  store ptr null, ptr %247, align 8, !tbaa !52
  %248 = getelementptr inbounds ptr, ptr %238, i64 %228
  store ptr %227, ptr %248, align 8, !tbaa !52
  %249 = tail call i64 @strcspn(ptr noundef nonnull %227, ptr noundef nonnull @.str.19) #21
  %250 = getelementptr inbounds i8, ptr %227, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !62
  %252 = icmp eq i8 %251, 61
  br i1 %252, label %262, label %253

253:                                              ; preds = %243
  %254 = load ptr, ptr %137, align 8, !tbaa !52
  %255 = zext i8 %251 to i64
  %256 = getelementptr inbounds i16, ptr %254, i64 %255
  %257 = load i16, ptr %256, align 2, !tbaa !97
  %258 = and i16 %257, 8192
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %253
  %261 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20
  br label %340

262:                                              ; preds = %253, %243
  %263 = getelementptr inbounds i8, ptr %250, i64 1
  store i8 0, ptr %250, align 1, !tbaa !62
  %264 = tail call i64 @strspn(ptr noundef nonnull %263, ptr noundef nonnull @.str.20) #21
  %265 = getelementptr inbounds i8, ptr %263, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !62
  switch i8 %266, label %336 [
    i8 39, label %267
    i8 34, label %267
  ]

267:                                              ; preds = %262, %262
  %268 = getelementptr inbounds i8, ptr %265, i64 1
  store ptr %268, ptr %247, align 8, !tbaa !52
  br label %269

269:                                              ; preds = %269, %267
  %270 = phi ptr [ %268, %267 ], [ %275, %269 ]
  %271 = load i8, ptr %270, align 1, !tbaa !62
  %272 = icmp eq i8 %271, 0
  %273 = icmp eq i8 %271, %266
  %274 = or i1 %272, %273
  %275 = getelementptr inbounds i8, ptr %270, i64 1
  br i1 %274, label %276, label %269, !llvm.loop !103

276:                                              ; preds = %269
  br i1 %272, label %279, label %277

277:                                              ; preds = %276
  %278 = getelementptr inbounds i8, ptr %270, i64 1
  store i8 0, ptr %270, align 1, !tbaa !62
  br i1 %223, label %319, label %308

279:                                              ; preds = %276
  %280 = sext i8 %266 to i32
  %281 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20
  store ptr %281, ptr %248, align 8, !tbaa !52
  %282 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20
  store ptr %282, ptr %247, align 8, !tbaa !52
  %283 = icmp eq ptr %238, @sentinel
  br i1 %283, label %305, label %284

284:                                              ; preds = %279
  %285 = load ptr, ptr %238, align 8, !tbaa !52
  %286 = icmp eq ptr %285, null
  br i1 %286, label %303, label %287

287:                                              ; preds = %284, %298
  %288 = phi ptr [ %301, %298 ], [ %285, %284 ]
  %289 = phi ptr [ %300, %298 ], [ %238, %284 ]
  %290 = phi i64 [ %299, %298 ], [ 0, %284 ]
  %291 = tail call ptr @DestroyString(ptr noundef nonnull %288) #20
  store ptr %291, ptr %289, align 8, !tbaa !52
  %292 = or disjoint i64 %290, 1
  %293 = getelementptr inbounds ptr, ptr %238, i64 %292
  %294 = load ptr, ptr %293, align 8, !tbaa !52
  %295 = icmp eq ptr %294, null
  br i1 %295, label %298, label %296

296:                                              ; preds = %287
  %297 = tail call ptr @DestroyString(ptr noundef nonnull %294) #20
  store ptr %297, ptr %293, align 8, !tbaa !52
  br label %298

298:                                              ; preds = %296, %287
  %299 = add nuw nsw i64 %290, 2
  %300 = getelementptr inbounds ptr, ptr %238, i64 %299
  %301 = load ptr, ptr %300, align 8, !tbaa !52
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %287, !llvm.loop !78

303:                                              ; preds = %298, %284
  %304 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %238) #20
  br label %305

305:                                              ; preds = %279, %303
  %306 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2069, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.21, i32 noundef %280) #20
  %307 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  br label %1057

308:                                              ; preds = %277, %317
  %309 = phi i64 [ %318, %317 ], [ 1, %277 ]
  %310 = getelementptr inbounds ptr, ptr %222, i64 %309
  %311 = load ptr, ptr %310, align 8, !tbaa !52
  %312 = icmp eq ptr %311, null
  br i1 %312, label %319, label %313

313:                                              ; preds = %308
  %314 = load ptr, ptr %248, align 8, !tbaa !52
  %315 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %311, ptr noundef nonnull dereferenceable(1) %314) #21
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %319, label %317

317:                                              ; preds = %313
  %318 = add nuw nsw i64 %309, 3
  br i1 %223, label %319, label %308, !llvm.loop !104

319:                                              ; preds = %313, %317, %308, %277
  %320 = phi i64 [ 1, %277 ], [ %309, %313 ], [ %318, %317 ], [ %309, %308 ]
  %321 = load ptr, ptr %247, align 8, !tbaa !52
  %322 = load ptr, ptr %150, align 8, !tbaa !69
  br i1 %223, label %333, label %323

323:                                              ; preds = %319
  %324 = getelementptr inbounds ptr, ptr %222, i64 %320
  %325 = load ptr, ptr %324, align 8, !tbaa !52
  %326 = icmp eq ptr %325, null
  br i1 %326, label %333, label %327

327:                                              ; preds = %323
  %328 = add nuw nsw i64 %320, 2
  %329 = getelementptr inbounds ptr, ptr %222, i64 %328
  %330 = load ptr, ptr %329, align 8, !tbaa !52
  %331 = load i8, ptr %330, align 1, !tbaa !62
  %332 = sext i8 %331 to i32
  br label %333

333:                                              ; preds = %319, %323, %327
  %334 = phi i32 [ %332, %327 ], [ 32, %323 ], [ 32, %319 ]
  %335 = tail call fastcc ptr @ParseEntities(ptr noundef %321, ptr noundef %322, i32 noundef %334)
  store ptr %335, ptr %247, align 8, !tbaa !52
  br label %336

336:                                              ; preds = %262, %333
  %337 = phi ptr [ %278, %333 ], [ %265, %262 ]
  %338 = load ptr, ptr %248, align 8, !tbaa !52
  %339 = tail call ptr @ConstantString(ptr noundef %338) #20
  br label %340

340:                                              ; preds = %336, %260
  %341 = phi ptr [ %339, %336 ], [ %261, %260 ]
  %342 = phi ptr [ %337, %336 ], [ %250, %260 ]
  store ptr %341, ptr %248, align 8, !tbaa !52
  %343 = load ptr, ptr %137, align 8, !tbaa !52
  br label %344

344:                                              ; preds = %344, %340
  %345 = phi ptr [ %342, %340 ], [ %352, %344 ]
  %346 = load i8, ptr %345, align 1, !tbaa !62
  %347 = zext i8 %346 to i64
  %348 = getelementptr inbounds i16, ptr %343, i64 %347
  %349 = load i16, ptr %348, align 2, !tbaa !97
  %350 = and i16 %349, 8192
  %351 = icmp eq i16 %350, 0
  %352 = getelementptr inbounds i8, ptr %345, i64 1
  br i1 %351, label %224, label %344, !llvm.loop !105

353:                                              ; preds = %225
  %354 = getelementptr inbounds i8, ptr %227, i64 1
  store i8 0, ptr %227, align 1, !tbaa !62
  %355 = load i8, ptr %354, align 1, !tbaa !62
  switch i8 %355, label %359 [
    i8 0, label %356
    i8 62, label %356
  ]

356:                                              ; preds = %353, %353
  %357 = icmp eq i8 %355, 0
  %358 = select i1 %357, i1 %152, i1 false
  br i1 %358, label %359, label %387

359:                                              ; preds = %353, %356
  %360 = icmp eq i64 %228, 0
  %361 = icmp eq ptr %226, @sentinel
  %362 = or i1 %361, %360
  br i1 %362, label %384, label %363

363:                                              ; preds = %359
  %364 = load ptr, ptr %226, align 8, !tbaa !52
  %365 = icmp eq ptr %364, null
  br i1 %365, label %382, label %366

366:                                              ; preds = %363, %377
  %367 = phi ptr [ %380, %377 ], [ %364, %363 ]
  %368 = phi ptr [ %379, %377 ], [ %226, %363 ]
  %369 = phi i64 [ %378, %377 ], [ 0, %363 ]
  %370 = tail call ptr @DestroyString(ptr noundef nonnull %367) #20
  store ptr %370, ptr %368, align 8, !tbaa !52
  %371 = or disjoint i64 %369, 1
  %372 = getelementptr inbounds ptr, ptr %226, i64 %371
  %373 = load ptr, ptr %372, align 8, !tbaa !52
  %374 = icmp eq ptr %373, null
  br i1 %374, label %377, label %375

375:                                              ; preds = %366
  %376 = tail call ptr @DestroyString(ptr noundef nonnull %373) #20
  store ptr %376, ptr %372, align 8, !tbaa !52
  br label %377

377:                                              ; preds = %375, %366
  %378 = add nuw nsw i64 %369, 2
  %379 = getelementptr inbounds ptr, ptr %226, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !52
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %366, !llvm.loop !78

382:                                              ; preds = %377, %363
  %383 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %226) #20
  br label %384

384:                                              ; preds = %382, %359
  %385 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2099, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.22) #20
  %386 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  br label %1057

387:                                              ; preds = %356
  %388 = load ptr, ptr %148, align 8, !tbaa !99
  %389 = load ptr, ptr %388, align 8, !tbaa !34
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %393

391:                                              ; preds = %387
  %392 = tail call ptr @ConstantString(ptr noundef nonnull %163) #20
  store ptr %392, ptr %388, align 8, !tbaa !34
  br label %409

393:                                              ; preds = %387
  %394 = getelementptr inbounds %struct._XMLTreeInfo, ptr %388, i64 0, i32 2
  %395 = load ptr, ptr %394, align 8, !tbaa !42
  %396 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %395) #21
  %397 = tail call dereferenceable_or_null(96) ptr @AcquireMagickMemory(i64 noundef 96) #19
  %398 = icmp eq ptr %397, null
  br i1 %398, label %409, label %399

399:                                              ; preds = %393
  %400 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %397, i32 noundef 0, i64 noundef 96) #20
  %401 = tail call ptr @ConstantString(ptr noundef nonnull %163) #20
  store ptr %401, ptr %397, align 8, !tbaa !34
  %402 = getelementptr inbounds %struct._XMLTreeInfo, ptr %397, i64 0, i32 1
  store ptr @sentinel, ptr %402, align 8, !tbaa !41
  %403 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20
  %404 = getelementptr inbounds %struct._XMLTreeInfo, ptr %397, i64 0, i32 2
  store ptr %403, ptr %404, align 8, !tbaa !42
  %405 = tail call i32 @IsEventLogging() #20
  %406 = getelementptr inbounds %struct._XMLTreeInfo, ptr %397, i64 0, i32 9
  store i32 %405, ptr %406, align 8, !tbaa !43
  %407 = getelementptr inbounds %struct._XMLTreeInfo, ptr %397, i64 0, i32 11
  store i64 2880220587, ptr %407, align 8, !tbaa !44
  %408 = tail call ptr @InsertTagIntoXMLTree(ptr noundef nonnull %388, ptr noundef nonnull %397, i64 noundef %396)
  br label %409

409:                                              ; preds = %399, %393, %391
  %410 = phi ptr [ %388, %391 ], [ %397, %399 ], [ null, %393 ]
  %411 = getelementptr inbounds %struct._XMLTreeInfo, ptr %410, i64 0, i32 1
  store ptr %226, ptr %411, align 8, !tbaa !41
  store ptr %410, ptr %148, align 8, !tbaa !99
  %412 = icmp eq ptr %410, null
  br i1 %412, label %419, label %413

413:                                              ; preds = %409
  %414 = load ptr, ptr %410, align 8, !tbaa !34
  %415 = icmp eq ptr %414, null
  br i1 %415, label %419, label %416

416:                                              ; preds = %413
  %417 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(1) %414) #21
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %421, label %419

419:                                              ; preds = %416, %413, %409
  %420 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1586, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.52, ptr noundef nonnull %163) #20
  br label %1008

421:                                              ; preds = %416
  %422 = getelementptr inbounds %struct._XMLTreeInfo, ptr %410, i64 0, i32 4
  %423 = load ptr, ptr %422, align 8, !tbaa !46
  store ptr %423, ptr %148, align 8, !tbaa !99
  br label %1008

424:                                              ; preds = %225
  %425 = icmp eq i8 %229, 0
  %426 = select i1 %425, i1 %151, i1 false
  br i1 %426, label %427, label %452

427:                                              ; preds = %225, %424
  store i8 0, ptr %227, align 1, !tbaa !62
  %428 = load ptr, ptr %148, align 8, !tbaa !99
  %429 = load ptr, ptr %428, align 8, !tbaa !34
  %430 = icmp eq ptr %429, null
  br i1 %430, label %431, label %433

431:                                              ; preds = %427
  %432 = tail call ptr @ConstantString(ptr noundef nonnull %163) #20
  store ptr %432, ptr %428, align 8, !tbaa !34
  br label %449

433:                                              ; preds = %427
  %434 = getelementptr inbounds %struct._XMLTreeInfo, ptr %428, i64 0, i32 2
  %435 = load ptr, ptr %434, align 8, !tbaa !42
  %436 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %435) #21
  %437 = tail call dereferenceable_or_null(96) ptr @AcquireMagickMemory(i64 noundef 96) #19
  %438 = icmp eq ptr %437, null
  br i1 %438, label %449, label %439

439:                                              ; preds = %433
  %440 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %437, i32 noundef 0, i64 noundef 96) #20
  %441 = tail call ptr @ConstantString(ptr noundef nonnull %163) #20
  store ptr %441, ptr %437, align 8, !tbaa !34
  %442 = getelementptr inbounds %struct._XMLTreeInfo, ptr %437, i64 0, i32 1
  store ptr @sentinel, ptr %442, align 8, !tbaa !41
  %443 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20
  %444 = getelementptr inbounds %struct._XMLTreeInfo, ptr %437, i64 0, i32 2
  store ptr %443, ptr %444, align 8, !tbaa !42
  %445 = tail call i32 @IsEventLogging() #20
  %446 = getelementptr inbounds %struct._XMLTreeInfo, ptr %437, i64 0, i32 9
  store i32 %445, ptr %446, align 8, !tbaa !43
  %447 = getelementptr inbounds %struct._XMLTreeInfo, ptr %437, i64 0, i32 11
  store i64 2880220587, ptr %447, align 8, !tbaa !44
  %448 = tail call ptr @InsertTagIntoXMLTree(ptr noundef nonnull %428, ptr noundef nonnull %437, i64 noundef %436)
  br label %449

449:                                              ; preds = %439, %433, %431
  %450 = phi ptr [ %428, %431 ], [ %437, %439 ], [ null, %433 ]
  %451 = getelementptr inbounds %struct._XMLTreeInfo, ptr %450, i64 0, i32 1
  store ptr %226, ptr %451, align 8, !tbaa !41
  store ptr %450, ptr %148, align 8, !tbaa !99
  store i8 %229, ptr %227, align 1, !tbaa !62
  br label %1008

452:                                              ; preds = %424
  %453 = icmp eq i64 %228, 0
  %454 = icmp eq ptr %226, @sentinel
  %455 = or i1 %454, %453
  br i1 %455, label %477, label %456

456:                                              ; preds = %452
  %457 = load ptr, ptr %226, align 8, !tbaa !52
  %458 = icmp eq ptr %457, null
  br i1 %458, label %475, label %459

459:                                              ; preds = %456, %470
  %460 = phi ptr [ %473, %470 ], [ %457, %456 ]
  %461 = phi ptr [ %472, %470 ], [ %226, %456 ]
  %462 = phi i64 [ %471, %470 ], [ 0, %456 ]
  %463 = tail call ptr @DestroyString(ptr noundef nonnull %460) #20
  store ptr %463, ptr %461, align 8, !tbaa !52
  %464 = or disjoint i64 %462, 1
  %465 = getelementptr inbounds ptr, ptr %226, i64 %464
  %466 = load ptr, ptr %465, align 8, !tbaa !52
  %467 = icmp eq ptr %466, null
  br i1 %467, label %470, label %468

468:                                              ; preds = %459
  %469 = tail call ptr @DestroyString(ptr noundef nonnull %466) #20
  store ptr %469, ptr %465, align 8, !tbaa !52
  br label %470

470:                                              ; preds = %468, %459
  %471 = add nuw nsw i64 %462, 2
  %472 = getelementptr inbounds ptr, ptr %226, i64 %471
  %473 = load ptr, ptr %472, align 8, !tbaa !52
  %474 = icmp eq ptr %473, null
  br i1 %474, label %475, label %459, !llvm.loop !78

475:                                              ; preds = %470, %456
  %476 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %226) #20
  br label %477

477:                                              ; preds = %475, %452
  %478 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2120, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.22) #20
  %479 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  br label %1057

480:                                              ; preds = %173
  %481 = icmp eq i8 %164, 47
  br i1 %481, label %482, label %522

482:                                              ; preds = %480
  %483 = getelementptr inbounds i8, ptr %162, i64 2
  %484 = tail call i64 @strcspn(ptr noundef nonnull %483, ptr noundef nonnull @.str.23) #21
  %485 = getelementptr i8, ptr %163, i64 %484
  %486 = getelementptr i8, ptr %485, i64 1
  %487 = load i8, ptr %486, align 1, !tbaa !62
  %488 = icmp eq i8 %487, 0
  %489 = select i1 %488, i1 %146, i1 false
  br i1 %489, label %490, label %493

490:                                              ; preds = %482
  %491 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2138, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.22) #20
  %492 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  br label %1057

493:                                              ; preds = %482
  store i8 0, ptr %486, align 1, !tbaa !62
  %494 = load ptr, ptr %147, align 8, !tbaa !99
  %495 = icmp eq ptr %494, null
  br i1 %495, label %502, label %496

496:                                              ; preds = %493
  %497 = load ptr, ptr %494, align 8, !tbaa !34
  %498 = icmp eq ptr %497, null
  br i1 %498, label %502, label %499

499:                                              ; preds = %496
  %500 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %483, ptr noundef nonnull dereferenceable(1) %497) #21
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %504, label %502

502:                                              ; preds = %499, %496, %493
  %503 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1586, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.52, ptr noundef nonnull %483) #20
  br label %507

504:                                              ; preds = %499
  %505 = getelementptr inbounds %struct._XMLTreeInfo, ptr %494, i64 0, i32 4
  %506 = load ptr, ptr %505, align 8, !tbaa !46
  store ptr %506, ptr %147, align 8, !tbaa !99
  br label %507

507:                                              ; preds = %502, %504
  %508 = phi ptr [ %15, %502 ], [ null, %504 ]
  %509 = icmp eq ptr %508, null
  br i1 %509, label %512, label %510

510:                                              ; preds = %507
  %511 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  br label %1057

512:                                              ; preds = %507
  store i8 %487, ptr %486, align 1, !tbaa !62
  %513 = load ptr, ptr %137, align 8, !tbaa !52
  %514 = zext i8 %487 to i64
  %515 = getelementptr inbounds i16, ptr %513, i64 %514
  %516 = load i16, ptr %515, align 2, !tbaa !97
  %517 = and i16 %516, 8192
  %518 = icmp eq i16 %517, 0
  br i1 %518, label %1008, label %519

519:                                              ; preds = %512
  %520 = tail call i64 @strspn(ptr noundef nonnull %486, ptr noundef nonnull @.str.24) #21
  %521 = getelementptr inbounds i8, ptr %486, i64 %520
  br label %1008

522:                                              ; preds = %480
  %523 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(4) @.str.25, i64 noundef 3) #21
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %538

525:                                              ; preds = %522
  %526 = getelementptr inbounds i8, ptr %162, i64 4
  %527 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %526, ptr noundef nonnull dereferenceable(1) @.str.26) #21
  %528 = icmp eq ptr %527, null
  br i1 %528, label %535, label %529

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, ptr %527, i64 2
  %531 = load i8, ptr %530, align 1, !tbaa !62
  switch i8 %531, label %535 [
    i8 62, label %532
    i8 0, label %532
  ]

532:                                              ; preds = %529, %529
  %533 = icmp eq i8 %531, 0
  %534 = select i1 %533, i1 %145, i1 false
  br i1 %534, label %535, label %1008

535:                                              ; preds = %529, %532, %525
  %536 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2163, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.27) #20
  %537 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  br label %1057

538:                                              ; preds = %522
  %539 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(9) @.str.28, i64 noundef 8) #21
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %574

541:                                              ; preds = %538
  %542 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(1) @.str.29) #21
  %543 = icmp eq ptr %542, null
  br i1 %543, label %571, label %544

544:                                              ; preds = %541
  %545 = getelementptr inbounds i8, ptr %542, i64 2
  %546 = getelementptr inbounds i8, ptr %162, i64 9
  %547 = ptrtoint ptr %545 to i64
  %548 = ptrtoint ptr %163 to i64
  %549 = sub i64 %547, %548
  %550 = add nsw i64 %549, -10
  %551 = load ptr, ptr %143, align 8, !tbaa !99
  %552 = icmp eq ptr %551, null
  br i1 %552, label %1008, label %553

553:                                              ; preds = %544
  %554 = load ptr, ptr %551, align 8, !tbaa !34
  %555 = icmp eq ptr %554, null
  %556 = icmp eq i64 %550, 0
  %557 = or i1 %556, %555
  br i1 %557, label %1008, label %558

558:                                              ; preds = %553
  %559 = getelementptr inbounds i8, ptr %546, i64 %550
  store i8 0, ptr %559, align 1, !tbaa !62
  %560 = load ptr, ptr %144, align 8, !tbaa !69
  %561 = tail call fastcc ptr @ParseEntities(ptr noundef nonnull %546, ptr noundef %560, i32 noundef 99)
  %562 = getelementptr inbounds %struct._XMLTreeInfo, ptr %551, i64 0, i32 2
  %563 = load ptr, ptr %562, align 8, !tbaa !42
  %564 = load i8, ptr %563, align 1, !tbaa !62
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %569, label %566

566:                                              ; preds = %558
  %567 = tail call i32 @ConcatenateString(ptr noundef nonnull %562, ptr noundef %561) #20
  %568 = tail call ptr @DestroyString(ptr noundef %561) #20
  br label %1008

569:                                              ; preds = %558
  %570 = tail call ptr @DestroyString(ptr noundef nonnull %563) #20
  store ptr %561, ptr %562, align 8, !tbaa !42
  br label %1008

571:                                              ; preds = %541
  %572 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2183, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.30) #20
  %573 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  br label %1057

574:                                              ; preds = %538
  %575 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(9) @.str.31, i64 noundef 8) #21
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %980

577:                                              ; preds = %574
  %578 = load i8, ptr %163, align 1, !tbaa !62
  %579 = icmp eq i8 %578, 0
  br i1 %579, label %608, label %580

580:                                              ; preds = %577, %599
  %581 = phi i1 [ %607, %599 ], [ %579, %577 ]
  %582 = phi i8 [ %604, %599 ], [ %578, %577 ]
  %583 = phi i64 [ %606, %599 ], [ 0, %577 ]
  %584 = phi ptr [ %603, %599 ], [ %163, %577 ]
  %585 = icmp ne i64 %583, 0
  %586 = icmp eq i8 %582, 62
  %587 = or i1 %585, %586
  br i1 %587, label %588, label %599

588:                                              ; preds = %580
  %589 = icmp eq i64 %583, 0
  br i1 %589, label %608, label %590

590:                                              ; preds = %588
  %591 = icmp eq i8 %582, 93
  br i1 %591, label %592, label %599

592:                                              ; preds = %590
  %593 = getelementptr inbounds i8, ptr %584, i64 1
  %594 = tail call i64 @strspn(ptr noundef nonnull %593, ptr noundef nonnull @.str.24) #21
  %595 = getelementptr inbounds i8, ptr %584, i64 %594
  %596 = getelementptr inbounds i8, ptr %595, i64 1
  %597 = load i8, ptr %596, align 1, !tbaa !62
  %598 = icmp eq i8 %597, 62
  br i1 %598, label %608, label %599

599:                                              ; preds = %580, %590, %592
  %600 = getelementptr inbounds i8, ptr %584, i64 1
  %601 = tail call i64 @strcspn(ptr noundef nonnull %600, ptr noundef nonnull @.str.32) #21
  %602 = add i64 %601, 1
  %603 = getelementptr inbounds i8, ptr %584, i64 %602
  %604 = load i8, ptr %603, align 1, !tbaa !62
  %605 = icmp eq i8 %604, 91
  %606 = select i1 %605, i64 1, i64 %583
  %607 = icmp eq i8 %604, 0
  br i1 %607, label %608, label %580, !llvm.loop !106

608:                                              ; preds = %592, %588, %599, %577
  %609 = phi ptr [ %163, %577 ], [ %584, %592 ], [ %584, %588 ], [ %603, %599 ]
  %610 = phi i64 [ 0, %577 ], [ 1, %592 ], [ %583, %588 ], [ %606, %599 ]
  %611 = phi i1 [ %579, %577 ], [ %581, %592 ], [ %581, %588 ], [ %607, %599 ]
  %612 = select i1 %611, i1 %139, i1 false
  br i1 %612, label %613, label %616

613:                                              ; preds = %608
  %614 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2202, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.33) #20
  %615 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  br label %1057

616:                                              ; preds = %608
  %617 = icmp eq i64 %610, 0
  br i1 %617, label %621, label %618

618:                                              ; preds = %616
  %619 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %163, i32 noundef 91) #21
  %620 = getelementptr inbounds i8, ptr %619, i64 1
  br label %621

621:                                              ; preds = %618, %616
  %622 = phi ptr [ %620, %618 ], [ %163, %616 ]
  br i1 %617, label %1008, label %623

623:                                              ; preds = %621
  %624 = tail call dereferenceable_or_null(8) ptr @AcquireMagickMemory(i64 noundef 8) #19
  %625 = icmp eq ptr %624, null
  br i1 %625, label %626, label %633

626:                                              ; preds = %623
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #20
  call void @GetExceptionInfo(ptr noundef nonnull %3) #20
  %627 = tail call ptr @__errno_location() #24
  %628 = load i32, ptr %627, align 4, !tbaa !80
  %629 = call ptr @GetExceptionMessage(i32 noundef %628) #20
  %630 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1718, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %629) #20
  %631 = call ptr @DestroyString(ptr noundef %629) #20
  call void @CatchException(ptr noundef nonnull %3) #20
  %632 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef -299) #25
  unreachable

633:                                              ; preds = %623
  %634 = ptrtoint ptr %609 to i64
  %635 = ptrtoint ptr %622 to i64
  %636 = sub i64 %634, %635
  %637 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %624, ptr noundef nonnull @sentinel, i64 noundef 8) #20
  %638 = getelementptr inbounds i8, ptr %622, i64 %636
  store i8 0, ptr %638, align 1, !tbaa !62
  br label %639

639:                                              ; preds = %969, %633
  %640 = phi ptr [ %624, %633 ], [ %970, %969 ]
  %641 = phi ptr [ null, %633 ], [ %971, %969 ]
  %642 = phi ptr [ %622, %633 ], [ %972, %969 ]
  br label %643

643:                                              ; preds = %671, %639
  %644 = phi ptr [ %641, %639 ], [ %663, %671 ]
  %645 = phi ptr [ %642, %639 ], [ %672, %671 ]
  br label %646

646:                                              ; preds = %737, %643
  %647 = phi ptr [ %739, %737 ], [ %645, %643 ]
  %648 = icmp eq ptr %647, null
  br i1 %648, label %973, label %649

649:                                              ; preds = %646, %652
  %650 = phi ptr [ %653, %652 ], [ %647, %646 ]
  %651 = load i8, ptr %650, align 1, !tbaa !62
  switch i8 %651, label %652 [
    i8 0, label %973
    i8 37, label %654
    i8 60, label %654
  ]

652:                                              ; preds = %649
  %653 = getelementptr inbounds i8, ptr %650, i64 1
  br label %649, !llvm.loop !107

654:                                              ; preds = %649, %649
  %655 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %650, ptr noundef nonnull dereferenceable(9) @.str.53, i64 noundef 8) #21
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %725

657:                                              ; preds = %654
  %658 = getelementptr inbounds i8, ptr %650, i64 8
  %659 = tail call i64 @strspn(ptr noundef nonnull %658, ptr noundef nonnull @.str.24) #21
  %660 = add i64 %659, 8
  %661 = getelementptr inbounds i8, ptr %650, i64 %660
  %662 = tail call i64 @strspn(ptr noundef nonnull %661, ptr noundef nonnull @.str.54) #21
  %663 = getelementptr inbounds i8, ptr %661, i64 %662
  %664 = tail call i64 @strcspn(ptr noundef nonnull %663, ptr noundef nonnull @.str.24) #21
  %665 = getelementptr inbounds i8, ptr %663, i64 %664
  store i8 59, ptr %665, align 1, !tbaa !62
  %666 = getelementptr inbounds i8, ptr %665, i64 1
  %667 = tail call i64 @strspn(ptr noundef nonnull %666, ptr noundef nonnull @.str.24) #21
  %668 = getelementptr inbounds i8, ptr %665, i64 %667
  %669 = getelementptr inbounds i8, ptr %668, i64 1
  %670 = load i8, ptr %669, align 1, !tbaa !62
  switch i8 %670, label %671 [
    i8 39, label %673
    i8 34, label %673
  ]

671:                                              ; preds = %657
  %672 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %665, i32 noundef 62) #21
  br label %643, !llvm.loop !108

673:                                              ; preds = %657, %657
  %674 = getelementptr inbounds i8, ptr %668, i64 2
  %675 = sext i8 %670 to i32
  %676 = load i8, ptr %661, align 1, !tbaa !62
  %677 = icmp eq i8 %676, 37
  br i1 %677, label %680, label %678

678:                                              ; preds = %673
  %679 = load ptr, ptr %142, align 8, !tbaa !69
  br label %680

680:                                              ; preds = %678, %673
  %681 = phi ptr [ %679, %678 ], [ %640, %673 ]
  br label %682

682:                                              ; preds = %682, %680
  %683 = phi i64 [ 0, %680 ], [ %687, %682 ]
  %684 = getelementptr inbounds ptr, ptr %681, i64 %683
  %685 = load ptr, ptr %684, align 8, !tbaa !52
  %686 = icmp eq ptr %685, null
  %687 = add nuw nsw i64 %683, 1
  br i1 %686, label %688, label %682, !llvm.loop !109

688:                                              ; preds = %682
  %689 = add nuw nsw i64 %683, 3
  %690 = tail call ptr @ResizeQuantumMemory(ptr noundef %681, i64 noundef %689, i64 noundef 8) #23
  %691 = icmp eq ptr %690, null
  br i1 %691, label %692, label %699

692:                                              ; preds = %688
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #20
  call void @GetExceptionInfo(ptr noundef nonnull %4) #20
  %693 = tail call ptr @__errno_location() #24
  %694 = load i32, ptr %693, align 4, !tbaa !80
  %695 = call ptr @GetExceptionMessage(i32 noundef %694) #20
  %696 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1752, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %695) #20
  %697 = call ptr @DestroyString(ptr noundef %695) #20
  call void @CatchException(ptr noundef nonnull %4) #20
  %698 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #25
  unreachable

699:                                              ; preds = %688
  %700 = load i8, ptr %661, align 1, !tbaa !62
  %701 = icmp eq i8 %700, 37
  br i1 %701, label %703, label %702

702:                                              ; preds = %699
  store ptr %690, ptr %142, align 8, !tbaa !69
  br label %703

703:                                              ; preds = %702, %699
  %704 = phi ptr [ %640, %702 ], [ %690, %699 ]
  store i8 0, ptr %666, align 1, !tbaa !62
  %705 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %674, i32 noundef %675) #21
  %706 = icmp eq ptr %705, null
  br i1 %706, label %709, label %707

707:                                              ; preds = %703
  store i8 0, ptr %705, align 1, !tbaa !62
  %708 = getelementptr inbounds i8, ptr %705, i64 1
  br label %709

709:                                              ; preds = %707, %703
  %710 = phi ptr [ %708, %707 ], [ null, %703 ]
  %711 = tail call fastcc ptr @ParseEntities(ptr noundef nonnull %674, ptr noundef %704, i32 noundef 37)
  %712 = getelementptr ptr, ptr %690, i64 %683
  %713 = getelementptr ptr, ptr %712, i64 1
  store ptr %711, ptr %713, align 8, !tbaa !52
  %714 = getelementptr ptr, ptr %712, i64 2
  store ptr null, ptr %714, align 8, !tbaa !52
  %715 = tail call fastcc i32 @ValidateEntities(ptr noundef nonnull %663, ptr noundef %711, ptr noundef nonnull %690), !range !110
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %718, label %717

717:                                              ; preds = %709
  store ptr %663, ptr %712, align 8, !tbaa !52
  br label %969

718:                                              ; preds = %709
  %719 = icmp eq ptr %711, %674
  br i1 %719, label %723, label %720

720:                                              ; preds = %718
  %721 = getelementptr ptr, ptr %712, i64 1
  %722 = tail call ptr @DestroyString(ptr noundef %711) #20
  store ptr %722, ptr %721, align 8, !tbaa !52
  br label %723

723:                                              ; preds = %720, %718
  %724 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1773, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.55, ptr noundef nonnull %663) #20
  br label %976

725:                                              ; preds = %654
  %726 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %650, ptr noundef nonnull dereferenceable(10) @.str.56, i64 noundef 9) #21
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %728, label %941

728:                                              ; preds = %725
  %729 = getelementptr inbounds i8, ptr %650, i64 9
  %730 = tail call i64 @strspn(ptr noundef nonnull %729, ptr noundef nonnull @.str.24) #21
  %731 = getelementptr inbounds i8, ptr %650, i64 %730
  %732 = getelementptr inbounds i8, ptr %731, i64 9
  %733 = load i8, ptr %732, align 1, !tbaa !62
  %734 = icmp eq i8 %733, 0
  br i1 %734, label %735, label %737

735:                                              ; preds = %728
  %736 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1789, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.57) #20
  br label %976

737:                                              ; preds = %728
  %738 = tail call i64 @strcspn(ptr noundef nonnull %732, ptr noundef nonnull @.str.23) #21
  %739 = getelementptr inbounds i8, ptr %732, i64 %738
  %740 = load i8, ptr %739, align 1, !tbaa !62
  %741 = icmp eq i8 %740, 62
  br i1 %741, label %646, label %742, !llvm.loop !108

742:                                              ; preds = %737
  store i8 0, ptr %739, align 1, !tbaa !62
  %743 = load ptr, ptr %141, align 8, !tbaa !72
  %744 = icmp ne ptr %644, null
  %745 = load ptr, ptr %743, align 8, !tbaa !52
  %746 = icmp ne ptr %745, null
  %747 = select i1 %746, i1 %744, i1 false
  br i1 %747, label %748, label %760

748:                                              ; preds = %742, %754
  %749 = phi ptr [ %757, %754 ], [ %745, %742 ]
  %750 = phi i64 [ %755, %754 ], [ 0, %742 ]
  %751 = load ptr, ptr %749, align 8, !tbaa !52
  %752 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %644, ptr noundef nonnull dereferenceable(1) %751) #21
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %760, label %754

754:                                              ; preds = %748
  %755 = add nuw nsw i64 %750, 1
  %756 = getelementptr inbounds ptr, ptr %743, i64 %755
  %757 = load ptr, ptr %756, align 8, !tbaa !52
  %758 = icmp ne ptr %757, null
  %759 = select i1 %758, i1 %744, i1 false
  br i1 %759, label %748, label %760, !llvm.loop !111

760:                                              ; preds = %754, %748, %742
  %761 = phi i64 [ 0, %742 ], [ %750, %748 ], [ %755, %754 ]
  %762 = icmp eq i64 %761, 0
  %763 = add nuw nsw i64 %761, 2
  br label %764

764:                                              ; preds = %939, %760
  %765 = phi ptr [ %739, %760 ], [ %940, %939 ]
  %766 = getelementptr inbounds i8, ptr %765, i64 1
  %767 = tail call i64 @strspn(ptr noundef nonnull %766, ptr noundef nonnull @.str.24) #21
  %768 = getelementptr inbounds i8, ptr %765, i64 %767
  %769 = getelementptr inbounds i8, ptr %768, i64 1
  %770 = load i8, ptr %769, align 1, !tbaa !62
  switch i8 %770, label %771 [
    i8 0, label %969
    i8 62, label %969
  ], !llvm.loop !108

771:                                              ; preds = %764
  %772 = tail call i64 @strcspn(ptr noundef nonnull %769, ptr noundef nonnull @.str.24) #21
  %773 = getelementptr inbounds i8, ptr %769, i64 %772
  %774 = load i8, ptr %773, align 1, !tbaa !62
  %775 = icmp eq i8 %774, 0
  br i1 %775, label %786, label %776

776:                                              ; preds = %771
  store i8 0, ptr %773, align 1, !tbaa !62
  %777 = getelementptr inbounds i8, ptr %773, i64 1
  %778 = tail call i64 @strspn(ptr noundef nonnull %777, ptr noundef nonnull @.str.24) #21
  %779 = getelementptr i8, ptr %773, i64 %778
  %780 = getelementptr i8, ptr %779, i64 1
  %781 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %780, ptr noundef nonnull dereferenceable(6) @.str.59, i64 noundef 5) #21
  %782 = icmp eq i32 %781, 0
  %783 = select i1 %782, ptr @.str.49, ptr @.str.60
  %784 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %780, ptr noundef nonnull dereferenceable(9) @.str.61, i64 noundef 8) #21
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %788, label %793

786:                                              ; preds = %771
  %787 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1812, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.58) #20
  br label %976

788:                                              ; preds = %776
  %789 = getelementptr i8, ptr %779, i64 9
  %790 = tail call i64 @strspn(ptr noundef %789, ptr noundef nonnull @.str.24) #21
  %791 = getelementptr i8, ptr %780, i64 %790
  %792 = getelementptr i8, ptr %791, i64 8
  br label %793

793:                                              ; preds = %788, %776
  %794 = phi ptr [ %792, %788 ], [ %780, %776 ]
  %795 = load i8, ptr %794, align 1, !tbaa !62
  %796 = icmp eq i8 %795, 40
  br i1 %796, label %797, label %799

797:                                              ; preds = %793
  %798 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %794, i32 noundef 41) #21
  br label %802

799:                                              ; preds = %793
  %800 = tail call i64 @strcspn(ptr noundef nonnull %794, ptr noundef nonnull @.str.24) #21
  %801 = getelementptr inbounds i8, ptr %794, i64 %800
  br label %802

802:                                              ; preds = %799, %797
  %803 = phi ptr [ %798, %797 ], [ %801, %799 ]
  %804 = icmp eq ptr %803, null
  br i1 %804, label %805, label %807

805:                                              ; preds = %802
  %806 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1826, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.58) #20
  br label %976

807:                                              ; preds = %802
  %808 = tail call i64 @strspn(ptr noundef nonnull %803, ptr noundef nonnull @.str.62) #21
  %809 = getelementptr inbounds i8, ptr %803, i64 %808
  %810 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(7) @.str.63, i64 noundef 6) #21
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %812, label %817

812:                                              ; preds = %807
  %813 = getelementptr inbounds i8, ptr %809, i64 6
  %814 = tail call i64 @strspn(ptr noundef nonnull %813, ptr noundef nonnull @.str.24) #21
  %815 = getelementptr i8, ptr %809, i64 %814
  %816 = getelementptr i8, ptr %815, i64 6
  br label %817

817:                                              ; preds = %812, %807
  %818 = phi ptr [ %816, %812 ], [ %809, %807 ]
  %819 = load i8, ptr %818, align 1, !tbaa !62
  switch i8 %819, label %832 [
    i8 35, label %820
    i8 34, label %826
    i8 39, label %826
  ]

820:                                              ; preds = %817
  %821 = tail call i64 @strcspn(ptr noundef nonnull %818, ptr noundef nonnull @.str.23) #21
  %822 = add i64 %821, -1
  %823 = getelementptr inbounds i8, ptr %818, i64 %822
  %824 = load i8, ptr %783, align 1, !tbaa !62
  %825 = icmp eq i8 %824, 32
  br i1 %825, label %939, label %834

826:                                              ; preds = %817, %817
  %827 = getelementptr inbounds i8, ptr %818, i64 1
  %828 = sext i8 %819 to i32
  %829 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %827, i32 noundef %828) #21
  %830 = icmp eq ptr %829, null
  br i1 %830, label %832, label %831

831:                                              ; preds = %826
  store i8 0, ptr %829, align 1, !tbaa !62
  br label %834

832:                                              ; preds = %826, %817
  %833 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1848, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.58) #20
  br label %976

834:                                              ; preds = %831, %820
  %835 = phi ptr [ %827, %831 ], [ null, %820 ]
  %836 = phi ptr [ %829, %831 ], [ %823, %820 ]
  %837 = load ptr, ptr %141, align 8, !tbaa !72
  %838 = getelementptr inbounds ptr, ptr %837, i64 %761
  %839 = load ptr, ptr %838, align 8, !tbaa !52
  %840 = icmp eq ptr %839, null
  br i1 %840, label %841, label %883

841:                                              ; preds = %834
  br i1 %762, label %842, label %844

842:                                              ; preds = %841
  %843 = tail call dereferenceable_or_null(16) ptr @AcquireQuantumMemory(i64 noundef 2, i64 noundef 8) #22
  br label %846

844:                                              ; preds = %841
  %845 = tail call ptr @ResizeQuantumMemory(ptr noundef %837, i64 noundef %763, i64 noundef 8) #23
  br label %846

846:                                              ; preds = %844, %842
  %847 = phi ptr [ %845, %844 ], [ %843, %842 ]
  store ptr %847, ptr %141, align 8, !tbaa !72
  %848 = icmp eq ptr %847, null
  br i1 %848, label %849, label %856

849:                                              ; preds = %846
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #20
  call void @GetExceptionInfo(ptr noundef nonnull %5) #20
  %850 = tail call ptr @__errno_location() #24
  %851 = load i32, ptr %850, align 4, !tbaa !80
  %852 = call ptr @GetExceptionMessage(i32 noundef %851) #20
  %853 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1868, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %852) #20
  %854 = call ptr @DestroyString(ptr noundef %852) #20
  call void @CatchException(ptr noundef nonnull %5) #20
  %855 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #25
  unreachable

856:                                              ; preds = %846
  %857 = tail call dereferenceable_or_null(16) ptr @AcquireQuantumMemory(i64 noundef 2, i64 noundef 8) #22
  %858 = load ptr, ptr %141, align 8, !tbaa !72
  %859 = getelementptr inbounds ptr, ptr %858, i64 %761
  store ptr %857, ptr %859, align 8, !tbaa !52
  %860 = load ptr, ptr %141, align 8, !tbaa !72
  %861 = getelementptr inbounds ptr, ptr %860, i64 %761
  %862 = load ptr, ptr %861, align 8, !tbaa !52
  %863 = icmp eq ptr %862, null
  br i1 %863, label %864, label %871

864:                                              ; preds = %856
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #20
  call void @GetExceptionInfo(ptr noundef nonnull %6) #20
  %865 = tail call ptr @__errno_location() #24
  %866 = load i32, ptr %865, align 4, !tbaa !80
  %867 = call ptr @GetExceptionMessage(i32 noundef %866) #20
  %868 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1873, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %867) #20
  %869 = call ptr @DestroyString(ptr noundef %867) #20
  call void @CatchException(ptr noundef nonnull %6) #20
  %870 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #25
  unreachable

871:                                              ; preds = %856
  %872 = tail call ptr @ConstantString(ptr noundef nonnull %732) #20
  %873 = load ptr, ptr %141, align 8, !tbaa !72
  %874 = getelementptr inbounds ptr, ptr %873, i64 %761
  %875 = load ptr, ptr %874, align 8, !tbaa !52
  store ptr %872, ptr %875, align 8, !tbaa !52
  %876 = load ptr, ptr %141, align 8, !tbaa !72
  %877 = getelementptr inbounds ptr, ptr %876, i64 %761
  %878 = load ptr, ptr %877, align 8, !tbaa !52
  %879 = getelementptr inbounds ptr, ptr %878, i64 1
  store ptr null, ptr %879, align 8, !tbaa !52
  %880 = load ptr, ptr %141, align 8, !tbaa !72
  %881 = getelementptr ptr, ptr %880, i64 %761
  %882 = getelementptr ptr, ptr %881, i64 1
  store ptr null, ptr %882, align 8, !tbaa !52
  br label %883

883:                                              ; preds = %871, %834
  %884 = load ptr, ptr %141, align 8, !tbaa !72
  %885 = getelementptr inbounds ptr, ptr %884, i64 %761
  %886 = load ptr, ptr %885, align 8, !tbaa !52
  br label %887

887:                                              ; preds = %887, %883
  %888 = phi i64 [ 1, %883 ], [ %892, %887 ]
  %889 = getelementptr inbounds ptr, ptr %886, i64 %888
  %890 = load ptr, ptr %889, align 8, !tbaa !52
  %891 = icmp eq ptr %890, null
  %892 = add nuw nsw i64 %888, 3
  br i1 %891, label %893, label %887, !llvm.loop !112

893:                                              ; preds = %887
  %894 = add nuw nsw i64 %888, 4
  %895 = tail call ptr @ResizeQuantumMemory(ptr noundef %886, i64 noundef %894, i64 noundef 8) #23
  %896 = load ptr, ptr %141, align 8, !tbaa !72
  %897 = getelementptr inbounds ptr, ptr %896, i64 %761
  store ptr %895, ptr %897, align 8, !tbaa !52
  %898 = load ptr, ptr %141, align 8, !tbaa !72
  %899 = getelementptr inbounds ptr, ptr %898, i64 %761
  %900 = load ptr, ptr %899, align 8, !tbaa !52
  %901 = icmp eq ptr %900, null
  br i1 %901, label %902, label %909

902:                                              ; preds = %893
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #20
  call void @GetExceptionInfo(ptr noundef nonnull %7) #20
  %903 = tail call ptr @__errno_location() #24
  %904 = load i32, ptr %903, align 4, !tbaa !80
  %905 = call ptr @GetExceptionMessage(i32 noundef %904) #20
  %906 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1883, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %905) #20
  %907 = call ptr @DestroyString(ptr noundef %905) #20
  call void @CatchException(ptr noundef nonnull %7) #20
  %908 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %7) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #25
  unreachable

909:                                              ; preds = %893
  %910 = getelementptr ptr, ptr %900, i64 %888
  %911 = getelementptr ptr, ptr %910, i64 3
  store ptr null, ptr %911, align 8, !tbaa !52
  %912 = tail call ptr @ConstantString(ptr noundef nonnull %783) #20
  %913 = load ptr, ptr %141, align 8, !tbaa !72
  %914 = getelementptr inbounds ptr, ptr %913, i64 %761
  %915 = load ptr, ptr %914, align 8, !tbaa !52
  %916 = getelementptr ptr, ptr %915, i64 %888
  %917 = getelementptr ptr, ptr %916, i64 2
  store ptr %912, ptr %917, align 8, !tbaa !52
  %918 = load ptr, ptr %141, align 8, !tbaa !72
  %919 = getelementptr inbounds ptr, ptr %918, i64 %761
  %920 = load ptr, ptr %919, align 8, !tbaa !52
  %921 = add nuw nsw i64 %888, 1
  %922 = getelementptr inbounds ptr, ptr %920, i64 %921
  store ptr null, ptr %922, align 8, !tbaa !52
  %923 = icmp eq ptr %835, null
  br i1 %923, label %933, label %924

924:                                              ; preds = %909
  %925 = load ptr, ptr %142, align 8, !tbaa !69
  %926 = load i8, ptr %783, align 1, !tbaa !62
  %927 = sext i8 %926 to i32
  %928 = tail call fastcc ptr @ParseEntities(ptr noundef nonnull %835, ptr noundef %925, i32 noundef %927)
  %929 = load ptr, ptr %141, align 8, !tbaa !72
  %930 = getelementptr inbounds ptr, ptr %929, i64 %761
  %931 = load ptr, ptr %930, align 8, !tbaa !52
  %932 = getelementptr inbounds ptr, ptr %931, i64 %921
  store ptr %928, ptr %932, align 8, !tbaa !52
  br label %933

933:                                              ; preds = %924, %909
  %934 = tail call ptr @ConstantString(ptr noundef nonnull %769) #20
  %935 = load ptr, ptr %141, align 8, !tbaa !72
  %936 = getelementptr inbounds ptr, ptr %935, i64 %761
  %937 = load ptr, ptr %936, align 8, !tbaa !52
  %938 = getelementptr inbounds ptr, ptr %937, i64 %888
  store ptr %934, ptr %938, align 8, !tbaa !52
  br label %939

939:                                              ; preds = %933, %820
  %940 = phi ptr [ %823, %820 ], [ %836, %933 ]
  br label %764, !llvm.loop !113

941:                                              ; preds = %725
  %942 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %650, ptr noundef nonnull dereferenceable(5) @.str.64, i64 noundef 4) #21
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %944, label %947

944:                                              ; preds = %941
  %945 = getelementptr inbounds i8, ptr %650, i64 4
  %946 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %945, ptr noundef nonnull dereferenceable(1) @.str.65) #21
  br label %969

947:                                              ; preds = %941
  %948 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %650, ptr noundef nonnull dereferenceable(3) @.str.66, i64 noundef 2) #21
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %950, label %959

950:                                              ; preds = %947
  %951 = getelementptr inbounds i8, ptr %650, i64 2
  %952 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %951, ptr noundef nonnull dereferenceable(1) @.str.67) #21
  %953 = icmp eq ptr %952, null
  br i1 %953, label %969, label %954

954:                                              ; preds = %950
  %955 = ptrtoint ptr %952 to i64
  %956 = ptrtoint ptr %951 to i64
  %957 = sub i64 %955, %956
  tail call fastcc void @ParseProcessingInstructions(ptr noundef %15, ptr noundef nonnull %951, i64 noundef %957)
  %958 = getelementptr inbounds i8, ptr %952, i64 1
  br label %969

959:                                              ; preds = %947
  %960 = icmp eq i8 %651, 60
  br i1 %960, label %961, label %963

961:                                              ; preds = %959
  %962 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %650, i32 noundef 62) #21
  br label %969

963:                                              ; preds = %959
  %964 = getelementptr inbounds i8, ptr %650, i64 1
  %965 = icmp eq i8 %651, 37
  br i1 %965, label %966, label %969

966:                                              ; preds = %963
  %967 = load i32, ptr %140, align 8, !tbaa !114
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %973, label %969

969:                                              ; preds = %764, %764, %966, %963, %961, %954, %950, %944, %717
  %970 = phi ptr [ %704, %717 ], [ %640, %944 ], [ %640, %954 ], [ %640, %950 ], [ %640, %961 ], [ %640, %966 ], [ %640, %963 ], [ %640, %764 ], [ %640, %764 ]
  %971 = phi ptr [ %663, %717 ], [ %644, %944 ], [ %644, %954 ], [ %644, %950 ], [ %644, %961 ], [ %644, %966 ], [ %644, %963 ], [ %769, %764 ], [ %769, %764 ]
  %972 = phi ptr [ %710, %717 ], [ %946, %944 ], [ %958, %954 ], [ null, %950 ], [ %962, %961 ], [ %964, %966 ], [ %964, %963 ], [ %765, %764 ], [ %765, %764 ]
  br label %639, !llvm.loop !108

973:                                              ; preds = %966, %646, %649
  %974 = tail call ptr @RelinquishMagickMemory(ptr noundef %640) #20
  %975 = getelementptr inbounds i8, ptr %609, i64 1
  br label %1008

976:                                              ; preds = %832, %805, %786, %735, %723
  %977 = phi ptr [ %640, %832 ], [ %640, %805 ], [ %640, %786 ], [ %640, %735 ], [ %704, %723 ]
  %978 = tail call ptr @RelinquishMagickMemory(ptr noundef %977) #20
  %979 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  br label %1057

980:                                              ; preds = %574
  %981 = icmp eq i8 %164, 63
  br i1 %981, label %982, label %1005

982:                                              ; preds = %980, %986
  %983 = phi ptr [ %987, %986 ], [ %163, %980 ]
  %984 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %983, i32 noundef 63) #21
  %985 = icmp eq ptr %984, null
  br i1 %985, label %989, label %986

986:                                              ; preds = %982
  %987 = getelementptr inbounds i8, ptr %984, i64 1
  %988 = load i8, ptr %987, align 1, !tbaa !62
  switch i8 %988, label %982 [
    i8 0, label %989
    i8 62, label %989
  ]

989:                                              ; preds = %986, %986, %982
  %990 = phi ptr [ null, %982 ], [ %987, %986 ], [ %987, %986 ]
  %991 = icmp eq ptr %990, null
  br i1 %991, label %996, label %992

992:                                              ; preds = %989
  %993 = load i8, ptr %990, align 1, !tbaa !62
  %994 = icmp eq i8 %993, 0
  %995 = select i1 %994, i1 %138, i1 false
  br i1 %995, label %996, label %999

996:                                              ; preds = %992, %989
  %997 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2237, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.34) #20
  %998 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  br label %1057

999:                                              ; preds = %992
  %1000 = getelementptr inbounds i8, ptr %162, i64 2
  %1001 = ptrtoint ptr %990 to i64
  %1002 = ptrtoint ptr %163 to i64
  %1003 = sub i64 %1001, %1002
  %1004 = add i64 %1003, -2
  tail call fastcc void @ParseProcessingInstructions(ptr noundef %15, ptr noundef nonnull %1000, i64 noundef %1004)
  br label %1008

1005:                                             ; preds = %980
  %1006 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2246, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.35) #20
  %1007 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  br label %1057

1008:                                             ; preds = %569, %566, %553, %544, %421, %419, %449, %532, %999, %973, %621, %512, %519
  %1009 = phi ptr [ %222, %449 ], [ %161, %519 ], [ %161, %512 ], [ %161, %532 ], [ %161, %973 ], [ %161, %621 ], [ %161, %999 ], [ %222, %419 ], [ %222, %421 ], [ %161, %544 ], [ %161, %553 ], [ %161, %566 ], [ %161, %569 ]
  %1010 = phi ptr [ %227, %449 ], [ %521, %519 ], [ %486, %512 ], [ %530, %532 ], [ %975, %973 ], [ %609, %621 ], [ %990, %999 ], [ %354, %419 ], [ %354, %421 ], [ %545, %544 ], [ %545, %553 ], [ %545, %566 ], [ %545, %569 ]
  %1011 = load i8, ptr %1010, align 1, !tbaa !62
  %1012 = icmp eq i8 %1011, 0
  br i1 %1012, label %1045, label %1013

1013:                                             ; preds = %1008
  %1014 = getelementptr inbounds i8, ptr %1010, i64 1
  store i8 0, ptr %1010, align 1, !tbaa !62
  %1015 = load i8, ptr %1014, align 1, !tbaa !62
  switch i8 %1015, label %1018 [
    i8 0, label %1045
    i8 60, label %1016
  ]

1016:                                             ; preds = %1013, %1043, %1040, %1028, %1024
  %1017 = phi ptr [ %1014, %1013 ], [ %1025, %1043 ], [ %1025, %1040 ], [ %1025, %1028 ], [ %1025, %1024 ]
  br label %160, !llvm.loop !115

1018:                                             ; preds = %1013, %1022
  %1019 = phi i64 [ %1023, %1022 ], [ 1, %1013 ]
  %1020 = getelementptr inbounds i8, ptr %1010, i64 %1019
  %1021 = load i8, ptr %1020, align 1, !tbaa !62
  switch i8 %1021, label %1022 [
    i8 0, label %1045
    i8 60, label %1024
  ]

1022:                                             ; preds = %1018
  %1023 = add nuw nsw i64 %1019, 1
  br label %1018, !llvm.loop !116

1024:                                             ; preds = %1018
  %1025 = getelementptr inbounds i8, ptr %1010, i64 %1019
  %1026 = load ptr, ptr %153, align 8, !tbaa !99
  %1027 = icmp eq ptr %1026, null
  br i1 %1027, label %1016, label %1028

1028:                                             ; preds = %1024
  %1029 = load ptr, ptr %1026, align 8, !tbaa !34
  %1030 = icmp eq ptr %1029, null
  %1031 = icmp eq i64 %1019, 1
  %1032 = or i1 %1031, %1030
  br i1 %1032, label %1016, label %1033

1033:                                             ; preds = %1028
  store i8 0, ptr %1025, align 1, !tbaa !62
  %1034 = load ptr, ptr %154, align 8, !tbaa !69
  %1035 = tail call fastcc ptr @ParseEntities(ptr noundef nonnull %1014, ptr noundef %1034, i32 noundef 38)
  %1036 = getelementptr inbounds %struct._XMLTreeInfo, ptr %1026, i64 0, i32 2
  %1037 = load ptr, ptr %1036, align 8, !tbaa !42
  %1038 = load i8, ptr %1037, align 1, !tbaa !62
  %1039 = icmp eq i8 %1038, 0
  br i1 %1039, label %1043, label %1040

1040:                                             ; preds = %1033
  %1041 = tail call i32 @ConcatenateString(ptr noundef nonnull %1036, ptr noundef %1035) #20
  %1042 = tail call ptr @DestroyString(ptr noundef %1035) #20
  br label %1016

1043:                                             ; preds = %1033
  %1044 = tail call ptr @DestroyString(ptr noundef nonnull %1037) #20
  store ptr %1035, ptr %1036, align 8, !tbaa !42
  br label %1016

1045:                                             ; preds = %1013, %1008, %1018
  %1046 = tail call ptr @DestroyString(ptr noundef nonnull %125) #20
  %1047 = getelementptr inbounds %struct._XMLTreeRoot, ptr %15, i64 0, i32 1
  %1048 = load ptr, ptr %1047, align 8, !tbaa !99
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1057, label %1050

1050:                                             ; preds = %1045
  %1051 = load ptr, ptr %1048, align 8, !tbaa !34
  %1052 = icmp eq ptr %1051, null
  br i1 %1052, label %1053, label %1055

1053:                                             ; preds = %1050
  %1054 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2275, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #20
  br label %1057

1055:                                             ; preds = %1050
  %1056 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2279, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.36, ptr noundef nonnull %1051) #20
  br label %1057

1057:                                             ; preds = %1045, %1055, %1053, %1005, %996, %976, %613, %571, %535, %510, %490, %477, %384, %305, %240, %180, %157, %127, %12
  %1058 = phi ptr [ null, %12 ], [ null, %127 ], [ null, %157 ], [ %15, %180 ], [ %15, %240 ], [ %15, %305 ], [ %15, %384 ], [ %15, %1053 ], [ %15, %1055 ], [ %15, %477 ], [ %15, %490 ], [ %15, %510 ], [ %15, %535 ], [ %15, %571 ], [ %15, %613 ], [ %15, %976 ], [ %15, %996 ], [ %15, %1005 ], [ %15, %1045 ]
  ret ptr %1058
}

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @NewXMLTreeTag(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call dereferenceable_or_null(160) ptr @AcquireMagickMemory(i64 noundef 160) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef 160) #20
  store ptr null, ptr %2, align 8, !tbaa !117
  %6 = icmp eq ptr %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @ConstantString(ptr noundef nonnull %0) #20
  store ptr %8, ptr %2, align 8, !tbaa !117
  br label %9

9:                                                ; preds = %7, %4
  %10 = getelementptr inbounds %struct._XMLTreeRoot, ptr %2, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !99
  %11 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20
  %12 = getelementptr inbounds %struct._XMLTreeInfo, ptr %2, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !118
  %13 = tail call dereferenceable_or_null(88) ptr @AcquireMagickMemory(i64 noundef 88) #19
  %14 = getelementptr inbounds %struct._XMLTreeRoot, ptr %2, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !69
  %15 = icmp eq ptr %13, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %13, ptr noundef nonnull @NewXMLTreeTag.predefined_entities, i64 noundef 88) #20
  %18 = getelementptr inbounds %struct._XMLTreeInfo, ptr %2, i64 0, i32 1
  store ptr @sentinel, ptr %18, align 8, !tbaa !119
  %19 = getelementptr inbounds %struct._XMLTreeRoot, ptr %2, i64 0, i32 5
  store ptr @sentinel, ptr %19, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct._XMLTreeRoot, ptr %2, i64 0, i32 3
  store ptr @sentinel, ptr %20, align 8, !tbaa !75
  %21 = tail call i32 @IsEventLogging() #20
  %22 = getelementptr inbounds %struct._XMLTreeRoot, ptr %2, i64 0, i32 6
  store i32 %21, ptr %22, align 8, !tbaa !120
  %23 = getelementptr inbounds %struct._XMLTreeRoot, ptr %2, i64 0, i32 8
  store i64 2880220587, ptr %23, align 8, !tbaa !121
  br label %24

24:                                               ; preds = %9, %1, %16
  %25 = phi ptr [ %2, %16 ], [ null, %1 ], [ null, %9 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ParseEntities(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %6 = load i8, ptr %0, align 1, !tbaa !62
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3, %27
  %9 = phi ptr [ %29, %27 ], [ %0, %3 ]
  %10 = load i8, ptr %9, align 1, !tbaa !62
  %11 = icmp eq i8 %10, 13
  br i1 %11, label %15, label %27

12:                                               ; preds = %27, %3
  %13 = icmp ne i32 %2, 37
  %14 = icmp eq i32 %2, 99
  br label %190

15:                                               ; preds = %8, %24
  %16 = phi ptr [ %17, %24 ], [ %9, %8 ]
  %17 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 10, ptr %16, align 1, !tbaa !62
  %18 = load i8, ptr %17, align 1, !tbaa !62
  %19 = icmp eq i8 %18, 10
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %16, i64 2
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #21
  %23 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %17, ptr noundef nonnull %21, i64 noundef %22) #20
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i8, ptr %17, align 1, !tbaa !62
  %26 = icmp eq i8 %25, 13
  br i1 %26, label %15, label %27, !llvm.loop !122

27:                                               ; preds = %24, %8
  %28 = phi ptr [ %9, %8 ], [ %17, %24 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !62
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %12, label %8, !llvm.loop !123

32:                                               ; preds = %44, %205
  %33 = phi ptr [ %206, %205 ], [ %45, %44 ]
  %34 = load i8, ptr %33, align 1, !tbaa !62
  switch i8 %34, label %35 [
    i8 0, label %207
    i8 38, label %48
  ]

35:                                               ; preds = %32
  %36 = icmp ne i8 %34, 37
  %37 = or i1 %13, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = tail call ptr @__ctype_b_loc() #24
  %40 = load ptr, ptr %39, align 8, !tbaa !52
  %41 = load i16, ptr %40, align 2, !tbaa !97
  %42 = and i16 %41, 8192
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %61, %65, %38
  %45 = getelementptr inbounds i8, ptr %33, i64 1
  br label %32, !llvm.loop !124

46:                                               ; preds = %35, %38
  %47 = icmp eq i8 %34, 0
  br i1 %47, label %207, label %48

48:                                               ; preds = %32, %46
  br i1 %14, label %111, label %49

49:                                               ; preds = %48
  %50 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(3) @.str.51, i64 noundef 2) #21
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %111

52:                                               ; preds = %49
  %53 = getelementptr inbounds i8, ptr %33, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !62
  %55 = icmp eq i8 %54, 120
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = call i64 @strtol(ptr noundef nonnull %53, ptr noundef nonnull %4, i32 noundef 10) #20
  br label %61

58:                                               ; preds = %52
  %59 = getelementptr inbounds i8, ptr %33, i64 3
  %60 = call i64 @strtol(ptr noundef nonnull %59, ptr noundef nonnull %4, i32 noundef 16) #20
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi i64 [ %57, %56 ], [ %60, %58 ]
  %63 = trunc i64 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %44, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %4, align 8, !tbaa !52
  %67 = load i8, ptr %66, align 1, !tbaa !62
  %68 = icmp eq i8 %67, 59
  br i1 %68, label %69, label %44

69:                                               ; preds = %65
  %70 = icmp slt i32 %63, 128
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = trunc i64 %62 to i8
  %73 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %72, ptr %33, align 1, !tbaa !62
  br label %105

74:                                               ; preds = %69, %74
  %75 = phi i32 [ %78, %74 ], [ %63, %69 ]
  %76 = phi i64 [ %77, %74 ], [ 0, %69 ]
  %77 = add nuw nsw i64 %76, 1
  %78 = sdiv i32 %75, 2
  %79 = add i32 %75, 1
  %80 = icmp ult i32 %79, 3
  br i1 %80, label %81, label %74, !llvm.loop !125

81:                                               ; preds = %74
  %82 = add nsw i64 %76, -1
  %83 = sdiv i64 %82, 5
  %84 = trunc i64 %83 to i32
  %85 = sub i32 7, %84
  %86 = shl i32 255, %85
  %87 = mul i32 %84, 6
  %88 = lshr i32 %63, %87
  %89 = or i32 %86, %88
  %90 = trunc i32 %89 to i8
  store i8 %90, ptr %33, align 1, !tbaa !62
  %91 = getelementptr inbounds i8, ptr %33, i64 1
  %92 = icmp ult i64 %76, 6
  br i1 %92, label %105, label %93

93:                                               ; preds = %81, %93
  %94 = phi ptr [ %103, %93 ], [ %91, %81 ]
  %95 = phi i64 [ %96, %93 ], [ %83, %81 ]
  %96 = add nsw i64 %95, -1
  %97 = trunc i64 %96 to i32
  %98 = mul i32 %97, 6
  %99 = lshr i32 %63, %98
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 63
  %102 = or disjoint i8 %101, -128
  store i8 %102, ptr %94, align 1, !tbaa !62
  %103 = getelementptr inbounds i8, ptr %94, i64 1
  %104 = icmp eq i64 %96, 0
  br i1 %104, label %105, label %93, !llvm.loop !126

105:                                              ; preds = %93, %81, %71
  %106 = phi ptr [ %73, %71 ], [ %91, %81 ], [ %103, %93 ]
  %107 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %106, i32 noundef 59) #21
  %108 = getelementptr inbounds i8, ptr %107, i64 1
  %109 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %107) #21
  %110 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %106, ptr noundef nonnull %108, i64 noundef %109) #20
  br label %140

111:                                              ; preds = %49, %48
  %112 = icmp eq i8 %34, 38
  br i1 %112, label %113, label %114

113:                                              ; preds = %111
  switch i32 %2, label %203 [
    i32 42, label %117
    i32 38, label %117
    i32 32, label %117
    i32 37, label %115
  ]

114:                                              ; preds = %111
  switch i32 %2, label %203 [
    i32 37, label %115
    i32 42, label %194
    i32 32, label %194
  ]

115:                                              ; preds = %113, %114
  %116 = icmp eq i8 %34, 37
  br i1 %116, label %117, label %193

117:                                              ; preds = %113, %113, %113, %115
  %118 = load ptr, ptr %1, align 8, !tbaa !52
  %119 = icmp eq ptr %118, null
  br i1 %119, label %138, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds i8, ptr %33, i64 1
  %122 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %118) #21
  %123 = tail call i32 @strncmp(ptr noundef nonnull %121, ptr noundef nonnull %118, i64 noundef %122) #21
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %135, label %129

125:                                              ; preds = %129
  %126 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %133) #21
  %127 = tail call i32 @strncmp(ptr noundef nonnull %121, ptr noundef nonnull %133, i64 noundef %126) #21
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129, !llvm.loop !127

129:                                              ; preds = %120, %125
  %130 = phi i64 [ %131, %125 ], [ 0, %120 ]
  %131 = add nuw nsw i64 %130, 2
  %132 = getelementptr inbounds ptr, ptr %1, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !52
  %134 = icmp eq ptr %133, null
  br i1 %134, label %138, label %125, !llvm.loop !127

135:                                              ; preds = %125, %120
  %136 = phi i1 [ %119, %120 ], [ %134, %125 ]
  %137 = phi i64 [ 0, %120 ], [ %131, %125 ]
  br i1 %136, label %138, label %142

138:                                              ; preds = %129, %117, %135
  %139 = getelementptr inbounds i8, ptr %33, i64 1
  br label %140

140:                                              ; preds = %138, %203, %201, %105
  %141 = phi ptr [ %106, %105 ], [ %139, %138 ], [ %202, %201 ], [ %204, %203 ]
  br label %205, !llvm.loop !124

142:                                              ; preds = %135
  %143 = or disjoint i64 %137, 1
  %144 = getelementptr inbounds ptr, ptr %1, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !52
  %146 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %145) #21
  %147 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %33, i32 noundef 59) #21
  store ptr %147, ptr %4, align 8, !tbaa !52
  %148 = add i64 %146, -1
  %149 = ptrtoint ptr %147 to i64
  %150 = ptrtoint ptr %33 to i64
  %151 = sub i64 %149, %150
  %152 = icmp ult i64 %148, %151
  br i1 %152, label %180, label %153

153:                                              ; preds = %142
  %154 = ptrtoint ptr %191 to i64
  %155 = sub i64 %150, %154
  %156 = add i64 %146, %155
  %157 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %147) #21
  %158 = add i64 %156, %157
  %159 = icmp eq ptr %191, %0
  br i1 %159, label %162, label %160

160:                                              ; preds = %153
  %161 = tail call ptr @ResizeQuantumMemory(ptr noundef %191, i64 noundef %158, i64 noundef 1) #23
  br label %167

162:                                              ; preds = %153
  %163 = tail call ptr @AcquireQuantumMemory(i64 noundef %158, i64 noundef 1) #22
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = tail call i64 @CopyMagickString(ptr noundef nonnull %163, ptr noundef %191, i64 noundef %158) #20
  br label %167

167:                                              ; preds = %162, %165, %160
  %168 = phi ptr [ %161, %160 ], [ %163, %165 ], [ %191, %162 ]
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #20
  call void @GetExceptionInfo(ptr noundef nonnull %5) #20
  %171 = tail call ptr @__errno_location() #24
  %172 = load i32, ptr %171, align 4, !tbaa !80
  %173 = call ptr @GetExceptionMessage(i32 noundef %172) #20
  %174 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1518, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %173) #20
  %175 = call ptr @DestroyString(ptr noundef %173) #20
  call void @CatchException(ptr noundef nonnull %5) #20
  %176 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #25
  unreachable

177:                                              ; preds = %167
  %178 = getelementptr inbounds i8, ptr %168, i64 %155
  %179 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %178, i32 noundef 59) #21
  store ptr %179, ptr %4, align 8, !tbaa !52
  br label %180

180:                                              ; preds = %177, %142
  %181 = phi ptr [ %168, %177 ], [ %191, %142 ]
  %182 = phi ptr [ %178, %177 ], [ %33, %142 ]
  %183 = getelementptr inbounds i8, ptr %182, i64 %146
  %184 = load ptr, ptr %4, align 8, !tbaa !52
  %185 = getelementptr inbounds i8, ptr %184, i64 1
  %186 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %184) #21
  %187 = tail call ptr @CopyMagickMemory(ptr noundef %183, ptr noundef nonnull %185, i64 noundef %186) #20
  %188 = load ptr, ptr %144, align 8, !tbaa !52
  %189 = tail call ptr @strncpy(ptr noundef %182, ptr noundef %188, i64 noundef %146) #20
  br label %190, !llvm.loop !124

190:                                              ; preds = %180, %12
  %191 = phi ptr [ %181, %180 ], [ %0, %12 ]
  %192 = phi ptr [ %182, %180 ], [ %0, %12 ]
  br label %205

193:                                              ; preds = %115
  switch i32 %2, label %203 [
    i32 42, label %194
    i32 32, label %194
  ]

194:                                              ; preds = %114, %114, %193, %193
  %195 = tail call ptr @__ctype_b_loc() #24
  %196 = load ptr, ptr %195, align 8, !tbaa !52
  %197 = getelementptr inbounds i16, ptr %196, i64 1
  %198 = load i16, ptr %197, align 2, !tbaa !97
  %199 = and i16 %198, 8192
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %194
  %202 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 32, ptr %33, align 1, !tbaa !62
  br label %140

203:                                              ; preds = %113, %114, %193, %194
  %204 = getelementptr inbounds i8, ptr %33, i64 1
  br label %140

205:                                              ; preds = %140, %190
  %206 = phi ptr [ %192, %190 ], [ %141, %140 ]
  br label %32

207:                                              ; preds = %46, %32
  %208 = icmp eq i32 %2, 42
  br i1 %208, label %209, label %239

209:                                              ; preds = %207
  %210 = load i8, ptr %191, align 1, !tbaa !62
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %231, label %212

212:                                              ; preds = %209, %227
  %213 = phi ptr [ %228, %227 ], [ %191, %209 ]
  %214 = tail call i64 @strspn(ptr noundef nonnull %213, ptr noundef nonnull @.str.49) #21
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds i8, ptr %213, i64 %214
  %218 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %217) #21
  %219 = add i64 %218, 1
  %220 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %213, ptr noundef nonnull %217, i64 noundef %219) #20
  br label %221

221:                                              ; preds = %216, %212
  br label %222

222:                                              ; preds = %221, %225
  %223 = phi ptr [ %226, %225 ], [ %213, %221 ]
  %224 = load i8, ptr %223, align 1, !tbaa !62
  switch i8 %224, label %225 [
    i8 0, label %227
    i8 32, label %227
  ]

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %223, i64 1
  br label %222, !llvm.loop !128

227:                                              ; preds = %222, %222
  %228 = getelementptr inbounds i8, ptr %223, i64 1
  %229 = load i8, ptr %228, align 1, !tbaa !62
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %212, !llvm.loop !129

231:                                              ; preds = %227, %209
  %232 = phi ptr [ %191, %209 ], [ %228, %227 ]
  %233 = getelementptr inbounds i8, ptr %232, i64 -1
  %234 = icmp ult ptr %233, %191
  br i1 %234, label %239, label %235

235:                                              ; preds = %231
  %236 = load i8, ptr %233, align 1, !tbaa !62
  %237 = icmp eq i8 %236, 32
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  store i8 0, ptr %233, align 1, !tbaa !62
  br label %239

239:                                              ; preds = %231, %235, %238, %207
  %240 = icmp eq ptr %191, %0
  br i1 %240, label %241, label %243

241:                                              ; preds = %239
  %242 = tail call ptr @ConstantString(ptr noundef %191) #20
  br label %243

243:                                              ; preds = %239, %241
  %244 = phi ptr [ %242, %241 ], [ %191, %239 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret ptr %244
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @ParseProcessingInstructions(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = alloca %struct._ExceptionInfo, align 8
  %8 = alloca %struct._ExceptionInfo, align 8
  %9 = getelementptr inbounds i8, ptr %1, i64 %2
  store i8 0, ptr %9, align 1, !tbaa !62
  %10 = tail call i64 @strcspn(ptr noundef %1, ptr noundef nonnull @.str.24) #21
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !62
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  store i8 0, ptr %11, align 1, !tbaa !62
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = tail call i64 @strspn(ptr noundef nonnull %15, ptr noundef nonnull @.str.24) #21
  %17 = getelementptr i8, ptr %11, i64 %16
  %18 = getelementptr i8, ptr %17, i64 1
  br label %19

19:                                               ; preds = %14, %3
  %20 = phi ptr [ %18, %14 ], [ %11, %3 ]
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.68) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) @.str.69) #21
  %25 = icmp eq ptr %24, null
  br i1 %25, label %185, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %24, i64 10
  %28 = tail call i64 @strspn(ptr noundef nonnull %27, ptr noundef nonnull @.str.70) #21
  %29 = getelementptr inbounds i8, ptr %24, i64 %28
  %30 = getelementptr inbounds i8, ptr %29, i64 10
  %31 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(4) @.str.71, i64 noundef 3) #21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %185

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 2
  store i32 1, ptr %34, align 8, !tbaa !114
  br label %185

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !75
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = tail call dereferenceable_or_null(8) ptr @AcquireMagickMemory(i64 noundef 8) #19
  store ptr %41, ptr %36, align 8, !tbaa !75
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #20
  call void @GetExceptionInfo(ptr noundef nonnull %4) #20
  %44 = tail call ptr @__errno_location() #24
  %45 = load i32, ptr %44, align 4, !tbaa !80
  %46 = call ptr @GetExceptionMessage(i32 noundef %45) #20
  %47 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1653, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %46) #20
  %48 = call ptr @DestroyString(ptr noundef %46) #20
  call void @CatchException(ptr noundef nonnull %4) #20
  %49 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #25
  unreachable

50:                                               ; preds = %40
  store ptr null, ptr %41, align 8, !tbaa !52
  br label %51

51:                                               ; preds = %50, %35
  %52 = load ptr, ptr %36, align 8, !tbaa !75
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = icmp eq ptr %53, null
  br i1 %54, label %72, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %53, align 8, !tbaa !52
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %56) #21
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %69, label %63

59:                                               ; preds = %63
  %60 = load ptr, ptr %67, align 8, !tbaa !52
  %61 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %60) #21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63, !llvm.loop !130

63:                                               ; preds = %55, %59
  %64 = phi i64 [ %65, %59 ], [ 0, %55 ]
  %65 = add nuw nsw i64 %64, 1
  %66 = getelementptr inbounds ptr, ptr %52, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !52
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %59, !llvm.loop !130

69:                                               ; preds = %59, %55
  %70 = phi i1 [ %54, %55 ], [ %68, %59 ]
  %71 = phi i64 [ 0, %55 ], [ %65, %59 ]
  br i1 %70, label %72, label %119

72:                                               ; preds = %63, %51, %69
  %73 = phi i64 [ %71, %69 ], [ 0, %51 ], [ %65, %63 ]
  %74 = add nuw nsw i64 %73, 2
  %75 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %52, i64 noundef %74, i64 noundef 8) #23
  store ptr %75, ptr %36, align 8, !tbaa !75
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #20
  call void @GetExceptionInfo(ptr noundef nonnull %5) #20
  %78 = tail call ptr @__errno_location() #24
  %79 = load i32, ptr %78, align 4, !tbaa !80
  %80 = call ptr @GetExceptionMessage(i32 noundef %79) #20
  %81 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1666, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %80) #20
  %82 = call ptr @DestroyString(ptr noundef %80) #20
  call void @CatchException(ptr noundef nonnull %5) #20
  %83 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #25
  unreachable

84:                                               ; preds = %72
  %85 = tail call dereferenceable_or_null(24) ptr @AcquireQuantumMemory(i64 noundef 3, i64 noundef 8) #22
  %86 = load ptr, ptr %36, align 8, !tbaa !75
  %87 = getelementptr inbounds ptr, ptr %86, i64 %73
  store ptr %85, ptr %87, align 8, !tbaa !52
  %88 = load ptr, ptr %36, align 8, !tbaa !75
  %89 = getelementptr inbounds ptr, ptr %88, i64 %73
  %90 = load ptr, ptr %89, align 8, !tbaa !52
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #20
  call void @GetExceptionInfo(ptr noundef nonnull %6) #20
  %93 = tail call ptr @__errno_location() #24
  %94 = load i32, ptr %93, align 4, !tbaa !80
  %95 = call ptr @GetExceptionMessage(i32 noundef %94) #20
  %96 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1670, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %95) #20
  %97 = call ptr @DestroyString(ptr noundef %95) #20
  call void @CatchException(ptr noundef nonnull %6) #20
  %98 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #25
  unreachable

99:                                               ; preds = %84
  %100 = add nuw nsw i64 %73, 1
  %101 = getelementptr inbounds ptr, ptr %88, i64 %100
  store ptr null, ptr %101, align 8, !tbaa !52
  %102 = tail call ptr @ConstantString(ptr noundef %1) #20
  %103 = load ptr, ptr %36, align 8, !tbaa !75
  %104 = getelementptr inbounds ptr, ptr %103, i64 %73
  %105 = load ptr, ptr %104, align 8, !tbaa !52
  store ptr %102, ptr %105, align 8, !tbaa !52
  %106 = load ptr, ptr %36, align 8, !tbaa !75
  %107 = getelementptr inbounds ptr, ptr %106, i64 %100
  %108 = load ptr, ptr %107, align 8, !tbaa !52
  %109 = getelementptr inbounds ptr, ptr %106, i64 %73
  %110 = load ptr, ptr %109, align 8, !tbaa !52
  %111 = getelementptr inbounds ptr, ptr %110, i64 1
  store ptr %108, ptr %111, align 8, !tbaa !52
  %112 = load ptr, ptr %36, align 8, !tbaa !75
  %113 = getelementptr inbounds ptr, ptr %112, i64 %100
  store ptr null, ptr %113, align 8, !tbaa !52
  %114 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20
  %115 = load ptr, ptr %36, align 8, !tbaa !75
  %116 = getelementptr inbounds ptr, ptr %115, i64 %73
  %117 = load ptr, ptr %116, align 8, !tbaa !52
  %118 = getelementptr inbounds ptr, ptr %117, i64 2
  store ptr %114, ptr %118, align 8, !tbaa !52
  br label %119

119:                                              ; preds = %99, %69
  %120 = phi i64 [ %73, %99 ], [ %71, %69 ]
  %121 = load ptr, ptr %36, align 8, !tbaa !75
  %122 = getelementptr inbounds ptr, ptr %121, i64 %120
  %123 = load ptr, ptr %122, align 8, !tbaa !52
  br label %124

124:                                              ; preds = %124, %119
  %125 = phi i64 [ 1, %119 ], [ %129, %124 ]
  %126 = getelementptr inbounds ptr, ptr %123, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !52
  %128 = icmp eq ptr %127, null
  %129 = add nuw nsw i64 %125, 1
  br i1 %128, label %130, label %124, !llvm.loop !131

130:                                              ; preds = %124
  %131 = add nuw nsw i64 %125, 3
  %132 = tail call ptr @ResizeQuantumMemory(ptr noundef %123, i64 noundef %131, i64 noundef 8) #23
  %133 = load ptr, ptr %36, align 8, !tbaa !75
  %134 = getelementptr inbounds ptr, ptr %133, i64 %120
  store ptr %132, ptr %134, align 8, !tbaa !52
  %135 = load ptr, ptr %36, align 8, !tbaa !75
  %136 = getelementptr inbounds ptr, ptr %135, i64 %120
  %137 = load ptr, ptr %136, align 8, !tbaa !52
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #20
  call void @GetExceptionInfo(ptr noundef nonnull %7) #20
  %140 = tail call ptr @__errno_location() #24
  %141 = load i32, ptr %140, align 4, !tbaa !80
  %142 = call ptr @GetExceptionMessage(i32 noundef %141) #20
  %143 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1685, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %142) #20
  %144 = call ptr @DestroyString(ptr noundef %142) #20
  call void @CatchException(ptr noundef nonnull %7) #20
  %145 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %7) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #25
  unreachable

146:                                              ; preds = %130
  %147 = add nuw nsw i64 %125, 1
  %148 = getelementptr inbounds ptr, ptr %137, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !52
  %150 = tail call ptr @ResizeQuantumMemory(ptr noundef %149, i64 noundef %147, i64 noundef 8) #23
  %151 = load ptr, ptr %36, align 8, !tbaa !75
  %152 = getelementptr inbounds ptr, ptr %151, i64 %120
  %153 = load ptr, ptr %152, align 8, !tbaa !52
  %154 = add nuw nsw i64 %125, 2
  %155 = getelementptr inbounds ptr, ptr %153, i64 %154
  store ptr %150, ptr %155, align 8, !tbaa !52
  %156 = load ptr, ptr %36, align 8, !tbaa !75
  %157 = getelementptr inbounds ptr, ptr %156, i64 %120
  %158 = load ptr, ptr %157, align 8, !tbaa !52
  %159 = getelementptr inbounds ptr, ptr %158, i64 %154
  %160 = load ptr, ptr %159, align 8, !tbaa !52
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #20
  call void @GetExceptionInfo(ptr noundef nonnull %8) #20
  %163 = tail call ptr @__errno_location() #24
  %164 = load i32, ptr %163, align 4, !tbaa !80
  %165 = call ptr @GetExceptionMessage(i32 noundef %164) #20
  %166 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1690, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %165) #20
  %167 = call ptr @DestroyString(ptr noundef %165) #20
  call void @CatchException(ptr noundef nonnull %8) #20
  %168 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %8) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #25
  unreachable

169:                                              ; preds = %146
  %170 = getelementptr inbounds i8, ptr %160, i64 %125
  %171 = getelementptr inbounds i8, ptr %170, i64 -1
  %172 = load ptr, ptr %0, align 8, !tbaa !117
  %173 = icmp eq ptr %172, null
  %174 = select i1 %173, ptr @.str.73, ptr @.str.72
  %175 = tail call i64 @CopyMagickString(ptr noundef nonnull %171, ptr noundef nonnull %174, i64 noundef 2) #20
  %176 = tail call ptr @ConstantString(ptr noundef %20) #20
  %177 = load ptr, ptr %36, align 8, !tbaa !75
  %178 = getelementptr inbounds ptr, ptr %177, i64 %120
  %179 = load ptr, ptr %178, align 8, !tbaa !52
  %180 = getelementptr inbounds ptr, ptr %179, i64 %125
  store ptr %176, ptr %180, align 8, !tbaa !52
  %181 = load ptr, ptr %36, align 8, !tbaa !75
  %182 = getelementptr inbounds ptr, ptr %181, i64 %120
  %183 = load ptr, ptr %182, align 8, !tbaa !52
  %184 = getelementptr inbounds ptr, ptr %183, i64 %147
  store ptr null, ptr %184, align 8, !tbaa !52
  br label %185

185:                                              ; preds = %23, %26, %33, %169
  ret void
}

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @PruneTagFromXMLTree(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2372, ptr noundef nonnull @.str.2) #20
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct._XMLTreeInfo, ptr %9, i64 0, i32 6
  store ptr %13, ptr %14, align 8, !tbaa !54
  br label %15

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %71, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._XMLTreeInfo, ptr %17, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 7
  br label %67

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %28, %25 ], [ %21, %19 ]
  %27 = getelementptr inbounds %struct._XMLTreeInfo, ptr %26, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %30, label %25, !llvm.loop !132

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct._XMLTreeInfo, ptr %26, i64 0, i32 7
  %32 = getelementptr inbounds %struct._XMLTreeInfo, ptr %28, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  store ptr %33, ptr %31, align 8, !tbaa !48
  %34 = load ptr, ptr %21, align 8, !tbaa !34
  %35 = load ptr, ptr %0, align 8, !tbaa !34
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %35) #21
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %30, %38
  %39 = phi ptr [ %41, %38 ], [ %21, %30 ]
  %40 = getelementptr inbounds %struct._XMLTreeInfo, ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %35) #21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %38, !llvm.loop !133

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct._XMLTreeInfo, ptr %39, i64 0, i32 6
  %47 = icmp eq ptr %41, %0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  br i1 %10, label %49, label %52

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct._XMLTreeInfo, ptr %41, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !54
  br label %52

52:                                               ; preds = %48, %49
  %53 = phi ptr [ %51, %49 ], [ %9, %48 ]
  store ptr %53, ptr %46, align 8, !tbaa !54
  br label %54

54:                                               ; preds = %45, %52, %30
  %55 = phi ptr [ %41, %45 ], [ %21, %30 ], [ %39, %52 ]
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi ptr [ %59, %56 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct._XMLTreeInfo, ptr %57, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !55
  %60 = icmp eq ptr %59, null
  %61 = icmp eq ptr %59, %0
  %62 = or i1 %60, %61
  br i1 %62, label %63, label %56, !llvm.loop !134

63:                                               ; preds = %56
  br i1 %60, label %71, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct._XMLTreeInfo, ptr %57, i64 0, i32 5
  %66 = getelementptr inbounds %struct._XMLTreeInfo, ptr %59, i64 0, i32 5
  br label %67

67:                                               ; preds = %64, %23
  %68 = phi ptr [ %24, %23 ], [ %66, %64 ]
  %69 = phi ptr [ %20, %23 ], [ %65, %64 ]
  %70 = load ptr, ptr %68, align 8, !tbaa !52
  store ptr %70, ptr %69, align 8, !tbaa !52
  br label %71

71:                                               ; preds = %67, %63, %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @SetXMLTreeAttribute(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2450, ptr noundef nonnull @.str.2) #20
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %22

19:                                               ; preds = %22
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %1) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22, !llvm.loop !135

22:                                               ; preds = %16, %19
  %23 = phi i64 [ %24, %19 ], [ 0, %16 ]
  %24 = add nuw nsw i64 %23, 2
  %25 = getelementptr inbounds ptr, ptr %13, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %19, !llvm.loop !135

28:                                               ; preds = %19, %16
  %29 = phi i1 [ %15, %16 ], [ %27, %19 ]
  %30 = phi i64 [ 0, %16 ], [ %24, %19 ]
  %31 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 1
  br i1 %29, label %35, label %68

32:                                               ; preds = %22, %11
  %33 = phi i64 [ 0, %11 ], [ %24, %22 ]
  %34 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 1
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i64 [ %33, %32 ], [ %30, %28 ]
  %37 = phi ptr [ %34, %32 ], [ %31, %28 ]
  %38 = icmp eq ptr %2, null
  br i1 %38, label %131, label %39

39:                                               ; preds = %35
  %40 = icmp eq ptr %13, @sentinel
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = add nuw nsw i64 %36, 4
  %43 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %13, i64 noundef %42, i64 noundef 8) #23
  store ptr %43, ptr %37, align 8, !tbaa !41
  br label %51

44:                                               ; preds = %39
  %45 = tail call dereferenceable_or_null(32) ptr @AcquireQuantumMemory(i64 noundef 4, i64 noundef 8) #22
  store ptr %45, ptr %37, align 8, !tbaa !41
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #20
  %49 = load ptr, ptr %37, align 8, !tbaa !41
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  store ptr %48, ptr %50, align 8, !tbaa !52
  br label %51

51:                                               ; preds = %44, %47, %41
  %52 = load ptr, ptr %37, align 8, !tbaa !41
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #20
  call void @GetExceptionInfo(ptr noundef nonnull %4) #20
  %55 = tail call ptr @__errno_location() #24
  %56 = load i32, ptr %55, align 4, !tbaa !80
  %57 = call ptr @GetExceptionMessage(i32 noundef %56) #20
  %58 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2473, i32 noundef 700, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.18, ptr noundef %57) #20
  %59 = call ptr @DestroyString(ptr noundef %57) #20
  call void @CatchException(ptr noundef nonnull %4) #20
  %60 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #25
  unreachable

61:                                               ; preds = %51
  %62 = tail call ptr @ConstantString(ptr noundef %1) #20
  %63 = load ptr, ptr %37, align 8, !tbaa !41
  %64 = getelementptr inbounds ptr, ptr %63, i64 %36
  store ptr %62, ptr %64, align 8, !tbaa !52
  %65 = load ptr, ptr %37, align 8, !tbaa !41
  %66 = getelementptr ptr, ptr %65, i64 %36
  %67 = getelementptr ptr, ptr %66, i64 2
  store ptr null, ptr %67, align 8, !tbaa !52
  br label %68

68:                                               ; preds = %61, %28
  %69 = phi i64 [ %36, %61 ], [ %30, %28 ]
  %70 = phi ptr [ %37, %61 ], [ %31, %28 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !41
  br label %72

72:                                               ; preds = %72, %68
  %73 = phi i64 [ %69, %68 ], [ %77, %72 ]
  %74 = getelementptr inbounds ptr, ptr %71, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !52
  %76 = icmp eq ptr %75, null
  %77 = add nuw nsw i64 %73, 2
  br i1 %76, label %78, label %72, !llvm.loop !136

78:                                               ; preds = %72
  %79 = or disjoint i64 %69, 1
  %80 = getelementptr inbounds ptr, ptr %71, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !52
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = tail call ptr @DestroyString(ptr noundef nonnull %81) #20
  %85 = load ptr, ptr %70, align 8, !tbaa !41
  %86 = getelementptr inbounds ptr, ptr %85, i64 %79
  store ptr %84, ptr %86, align 8, !tbaa !52
  br label %87

87:                                               ; preds = %83, %78
  %88 = icmp eq ptr %2, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %87
  %90 = tail call ptr @ConstantString(ptr noundef nonnull %2) #20
  %91 = load ptr, ptr %70, align 8, !tbaa !41
  %92 = getelementptr inbounds ptr, ptr %91, i64 %79
  store ptr %90, ptr %92, align 8, !tbaa !52
  br label %131

93:                                               ; preds = %87
  %94 = load ptr, ptr %70, align 8, !tbaa !41
  %95 = getelementptr inbounds ptr, ptr %94, i64 %69
  %96 = load ptr, ptr %95, align 8, !tbaa !52
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = tail call ptr @DestroyString(ptr noundef nonnull %96) #20
  %100 = load ptr, ptr %70, align 8, !tbaa !41
  %101 = getelementptr inbounds ptr, ptr %100, i64 %69
  store ptr %99, ptr %101, align 8, !tbaa !52
  br label %102

102:                                              ; preds = %98, %93
  %103 = load ptr, ptr %70, align 8, !tbaa !41
  %104 = getelementptr inbounds ptr, ptr %103, i64 %69
  %105 = getelementptr inbounds ptr, ptr %104, i64 2
  %106 = sub nsw i64 %73, %69
  %107 = shl i64 %106, 3
  %108 = tail call ptr @CopyMagickMemory(ptr noundef %104, ptr noundef nonnull %105, i64 noundef %107) #20
  %109 = load ptr, ptr %70, align 8, !tbaa !41
  %110 = add nuw nsw i64 %73, 2
  %111 = tail call ptr @ResizeQuantumMemory(ptr noundef %109, i64 noundef %110, i64 noundef 8) #23
  store ptr %111, ptr %70, align 8, !tbaa !41
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #20
  call void @GetExceptionInfo(ptr noundef nonnull %5) #20
  %114 = tail call ptr @__errno_location() #24
  %115 = load i32, ptr %114, align 4, !tbaa !80
  %116 = call ptr @GetExceptionMessage(i32 noundef %115) #20
  %117 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2496, i32 noundef 700, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.18, ptr noundef %116) #20
  %118 = call ptr @DestroyString(ptr noundef %116) #20
  call void @CatchException(ptr noundef nonnull %5) #20
  %119 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #25
  unreachable

120:                                              ; preds = %102
  %121 = getelementptr ptr, ptr %111, i64 %73
  %122 = getelementptr ptr, ptr %121, i64 -1
  %123 = load ptr, ptr %122, align 8, !tbaa !52
  %124 = lshr exact i64 %69, 1
  %125 = getelementptr inbounds i8, ptr %123, i64 %124
  %126 = getelementptr inbounds i8, ptr %125, i64 1
  %127 = lshr exact i64 %73, 1
  %128 = sub nsw i64 %127, %124
  %129 = shl i64 %128, 3
  %130 = tail call ptr @CopyMagickMemory(ptr noundef %125, ptr noundef nonnull %126, i64 noundef %129) #20
  br label %131

131:                                              ; preds = %35, %120, %89
  ret ptr %0
}

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

declare void @CatchException(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @SetXMLTreeContent(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2537, ptr noundef nonnull @.str.2) #20
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroyString(ptr noundef nonnull %10) #20
  store ptr %13, ptr %9, align 8, !tbaa !42
  br label %14

14:                                               ; preds = %12, %8
  %15 = tail call ptr @ConstantString(ptr noundef %1) #20
  store ptr %15, ptr %9, align 8, !tbaa !42
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @XMLTreeInfoToXML(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2738, ptr noundef nonnull @.str.2) #20
  br label %10

10:                                               ; preds = %8, %1
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %182, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @AcquireString(ptr noundef null) #20
  store ptr %14, ptr %2, align 8, !tbaa !52
  store i64 0, ptr %4, align 8, !tbaa !58
  store i64 4096, ptr %3, align 8, !tbaa !58
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi ptr [ %0, %13 ], [ %18, %15 ]
  %17 = getelementptr inbounds %struct._XMLTreeInfo, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !83
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !137

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %171

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._XMLTreeRoot, ptr %16, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  %28 = icmp eq ptr %27, null
  br i1 %28, label %95, label %29

29:                                               ; preds = %24, %89
  %30 = phi ptr [ %93, %89 ], [ %27, %24 ]
  %31 = phi i64 [ %90, %89 ], [ 0, %24 ]
  %32 = getelementptr ptr, ptr %30, i64 -1
  br label %33

33:                                               ; preds = %33, %29
  %34 = phi i64 [ %38, %33 ], [ 2, %29 ]
  %35 = getelementptr ptr, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  %37 = icmp eq ptr %36, null
  %38 = add nuw nsw i64 %34, 1
  br i1 %37, label %39, label %33, !llvm.loop !138

39:                                               ; preds = %33
  %40 = getelementptr inbounds ptr, ptr %30, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  %42 = icmp eq ptr %41, null
  br i1 %42, label %89, label %43

43:                                               ; preds = %39, %83
  %44 = phi ptr [ %87, %83 ], [ %41, %39 ]
  %45 = phi i64 [ %86, %83 ], [ 1, %39 ]
  %46 = load ptr, ptr %25, align 8, !tbaa !75
  %47 = getelementptr inbounds ptr, ptr %46, i64 %31
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  %49 = getelementptr inbounds ptr, ptr %48, i64 %34
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = getelementptr i8, ptr %50, i64 %45
  %52 = getelementptr i8, ptr %51, i64 -1
  %53 = load i8, ptr %52, align 1, !tbaa !62
  %54 = icmp eq i8 %53, 62
  br i1 %54, label %83, label %55

55:                                               ; preds = %43
  %56 = load ptr, ptr %48, align 8, !tbaa !52
  %57 = load i64, ptr %4, align 8, !tbaa !58
  %58 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %44) #21
  %59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %56) #21
  %60 = add i64 %57, 4096
  %61 = add i64 %60, %58
  %62 = add i64 %61, %59
  %63 = load i64, ptr %3, align 8, !tbaa !58
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  store i64 %62, ptr %3, align 8, !tbaa !58
  %66 = load ptr, ptr %2, align 8, !tbaa !52
  %67 = tail call ptr @ResizeQuantumMemory(ptr noundef %66, i64 noundef %62, i64 noundef 1) #23
  store ptr %67, ptr %2, align 8, !tbaa !52
  %68 = icmp eq ptr %67, null
  br i1 %68, label %182, label %69

69:                                               ; preds = %65, %55
  %70 = load ptr, ptr %2, align 8, !tbaa !52
  %71 = load i64, ptr %4, align 8, !tbaa !58
  %72 = getelementptr inbounds i8, ptr %70, i64 %71
  %73 = load i64, ptr %3, align 8, !tbaa !58
  %74 = load i8, ptr %44, align 1, !tbaa !62
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %75, ptr @.str, ptr @.str.49
  %77 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %72, i64 noundef %73, ptr noundef nonnull @.str.48, ptr noundef %56, ptr noundef nonnull %76, ptr noundef nonnull %44) #20
  %78 = load i64, ptr %4, align 8, !tbaa !58
  %79 = add i64 %78, %77
  store i64 %79, ptr %4, align 8, !tbaa !58
  %80 = load ptr, ptr %25, align 8, !tbaa !75
  %81 = getelementptr inbounds ptr, ptr %80, i64 %31
  %82 = load ptr, ptr %81, align 8, !tbaa !52
  br label %83

83:                                               ; preds = %43, %69
  %84 = phi ptr [ %82, %69 ], [ %48, %43 ]
  %85 = getelementptr inbounds ptr, ptr %84, i64 %45
  %86 = add nuw nsw i64 %45, 1
  %87 = load ptr, ptr %85, align 8, !tbaa !52
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %43, !llvm.loop !139

89:                                               ; preds = %83, %39
  %90 = add nuw nsw i64 %31, 1
  %91 = load ptr, ptr %25, align 8, !tbaa !75
  %92 = getelementptr inbounds ptr, ptr %91, i64 %90
  %93 = load ptr, ptr %92, align 8, !tbaa !52
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %29, !llvm.loop !140

95:                                               ; preds = %89, %24
  %96 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !48
  store ptr null, ptr %21, align 8, !tbaa !46
  store ptr null, ptr %96, align 8, !tbaa !48
  %98 = getelementptr inbounds %struct._XMLTreeRoot, ptr %16, i64 0, i32 5
  %99 = load ptr, ptr %98, align 8, !tbaa !72
  %100 = call fastcc ptr @XMLTreeTagToXML(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 0, ptr noundef %99)
  store ptr %100, ptr %2, align 8, !tbaa !52
  store ptr %22, ptr %21, align 8, !tbaa !46
  store ptr %97, ptr %96, align 8, !tbaa !48
  br i1 %23, label %101, label %177

101:                                              ; preds = %95
  %102 = load ptr, ptr %25, align 8, !tbaa !75
  %103 = load ptr, ptr %102, align 8, !tbaa !52
  %104 = icmp eq ptr %103, null
  br i1 %104, label %177, label %105

105:                                              ; preds = %101, %165
  %106 = phi ptr [ %169, %165 ], [ %103, %101 ]
  %107 = phi i64 [ %166, %165 ], [ 0, %101 ]
  %108 = getelementptr ptr, ptr %106, i64 -1
  br label %109

109:                                              ; preds = %109, %105
  %110 = phi i64 [ %114, %109 ], [ 2, %105 ]
  %111 = getelementptr ptr, ptr %108, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !52
  %113 = icmp eq ptr %112, null
  %114 = add nuw nsw i64 %110, 1
  br i1 %113, label %115, label %109, !llvm.loop !141

115:                                              ; preds = %109
  %116 = getelementptr inbounds ptr, ptr %106, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !52
  %118 = icmp eq ptr %117, null
  br i1 %118, label %165, label %119

119:                                              ; preds = %115, %159
  %120 = phi ptr [ %163, %159 ], [ %117, %115 ]
  %121 = phi i64 [ %162, %159 ], [ 1, %115 ]
  %122 = load ptr, ptr %25, align 8, !tbaa !75
  %123 = getelementptr inbounds ptr, ptr %122, i64 %107
  %124 = load ptr, ptr %123, align 8, !tbaa !52
  %125 = getelementptr inbounds ptr, ptr %124, i64 %110
  %126 = load ptr, ptr %125, align 8, !tbaa !52
  %127 = getelementptr i8, ptr %126, i64 %121
  %128 = getelementptr i8, ptr %127, i64 -1
  %129 = load i8, ptr %128, align 1, !tbaa !62
  %130 = icmp eq i8 %129, 60
  br i1 %130, label %159, label %131

131:                                              ; preds = %119
  %132 = load ptr, ptr %124, align 8, !tbaa !52
  %133 = load i64, ptr %4, align 8, !tbaa !58
  %134 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %120) #21
  %135 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %132) #21
  %136 = add i64 %133, 4096
  %137 = add i64 %136, %134
  %138 = add i64 %137, %135
  %139 = load i64, ptr %3, align 8, !tbaa !58
  %140 = icmp ugt i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %131
  store i64 %138, ptr %3, align 8, !tbaa !58
  %142 = load ptr, ptr %2, align 8, !tbaa !52
  %143 = call ptr @ResizeQuantumMemory(ptr noundef %142, i64 noundef %138, i64 noundef 1) #23
  store ptr %143, ptr %2, align 8, !tbaa !52
  %144 = icmp eq ptr %143, null
  br i1 %144, label %182, label %145

145:                                              ; preds = %141, %131
  %146 = load ptr, ptr %2, align 8, !tbaa !52
  %147 = load i64, ptr %4, align 8, !tbaa !58
  %148 = getelementptr inbounds i8, ptr %146, i64 %147
  %149 = load i64, ptr %3, align 8, !tbaa !58
  %150 = load i8, ptr %120, align 1, !tbaa !62
  %151 = icmp eq i8 %150, 0
  %152 = select i1 %151, ptr @.str, ptr @.str.49
  %153 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %148, i64 noundef %149, ptr noundef nonnull @.str.50, ptr noundef %132, ptr noundef nonnull %152, ptr noundef nonnull %120) #20
  %154 = load i64, ptr %4, align 8, !tbaa !58
  %155 = add i64 %154, %153
  store i64 %155, ptr %4, align 8, !tbaa !58
  %156 = load ptr, ptr %25, align 8, !tbaa !75
  %157 = getelementptr inbounds ptr, ptr %156, i64 %107
  %158 = load ptr, ptr %157, align 8, !tbaa !52
  br label %159

159:                                              ; preds = %119, %145
  %160 = phi ptr [ %158, %145 ], [ %124, %119 ]
  %161 = getelementptr inbounds ptr, ptr %160, i64 %121
  %162 = add nuw nsw i64 %121, 1
  %163 = load ptr, ptr %161, align 8, !tbaa !52
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %119, !llvm.loop !142

165:                                              ; preds = %159, %115
  %166 = add nuw nsw i64 %107, 1
  %167 = load ptr, ptr %25, align 8, !tbaa !75
  %168 = getelementptr inbounds ptr, ptr %167, i64 %166
  %169 = load ptr, ptr %168, align 8, !tbaa !52
  %170 = icmp eq ptr %169, null
  br i1 %170, label %177, label %105, !llvm.loop !143

171:                                              ; preds = %20
  %172 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 7
  %173 = load ptr, ptr %172, align 8, !tbaa !48
  store ptr null, ptr %21, align 8, !tbaa !46
  store ptr null, ptr %172, align 8, !tbaa !48
  %174 = getelementptr inbounds %struct._XMLTreeRoot, ptr %16, i64 0, i32 5
  %175 = load ptr, ptr %174, align 8, !tbaa !72
  %176 = call fastcc ptr @XMLTreeTagToXML(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 0, ptr noundef %175)
  store ptr %176, ptr %2, align 8, !tbaa !52
  store ptr %22, ptr %21, align 8, !tbaa !46
  store ptr %173, ptr %172, align 8, !tbaa !48
  br label %177

177:                                              ; preds = %165, %101, %171, %95
  %178 = load ptr, ptr %2, align 8, !tbaa !52
  %179 = load i64, ptr %4, align 8, !tbaa !58
  %180 = add i64 %179, 1
  %181 = call ptr @ResizeQuantumMemory(ptr noundef %178, i64 noundef %180, i64 noundef 1) #23
  br label %182

182:                                              ; preds = %65, %141, %10, %177
  %183 = phi ptr [ %181, %177 ], [ null, %10 ], [ null, %141 ], [ null, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %183
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @XMLTreeTagToXML(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #0 {
  br label %7

7:                                                ; preds = %232, %6
  %8 = phi ptr [ %0, %6 ], [ %235, %232 ]
  %9 = phi i64 [ %4, %6 ], [ %233, %232 ]
  %10 = getelementptr inbounds %struct._XMLTreeInfo, ptr %8, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._XMLTreeInfo, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi ptr [ %15, %13 ], [ @.str, %7 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 %9
  %19 = getelementptr inbounds %struct._XMLTreeInfo, ptr %8, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !45
  %21 = sub i64 %20, %9
  %22 = tail call fastcc ptr @EncodePredefinedEntities(ptr noundef %18, i64 noundef %21, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
  store ptr %22, ptr %1, align 8, !tbaa !52
  %23 = load i64, ptr %2, align 8, !tbaa !58
  %24 = load ptr, ptr %8, align 8, !tbaa !34
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #21
  %26 = add i64 %23, 4096
  %27 = add i64 %26, %25
  %28 = load i64, ptr %3, align 8, !tbaa !58
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  store i64 %27, ptr %3, align 8, !tbaa !58
  %31 = tail call ptr @ResizeQuantumMemory(ptr noundef %22, i64 noundef %27, i64 noundef 1) #23
  store ptr %31, ptr %1, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %240, label %33

33:                                               ; preds = %30, %16
  %34 = load ptr, ptr %1, align 8, !tbaa !52
  %35 = load i64, ptr %2, align 8, !tbaa !58
  %36 = getelementptr inbounds i8, ptr %34, i64 %35
  %37 = load i64, ptr %3, align 8, !tbaa !58
  %38 = load ptr, ptr %8, align 8, !tbaa !34
  %39 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %36, i64 noundef %37, ptr noundef nonnull @.str.74, ptr noundef %38) #20
  %40 = load i64, ptr %2, align 8, !tbaa !58
  %41 = add i64 %40, %39
  store i64 %41, ptr %2, align 8, !tbaa !58
  %42 = getelementptr inbounds %struct._XMLTreeInfo, ptr %8, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !41
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %95, %33
  %47 = load ptr, ptr %5, align 8, !tbaa !52
  %48 = icmp eq ptr %47, null
  br i1 %48, label %112, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %8, align 8, !tbaa !34
  br label %101

51:                                               ; preds = %33, %95
  %52 = phi ptr [ %99, %95 ], [ %44, %33 ]
  %53 = phi i64 [ %96, %95 ], [ 0, %33 ]
  %54 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %8, ptr noundef nonnull %52)
  %55 = load ptr, ptr %42, align 8, !tbaa !41
  %56 = or disjoint i64 %53, 1
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !52
  %59 = icmp eq ptr %54, %58
  br i1 %59, label %60, label %95

60:                                               ; preds = %51
  %61 = load i64, ptr %2, align 8, !tbaa !58
  %62 = getelementptr inbounds ptr, ptr %55, i64 %53
  %63 = load ptr, ptr %62, align 8, !tbaa !52
  %64 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %63) #21
  %65 = add i64 %61, 4096
  %66 = add i64 %65, %64
  %67 = load i64, ptr %3, align 8, !tbaa !58
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  store i64 %66, ptr %3, align 8, !tbaa !58
  %70 = load ptr, ptr %1, align 8, !tbaa !52
  %71 = tail call ptr @ResizeQuantumMemory(ptr noundef %70, i64 noundef %66, i64 noundef 1) #23
  store ptr %71, ptr %1, align 8, !tbaa !52
  %72 = icmp eq ptr %71, null
  br i1 %72, label %240, label %73

73:                                               ; preds = %69, %60
  %74 = load ptr, ptr %1, align 8, !tbaa !52
  %75 = load i64, ptr %2, align 8, !tbaa !58
  %76 = getelementptr inbounds i8, ptr %74, i64 %75
  %77 = load i64, ptr %3, align 8, !tbaa !58
  %78 = load ptr, ptr %42, align 8, !tbaa !41
  %79 = getelementptr inbounds ptr, ptr %78, i64 %53
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  %81 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %76, i64 noundef %77, ptr noundef nonnull @.str.75, ptr noundef %80) #20
  %82 = load i64, ptr %2, align 8, !tbaa !58
  %83 = add i64 %82, %81
  store i64 %83, ptr %2, align 8, !tbaa !58
  %84 = load ptr, ptr %42, align 8, !tbaa !41
  %85 = getelementptr inbounds ptr, ptr %84, i64 %56
  %86 = load ptr, ptr %85, align 8, !tbaa !52
  %87 = tail call fastcc ptr @EncodePredefinedEntities(ptr noundef %86, i64 noundef -1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1)
  %88 = load ptr, ptr %1, align 8, !tbaa !52
  %89 = load i64, ptr %2, align 8, !tbaa !58
  %90 = getelementptr inbounds i8, ptr %88, i64 %89
  %91 = load i64, ptr %3, align 8, !tbaa !58
  %92 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %90, i64 noundef %91, ptr noundef nonnull @.str.76) #20
  %93 = load i64, ptr %2, align 8, !tbaa !58
  %94 = add i64 %93, %92
  store i64 %94, ptr %2, align 8, !tbaa !58
  br label %95

95:                                               ; preds = %51, %73
  %96 = add nuw nsw i64 %53, 2
  %97 = load ptr, ptr %42, align 8, !tbaa !41
  %98 = getelementptr inbounds ptr, ptr %97, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !52
  %100 = icmp eq ptr %99, null
  br i1 %100, label %46, label %51, !llvm.loop !144

101:                                              ; preds = %49, %107
  %102 = phi ptr [ %47, %49 ], [ %110, %107 ]
  %103 = phi i64 [ 0, %49 ], [ %108, %107 ]
  %104 = load ptr, ptr %102, align 8, !tbaa !52
  %105 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %104, ptr noundef nonnull dereferenceable(1) %50) #21
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %101
  %108 = add nuw nsw i64 %103, 1
  %109 = getelementptr inbounds ptr, ptr %5, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !52
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %101, !llvm.loop !145

112:                                              ; preds = %101, %107, %46
  %113 = phi i64 [ 0, %46 ], [ %103, %101 ], [ %108, %107 ]
  %114 = getelementptr inbounds ptr, ptr %5, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !52
  %116 = icmp eq ptr %115, null
  br i1 %116, label %173, label %117

117:                                              ; preds = %112, %134
  %118 = phi ptr [ %136, %134 ], [ %115, %112 ]
  %119 = phi i64 [ %135, %134 ], [ 1, %112 ]
  %120 = getelementptr inbounds ptr, ptr %118, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !52
  %122 = icmp eq ptr %121, null
  br i1 %122, label %173, label %123

123:                                              ; preds = %117
  %124 = add nuw nsw i64 %119, 1
  %125 = getelementptr inbounds ptr, ptr %118, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !52
  %127 = icmp eq ptr %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %123
  %129 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %8, ptr noundef nonnull %121)
  %130 = load ptr, ptr %114, align 8, !tbaa !52
  %131 = getelementptr inbounds ptr, ptr %130, i64 %124
  %132 = load ptr, ptr %131, align 8, !tbaa !52
  %133 = icmp eq ptr %129, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %123, %128, %151
  %135 = add nuw nsw i64 %119, 3
  %136 = load ptr, ptr %114, align 8, !tbaa !52
  %137 = icmp eq ptr %136, null
  br i1 %137, label %173, label %117, !llvm.loop !146

138:                                              ; preds = %128
  %139 = load i64, ptr %2, align 8, !tbaa !58
  %140 = getelementptr inbounds ptr, ptr %130, i64 %119
  %141 = load ptr, ptr %140, align 8, !tbaa !52
  %142 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %141) #21
  %143 = add i64 %139, 4096
  %144 = add i64 %143, %142
  %145 = load i64, ptr %3, align 8, !tbaa !58
  %146 = icmp ugt i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %138
  store i64 %144, ptr %3, align 8, !tbaa !58
  %148 = load ptr, ptr %1, align 8, !tbaa !52
  %149 = tail call ptr @ResizeQuantumMemory(ptr noundef %148, i64 noundef %144, i64 noundef 1) #23
  store ptr %149, ptr %1, align 8, !tbaa !52
  %150 = icmp eq ptr %149, null
  br i1 %150, label %240, label %151

151:                                              ; preds = %147, %138
  %152 = load ptr, ptr %1, align 8, !tbaa !52
  %153 = load i64, ptr %2, align 8, !tbaa !58
  %154 = getelementptr inbounds i8, ptr %152, i64 %153
  %155 = load i64, ptr %3, align 8, !tbaa !58
  %156 = load ptr, ptr %114, align 8, !tbaa !52
  %157 = getelementptr inbounds ptr, ptr %156, i64 %119
  %158 = load ptr, ptr %157, align 8, !tbaa !52
  %159 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %154, i64 noundef %155, ptr noundef nonnull @.str.75, ptr noundef %158) #20
  %160 = load i64, ptr %2, align 8, !tbaa !58
  %161 = add i64 %160, %159
  store i64 %161, ptr %2, align 8, !tbaa !58
  %162 = load ptr, ptr %114, align 8, !tbaa !52
  %163 = getelementptr inbounds ptr, ptr %162, i64 %124
  %164 = load ptr, ptr %163, align 8, !tbaa !52
  %165 = tail call fastcc ptr @EncodePredefinedEntities(ptr noundef %164, i64 noundef -1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1)
  %166 = load ptr, ptr %1, align 8, !tbaa !52
  %167 = load i64, ptr %2, align 8, !tbaa !58
  %168 = getelementptr inbounds i8, ptr %166, i64 %167
  %169 = load i64, ptr %3, align 8, !tbaa !58
  %170 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %168, i64 noundef %169, ptr noundef nonnull @.str.76) #20
  %171 = load i64, ptr %2, align 8, !tbaa !58
  %172 = add i64 %171, %170
  store i64 %172, ptr %2, align 8, !tbaa !58
  br label %134

173:                                              ; preds = %117, %134, %112
  %174 = load ptr, ptr %1, align 8, !tbaa !52
  %175 = load i64, ptr %2, align 8, !tbaa !58
  %176 = getelementptr inbounds i8, ptr %174, i64 %175
  %177 = load i64, ptr %3, align 8, !tbaa !58
  %178 = getelementptr inbounds %struct._XMLTreeInfo, ptr %8, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !42
  %180 = load i8, ptr %179, align 1, !tbaa !62
  %181 = icmp eq i8 %180, 0
  %182 = select i1 %181, ptr @.str.77, ptr @.str.72
  %183 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %176, i64 noundef %177, ptr noundef nonnull %182) #20
  %184 = load i64, ptr %2, align 8, !tbaa !58
  %185 = add i64 %184, %183
  store i64 %185, ptr %2, align 8, !tbaa !58
  %186 = getelementptr inbounds %struct._XMLTreeInfo, ptr %8, i64 0, i32 8
  %187 = load ptr, ptr %186, align 8, !tbaa !47
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %173
  %190 = tail call fastcc ptr @XMLTreeTagToXML(ptr noundef nonnull %187, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef 0, ptr noundef nonnull %5)
  br label %194

191:                                              ; preds = %173
  %192 = load ptr, ptr %178, align 8, !tbaa !42
  %193 = tail call fastcc ptr @EncodePredefinedEntities(ptr noundef %192, i64 noundef -1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0)
  br label %194

194:                                              ; preds = %191, %189
  %195 = phi ptr [ %193, %191 ], [ %190, %189 ]
  store ptr %195, ptr %1, align 8, !tbaa !52
  %196 = load i64, ptr %2, align 8, !tbaa !58
  %197 = load ptr, ptr %8, align 8, !tbaa !34
  %198 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %197) #21
  %199 = add i64 %196, 4096
  %200 = add i64 %199, %198
  %201 = load i64, ptr %3, align 8, !tbaa !58
  %202 = icmp ugt i64 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %194
  store i64 %200, ptr %3, align 8, !tbaa !58
  %204 = tail call ptr @ResizeQuantumMemory(ptr noundef %195, i64 noundef %200, i64 noundef 1) #23
  store ptr %204, ptr %1, align 8, !tbaa !52
  %205 = icmp eq ptr %204, null
  br i1 %205, label %240, label %206

206:                                              ; preds = %203, %194
  %207 = load ptr, ptr %178, align 8, !tbaa !42
  %208 = load i8, ptr %207, align 1, !tbaa !62
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %219, label %210

210:                                              ; preds = %206
  %211 = load ptr, ptr %1, align 8, !tbaa !52
  %212 = load i64, ptr %2, align 8, !tbaa !58
  %213 = getelementptr inbounds i8, ptr %211, i64 %212
  %214 = load i64, ptr %3, align 8, !tbaa !58
  %215 = load ptr, ptr %8, align 8, !tbaa !34
  %216 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %213, i64 noundef %214, ptr noundef nonnull @.str.78, ptr noundef %215) #20
  %217 = load i64, ptr %2, align 8, !tbaa !58
  %218 = add i64 %217, %216
  store i64 %218, ptr %2, align 8, !tbaa !58
  br label %219

219:                                              ; preds = %210, %206
  %220 = load i8, ptr %17, align 1, !tbaa !62
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %232, label %222

222:                                              ; preds = %219
  %223 = load i64, ptr %19, align 8, !tbaa !45
  br label %224

224:                                              ; preds = %222, %227
  %225 = phi i64 [ 0, %222 ], [ %228, %227 ]
  %226 = icmp eq i64 %225, %223
  br i1 %226, label %232, label %227

227:                                              ; preds = %224
  %228 = add i64 %225, 1
  %229 = getelementptr inbounds i8, ptr %17, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !62
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %224, !llvm.loop !147

232:                                              ; preds = %224, %227, %219
  %233 = phi i64 [ 0, %219 ], [ %223, %224 ], [ %228, %227 ]
  %234 = getelementptr inbounds %struct._XMLTreeInfo, ptr %8, i64 0, i32 7
  %235 = load ptr, ptr %234, align 8, !tbaa !48
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %7

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %17, i64 %233
  %239 = tail call fastcc ptr @EncodePredefinedEntities(ptr noundef nonnull %238, i64 noundef -1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0)
  br label %240

240:                                              ; preds = %69, %147, %237, %203, %30
  %241 = phi ptr [ null, %30 ], [ null, %203 ], [ %239, %237 ], [ null, %147 ], [ null, %69 ]
  ret ptr %241
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @ValidateEntities(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #16 {
  br label %4

4:                                                ; preds = %9, %3
  %5 = phi ptr [ %1, %3 ], [ %10, %9 ]
  %6 = load i8, ptr %5, align 1, !tbaa !62
  switch i8 %6, label %7 [
    i8 0, label %42
    i8 38, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %5, i64 1
  br label %9

9:                                                ; preds = %36, %33, %16, %27, %7
  %10 = phi ptr [ %8, %7 ], [ %12, %27 ], [ %12, %16 ], [ %12, %33 ], [ %12, %36 ]
  br label %4, !llvm.loop !148

11:                                               ; preds = %4
  %12 = getelementptr inbounds i8, ptr %5, i64 1
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %14 = tail call i32 @strncmp(ptr noundef nonnull %12, ptr noundef %0, i64 noundef %13) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %2, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %9, label %19

19:                                               ; preds = %16
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #21
  %21 = tail call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull %12, i64 noundef %20) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %33

23:                                               ; preds = %27
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #21
  %25 = tail call i32 @strncmp(ptr noundef nonnull %31, ptr noundef nonnull %12, i64 noundef %24) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33, !llvm.loop !149

27:                                               ; preds = %19, %23
  %28 = phi i64 [ %29, %23 ], [ 0, %19 ]
  %29 = add nuw nsw i64 %28, 2
  %30 = getelementptr inbounds ptr, ptr %2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %9, label %23, !llvm.loop !149

33:                                               ; preds = %23, %19
  %34 = phi i1 [ %18, %19 ], [ %32, %23 ]
  %35 = phi i64 [ 0, %19 ], [ %29, %23 ]
  br i1 %34, label %9, label %36

36:                                               ; preds = %33
  %37 = or disjoint i64 %35, 1
  %38 = getelementptr inbounds ptr, ptr %2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !52
  %40 = tail call fastcc i32 @ValidateEntities(ptr noundef %0, ptr noundef %39, ptr noundef nonnull %2), !range !110
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %9

42:                                               ; preds = %36, %11, %4
  %43 = phi i32 [ 1, %4 ], [ 0, %11 ], [ 0, %36 ]
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @EncodePredefinedEntities(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = icmp slt i64 %1, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call ptr @CanonicalXMLContent(ptr noundef %0, i32 noundef %5)
  br label %15

10:                                               ; preds = %6
  %11 = tail call ptr @AcquireString(ptr noundef %0) #20
  %12 = getelementptr inbounds i8, ptr %11, i64 %1
  store i8 0, ptr %12, align 1, !tbaa !62
  %13 = tail call ptr @CanonicalXMLContent(ptr noundef %11, i32 noundef %5)
  %14 = tail call ptr @DestroyString(ptr noundef %11) #20
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi ptr [ %9, %8 ], [ %13, %10 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %15
  %19 = load i64, ptr %3, align 8, !tbaa !58
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #21
  %21 = add i64 %19, 4096
  %22 = add i64 %21, %20
  %23 = load i64, ptr %4, align 8, !tbaa !58
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  store i64 %22, ptr %4, align 8, !tbaa !58
  %26 = load ptr, ptr %2, align 8, !tbaa !52
  %27 = tail call ptr @ResizeQuantumMemory(ptr noundef %26, i64 noundef %22, i64 noundef 1) #23
  store ptr %27, ptr %2, align 8, !tbaa !52
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %25, %18
  %30 = load ptr, ptr %2, align 8, !tbaa !52
  %31 = load i64, ptr %3, align 8, !tbaa !58
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  %33 = load i64, ptr %4, align 8, !tbaa !58
  %34 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %32, i64 noundef %33, ptr noundef nonnull @.str.79, ptr noundef nonnull %16) #20
  %35 = load i64, ptr %3, align 8, !tbaa !58
  %36 = add i64 %35, %34
  store i64 %36, ptr %3, align 8, !tbaa !58
  %37 = tail call ptr @DestroyString(ptr noundef nonnull %16) #20
  br label %38

38:                                               ; preds = %15, %29
  %39 = load ptr, ptr %2, align 8, !tbaa !52
  br label %40

40:                                               ; preds = %38, %25
  %41 = phi ptr [ null, %25 ], [ %39, %38 ]
  ret ptr %41
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind allocsize(1,2) }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { noreturn nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"_XMLTreeInfo", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !40, i64 72, !36, i64 80, !39, i64 88}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!35, !36, i64 8}
!42 = !{!35, !36, i64 16}
!43 = !{!35, !40, i64 72}
!44 = !{!35, !39, i64 88}
!45 = !{!35, !39, i64 24}
!46 = !{!35, !36, i64 32}
!47 = !{!35, !36, i64 64}
!48 = !{!35, !36, i64 56}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!36, !36, i64 0}
!53 = distinct !{!53, !50, !51}
!54 = !{!35, !36, i64 48}
!55 = !{!35, !36, i64 40}
!56 = distinct !{!56, !50, !51}
!57 = distinct !{!57, !50, !51}
!58 = !{!39, !39, i64 0}
!59 = distinct !{!59, !50, !51}
!60 = distinct !{!60, !50, !51}
!61 = distinct !{!61, !50, !51}
!62 = !{!37, !37, i64 0}
!63 = distinct !{!63, !50, !51}
!64 = distinct !{!64, !50, !51}
!65 = distinct !{!65, !50, !51}
!66 = distinct !{!66, !50, !51}
!67 = distinct !{!67, !50, !51}
!68 = distinct !{!68, !50, !51}
!69 = !{!70, !36, i64 120}
!70 = !{!"_XMLTreeRoot", !35, i64 0, !36, i64 96, !40, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !40, i64 136, !36, i64 144, !39, i64 152}
!71 = distinct !{!71, !50, !51}
!72 = !{!70, !36, i64 128}
!73 = distinct !{!73, !50, !51}
!74 = distinct !{!74, !50, !51}
!75 = !{!70, !36, i64 112}
!76 = distinct !{!76, !50, !51}
!77 = distinct !{!77, !50, !51}
!78 = distinct !{!78, !50, !51}
!79 = distinct !{!79, !50, !51}
!80 = !{!40, !40, i64 0}
!81 = distinct !{!81, !50, !51}
!82 = distinct !{!82, !50, !51}
!83 = !{!70, !36, i64 32}
!84 = distinct !{!84, !50, !51}
!85 = distinct !{!85, !50, !51}
!86 = distinct !{!86, !50, !51}
!87 = distinct !{!87, !50, !51}
!88 = distinct !{!88, !50, !51}
!89 = distinct !{!89, !50, !51}
!90 = distinct !{!90, !50, !51}
!91 = distinct !{!91, !50, !51}
!92 = distinct !{!92, !50, !51}
!93 = distinct !{!93, !50, !51}
!94 = distinct !{!94, !50, !51}
!95 = distinct !{!95, !50, !51}
!96 = distinct !{!96, !50, !51}
!97 = !{!98, !98, i64 0}
!98 = !{!"short", !37, i64 0}
!99 = !{!70, !36, i64 96}
!100 = distinct !{!100, !50, !51}
!101 = distinct !{!101, !50, !51}
!102 = distinct !{!102, !50, !51}
!103 = distinct !{!103, !50, !51}
!104 = distinct !{!104, !50, !51}
!105 = distinct !{!105, !50, !51}
!106 = distinct !{!106, !50, !51}
!107 = distinct !{!107, !50, !51}
!108 = distinct !{!108, !50, !51}
!109 = distinct !{!109, !50, !51}
!110 = !{i32 0, i32 2}
!111 = distinct !{!111, !50, !51}
!112 = distinct !{!112, !50, !51}
!113 = distinct !{!113, !50, !51}
!114 = !{!70, !40, i64 104}
!115 = distinct !{!115, !51}
!116 = distinct !{!116, !50, !51}
!117 = !{!70, !36, i64 0}
!118 = !{!70, !36, i64 16}
!119 = !{!70, !36, i64 8}
!120 = !{!70, !40, i64 136}
!121 = !{!70, !39, i64 152}
!122 = distinct !{!122, !50, !51}
!123 = distinct !{!123, !50, !51}
!124 = distinct !{!124, !51}
!125 = distinct !{!125, !50, !51}
!126 = distinct !{!126, !50, !51}
!127 = distinct !{!127, !50, !51}
!128 = distinct !{!128, !50, !51}
!129 = distinct !{!129, !50, !51}
!130 = distinct !{!130, !50, !51}
!131 = distinct !{!131, !50, !51}
!132 = distinct !{!132, !50, !51}
!133 = distinct !{!133, !50, !51}
!134 = distinct !{!134, !50, !51}
!135 = distinct !{!135, !50, !51}
!136 = distinct !{!136, !50, !51}
!137 = distinct !{!137, !50, !51}
!138 = distinct !{!138, !50, !51}
!139 = distinct !{!139, !50, !51}
!140 = distinct !{!140, !50, !51}
!141 = distinct !{!141, !50, !51}
!142 = distinct !{!142, !50, !51}
!143 = distinct !{!143, !50, !51}
!144 = distinct !{!144, !50, !51}
!145 = distinct !{!145, !50, !51}
!146 = distinct !{!146, !50, !51}
!147 = distinct !{!147, !50, !51}
!148 = distinct !{!148, !51}
!149 = distinct !{!149, !50, !51}
