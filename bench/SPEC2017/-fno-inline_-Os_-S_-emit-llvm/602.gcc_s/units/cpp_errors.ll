; ModuleID = 'cpp_errors.c'
source_filename = "cpp_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.cpp_reader = type { ptr, ptr, %struct.lexer_state, ptr, i32, ptr, ptr, ptr, %struct.cpp_context, ptr, ptr, %struct.cpp_token, i32, i8, ptr, ptr, %struct.cpp_dir, ptr, ptr, ptr, ptr, ptr, ptr, %struct.obstack, i8, i8, ptr, ptr, i8, ptr, %struct.tokenrun, ptr, i32, i32, ptr, i32, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, ptr, ptr, %struct.cpp_token, %struct.cpp_token, ptr, %struct.obstack, %struct.obstack, ptr, %struct.cpp_callbacks, ptr, ptr, ptr, %struct.cpp_options, %struct.spec_nodes, i8, %struct.anon.2, ptr, ptr, ptr, ptr, i32, %struct.cpp_comment_table, ptr }
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.cpp_context = type { ptr, ptr, %union.anon, ptr, ptr, i8 }
%union.anon = type { %struct.anon }
%struct.anon = type { %union.utoken, %union.utoken }
%union.utoken = type { ptr }
%struct.cpp_dir = type { ptr, ptr, i32, i8, i8, ptr, ptr, ptr, i64, i64 }
%struct.tokenrun = type { ptr, ptr, ptr, ptr }
%struct.cset_converter = type { ptr, ptr, i32 }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, ptr }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.cpp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon.1, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i8, i8, i8, i8 }
%struct.spec_nodes = type { ptr, ptr, ptr, ptr }
%struct.anon.2 = type { ptr, ptr, ptr, i32 }
%struct.cpp_comment_table = type { ptr, i32, i32 }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cpp_error(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.va_start(ptr nonnull %4)
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %6 = load i8, ptr %5, align 2, !tbaa !6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !27
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !28
  br label %39

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = getelementptr inbounds %struct.line_maps, ptr %17, i64 0, i32 8
  %19 = load i32, ptr %18, align 4, !tbaa !30
  br label %39

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %24 = load ptr, ptr %23, align 8, !tbaa !33
  %25 = getelementptr inbounds %struct.tokenrun, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.tokenrun, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tokenrun, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !36
  %35 = load i32, ptr %34, align 8, !tbaa !37
  br label %39

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.cpp_token, ptr %22, i64 -1
  %38 = load i32, ptr %37, align 8, !tbaa !37
  br label %39

39:                                               ; preds = %28, %36, %32, %12, %15
  %40 = phi i32 [ %14, %12 ], [ %19, %15 ], [ %35, %32 ], [ %38, %36 ], [ 0, %28 ]
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 12
  %42 = load ptr, ptr %41, align 8, !tbaa !38
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @abort() #7
  unreachable

45:                                               ; preds = %39
  %46 = call zeroext i8 %42(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %40, i32 noundef 0, ptr noundef %2, ptr noundef nonnull %4) #8
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i8 %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cpp_error_with_line(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #0 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  call void @llvm.va_start(ptr nonnull %6)
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  call void @abort() #7
  unreachable

11:                                               ; preds = %5
  %12 = call zeroext i8 %8(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #8
  call void @llvm.va_end(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %2, align 1, !tbaa !39
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, ptr @.str, ptr %2
  %7 = tail call ptr @__errno_location() #9
  %8 = load i32, ptr %7, align 4, !tbaa !40
  %9 = tail call ptr @xstrerror(i32 noundef %8) #8
  %10 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %6, ptr noundef %9) #10
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @xstrerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize willreturn memory(none) }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !9, i64 1082}
!7 = !{!"cpp_reader", !8, i64 0, !8, i64 8, !11, i64 16, !8, i64 40, !12, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !13, i64 80, !8, i64 136, !8, i64 144, !14, i64 152, !12, i64 176, !9, i64 180, !8, i64 184, !8, i64 192, !16, i64 200, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !18, i64 312, !9, i64 400, !9, i64 401, !8, i64 408, !8, i64 416, !9, i64 424, !8, i64 432, !19, i64 440, !8, i64 472, !12, i64 480, !12, i64 484, !8, i64 488, !12, i64 496, !20, i64 504, !20, i64 528, !20, i64 552, !20, i64 576, !20, i64 600, !8, i64 624, !8, i64 632, !14, i64 640, !14, i64 664, !8, i64 688, !18, i64 696, !18, i64 784, !8, i64 872, !21, i64 880, !8, i64 1016, !8, i64 1024, !8, i64 1032, !22, i64 1040, !24, i64 1168, !9, i64 1200, !25, i64 1208, !8, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !12, i64 1272, !26, i64 1280, !8, i64 1296}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"lexer_state", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !9, i64 8, !9, i64 9, !9, i64 10, !12, i64 12, !9, i64 16, !9, i64 17}
!12 = !{!"int", !9, i64 0}
!13 = !{!"cpp_context", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 32, !8, i64 40, !9, i64 48}
!14 = !{!"cpp_token", !12, i64 0, !12, i64 4, !15, i64 6, !9, i64 8}
!15 = !{!"short", !9, i64 0}
!16 = !{!"cpp_dir", !8, i64 0, !8, i64 8, !12, i64 16, !9, i64 20, !9, i64 21, !8, i64 24, !8, i64 32, !8, i64 40, !17, i64 48, !17, i64 56}
!17 = !{!"long", !9, i64 0}
!18 = !{!"obstack", !17, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !17, i64 40, !12, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !12, i64 80, !12, i64 80, !12, i64 80}
!19 = !{!"tokenrun", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!20 = !{!"cset_converter", !8, i64 0, !8, i64 8, !12, i64 16}
!21 = !{!"cpp_callbacks", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128}
!22 = !{!"cpp_options", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !9, i64 40, !9, i64 41, !9, i64 42, !8, i64 48, !8, i64 56, !8, i64 64, !12, i64 72, !9, i64 76, !9, i64 77, !23, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !9, i64 120, !9, i64 121, !9, i64 122, !9, i64 123, !9, i64 124}
!23 = !{!"", !12, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!24 = !{!"spec_nodes", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!25 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !12, i64 24}
!26 = !{!"", !8, i64 0, !12, i64 8, !12, i64 12}
!27 = !{!7, !9, i64 16}
!28 = !{!7, !12, i64 48}
!29 = !{!7, !8, i64 40}
!30 = !{!31, !12, i64 36}
!31 = !{!"line_maps", !8, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !9, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !8, i64 48}
!32 = !{!7, !8, i64 432}
!33 = !{!7, !8, i64 472}
!34 = !{!19, !8, i64 16}
!35 = !{!19, !8, i64 8}
!36 = !{!19, !8, i64 24}
!37 = !{!14, !12, i64 0}
!38 = !{!7, !8, i64 976}
!39 = !{!9, !9, i64 0}
!40 = !{!12, !12, i64 0}
