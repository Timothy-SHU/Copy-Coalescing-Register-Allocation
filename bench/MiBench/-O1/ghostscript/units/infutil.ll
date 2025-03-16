; ModuleID = 'infutil.c'
source_filename = "infutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_blocks_state = type { i32, %union.anon, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, ptr, i32, ptr }

@inflate_mask = dso_local local_unnamed_addr global [17 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate_flush(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp ugt ptr %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi ptr [ %13, %11 ], [ %9, %3 ]
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %7 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %19)
  %23 = icmp ne i32 %22, 0
  %24 = icmp eq i32 %2, -5
  %25 = and i1 %24, %23
  %26 = select i1 %25, i32 0, i32 %2
  %27 = sub i32 %21, %22
  store i32 %27, ptr %20, align 8, !tbaa !16
  %28 = zext i32 %22 to i64
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 5
  %30 = load i64, ptr %29, align 8, !tbaa !17
  %31 = add i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !17
  %32 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %14
  %36 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 10
  %37 = load i64, ptr %36, align 8, !tbaa !19
  %38 = tail call i64 %33(i64 noundef %37, ptr noundef %7, i32 noundef %22) #3
  store i64 %38, ptr %36, align 8, !tbaa !19
  %39 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 12
  store i64 %38, ptr %39, align 8, !tbaa !20
  br label %40

40:                                               ; preds = %35, %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %7, i64 %28, i1 false)
  %41 = getelementptr inbounds i8, ptr %5, i64 %28
  %42 = getelementptr inbounds i8, ptr %7, i64 %28
  %43 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  %45 = icmp eq ptr %42, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !21
  %49 = load ptr, ptr %8, align 8, !tbaa !14
  %50 = icmp eq ptr %49, %44
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store ptr %48, ptr %8, align 8, !tbaa !14
  br label %52

52:                                               ; preds = %51, %46
  %53 = load ptr, ptr %8, align 8, !tbaa !14
  %54 = ptrtoint ptr %53 to i64
  %55 = ptrtoint ptr %48 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32, ptr %20, align 8, !tbaa !16
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 %57)
  %60 = icmp ne i32 %59, 0
  %61 = icmp eq i32 %26, -5
  %62 = and i1 %61, %60
  %63 = select i1 %62, i32 0, i32 %26
  %64 = sub i32 %58, %59
  store i32 %64, ptr %20, align 8, !tbaa !16
  %65 = zext i32 %59 to i64
  %66 = load i64, ptr %29, align 8, !tbaa !17
  %67 = add i64 %66, %65
  store i64 %67, ptr %29, align 8, !tbaa !17
  %68 = load ptr, ptr %32, align 8, !tbaa !18
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %52
  %71 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 10
  %72 = load i64, ptr %71, align 8, !tbaa !19
  %73 = tail call i64 %68(i64 noundef %72, ptr noundef %48, i32 noundef %59) #3
  store i64 %73, ptr %71, align 8, !tbaa !19
  %74 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 12
  store i64 %73, ptr %74, align 8, !tbaa !20
  br label %75

75:                                               ; preds = %70, %52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr align 1 %48, i64 %65, i1 false)
  %76 = getelementptr inbounds i8, ptr %41, i64 %65
  %77 = getelementptr inbounds i8, ptr %48, i64 %65
  br label %78

78:                                               ; preds = %75, %40
  %79 = phi i32 [ %63, %75 ], [ %26, %40 ]
  %80 = phi ptr [ %76, %75 ], [ %41, %40 ]
  %81 = phi ptr [ %77, %75 ], [ %42, %40 ]
  store ptr %80, ptr %4, align 8, !tbaa !5
  store ptr %81, ptr %6, align 8, !tbaa !12
  ret i32 %79
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 24}
!6 = !{!"z_stream_s", !7, i64 0, !10, i64 8, !11, i64 16, !7, i64 24, !10, i64 32, !11, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !11, i64 96, !11, i64 104}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !7, i64 72}
!13 = !{!"inflate_blocks_state", !10, i64 0, !8, i64 8, !10, i64 40, !10, i64 44, !11, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !11, i64 96}
!14 = !{!13, !7, i64 80}
!15 = !{!13, !7, i64 64}
!16 = !{!6, !10, i64 32}
!17 = !{!6, !11, i64 40}
!18 = !{!13, !7, i64 88}
!19 = !{!13, !11, i64 96}
!20 = !{!6, !11, i64 96}
!21 = !{!13, !7, i64 56}
