; ModuleID = 'XMLASCIITranscoder390.cpp'
source_filename = "XMLASCIITranscoder390.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLTranscoder" = type { ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_713XMLTranscoder15getEncodingNameEv = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720TranscodingExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720TranscodingException7getTypeEv = comdat any

$_ZNK11xercesc_2_720TranscodingException9duplicateEv = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTIN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTVN11xercesc_2_720TranscodingExceptionE = comdat any

@_ZTVN11xercesc_2_721XMLASCIITranscoder390E = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721XMLASCIITranscoder390E, ptr @_ZN11xercesc_2_721XMLASCIITranscoder390D2Ev, ptr @_ZN11xercesc_2_721XMLASCIITranscoder390D0Ev, ptr @_ZN11xercesc_2_721XMLASCIITranscoder39013transcodeFromEPKhjPtjRjPh, ptr @_ZN11xercesc_2_721XMLASCIITranscoder39011transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE, ptr @_ZNK11xercesc_2_721XMLASCIITranscoder39014canTranscodeToEj] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_721XMLASCIITranscoder390E = dso_local constant [39 x i8] c"N11xercesc_2_721XMLASCIITranscoder390E\00", align 1
@_ZTIN11xercesc_2_713XMLTranscoderE = external constant ptr
@_ZTIN11xercesc_2_721XMLASCIITranscoder390E = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721XMLASCIITranscoder390E, ptr @_ZTIN11xercesc_2_713XMLTranscoderE }, align 8
@.str = private unnamed_addr constant [26 x i8] c"XMLASCIITranscoder390.cpp\00", align 1
@_ZTSN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720TranscodingExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720TranscodingExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720TranscodingExceptionD0Ev, ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv, ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_721XMLASCIITranscoder390C1EPKtjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_721XMLASCIITranscoder390C2EPKtjPNS_13MemoryManagerE
@_ZN11xercesc_2_721XMLASCIITranscoder390D1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_721XMLASCIITranscoder390D2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_721XMLASCIITranscoder390D0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_721XMLASCIITranscoder390D2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_721XMLASCIITranscoder39013transcodeFromEPKhjPtjRjPh(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 noundef %2, ptr nocapture readnone %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, ptr nocapture noundef writeonly %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %8 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4)
  store i32 %8, ptr %5, align 4, !tbaa !36
  %9 = zext i32 %8 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 1, i64 %9, i1 false)
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_721XMLASCIITranscoder39011transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, i32 noundef %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %8 = alloca [17 x i16], align 16
  %9 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %6, 0
  br label %14

13:                                               ; preds = %32, %7
  store i32 %9, ptr %5, align 4, !tbaa !36
  ret i32 %9

14:                                               ; preds = %11, %32
  %15 = phi ptr [ %1, %11 ], [ %34, %32 ]
  %16 = phi ptr [ %3, %11 ], [ %35, %32 ]
  %17 = phi i32 [ 0, %11 ], [ %36, %32 ]
  %18 = load i16, ptr %15, align 2, !tbaa !40
  %19 = icmp ult i16 %18, 128
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = trunc i16 %18 to i8
  br label %32

22:                                               ; preds = %14
  br i1 %12, label %23, label %32

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %8) #10
  %24 = zext i16 %18 to i32
  %25 = tail call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %24, ptr noundef nonnull %8, i32 noundef 16, i32 noundef 16, ptr noundef %25) #11
  %26 = call ptr @__cxa_allocate_exception(i64 48) #10
  %27 = call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder15getEncodingNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %28 = call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 92, ptr noundef nonnull %8, ptr noundef %27, ptr noundef null, ptr noundef null, ptr noundef %28) #11
          to label %29 unwind label %30

29:                                               ; preds = %23
  call void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

30:                                               ; preds = %23
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %26) #10
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %8) #10
  resume { ptr, i32 } %31

32:                                               ; preds = %22, %20
  %33 = phi i8 [ %21, %20 ], [ 26, %22 ]
  store i8 %33, ptr %16, align 1, !tbaa !42
  %34 = getelementptr inbounds i16, ptr %15, i64 1
  %35 = getelementptr inbounds i8, ptr %16, i64 1
  %36 = add nuw i32 %17, 1
  %37 = icmp eq i32 %36, %9
  br i1 %37, label %13, label %14, !llvm.loop !43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_721XMLASCIITranscoder39014canTranscodeToEj(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #3 align 2 !prof !35 {
  %3 = icmp ult i32 %1, 128
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721XMLASCIITranscoder390C2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #11
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_721XMLASCIITranscoder390E, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_721XMLASCIITranscoder390D2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLTranscoder15getEncodingNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #11
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #11
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #11
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }
attributes #12 = { noreturn }

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
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!38, !38, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !39, i64 0}
!47 = !{!48, !49, i64 24}
!48 = !{!"_ZTSN11xercesc_2_713XMLTranscoderE", !37, i64 8, !49, i64 16, !49, i64 24}
!49 = !{!"any pointer", !38, i64 0}
!50 = !{!48, !49, i64 16}
!51 = !{!52, !49, i64 40}
!52 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !53, i64 8, !49, i64 16, !37, i64 24, !49, i64 32, !49, i64 40}
!53 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !38, i64 0}
