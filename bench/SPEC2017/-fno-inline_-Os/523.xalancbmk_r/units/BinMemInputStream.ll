; ModuleID = 'BinMemInputStream.cpp'
source_filename = "BinMemInputStream.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::BinMemInputStream" = type { %"class.xercesc_2_7::BinInputStream", ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::BinInputStream" = type { ptr }

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_717BinMemInputStream6curPosEv = comdat any

@_ZTVN11xercesc_2_717BinMemInputStreamE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717BinMemInputStreamE, ptr @_ZN11xercesc_2_717BinMemInputStreamD2Ev, ptr @_ZN11xercesc_2_717BinMemInputStreamD0Ev, ptr @_ZNK11xercesc_2_717BinMemInputStream6curPosEv, ptr @_ZN11xercesc_2_717BinMemInputStream9readBytesEPhj] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717BinMemInputStreamE = dso_local constant [35 x i8] c"N11xercesc_2_717BinMemInputStreamE\00", align 1
@_ZTIN11xercesc_2_714BinInputStreamE = external constant ptr
@_ZTIN11xercesc_2_717BinMemInputStreamE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717BinMemInputStreamE, ptr @_ZTIN11xercesc_2_714BinInputStreamE }, align 8

@_ZN11xercesc_2_717BinMemInputStreamC1EPKhjNS0_7BufOptsEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_717BinMemInputStreamC2EPKhjNS0_7BufOptsEPNS_13MemoryManagerE
@_ZN11xercesc_2_717BinMemInputStreamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717BinMemInputStreamD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717BinMemInputStreamC2EPKhjNS0_7BufOptsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714BinInputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_717BinMemInputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::BinMemInputStream", ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xercesc_2_7::BinMemInputStream", ptr %0, i64 0, i32 2
  store i32 %3, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %"class.xercesc_2_7::BinMemInputStream", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 4, !tbaa !46
  %9 = getelementptr inbounds %"class.xercesc_2_7::BinMemInputStream", ptr %0, i64 0, i32 4
  store i32 0, ptr %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %"class.xercesc_2_7::BinMemInputStream", ptr %0, i64 0, i32 5
  store ptr %4, ptr %10, align 8, !tbaa !48
  %11 = icmp eq i32 %3, 1
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = zext i32 %2 to i64
  %14 = load ptr, ptr %4, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %13) #8
          to label %18 unwind label %19

18:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %1, i64 %13, i1 false)
  br label %21

19:                                               ; preds = %12
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_714BinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %20

21:                                               ; preds = %5, %18
  %22 = phi ptr [ %17, %18 ], [ %1, %5 ]
  store ptr %22, ptr %6, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714BinInputStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714BinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717BinMemInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_717BinMemInputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinMemInputStream", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !45
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BinMemInputStream", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %"class.xercesc_2_7::BinMemInputStream", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = load ptr, ptr %7, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %9) #8
          to label %13 unwind label %14

13:                                               ; preds = %1, %5
  tail call void @_ZN11xercesc_2_714BinInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #10
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717BinMemInputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xercesc_2_717BinMemInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717BinMemInputStream9readBytesEPhj(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #6 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BinMemInputStream", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::BinMemInputStream", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !47
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = sub i32 %5, %7
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %2)
  %12 = getelementptr inbounds %"class.xercesc_2_7::BinMemInputStream", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = zext i32 %7 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  %16 = zext i32 %11 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %15, i64 %16, i1 false)
  %17 = load i32, ptr %6, align 8, !tbaa !47
  %18 = add i32 %17, %11
  store i32 %18, ptr %6, align 8, !tbaa !47
  br label %19

19:                                               ; preds = %3, %9
  %20 = phi i32 [ %11, %9 ], [ 0, %3 ]
  ret i32 %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717BinMemInputStream6curPosEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinMemInputStream", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !47
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTSN11xercesc_2_717BinMemInputStreamE", !40, i64 0, !41, i64 8, !43, i64 16, !44, i64 20, !44, i64 24, !41, i64 32}
!40 = !{!"_ZTSN11xercesc_2_714BinInputStreamE"}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"_ZTSN11xercesc_2_717BinMemInputStream7BufOptsE", !42, i64 0}
!44 = !{!"int", !42, i64 0}
!45 = !{!39, !43, i64 16}
!46 = !{!39, !44, i64 20}
!47 = !{!39, !44, i64 24}
!48 = !{!39, !41, i64 32}
