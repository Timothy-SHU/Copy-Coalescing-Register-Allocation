; ModuleID = 'initp.cpp'
source_filename = "initp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }

@TTSize = external local_unnamed_addr global i32, align 4
@cfg_logfile = external local_unnamed_addr global [512 x i8], align 16
@.str = private unnamed_addr constant [10 x i8] c"sjeng.log\00", align 1
@cfg_logging = external local_unnamed_addr global i32, align 4
@contempt = external local_unnamed_addr global i32, align 4
@uci_mode = external local_unnamed_addr global i32, align 4
@uci_chess960_mode = external local_unnamed_addr global i32, align 4
@uci_showcurrline = external local_unnamed_addr global i32, align 4
@uci_showrefutations = external local_unnamed_addr global i32, align 4
@uci_limitstrength = external local_unnamed_addr global i32, align 4
@uci_elo = external local_unnamed_addr global i32, align 4
@uci_multipv = external local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z15init_parametersP11gamestate_t(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store i32 150000000, ptr @TTSize, align 4, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) @cfg_logfile, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false) #3
  store i32 0, ptr @cfg_logging, align 4, !tbaa !6
  store i32 0, ptr @contempt, align 4, !tbaa !6
  %2 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 14
  store i32 60, ptr %2, align 8, !tbaa !10
  store i32 0, ptr @uci_mode, align 4, !tbaa !6
  store i32 0, ptr @uci_chess960_mode, align 4, !tbaa !6
  store i32 0, ptr @uci_showcurrline, align 4, !tbaa !6
  store i32 0, ptr @uci_showrefutations, align 4, !tbaa !6
  store i32 0, ptr @uci_limitstrength, align 4, !tbaa !6
  store i32 3000, ptr @uci_elo, align 4, !tbaa !6
  store i32 1, ptr @uci_multipv, align 4, !tbaa !6
  tail call void @_Z10alloc_hashv() #4
  ret void
}

; Function Attrs: optsize
declare void @_Z10alloc_hashv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !7, i64 56}
!11 = !{!"_ZTS11gamestate_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !8, i64 64, !8, i64 4064, !12, i64 36064, !7, i64 36072, !7, i64 36076, !7, i64 36080, !7, i64 36084, !7, i64 36088, !7, i64 36092, !7, i64 36096, !7, i64 36100}
!12 = !{!"long long", !8, i64 0}
