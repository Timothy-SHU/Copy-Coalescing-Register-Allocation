; ModuleID = 'XProtoType.cpp'
source_filename = "XProtoType.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_723XSerializationExceptionD0Ev = comdat any

$_ZNK11xercesc_2_723XSerializationException7getTypeEv = comdat any

$_ZNK11xercesc_2_723XSerializationException9duplicateEv = comdat any

$_ZTSN11xercesc_2_723XSerializationExceptionE = comdat any

$_ZTIN11xercesc_2_723XSerializationExceptionE = comdat any

$_ZTVN11xercesc_2_723XSerializationExceptionE = comdat any

@.str = private unnamed_addr constant [15 x i8] c"XProtoType.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_723XSerializationExceptionE = linkonce_odr dso_local constant [41 x i8] c"N11xercesc_2_723XSerializationExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_723XSerializationExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_723XSerializationExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_723XSerializationExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_723XSerializationExceptionD0Ev, ptr @_ZNK11xercesc_2_723XSerializationException7getTypeEv, ptr @_ZNK11xercesc_2_723XSerializationException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni30fgXSerializationException_NameE = external constant [0 x i16], align 2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_710XProtoType5storeERNS_16XSerializeEngineE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef %3)
  %5 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %4)
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPKhi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %6, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPKhi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XProtoType4loadERNS_16XSerializeEngineEPhPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca i32, align 4
  %5 = alloca [17 x i16], align 16
  %6 = alloca [17 x i16], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i16], align 16
  %9 = alloca [256 x i16], align 16
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #5
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 377, ptr noundef %2)
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #5
  br label %55

16:                                               ; preds = %3
  %17 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !tbaa !40
  %18 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %19 = load i32, ptr %4, align 4, !tbaa !40
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %6) #5
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %17, ptr noundef nonnull %5, i32 noundef 16, i32 noundef 10, ptr noundef %2)
  %22 = load i32, ptr %4, align 4, !tbaa !40
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %22, ptr noundef nonnull %6, i32 noundef 16, i32 noundef 10, ptr noundef %2)
  %23 = call ptr @__cxa_allocate_exception(i64 48) #5
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 378, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef %2)
          to label %24 unwind label %25

24:                                               ; preds = %21
  call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

25:                                               ; preds = %21
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %23) #5
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %5) #5
  br label %53

27:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #5
  call void @_ZN11xercesc_2_716XSerializeEngine4readEPhi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %7, i32 noundef %19)
  %28 = load i32, ptr %4, align 4, !tbaa !40
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 %29
  store i8 0, ptr %30, align 1, !tbaa !42
  %31 = load i8, ptr %7, align 16, !tbaa !42
  %32 = load i8, ptr %1, align 1, !tbaa !42
  %33 = icmp eq i8 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %27, %39
  %35 = phi i8 [ %42, %39 ], [ %31, %27 ]
  %36 = phi ptr [ %41, %39 ], [ %1, %27 ]
  %37 = phi ptr [ %40, %39 ], [ %7, %27 ]
  %38 = icmp eq i8 %35, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds i8, ptr %37, i64 1
  %41 = getelementptr inbounds i8, ptr %36, i64 1
  %42 = load i8, ptr %40, align 1, !tbaa !42
  %43 = load i8, ptr %41, align 1, !tbaa !42
  %44 = icmp eq i8 %42, %43
  br i1 %44, label %34, label %45, !llvm.loop !43

45:                                               ; preds = %39, %27
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %9) #5
  %46 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKcPtjPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef 255, ptr noundef %2)
  %47 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKcPtjPNS_13MemoryManagerE(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef 255, ptr noundef %2)
  %48 = call ptr @__cxa_allocate_exception(i64 48) #5
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 379, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef %2)
          to label %49 unwind label %50

49:                                               ; preds = %45
  call void @__cxa_throw(ptr nonnull %48, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #6
  unreachable

50:                                               ; preds = %45
  %51 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %48) #5
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #5
  br label %53

52:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret void

53:                                               ; preds = %50, %25
  %54 = phi { ptr, i32 } [ %26, %25 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  br label %55

55:                                               ; preds = %53, %14
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %15, %14 ]
  resume { ptr, i32 } %56
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723XSerializationExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723XSerializationExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  resume { ptr, i32 } %12
}

declare void @_ZN11xercesc_2_716XSerializeEngine4readEPhi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKcPtjPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723XSerializationExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_723XSerializationException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni30fgXSerializationException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_723XSerializationException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723XSerializationExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !46
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #5
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

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
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN11xercesc_2_710XProtoTypeE", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!38, !38, i64 0}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !39, i64 0}
!48 = !{!49, !37, i64 40}
!49 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !50, i64 8, !37, i64 16, !41, i64 24, !37, i64 32, !37, i64 40}
!50 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !38, i64 0}
