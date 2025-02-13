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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AddChildToXMLTree(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = tail call dereferenceable_or_null(96) ptr @AcquireMagickMemory(i64 noundef 96) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 96) #23
  %10 = tail call ptr @ConstantString(ptr noundef %1) #23
  store ptr %10, ptr %6, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._XMLTreeInfo, ptr %6, i64 0, i32 1
  store ptr @sentinel, ptr %11, align 8, !tbaa !41
  %12 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #23
  %13 = getelementptr inbounds %struct._XMLTreeInfo, ptr %6, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !42
  %14 = tail call i32 @IsEventLogging() #23
  %15 = getelementptr inbounds %struct._XMLTreeInfo, ptr %6, i64 0, i32 9
  store i32 %14, ptr %15, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct._XMLTreeInfo, ptr %6, i64 0, i32 11
  store i64 2880220587, ptr %16, align 8, !tbaa !44
  %17 = tail call ptr @InsertTagIntoXMLTree(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %2) #24
  br label %18

18:                                               ; preds = %5, %3, %8
  %19 = phi ptr [ %6, %8 ], [ null, %3 ], [ null, %5 ]
  ret ptr %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
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
  br i1 %11, label %88, label %12

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
  store ptr %1, ptr %29, align 8, !tbaa !51
  %30 = load ptr, ptr %1, align 8, !tbaa !34
  %31 = load ptr, ptr %10, align 8, !tbaa !34
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %30) #25
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %38

34:                                               ; preds = %38
  %35 = load ptr, ptr %41, align 8, !tbaa !34
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %30) #25
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38, !llvm.loop !52

38:                                               ; preds = %27, %34
  %39 = phi ptr [ %41, %34 ], [ %10, %27 ]
  %40 = getelementptr inbounds %struct._XMLTreeInfo, ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !53
  %42 = icmp eq ptr %41, null
  br i1 %42, label %66, label %34, !llvm.loop !52

43:                                               ; preds = %34, %27
  %44 = phi ptr [ null, %27 ], [ %39, %34 ]
  %45 = phi ptr [ %10, %27 ], [ %41, %34 ]
  %46 = getelementptr inbounds %struct._XMLTreeInfo, ptr %45, i64 0, i32 3
  %47 = load i64, ptr %46, align 8, !tbaa !45
  %48 = icmp ugt i64 %47, %2
  br i1 %48, label %60, label %49

49:                                               ; preds = %43, %54
  %50 = phi ptr [ %52, %54 ], [ %45, %43 ]
  %51 = getelementptr inbounds %struct._XMLTreeInfo, ptr %50, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !54
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct._XMLTreeInfo, ptr %52, i64 0, i32 3
  %56 = load i64, ptr %55, align 8, !tbaa !45
  %57 = icmp ugt i64 %56, %2
  br i1 %57, label %58, label %49, !llvm.loop !55

58:                                               ; preds = %49, %54
  %59 = getelementptr inbounds %struct._XMLTreeInfo, ptr %50, i64 0, i32 5
  store ptr %52, ptr %6, align 8, !tbaa !54
  br label %88

60:                                               ; preds = %43
  %61 = icmp eq ptr %44, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct._XMLTreeInfo, ptr %45, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !53
  %65 = getelementptr inbounds %struct._XMLTreeInfo, ptr %44, i64 0, i32 6
  store ptr %64, ptr %65, align 8, !tbaa !53
  br label %66

66:                                               ; preds = %38, %62, %60
  %67 = phi ptr [ %45, %62 ], [ %45, %60 ], [ null, %38 ]
  store ptr %67, ptr %6, align 8, !tbaa !54
  %68 = getelementptr inbounds %struct._XMLTreeInfo, ptr %10, i64 0, i32 3
  %69 = load i64, ptr %68, align 8, !tbaa !45
  %70 = icmp ugt i64 %69, %2
  br i1 %70, label %81, label %75

71:                                               ; preds = %75
  %72 = getelementptr inbounds %struct._XMLTreeInfo, ptr %78, i64 0, i32 3
  %73 = load i64, ptr %72, align 8, !tbaa !45
  %74 = icmp ugt i64 %73, %2
  br i1 %74, label %81, label %75, !llvm.loop !56

75:                                               ; preds = %66, %71
  %76 = phi ptr [ %78, %71 ], [ %10, %66 ]
  %77 = getelementptr inbounds %struct._XMLTreeInfo, ptr %76, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !53
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %71, !llvm.loop !56

80:                                               ; preds = %75
  store ptr null, ptr %5, align 8, !tbaa !53
  br label %85

81:                                               ; preds = %71, %66
  %82 = phi ptr [ null, %66 ], [ %76, %71 ]
  %83 = phi ptr [ %10, %66 ], [ %78, %71 ]
  store ptr %83, ptr %5, align 8, !tbaa !53
  %84 = icmp eq ptr %82, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %80, %81
  %86 = phi ptr [ %76, %80 ], [ %82, %81 ]
  %87 = getelementptr inbounds %struct._XMLTreeInfo, ptr %86, i64 0, i32 6
  br label %88

88:                                               ; preds = %3, %85, %58
  %89 = phi ptr [ %59, %58 ], [ %87, %85 ], [ %9, %3 ]
  store ptr %1, ptr %89, align 8, !tbaa !51
  br label %90

90:                                               ; preds = %88, %81
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AddPathToXMLTree(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  %7 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 238, ptr noundef nonnull @.str.2) #23
  br label %12

12:                                               ; preds = %10, %3
  %13 = call ptr @GetPathComponents(ptr noundef %1, ptr noundef nonnull %6) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %61, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %6, align 8, !tbaa !57
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %15, %40
  %19 = phi ptr [ %34, %40 ], [ %0, %15 ]
  %20 = phi i64 [ %43, %40 ], [ 0, %15 ]
  %21 = getelementptr inbounds ptr, ptr %13, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  call void @GetPathComponent(ptr noundef %22, i32 noundef 7, ptr noundef nonnull %4) #23
  %23 = load ptr, ptr %21, align 8, !tbaa !51
  call void @GetPathComponent(ptr noundef %23, i32 noundef 8, ptr noundef nonnull %5) #23
  %24 = call ptr @GetXMLTreeChild(ptr noundef nonnull %19, ptr noundef nonnull %5) #24
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = call ptr @AddChildToXMLTree(ptr noundef nonnull %19, ptr noundef nonnull %5, i64 noundef %2) #24
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %18, %26
  %30 = phi ptr [ %27, %26 ], [ %24, %18 ]
  %31 = call fastcc i64 @StringToLong(ptr noundef nonnull %4) #24
  br label %32

32:                                               ; preds = %36, %29
  %33 = phi i64 [ %31, %29 ], [ %37, %36 ]
  %34 = phi ptr [ %30, %29 ], [ %38, %36 ]
  %35 = icmp sgt i64 %33, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = add nsw i64 %33, -1
  %38 = call ptr @GetXMLTreeOrdered(ptr noundef nonnull %34) #24
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %32, !llvm.loop !58

40:                                               ; preds = %32
  %41 = load ptr, ptr %21, align 8, !tbaa !51
  %42 = call ptr @DestroyString(ptr noundef %41) #23
  store ptr %42, ptr %21, align 8, !tbaa !51
  %43 = add nuw nsw i64 %20, 1
  %44 = load i64, ptr %6, align 8, !tbaa !57
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %18, label %46, !llvm.loop !59

46:                                               ; preds = %40, %26, %36, %15
  %47 = phi i64 [ 0, %15 ], [ %20, %36 ], [ %43, %40 ], [ %20, %26 ]
  %48 = phi ptr [ %0, %15 ], [ null, %36 ], [ %34, %40 ], [ null, %26 ]
  %49 = load i64, ptr %6, align 8, !tbaa !57
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %46, %51
  %52 = phi i64 [ %56, %51 ], [ %47, %46 ]
  %53 = getelementptr inbounds ptr, ptr %13, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !51
  %55 = call ptr @DestroyString(ptr noundef %54) #23
  store ptr %55, ptr %53, align 8, !tbaa !51
  %56 = add nuw nsw i64 %52, 1
  %57 = load i64, ptr %6, align 8, !tbaa !57
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %51, label %59, !llvm.loop !60

59:                                               ; preds = %51, %46
  %60 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %13) #23
  br label %61

61:                                               ; preds = %12, %59
  %62 = phi ptr [ %48, %59 ], [ null, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #26
  ret ptr %62
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetPathComponents(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetXMLTreeChild(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 928, ptr noundef nonnull @.str.2) #23
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
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %1) #25
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct._XMLTreeInfo, ptr %15, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14

23:                                               ; preds = %14, %19, %8
  %24 = phi ptr [ %10, %8 ], [ %15, %14 ], [ null, %19 ]
  ret ptr %24
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !61 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #23
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetXMLTreeOrdered(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 997, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CanonicalXMLContent(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %5 = tail call fastcc ptr @ConvertLatin1ToUTF8(ptr noundef %0) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %133, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !tbaa !62
  %9 = freeze i8 %8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %7, %16
  %12 = phi i8 [ %19, %16 ], [ %9, %7 ]
  %13 = phi ptr [ %17, %16 ], [ %5, %7 ]
  %14 = icmp ugt i8 %12, 31
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  switch i8 %12, label %21 [
    i8 13, label %16
    i8 10, label %16
    i8 9, label %16
  ]

16:                                               ; preds = %15, %15, %15, %11
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !62
  %19 = freeze i8 %18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %32, label %11, !llvm.loop !63

21:                                               ; preds = %15
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #25
  %23 = call ptr @Base64Encode(ptr noundef nonnull %5, i64 noundef %22, ptr noundef nonnull %4) #23
  %24 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %5) #23
  %25 = icmp eq ptr %23, null
  br i1 %25, label %133, label %26

26:                                               ; preds = %21
  %27 = call ptr @AcquireString(ptr noundef nonnull @.str.3) #23
  store ptr %27, ptr %3, align 8, !tbaa !51
  %28 = call i32 @ConcatenateString(ptr noundef nonnull %3, ptr noundef nonnull %23) #23
  %29 = call ptr @DestroyString(ptr noundef nonnull %23) #23
  %30 = call i32 @ConcatenateString(ptr noundef nonnull %3, ptr noundef nonnull @.str.4) #23
  %31 = load ptr, ptr %3, align 8, !tbaa !51
  br label %133

32:                                               ; preds = %16, %7
  %33 = tail call ptr @AcquireString(ptr noundef null) #23
  store ptr %33, ptr %3, align 8, !tbaa !51
  %34 = load i8, ptr %5, align 1, !tbaa !62
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %127, label %36

36:                                               ; preds = %32
  %37 = icmp eq i32 %1, 0
  br label %38

38:                                               ; preds = %36, %113
  %39 = phi ptr [ %33, %36 ], [ %62, %113 ]
  %40 = phi ptr [ %33, %36 ], [ %114, %113 ]
  %41 = phi ptr [ %33, %36 ], [ %115, %113 ]
  %42 = phi ptr [ %33, %36 ], [ %116, %113 ]
  %43 = phi ptr [ %33, %36 ], [ %117, %113 ]
  %44 = phi ptr [ %33, %36 ], [ %118, %113 ]
  %45 = phi ptr [ %33, %36 ], [ %119, %113 ]
  %46 = phi ptr [ %33, %36 ], [ %120, %113 ]
  %47 = phi ptr [ %33, %36 ], [ %121, %113 ]
  %48 = phi ptr [ %33, %36 ], [ %122, %113 ]
  %49 = phi i8 [ %34, %36 ], [ %125, %113 ]
  %50 = phi i64 [ 4096, %36 ], [ %73, %113 ]
  %51 = phi i64 [ 0, %36 ], [ %123, %113 ]
  %52 = phi ptr [ %5, %36 ], [ %124, %113 ]
  %53 = add nsw i64 %51, 4096
  %54 = icmp sgt i64 %53, %50
  br i1 %54, label %55, label %61

55:                                               ; preds = %38
  %56 = add i64 %50, 4096
  %57 = tail call ptr @ResizeQuantumMemory(ptr noundef %48, i64 noundef %56, i64 noundef 1) #27
  store ptr %57, ptr %3, align 8, !tbaa !51
  %58 = icmp eq ptr %57, null
  br i1 %58, label %133, label %59

59:                                               ; preds = %55
  %60 = load i8, ptr %52, align 1, !tbaa !62
  br label %61

61:                                               ; preds = %59, %38
  %62 = phi ptr [ %57, %59 ], [ %39, %38 ]
  %63 = phi ptr [ %57, %59 ], [ %40, %38 ]
  %64 = phi ptr [ %57, %59 ], [ %41, %38 ]
  %65 = phi ptr [ %57, %59 ], [ %42, %38 ]
  %66 = phi ptr [ %57, %59 ], [ %43, %38 ]
  %67 = phi ptr [ %57, %59 ], [ %44, %38 ]
  %68 = phi ptr [ %57, %59 ], [ %45, %38 ]
  %69 = phi ptr [ %57, %59 ], [ %46, %38 ]
  %70 = phi ptr [ %57, %59 ], [ %47, %38 ]
  %71 = phi ptr [ %57, %59 ], [ %48, %38 ]
  %72 = phi i8 [ %60, %59 ], [ %49, %38 ]
  %73 = phi i64 [ %56, %59 ], [ %50, %38 ]
  switch i8 %72, label %110 [
    i8 38, label %74
    i8 60, label %78
    i8 62, label %82
    i8 34, label %86
    i8 10, label %90
    i8 9, label %98
    i8 13, label %106
  ]

74:                                               ; preds = %61
  %75 = getelementptr inbounds i8, ptr %63, i64 %51
  %76 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %75, i64 noundef %73, ptr noundef nonnull @.str.5) #23
  %77 = add nsw i64 %76, %51
  br label %113

78:                                               ; preds = %61
  %79 = getelementptr inbounds i8, ptr %64, i64 %51
  %80 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %79, i64 noundef %73, ptr noundef nonnull @.str.6) #23
  %81 = add nsw i64 %80, %51
  br label %113

82:                                               ; preds = %61
  %83 = getelementptr inbounds i8, ptr %65, i64 %51
  %84 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %83, i64 noundef %73, ptr noundef nonnull @.str.7) #23
  %85 = add nsw i64 %84, %51
  br label %113

86:                                               ; preds = %61
  %87 = getelementptr inbounds i8, ptr %66, i64 %51
  %88 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %87, i64 noundef %73, ptr noundef nonnull @.str.8) #23
  %89 = add nsw i64 %88, %51
  br label %113

90:                                               ; preds = %61
  br i1 %37, label %91, label %94

91:                                               ; preds = %90
  %92 = add nsw i64 %51, 1
  %93 = getelementptr inbounds i8, ptr %67, i64 %51
  store i8 10, ptr %93, align 1, !tbaa !62
  br label %113

94:                                               ; preds = %90
  %95 = getelementptr inbounds i8, ptr %68, i64 %51
  %96 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %95, i64 noundef %73, ptr noundef nonnull @.str.9) #23
  %97 = add nsw i64 %96, %51
  br label %113

98:                                               ; preds = %61
  br i1 %37, label %99, label %102

99:                                               ; preds = %98
  %100 = add nsw i64 %51, 1
  %101 = getelementptr inbounds i8, ptr %69, i64 %51
  store i8 9, ptr %101, align 1, !tbaa !62
  br label %113

102:                                              ; preds = %98
  %103 = getelementptr inbounds i8, ptr %70, i64 %51
  %104 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %103, i64 noundef %73, ptr noundef nonnull @.str.10) #23
  %105 = add nsw i64 %104, %51
  br label %113

106:                                              ; preds = %61
  %107 = getelementptr inbounds i8, ptr %71, i64 %51
  %108 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %107, i64 noundef %73, ptr noundef nonnull @.str.11) #23
  %109 = add nsw i64 %108, %51
  br label %113

110:                                              ; preds = %61
  %111 = add nsw i64 %51, 1
  %112 = getelementptr inbounds i8, ptr %62, i64 %51
  store i8 %72, ptr %112, align 1, !tbaa !62
  br label %113

113:                                              ; preds = %74, %78, %82, %86, %91, %94, %99, %102, %106, %110
  %114 = phi ptr [ %62, %110 ], [ %63, %106 ], [ %63, %99 ], [ %63, %102 ], [ %63, %91 ], [ %63, %94 ], [ %63, %86 ], [ %63, %82 ], [ %63, %78 ], [ %63, %74 ]
  %115 = phi ptr [ %62, %110 ], [ %64, %106 ], [ %64, %99 ], [ %64, %102 ], [ %64, %91 ], [ %64, %94 ], [ %64, %86 ], [ %64, %82 ], [ %64, %78 ], [ %63, %74 ]
  %116 = phi ptr [ %62, %110 ], [ %65, %106 ], [ %65, %99 ], [ %65, %102 ], [ %65, %91 ], [ %65, %94 ], [ %65, %86 ], [ %65, %82 ], [ %64, %78 ], [ %63, %74 ]
  %117 = phi ptr [ %62, %110 ], [ %66, %106 ], [ %66, %99 ], [ %66, %102 ], [ %66, %91 ], [ %66, %94 ], [ %66, %86 ], [ %65, %82 ], [ %64, %78 ], [ %63, %74 ]
  %118 = phi ptr [ %62, %110 ], [ %67, %106 ], [ %67, %99 ], [ %67, %102 ], [ %67, %91 ], [ %67, %94 ], [ %66, %86 ], [ %65, %82 ], [ %64, %78 ], [ %63, %74 ]
  %119 = phi ptr [ %62, %110 ], [ %68, %106 ], [ %68, %99 ], [ %68, %102 ], [ %67, %91 ], [ %68, %94 ], [ %66, %86 ], [ %65, %82 ], [ %64, %78 ], [ %63, %74 ]
  %120 = phi ptr [ %62, %110 ], [ %69, %106 ], [ %69, %99 ], [ %69, %102 ], [ %67, %91 ], [ %68, %94 ], [ %66, %86 ], [ %65, %82 ], [ %64, %78 ], [ %63, %74 ]
  %121 = phi ptr [ %62, %110 ], [ %70, %106 ], [ %69, %99 ], [ %70, %102 ], [ %67, %91 ], [ %68, %94 ], [ %66, %86 ], [ %65, %82 ], [ %64, %78 ], [ %63, %74 ]
  %122 = phi ptr [ %62, %110 ], [ %71, %106 ], [ %69, %99 ], [ %70, %102 ], [ %67, %91 ], [ %68, %94 ], [ %66, %86 ], [ %65, %82 ], [ %64, %78 ], [ %63, %74 ]
  %123 = phi i64 [ %111, %110 ], [ %109, %106 ], [ %100, %99 ], [ %105, %102 ], [ %92, %91 ], [ %97, %94 ], [ %89, %86 ], [ %85, %82 ], [ %81, %78 ], [ %77, %74 ]
  %124 = getelementptr inbounds i8, ptr %52, i64 1
  %125 = load i8, ptr %124, align 1, !tbaa !62
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %38, !llvm.loop !64

127:                                              ; preds = %113, %32
  %128 = phi ptr [ %33, %32 ], [ %62, %113 ]
  %129 = phi i64 [ 0, %32 ], [ %123, %113 ]
  %130 = getelementptr inbounds i8, ptr %128, i64 %129
  store i8 0, ptr %130, align 1, !tbaa !62
  %131 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %5) #23
  %132 = load ptr, ptr %3, align 8, !tbaa !51
  br label %133

133:                                              ; preds = %55, %21, %2, %127, %26
  %134 = phi ptr [ %31, %26 ], [ %132, %127 ], [ null, %2 ], [ null, %21 ], [ null, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret ptr %134
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ConvertLatin1ToUTF8(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !65 {
  %2 = load i8, ptr %0, align 1, !tbaa !62
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %1, %4
  %5 = phi i8 [ %12, %4 ], [ %2, %1 ]
  %6 = phi i64 [ %10, %4 ], [ 0, %1 ]
  %7 = phi ptr [ %11, %4 ], [ %0, %1 ]
  %8 = icmp sgt i8 %5, -1
  %9 = select i1 %8, i64 1, i64 2
  %10 = add i64 %9, %6
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !62
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %4, !llvm.loop !66

14:                                               ; preds = %4
  %15 = icmp eq i64 %10, -1
  br i1 %15, label %45, label %16

16:                                               ; preds = %1, %14
  %17 = phi i64 [ %10, %14 ], [ 0, %1 ]
  %18 = add nuw i64 %17, 1
  %19 = tail call ptr @AcquireQuantumMemory(i64 noundef %18, i64 noundef 1) #28
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %16
  %22 = load i8, ptr %0, align 1, !tbaa !62
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %21, %37
  %25 = phi i8 [ %41, %37 ], [ %22, %21 ]
  %26 = phi ptr [ %39, %37 ], [ %19, %21 ]
  %27 = phi ptr [ %40, %37 ], [ %0, %21 ]
  %28 = icmp sgt i8 %25, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %26, i64 1
  br label %37

31:                                               ; preds = %24
  %32 = lshr i8 %25, 6
  %33 = or disjoint i8 %32, -64
  %34 = getelementptr inbounds i8, ptr %26, i64 1
  %35 = and i8 %25, -65
  %36 = getelementptr inbounds i8, ptr %26, i64 2
  store i8 %35, ptr %34, align 1, !tbaa !62
  br label %37

37:                                               ; preds = %29, %31
  %38 = phi i8 [ %25, %29 ], [ %33, %31 ]
  %39 = phi ptr [ %30, %29 ], [ %36, %31 ]
  store i8 %38, ptr %26, align 1
  %40 = getelementptr inbounds i8, ptr %27, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !62
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %24, !llvm.loop !67

43:                                               ; preds = %37, %21
  %44 = phi ptr [ %19, %21 ], [ %39, %37 ]
  store i8 0, ptr %44, align 1, !tbaa !62
  br label %45

45:                                               ; preds = %14, %16, %43
  %46 = phi ptr [ %19, %43 ], [ null, %16 ], [ null, %14 ]
  ret ptr %46
}

; Function Attrs: optsize
declare ptr @Base64Encode(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @DestroyXMLTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 576, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %5, %1
  tail call fastcc void @DestroyXMLTreeChild(ptr noundef nonnull %0) #24
  tail call fastcc void @DestroyXMLTreeOrdered(ptr noundef nonnull %0) #24
  tail call fastcc void @DestroyXMLTreeRoot(ptr noundef nonnull %0) #24
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  tail call fastcc void @DestroyXMLTreeAttributes(ptr noundef %9) #24
  store ptr null, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = tail call ptr @DestroyString(ptr noundef %11) #23
  store ptr %12, ptr %10, align 8, !tbaa !42
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = tail call ptr @DestroyString(ptr noundef %13) #23
  store ptr %14, ptr %0, align 8, !tbaa !34
  %15 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #23
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DestroyXMLTreeChild(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !68 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %11
  %6 = phi ptr [ %12, %11 ], [ %3, %1 ]
  %7 = phi ptr [ %13, %11 ], [ null, %1 ]
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %6, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5, %17
  %12 = phi ptr [ %9, %5 ], [ %7, %17 ]
  %13 = phi ptr [ %6, %5 ], [ null, %17 ]
  br label %5, !llvm.loop !69

14:                                               ; preds = %5
  %15 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %6) #24
  %16 = icmp eq ptr %7, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._XMLTreeInfo, ptr %7, i64 0, i32 8
  store ptr null, ptr %18, align 8, !tbaa !47
  br label %11

19:                                               ; preds = %14, %1
  store ptr null, ptr %2, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DestroyXMLTreeOrdered(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !70 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %11
  %6 = phi ptr [ %12, %11 ], [ %3, %1 ]
  %7 = phi ptr [ %13, %11 ], [ null, %1 ]
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %6, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5, %17
  %12 = phi ptr [ %9, %5 ], [ %7, %17 ]
  %13 = phi ptr [ %6, %5 ], [ null, %17 ]
  br label %5, !llvm.loop !71

14:                                               ; preds = %5
  %15 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %6) #24
  %16 = icmp eq ptr %7, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._XMLTreeInfo, ptr %7, i64 0, i32 7
  store ptr null, ptr %18, align 8, !tbaa !48
  br label %11

19:                                               ; preds = %14, %1
  store ptr null, ptr %2, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DestroyXMLTreeRoot(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !72 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 525, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %131

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = getelementptr inbounds ptr, ptr %13, i64 10
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %11, %17
  %18 = phi ptr [ %27, %17 ], [ %13, %11 ]
  %19 = phi i64 [ %26, %17 ], [ 10, %11 ]
  %20 = or disjoint i64 %19, 1
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = tail call ptr @DestroyString(ptr noundef %22) #23
  %24 = load ptr, ptr %12, align 8, !tbaa !73
  %25 = getelementptr inbounds ptr, ptr %24, i64 %20
  store ptr %23, ptr %25, align 8, !tbaa !51
  %26 = add nuw nsw i64 %19, 2
  %27 = load ptr, ptr %12, align 8, !tbaa !73
  %28 = getelementptr inbounds ptr, ptr %27, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %17, !llvm.loop !75

31:                                               ; preds = %17, %11
  %32 = phi ptr [ %13, %11 ], [ %27, %17 ]
  %33 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %32) #23
  store ptr %33, ptr %12, align 8, !tbaa !73
  %34 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  %37 = icmp eq ptr %36, null
  br i1 %37, label %82, label %38

38:                                               ; preds = %31, %70
  %39 = phi ptr [ %75, %70 ], [ %36, %31 ]
  %40 = phi i64 [ %72, %70 ], [ 0, %31 ]
  %41 = load ptr, ptr %39, align 8, !tbaa !51
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call ptr @DestroyString(ptr noundef nonnull %41) #23
  store ptr %44, ptr %39, align 8, !tbaa !51
  br label %45

45:                                               ; preds = %43, %38
  %46 = getelementptr inbounds ptr, ptr %39, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !51
  %48 = icmp eq ptr %47, null
  br i1 %48, label %70, label %49

49:                                               ; preds = %45, %65
  %50 = phi ptr [ %68, %65 ], [ %47, %45 ]
  %51 = phi ptr [ %67, %65 ], [ %46, %45 ]
  %52 = phi i64 [ %66, %65 ], [ 1, %45 ]
  %53 = tail call ptr @DestroyString(ptr noundef nonnull %50) #23
  store ptr %53, ptr %51, align 8, !tbaa !51
  %54 = getelementptr ptr, ptr %51, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !51
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = tail call ptr @DestroyString(ptr noundef nonnull %55) #23
  store ptr %58, ptr %54, align 8, !tbaa !51
  br label %59

59:                                               ; preds = %57, %49
  %60 = getelementptr ptr, ptr %51, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !51
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = tail call ptr @DestroyString(ptr noundef nonnull %61) #23
  store ptr %64, ptr %60, align 8, !tbaa !51
  br label %65

65:                                               ; preds = %59, %63
  %66 = add nuw nsw i64 %52, 3
  %67 = getelementptr inbounds ptr, ptr %39, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !51
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %49, !llvm.loop !77

70:                                               ; preds = %65, %45
  %71 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %39) #23
  %72 = add nuw nsw i64 %40, 1
  %73 = load ptr, ptr %34, align 8, !tbaa !76
  %74 = getelementptr inbounds ptr, ptr %73, i64 %72
  %75 = load ptr, ptr %74, align 8, !tbaa !51
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %38, !llvm.loop !78

77:                                               ; preds = %70
  %78 = load ptr, ptr %73, align 8, !tbaa !51
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %73) #23
  store ptr %81, ptr %34, align 8, !tbaa !76
  br label %82

82:                                               ; preds = %31, %80, %77
  %83 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !79
  %85 = load ptr, ptr %84, align 8, !tbaa !51
  %86 = icmp eq ptr %85, null
  br i1 %86, label %131, label %87

87:                                               ; preds = %82, %107
  %88 = phi ptr [ %127, %107 ], [ %85, %82 ]
  %89 = phi i64 [ %124, %107 ], [ 0, %82 ]
  %90 = load ptr, ptr %88, align 8, !tbaa !51
  %91 = icmp eq ptr %90, null
  br i1 %91, label %107, label %92

92:                                               ; preds = %87, %92
  %93 = phi ptr [ %105, %92 ], [ %90, %87 ]
  %94 = phi i64 [ %100, %92 ], [ 0, %87 ]
  %95 = tail call ptr @DestroyString(ptr noundef nonnull %93) #23
  %96 = load ptr, ptr %83, align 8, !tbaa !79
  %97 = getelementptr inbounds ptr, ptr %96, i64 %89
  %98 = load ptr, ptr %97, align 8, !tbaa !51
  %99 = getelementptr inbounds ptr, ptr %98, i64 %94
  store ptr %95, ptr %99, align 8, !tbaa !51
  %100 = add nuw nsw i64 %94, 1
  %101 = load ptr, ptr %83, align 8, !tbaa !79
  %102 = getelementptr inbounds ptr, ptr %101, i64 %89
  %103 = load ptr, ptr %102, align 8, !tbaa !51
  %104 = getelementptr inbounds ptr, ptr %103, i64 %100
  %105 = load ptr, ptr %104, align 8, !tbaa !51
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %92, !llvm.loop !80

107:                                              ; preds = %92, %87
  %108 = phi i64 [ 0, %87 ], [ %100, %92 ]
  %109 = phi ptr [ %88, %87 ], [ %103, %92 ]
  %110 = add nuw nsw i64 %108, 1
  %111 = getelementptr inbounds ptr, ptr %109, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !51
  %113 = tail call ptr @DestroyString(ptr noundef %112) #23
  %114 = load ptr, ptr %83, align 8, !tbaa !79
  %115 = getelementptr inbounds ptr, ptr %114, i64 %89
  %116 = load ptr, ptr %115, align 8, !tbaa !51
  %117 = getelementptr inbounds ptr, ptr %116, i64 %110
  store ptr %113, ptr %117, align 8, !tbaa !51
  %118 = load ptr, ptr %83, align 8, !tbaa !79
  %119 = getelementptr inbounds ptr, ptr %118, i64 %89
  %120 = load ptr, ptr %119, align 8, !tbaa !51
  %121 = tail call ptr @RelinquishMagickMemory(ptr noundef %120) #23
  %122 = load ptr, ptr %83, align 8, !tbaa !79
  %123 = getelementptr inbounds ptr, ptr %122, i64 %89
  store ptr %121, ptr %123, align 8, !tbaa !51
  %124 = add nuw nsw i64 %89, 1
  %125 = load ptr, ptr %83, align 8, !tbaa !79
  %126 = getelementptr inbounds ptr, ptr %125, i64 %124
  %127 = load ptr, ptr %126, align 8, !tbaa !51
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %87, !llvm.loop !81

129:                                              ; preds = %107
  %130 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %125) #23
  store ptr %130, ptr %83, align 8, !tbaa !79
  br label %131

131:                                              ; preds = %82, %129, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DestroyXMLTreeAttributes(ptr noundef %0) unnamed_addr #0 !PGOFuncName !82 {
  %2 = icmp eq ptr %0, null
  %3 = icmp eq ptr %0, @sentinel
  %4 = or i1 %2, %3
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !51
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %5, %19
  %9 = phi ptr [ %22, %19 ], [ %6, %5 ]
  %10 = phi ptr [ %21, %19 ], [ %0, %5 ]
  %11 = phi i64 [ %20, %19 ], [ 0, %5 ]
  %12 = tail call ptr @DestroyString(ptr noundef nonnull %9) #23
  store ptr %12, ptr %10, align 8, !tbaa !51
  %13 = or disjoint i64 %11, 1
  %14 = getelementptr inbounds ptr, ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %8
  %18 = tail call ptr @DestroyString(ptr noundef nonnull %15) #23
  store ptr %18, ptr %14, align 8, !tbaa !51
  br label %19

19:                                               ; preds = %8, %17
  %20 = add nuw nsw i64 %11, 2
  %21 = getelementptr inbounds ptr, ptr %0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %8, !llvm.loop !83

24:                                               ; preds = %19, %5
  %25 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #23
  br label %26

26:                                               ; preds = %1, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define hidden ptr @FileToXML(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  %4 = load ptr, ptr @stdin, align 8, !tbaa !51
  %5 = tail call i32 @fileno(ptr noundef %4) #23
  %6 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef nonnull @.str.12) #23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @open_utf8(ptr noundef %0) #24
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %5, %2 ]
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %126, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @lseek(i32 noundef %11, i64 noundef 0, i32 noundef 2) #23
  %15 = load ptr, ptr @stdin, align 8, !tbaa !51
  %16 = tail call i32 @fileno(ptr noundef %15) #23
  %17 = icmp eq i32 %11, %16
  %18 = icmp slt i64 %14, 0
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %80

20:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #26
  %21 = tail call i64 @lseek(i32 noundef %11, i64 noundef 0, i32 noundef 0) #23
  %22 = call i32 @fstat(i32 noundef %11, ptr noundef nonnull %3) #23
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = select i1 %23, i1 %26, i1 false
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = tail call fastcc i64 @MagickMin(i64 noundef %25, i64 noundef 262142) #24
  br label %30

30:                                               ; preds = %28, %20
  %31 = phi i64 [ %29, %28 ], [ 262142, %20 ]
  %32 = tail call ptr @AcquireQuantumMemory(i64 noundef %31, i64 noundef 1) #28
  %33 = icmp eq ptr %32, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %30
  %35 = sub i64 -2, %31
  %36 = add i64 %31, 1
  br label %39

37:                                               ; preds = %54
  %38 = icmp eq ptr %56, null
  br i1 %38, label %59, label %39, !llvm.loop !84

39:                                               ; preds = %34, %37
  %40 = phi i64 [ 0, %34 ], [ %57, %37 ]
  %41 = phi ptr [ %32, %34 ], [ %56, %37 ]
  %42 = getelementptr inbounds i8, ptr %41, i64 %40
  %43 = tail call i64 @read(i32 noundef %11, ptr noundef nonnull %42, i64 noundef %31) #23
  %44 = icmp slt i64 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = tail call ptr @__errno_location() #29
  %47 = load i32, ptr %46, align 4, !tbaa !85
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %59

49:                                               ; preds = %45, %39
  %50 = phi i64 [ 0, %45 ], [ %43, %39 ]
  %51 = icmp ult i64 %35, %40
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %41) #23
  br label %59

54:                                               ; preds = %49
  %55 = add i64 %36, %40
  %56 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %41, i64 noundef %55, i64 noundef 1) #27
  %57 = add i64 %50, %40
  %58 = icmp ult i64 %57, %1
  br i1 %58, label %37, label %59, !llvm.loop !84

59:                                               ; preds = %37, %45, %54, %30, %52
  %60 = phi i64 [ %40, %52 ], [ 0, %30 ], [ %57, %37 ], [ %40, %45 ], [ %40, %54 ]
  %61 = phi ptr [ %53, %52 ], [ null, %30 ], [ null, %37 ], [ %41, %45 ], [ %56, %54 ]
  %62 = phi i64 [ %50, %52 ], [ 0, %30 ], [ %50, %37 ], [ 0, %45 ], [ %50, %54 ]
  %63 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef nonnull @.str.12) #23
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = tail call i32 @close(i32 noundef %11) #23
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi i32 [ %66, %65 ], [ %11, %59 ]
  %69 = icmp eq ptr %61, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = icmp eq i32 %68, -1
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %61) #23
  br label %78

74:                                               ; preds = %70
  %75 = add i64 %62, %60
  %76 = tail call fastcc i64 @MagickMin(i64 noundef %75, i64 noundef %1) #24
  %77 = getelementptr inbounds i8, ptr %61, i64 %76
  store i8 0, ptr %77, align 1, !tbaa !62
  br label %78

78:                                               ; preds = %67, %74, %72
  %79 = phi ptr [ null, %72 ], [ %61, %74 ], [ null, %67 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #26
  br label %126

80:                                               ; preds = %13
  %81 = tail call fastcc i64 @MagickMin(i64 noundef %14, i64 noundef %1) #24
  %82 = icmp ult i64 %81, -4095
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = add i64 %81, 4096
  %85 = tail call ptr @AcquireQuantumMemory(i64 noundef %84, i64 noundef 1) #28
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %80, %83
  %88 = tail call i32 @close(i32 noundef %11) #23
  br label %126

89:                                               ; preds = %83
  %90 = tail call ptr @MapBlob(i32 noundef %11, i32 noundef 0, i64 noundef 0, i64 noundef %81) #23
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %85, ptr nonnull align 1 %90, i64 %81, i1 false)
  %93 = tail call i32 @UnmapBlob(ptr noundef nonnull %90, i64 noundef %81) #23
  br label %115

94:                                               ; preds = %89
  %95 = tail call i64 @lseek(i32 noundef %11, i64 noundef 0, i32 noundef 0) #23
  %96 = icmp eq i64 %81, 0
  br i1 %96, label %115, label %97

97:                                               ; preds = %94, %108
  %98 = phi i64 [ %110, %108 ], [ 0, %94 ]
  %99 = getelementptr inbounds i8, ptr %85, i64 %98
  %100 = sub i64 %81, %98
  %101 = tail call fastcc i64 @MagickMin(i64 noundef %100, i64 noundef 9223372036854775807) #24
  %102 = tail call i64 @read(i32 noundef %11, ptr noundef nonnull %99, i64 noundef %101) #23
  %103 = icmp slt i64 %102, 1
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = tail call ptr @__errno_location() #29
  %106 = load i32, ptr %105, align 4, !tbaa !85
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %112

108:                                              ; preds = %97, %104
  %109 = phi i64 [ 0, %104 ], [ %102, %97 ]
  %110 = add i64 %109, %98
  %111 = icmp ult i64 %110, %81
  br i1 %111, label %97, label %115, !llvm.loop !86

112:                                              ; preds = %104
  %113 = tail call i32 @close(i32 noundef %11) #23
  %114 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %85) #23
  br label %126

115:                                              ; preds = %108, %94, %92
  %116 = getelementptr inbounds i8, ptr %85, i64 %81
  store i8 0, ptr %116, align 1, !tbaa !62
  %117 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef nonnull @.str.12) #23
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = tail call i32 @close(i32 noundef %11) #23
  br label %121

121:                                              ; preds = %119, %115
  %122 = phi i32 [ %120, %119 ], [ %11, %115 ]
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %85) #23
  br label %126

126:                                              ; preds = %121, %124, %10, %112, %87, %78
  %127 = phi ptr [ %79, %78 ], [ null, %87 ], [ null, %112 ], [ null, %10 ], [ %125, %124 ], [ %85, %121 ]
  ret ptr %127
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @open_utf8(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !87 {
  %2 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0, i32 noundef 0) #23
  ret i32 %2
}

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0, i64 noundef %1) unnamed_addr #11 !PGOFuncName !88 {
  %3 = tail call i64 @llvm.umin.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: optsize
declare i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetNextXMLTreeTag(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 773, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetXMLTreeAttribute(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 818, ptr noundef nonnull @.str.2) #23
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %72, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %21, %12
  br label %29

16:                                               ; preds = %12, %21
  %17 = phi ptr [ %24, %21 ], [ %13, %12 ]
  %18 = phi i64 [ %22, %21 ], [ 0, %12 ]
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %1) #25
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = add nuw nsw i64 %18, 2
  %23 = getelementptr inbounds ptr, ptr %10, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = icmp eq ptr %24, null
  br i1 %25, label %15, label %16, !llvm.loop !89

26:                                               ; preds = %16
  %27 = or disjoint i64 %18, 1
  %28 = getelementptr inbounds ptr, ptr %10, i64 %27
  br label %69

29:                                               ; preds = %15, %29
  %30 = phi ptr [ %32, %29 ], [ %0, %15 ]
  %31 = getelementptr inbounds %struct._XMLTreeInfo, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !90
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %29, !llvm.loop !91

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct._XMLTreeRoot, ptr %30, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !76
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  %38 = icmp eq ptr %37, null
  br i1 %38, label %72, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 8, !tbaa !34
  br label %46

41:                                               ; preds = %46
  %42 = add nuw nsw i64 %48, 1
  %43 = getelementptr inbounds ptr, ptr %36, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !51
  %45 = icmp eq ptr %44, null
  br i1 %45, label %72, label %46, !llvm.loop !92

46:                                               ; preds = %39, %41
  %47 = phi ptr [ %37, %39 ], [ %44, %41 ]
  %48 = phi i64 [ 0, %39 ], [ %42, %41 ]
  %49 = load ptr, ptr %47, align 8, !tbaa !51
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) %40) #25
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %41

52:                                               ; preds = %46
  %53 = getelementptr inbounds ptr, ptr %47, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !51
  %55 = icmp eq ptr %54, null
  br i1 %55, label %72, label %56

56:                                               ; preds = %52, %61
  %57 = phi ptr [ %64, %61 ], [ %54, %52 ]
  %58 = phi i64 [ %62, %61 ], [ 1, %52 ]
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(1) %1) #25
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = add nuw nsw i64 %58, 3
  %63 = getelementptr inbounds ptr, ptr %47, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !51
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %56, !llvm.loop !93

66:                                               ; preds = %56
  %67 = getelementptr inbounds ptr, ptr %47, i64 %58
  %68 = getelementptr ptr, ptr %67, i64 1
  br label %69

69:                                               ; preds = %26, %66
  %70 = phi ptr [ %68, %66 ], [ %28, %26 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !51
  br label %72

72:                                               ; preds = %41, %61, %69, %34, %52, %8
  %73 = phi ptr [ null, %8 ], [ null, %52 ], [ null, %34 ], [ %71, %69 ], [ null, %61 ], [ null, %41 ]
  ret ptr %73
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetXMLTreeAttributes(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 881, ptr noundef nonnull @.str.2) #23
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %28, %15 ], [ %13, %12 ]
  %17 = phi i64 [ %25, %15 ], [ 0, %12 ]
  %18 = tail call ptr @ConstantString(ptr noundef nonnull %16) #23
  %19 = load ptr, ptr %9, align 8, !tbaa !41
  %20 = or disjoint i64 %17, 1
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = tail call ptr @ConstantString(ptr noundef %22) #23
  %24 = tail call i32 @AddValueToSplayTree(ptr noundef %1, ptr noundef %18, ptr noundef %23) #23
  %25 = add nuw nsw i64 %17, 2
  %26 = load ptr, ptr %9, align 8, !tbaa !41
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %15, !llvm.loop !94

30:                                               ; preds = %15, %12, %8
  ret i32 1
}

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetXMLTreeContent(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 965, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetXMLTreePath(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  %6 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1049, ptr noundef nonnull @.str.2) #23
  br label %11

11:                                               ; preds = %9, %2
  %12 = call ptr @GetPathComponents(ptr noundef %1, ptr noundef nonnull %5) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %56, label %14

14:                                               ; preds = %11
  %15 = load i64, ptr %5, align 8, !tbaa !57
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %14, %35
  %18 = phi ptr [ %29, %35 ], [ %0, %14 ]
  %19 = phi i64 [ %38, %35 ], [ 0, %14 ]
  %20 = getelementptr inbounds ptr, ptr %12, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  call void @GetPathComponent(ptr noundef %21, i32 noundef 7, ptr noundef nonnull %3) #23
  %22 = load ptr, ptr %20, align 8, !tbaa !51
  call void @GetPathComponent(ptr noundef %22, i32 noundef 8, ptr noundef nonnull %4) #23
  %23 = call ptr @GetXMLTreeChild(ptr noundef nonnull %18, ptr noundef nonnull %4) #24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %17
  %26 = call fastcc i64 @StringToLong(ptr noundef nonnull %3) #24
  br label %27

27:                                               ; preds = %31, %25
  %28 = phi i64 [ %26, %25 ], [ %32, %31 ]
  %29 = phi ptr [ %23, %25 ], [ %33, %31 ]
  %30 = icmp sgt i64 %28, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = add nsw i64 %28, -1
  %33 = call ptr @GetXMLTreeOrdered(ptr noundef nonnull %29) #24
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %27, !llvm.loop !95

35:                                               ; preds = %27
  %36 = load ptr, ptr %20, align 8, !tbaa !51
  %37 = call ptr @DestroyString(ptr noundef %36) #23
  store ptr %37, ptr %20, align 8, !tbaa !51
  %38 = add nuw nsw i64 %19, 1
  %39 = load i64, ptr %5, align 8, !tbaa !57
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %17, label %41, !llvm.loop !96

41:                                               ; preds = %35, %17, %31, %14
  %42 = phi i64 [ 0, %14 ], [ %19, %31 ], [ %38, %35 ], [ %19, %17 ]
  %43 = phi ptr [ %0, %14 ], [ null, %31 ], [ %29, %35 ], [ null, %17 ]
  %44 = load i64, ptr %5, align 8, !tbaa !57
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %41, %46
  %47 = phi i64 [ %51, %46 ], [ %42, %41 ]
  %48 = getelementptr inbounds ptr, ptr %12, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !51
  %50 = call ptr @DestroyString(ptr noundef %49) #23
  store ptr %50, ptr %48, align 8, !tbaa !51
  %51 = add nuw nsw i64 %47, 1
  %52 = load i64, ptr %5, align 8, !tbaa !57
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %46, label %54, !llvm.loop !97

54:                                               ; preds = %46, %41
  %55 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %12) #23
  br label %56

56:                                               ; preds = %11, %54
  %57 = phi ptr [ %43, %54 ], [ null, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #26
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @GetXMLTreeProcessingInstructions(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1114, ptr noundef nonnull @.str.2) #23
  br label %8

8:                                                ; preds = %6, %2
  br label %9

9:                                                ; preds = %8, %9
  %10 = phi ptr [ %12, %9 ], [ %0, %8 ]
  %11 = getelementptr inbounds %struct._XMLTreeInfo, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !98

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._XMLTreeRoot, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %24

19:                                               ; preds = %24
  %20 = add nuw nsw i64 %26, 1
  %21 = getelementptr inbounds ptr, ptr %16, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24, !llvm.loop !99

24:                                               ; preds = %14, %19
  %25 = phi ptr [ %22, %19 ], [ %17, %14 ]
  %26 = phi i64 [ %20, %19 ], [ 0, %14 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !51
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %1) #25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %19

30:                                               ; preds = %24
  %31 = getelementptr inbounds ptr, ptr %25, i64 1
  br label %32

32:                                               ; preds = %19, %14, %30
  %33 = phi ptr [ %31, %30 ], [ @sentinel, %14 ], [ @sentinel, %19 ]
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetXMLTreeSibling(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1155, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetXMLTreeTag(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1187, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @NewXMLTree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %0, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5, %2
  %9 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1967, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #23
  br label %397

10:                                               ; preds = %5
  %11 = tail call ptr @NewXMLTreeTag(ptr noundef null) #24
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  store i64 %12, ptr %3, align 8, !tbaa !57
  %13 = call fastcc ptr @ConvertUTF16ToUTF8(ptr noundef nonnull %0, ptr noundef nonnull %3) #24
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1976, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15) #23
  br label %397

17:                                               ; preds = %10
  %18 = load i64, ptr %3, align 8, !tbaa !57
  %19 = getelementptr i8, ptr %13, i64 %18
  %20 = getelementptr i8, ptr %19, i64 -1
  %21 = load i8, ptr %20, align 1, !tbaa !62
  store i8 0, ptr %20, align 1, !tbaa !62
  br label %22

22:                                               ; preds = %32, %17
  %23 = phi ptr [ %13, %17 ], [ %33, %32 ]
  %24 = load i8, ptr %23, align 1, !tbaa !62
  switch i8 %24, label %32 [
    i8 0, label %34
    i8 60, label %25
  ]

25:                                               ; preds = %22
  %26 = tail call ptr @__ctype_b_loc() #29
  %27 = icmp ne i8 %21, 62
  %28 = icmp eq i8 %21, 62
  %29 = getelementptr inbounds %struct._XMLTreeRoot, ptr %11, i64 0, i32 1
  %30 = getelementptr inbounds %struct._XMLTreeRoot, ptr %11, i64 0, i32 5
  %31 = getelementptr inbounds %struct._XMLTreeRoot, ptr %11, i64 0, i32 4
  br label %37

32:                                               ; preds = %22
  %33 = getelementptr inbounds i8, ptr %23, i64 1
  br label %22, !llvm.loop !100

34:                                               ; preds = %22
  %35 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1987, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #23
  %36 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  br label %397

37:                                               ; preds = %374, %25
  %38 = phi ptr [ null, %25 ], [ %368, %374 ]
  %39 = phi ptr [ %23, %25 ], [ %375, %374 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !62
  %42 = load ptr, ptr %26, align 8, !tbaa !51
  %43 = zext i8 %41 to i64
  %44 = getelementptr inbounds i16, ptr %42, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !101
  %46 = and i16 %45, 1024
  %47 = icmp ne i16 %46, 0
  %48 = icmp eq i8 %41, 95
  %49 = or i1 %48, %47
  br i1 %49, label %54, label %50

50:                                               ; preds = %37
  %51 = icmp eq i8 %41, 58
  %52 = icmp slt i8 %41, 0
  %53 = or i1 %51, %52
  br i1 %53, label %54, label %226

54:                                               ; preds = %50, %37
  %55 = load ptr, ptr %29, align 8, !tbaa !103
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2006, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #23
  %59 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  br label %397

60:                                               ; preds = %54
  %61 = tail call i64 @strcspn(ptr noundef nonnull %40, ptr noundef nonnull @.str.16) #25
  %62 = getelementptr inbounds i8, ptr %40, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !62
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds i16, ptr %42, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !101
  %67 = and i16 %66, 8192
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %60, %69
  %70 = phi ptr [ %71, %69 ], [ %62, %60 ]
  %71 = getelementptr inbounds i8, ptr %70, i64 1
  store i8 0, ptr %70, align 1, !tbaa !62
  %72 = load ptr, ptr %26, align 8, !tbaa !51
  %73 = load i8, ptr %71, align 1, !tbaa !62
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds i16, ptr %72, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !101
  %77 = and i16 %76, 8192
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %69, !llvm.loop !104

79:                                               ; preds = %69, %60
  %80 = phi ptr [ %62, %60 ], [ %71, %69 ]
  %81 = phi i8 [ %63, %60 ], [ %73, %69 ]
  switch i8 %81, label %82 [
    i8 0, label %97
    i8 47, label %97
    i8 62, label %97
  ]

82:                                               ; preds = %79
  %83 = load ptr, ptr %30, align 8, !tbaa !76
  %84 = load ptr, ptr %83, align 8, !tbaa !51
  %85 = icmp eq ptr %84, null
  br i1 %85, label %97, label %91

86:                                               ; preds = %91
  %87 = add nuw nsw i64 %93, 1
  %88 = getelementptr inbounds ptr, ptr %83, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !51
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91, !llvm.loop !105

91:                                               ; preds = %82, %86
  %92 = phi ptr [ %89, %86 ], [ %84, %82 ]
  %93 = phi i64 [ %87, %86 ], [ 0, %82 ]
  %94 = load ptr, ptr %92, align 8, !tbaa !51
  %95 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %94, ptr noundef nonnull dereferenceable(1) %40) #25
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %86

97:                                               ; preds = %86, %91, %82, %79, %79, %79
  %98 = phi ptr [ %38, %79 ], [ %38, %79 ], [ %38, %79 ], [ null, %82 ], [ null, %86 ], [ %92, %91 ]
  %99 = icmp eq ptr %98, null
  %100 = getelementptr inbounds ptr, ptr %98, i64 1
  br label %102

101:                                              ; preds = %195
  br label %102, !llvm.loop !106

102:                                              ; preds = %101, %97
  %103 = phi i8 [ %81, %97 ], [ %197, %101 ]
  %104 = phi ptr [ @sentinel, %97 ], [ %115, %101 ]
  %105 = phi ptr [ %80, %97 ], [ %196, %101 ]
  %106 = phi i64 [ 0, %97 ], [ %121, %101 ]
  switch i8 %103, label %107 [
    i8 47, label %204
    i8 62, label %219
    i8 0, label %218
  ]

107:                                              ; preds = %102
  %108 = icmp eq i64 %106, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %107
  %110 = tail call dereferenceable_or_null(32) ptr @AcquireQuantumMemory(i64 noundef 4, i64 noundef 8) #28
  br label %114

111:                                              ; preds = %107
  %112 = add nuw nsw i64 %106, 4
  %113 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %104, i64 noundef %112, i64 noundef 8) #27
  br label %114

114:                                              ; preds = %111, %109
  %115 = phi ptr [ %110, %109 ], [ %113, %111 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2037, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str) #23
  %119 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  br label %397

120:                                              ; preds = %114
  %121 = add nuw nsw i64 %106, 2
  %122 = getelementptr inbounds ptr, ptr %115, i64 %121
  store ptr null, ptr %122, align 8, !tbaa !51
  %123 = or disjoint i64 %106, 1
  %124 = getelementptr inbounds ptr, ptr %115, i64 %123
  store ptr null, ptr %124, align 8, !tbaa !51
  %125 = getelementptr inbounds ptr, ptr %115, i64 %106
  store ptr %105, ptr %125, align 8, !tbaa !51
  %126 = tail call i64 @strcspn(ptr noundef nonnull %105, ptr noundef nonnull @.str.19) #25
  %127 = getelementptr inbounds i8, ptr %105, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !62
  %129 = icmp eq i8 %128, 61
  br i1 %129, label %139, label %130

130:                                              ; preds = %120
  %131 = load ptr, ptr %26, align 8, !tbaa !51
  %132 = zext i8 %128 to i64
  %133 = getelementptr inbounds i16, ptr %131, i64 %132
  %134 = load i16, ptr %133, align 2, !tbaa !101
  %135 = and i16 %134, 8192
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #23
  br label %191

139:                                              ; preds = %130, %120
  %140 = getelementptr inbounds i8, ptr %127, i64 1
  store i8 0, ptr %127, align 1, !tbaa !62
  %141 = tail call i64 @strspn(ptr noundef nonnull %140, ptr noundef nonnull @.str.20) #25
  %142 = getelementptr inbounds i8, ptr %140, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !62
  switch i8 %143, label %187 [
    i8 39, label %144
    i8 34, label %144
  ]

144:                                              ; preds = %139, %139
  %145 = getelementptr inbounds i8, ptr %142, i64 1
  store ptr %145, ptr %124, align 8, !tbaa !51
  br label %146

146:                                              ; preds = %146, %144
  %147 = phi ptr [ %145, %144 ], [ %152, %146 ]
  %148 = load i8, ptr %147, align 1, !tbaa !62
  %149 = icmp eq i8 %148, 0
  %150 = icmp eq i8 %148, %143
  %151 = or i1 %149, %150
  %152 = getelementptr inbounds i8, ptr %147, i64 1
  br i1 %151, label %153, label %146, !llvm.loop !107

153:                                              ; preds = %146
  br i1 %149, label %160, label %154

154:                                              ; preds = %153
  store i8 0, ptr %147, align 1, !tbaa !62
  br i1 %99, label %182, label %155

155:                                              ; preds = %154
  %156 = load ptr, ptr %100, align 8, !tbaa !51
  %157 = icmp eq ptr %156, null
  br i1 %157, label %182, label %158

158:                                              ; preds = %155
  %159 = load ptr, ptr %125, align 8, !tbaa !51
  br label %166

160:                                              ; preds = %153
  %161 = sext i8 %143 to i32
  %162 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #23
  store ptr %162, ptr %125, align 8, !tbaa !51
  %163 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #23
  store ptr %163, ptr %124, align 8, !tbaa !51
  tail call fastcc void @DestroyXMLTreeAttributes(ptr noundef nonnull %115) #24
  %164 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2069, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.21, i32 noundef %161) #23
  %165 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  br label %397

166:                                              ; preds = %158, %171
  %167 = phi ptr [ %174, %171 ], [ %156, %158 ]
  %168 = phi i64 [ %172, %171 ], [ 1, %158 ]
  %169 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %167, ptr noundef nonnull dereferenceable(1) %159) #25
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %166
  %172 = add nuw nsw i64 %168, 3
  %173 = getelementptr inbounds ptr, ptr %98, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !51
  %175 = icmp eq ptr %174, null
  br i1 %175, label %182, label %166

176:                                              ; preds = %166
  %177 = add nuw nsw i64 %168, 2
  %178 = getelementptr inbounds ptr, ptr %98, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !51
  %180 = load i8, ptr %179, align 1, !tbaa !62
  %181 = sext i8 %180 to i32
  br label %182

182:                                              ; preds = %171, %154, %155, %176
  %183 = phi i32 [ %181, %176 ], [ 32, %155 ], [ 32, %154 ], [ 32, %171 ]
  %184 = load ptr, ptr %124, align 8, !tbaa !51
  %185 = load ptr, ptr %31, align 8, !tbaa !73
  %186 = tail call fastcc ptr @ParseEntities(ptr noundef %184, ptr noundef %185, i32 noundef %183) #24
  store ptr %186, ptr %124, align 8, !tbaa !51
  br label %187

187:                                              ; preds = %139, %182
  %188 = phi ptr [ %152, %182 ], [ %142, %139 ]
  %189 = load ptr, ptr %125, align 8, !tbaa !51
  %190 = tail call ptr @ConstantString(ptr noundef %189) #23
  br label %191

191:                                              ; preds = %187, %137
  %192 = phi ptr [ %190, %187 ], [ %138, %137 ]
  %193 = phi ptr [ %188, %187 ], [ %127, %137 ]
  store ptr %192, ptr %125, align 8, !tbaa !51
  %194 = load ptr, ptr %26, align 8, !tbaa !51
  br label %195

195:                                              ; preds = %195, %191
  %196 = phi ptr [ %193, %191 ], [ %203, %195 ]
  %197 = load i8, ptr %196, align 1, !tbaa !62
  %198 = zext i8 %197 to i64
  %199 = getelementptr inbounds i16, ptr %194, i64 %198
  %200 = load i16, ptr %199, align 2, !tbaa !101
  %201 = and i16 %200, 8192
  %202 = icmp eq i16 %201, 0
  %203 = getelementptr inbounds i8, ptr %196, i64 1
  br i1 %202, label %101, label %195, !llvm.loop !108

204:                                              ; preds = %102
  %205 = getelementptr inbounds i8, ptr %105, i64 1
  store i8 0, ptr %105, align 1, !tbaa !62
  %206 = load i8, ptr %205, align 1, !tbaa !62
  switch i8 %206, label %210 [
    i8 0, label %207
    i8 62, label %207
  ]

207:                                              ; preds = %204, %204
  %208 = icmp eq i8 %206, 0
  %209 = select i1 %208, i1 %27, i1 false
  br i1 %209, label %210, label %216

210:                                              ; preds = %204, %207
  %211 = icmp eq i64 %106, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %210
  tail call fastcc void @DestroyXMLTreeAttributes(ptr noundef nonnull %104) #24
  br label %213

213:                                              ; preds = %212, %210
  %214 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2099, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.22) #23
  %215 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  br label %397

216:                                              ; preds = %207
  tail call fastcc void @ParseOpenTag(ptr noundef %11, ptr noundef nonnull %40, ptr noundef nonnull %104) #24
  %217 = tail call fastcc ptr @ParseCloseTag(ptr noundef %11, ptr noundef nonnull %40, ptr noundef %1) #24
  br label %362

218:                                              ; preds = %102
  br i1 %28, label %219, label %220

219:                                              ; preds = %102, %218
  store i8 0, ptr %105, align 1, !tbaa !62
  tail call fastcc void @ParseOpenTag(ptr noundef %11, ptr noundef nonnull %40, ptr noundef nonnull %104) #24
  store i8 %103, ptr %105, align 1, !tbaa !62
  br label %366

220:                                              ; preds = %218
  %221 = icmp eq i64 %106, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %220
  tail call fastcc void @DestroyXMLTreeAttributes(ptr noundef nonnull %104) #24
  br label %223

223:                                              ; preds = %222, %220
  %224 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2120, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.22) #23
  %225 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  br label %397

226:                                              ; preds = %50
  %227 = icmp eq i8 %41, 47
  br i1 %227, label %228, label %254

228:                                              ; preds = %226
  %229 = getelementptr inbounds i8, ptr %39, i64 2
  %230 = tail call i64 @strcspn(ptr noundef nonnull %229, ptr noundef nonnull @.str.23) #25
  %231 = getelementptr i8, ptr %40, i64 %230
  %232 = getelementptr i8, ptr %231, i64 1
  %233 = load i8, ptr %232, align 1, !tbaa !62
  %234 = icmp eq i8 %233, 0
  %235 = select i1 %234, i1 %27, i1 false
  br i1 %235, label %236, label %239

236:                                              ; preds = %228
  %237 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2138, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.22) #23
  %238 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  br label %397

239:                                              ; preds = %228
  store i8 0, ptr %232, align 1, !tbaa !62
  %240 = tail call fastcc ptr @ParseCloseTag(ptr noundef %11, ptr noundef nonnull %229, ptr noundef %1) #24
  %241 = icmp eq ptr %240, null
  br i1 %241, label %244, label %242

242:                                              ; preds = %239
  %243 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  br label %397

244:                                              ; preds = %239
  store i8 %233, ptr %232, align 1, !tbaa !62
  %245 = load ptr, ptr %26, align 8, !tbaa !51
  %246 = zext i8 %233 to i64
  %247 = getelementptr inbounds i16, ptr %245, i64 %246
  %248 = load i16, ptr %247, align 2, !tbaa !101
  %249 = and i16 %248, 8192
  %250 = icmp eq i16 %249, 0
  br i1 %250, label %362, label %251

251:                                              ; preds = %244
  %252 = tail call i64 @strspn(ptr noundef nonnull %232, ptr noundef nonnull @.str.24) #25
  %253 = getelementptr inbounds i8, ptr %232, i64 %252
  br label %362

254:                                              ; preds = %226
  %255 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(4) @.str.25, i64 noundef 3) #25
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %270

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %39, i64 4
  %259 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %258, ptr noundef nonnull dereferenceable(1) @.str.26) #25
  %260 = icmp eq ptr %259, null
  br i1 %260, label %267, label %261

261:                                              ; preds = %257
  %262 = getelementptr inbounds i8, ptr %259, i64 2
  %263 = load i8, ptr %262, align 1, !tbaa !62
  switch i8 %263, label %267 [
    i8 62, label %264
    i8 0, label %264
  ]

264:                                              ; preds = %261, %261
  %265 = icmp eq i8 %263, 0
  %266 = select i1 %265, i1 %27, i1 false
  br i1 %266, label %267, label %362

267:                                              ; preds = %261, %264, %257
  %268 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2163, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.27) #23
  %269 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  br label %397

270:                                              ; preds = %254
  %271 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(9) @.str.28, i64 noundef 8) #25
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %286

273:                                              ; preds = %270
  %274 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(1) @.str.29) #25
  %275 = icmp eq ptr %274, null
  br i1 %275, label %283, label %276

276:                                              ; preds = %273
  %277 = getelementptr inbounds i8, ptr %274, i64 2
  %278 = getelementptr inbounds i8, ptr %39, i64 9
  %279 = ptrtoint ptr %277 to i64
  %280 = ptrtoint ptr %40 to i64
  %281 = sub i64 %279, %280
  %282 = add i64 %281, -10
  tail call fastcc void @ParseCharacterContent(ptr noundef %11, ptr noundef nonnull %278, i64 noundef %282, i8 noundef signext 99) #24
  br label %362

283:                                              ; preds = %273
  %284 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2183, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.30) #23
  %285 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  br label %397

286:                                              ; preds = %270
  %287 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(9) @.str.31, i64 noundef 8) #25
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %338

289:                                              ; preds = %286
  %290 = icmp eq i8 %41, 0
  br i1 %290, label %319, label %291

291:                                              ; preds = %289, %309
  %292 = phi i64 [ %316, %309 ], [ 0, %289 ]
  %293 = phi ptr [ %313, %309 ], [ %40, %289 ]
  %294 = phi i8 [ %314, %309 ], [ %41, %289 ]
  %295 = icmp ne i64 %292, 0
  %296 = icmp eq i8 %294, 62
  %297 = or i1 %296, %295
  br i1 %297, label %298, label %309

298:                                              ; preds = %291
  %299 = icmp eq i64 %292, 0
  br i1 %299, label %362, label %300

300:                                              ; preds = %298
  %301 = icmp eq i8 %294, 93
  br i1 %301, label %302, label %309

302:                                              ; preds = %300
  %303 = getelementptr inbounds i8, ptr %293, i64 1
  %304 = tail call i64 @strspn(ptr noundef nonnull %303, ptr noundef nonnull @.str.24) #25
  %305 = getelementptr inbounds i8, ptr %293, i64 %304
  %306 = getelementptr inbounds i8, ptr %305, i64 1
  %307 = load i8, ptr %306, align 1, !tbaa !62
  %308 = icmp eq i8 %307, 62
  br i1 %308, label %325, label %309

309:                                              ; preds = %291, %300, %302
  %310 = getelementptr inbounds i8, ptr %293, i64 1
  %311 = tail call i64 @strcspn(ptr noundef nonnull %310, ptr noundef nonnull @.str.32) #25
  %312 = add i64 %311, 1
  %313 = getelementptr inbounds i8, ptr %293, i64 %312
  %314 = load i8, ptr %313, align 1, !tbaa !62
  %315 = icmp eq i8 %314, 91
  %316 = select i1 %315, i64 1, i64 %292
  %317 = icmp eq i8 %314, 0
  br i1 %317, label %318, label %291, !llvm.loop !109

318:                                              ; preds = %309
  br i1 %28, label %323, label %320

319:                                              ; preds = %289
  br i1 %28, label %362, label %320

320:                                              ; preds = %319, %318
  %321 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2202, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.33) #23
  %322 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  br label %397

323:                                              ; preds = %318
  %324 = icmp eq i64 %316, 0
  br i1 %324, label %362, label %325

325:                                              ; preds = %302, %323
  %326 = phi ptr [ %313, %323 ], [ %293, %302 ]
  %327 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %40, i32 noundef 91) #25
  %328 = getelementptr inbounds i8, ptr %327, i64 1
  %329 = ptrtoint ptr %326 to i64
  %330 = ptrtoint ptr %328 to i64
  %331 = sub i64 %329, %330
  %332 = tail call fastcc i32 @ParseInternalDoctype(ptr noundef %11, ptr noundef nonnull %328, i64 noundef %331, ptr noundef %1) #24, !range !110
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %325
  %335 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  br label %397

336:                                              ; preds = %325
  %337 = getelementptr inbounds i8, ptr %326, i64 1
  br label %362

338:                                              ; preds = %286
  %339 = icmp eq i8 %41, 63
  br i1 %339, label %340, label %359

340:                                              ; preds = %338, %344
  %341 = phi ptr [ %345, %344 ], [ %40, %338 ]
  %342 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %341, i32 noundef 63) #25
  %343 = icmp eq ptr %342, null
  br i1 %343, label %350, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds i8, ptr %342, i64 1
  %346 = load i8, ptr %345, align 1, !tbaa !62
  switch i8 %346, label %340 [
    i8 0, label %347
    i8 62, label %347
  ]

347:                                              ; preds = %344, %344
  %348 = icmp eq i8 %346, 0
  %349 = select i1 %348, i1 %27, i1 false
  br i1 %349, label %350, label %353

350:                                              ; preds = %347, %340
  %351 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2237, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.34) #23
  %352 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  br label %397

353:                                              ; preds = %347
  %354 = getelementptr inbounds i8, ptr %39, i64 2
  %355 = ptrtoint ptr %345 to i64
  %356 = ptrtoint ptr %40 to i64
  %357 = sub i64 %355, %356
  %358 = add i64 %357, -2
  tail call fastcc void @ParseProcessingInstructions(ptr noundef %11, ptr noundef nonnull %354, i64 noundef %358) #24
  br label %362

359:                                              ; preds = %338
  %360 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2246, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.35) #23
  %361 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  br label %397

362:                                              ; preds = %298, %319, %323, %251, %244, %276, %336, %353, %264, %216
  %363 = phi ptr [ %38, %353 ], [ %38, %336 ], [ %38, %276 ], [ %38, %264 ], [ %38, %244 ], [ %38, %251 ], [ %98, %216 ], [ %38, %323 ], [ %38, %319 ], [ %38, %298 ]
  %364 = phi ptr [ %345, %353 ], [ %337, %336 ], [ %277, %276 ], [ %262, %264 ], [ %232, %244 ], [ %253, %251 ], [ %205, %216 ], [ %313, %323 ], [ %40, %319 ], [ %293, %298 ]
  %365 = load i8, ptr %364, align 1, !tbaa !62
  br label %366

366:                                              ; preds = %362, %219
  %367 = phi i8 [ %365, %362 ], [ %103, %219 ]
  %368 = phi ptr [ %363, %362 ], [ %98, %219 ]
  %369 = phi ptr [ %364, %362 ], [ %105, %219 ]
  %370 = icmp eq i8 %367, 0
  br i1 %370, label %386, label %371

371:                                              ; preds = %366
  %372 = getelementptr inbounds i8, ptr %369, i64 1
  store i8 0, ptr %369, align 1, !tbaa !62
  %373 = load i8, ptr %372, align 1, !tbaa !62
  switch i8 %373, label %376 [
    i8 0, label %386
    i8 60, label %374
  ]

374:                                              ; preds = %371, %382
  %375 = phi ptr [ %372, %371 ], [ %378, %382 ]
  br label %37

376:                                              ; preds = %371, %379
  %377 = phi i8 [ %381, %379 ], [ %373, %371 ]
  %378 = phi ptr [ %380, %379 ], [ %372, %371 ]
  switch i8 %377, label %379 [
    i8 0, label %386
    i8 60, label %382
  ]

379:                                              ; preds = %376
  %380 = getelementptr inbounds i8, ptr %378, i64 1
  %381 = load i8, ptr %380, align 1, !tbaa !62
  br label %376, !llvm.loop !111

382:                                              ; preds = %376
  %383 = ptrtoint ptr %378 to i64
  %384 = ptrtoint ptr %372 to i64
  %385 = sub i64 %383, %384
  tail call fastcc void @ParseCharacterContent(ptr noundef %11, ptr noundef nonnull %372, i64 noundef %385, i8 noundef signext 38) #24
  br label %374

386:                                              ; preds = %371, %366, %376
  %387 = tail call ptr @DestroyString(ptr noundef nonnull %13) #23
  %388 = load ptr, ptr %29, align 8, !tbaa !103
  %389 = icmp eq ptr %388, null
  br i1 %389, label %397, label %390

390:                                              ; preds = %386
  %391 = load ptr, ptr %388, align 8, !tbaa !34
  %392 = icmp eq ptr %391, null
  br i1 %392, label %393, label %395

393:                                              ; preds = %390
  %394 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2275, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #23
  br label %397

395:                                              ; preds = %390
  %396 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2279, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.36, ptr noundef nonnull %391) #23
  br label %397

397:                                              ; preds = %386, %395, %393, %359, %350, %334, %320, %283, %267, %242, %236, %223, %213, %160, %117, %57, %34, %15, %8
  %398 = phi ptr [ null, %8 ], [ null, %15 ], [ null, %34 ], [ %11, %57 ], [ %11, %117 ], [ %11, %160 ], [ %11, %213 ], [ %11, %393 ], [ %11, %395 ], [ %11, %223 ], [ %11, %236 ], [ %11, %242 ], [ %11, %267 ], [ %11, %283 ], [ %11, %320 ], [ %11, %334 ], [ %11, %350 ], [ %11, %359 ], [ %11, %386 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret ptr %398
}

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @NewXMLTreeTag(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call dereferenceable_or_null(160) ptr @AcquireMagickMemory(i64 noundef 160) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef 160) #23
  store ptr null, ptr %2, align 8, !tbaa !112
  %6 = icmp eq ptr %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @ConstantString(ptr noundef nonnull %0) #23
  store ptr %8, ptr %2, align 8, !tbaa !112
  br label %9

9:                                                ; preds = %7, %4
  %10 = getelementptr inbounds %struct._XMLTreeRoot, ptr %2, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !103
  %11 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #23
  %12 = getelementptr inbounds %struct._XMLTreeInfo, ptr %2, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !113
  %13 = tail call dereferenceable_or_null(88) ptr @AcquireMagickMemory(i64 noundef 88) #22
  %14 = getelementptr inbounds %struct._XMLTreeRoot, ptr %2, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !73
  %15 = icmp eq ptr %13, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %13, ptr noundef nonnull @NewXMLTreeTag.predefined_entities, i64 noundef 88) #23
  %18 = getelementptr inbounds %struct._XMLTreeInfo, ptr %2, i64 0, i32 1
  store ptr @sentinel, ptr %18, align 8, !tbaa !114
  %19 = getelementptr inbounds %struct._XMLTreeRoot, ptr %2, i64 0, i32 5
  store ptr @sentinel, ptr %19, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct._XMLTreeRoot, ptr %2, i64 0, i32 3
  store ptr @sentinel, ptr %20, align 8, !tbaa !79
  %21 = tail call i32 @IsEventLogging() #23
  %22 = getelementptr inbounds %struct._XMLTreeRoot, ptr %2, i64 0, i32 6
  store i32 %21, ptr %22, align 8, !tbaa !115
  %23 = getelementptr inbounds %struct._XMLTreeRoot, ptr %2, i64 0, i32 8
  store i64 2880220587, ptr %23, align 8, !tbaa !116
  br label %24

24:                                               ; preds = %9, %1, %16
  %25 = phi ptr [ %2, %16 ], [ null, %1 ], [ null, %9 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ConvertUTF16ToUTF8(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !117 {
  %3 = load i64, ptr %1, align 8, !tbaa !57
  %4 = tail call ptr @AcquireQuantumMemory(i64 noundef %3, i64 noundef 1) #28
  %5 = icmp eq ptr %4, null
  br i1 %5, label %116, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %0, align 1, !tbaa !62
  %8 = icmp eq i8 %7, -1
  %9 = icmp ult i8 %7, -2
  %10 = load i64, ptr %1, align 8, !tbaa !57
  br i1 %9, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %4, ptr noundef nonnull %0, i64 noundef %10) #23
  br label %116

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %0, i64 3
  %15 = add i64 %10, -1
  %16 = icmp sgt i64 %15, 2
  br i1 %16, label %17, label %112

17:                                               ; preds = %13, %106
  %18 = phi i64 [ %110, %106 ], [ %15, %13 ]
  %19 = phi i64 [ %107, %106 ], [ 0, %13 ]
  %20 = phi i64 [ %70, %106 ], [ %10, %13 ]
  %21 = phi i64 [ %108, %106 ], [ 2, %13 ]
  %22 = phi ptr [ %69, %106 ], [ %4, %13 ]
  %23 = getelementptr i8, ptr %0, i64 %21
  br i1 %8, label %32, label %24

24:                                               ; preds = %17
  %25 = load i8, ptr %23, align 1, !tbaa !62
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = getelementptr i8, ptr %23, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !62
  %30 = zext i8 %29 to i32
  %31 = or disjoint i32 %27, %30
  br label %35

32:                                               ; preds = %17
  %33 = load i16, ptr %23, align 1
  %34 = zext i16 %33 to i32
  br label %35

35:                                               ; preds = %32, %24
  %36 = phi i32 [ %31, %24 ], [ %34, %32 ]
  %37 = and i32 %36, -2048
  %38 = icmp eq i32 %37, 55296
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = add nsw i64 %21, 2
  %41 = icmp slt i64 %40, %18
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = getelementptr i8, ptr %14, i64 %21
  %44 = getelementptr inbounds i8, ptr %0, i64 %40
  %45 = getelementptr inbounds i8, ptr %0, i64 %40
  %46 = getelementptr i8, ptr %14, i64 %21
  %47 = select i1 %8, ptr %44, ptr %46
  %48 = select i1 %8, ptr %43, ptr %45
  %49 = load i8, ptr %48, align 1, !tbaa !62
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 8
  %52 = load i8, ptr %47, align 1, !tbaa !62
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %36, 10
  %55 = and i32 %54, 1047552
  %56 = and i32 %51, 768
  %57 = or disjoint i32 %56, %53
  %58 = add nuw nsw i32 %55, 65536
  %59 = or disjoint i32 %58, %57
  br label %60

60:                                               ; preds = %42, %39, %35
  %61 = phi i32 [ %59, %42 ], [ %36, %39 ], [ %36, %35 ]
  %62 = phi i64 [ %40, %42 ], [ %40, %39 ], [ %21, %35 ]
  %63 = add nsw i64 %19, 4096
  %64 = icmp ugt i64 %63, %20
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = tail call ptr @ResizeQuantumMemory(ptr noundef %22, i64 noundef %63, i64 noundef 1) #27
  %67 = icmp eq ptr %66, null
  br i1 %67, label %116, label %68

68:                                               ; preds = %65, %60
  %69 = phi ptr [ %66, %65 ], [ %22, %60 ]
  %70 = phi i64 [ %63, %65 ], [ %20, %60 ]
  %71 = icmp ult i32 %61, 128
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = trunc i32 %61 to i8
  %74 = getelementptr inbounds i8, ptr %69, i64 %19
  store i8 %73, ptr %74, align 1, !tbaa !62
  %75 = add nsw i64 %19, 1
  br label %106

76:                                               ; preds = %68, %76
  %77 = phi i32 [ %80, %76 ], [ %61, %68 ]
  %78 = phi i32 [ %79, %76 ], [ 0, %68 ]
  %79 = add nuw nsw i32 %78, 1
  %80 = lshr i32 %77, 1
  %81 = icmp ult i32 %77, 2
  br i1 %81, label %82, label %76, !llvm.loop !118

82:                                               ; preds = %76
  %83 = add nsw i32 %78, -1
  %84 = sdiv i32 %83, 5
  %85 = sub nsw i32 7, %84
  %86 = shl i32 255, %85
  %87 = mul nsw i32 %84, 6
  %88 = lshr i32 %61, %87
  %89 = or i32 %86, %88
  %90 = trunc i32 %89 to i8
  %91 = getelementptr inbounds i8, ptr %69, i64 %19
  store i8 %90, ptr %91, align 1, !tbaa !62
  %92 = add nsw i64 %19, 1
  %93 = icmp ult i32 %78, 6
  br i1 %93, label %106, label %94

94:                                               ; preds = %82, %94
  %95 = phi i64 [ %104, %94 ], [ %92, %82 ]
  %96 = phi i32 [ %97, %94 ], [ %84, %82 ]
  %97 = add nsw i32 %96, -1
  %98 = mul nsw i32 %97, 6
  %99 = lshr i32 %61, %98
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 63
  %102 = or disjoint i8 %101, -128
  %103 = getelementptr inbounds i8, ptr %69, i64 %95
  store i8 %102, ptr %103, align 1, !tbaa !62
  %104 = add nsw i64 %95, 1
  %105 = icmp eq i32 %97, 0
  br i1 %105, label %106, label %94, !llvm.loop !119

106:                                              ; preds = %94, %82, %72
  %107 = phi i64 [ %75, %72 ], [ %92, %82 ], [ %104, %94 ]
  %108 = add nsw i64 %62, 2
  %109 = load i64, ptr %1, align 8, !tbaa !57
  %110 = add i64 %109, -1
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %17, label %112, !llvm.loop !120

112:                                              ; preds = %106, %13
  %113 = phi ptr [ %4, %13 ], [ %69, %106 ]
  %114 = phi i64 [ 0, %13 ], [ %107, %106 ]
  store i64 %114, ptr %1, align 8, !tbaa !57
  %115 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %113, i64 noundef %114, i64 noundef 1) #27
  br label %116

116:                                              ; preds = %65, %2, %112, %11
  %117 = phi ptr [ %4, %11 ], [ %115, %112 ], [ null, %2 ], [ null, %65 ]
  ret ptr %117
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ParseEntities(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !121 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %6 = load i8, ptr %0, align 1, !tbaa !62
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3, %28
  %9 = phi i8 [ %31, %28 ], [ %6, %3 ]
  %10 = phi ptr [ %30, %28 ], [ %0, %3 ]
  %11 = icmp eq i8 %9, 13
  br i1 %11, label %15, label %28

12:                                               ; preds = %28, %3
  %13 = icmp ne i32 %2, 37
  %14 = icmp eq i32 %2, 99
  br label %187

15:                                               ; preds = %8, %25
  %16 = phi ptr [ %17, %25 ], [ %10, %8 ]
  %17 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 10, ptr %16, align 1, !tbaa !62
  %18 = load i8, ptr %17, align 1, !tbaa !62
  %19 = icmp eq i8 %18, 10
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %16, i64 2
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #25
  %23 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %17, ptr noundef nonnull %21, i64 noundef %22) #23
  %24 = load i8, ptr %17, align 1, !tbaa !62
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i8 [ %24, %20 ], [ %18, %15 ]
  %27 = icmp eq i8 %26, 13
  br i1 %27, label %15, label %28, !llvm.loop !122

28:                                               ; preds = %25, %8
  %29 = phi ptr [ %10, %8 ], [ %17, %25 ]
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !62
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %12, label %8, !llvm.loop !123

33:                                               ; preds = %45, %201
  %34 = phi ptr [ %202, %201 ], [ %46, %45 ]
  %35 = load i8, ptr %34, align 1, !tbaa !62
  switch i8 %35, label %36 [
    i8 0, label %203
    i8 38, label %49
  ]

36:                                               ; preds = %33
  %37 = icmp ne i8 %35, 37
  %38 = or i1 %13, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = tail call ptr @__ctype_b_loc() #29
  %41 = load ptr, ptr %40, align 8, !tbaa !51
  %42 = load i16, ptr %41, align 2, !tbaa !101
  %43 = and i16 %42, 8192
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %62, %66, %39
  %46 = getelementptr inbounds i8, ptr %34, i64 1
  br label %33, !llvm.loop !124

47:                                               ; preds = %39
  %48 = icmp eq i8 %35, 0
  br i1 %48, label %203, label %49

49:                                               ; preds = %33, %47
  br i1 %14, label %112, label %50

50:                                               ; preds = %36, %49
  %51 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(3) @.str.51, i64 noundef 2) #25
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %112

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, ptr %34, i64 2
  %55 = load i8, ptr %54, align 1, !tbaa !62
  %56 = icmp eq i8 %55, 120
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = call i64 @strtol(ptr noundef nonnull %54, ptr noundef nonnull %4, i32 noundef 10) #23
  br label %62

59:                                               ; preds = %53
  %60 = getelementptr inbounds i8, ptr %34, i64 3
  %61 = call i64 @strtol(ptr noundef nonnull %60, ptr noundef nonnull %4, i32 noundef 16) #23
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i64 [ %58, %57 ], [ %61, %59 ]
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %45, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %4, align 8, !tbaa !51
  %68 = load i8, ptr %67, align 1, !tbaa !62
  %69 = icmp eq i8 %68, 59
  br i1 %69, label %70, label %45

70:                                               ; preds = %66
  %71 = icmp slt i32 %64, 128
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = trunc i64 %63 to i8
  %74 = getelementptr inbounds i8, ptr %34, i64 1
  store i8 %73, ptr %34, align 1, !tbaa !62
  br label %106

75:                                               ; preds = %70, %75
  %76 = phi i32 [ %79, %75 ], [ %64, %70 ]
  %77 = phi i64 [ %78, %75 ], [ 0, %70 ]
  %78 = add nuw nsw i64 %77, 1
  %79 = sdiv i32 %76, 2
  %80 = add i32 %76, 1
  %81 = icmp ult i32 %80, 3
  br i1 %81, label %82, label %75, !llvm.loop !125

82:                                               ; preds = %75
  %83 = add nsw i64 %77, -1
  %84 = sdiv i64 %83, 5
  %85 = trunc i64 %84 to i32
  %86 = sub i32 7, %85
  %87 = shl i32 255, %86
  %88 = mul i32 %85, 6
  %89 = lshr i32 %64, %88
  %90 = or i32 %87, %89
  %91 = trunc i32 %90 to i8
  store i8 %91, ptr %34, align 1, !tbaa !62
  %92 = getelementptr inbounds i8, ptr %34, i64 1
  %93 = icmp ult i64 %77, 6
  br i1 %93, label %106, label %94

94:                                               ; preds = %82, %94
  %95 = phi ptr [ %104, %94 ], [ %92, %82 ]
  %96 = phi i64 [ %97, %94 ], [ %84, %82 ]
  %97 = add nsw i64 %96, -1
  %98 = trunc i64 %97 to i32
  %99 = mul i32 %98, 6
  %100 = lshr i32 %64, %99
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 63
  %103 = or disjoint i8 %102, -128
  store i8 %103, ptr %95, align 1, !tbaa !62
  %104 = getelementptr inbounds i8, ptr %95, i64 1
  %105 = icmp eq i64 %97, 0
  br i1 %105, label %106, label %94, !llvm.loop !126

106:                                              ; preds = %94, %82, %72
  %107 = phi ptr [ %74, %72 ], [ %92, %82 ], [ %104, %94 ]
  %108 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %107, i32 noundef 59) #25
  %109 = getelementptr inbounds i8, ptr %108, i64 1
  %110 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %108) #25
  %111 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %107, ptr noundef nonnull %109, i64 noundef %110) #23
  br label %136

112:                                              ; preds = %50, %49
  %113 = icmp eq i8 %35, 38
  br i1 %113, label %114, label %115

114:                                              ; preds = %112
  switch i32 %2, label %199 [
    i32 42, label %118
    i32 38, label %118
    i32 32, label %118
  ]

115:                                              ; preds = %112
  switch i32 %2, label %199 [
    i32 37, label %116
    i32 42, label %190
    i32 32, label %190
  ]

116:                                              ; preds = %115
  %117 = icmp eq i8 %35, 37
  br i1 %117, label %118, label %199

118:                                              ; preds = %114, %114, %114, %116
  %119 = load ptr, ptr %1, align 8, !tbaa !51
  %120 = icmp eq ptr %119, null
  br i1 %120, label %134, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds i8, ptr %34, i64 1
  br label %123

123:                                              ; preds = %121, %129
  %124 = phi ptr [ %119, %121 ], [ %132, %129 ]
  %125 = phi i64 [ 0, %121 ], [ %130, %129 ]
  %126 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %124) #25
  %127 = tail call i32 @strncmp(ptr noundef nonnull %122, ptr noundef nonnull %124, i64 noundef %126) #25
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %123
  %130 = add nuw nsw i64 %125, 2
  %131 = getelementptr inbounds ptr, ptr %1, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !51
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %123, !llvm.loop !127

134:                                              ; preds = %129, %118
  %135 = getelementptr inbounds i8, ptr %34, i64 1
  br label %136

136:                                              ; preds = %134, %199, %197, %106
  %137 = phi ptr [ %107, %106 ], [ %135, %134 ], [ %198, %197 ], [ %200, %199 ]
  br label %201

138:                                              ; preds = %123
  %139 = or disjoint i64 %125, 1
  %140 = getelementptr inbounds ptr, ptr %1, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !51
  %142 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %141) #25
  %143 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %34, i32 noundef 59) #25
  store ptr %143, ptr %4, align 8, !tbaa !51
  %144 = add i64 %142, -1
  %145 = ptrtoint ptr %143 to i64
  %146 = ptrtoint ptr %34 to i64
  %147 = sub i64 %145, %146
  %148 = icmp ult i64 %144, %147
  br i1 %148, label %177, label %149

149:                                              ; preds = %138
  %150 = ptrtoint ptr %188 to i64
  %151 = sub i64 %146, %150
  %152 = add i64 %142, %151
  %153 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %143) #25
  %154 = add i64 %152, %153
  %155 = icmp eq ptr %188, %0
  br i1 %155, label %158, label %156

156:                                              ; preds = %149
  %157 = tail call ptr @ResizeQuantumMemory(ptr noundef %188, i64 noundef %154, i64 noundef 1) #27
  br label %163

158:                                              ; preds = %149
  %159 = tail call ptr @AcquireQuantumMemory(i64 noundef %154, i64 noundef 1) #28
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = tail call i64 @CopyMagickString(ptr noundef nonnull %159, ptr noundef nonnull %0, i64 noundef %154) #23
  br label %173

163:                                              ; preds = %158, %156
  %164 = phi ptr [ %157, %156 ], [ %0, %158 ]
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #26
  call void @GetExceptionInfo(ptr noundef nonnull %5) #23
  %167 = tail call ptr @__errno_location() #29
  %168 = load i32, ptr %167, align 4, !tbaa !85
  %169 = call ptr @GetExceptionMessage(i32 noundef %168) #23
  %170 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1518, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %169) #23
  %171 = call ptr @DestroyString(ptr noundef %169) #23
  call void @CatchException(ptr noundef nonnull %5) #23
  %172 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #30
  unreachable

173:                                              ; preds = %161, %163
  %174 = phi ptr [ %159, %161 ], [ %164, %163 ]
  %175 = getelementptr inbounds i8, ptr %174, i64 %151
  %176 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %175, i32 noundef 59) #25
  store ptr %176, ptr %4, align 8, !tbaa !51
  br label %177

177:                                              ; preds = %173, %138
  %178 = phi ptr [ %176, %173 ], [ %143, %138 ]
  %179 = phi ptr [ %174, %173 ], [ %188, %138 ]
  %180 = phi ptr [ %175, %173 ], [ %34, %138 ]
  %181 = getelementptr inbounds i8, ptr %180, i64 %142
  %182 = getelementptr inbounds i8, ptr %178, i64 1
  %183 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %178) #25
  %184 = tail call ptr @CopyMagickMemory(ptr noundef %181, ptr noundef nonnull %182, i64 noundef %183) #23
  %185 = load ptr, ptr %140, align 8, !tbaa !51
  %186 = tail call ptr @strncpy(ptr noundef %180, ptr noundef %185, i64 noundef %142) #23
  br label %187

187:                                              ; preds = %177, %12
  %188 = phi ptr [ %179, %177 ], [ %0, %12 ]
  %189 = phi ptr [ %180, %177 ], [ %0, %12 ]
  br label %201

190:                                              ; preds = %115, %115
  %191 = tail call ptr @__ctype_b_loc() #29
  %192 = load ptr, ptr %191, align 8, !tbaa !51
  %193 = getelementptr inbounds i16, ptr %192, i64 1
  %194 = load i16, ptr %193, align 2, !tbaa !101
  %195 = and i16 %194, 8192
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %190
  %198 = getelementptr inbounds i8, ptr %34, i64 1
  store i8 32, ptr %34, align 1, !tbaa !62
  br label %136

199:                                              ; preds = %116, %114, %115, %190
  %200 = getelementptr inbounds i8, ptr %34, i64 1
  br label %136

201:                                              ; preds = %136, %187
  %202 = phi ptr [ %189, %187 ], [ %137, %136 ]
  br label %33

203:                                              ; preds = %47, %33
  %204 = icmp eq i32 %2, 42
  br i1 %204, label %205, label %235

205:                                              ; preds = %203
  %206 = load i8, ptr %188, align 1, !tbaa !62
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %227, label %208

208:                                              ; preds = %205, %223
  %209 = phi ptr [ %224, %223 ], [ %188, %205 ]
  %210 = tail call i64 @strspn(ptr noundef nonnull %209, ptr noundef nonnull @.str.49) #25
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds i8, ptr %209, i64 %210
  %214 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %213) #25
  %215 = add i64 %214, 1
  %216 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %209, ptr noundef nonnull %213, i64 noundef %215) #23
  br label %217

217:                                              ; preds = %212, %208
  br label %218

218:                                              ; preds = %217, %221
  %219 = phi ptr [ %222, %221 ], [ %209, %217 ]
  %220 = load i8, ptr %219, align 1, !tbaa !62
  switch i8 %220, label %221 [
    i8 0, label %223
    i8 32, label %223
  ]

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %219, i64 1
  br label %218, !llvm.loop !128

223:                                              ; preds = %218, %218
  %224 = getelementptr inbounds i8, ptr %219, i64 1
  %225 = load i8, ptr %224, align 1, !tbaa !62
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %208, !llvm.loop !129

227:                                              ; preds = %223, %205
  %228 = phi ptr [ %188, %205 ], [ %224, %223 ]
  %229 = getelementptr inbounds i8, ptr %228, i64 -1
  %230 = icmp ult ptr %229, %188
  br i1 %230, label %235, label %231

231:                                              ; preds = %227
  %232 = load i8, ptr %229, align 1, !tbaa !62
  %233 = icmp eq i8 %232, 32
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  store i8 0, ptr %229, align 1, !tbaa !62
  br label %235

235:                                              ; preds = %227, %231, %234, %203
  %236 = icmp eq ptr %188, %0
  br i1 %236, label %237, label %239

237:                                              ; preds = %235
  %238 = tail call ptr @ConstantString(ptr noundef nonnull %0) #23
  br label %239

239:                                              ; preds = %235, %237
  %240 = phi ptr [ %238, %237 ], [ %188, %235 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret ptr %240
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ParseOpenTag(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !130 {
  %4 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call ptr @ConstantString(ptr noundef %1) #23
  store ptr %9, ptr %5, align 8, !tbaa !34
  br label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._XMLTreeInfo, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #25
  %14 = tail call ptr @AddChildToXMLTree(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %13) #24
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi ptr [ %5, %8 ], [ %14, %10 ]
  %17 = getelementptr inbounds %struct._XMLTreeInfo, ptr %16, i64 0, i32 1
  store ptr %2, ptr %17, align 8, !tbaa !41
  store ptr %16, ptr %4, align 8, !tbaa !103
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ParseCloseTag(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !131 {
  %4 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %8) #25
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %7, %3
  %14 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1586, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.52, ptr noundef %1) #23
  br label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._XMLTreeInfo, ptr %5, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  store ptr %17, ptr %4, align 8, !tbaa !103
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi ptr [ %0, %13 ], [ null, %15 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ParseCharacterContent(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i8 noundef signext %3) unnamed_addr #0 !PGOFuncName !132 {
  %5 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  %11 = icmp eq i64 %2, 0
  %12 = or i1 %11, %10
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, ptr %1, i64 %2
  store i8 0, ptr %14, align 1, !tbaa !62
  %15 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = zext nneg i8 %3 to i32
  %18 = tail call fastcc ptr @ParseEntities(ptr noundef %1, ptr noundef %16, i32 noundef %17) #24
  %19 = getelementptr inbounds %struct._XMLTreeInfo, ptr %6, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = load i8, ptr %20, align 1, !tbaa !62
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = tail call i32 @ConcatenateString(ptr noundef nonnull %19, ptr noundef %18) #23
  %25 = tail call ptr @DestroyString(ptr noundef %18) #23
  br label %28

26:                                               ; preds = %13
  %27 = tail call ptr @DestroyString(ptr noundef nonnull %20) #23
  store ptr %18, ptr %19, align 8, !tbaa !42
  br label %28

28:                                               ; preds = %23, %26, %4, %8
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ParseInternalDoctype(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !133 {
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = alloca %struct._ExceptionInfo, align 8
  %8 = alloca %struct._ExceptionInfo, align 8
  %9 = alloca %struct._ExceptionInfo, align 8
  %10 = tail call dereferenceable_or_null(8) ptr @AcquireMagickMemory(i64 noundef 8) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #26
  call void @GetExceptionInfo(ptr noundef nonnull %5) #23
  %13 = tail call ptr @__errno_location() #29
  %14 = load i32, ptr %13, align 4, !tbaa !85
  %15 = call ptr @GetExceptionMessage(i32 noundef %14) #23
  %16 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1718, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %15) #23
  %17 = call ptr @DestroyString(ptr noundef %15) #23
  call void @CatchException(ptr noundef nonnull %5) #23
  %18 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef -299) #30
  unreachable

19:                                               ; preds = %4
  %20 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %10, ptr noundef nonnull @sentinel, i64 noundef 8) #23
  %21 = getelementptr inbounds i8, ptr %1, i64 %2
  store i8 0, ptr %21, align 1, !tbaa !62
  %22 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 5
  %24 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 4
  br label %25

25:                                               ; preds = %345, %19
  %26 = phi ptr [ %10, %19 ], [ %346, %345 ]
  %27 = phi ptr [ null, %19 ], [ %347, %345 ]
  %28 = phi ptr [ %1, %19 ], [ %348, %345 ]
  br label %29

29:                                               ; preds = %25, %57
  %30 = phi ptr [ %27, %25 ], [ %49, %57 ]
  %31 = phi ptr [ %28, %25 ], [ %58, %57 ]
  br label %32

32:                                               ; preds = %29, %123
  %33 = phi ptr [ %125, %123 ], [ %31, %29 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %359, label %35

35:                                               ; preds = %32, %38
  %36 = phi ptr [ %39, %38 ], [ %33, %32 ]
  %37 = load i8, ptr %36, align 1, !tbaa !62
  switch i8 %37, label %38 [
    i8 0, label %359
    i8 37, label %40
    i8 60, label %40
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %36, i64 1
  br label %35, !llvm.loop !134

40:                                               ; preds = %35, %35
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(9) @.str.53, i64 noundef 8) #25
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %111

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, ptr %36, i64 8
  %45 = tail call i64 @strspn(ptr noundef nonnull %44, ptr noundef nonnull @.str.24) #25
  %46 = add i64 %45, 8
  %47 = getelementptr inbounds i8, ptr %36, i64 %46
  %48 = tail call i64 @strspn(ptr noundef nonnull %47, ptr noundef nonnull @.str.54) #25
  %49 = getelementptr inbounds i8, ptr %47, i64 %48
  %50 = tail call i64 @strcspn(ptr noundef nonnull %49, ptr noundef nonnull @.str.24) #25
  %51 = getelementptr inbounds i8, ptr %49, i64 %50
  store i8 59, ptr %51, align 1, !tbaa !62
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  %53 = tail call i64 @strspn(ptr noundef nonnull %52, ptr noundef nonnull @.str.24) #25
  %54 = getelementptr inbounds i8, ptr %51, i64 %53
  %55 = getelementptr inbounds i8, ptr %54, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !62
  switch i8 %56, label %57 [
    i8 39, label %59
    i8 34, label %59
  ]

57:                                               ; preds = %43
  %58 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %51, i32 noundef 62) #25
  br label %29, !llvm.loop !135

59:                                               ; preds = %43, %43
  %60 = getelementptr inbounds i8, ptr %54, i64 2
  %61 = zext nneg i8 %56 to i32
  %62 = load i8, ptr %47, align 1, !tbaa !62
  %63 = icmp eq i8 %62, 37
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %24, align 8, !tbaa !73
  br label %66

66:                                               ; preds = %59, %64
  %67 = phi ptr [ %65, %64 ], [ %26, %59 ]
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i64 [ 0, %66 ], [ %73, %68 ]
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !51
  %72 = icmp eq ptr %71, null
  %73 = add nuw nsw i64 %69, 1
  br i1 %72, label %74, label %68, !llvm.loop !136

74:                                               ; preds = %68
  %75 = add nuw nsw i64 %69, 3
  %76 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %67, i64 noundef %75, i64 noundef 8) #27
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #26
  call void @GetExceptionInfo(ptr noundef nonnull %6) #23
  %79 = tail call ptr @__errno_location() #29
  %80 = load i32, ptr %79, align 4, !tbaa !85
  %81 = call ptr @GetExceptionMessage(i32 noundef %80) #23
  %82 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1752, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %81) #23
  %83 = call ptr @DestroyString(ptr noundef %81) #23
  call void @CatchException(ptr noundef nonnull %6) #23
  %84 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #30
  unreachable

85:                                               ; preds = %74
  %86 = load i8, ptr %47, align 1, !tbaa !62
  %87 = icmp eq i8 %86, 37
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  store ptr %76, ptr %24, align 8, !tbaa !73
  br label %89

89:                                               ; preds = %85, %88
  %90 = phi ptr [ %26, %88 ], [ %76, %85 ]
  store i8 0, ptr %52, align 1, !tbaa !62
  %91 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %60, i32 noundef %61) #25
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  store i8 0, ptr %91, align 1, !tbaa !62
  %94 = getelementptr inbounds i8, ptr %91, i64 1
  br label %95

95:                                               ; preds = %93, %89
  %96 = phi ptr [ %94, %93 ], [ null, %89 ]
  %97 = tail call fastcc ptr @ParseEntities(ptr noundef nonnull %60, ptr noundef %90, i32 noundef 37) #24
  %98 = getelementptr ptr, ptr %76, i64 %69
  %99 = getelementptr ptr, ptr %98, i64 1
  store ptr %97, ptr %99, align 8, !tbaa !51
  %100 = getelementptr ptr, ptr %98, i64 2
  store ptr null, ptr %100, align 8, !tbaa !51
  %101 = tail call fastcc i32 @ValidateEntities(ptr noundef nonnull %49, ptr noundef %97, ptr noundef nonnull %76) #24, !range !110
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  store ptr %49, ptr %98, align 8, !tbaa !51
  br label %345

104:                                              ; preds = %95
  %105 = icmp eq ptr %97, %60
  br i1 %105, label %109, label %106

106:                                              ; preds = %104
  %107 = getelementptr ptr, ptr %98, i64 1
  %108 = tail call ptr @DestroyString(ptr noundef %97) #23
  store ptr %108, ptr %107, align 8, !tbaa !51
  br label %109

109:                                              ; preds = %106, %104
  %110 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1773, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.55, ptr noundef nonnull %49) #23
  br label %359

111:                                              ; preds = %40
  %112 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(10) @.str.56, i64 noundef 9) #25
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %327

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, ptr %36, i64 9
  %116 = tail call i64 @strspn(ptr noundef nonnull %115, ptr noundef nonnull @.str.24) #25
  %117 = getelementptr inbounds i8, ptr %36, i64 %116
  %118 = getelementptr inbounds i8, ptr %117, i64 9
  %119 = load i8, ptr %118, align 1, !tbaa !62
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1789, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.57) #23
  br label %359

123:                                              ; preds = %114
  %124 = tail call i64 @strcspn(ptr noundef nonnull %118, ptr noundef nonnull @.str.23) #25
  %125 = getelementptr inbounds i8, ptr %118, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !62
  %127 = icmp eq i8 %126, 62
  br i1 %127, label %32, label %128, !llvm.loop !135

128:                                              ; preds = %123
  store i8 0, ptr %125, align 1, !tbaa !62
  %129 = load ptr, ptr %23, align 8, !tbaa !76
  %130 = icmp ne ptr %30, null
  %131 = load ptr, ptr %129, align 8, !tbaa !51
  %132 = icmp ne ptr %131, null
  %133 = select i1 %132, i1 %130, i1 false
  br i1 %133, label %134, label %145

134:                                              ; preds = %128, %140
  %135 = phi ptr [ %143, %140 ], [ %131, %128 ]
  %136 = phi i64 [ %141, %140 ], [ 0, %128 ]
  %137 = load ptr, ptr %135, align 8, !tbaa !51
  %138 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %137) #25
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %134
  %141 = add nuw nsw i64 %136, 1
  %142 = getelementptr inbounds ptr, ptr %129, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !51
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %134, !llvm.loop !137

145:                                              ; preds = %134, %140, %128
  %146 = phi i64 [ 0, %128 ], [ %141, %140 ], [ %136, %134 ]
  %147 = icmp eq i64 %146, 0
  %148 = add nuw nsw i64 %146, 2
  br label %149

149:                                              ; preds = %325, %145
  %150 = phi ptr [ %125, %145 ], [ %326, %325 ]
  %151 = getelementptr inbounds i8, ptr %150, i64 1
  %152 = tail call i64 @strspn(ptr noundef nonnull %151, ptr noundef nonnull @.str.24) #25
  %153 = getelementptr inbounds i8, ptr %150, i64 %152
  %154 = getelementptr inbounds i8, ptr %153, i64 1
  %155 = load i8, ptr %154, align 1, !tbaa !62
  switch i8 %155, label %156 [
    i8 0, label %345
    i8 62, label %345
  ], !llvm.loop !135

156:                                              ; preds = %149
  %157 = tail call i64 @strcspn(ptr noundef nonnull %154, ptr noundef nonnull @.str.24) #25
  %158 = getelementptr inbounds i8, ptr %154, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !62
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %156
  store i8 0, ptr %158, align 1, !tbaa !62
  %162 = getelementptr inbounds i8, ptr %158, i64 1
  %163 = tail call i64 @strspn(ptr noundef nonnull %162, ptr noundef nonnull @.str.24) #25
  %164 = getelementptr i8, ptr %158, i64 %163
  %165 = getelementptr i8, ptr %164, i64 1
  %166 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %165, ptr noundef nonnull dereferenceable(6) @.str.59, i64 noundef 5) #25
  %167 = icmp eq i32 %166, 0
  %168 = select i1 %167, ptr @.str.49, ptr @.str.60
  %169 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %165, ptr noundef nonnull dereferenceable(9) @.str.61, i64 noundef 8) #25
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %178

171:                                              ; preds = %156
  %172 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1812, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.58) #23
  br label %359

173:                                              ; preds = %161
  %174 = getelementptr i8, ptr %164, i64 9
  %175 = tail call i64 @strspn(ptr noundef %174, ptr noundef nonnull @.str.24) #25
  %176 = getelementptr i8, ptr %165, i64 %175
  %177 = getelementptr i8, ptr %176, i64 8
  br label %178

178:                                              ; preds = %173, %161
  %179 = phi ptr [ %177, %173 ], [ %165, %161 ]
  %180 = load i8, ptr %179, align 1, !tbaa !62
  %181 = icmp eq i8 %180, 40
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %179, i32 noundef 41) #25
  br label %187

184:                                              ; preds = %178
  %185 = tail call i64 @strcspn(ptr noundef nonnull %179, ptr noundef nonnull @.str.24) #25
  %186 = getelementptr inbounds i8, ptr %179, i64 %185
  br label %187

187:                                              ; preds = %184, %182
  %188 = phi ptr [ %183, %182 ], [ %186, %184 ]
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1826, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.58) #23
  br label %359

192:                                              ; preds = %187
  %193 = tail call i64 @strspn(ptr noundef nonnull %188, ptr noundef nonnull @.str.62) #25
  %194 = getelementptr inbounds i8, ptr %188, i64 %193
  %195 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(7) @.str.63, i64 noundef 6) #25
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = getelementptr inbounds i8, ptr %194, i64 6
  %199 = tail call i64 @strspn(ptr noundef nonnull %198, ptr noundef nonnull @.str.24) #25
  %200 = getelementptr i8, ptr %194, i64 %199
  %201 = getelementptr i8, ptr %200, i64 6
  br label %202

202:                                              ; preds = %197, %192
  %203 = phi ptr [ %201, %197 ], [ %194, %192 ]
  %204 = load i8, ptr %203, align 1, !tbaa !62
  switch i8 %204, label %217 [
    i8 35, label %205
    i8 34, label %211
    i8 39, label %211
  ]

205:                                              ; preds = %202
  %206 = tail call i64 @strcspn(ptr noundef nonnull %203, ptr noundef nonnull @.str.23) #25
  %207 = add i64 %206, -1
  %208 = getelementptr inbounds i8, ptr %203, i64 %207
  %209 = load i8, ptr %168, align 1, !tbaa !62
  %210 = icmp eq i8 %209, 32
  br i1 %210, label %325, label %219

211:                                              ; preds = %202, %202
  %212 = getelementptr inbounds i8, ptr %203, i64 1
  %213 = zext nneg i8 %204 to i32
  %214 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %212, i32 noundef %213) #25
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %211
  store i8 0, ptr %214, align 1, !tbaa !62
  br label %219

217:                                              ; preds = %202, %211
  %218 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1848, i32 noundef 310, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.58) #23
  br label %359

219:                                              ; preds = %205, %216
  %220 = phi ptr [ %212, %216 ], [ null, %205 ]
  %221 = phi ptr [ %214, %216 ], [ %208, %205 ]
  %222 = load ptr, ptr %23, align 8, !tbaa !76
  %223 = getelementptr inbounds ptr, ptr %222, i64 %146
  %224 = load ptr, ptr %223, align 8, !tbaa !51
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %271

226:                                              ; preds = %219
  br i1 %147, label %227, label %229

227:                                              ; preds = %226
  %228 = tail call dereferenceable_or_null(16) ptr @AcquireQuantumMemory(i64 noundef 2, i64 noundef 8) #28
  br label %231

229:                                              ; preds = %226
  %230 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %222, i64 noundef %148, i64 noundef 8) #27
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi ptr [ %230, %229 ], [ %228, %227 ]
  store ptr %232, ptr %23, align 8, !tbaa !76
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #26
  call void @GetExceptionInfo(ptr noundef nonnull %7) #23
  %235 = tail call ptr @__errno_location() #29
  %236 = load i32, ptr %235, align 4, !tbaa !85
  %237 = call ptr @GetExceptionMessage(i32 noundef %236) #23
  %238 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1868, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %237) #23
  %239 = call ptr @DestroyString(ptr noundef %237) #23
  call void @CatchException(ptr noundef nonnull %7) #23
  %240 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %7) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #30
  unreachable

241:                                              ; preds = %231
  %242 = tail call dereferenceable_or_null(16) ptr @AcquireQuantumMemory(i64 noundef 2, i64 noundef 8) #28
  %243 = load ptr, ptr %23, align 8, !tbaa !76
  %244 = getelementptr inbounds ptr, ptr %243, i64 %146
  store ptr %242, ptr %244, align 8, !tbaa !51
  %245 = load ptr, ptr %23, align 8, !tbaa !76
  %246 = getelementptr inbounds ptr, ptr %245, i64 %146
  %247 = load ptr, ptr %246, align 8, !tbaa !51
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %256

249:                                              ; preds = %241
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #26
  call void @GetExceptionInfo(ptr noundef nonnull %8) #23
  %250 = tail call ptr @__errno_location() #29
  %251 = load i32, ptr %250, align 4, !tbaa !85
  %252 = call ptr @GetExceptionMessage(i32 noundef %251) #23
  %253 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1873, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %252) #23
  %254 = call ptr @DestroyString(ptr noundef %252) #23
  call void @CatchException(ptr noundef nonnull %8) #23
  %255 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %8) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #30
  unreachable

256:                                              ; preds = %241
  %257 = tail call ptr @ConstantString(ptr noundef nonnull %118) #23
  %258 = load ptr, ptr %23, align 8, !tbaa !76
  %259 = getelementptr inbounds ptr, ptr %258, i64 %146
  %260 = load ptr, ptr %259, align 8, !tbaa !51
  store ptr %257, ptr %260, align 8, !tbaa !51
  %261 = load ptr, ptr %23, align 8, !tbaa !76
  %262 = getelementptr inbounds ptr, ptr %261, i64 %146
  %263 = load ptr, ptr %262, align 8, !tbaa !51
  %264 = getelementptr inbounds ptr, ptr %263, i64 1
  store ptr null, ptr %264, align 8, !tbaa !51
  %265 = load ptr, ptr %23, align 8, !tbaa !76
  %266 = getelementptr ptr, ptr %265, i64 %146
  %267 = getelementptr ptr, ptr %266, i64 1
  store ptr null, ptr %267, align 8, !tbaa !51
  %268 = load ptr, ptr %23, align 8, !tbaa !76
  %269 = getelementptr inbounds ptr, ptr %268, i64 %146
  %270 = load ptr, ptr %269, align 8, !tbaa !51
  br label %271

271:                                              ; preds = %256, %219
  %272 = phi ptr [ %270, %256 ], [ %224, %219 ]
  br label %273

273:                                              ; preds = %273, %271
  %274 = phi i64 [ 1, %271 ], [ %278, %273 ]
  %275 = getelementptr inbounds ptr, ptr %272, i64 %274
  %276 = load ptr, ptr %275, align 8, !tbaa !51
  %277 = icmp eq ptr %276, null
  %278 = add nuw nsw i64 %274, 3
  br i1 %277, label %279, label %273, !llvm.loop !138

279:                                              ; preds = %273
  %280 = add nuw nsw i64 %274, 4
  %281 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %272, i64 noundef %280, i64 noundef 8) #27
  %282 = load ptr, ptr %23, align 8, !tbaa !76
  %283 = getelementptr inbounds ptr, ptr %282, i64 %146
  store ptr %281, ptr %283, align 8, !tbaa !51
  %284 = load ptr, ptr %23, align 8, !tbaa !76
  %285 = getelementptr inbounds ptr, ptr %284, i64 %146
  %286 = load ptr, ptr %285, align 8, !tbaa !51
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %295

288:                                              ; preds = %279
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #26
  call void @GetExceptionInfo(ptr noundef nonnull %9) #23
  %289 = tail call ptr @__errno_location() #29
  %290 = load i32, ptr %289, align 4, !tbaa !85
  %291 = call ptr @GetExceptionMessage(i32 noundef %290) #23
  %292 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1883, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %291) #23
  %293 = call ptr @DestroyString(ptr noundef %291) #23
  call void @CatchException(ptr noundef nonnull %9) #23
  %294 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #30
  unreachable

295:                                              ; preds = %279
  %296 = getelementptr ptr, ptr %286, i64 %274
  %297 = getelementptr ptr, ptr %296, i64 3
  store ptr null, ptr %297, align 8, !tbaa !51
  %298 = tail call ptr @ConstantString(ptr noundef nonnull %168) #23
  %299 = load ptr, ptr %23, align 8, !tbaa !76
  %300 = getelementptr inbounds ptr, ptr %299, i64 %146
  %301 = load ptr, ptr %300, align 8, !tbaa !51
  %302 = getelementptr ptr, ptr %301, i64 %274
  %303 = getelementptr ptr, ptr %302, i64 2
  store ptr %298, ptr %303, align 8, !tbaa !51
  %304 = load ptr, ptr %23, align 8, !tbaa !76
  %305 = getelementptr inbounds ptr, ptr %304, i64 %146
  %306 = load ptr, ptr %305, align 8, !tbaa !51
  %307 = add nuw nsw i64 %274, 1
  %308 = getelementptr inbounds ptr, ptr %306, i64 %307
  store ptr null, ptr %308, align 8, !tbaa !51
  %309 = icmp eq ptr %220, null
  br i1 %309, label %319, label %310

310:                                              ; preds = %295
  %311 = load ptr, ptr %24, align 8, !tbaa !73
  %312 = load i8, ptr %168, align 1, !tbaa !62
  %313 = sext i8 %312 to i32
  %314 = tail call fastcc ptr @ParseEntities(ptr noundef nonnull %220, ptr noundef %311, i32 noundef %313) #24
  %315 = load ptr, ptr %23, align 8, !tbaa !76
  %316 = getelementptr inbounds ptr, ptr %315, i64 %146
  %317 = load ptr, ptr %316, align 8, !tbaa !51
  %318 = getelementptr inbounds ptr, ptr %317, i64 %307
  store ptr %314, ptr %318, align 8, !tbaa !51
  br label %319

319:                                              ; preds = %310, %295
  %320 = tail call ptr @ConstantString(ptr noundef nonnull %154) #23
  %321 = load ptr, ptr %23, align 8, !tbaa !76
  %322 = getelementptr inbounds ptr, ptr %321, i64 %146
  %323 = load ptr, ptr %322, align 8, !tbaa !51
  %324 = getelementptr inbounds ptr, ptr %323, i64 %274
  store ptr %320, ptr %324, align 8, !tbaa !51
  br label %325

325:                                              ; preds = %319, %205
  %326 = phi ptr [ %208, %205 ], [ %221, %319 ]
  br label %149, !llvm.loop !139

327:                                              ; preds = %111
  %328 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(5) @.str.64, i64 noundef 4) #25
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = getelementptr inbounds i8, ptr %36, i64 4
  %332 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %331, ptr noundef nonnull dereferenceable(1) @.str.65) #25
  br label %345

333:                                              ; preds = %327
  %334 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(3) @.str.66, i64 noundef 2) #25
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %349

336:                                              ; preds = %333
  %337 = getelementptr inbounds i8, ptr %36, i64 2
  %338 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %337, ptr noundef nonnull dereferenceable(1) @.str.67) #25
  %339 = icmp eq ptr %338, null
  br i1 %339, label %345, label %340

340:                                              ; preds = %336
  %341 = ptrtoint ptr %338 to i64
  %342 = ptrtoint ptr %337 to i64
  %343 = sub i64 %341, %342
  tail call fastcc void @ParseProcessingInstructions(ptr noundef %0, ptr noundef nonnull %337, i64 noundef %343) #24
  %344 = getelementptr inbounds i8, ptr %338, i64 1
  br label %345

345:                                              ; preds = %149, %149, %340, %336, %353, %356, %351, %330, %103
  %346 = phi ptr [ %90, %103 ], [ %26, %330 ], [ %26, %340 ], [ %26, %336 ], [ %26, %351 ], [ %26, %356 ], [ %26, %353 ], [ %26, %149 ], [ %26, %149 ]
  %347 = phi ptr [ %49, %103 ], [ %30, %330 ], [ %30, %340 ], [ %30, %336 ], [ %30, %351 ], [ %30, %356 ], [ %30, %353 ], [ %154, %149 ], [ %154, %149 ]
  %348 = phi ptr [ %96, %103 ], [ %332, %330 ], [ %344, %340 ], [ null, %336 ], [ %352, %351 ], [ %354, %356 ], [ %354, %353 ], [ %150, %149 ], [ %150, %149 ]
  br label %25, !llvm.loop !135

349:                                              ; preds = %333
  %350 = icmp eq i8 %37, 60
  br i1 %350, label %351, label %353

351:                                              ; preds = %349
  %352 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %36, i32 noundef 62) #25
  br label %345

353:                                              ; preds = %349
  %354 = getelementptr inbounds i8, ptr %36, i64 1
  %355 = icmp eq i8 %37, 37
  br i1 %355, label %356, label %345

356:                                              ; preds = %353
  %357 = load i32, ptr %22, align 8, !tbaa !140
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %345

359:                                              ; preds = %356, %32, %35, %217, %190, %171, %121, %109
  %360 = phi ptr [ %26, %217 ], [ %26, %190 ], [ %26, %171 ], [ %26, %121 ], [ %90, %109 ], [ %26, %35 ], [ %26, %32 ], [ %26, %356 ]
  %361 = phi i32 [ 0, %217 ], [ 0, %190 ], [ 0, %171 ], [ 0, %121 ], [ 0, %109 ], [ 1, %35 ], [ 1, %32 ], [ 1, %356 ]
  %362 = tail call ptr @RelinquishMagickMemory(ptr noundef %360) #23
  ret i32 %361
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ParseProcessingInstructions(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 !PGOFuncName !141 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = alloca %struct._ExceptionInfo, align 8
  %8 = alloca %struct._ExceptionInfo, align 8
  %9 = getelementptr inbounds i8, ptr %1, i64 %2
  store i8 0, ptr %9, align 1, !tbaa !62
  %10 = tail call i64 @strcspn(ptr noundef %1, ptr noundef nonnull @.str.24) #25
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !62
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  store i8 0, ptr %11, align 1, !tbaa !62
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = tail call i64 @strspn(ptr noundef nonnull %15, ptr noundef nonnull @.str.24) #25
  %17 = getelementptr i8, ptr %11, i64 %16
  %18 = getelementptr i8, ptr %17, i64 1
  br label %19

19:                                               ; preds = %14, %3
  %20 = phi ptr [ %18, %14 ], [ %11, %3 ]
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.68) #25
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) @.str.69) #25
  %25 = icmp eq ptr %24, null
  br i1 %25, label %182, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %24, i64 10
  %28 = tail call i64 @strspn(ptr noundef nonnull %27, ptr noundef nonnull @.str.70) #25
  %29 = getelementptr inbounds i8, ptr %24, i64 %28
  %30 = getelementptr inbounds i8, ptr %29, i64 10
  %31 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(4) @.str.71, i64 noundef 3) #25
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %182

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 2
  store i32 1, ptr %34, align 8, !tbaa !140
  br label %182

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct._XMLTreeRoot, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  %38 = load ptr, ptr %37, align 8, !tbaa !51
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = tail call dereferenceable_or_null(8) ptr @AcquireMagickMemory(i64 noundef 8) #22
  store ptr %41, ptr %36, align 8, !tbaa !79
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #26
  call void @GetExceptionInfo(ptr noundef nonnull %4) #23
  %44 = tail call ptr @__errno_location() #29
  %45 = load i32, ptr %44, align 4, !tbaa !85
  %46 = call ptr @GetExceptionMessage(i32 noundef %45) #23
  %47 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1653, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %46) #23
  %48 = call ptr @DestroyString(ptr noundef %46) #23
  call void @CatchException(ptr noundef nonnull %4) #23
  %49 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #30
  unreachable

50:                                               ; preds = %40
  store ptr null, ptr %41, align 8, !tbaa !51
  %51 = load ptr, ptr %36, align 8, !tbaa !79
  %52 = load ptr, ptr %51, align 8, !tbaa !51
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %35, %50
  %55 = phi ptr [ %51, %50 ], [ %37, %35 ]
  %56 = phi ptr [ %52, %50 ], [ %38, %35 ]
  br label %57

57:                                               ; preds = %54, %63
  %58 = phi ptr [ %66, %63 ], [ %56, %54 ]
  %59 = phi i64 [ %64, %63 ], [ 0, %54 ]
  %60 = load ptr, ptr %58, align 8, !tbaa !51
  %61 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %60) #25
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %117, label %63

63:                                               ; preds = %57
  %64 = add nuw nsw i64 %59, 1
  %65 = getelementptr inbounds ptr, ptr %55, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !51
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %57, !llvm.loop !142

68:                                               ; preds = %63, %50
  %69 = phi ptr [ %51, %50 ], [ %55, %63 ]
  %70 = phi i64 [ 0, %50 ], [ %64, %63 ]
  %71 = add nuw nsw i64 %70, 2
  %72 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %69, i64 noundef %71, i64 noundef 8) #27
  store ptr %72, ptr %36, align 8, !tbaa !79
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #26
  call void @GetExceptionInfo(ptr noundef nonnull %5) #23
  %75 = tail call ptr @__errno_location() #29
  %76 = load i32, ptr %75, align 4, !tbaa !85
  %77 = call ptr @GetExceptionMessage(i32 noundef %76) #23
  %78 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1666, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %77) #23
  %79 = call ptr @DestroyString(ptr noundef %77) #23
  call void @CatchException(ptr noundef nonnull %5) #23
  %80 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #30
  unreachable

81:                                               ; preds = %68
  %82 = tail call dereferenceable_or_null(24) ptr @AcquireQuantumMemory(i64 noundef 3, i64 noundef 8) #28
  %83 = load ptr, ptr %36, align 8, !tbaa !79
  %84 = getelementptr inbounds ptr, ptr %83, i64 %70
  store ptr %82, ptr %84, align 8, !tbaa !51
  %85 = load ptr, ptr %36, align 8, !tbaa !79
  %86 = getelementptr inbounds ptr, ptr %85, i64 %70
  %87 = load ptr, ptr %86, align 8, !tbaa !51
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #26
  call void @GetExceptionInfo(ptr noundef nonnull %6) #23
  %90 = tail call ptr @__errno_location() #29
  %91 = load i32, ptr %90, align 4, !tbaa !85
  %92 = call ptr @GetExceptionMessage(i32 noundef %91) #23
  %93 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1670, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %92) #23
  %94 = call ptr @DestroyString(ptr noundef %92) #23
  call void @CatchException(ptr noundef nonnull %6) #23
  %95 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #30
  unreachable

96:                                               ; preds = %81
  %97 = add nuw nsw i64 %70, 1
  %98 = getelementptr inbounds ptr, ptr %85, i64 %97
  store ptr null, ptr %98, align 8, !tbaa !51
  %99 = tail call ptr @ConstantString(ptr noundef %1) #23
  %100 = load ptr, ptr %36, align 8, !tbaa !79
  %101 = getelementptr inbounds ptr, ptr %100, i64 %70
  %102 = load ptr, ptr %101, align 8, !tbaa !51
  store ptr %99, ptr %102, align 8, !tbaa !51
  %103 = load ptr, ptr %36, align 8, !tbaa !79
  %104 = getelementptr inbounds ptr, ptr %103, i64 %97
  %105 = load ptr, ptr %104, align 8, !tbaa !51
  %106 = getelementptr inbounds ptr, ptr %103, i64 %70
  %107 = load ptr, ptr %106, align 8, !tbaa !51
  %108 = getelementptr inbounds ptr, ptr %107, i64 1
  store ptr %105, ptr %108, align 8, !tbaa !51
  %109 = load ptr, ptr %36, align 8, !tbaa !79
  %110 = getelementptr inbounds ptr, ptr %109, i64 %97
  store ptr null, ptr %110, align 8, !tbaa !51
  %111 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #23
  %112 = load ptr, ptr %36, align 8, !tbaa !79
  %113 = getelementptr inbounds ptr, ptr %112, i64 %70
  %114 = load ptr, ptr %113, align 8, !tbaa !51
  %115 = getelementptr inbounds ptr, ptr %114, i64 2
  store ptr %111, ptr %115, align 8, !tbaa !51
  %116 = load ptr, ptr %36, align 8, !tbaa !79
  br label %117

117:                                              ; preds = %57, %96
  %118 = phi ptr [ %116, %96 ], [ %55, %57 ]
  %119 = phi i64 [ %70, %96 ], [ %59, %57 ]
  %120 = getelementptr inbounds ptr, ptr %118, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !51
  br label %122

122:                                              ; preds = %122, %117
  %123 = phi i64 [ 1, %117 ], [ %127, %122 ]
  %124 = getelementptr inbounds ptr, ptr %121, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !51
  %126 = icmp eq ptr %125, null
  %127 = add nuw nsw i64 %123, 1
  br i1 %126, label %128, label %122, !llvm.loop !143

128:                                              ; preds = %122
  %129 = add nuw nsw i64 %123, 3
  %130 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %121, i64 noundef %129, i64 noundef 8) #27
  %131 = load ptr, ptr %36, align 8, !tbaa !79
  %132 = getelementptr inbounds ptr, ptr %131, i64 %119
  store ptr %130, ptr %132, align 8, !tbaa !51
  %133 = load ptr, ptr %36, align 8, !tbaa !79
  %134 = getelementptr inbounds ptr, ptr %133, i64 %119
  %135 = load ptr, ptr %134, align 8, !tbaa !51
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %144

137:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #26
  call void @GetExceptionInfo(ptr noundef nonnull %7) #23
  %138 = tail call ptr @__errno_location() #29
  %139 = load i32, ptr %138, align 4, !tbaa !85
  %140 = call ptr @GetExceptionMessage(i32 noundef %139) #23
  %141 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1685, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %140) #23
  %142 = call ptr @DestroyString(ptr noundef %140) #23
  call void @CatchException(ptr noundef nonnull %7) #23
  %143 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %7) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #30
  unreachable

144:                                              ; preds = %128
  %145 = getelementptr inbounds ptr, ptr %135, i64 %127
  %146 = load ptr, ptr %145, align 8, !tbaa !51
  %147 = tail call ptr @ResizeQuantumMemory(ptr noundef %146, i64 noundef %127, i64 noundef 8) #27
  %148 = load ptr, ptr %36, align 8, !tbaa !79
  %149 = getelementptr inbounds ptr, ptr %148, i64 %119
  %150 = load ptr, ptr %149, align 8, !tbaa !51
  %151 = add nuw nsw i64 %123, 2
  %152 = getelementptr inbounds ptr, ptr %150, i64 %151
  store ptr %147, ptr %152, align 8, !tbaa !51
  %153 = load ptr, ptr %36, align 8, !tbaa !79
  %154 = getelementptr inbounds ptr, ptr %153, i64 %119
  %155 = load ptr, ptr %154, align 8, !tbaa !51
  %156 = getelementptr inbounds ptr, ptr %155, i64 %151
  %157 = load ptr, ptr %156, align 8, !tbaa !51
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #26
  call void @GetExceptionInfo(ptr noundef nonnull %8) #23
  %160 = tail call ptr @__errno_location() #29
  %161 = load i32, ptr %160, align 4, !tbaa !85
  %162 = call ptr @GetExceptionMessage(i32 noundef %161) #23
  %163 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 1690, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %162) #23
  %164 = call ptr @DestroyString(ptr noundef %162) #23
  call void @CatchException(ptr noundef nonnull %8) #23
  %165 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %8) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #30
  unreachable

166:                                              ; preds = %144
  %167 = getelementptr inbounds i8, ptr %157, i64 %123
  %168 = getelementptr inbounds i8, ptr %167, i64 -1
  %169 = load ptr, ptr %0, align 8, !tbaa !112
  %170 = icmp eq ptr %169, null
  %171 = select i1 %170, ptr @.str.73, ptr @.str.72
  %172 = tail call i64 @CopyMagickString(ptr noundef nonnull %168, ptr noundef nonnull %171, i64 noundef 2) #23
  %173 = tail call ptr @ConstantString(ptr noundef %20) #23
  %174 = load ptr, ptr %36, align 8, !tbaa !79
  %175 = getelementptr inbounds ptr, ptr %174, i64 %119
  %176 = load ptr, ptr %175, align 8, !tbaa !51
  %177 = getelementptr inbounds ptr, ptr %176, i64 %123
  store ptr %173, ptr %177, align 8, !tbaa !51
  %178 = load ptr, ptr %36, align 8, !tbaa !79
  %179 = getelementptr inbounds ptr, ptr %178, i64 %119
  %180 = load ptr, ptr %179, align 8, !tbaa !51
  %181 = getelementptr inbounds ptr, ptr %180, i64 %127
  store ptr null, ptr %181, align 8, !tbaa !51
  br label %182

182:                                              ; preds = %23, %26, %33, %166
  ret void
}

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PruneTagFromXMLTree(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2372, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct._XMLTreeInfo, ptr %9, i64 0, i32 6
  store ptr %13, ptr %14, align 8, !tbaa !53
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
  br i1 %29, label %30, label %25, !llvm.loop !144

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct._XMLTreeInfo, ptr %26, i64 0, i32 7
  %32 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  store ptr %33, ptr %31, align 8, !tbaa !48
  %34 = load ptr, ptr %21, align 8, !tbaa !34
  %35 = load ptr, ptr %0, align 8, !tbaa !34
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %35) #25
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %30, %38
  %39 = phi ptr [ %41, %38 ], [ %21, %30 ]
  %40 = getelementptr inbounds %struct._XMLTreeInfo, ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !53
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %35) #25
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %38, !llvm.loop !145

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct._XMLTreeInfo, ptr %39, i64 0, i32 6
  %47 = icmp eq ptr %41, %0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  br i1 %10, label %49, label %52

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  br label %52

52:                                               ; preds = %48, %49
  %53 = phi ptr [ %51, %49 ], [ %9, %48 ]
  store ptr %53, ptr %46, align 8, !tbaa !53
  br label %54

54:                                               ; preds = %45, %52, %30
  %55 = phi ptr [ %41, %45 ], [ %21, %30 ], [ %39, %52 ]
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi ptr [ %59, %56 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct._XMLTreeInfo, ptr %57, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !54
  %60 = icmp eq ptr %59, null
  %61 = icmp eq ptr %59, %0
  %62 = or i1 %60, %61
  br i1 %62, label %63, label %56, !llvm.loop !146

63:                                               ; preds = %56
  br i1 %60, label %71, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct._XMLTreeInfo, ptr %57, i64 0, i32 5
  %66 = getelementptr inbounds %struct._XMLTreeInfo, ptr %59, i64 0, i32 5
  br label %67

67:                                               ; preds = %64, %23
  %68 = phi ptr [ %24, %23 ], [ %66, %64 ]
  %69 = phi ptr [ %20, %23 ], [ %65, %64 ]
  %70 = load ptr, ptr %68, align 8, !tbaa !51
  store ptr %70, ptr %69, align 8, !tbaa !51
  br label %71

71:                                               ; preds = %67, %63, %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @SetXMLTreeAttribute(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2450, ptr noundef nonnull @.str.2) #23
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %11, %21
  %17 = phi ptr [ %24, %21 ], [ %14, %11 ]
  %18 = phi i64 [ %22, %21 ], [ 0, %11 ]
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %1) #25
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %60, label %21

21:                                               ; preds = %16
  %22 = add nuw nsw i64 %18, 2
  %23 = getelementptr inbounds ptr, ptr %13, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %16, !llvm.loop !147

26:                                               ; preds = %21, %11
  %27 = phi i64 [ 0, %11 ], [ %22, %21 ]
  %28 = icmp eq ptr %2, null
  br i1 %28, label %122, label %29

29:                                               ; preds = %26
  %30 = icmp eq ptr %13, @sentinel
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = add nuw nsw i64 %27, 4
  %33 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %13, i64 noundef %32, i64 noundef 8) #27
  store ptr %33, ptr %12, align 8, !tbaa !41
  br label %42

34:                                               ; preds = %29
  %35 = tail call dereferenceable_or_null(32) ptr @AcquireQuantumMemory(i64 noundef 4, i64 noundef 8) #28
  store ptr %35, ptr %12, align 8, !tbaa !41
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @ConstantString(ptr noundef nonnull @.str) #23
  %39 = load ptr, ptr %12, align 8, !tbaa !41
  %40 = getelementptr inbounds ptr, ptr %39, i64 1
  store ptr %38, ptr %40, align 8, !tbaa !51
  %41 = load ptr, ptr %12, align 8, !tbaa !41
  br label %42

42:                                               ; preds = %37, %31
  %43 = phi ptr [ %41, %37 ], [ %33, %31 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %34, %42
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #26
  call void @GetExceptionInfo(ptr noundef nonnull %4) #23
  %46 = tail call ptr @__errno_location() #29
  %47 = load i32, ptr %46, align 4, !tbaa !85
  %48 = call ptr @GetExceptionMessage(i32 noundef %47) #23
  %49 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2473, i32 noundef 700, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.18, ptr noundef %48) #23
  %50 = call ptr @DestroyString(ptr noundef %48) #23
  call void @CatchException(ptr noundef nonnull %4) #23
  %51 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #30
  unreachable

52:                                               ; preds = %42
  %53 = tail call ptr @ConstantString(ptr noundef %1) #23
  %54 = load ptr, ptr %12, align 8, !tbaa !41
  %55 = getelementptr inbounds ptr, ptr %54, i64 %27
  store ptr %53, ptr %55, align 8, !tbaa !51
  %56 = load ptr, ptr %12, align 8, !tbaa !41
  %57 = getelementptr ptr, ptr %56, i64 %27
  %58 = getelementptr ptr, ptr %57, i64 2
  store ptr null, ptr %58, align 8, !tbaa !51
  %59 = load ptr, ptr %12, align 8, !tbaa !41
  br label %60

60:                                               ; preds = %16, %52
  %61 = phi ptr [ %59, %52 ], [ %13, %16 ]
  %62 = phi i64 [ %27, %52 ], [ %18, %16 ]
  br label %63

63:                                               ; preds = %63, %60
  %64 = phi i64 [ %62, %60 ], [ %68, %63 ]
  %65 = getelementptr inbounds ptr, ptr %61, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !51
  %67 = icmp eq ptr %66, null
  %68 = add nuw nsw i64 %64, 2
  br i1 %67, label %69, label %63, !llvm.loop !148

69:                                               ; preds = %63
  %70 = or disjoint i64 %62, 1
  %71 = getelementptr inbounds ptr, ptr %61, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !51
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = tail call ptr @DestroyString(ptr noundef nonnull %72) #23
  %76 = load ptr, ptr %12, align 8, !tbaa !41
  %77 = getelementptr inbounds ptr, ptr %76, i64 %70
  store ptr %75, ptr %77, align 8, !tbaa !51
  br label %78

78:                                               ; preds = %74, %69
  %79 = icmp eq ptr %2, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %78
  %81 = tail call ptr @ConstantString(ptr noundef nonnull %2) #23
  %82 = load ptr, ptr %12, align 8, !tbaa !41
  %83 = getelementptr inbounds ptr, ptr %82, i64 %70
  store ptr %81, ptr %83, align 8, !tbaa !51
  br label %122

84:                                               ; preds = %78
  %85 = load ptr, ptr %12, align 8, !tbaa !41
  %86 = getelementptr inbounds ptr, ptr %85, i64 %62
  %87 = load ptr, ptr %86, align 8, !tbaa !51
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = tail call ptr @DestroyString(ptr noundef nonnull %87) #23
  %91 = load ptr, ptr %12, align 8, !tbaa !41
  %92 = getelementptr inbounds ptr, ptr %91, i64 %62
  store ptr %90, ptr %92, align 8, !tbaa !51
  %93 = load ptr, ptr %12, align 8, !tbaa !41
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi ptr [ %93, %89 ], [ %85, %84 ]
  %96 = getelementptr inbounds ptr, ptr %95, i64 %62
  %97 = getelementptr inbounds ptr, ptr %96, i64 2
  %98 = sub nsw i64 %64, %62
  %99 = shl i64 %98, 3
  %100 = tail call ptr @CopyMagickMemory(ptr noundef %96, ptr noundef nonnull %97, i64 noundef %99) #23
  %101 = load ptr, ptr %12, align 8, !tbaa !41
  %102 = tail call ptr @ResizeQuantumMemory(ptr noundef %101, i64 noundef %68, i64 noundef 8) #27
  store ptr %102, ptr %12, align 8, !tbaa !41
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #26
  call void @GetExceptionInfo(ptr noundef nonnull %5) #23
  %105 = tail call ptr @__errno_location() #29
  %106 = load i32, ptr %105, align 4, !tbaa !85
  %107 = call ptr @GetExceptionMessage(i32 noundef %106) #23
  %108 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2496, i32 noundef 700, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.18, ptr noundef %107) #23
  %109 = call ptr @DestroyString(ptr noundef %107) #23
  call void @CatchException(ptr noundef nonnull %5) #23
  %110 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #30
  unreachable

111:                                              ; preds = %94
  %112 = getelementptr ptr, ptr %102, i64 %64
  %113 = getelementptr ptr, ptr %112, i64 -1
  %114 = load ptr, ptr %113, align 8, !tbaa !51
  %115 = lshr exact i64 %62, 1
  %116 = getelementptr inbounds i8, ptr %114, i64 %115
  %117 = getelementptr inbounds i8, ptr %116, i64 1
  %118 = lshr exact i64 %64, 1
  %119 = sub nsw i64 %118, %115
  %120 = shl i64 %119, 3
  %121 = tail call ptr @CopyMagickMemory(ptr noundef %116, ptr noundef nonnull %117, i64 noundef %120) #23
  br label %122

122:                                              ; preds = %26, %111, %80
  ret ptr %0
}

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @SetXMLTreeContent(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2537, ptr noundef nonnull @.str.2) #23
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroyString(ptr noundef nonnull %10) #23
  store ptr %13, ptr %9, align 8, !tbaa !42
  br label %14

14:                                               ; preds = %12, %8
  %15 = tail call ptr @ConstantString(ptr noundef %1) #23
  store ptr %15, ptr %9, align 8, !tbaa !42
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @XMLTreeInfoToXML(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %5 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef 2738, ptr noundef nonnull @.str.2) #23
  br label %10

10:                                               ; preds = %8, %1
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %210, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @AcquireString(ptr noundef null) #23
  store ptr %14, ptr %2, align 8, !tbaa !51
  store i64 0, ptr %4, align 8, !tbaa !57
  store i64 4096, ptr %3, align 8, !tbaa !57
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi ptr [ %0, %13 ], [ %18, %15 ]
  %17 = getelementptr inbounds %struct._XMLTreeInfo, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !90
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !149

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %198

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._XMLTreeRoot, ptr %16, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = icmp eq ptr %27, null
  br i1 %28, label %106, label %29

29:                                               ; preds = %24, %97
  %30 = phi ptr [ %98, %97 ], [ %26, %24 ]
  %31 = phi ptr [ %104, %97 ], [ %27, %24 ]
  %32 = phi i64 [ %102, %97 ], [ 0, %24 ]
  %33 = phi i64 [ %101, %97 ], [ 0, %24 ]
  %34 = phi i64 [ %100, %97 ], [ 4096, %24 ]
  %35 = phi ptr [ %99, %97 ], [ %14, %24 ]
  %36 = getelementptr ptr, ptr %31, i64 -1
  br label %37

37:                                               ; preds = %37, %29
  %38 = phi i64 [ %42, %37 ], [ 2, %29 ]
  %39 = getelementptr ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !51
  %41 = icmp eq ptr %40, null
  %42 = add nuw nsw i64 %38, 1
  br i1 %41, label %43, label %37, !llvm.loop !150

43:                                               ; preds = %37
  %44 = getelementptr inbounds ptr, ptr %31, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = icmp eq ptr %45, null
  br i1 %46, label %97, label %47

47:                                               ; preds = %43, %86
  %48 = phi ptr [ %87, %86 ], [ %30, %43 ]
  %49 = phi ptr [ %88, %86 ], [ %30, %43 ]
  %50 = phi ptr [ %95, %86 ], [ %45, %43 ]
  %51 = phi i64 [ %94, %86 ], [ 1, %43 ]
  %52 = phi i64 [ %91, %86 ], [ %33, %43 ]
  %53 = phi i64 [ %90, %86 ], [ %34, %43 ]
  %54 = phi ptr [ %89, %86 ], [ %35, %43 ]
  %55 = getelementptr inbounds ptr, ptr %49, i64 %32
  %56 = load ptr, ptr %55, align 8, !tbaa !51
  %57 = getelementptr inbounds ptr, ptr %56, i64 %38
  %58 = load ptr, ptr %57, align 8, !tbaa !51
  %59 = getelementptr i8, ptr %58, i64 %51
  %60 = getelementptr i8, ptr %59, i64 -1
  %61 = load i8, ptr %60, align 1, !tbaa !62
  %62 = icmp eq i8 %61, 62
  br i1 %62, label %86, label %63

63:                                               ; preds = %47
  %64 = load ptr, ptr %56, align 8, !tbaa !51
  %65 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50) #25
  %66 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %64) #25
  %67 = add i64 %52, 4096
  %68 = add i64 %67, %65
  %69 = add i64 %68, %66
  %70 = icmp ugt i64 %69, %53
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = tail call ptr @ResizeQuantumMemory(ptr noundef %54, i64 noundef %69, i64 noundef 1) #27
  %73 = icmp eq ptr %72, null
  br i1 %73, label %210, label %74

74:                                               ; preds = %71, %63
  %75 = phi ptr [ %72, %71 ], [ %54, %63 ]
  %76 = phi i64 [ %69, %71 ], [ %53, %63 ]
  %77 = getelementptr inbounds i8, ptr %75, i64 %52
  %78 = load i8, ptr %50, align 1, !tbaa !62
  %79 = icmp eq i8 %78, 0
  %80 = select i1 %79, ptr @.str, ptr @.str.49
  %81 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %77, i64 noundef %76, ptr noundef nonnull @.str.48, ptr noundef %64, ptr noundef nonnull %80, ptr noundef nonnull %50) #23
  %82 = add i64 %81, %52
  %83 = load ptr, ptr %25, align 8, !tbaa !79
  %84 = getelementptr inbounds ptr, ptr %83, i64 %32
  %85 = load ptr, ptr %84, align 8, !tbaa !51
  br label %86

86:                                               ; preds = %47, %74
  %87 = phi ptr [ %83, %74 ], [ %48, %47 ]
  %88 = phi ptr [ %83, %74 ], [ %49, %47 ]
  %89 = phi ptr [ %75, %74 ], [ %54, %47 ]
  %90 = phi i64 [ %76, %74 ], [ %53, %47 ]
  %91 = phi i64 [ %82, %74 ], [ %52, %47 ]
  %92 = phi ptr [ %85, %74 ], [ %56, %47 ]
  %93 = getelementptr inbounds ptr, ptr %92, i64 %51
  %94 = add nuw nsw i64 %51, 1
  %95 = load ptr, ptr %93, align 8, !tbaa !51
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %47, !llvm.loop !151

97:                                               ; preds = %86, %43
  %98 = phi ptr [ %30, %43 ], [ %87, %86 ]
  %99 = phi ptr [ %35, %43 ], [ %89, %86 ]
  %100 = phi i64 [ %34, %43 ], [ %90, %86 ]
  %101 = phi i64 [ %33, %43 ], [ %91, %86 ]
  %102 = add nuw nsw i64 %32, 1
  %103 = getelementptr inbounds ptr, ptr %98, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !51
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %29, !llvm.loop !152

106:                                              ; preds = %97, %24
  %107 = phi ptr [ %14, %24 ], [ %99, %97 ]
  %108 = phi i64 [ 4096, %24 ], [ %100, %97 ]
  %109 = phi i64 [ 0, %24 ], [ %101, %97 ]
  store i64 %109, ptr %4, align 8, !tbaa !57
  store i64 %108, ptr %3, align 8, !tbaa !57
  store ptr %107, ptr %2, align 8, !tbaa !51
  %110 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 7
  %111 = load ptr, ptr %110, align 8, !tbaa !48
  store ptr null, ptr %21, align 8, !tbaa !46
  store ptr null, ptr %110, align 8, !tbaa !48
  %112 = getelementptr inbounds %struct._XMLTreeRoot, ptr %16, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !76
  %114 = call fastcc ptr @XMLTreeTagToXML(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 0, ptr noundef %113) #24
  store ptr %114, ptr %2, align 8, !tbaa !51
  store ptr null, ptr %21, align 8, !tbaa !46
  store ptr %111, ptr %110, align 8, !tbaa !48
  %115 = load i64, ptr %4, align 8, !tbaa !57
  %116 = load ptr, ptr %25, align 8, !tbaa !79
  %117 = load ptr, ptr %116, align 8, !tbaa !51
  %118 = icmp eq ptr %117, null
  br i1 %118, label %205, label %119

119:                                              ; preds = %106
  %120 = load i64, ptr %3, align 8, !tbaa !57
  br label %121

121:                                              ; preds = %119, %189
  %122 = phi ptr [ %190, %189 ], [ %116, %119 ]
  %123 = phi ptr [ %196, %189 ], [ %117, %119 ]
  %124 = phi i64 [ %194, %189 ], [ 0, %119 ]
  %125 = phi i64 [ %193, %189 ], [ %115, %119 ]
  %126 = phi i64 [ %192, %189 ], [ %120, %119 ]
  %127 = phi ptr [ %191, %189 ], [ %114, %119 ]
  %128 = getelementptr ptr, ptr %123, i64 -1
  br label %129

129:                                              ; preds = %129, %121
  %130 = phi i64 [ %134, %129 ], [ 2, %121 ]
  %131 = getelementptr ptr, ptr %128, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !51
  %133 = icmp eq ptr %132, null
  %134 = add nuw nsw i64 %130, 1
  br i1 %133, label %135, label %129, !llvm.loop !153

135:                                              ; preds = %129
  %136 = getelementptr inbounds ptr, ptr %123, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !51
  %138 = icmp eq ptr %137, null
  br i1 %138, label %189, label %139

139:                                              ; preds = %135, %178
  %140 = phi ptr [ %179, %178 ], [ %122, %135 ]
  %141 = phi ptr [ %180, %178 ], [ %122, %135 ]
  %142 = phi ptr [ %187, %178 ], [ %137, %135 ]
  %143 = phi i64 [ %186, %178 ], [ 1, %135 ]
  %144 = phi i64 [ %183, %178 ], [ %125, %135 ]
  %145 = phi i64 [ %182, %178 ], [ %126, %135 ]
  %146 = phi ptr [ %181, %178 ], [ %127, %135 ]
  %147 = getelementptr inbounds ptr, ptr %141, i64 %124
  %148 = load ptr, ptr %147, align 8, !tbaa !51
  %149 = getelementptr inbounds ptr, ptr %148, i64 %130
  %150 = load ptr, ptr %149, align 8, !tbaa !51
  %151 = getelementptr i8, ptr %150, i64 %143
  %152 = getelementptr i8, ptr %151, i64 -1
  %153 = load i8, ptr %152, align 1, !tbaa !62
  %154 = icmp eq i8 %153, 60
  br i1 %154, label %178, label %155

155:                                              ; preds = %139
  %156 = load ptr, ptr %148, align 8, !tbaa !51
  %157 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %142) #25
  %158 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %156) #25
  %159 = add i64 %144, 4096
  %160 = add i64 %159, %157
  %161 = add i64 %160, %158
  %162 = icmp ugt i64 %161, %145
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = tail call ptr @ResizeQuantumMemory(ptr noundef %146, i64 noundef %161, i64 noundef 1) #27
  %165 = icmp eq ptr %164, null
  br i1 %165, label %210, label %166

166:                                              ; preds = %163, %155
  %167 = phi ptr [ %164, %163 ], [ %146, %155 ]
  %168 = phi i64 [ %161, %163 ], [ %145, %155 ]
  %169 = getelementptr inbounds i8, ptr %167, i64 %144
  %170 = load i8, ptr %142, align 1, !tbaa !62
  %171 = icmp eq i8 %170, 0
  %172 = select i1 %171, ptr @.str, ptr @.str.49
  %173 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %169, i64 noundef %168, ptr noundef nonnull @.str.50, ptr noundef %156, ptr noundef nonnull %172, ptr noundef nonnull %142) #23
  %174 = add i64 %173, %144
  %175 = load ptr, ptr %25, align 8, !tbaa !79
  %176 = getelementptr inbounds ptr, ptr %175, i64 %124
  %177 = load ptr, ptr %176, align 8, !tbaa !51
  br label %178

178:                                              ; preds = %139, %166
  %179 = phi ptr [ %175, %166 ], [ %140, %139 ]
  %180 = phi ptr [ %175, %166 ], [ %141, %139 ]
  %181 = phi ptr [ %167, %166 ], [ %146, %139 ]
  %182 = phi i64 [ %168, %166 ], [ %145, %139 ]
  %183 = phi i64 [ %174, %166 ], [ %144, %139 ]
  %184 = phi ptr [ %177, %166 ], [ %148, %139 ]
  %185 = getelementptr inbounds ptr, ptr %184, i64 %143
  %186 = add nuw nsw i64 %143, 1
  %187 = load ptr, ptr %185, align 8, !tbaa !51
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %139, !llvm.loop !154

189:                                              ; preds = %178, %135
  %190 = phi ptr [ %122, %135 ], [ %179, %178 ]
  %191 = phi ptr [ %127, %135 ], [ %181, %178 ]
  %192 = phi i64 [ %126, %135 ], [ %182, %178 ]
  %193 = phi i64 [ %125, %135 ], [ %183, %178 ]
  %194 = add nuw nsw i64 %124, 1
  %195 = getelementptr inbounds ptr, ptr %190, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !51
  %197 = icmp eq ptr %196, null
  br i1 %197, label %205, label %121, !llvm.loop !155

198:                                              ; preds = %20
  %199 = getelementptr inbounds %struct._XMLTreeInfo, ptr %0, i64 0, i32 7
  %200 = load ptr, ptr %199, align 8, !tbaa !48
  store ptr null, ptr %21, align 8, !tbaa !46
  store ptr null, ptr %199, align 8, !tbaa !48
  %201 = getelementptr inbounds %struct._XMLTreeRoot, ptr %16, i64 0, i32 5
  %202 = load ptr, ptr %201, align 8, !tbaa !76
  %203 = call fastcc ptr @XMLTreeTagToXML(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 0, ptr noundef %202) #24
  store ptr %22, ptr %21, align 8, !tbaa !46
  store ptr %200, ptr %199, align 8, !tbaa !48
  %204 = load i64, ptr %4, align 8, !tbaa !57
  br label %205

205:                                              ; preds = %189, %106, %198
  %206 = phi i64 [ %204, %198 ], [ %115, %106 ], [ %193, %189 ]
  %207 = phi ptr [ %203, %198 ], [ %114, %106 ], [ %191, %189 ]
  %208 = add i64 %206, 1
  %209 = tail call ptr @ResizeQuantumMemory(ptr noundef %207, i64 noundef %208, i64 noundef 1) #27
  br label %210

210:                                              ; preds = %71, %163, %10, %205
  %211 = phi ptr [ %209, %205 ], [ null, %10 ], [ null, %163 ], [ null, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret ptr %211
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @XMLTreeTagToXML(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i64 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !PGOFuncName !156 {
  br label %7

7:                                                ; preds = %243, %6
  %8 = phi ptr [ %0, %6 ], [ %246, %243 ]
  %9 = phi i64 [ %4, %6 ], [ %244, %243 ]
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
  %22 = tail call fastcc ptr @EncodePredefinedEntities(ptr noundef %18, i64 noundef %21, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #24
  store ptr %22, ptr %1, align 8, !tbaa !51
  %23 = load i64, ptr %2, align 8, !tbaa !57
  %24 = load ptr, ptr %8, align 8, !tbaa !34
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #25
  %26 = add i64 %23, 4096
  %27 = add i64 %26, %25
  %28 = load i64, ptr %3, align 8, !tbaa !57
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %16
  store i64 %27, ptr %3, align 8, !tbaa !57
  %31 = tail call ptr @ResizeQuantumMemory(ptr noundef %22, i64 noundef %27, i64 noundef 1) #27
  store ptr %31, ptr %1, align 8, !tbaa !51
  %32 = icmp eq ptr %31, null
  br i1 %32, label %251, label %33

33:                                               ; preds = %30
  %34 = load i64, ptr %2, align 8, !tbaa !57
  %35 = load i64, ptr %3, align 8, !tbaa !57
  %36 = load ptr, ptr %8, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %33, %16
  %38 = phi ptr [ %36, %33 ], [ %24, %16 ]
  %39 = phi i64 [ %35, %33 ], [ %28, %16 ]
  %40 = phi i64 [ %34, %33 ], [ %23, %16 ]
  %41 = phi ptr [ %31, %33 ], [ %22, %16 ]
  %42 = getelementptr inbounds i8, ptr %41, i64 %40
  %43 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %42, i64 noundef %39, ptr noundef nonnull @.str.74, ptr noundef %38) #23
  %44 = load i64, ptr %2, align 8, !tbaa !57
  %45 = add i64 %44, %43
  store i64 %45, ptr %2, align 8, !tbaa !57
  %46 = getelementptr inbounds %struct._XMLTreeInfo, ptr %8, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !41
  %48 = load ptr, ptr %47, align 8, !tbaa !51
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %104, %37
  %51 = load ptr, ptr %5, align 8, !tbaa !51
  %52 = icmp eq ptr %51, null
  br i1 %52, label %184, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %8, align 8, !tbaa !34
  br label %110

55:                                               ; preds = %37, %104
  %56 = phi ptr [ %108, %104 ], [ %48, %37 ]
  %57 = phi i64 [ %106, %104 ], [ 0, %37 ]
  %58 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %8, ptr noundef nonnull %56) #24
  %59 = load ptr, ptr %46, align 8, !tbaa !41
  %60 = or disjoint i64 %57, 1
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !51
  %63 = icmp eq ptr %58, %62
  br i1 %63, label %64, label %104

64:                                               ; preds = %55
  %65 = load i64, ptr %2, align 8, !tbaa !57
  %66 = getelementptr inbounds ptr, ptr %59, i64 %57
  %67 = load ptr, ptr %66, align 8, !tbaa !51
  %68 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %67) #25
  %69 = add i64 %65, 4096
  %70 = add i64 %69, %68
  %71 = load i64, ptr %3, align 8, !tbaa !57
  %72 = icmp ugt i64 %70, %71
  %73 = load ptr, ptr %1, align 8, !tbaa !51
  br i1 %72, label %74, label %83

74:                                               ; preds = %64
  store i64 %70, ptr %3, align 8, !tbaa !57
  %75 = tail call ptr @ResizeQuantumMemory(ptr noundef %73, i64 noundef %70, i64 noundef 1) #27
  store ptr %75, ptr %1, align 8, !tbaa !51
  %76 = icmp eq ptr %75, null
  br i1 %76, label %251, label %77

77:                                               ; preds = %74
  %78 = load i64, ptr %2, align 8, !tbaa !57
  %79 = load i64, ptr %3, align 8, !tbaa !57
  %80 = load ptr, ptr %46, align 8, !tbaa !41
  %81 = getelementptr inbounds ptr, ptr %80, i64 %57
  %82 = load ptr, ptr %81, align 8, !tbaa !51
  br label %83

83:                                               ; preds = %77, %64
  %84 = phi ptr [ %82, %77 ], [ %67, %64 ]
  %85 = phi i64 [ %79, %77 ], [ %71, %64 ]
  %86 = phi i64 [ %78, %77 ], [ %65, %64 ]
  %87 = phi ptr [ %75, %77 ], [ %73, %64 ]
  %88 = getelementptr inbounds i8, ptr %87, i64 %86
  %89 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %88, i64 noundef %85, ptr noundef nonnull @.str.75, ptr noundef %84) #23
  %90 = load i64, ptr %2, align 8, !tbaa !57
  %91 = add i64 %90, %89
  store i64 %91, ptr %2, align 8, !tbaa !57
  %92 = load ptr, ptr %46, align 8, !tbaa !41
  %93 = getelementptr inbounds ptr, ptr %92, i64 %60
  %94 = load ptr, ptr %93, align 8, !tbaa !51
  %95 = tail call fastcc ptr @EncodePredefinedEntities(ptr noundef %94, i64 noundef -1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1) #24
  %96 = load ptr, ptr %1, align 8, !tbaa !51
  %97 = load i64, ptr %2, align 8, !tbaa !57
  %98 = getelementptr inbounds i8, ptr %96, i64 %97
  %99 = load i64, ptr %3, align 8, !tbaa !57
  %100 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %98, i64 noundef %99, ptr noundef nonnull @.str.76) #23
  %101 = load i64, ptr %2, align 8, !tbaa !57
  %102 = add i64 %101, %100
  store i64 %102, ptr %2, align 8, !tbaa !57
  %103 = load ptr, ptr %46, align 8, !tbaa !41
  br label %104

104:                                              ; preds = %55, %83
  %105 = phi ptr [ %59, %55 ], [ %103, %83 ]
  %106 = add nuw nsw i64 %57, 2
  %107 = getelementptr inbounds ptr, ptr %105, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !51
  %109 = icmp eq ptr %108, null
  br i1 %109, label %50, label %55, !llvm.loop !157

110:                                              ; preds = %53, %116
  %111 = phi ptr [ %51, %53 ], [ %119, %116 ]
  %112 = phi i64 [ 0, %53 ], [ %117, %116 ]
  %113 = load ptr, ptr %111, align 8, !tbaa !51
  %114 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %113, ptr noundef nonnull dereferenceable(1) %54) #25
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %110
  %117 = add nuw nsw i64 %112, 1
  %118 = getelementptr inbounds ptr, ptr %5, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !51
  %120 = icmp eq ptr %119, null
  br i1 %120, label %184, label %110, !llvm.loop !158

121:                                              ; preds = %110
  %122 = getelementptr inbounds ptr, ptr %5, i64 %112
  br label %123

123:                                              ; preds = %121, %140
  %124 = phi ptr [ %141, %140 ], [ %111, %121 ]
  %125 = phi i64 [ %142, %140 ], [ 1, %121 ]
  %126 = getelementptr inbounds ptr, ptr %124, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !51
  %128 = icmp eq ptr %127, null
  br i1 %128, label %184, label %129

129:                                              ; preds = %123
  %130 = add nuw nsw i64 %125, 1
  %131 = getelementptr inbounds ptr, ptr %124, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !51
  %133 = icmp eq ptr %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %8, ptr noundef nonnull %127) #24
  %136 = load ptr, ptr %122, align 8, !tbaa !51
  %137 = getelementptr inbounds ptr, ptr %136, i64 %130
  %138 = load ptr, ptr %137, align 8, !tbaa !51
  %139 = icmp eq ptr %135, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %129, %134, %163
  %141 = phi ptr [ %183, %163 ], [ %136, %134 ], [ %124, %129 ]
  %142 = add nuw nsw i64 %125, 3
  %143 = icmp eq ptr %141, null
  br i1 %143, label %184, label %123, !llvm.loop !159

144:                                              ; preds = %134
  %145 = load i64, ptr %2, align 8, !tbaa !57
  %146 = getelementptr inbounds ptr, ptr %136, i64 %125
  %147 = load ptr, ptr %146, align 8, !tbaa !51
  %148 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %147) #25
  %149 = add i64 %145, 4096
  %150 = add i64 %149, %148
  %151 = load i64, ptr %3, align 8, !tbaa !57
  %152 = icmp ugt i64 %150, %151
  %153 = load ptr, ptr %1, align 8, !tbaa !51
  br i1 %152, label %154, label %163

154:                                              ; preds = %144
  store i64 %150, ptr %3, align 8, !tbaa !57
  %155 = tail call ptr @ResizeQuantumMemory(ptr noundef %153, i64 noundef %150, i64 noundef 1) #27
  store ptr %155, ptr %1, align 8, !tbaa !51
  %156 = icmp eq ptr %155, null
  br i1 %156, label %251, label %157

157:                                              ; preds = %154
  %158 = load i64, ptr %2, align 8, !tbaa !57
  %159 = load i64, ptr %3, align 8, !tbaa !57
  %160 = load ptr, ptr %122, align 8, !tbaa !51
  %161 = getelementptr inbounds ptr, ptr %160, i64 %125
  %162 = load ptr, ptr %161, align 8, !tbaa !51
  br label %163

163:                                              ; preds = %157, %144
  %164 = phi ptr [ %162, %157 ], [ %147, %144 ]
  %165 = phi i64 [ %159, %157 ], [ %151, %144 ]
  %166 = phi i64 [ %158, %157 ], [ %145, %144 ]
  %167 = phi ptr [ %155, %157 ], [ %153, %144 ]
  %168 = getelementptr inbounds i8, ptr %167, i64 %166
  %169 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %168, i64 noundef %165, ptr noundef nonnull @.str.75, ptr noundef %164) #23
  %170 = load i64, ptr %2, align 8, !tbaa !57
  %171 = add i64 %170, %169
  store i64 %171, ptr %2, align 8, !tbaa !57
  %172 = load ptr, ptr %122, align 8, !tbaa !51
  %173 = getelementptr inbounds ptr, ptr %172, i64 %130
  %174 = load ptr, ptr %173, align 8, !tbaa !51
  %175 = tail call fastcc ptr @EncodePredefinedEntities(ptr noundef %174, i64 noundef -1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1) #24
  %176 = load ptr, ptr %1, align 8, !tbaa !51
  %177 = load i64, ptr %2, align 8, !tbaa !57
  %178 = getelementptr inbounds i8, ptr %176, i64 %177
  %179 = load i64, ptr %3, align 8, !tbaa !57
  %180 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %178, i64 noundef %179, ptr noundef nonnull @.str.76) #23
  %181 = load i64, ptr %2, align 8, !tbaa !57
  %182 = add i64 %181, %180
  store i64 %182, ptr %2, align 8, !tbaa !57
  %183 = load ptr, ptr %122, align 8, !tbaa !51
  br label %140

184:                                              ; preds = %116, %123, %140, %50
  %185 = load ptr, ptr %1, align 8, !tbaa !51
  %186 = load i64, ptr %2, align 8, !tbaa !57
  %187 = getelementptr inbounds i8, ptr %185, i64 %186
  %188 = load i64, ptr %3, align 8, !tbaa !57
  %189 = getelementptr inbounds %struct._XMLTreeInfo, ptr %8, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !42
  %191 = load i8, ptr %190, align 1, !tbaa !62
  %192 = icmp eq i8 %191, 0
  %193 = select i1 %192, ptr @.str.77, ptr @.str.72
  %194 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %187, i64 noundef %188, ptr noundef nonnull %193) #23
  %195 = load i64, ptr %2, align 8, !tbaa !57
  %196 = add i64 %195, %194
  store i64 %196, ptr %2, align 8, !tbaa !57
  %197 = getelementptr inbounds %struct._XMLTreeInfo, ptr %8, i64 0, i32 8
  %198 = load ptr, ptr %197, align 8, !tbaa !47
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %184
  %201 = tail call fastcc ptr @XMLTreeTagToXML(ptr noundef nonnull %198, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef 0, ptr noundef nonnull %5) #24
  br label %205

202:                                              ; preds = %184
  %203 = load ptr, ptr %189, align 8, !tbaa !42
  %204 = tail call fastcc ptr @EncodePredefinedEntities(ptr noundef %203, i64 noundef -1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0) #24
  br label %205

205:                                              ; preds = %202, %200
  %206 = phi ptr [ %204, %202 ], [ %201, %200 ]
  store ptr %206, ptr %1, align 8, !tbaa !51
  %207 = load i64, ptr %2, align 8, !tbaa !57
  %208 = load ptr, ptr %8, align 8, !tbaa !34
  %209 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %208) #25
  %210 = add i64 %207, 4096
  %211 = add i64 %210, %209
  %212 = load i64, ptr %3, align 8, !tbaa !57
  %213 = icmp ugt i64 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %205
  store i64 %211, ptr %3, align 8, !tbaa !57
  %215 = tail call ptr @ResizeQuantumMemory(ptr noundef %206, i64 noundef %211, i64 noundef 1) #27
  store ptr %215, ptr %1, align 8, !tbaa !51
  %216 = icmp eq ptr %215, null
  br i1 %216, label %251, label %217

217:                                              ; preds = %214, %205
  %218 = phi ptr [ %215, %214 ], [ %206, %205 ]
  %219 = load ptr, ptr %189, align 8, !tbaa !42
  %220 = load i8, ptr %219, align 1, !tbaa !62
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %217
  %223 = load i64, ptr %2, align 8, !tbaa !57
  %224 = getelementptr inbounds i8, ptr %218, i64 %223
  %225 = load i64, ptr %3, align 8, !tbaa !57
  %226 = load ptr, ptr %8, align 8, !tbaa !34
  %227 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %224, i64 noundef %225, ptr noundef nonnull @.str.78, ptr noundef %226) #23
  %228 = load i64, ptr %2, align 8, !tbaa !57
  %229 = add i64 %228, %227
  store i64 %229, ptr %2, align 8, !tbaa !57
  br label %230

230:                                              ; preds = %222, %217
  %231 = load i8, ptr %17, align 1, !tbaa !62
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %243, label %233

233:                                              ; preds = %230
  %234 = load i64, ptr %19, align 8, !tbaa !45
  br label %235

235:                                              ; preds = %233, %238
  %236 = phi i64 [ 0, %233 ], [ %239, %238 ]
  %237 = icmp eq i64 %236, %234
  br i1 %237, label %243, label %238

238:                                              ; preds = %235
  %239 = add i64 %236, 1
  %240 = getelementptr inbounds i8, ptr %17, i64 %239
  %241 = load i8, ptr %240, align 1, !tbaa !62
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %243, label %235, !llvm.loop !160

243:                                              ; preds = %235, %238, %230
  %244 = phi i64 [ 0, %230 ], [ %239, %238 ], [ %234, %235 ]
  %245 = getelementptr inbounds %struct._XMLTreeInfo, ptr %8, i64 0, i32 7
  %246 = load ptr, ptr %245, align 8, !tbaa !48
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %7

248:                                              ; preds = %243
  %249 = getelementptr inbounds i8, ptr %17, i64 %244
  %250 = tail call fastcc ptr @EncodePredefinedEntities(ptr noundef nonnull %249, i64 noundef -1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0) #24
  br label %251

251:                                              ; preds = %214, %30, %74, %154, %248
  %252 = phi ptr [ %250, %248 ], [ null, %154 ], [ null, %74 ], [ null, %30 ], [ null, %214 ]
  ret ptr %252
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #18

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @ValidateEntities(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #19 !PGOFuncName !161 {
  br label %4

4:                                                ; preds = %9, %3
  %5 = phi ptr [ %1, %3 ], [ %10, %9 ]
  %6 = load i8, ptr %5, align 1, !tbaa !62
  switch i8 %6, label %7 [
    i8 0, label %36
    i8 38, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %5, i64 1
  br label %9

9:                                                ; preds = %25, %7, %16, %30
  %10 = phi ptr [ %8, %7 ], [ %12, %16 ], [ %12, %30 ], [ %12, %25 ]
  br label %4, !llvm.loop !162

11:                                               ; preds = %4
  %12 = getelementptr inbounds i8, ptr %5, i64 1
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %14 = tail call i32 @strncmp(ptr noundef nonnull %12, ptr noundef %0, i64 noundef %13) #25
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %2, align 8, !tbaa !51
  %18 = icmp eq ptr %17, null
  br i1 %18, label %9, label %19

19:                                               ; preds = %16, %25
  %20 = phi ptr [ %28, %25 ], [ %17, %16 ]
  %21 = phi i64 [ %26, %25 ], [ 0, %16 ]
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #25
  %23 = tail call i32 @strncmp(ptr noundef nonnull %20, ptr noundef nonnull %12, i64 noundef %22) #25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = add nuw nsw i64 %21, 2
  %27 = getelementptr inbounds ptr, ptr %2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  %29 = icmp eq ptr %28, null
  br i1 %29, label %9, label %19, !llvm.loop !163

30:                                               ; preds = %19
  %31 = or disjoint i64 %21, 1
  %32 = getelementptr inbounds ptr, ptr %2, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !51
  %34 = tail call fastcc i32 @ValidateEntities(ptr noundef %0, ptr noundef %33, ptr noundef nonnull %2) #24, !range !110
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %9

36:                                               ; preds = %30, %11, %4
  %37 = phi i32 [ 1, %4 ], [ 0, %11 ], [ 0, %30 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @EncodePredefinedEntities(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !164 {
  %7 = icmp slt i64 %1, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call ptr @CanonicalXMLContent(ptr noundef %0, i32 noundef %5) #24
  br label %15

10:                                               ; preds = %6
  %11 = tail call ptr @AcquireString(ptr noundef %0) #23
  %12 = getelementptr inbounds i8, ptr %11, i64 %1
  store i8 0, ptr %12, align 1, !tbaa !62
  %13 = tail call ptr @CanonicalXMLContent(ptr noundef %11, i32 noundef %5) #24
  %14 = tail call ptr @DestroyString(ptr noundef %11) #23
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi ptr [ %9, %8 ], [ %13, %10 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %15
  %19 = load i64, ptr %3, align 8, !tbaa !57
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #25
  %21 = add i64 %19, 4096
  %22 = add i64 %21, %20
  %23 = load i64, ptr %4, align 8, !tbaa !57
  %24 = icmp ugt i64 %22, %23
  %25 = load ptr, ptr %2, align 8, !tbaa !51
  br i1 %24, label %26, label %32

26:                                               ; preds = %18
  store i64 %22, ptr %4, align 8, !tbaa !57
  %27 = tail call ptr @ResizeQuantumMemory(ptr noundef %25, i64 noundef %22, i64 noundef 1) #27
  store ptr %27, ptr %2, align 8, !tbaa !51
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = load i64, ptr %3, align 8, !tbaa !57
  %31 = load i64, ptr %4, align 8, !tbaa !57
  br label %32

32:                                               ; preds = %29, %18
  %33 = phi i64 [ %31, %29 ], [ %23, %18 ]
  %34 = phi i64 [ %30, %29 ], [ %19, %18 ]
  %35 = phi ptr [ %27, %29 ], [ %25, %18 ]
  %36 = getelementptr inbounds i8, ptr %35, i64 %34
  %37 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %36, i64 noundef %33, ptr noundef nonnull @.str.79, ptr noundef nonnull %16) #23
  %38 = load i64, ptr %3, align 8, !tbaa !57
  %39 = add i64 %38, %37
  store i64 %39, ptr %3, align 8, !tbaa !57
  %40 = tail call ptr @DestroyString(ptr noundef nonnull %16) #23
  br label %41

41:                                               ; preds = %15, %32
  %42 = load ptr, ptr %2, align 8, !tbaa !51
  br label %43

43:                                               ; preds = %41, %26
  %44 = phi ptr [ null, %26 ], [ %42, %41 ]
  ret ptr %44
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind optsize allocsize(0) }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { nounwind }
attributes #27 = { nounwind optsize allocsize(1,2) }
attributes #28 = { nounwind optsize allocsize(0,1) }
attributes #29 = { nounwind optsize willreturn memory(none) }
attributes #30 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!36, !36, i64 0}
!52 = distinct !{!52, !50}
!53 = !{!35, !36, i64 48}
!54 = !{!35, !36, i64 40}
!55 = distinct !{!55, !50}
!56 = distinct !{!56, !50}
!57 = !{!39, !39, i64 0}
!58 = distinct !{!58, !50}
!59 = distinct !{!59, !50}
!60 = distinct !{!60, !50}
!61 = !{!"xml-tree.c:StringToLong"}
!62 = !{!37, !37, i64 0}
!63 = distinct !{!63, !50}
!64 = distinct !{!64, !50}
!65 = !{!"xml-tree.c:ConvertLatin1ToUTF8"}
!66 = distinct !{!66, !50}
!67 = distinct !{!67, !50}
!68 = !{!"xml-tree.c:DestroyXMLTreeChild"}
!69 = distinct !{!69, !50}
!70 = !{!"xml-tree.c:DestroyXMLTreeOrdered"}
!71 = distinct !{!71, !50}
!72 = !{!"xml-tree.c:DestroyXMLTreeRoot"}
!73 = !{!74, !36, i64 120}
!74 = !{!"_XMLTreeRoot", !35, i64 0, !36, i64 96, !40, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !40, i64 136, !36, i64 144, !39, i64 152}
!75 = distinct !{!75, !50}
!76 = !{!74, !36, i64 128}
!77 = distinct !{!77, !50}
!78 = distinct !{!78, !50}
!79 = !{!74, !36, i64 112}
!80 = distinct !{!80, !50}
!81 = distinct !{!81, !50}
!82 = !{!"xml-tree.c:DestroyXMLTreeAttributes"}
!83 = distinct !{!83, !50}
!84 = distinct !{!84, !50}
!85 = !{!40, !40, i64 0}
!86 = distinct !{!86, !50}
!87 = !{!"xml-tree.c:open_utf8"}
!88 = !{!"xml-tree.c:MagickMin"}
!89 = distinct !{!89, !50}
!90 = !{!74, !36, i64 32}
!91 = distinct !{!91, !50}
!92 = distinct !{!92, !50}
!93 = distinct !{!93, !50}
!94 = distinct !{!94, !50}
!95 = distinct !{!95, !50}
!96 = distinct !{!96, !50}
!97 = distinct !{!97, !50}
!98 = distinct !{!98, !50}
!99 = distinct !{!99, !50}
!100 = distinct !{!100, !50}
!101 = !{!102, !102, i64 0}
!102 = !{!"short", !37, i64 0}
!103 = !{!74, !36, i64 96}
!104 = distinct !{!104, !50}
!105 = distinct !{!105, !50}
!106 = distinct !{!106, !50}
!107 = distinct !{!107, !50}
!108 = distinct !{!108, !50}
!109 = distinct !{!109, !50}
!110 = !{i32 0, i32 2}
!111 = distinct !{!111, !50}
!112 = !{!74, !36, i64 0}
!113 = !{!74, !36, i64 16}
!114 = !{!74, !36, i64 8}
!115 = !{!74, !40, i64 136}
!116 = !{!74, !39, i64 152}
!117 = !{!"xml-tree.c:ConvertUTF16ToUTF8"}
!118 = distinct !{!118, !50}
!119 = distinct !{!119, !50}
!120 = distinct !{!120, !50}
!121 = !{!"xml-tree.c:ParseEntities"}
!122 = distinct !{!122, !50}
!123 = distinct !{!123, !50}
!124 = distinct !{!124, !50}
!125 = distinct !{!125, !50}
!126 = distinct !{!126, !50}
!127 = distinct !{!127, !50}
!128 = distinct !{!128, !50}
!129 = distinct !{!129, !50}
!130 = !{!"xml-tree.c:ParseOpenTag"}
!131 = !{!"xml-tree.c:ParseCloseTag"}
!132 = !{!"xml-tree.c:ParseCharacterContent"}
!133 = !{!"xml-tree.c:ParseInternalDoctype"}
!134 = distinct !{!134, !50}
!135 = distinct !{!135, !50}
!136 = distinct !{!136, !50}
!137 = distinct !{!137, !50}
!138 = distinct !{!138, !50}
!139 = distinct !{!139, !50}
!140 = !{!74, !40, i64 104}
!141 = !{!"xml-tree.c:ParseProcessingInstructions"}
!142 = distinct !{!142, !50}
!143 = distinct !{!143, !50}
!144 = distinct !{!144, !50}
!145 = distinct !{!145, !50}
!146 = distinct !{!146, !50}
!147 = distinct !{!147, !50}
!148 = distinct !{!148, !50}
!149 = distinct !{!149, !50}
!150 = distinct !{!150, !50}
!151 = distinct !{!151, !50}
!152 = distinct !{!152, !50}
!153 = distinct !{!153, !50}
!154 = distinct !{!154, !50}
!155 = distinct !{!155, !50}
!156 = !{!"xml-tree.c:XMLTreeTagToXML"}
!157 = distinct !{!157, !50}
!158 = distinct !{!158, !50}
!159 = distinct !{!159, !50}
!160 = distinct !{!160, !50}
!161 = !{!"xml-tree.c:ValidateEntities"}
!162 = distinct !{!162, !50}
!163 = distinct !{!163, !50}
!164 = !{!"xml-tree.c:EncodePredefinedEntities"}
