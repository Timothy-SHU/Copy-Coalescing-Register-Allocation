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
  %6 = load i8, ptr %5, align 2, !tbaa !5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !26
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !27
  br label %39

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct.line_maps, ptr %17, i64 0, i32 8
  %19 = load i32, ptr %18, align 4, !tbaa !29
  br label %39

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %22 = load ptr, ptr %21, align 8, !tbaa !31
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %24 = load ptr, ptr %23, align 8, !tbaa !32
  %25 = getelementptr inbounds %struct.tokenrun, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !33
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.tokenrun, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tokenrun, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = load i32, ptr %34, align 8, !tbaa !36
  br label %39

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.cpp_token, ptr %22, i64 -1
  %38 = load i32, ptr %37, align 8, !tbaa !36
  br label %39

39:                                               ; preds = %28, %36, %32, %12, %15
  %40 = phi i32 [ %14, %12 ], [ %19, %15 ], [ %35, %32 ], [ %38, %36 ], [ 0, %28 ]
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 12
  %42 = load ptr, ptr %41, align 8, !tbaa !37
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
  %8 = load ptr, ptr %7, align 8, !tbaa !37
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
  %4 = load i8, ptr %2, align 1, !tbaa !38
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, ptr @.str, ptr %2
  %7 = tail call ptr @__errno_location() #9
  %8 = load i32, ptr %7, align 4, !tbaa !39
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 1082}
!6 = !{!"cpp_reader", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 40, !11, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !12, i64 80, !7, i64 136, !7, i64 144, !13, i64 152, !11, i64 176, !8, i64 180, !7, i64 184, !7, i64 192, !15, i64 200, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !17, i64 312, !8, i64 400, !8, i64 401, !7, i64 408, !7, i64 416, !8, i64 424, !7, i64 432, !18, i64 440, !7, i64 472, !11, i64 480, !11, i64 484, !7, i64 488, !11, i64 496, !19, i64 504, !19, i64 528, !19, i64 552, !19, i64 576, !19, i64 600, !7, i64 624, !7, i64 632, !13, i64 640, !13, i64 664, !7, i64 688, !17, i64 696, !17, i64 784, !7, i64 872, !20, i64 880, !7, i64 1016, !7, i64 1024, !7, i64 1032, !21, i64 1040, !23, i64 1168, !8, i64 1200, !24, i64 1208, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !11, i64 1272, !25, i64 1280, !7, i64 1296}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"lexer_state", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8, !8, i64 9, !8, i64 10, !11, i64 12, !8, i64 16, !8, i64 17}
!11 = !{!"int", !8, i64 0}
!12 = !{!"cpp_context", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 32, !7, i64 40, !8, i64 48}
!13 = !{!"cpp_token", !11, i64 0, !11, i64 4, !14, i64 6, !8, i64 8}
!14 = !{!"short", !8, i64 0}
!15 = !{!"cpp_dir", !7, i64 0, !7, i64 8, !11, i64 16, !8, i64 20, !8, i64 21, !7, i64 24, !7, i64 32, !7, i64 40, !16, i64 48, !16, i64 56}
!16 = !{!"long", !8, i64 0}
!17 = !{!"obstack", !16, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !16, i64 40, !11, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !11, i64 80, !11, i64 80, !11, i64 80}
!18 = !{!"tokenrun", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!19 = !{!"cset_converter", !7, i64 0, !7, i64 8, !11, i64 16}
!20 = !{!"cpp_callbacks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128}
!21 = !{!"cpp_options", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15, !8, i64 16, !8, i64 17, !8, i64 18, !8, i64 19, !8, i64 20, !8, i64 21, !8, i64 22, !8, i64 23, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !8, i64 28, !8, i64 29, !8, i64 30, !8, i64 31, !8, i64 32, !8, i64 33, !8, i64 34, !8, i64 35, !8, i64 36, !8, i64 37, !8, i64 38, !8, i64 39, !8, i64 40, !8, i64 41, !8, i64 42, !7, i64 48, !7, i64 56, !7, i64 64, !11, i64 72, !8, i64 76, !8, i64 77, !22, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123, !8, i64 124}
!22 = !{!"", !11, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7}
!23 = !{!"spec_nodes", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!24 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24}
!25 = !{!"", !7, i64 0, !11, i64 8, !11, i64 12}
!26 = !{!6, !8, i64 16}
!27 = !{!6, !11, i64 48}
!28 = !{!6, !7, i64 40}
!29 = !{!30, !11, i64 36}
!30 = !{!"line_maps", !7, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !8, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !7, i64 48}
!31 = !{!6, !7, i64 432}
!32 = !{!6, !7, i64 472}
!33 = !{!18, !7, i64 16}
!34 = !{!18, !7, i64 8}
!35 = !{!18, !7, i64 24}
!36 = !{!13, !11, i64 0}
!37 = !{!6, !7, i64 976}
!38 = !{!8, !8, i64 0}
!39 = !{!11, !11, i64 0}
