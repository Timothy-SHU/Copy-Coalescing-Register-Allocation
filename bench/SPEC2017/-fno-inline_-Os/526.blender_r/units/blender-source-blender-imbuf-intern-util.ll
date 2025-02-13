; ModuleID = 'blender/source/blender/imbuf/intern/util.c'
source_filename = "blender/source/blender/imbuf/intern/util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImFileType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".tga\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".bmp\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".jpeg\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".sgi\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".rgb\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".rgba\00", align 1
@imb_ext_image = dso_local local_unnamed_addr global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr null], align 16
@imb_ext_image_filepath_only = dso_local local_unnamed_addr global [1 x ptr] zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c".gif\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".psd\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c".pct\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c".pict\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c".pntg\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c".qtif\00", align 1
@imb_ext_image_qt = dso_local local_unnamed_addr global [7 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr null], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c".avi\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c".flc\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c".mov\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c".movie\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c".mp4\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c".m4v\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c".m2v\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c".m2t\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c".m2ts\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c".mts\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c".ts\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c".mv\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c".avs\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c".wmv\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c".ogv\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c".ogg\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c".r3d\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c".dv\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c".mpeg\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c".mpg\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c".mpg2\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c".vob\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c".mkv\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c".flv\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c".divx\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c".xvid\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c".mxf\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c".webm\00", align 1
@imb_ext_movie = dso_local local_unnamed_addr global [29 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr null], align 16
@.str.42 = private unnamed_addr constant [5 x i8] c".wav\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c".oga\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c".mp3\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c".mp2\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c".ac3\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c".aac\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c".flac\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c".wma\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c".eac3\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c".aif\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c".aiff\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c".m4a\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c".mka\00", align 1
@imb_ext_audio = dso_local local_unnamed_addr global [15 x ptr] [ptr @.str.42, ptr @.str.29, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr null], align 16
@IMB_FILE_TYPES = external global [0 x %struct.ImFileType], align 8
@IMB_FILE_TYPES_LAST = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IMB_ispic_type(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [64 x i8], align 16
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #5
  %4 = call i32 @BLI_stat(ptr noundef %0, ptr noundef nonnull %3) #6
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %47, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, 61440
  %10 = icmp eq i32 %9, 32768
  br i1 %10, label %11, label %47

11:                                               ; preds = %6
  %12 = call i32 @BLI_open(ptr noundef %0, i32 noundef 0, i32 noundef 0) #6
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %47, label %14

14:                                               ; preds = %11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %15 = call i64 @read(i32 noundef %12, ptr noundef nonnull %2, i64 noundef 64) #6
  %16 = icmp slt i64 %15, 1
  %17 = call i32 @close(i32 noundef %12) #6
  br i1 %16, label %47, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %2, align 16, !tbaa !41
  %20 = and i32 %19, -251658241
  %21 = icmp eq i32 %20, -520103681
  br i1 %21, label %47, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !42
  %24 = icmp ugt ptr %23, @IMB_FILE_TYPES
  br i1 %24, label %25, label %47

25:                                               ; preds = %22, %40
  %26 = phi ptr [ %41, %40 ], [ @IMB_FILE_TYPES, %22 ]
  %27 = getelementptr inbounds %struct.ImFileType, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = call i32 %28(ptr noundef nonnull %2) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %44

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.ImFileType, ptr %26, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = call i32 %35(ptr noundef %0) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30, %37, %33
  %41 = getelementptr inbounds %struct.ImFileType, ptr %26, i64 1
  %42 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !42
  %43 = icmp ult ptr %41, %42
  br i1 %43, label %25, label %47, !llvm.loop !47

44:                                               ; preds = %37, %30
  %45 = getelementptr inbounds %struct.ImFileType, ptr %26, i64 0, i32 10
  %46 = load i32, ptr %45, align 4, !tbaa !49
  br label %47

47:                                               ; preds = %40, %44, %14, %22, %18, %11, %6, %1
  %48 = phi i32 [ 0, %1 ], [ 0, %6 ], [ 0, %11 ], [ 134217728, %18 ], [ 0, %22 ], [ 0, %14 ], [ %46, %44 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #5
  ret i32 %48
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @BLI_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @IMB_ispic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @IMB_ispic_type(ptr noundef %0) #7
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @imb_get_anim_type(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #5
  %3 = call i32 @BLI_stat(ptr noundef %0, ptr noundef nonnull %2) #6
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = and i32 %7, 61440
  %9 = icmp eq i32 %8, 32768
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = call i32 @ismovie(ptr noundef %0) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = call zeroext i8 @IMB_ispic(ptr noundef %0) #7, !range !50
  %15 = zext nneg i8 %14 to i32
  br label %16

16:                                               ; preds = %13, %10, %5, %1
  %17 = phi i32 [ 0, %1 ], [ 0, %5 ], [ 16, %10 ], [ %15, %13 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #5
  ret i32 %17
}

; Function Attrs: optsize
declare i32 @ismovie(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @IMB_isanim(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @imb_get_anim_type(ptr noundef %0) #7, !range !51
  %3 = icmp ugt i32 %2, 1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !39, i64 24}
!35 = !{!"stat", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !40, i64 72, !40, i64 88, !40, i64 104, !37, i64 120}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"timespec", !36, i64 0, !36, i64 8}
!41 = !{!39, !39, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !37, i64 0}
!44 = !{!45, !43, i64 16}
!45 = !{!"ImFileType", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !39, i64 72, !39, i64 76, !39, i64 80}
!46 = !{!45, !43, i64 24}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!45, !39, i64 76}
!50 = !{i8 0, i8 2}
!51 = !{i32 0, i32 17}
