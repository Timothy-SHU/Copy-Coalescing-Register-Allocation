; ModuleID = 'x264_src/input/thread.c'
source_filename = "x264_src/input/thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_hnd_t = type { %struct.cli_input_t, ptr, %struct.x264_picture_t, i32, i32, i32, i32, ptr }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_input_arg_t = type { ptr, ptr, i32, i32 }

@thread_input = dso_local local_unnamed_addr global %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr null, ptr @read_frame, ptr @release_frame, ptr null, ptr @close_file }, align 8
@input = external local_unnamed_addr global %struct.cli_input_t, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"x264 [error]: malloc failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal noundef i32 @open_file(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = tail call noalias dereferenceable_or_null(224) ptr @malloc(i64 noundef 224) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 2), align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.thread_hnd_t, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %2, align 4, !tbaa !39
  %11 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 11
  %12 = load i32, ptr %11, align 4, !tbaa !42
  %13 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !43
  %15 = tail call i32 %8(ptr noundef nonnull %9, i32 noundef %10, i32 noundef %12, i32 noundef %14) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7, %4
  %18 = load ptr, ptr @stderr, align 8, !tbaa !44
  %19 = tail call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %18) #9
  br label %37

20:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @input, i64 56, i1 false), !tbaa.struct !45
  %21 = load ptr, ptr %1, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.thread_hnd_t, ptr %5, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.thread_hnd_t, ptr %5, i64 0, i32 6
  store i32 0, ptr %23, align 4, !tbaa !53
  %24 = getelementptr inbounds %struct.thread_hnd_t, ptr %5, i64 0, i32 4
  store i32 -1, ptr %24, align 4, !tbaa !54
  %25 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #7
  %26 = getelementptr inbounds %struct.thread_hnd_t, ptr %5, i64 0, i32 7
  store ptr %25, ptr %26, align 8, !tbaa !55
  %27 = icmp eq ptr %25, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  store ptr %5, ptr %25, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct.thread_input_arg_t, ptr %25, i64 0, i32 3
  store i32 0, ptr %29, align 4, !tbaa !58
  %30 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 1), align 8, !tbaa !59
  %31 = tail call i32 %30(ptr noundef %21) #8
  %32 = getelementptr inbounds %struct.thread_hnd_t, ptr %5, i64 0, i32 5
  store i32 %31, ptr %32, align 8, !tbaa !60
  %33 = getelementptr inbounds %struct.cli_input_t, ptr %5, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !61
  store ptr %34, ptr getelementptr inbounds (%struct.cli_input_t, ptr @thread_input, i64 0, i32 2), align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.cli_input_t, ptr %5, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !62
  store ptr %36, ptr getelementptr inbounds (%struct.cli_input_t, ptr @thread_input, i64 0, i32 5), align 8, !tbaa !63
  store ptr %5, ptr %1, align 8, !tbaa !44
  br label %37

37:                                               ; preds = %20, %28, %17
  %38 = phi i32 [ -1, %17 ], [ 0, %28 ], [ -1, %20 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.thread_hnd_t, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !60
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @read_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.x264_picture_t, align 8
  %5 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !54
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.thread_input_arg_t, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !58
  %13 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 6
  store i32 0, ptr %13, align 4, !tbaa !53
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %12, %8 ], [ 0, %3 ]
  %16 = icmp eq i32 %6, %2
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(136) %0, i64 136, i1 false), !tbaa.struct !64
  %18 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %18, i64 136, i1 false), !tbaa.struct !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %18, ptr noundef nonnull align 8 dereferenceable(136) %4, i64 136, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4)
  br label %26

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.cli_input_t, ptr %1, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = tail call i32 %21(ptr noundef %0, ptr noundef %23, i32 noundef %2) #8
  %25 = or i32 %24, %15
  br label %26

26:                                               ; preds = %19, %17
  %27 = phi i32 [ %15, %17 ], [ %25, %19 ]
  %28 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !60
  %30 = icmp eq i32 %29, 0
  %31 = add nsw i32 %2, 1
  %32 = icmp slt i32 %31, %29
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  %37 = getelementptr inbounds %struct.thread_input_arg_t, ptr %36, i64 0, i32 2
  store i32 %31, ptr %37, align 8, !tbaa !70
  store i32 %31, ptr %5, align 4, !tbaa !54
  %38 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 2
  %39 = getelementptr inbounds %struct.thread_input_arg_t, ptr %36, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !71
  %40 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 6
  store i32 1, ptr %40, align 4, !tbaa !53
  br label %42

41:                                               ; preds = %26
  store i32 -1, ptr %5, align 4, !tbaa !54
  br label %42

42:                                               ; preds = %41, %34
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @release_frame(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cli_input_t, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = tail call i32 %4(ptr noundef %0, ptr noundef %8) #8
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @close_file(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cli_input_t, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.thread_hnd_t, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call i32 %3(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.cli_input_t, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.thread_hnd_t, ptr %0, i64 0, i32 2
  tail call void %8(ptr noundef nonnull %9) #8
  %10 = getelementptr inbounds %struct.thread_hnd_t, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  tail call void @free(ptr noundef %11) #8
  tail call void @free(ptr noundef %0) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 16}
!35 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !41, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!41 = !{!"int", !37, i64 0}
!42 = !{!40, !41, i64 44}
!43 = !{!40, !41, i64 12}
!44 = !{!36, !36, i64 0}
!45 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 8, !44, i64 40, i64 8, !44, i64 48, i64 8, !44}
!46 = !{!47, !36, i64 56}
!47 = !{!"", !35, i64 0, !36, i64 56, !48, i64 64, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !36, i64 216}
!48 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !49, i64 16, !49, i64 24, !36, i64 32, !50, i64 40, !51, i64 96, !36, i64 128}
!49 = !{!"long", !37, i64 0}
!50 = !{!"", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 24}
!51 = !{!"", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24}
!52 = !{!"double", !37, i64 0}
!53 = !{!47, !41, i64 212}
!54 = !{!47, !41, i64 204}
!55 = !{!47, !36, i64 216}
!56 = !{!57, !36, i64 0}
!57 = !{!"thread_input_arg_t", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20}
!58 = !{!57, !41, i64 20}
!59 = !{!35, !36, i64 8}
!60 = !{!47, !41, i64 208}
!61 = !{!47, !36, i64 16}
!62 = !{!47, !36, i64 40}
!63 = !{!35, !36, i64 40}
!64 = !{i64 0, i64 4, !65, i64 4, i64 4, !65, i64 8, i64 4, !65, i64 12, i64 4, !65, i64 16, i64 8, !66, i64 24, i64 8, !66, i64 32, i64 8, !44, i64 40, i64 4, !65, i64 44, i64 4, !65, i64 48, i64 16, !67, i64 64, i64 32, !67, i64 96, i64 8, !68, i64 104, i64 8, !68, i64 112, i64 8, !68, i64 120, i64 8, !68, i64 128, i64 8, !44}
!65 = !{!41, !41, i64 0}
!66 = !{!49, !49, i64 0}
!67 = !{!37, !37, i64 0}
!68 = !{!52, !52, i64 0}
!69 = !{!47, !36, i64 24}
!70 = !{!57, !41, i64 16}
!71 = !{!57, !36, i64 8}
!72 = !{!47, !36, i64 32}
!73 = !{!47, !36, i64 48}
