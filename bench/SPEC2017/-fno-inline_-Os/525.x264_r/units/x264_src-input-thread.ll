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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @open_file(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 !PGOFuncName !34 {
  %5 = tail call noalias dereferenceable_or_null(224) ptr @malloc(i64 noundef 224) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 2), align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.thread_hnd_t, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %2, align 4, !tbaa !40
  %11 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 11
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !44
  %15 = tail call i32 %8(ptr noundef nonnull %9, i32 noundef %10, i32 noundef %12, i32 noundef %14) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7, %4
  %18 = load ptr, ptr @stderr, align 8, !tbaa !45
  %19 = tail call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %18) #9
  br label %37

20:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @input, i64 56, i1 false), !tbaa.struct !46
  %21 = load ptr, ptr %1, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.thread_hnd_t, ptr %5, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.thread_hnd_t, ptr %5, i64 0, i32 6
  store i32 0, ptr %23, align 4, !tbaa !54
  %24 = getelementptr inbounds %struct.thread_hnd_t, ptr %5, i64 0, i32 4
  store i32 -1, ptr %24, align 4, !tbaa !55
  %25 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #7
  %26 = getelementptr inbounds %struct.thread_hnd_t, ptr %5, i64 0, i32 7
  store ptr %25, ptr %26, align 8, !tbaa !56
  %27 = icmp eq ptr %25, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  store ptr %5, ptr %25, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct.thread_input_arg_t, ptr %25, i64 0, i32 3
  store i32 0, ptr %29, align 4, !tbaa !59
  %30 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 1), align 8, !tbaa !60
  %31 = tail call i32 %30(ptr noundef %21) #8
  %32 = getelementptr inbounds %struct.thread_hnd_t, ptr %5, i64 0, i32 5
  store i32 %31, ptr %32, align 8, !tbaa !61
  %33 = getelementptr inbounds %struct.cli_input_t, ptr %5, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !62
  store ptr %34, ptr getelementptr inbounds (%struct.cli_input_t, ptr @thread_input, i64 0, i32 2), align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.cli_input_t, ptr %5, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  store ptr %36, ptr getelementptr inbounds (%struct.cli_input_t, ptr @thread_input, i64 0, i32 5), align 8, !tbaa !64
  store ptr %5, ptr %1, align 8, !tbaa !45
  br label %37

37:                                               ; preds = %20, %28, %17
  %38 = phi i32 [ -1, %17 ], [ 0, %28 ], [ -1, %20 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %0) #1 !PGOFuncName !65 {
  %2 = getelementptr inbounds %struct.thread_hnd_t, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !61
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @read_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !PGOFuncName !66 {
  %4 = alloca %struct.x264_picture_t, align 8
  %5 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !55
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.thread_input_arg_t, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !59
  %13 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 6
  store i32 0, ptr %13, align 4, !tbaa !54
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %12, %8 ], [ 0, %3 ]
  %16 = icmp eq i32 %6, %2
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(136) %0, i64 136, i1 false), !tbaa.struct !67
  %18 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %18, i64 136, i1 false), !tbaa.struct !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %18, ptr noundef nonnull align 8 dereferenceable(136) %4, i64 136, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4)
  br label %26

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.cli_input_t, ptr %1, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = tail call i32 %21(ptr noundef %0, ptr noundef %23, i32 noundef %2) #8
  %25 = or i32 %24, %15
  br label %26

26:                                               ; preds = %19, %17
  %27 = phi i32 [ %15, %17 ], [ %25, %19 ]
  %28 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !61
  %30 = icmp eq i32 %29, 0
  %31 = add nsw i32 %2, 1
  %32 = icmp slt i32 %31, %29
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !56
  %37 = getelementptr inbounds %struct.thread_input_arg_t, ptr %36, i64 0, i32 2
  store i32 %31, ptr %37, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 2
  %39 = getelementptr inbounds %struct.thread_input_arg_t, ptr %36, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !74
  %40 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 6
  store i32 1, ptr %40, align 4, !tbaa !54
  br label %41

41:                                               ; preds = %26, %34
  %42 = phi i32 [ %31, %34 ], [ -1, %26 ]
  store i32 %42, ptr %5, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @release_frame(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !75 {
  %3 = getelementptr inbounds %struct.cli_input_t, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.thread_hnd_t, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call i32 %4(ptr noundef %0, ptr noundef %8) #8
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @close_file(ptr noundef %0) #0 !PGOFuncName !77 {
  %2 = getelementptr inbounds %struct.cli_input_t, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = getelementptr inbounds %struct.thread_hnd_t, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = tail call i32 %3(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.cli_input_t, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.thread_hnd_t, ptr %0, i64 0, i32 2
  tail call void %8(ptr noundef nonnull %9) #8
  %10 = getelementptr inbounds %struct.thread_hnd_t, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  tail call void @free(ptr noundef %11) #8
  tail call void @free(ptr noundef %0) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind optsize allocsize(0) }
attributes #8 = { nounwind optsize }
attributes #9 = { cold }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"thread.c:open_file"}
!35 = !{!36, !37, i64 16}
!36 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !42, i64 0}
!41 = !{!"", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!42 = !{!"int", !38, i64 0}
!43 = !{!41, !42, i64 44}
!44 = !{!41, !42, i64 12}
!45 = !{!37, !37, i64 0}
!46 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 8, !45, i64 48, i64 8, !45}
!47 = !{!48, !37, i64 56}
!48 = !{!"", !36, i64 0, !37, i64 56, !49, i64 64, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !37, i64 216}
!49 = !{!"", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !50, i64 16, !50, i64 24, !37, i64 32, !51, i64 40, !52, i64 96, !37, i64 128}
!50 = !{!"long", !38, i64 0}
!51 = !{!"", !42, i64 0, !42, i64 4, !38, i64 8, !38, i64 24}
!52 = !{!"", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24}
!53 = !{!"double", !38, i64 0}
!54 = !{!48, !42, i64 212}
!55 = !{!48, !42, i64 204}
!56 = !{!48, !37, i64 216}
!57 = !{!58, !37, i64 0}
!58 = !{!"thread_input_arg_t", !37, i64 0, !37, i64 8, !42, i64 16, !42, i64 20}
!59 = !{!58, !42, i64 20}
!60 = !{!36, !37, i64 8}
!61 = !{!48, !42, i64 208}
!62 = !{!48, !37, i64 16}
!63 = !{!48, !37, i64 40}
!64 = !{!36, !37, i64 40}
!65 = !{!"thread.c:get_frame_total"}
!66 = !{!"thread.c:read_frame"}
!67 = !{i64 0, i64 4, !68, i64 4, i64 4, !68, i64 8, i64 4, !68, i64 12, i64 4, !68, i64 16, i64 8, !69, i64 24, i64 8, !69, i64 32, i64 8, !45, i64 40, i64 4, !68, i64 44, i64 4, !68, i64 48, i64 16, !70, i64 64, i64 32, !70, i64 96, i64 8, !71, i64 104, i64 8, !71, i64 112, i64 8, !71, i64 120, i64 8, !71, i64 128, i64 8, !45}
!68 = !{!42, !42, i64 0}
!69 = !{!50, !50, i64 0}
!70 = !{!38, !38, i64 0}
!71 = !{!53, !53, i64 0}
!72 = !{!48, !37, i64 24}
!73 = !{!58, !42, i64 16}
!74 = !{!58, !37, i64 8}
!75 = !{!"thread.c:release_frame"}
!76 = !{!48, !37, i64 32}
!77 = !{!"thread.c:close_file"}
!78 = !{!48, !37, i64 48}
