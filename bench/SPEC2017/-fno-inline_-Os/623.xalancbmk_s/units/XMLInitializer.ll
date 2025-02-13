; ModuleID = 'XMLInitializer.cpp'
source_filename = "XMLInitializer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$__clang_call_terminate = comdat any

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer23InitializeAllStaticDataEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  invoke void @_ZN11xercesc_2_714XMLInitializer23initializeMsgLoader4DOMEv() #3
          to label %1 unwind label %17

1:                                                ; preds = %0
  invoke void @_ZN11xercesc_2_714XMLInitializer31initializeDOMImplementationImplEv() #3
          to label %2 unwind label %17

2:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_714XMLInitializer35initializeDOMImplementationRegistryEv() #3
          to label %3 unwind label %17

3:                                                ; preds = %2
  invoke void @_ZN11xercesc_2_714XMLInitializer23initializeEmptyNodeListEv() #3
          to label %4 unwind label %17

4:                                                ; preds = %3
  invoke void @_ZN11xercesc_2_714XMLInitializer32initializeDOMNormalizerMsgLoaderEv() #3
          to label %5 unwind label %17

5:                                                ; preds = %4
  invoke void @_ZN11xercesc_2_714XMLInitializer28initializeValidatorMsgLoaderEv() #3
          to label %6 unwind label %17

6:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714XMLInitializer24initializeXSValueStaticsEv() #3
          to label %7 unwind label %17

7:                                                ; preds = %6
  invoke void @_ZN11xercesc_2_714XMLInitializer26initializeScannerMsgLoaderEv() #3
          to label %8 unwind label %17

8:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_714XMLInitializer27initializeEncodingValidatorEv() #3
          to label %9 unwind label %17

9:                                                ; preds = %8
  invoke void @_ZN11xercesc_2_714XMLInitializer28initializeExceptionMsgLoaderEv() #3
          to label %10 unwind label %17

10:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_714XMLInitializer19initializeDVFactoryEv() #3
          to label %11 unwind label %17

11:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_714XMLInitializer29initializeGeneralAttrCheckMapEv() #3
          to label %12 unwind label %17

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_714XMLInitializer33initializeXSDErrReporterMsgLoaderEv() #3
          to label %13 unwind label %17

13:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_714XMLInitializer32initializeDTDGrammarDfltEntitiesEv() #3
          to label %14 unwind label %17

14:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_714XMLInitializer23initializeRangeTokenMapEv() #3
          to label %15 unwind label %17

15:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_714XMLInitializer27initializeRegularExpressionEv() #3
          to label %16 unwind label %17

16:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_714XMLInitializer17initializeAnyTypeEv() #3
          to label %22 unwind label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1, %0
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = tail call ptr @__cxa_begin_catch(ptr %19) #4
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 7) #3
          to label %21 unwind label %23

21:                                               ; preds = %17
  tail call void @__cxa_end_catch()
  br label %22

22:                                               ; preds = %16, %21
  ret void

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %25 unwind label %26

25:                                               ; preds = %23
  resume { ptr, i32 } %24

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #5
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer23initializeMsgLoader4DOMEv() local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer31initializeDOMImplementationImplEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer35initializeDOMImplementationRegistryEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer23initializeEmptyNodeListEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer32initializeDOMNormalizerMsgLoaderEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer28initializeValidatorMsgLoaderEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer24initializeXSValueStaticsEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer26initializeScannerMsgLoaderEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer27initializeEncodingValidatorEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer28initializeExceptionMsgLoaderEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer19initializeDVFactoryEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer29initializeGeneralAttrCheckMapEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer33initializeXSDErrReporterMsgLoaderEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer32initializeDTDGrammarDfltEntitiesEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer23initializeRangeTokenMapEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer27initializeRegularExpressionEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer17initializeAnyTypeEv() local_unnamed_addr #1

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #4
  tail call void @_ZSt9terminatev() #5
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
