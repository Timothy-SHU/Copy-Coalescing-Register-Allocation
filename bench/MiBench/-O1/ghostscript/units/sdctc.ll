; ModuleID = 'sdctc.c'
source_filename = "sdctc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.stream_DCT_state_s = type { ptr, ptr, ptr, %struct.gs_const_string_s, float, i32, i32, %union._jd, i32, i32 }
%struct.gs_const_string_s = type { ptr, i32 }
%union._jd = type { ptr }

@.str = private unnamed_addr constant [23 x i8] c"DCTEncode/Decode state\00", align 1
@st_DCT_state = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 72, ptr @.str, ptr null, ptr null, ptr @dct_enum_ptrs, ptr @dct_reloc_ptrs, ptr null }, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef ptr @dct_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 3
  store ptr %7, ptr %3, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ @ptr_const_string_procs, %6 ], [ null, %4 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal void @dct_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 3
  tail call void @gs_reloc_const_string(ptr noundef nonnull %4, ptr noundef %2) #3
  ret void
}

declare void @gs_reloc_const_string(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
