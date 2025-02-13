; ModuleID = 'liblzma/common/stream_buffer_encoder.c'
source_filename = "liblzma/common/stream_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_stream_buffer_bound(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @lzma_block_buffer_bound(i64 noundef %0) #4
  %3 = icmp eq i64 %2, 0
  %4 = icmp sgt i64 %2, 9223372036854775759
  %5 = or i1 %3, %4
  %6 = add i64 %2, 48
  %7 = select i1 %5, i64 0, i64 %6
  ret i64 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i64 @lzma_block_buffer_bound(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_stream_buffer_encode(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.lzma_stream_flags, align 8
  %11 = alloca %struct.lzma_block, align 8
  %12 = icmp eq ptr %0, null
  %13 = icmp ugt i32 %1, 15
  %14 = or i1 %12, %13
  br i1 %14, label %80, label %15

15:                                               ; preds = %8
  %16 = icmp eq ptr %3, null
  %17 = icmp ne i64 %4, 0
  %18 = and i1 %16, %17
  %19 = icmp eq ptr %5, null
  %20 = or i1 %18, %19
  %21 = icmp eq ptr %6, null
  %22 = or i1 %20, %21
  br i1 %22, label %80, label %23

23:                                               ; preds = %15
  %24 = load i64, ptr %6, align 8, !tbaa !5
  %25 = icmp ugt i64 %24, %7
  br i1 %25, label %80, label %26

26:                                               ; preds = %23
  %27 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %1) #4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %80, label %29

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  %30 = load i64, ptr %6, align 8, !tbaa !5
  %31 = sub i64 %7, %30
  %32 = icmp ult i64 %31, 25
  br i1 %32, label %78, label %33

33:                                               ; preds = %29
  %34 = add i64 %7, -12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false)
  %35 = getelementptr inbounds %struct.lzma_stream_flags, ptr %10, i64 0, i32 2
  store i32 %1, ptr %35, align 8, !tbaa !9
  %36 = getelementptr inbounds i8, ptr %5, i64 %30
  %37 = call i32 @lzma_stream_header_encode(ptr noundef nonnull %10, ptr noundef %36) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %33
  %40 = add i64 %30, 12
  store i64 %40, ptr %9, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %11) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %11, i8 0, i64 208, i1 false)
  %41 = getelementptr inbounds %struct.lzma_block, ptr %11, i64 0, i32 2
  store i32 %1, ptr %41, align 8, !tbaa !12
  %42 = getelementptr inbounds %struct.lzma_block, ptr %11, i64 0, i32 5
  store ptr %0, ptr %42, align 8, !tbaa !15
  %43 = icmp eq i64 %4, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = call i32 @lzma_block_buffer_encode(ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %9, i64 noundef %34) #4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %74

47:                                               ; preds = %39
  %48 = call ptr @lzma_index_init(ptr noundef %2) #4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %74, label %60

50:                                               ; preds = %44
  %51 = call ptr @lzma_index_init(ptr noundef %2) #4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %74, label %53

53:                                               ; preds = %50
  %54 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %11) #4
  %55 = getelementptr inbounds %struct.lzma_block, ptr %11, i64 0, i32 4
  %56 = load i64, ptr %55, align 8, !tbaa !16
  %57 = call i32 @lzma_index_append(ptr noundef nonnull %51, ptr noundef %2, i64 noundef %54, i64 noundef %56) #4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  call void @lzma_index_end(ptr noundef nonnull %51, ptr noundef %2) #4
  br label %74

60:                                               ; preds = %47, %53
  %61 = phi ptr [ %51, %53 ], [ %48, %47 ]
  %62 = call i32 @lzma_index_buffer_encode(ptr noundef nonnull %61, ptr noundef nonnull %5, ptr noundef nonnull %9, i64 noundef %34) #4
  %63 = call i64 @lzma_index_size(ptr noundef nonnull %61) #4
  %64 = getelementptr inbounds %struct.lzma_stream_flags, ptr %10, i64 0, i32 1
  store i64 %63, ptr %64, align 8, !tbaa !17
  call void @lzma_index_end(ptr noundef nonnull %61, ptr noundef %2) #4
  %65 = icmp eq i32 %62, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i64, ptr %9, align 8, !tbaa !5
  %68 = getelementptr inbounds i8, ptr %5, i64 %67
  %69 = call i32 @lzma_stream_footer_encode(ptr noundef nonnull %10, ptr noundef %68) #4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i64, ptr %9, align 8, !tbaa !5
  %73 = add i64 %72, 12
  store i64 %73, ptr %6, align 8, !tbaa !5
  br label %74

74:                                               ; preds = %50, %47, %59, %66, %44, %60, %71
  %75 = phi i32 [ 0, %71 ], [ %62, %60 ], [ %45, %44 ], [ 11, %66 ], [ %57, %59 ], [ 5, %47 ], [ 5, %50 ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %11) #5
  br label %76

76:                                               ; preds = %33, %74
  %77 = phi i32 [ %75, %74 ], [ 11, %33 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #5
  br label %78

78:                                               ; preds = %29, %76
  %79 = phi i32 [ %77, %76 ], [ 10, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  br label %80

80:                                               ; preds = %26, %8, %23, %15, %78
  %81 = phi i32 [ %79, %78 ], [ 11, %15 ], [ 11, %23 ], [ 11, %8 ], [ 3, %26 ]
  ret i32 %81
}

; Function Attrs: optsize
declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare i32 @lzma_stream_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_block_buffer_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lzma_index_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_index_buffer_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @lzma_index_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_stream_footer_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 16}
!10 = !{!"", !11, i64 0, !6, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !7, i64 36, !7, i64 37, !7, i64 38, !7, i64 39, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !11, i64 44, !11, i64 48}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !11, i64 8}
!13 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !6, i64 16, !6, i64 24, !14, i64 32, !7, i64 40, !14, i64 104, !14, i64 112, !14, i64 120, !11, i64 128, !11, i64 132, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !7, i64 200, !7, i64 201, !7, i64 202, !7, i64 203, !7, i64 204, !7, i64 205, !7, i64 206, !7, i64 207}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!13, !14, i64 32}
!16 = !{!13, !6, i64 24}
!17 = !{!10, !6, i64 8}
