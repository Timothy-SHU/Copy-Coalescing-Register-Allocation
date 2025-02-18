; ModuleID = 'XalanTransformerProblemListener.cpp'
source_filename = "XalanTransformerProblemListener.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanTransformerProblemListener" = type { %"class.xalanc_1_10::ProblemListener", %"class.xalanc_1_10::ProblemListenerDefault", ptr, %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::ProblemListener" = type { ptr }
%"class.xalanc_1_10::ProblemListenerDefault" = type { %"class.xalanc_1_10::ProblemListener", ptr, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::DOMStringPrintWriter" = type { %"class.xalanc_1_10::PrintWriter", ptr }
%"class.xalanc_1_10::PrintWriter" = type { %"class.xalanc_1_10::Writer", i8, ptr }
%"class.xalanc_1_10::Writer" = type { ptr }

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1031XalanTransformerProblemListenerE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1031XalanTransformerProblemListenerE, ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerD2Ev, ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerD0Ev, ptr @_ZN11xalanc_1_1031XalanTransformerProblemListener14setPrintWriterEPNS_11PrintWriterE, ptr @_ZN11xalanc_1_1031XalanTransformerProblemListener7problemENS_15ProblemListener14eProblemSourceENS1_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1031XalanTransformerProblemListenerE = dso_local constant [49 x i8] c"N11xalanc_1_1031XalanTransformerProblemListenerE\00", align 1
@_ZTIN11xalanc_1_1015ProblemListenerE = external constant ptr
@_ZTIN11xalanc_1_1031XalanTransformerProblemListenerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1031XalanTransformerProblemListenerE, ptr @_ZTIN11xalanc_1_1015ProblemListenerE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1031XalanTransformerProblemListenerC1ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerC2ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE
@_ZN11xalanc_1_1031XalanTransformerProblemListenerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XalanTransformerProblemListenerC2ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xalanc_1_1015ProblemListenerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1031XalanTransformerProblemListenerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1022ProblemListenerDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %3)
          to label %6 unwind label %10, !prof !47

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %9 unwind label %12, !prof !47

9:                                                ; preds = %6
  ret void

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %14

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi { ptr, i32 } [ %13, %12 ], [ %11, %10 ]
  tail call void @_ZN11xalanc_1_1015ProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  resume { ptr, i32 } %15
}

declare void @_ZN11xalanc_1_1015ProblemListenerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1022ProblemListenerDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015ProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 !prof !43 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1031XalanTransformerProblemListenerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  tail call void @_ZN11xalanc_1_1015ProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 !prof !58 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1031XalanTransformerProblemListenerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  tail call void @_ZN11xalanc_1_1015ProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  tail call void @_ZdlPv(ptr noundef %0) #9
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XalanTransformerProblemListener14setPrintWriterEPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !58 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1022ProblemListenerDefault14setPrintWriterEPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xalanc_1_1022ProblemListenerDefault14setPrintWriterEPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XalanTransformerProblemListener7problemENS_15ProblemListener14eProblemSourceENS1_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %10 = alloca %"class.xalanc_1_10::DOMStringPrintWriter", align 8
  %11 = icmp eq i32 %2, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1022ProblemListenerDefault7problemENS_15ProblemListener14eProblemSourceENS1_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %1, i32 noundef 2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  br label %32

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %19, i32 noundef 0, i32 noundef -1)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #8
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(36) %19)
  invoke void @_ZN11xalanc_1_1022ProblemListenerDefault7problemERNS_11PrintWriterENS_15ProblemListener14eProblemSourceENS3_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8)
          to label %20 unwind label %30

20:                                               ; preds = %18
  %21 = load ptr, ptr %15, align 8, !tbaa !48
  %22 = load ptr, ptr %19, align 8, !tbaa !59
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 3, i32 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !60
  %25 = icmp eq i64 %24, 0
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 3, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = select i1 %25, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %27
  invoke void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %29 unwind label %30

29:                                               ; preds = %20
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #8
  br label %32

30:                                               ; preds = %20, %18
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #8
  resume { ptr, i32 } %31

32:                                               ; preds = %14, %29, %12
  ret void
}

declare void @_ZN11xalanc_1_1022ProblemListenerDefault7problemENS_15ProblemListener14eProblemSourceENS1_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare void @_ZN11xalanc_1_1022ProblemListenerDefault7problemERNS_11PrintWriterENS_15ProblemListener14eProblemSourceENS3_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !62
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !63

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = load ptr, ptr %0, align 8, !tbaa !59
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !65

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #10
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !58 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerC2ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE, ptr @_ZN11xalanc_1_1015ProblemListenerC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerC2ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE, ptr @_ZN11xalanc_1_1022ProblemListenerDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerC2ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerD2Ev, ptr @_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerD2Ev, ptr @_ZN11xalanc_1_1015ProblemListenerD2Ev, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 1}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"branch_weights", i32 1, i32 0}
!48 = !{!49, !52, i64 32}
!49 = !{!"_ZTSN11xalanc_1_1031XalanTransformerProblemListenerE", !50, i64 0, !51, i64 8, !52, i64 32, !54, i64 40}
!50 = !{!"_ZTSN11xalanc_1_1015ProblemListenerE"}
!51 = !{!"_ZTSN11xalanc_1_1022ProblemListenerDefaultE", !50, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !46, i64 0}
!54 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !55, i64 0, !57, i64 32}
!55 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !52, i64 0, !56, i64 8, !56, i64 16, !52, i64 24}
!56 = !{!"long", !53, i64 0}
!57 = !{!"int", !53, i64 0}
!58 = !{!"function_entry_count", i64 0}
!59 = !{!55, !52, i64 0}
!60 = !{!55, !56, i64 8}
!61 = !{!"function_entry_count", i64 42470003}
!62 = !{!55, !56, i64 16}
!63 = !{!"branch_weights", i32 52000, i32 42418003}
!64 = !{!55, !52, i64 24}
!65 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
