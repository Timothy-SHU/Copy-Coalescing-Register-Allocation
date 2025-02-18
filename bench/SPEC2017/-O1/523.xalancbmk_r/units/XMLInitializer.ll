; ModuleID = 'XMLInitializer.cpp'
source_filename = "XMLInitializer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$__clang_call_terminate = comdat any

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer23InitializeAllStaticDataEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  invoke void @_ZN11xercesc_2_714XMLInitializer23initializeMsgLoader4DOMEv()
          to label %1 unwind label %17

1:                                                ; preds = %0
  invoke void @_ZN11xercesc_2_714XMLInitializer31initializeDOMImplementationImplEv()
          to label %2 unwind label %17

2:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_714XMLInitializer35initializeDOMImplementationRegistryEv()
          to label %3 unwind label %17

3:                                                ; preds = %2
  invoke void @_ZN11xercesc_2_714XMLInitializer23initializeEmptyNodeListEv()
          to label %4 unwind label %17

4:                                                ; preds = %3
  invoke void @_ZN11xercesc_2_714XMLInitializer32initializeDOMNormalizerMsgLoaderEv()
          to label %5 unwind label %17

5:                                                ; preds = %4
  invoke void @_ZN11xercesc_2_714XMLInitializer28initializeValidatorMsgLoaderEv()
          to label %6 unwind label %17

6:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714XMLInitializer24initializeXSValueStaticsEv()
          to label %7 unwind label %17

7:                                                ; preds = %6
  invoke void @_ZN11xercesc_2_714XMLInitializer26initializeScannerMsgLoaderEv()
          to label %8 unwind label %17

8:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_714XMLInitializer27initializeEncodingValidatorEv()
          to label %9 unwind label %17

9:                                                ; preds = %8
  invoke void @_ZN11xercesc_2_714XMLInitializer28initializeExceptionMsgLoaderEv()
          to label %10 unwind label %17

10:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_714XMLInitializer19initializeDVFactoryEv()
          to label %11 unwind label %17

11:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_714XMLInitializer29initializeGeneralAttrCheckMapEv()
          to label %12 unwind label %17

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_714XMLInitializer33initializeXSDErrReporterMsgLoaderEv()
          to label %13 unwind label %17

13:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_714XMLInitializer32initializeDTDGrammarDfltEntitiesEv()
          to label %14 unwind label %17

14:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_714XMLInitializer23initializeRangeTokenMapEv()
          to label %15 unwind label %17

15:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_714XMLInitializer27initializeRegularExpressionEv()
          to label %16 unwind label %17

16:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_714XMLInitializer17initializeAnyTypeEv()
          to label %22 unwind label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1, %0
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = tail call ptr @__cxa_begin_catch(ptr %19) #3
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 7)
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
  tail call void @__clang_call_terminate(ptr %28) #4
  unreachable
}

declare void @_ZN11xercesc_2_714XMLInitializer23initializeMsgLoader4DOMEv() local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_714XMLInitializer31initializeDOMImplementationImplEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer35initializeDOMImplementationRegistryEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer23initializeEmptyNodeListEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer32initializeDOMNormalizerMsgLoaderEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer28initializeValidatorMsgLoaderEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer24initializeXSValueStaticsEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer26initializeScannerMsgLoaderEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer27initializeEncodingValidatorEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer28initializeExceptionMsgLoaderEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer19initializeDVFactoryEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer29initializeGeneralAttrCheckMapEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer33initializeXSDErrReporterMsgLoaderEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer32initializeDTDGrammarDfltEntitiesEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer23initializeRangeTokenMapEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer27initializeRegularExpressionEv() local_unnamed_addr #1

declare void @_ZN11xercesc_2_714XMLInitializer17initializeAnyTypeEv() local_unnamed_addr #1

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #3
  tail call void @_ZSt9terminatev() #4
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
