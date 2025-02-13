; ModuleID = 'XMLBigDecimal.cpp'
source_filename = "XMLBigDecimal.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLBigDecimal" = type { %"class.xercesc_2_7::XMLNumber", i32, i32, i32, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLNumber" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_713XMLBigDecimal8toStringEv = comdat any

$_ZNK11xercesc_2_713XMLBigDecimal10getRawDataEv = comdat any

$_ZNK11xercesc_2_713XMLBigDecimal18getFormattedStringEv = comdat any

$_ZNK11xercesc_2_713XMLBigDecimal7getSignEv = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEE7releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEED2Ev = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721NumberFormatException7getTypeEv = comdat any

$_ZNK11xercesc_2_721NumberFormatException9duplicateEv = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt = comdat any

$_ZNK11xercesc_2_713XMLBigDecimal13getTotalDigitEv = comdat any

$_ZNK11xercesc_2_713XMLBigDecimal8getScaleEv = comdat any

$_ZNK11xercesc_2_713XMLBigDecimal8getValueEv = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_716XSerializeEngine10readStringERPt = comdat any

$_ZTSN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTIN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTVN11xercesc_2_721NumberFormatExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_713XMLBigDecimalE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLBigDecimalE, ptr @_ZN11xercesc_2_713XMLBigDecimalD2Ev, ptr @_ZN11xercesc_2_713XMLBigDecimalD0Ev, ptr @_ZNK11xercesc_2_713XMLBigDecimal14isSerializableEv, ptr @_ZN11xercesc_2_713XMLBigDecimal9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713XMLBigDecimal12getProtoTypeEv, ptr @_ZNK11xercesc_2_713XMLBigDecimal8toStringEv, ptr @_ZNK11xercesc_2_713XMLBigDecimal10getRawDataEv, ptr @_ZNK11xercesc_2_713XMLBigDecimal18getFormattedStringEv, ptr @_ZNK11xercesc_2_713XMLBigDecimal7getSignEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XMLBigDecimalE = dso_local constant [31 x i8] c"N11xercesc_2_713XMLBigDecimalE\00", align 1
@_ZTIN11xercesc_2_79XMLNumberE = external constant ptr
@_ZTIN11xercesc_2_713XMLBigDecimalE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLBigDecimalE, ptr @_ZTIN11xercesc_2_79XMLNumberE }, align 8
@.str = private unnamed_addr constant [18 x i8] c"XMLBigDecimal.cpp\00", align 1
@_ZTSN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721NumberFormatExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721NumberFormatExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721NumberFormatExceptionD0Ev, ptr @_ZNK11xercesc_2_721NumberFormatException7getTypeEv, ptr @_ZNK11xercesc_2_721NumberFormatException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgNumberFormatException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E = external local_unnamed_addr global [65536 x i8], align 16
@_ZN11xercesc_2_713XMLBigDecimal18classXMLBigDecimalE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_713XMLBigDecimal12createObjectEPNS_13MemoryManagerE }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"XMLBigDecimal\00", align 1

@_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_713XMLBigDecimalD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713XMLBigDecimalD2Ev
@_ZN11xercesc_2_713XMLBigDecimalC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPNS_13MemoryManagerE

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimalD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_713XMLBigDecimalD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLBigDecimal14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !68 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimal9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = alloca ptr, align 8
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  tail call void @_ZN11xercesc_2_79XMLNumber9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 1
  br i1 %7, label %9, label %22

9:                                                ; preds = %2
  %10 = load i32, ptr %8, align 8, !tbaa !69
  %11 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %10) #12
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !77
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %13) #12
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !78
  %17 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %16) #12
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %19, i32 noundef 0, i1 noundef zeroext false) #12
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !80
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %21, i32 noundef 0, i1 noundef zeroext false) #12
  br label %87

22:                                               ; preds = %2
  %23 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %8) #12
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 2
  %25 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %24) #12
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 3
  %27 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %26) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %28 = load ptr, ptr %3, align 8, !tbaa !81
  %29 = call noundef ptr @_ZNK11xercesc_2_716XSerializeEngine16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %28, ptr noundef %29) #12
  %30 = load ptr, ptr %3, align 8, !tbaa !81
  %31 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %30) #12
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 4
  store i32 %31, ptr %32, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  invoke void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
          to label %33 unwind label %49

33:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %34 = load ptr, ptr %5, align 8, !tbaa !81
  %35 = invoke noundef ptr @_ZNK11xercesc_2_716XSerializeEngine16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #12
          to label %36 unwind label %51

36:                                               ; preds = %33
  invoke void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %34, ptr noundef %35) #12
          to label %37 unwind label %51

37:                                               ; preds = %36
  %38 = load ptr, ptr %5, align 8, !tbaa !81
  %39 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %38) #12
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !79
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !83
  %46 = load ptr, ptr %45, align 8, !tbaa !84
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull %41) #12
          to label %55 unwind label %53

49:                                               ; preds = %22
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %85

51:                                               ; preds = %36, %33
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %83

53:                                               ; preds = %55, %43
  %54 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
  br label %83

55:                                               ; preds = %43, %37
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !83
  %58 = load i32, ptr %32, align 4, !tbaa !82
  %59 = add i32 %39, 4
  %60 = add i32 %59, %58
  %61 = zext i32 %60 to i64
  %62 = shl nuw nsw i64 %61, 1
  %63 = load ptr, ptr %57, align 8, !tbaa !84
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %57, i64 noundef %62) #12
          to label %67 unwind label %53

67:                                               ; preds = %55
  store ptr %66, ptr %40, align 8, !tbaa !79
  %68 = load ptr, ptr %3, align 8, !tbaa !81
  %69 = load i32, ptr %32, align 4, !tbaa !82
  %70 = zext i32 %69 to i64
  %71 = shl nuw nsw i64 %70, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %66, ptr align 2 %68, i64 %71, i1 false)
  %72 = load ptr, ptr %40, align 8, !tbaa !79
  %73 = load i32, ptr %32, align 4, !tbaa !82
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i16, ptr %72, i64 %74
  store i16 0, ptr %75, align 2, !tbaa !86
  %76 = getelementptr inbounds i16, ptr %75, i64 1
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 6
  store ptr %76, ptr %77, align 8, !tbaa !80
  %78 = load ptr, ptr %5, align 8, !tbaa !81
  %79 = zext i32 %39 to i64
  %80 = shl nuw nsw i64 %79, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %76, ptr align 2 %78, i64 %80, i1 false)
  %81 = load ptr, ptr %77, align 8, !tbaa !80
  %82 = getelementptr inbounds i16, ptr %81, i64 %79
  store i16 0, ptr %82, align 2, !tbaa !86
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %87

83:                                               ; preds = %53, %51
  %84 = phi { ptr, i32 } [ %54, %53 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %85

85:                                               ; preds = %83, %49
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  resume { ptr, i32 } %86

87:                                               ; preds = %67, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_713XMLBigDecimal12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !68 {
  ret ptr @_ZN11xercesc_2_713XMLBigDecimal18classXMLBigDecimalE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLBigDecimal8toStringEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLBigDecimal10getRawDataEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLBigDecimal18getFormattedStringEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal7getSignEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !69
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLBigDecimalE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store ptr %2, ptr %11, align 8, !tbaa !83
  %12 = icmp eq ptr %1, null
  br i1 %12, label %16, label %13, !prof !91

13:                                               ; preds = %3
  %14 = load i16, ptr %1, align 2, !tbaa !86
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %28, !prof !91

16:                                               ; preds = %13, %3
  %17 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %18 = load ptr, ptr %11, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 261, ptr noundef %18) #12
          to label %19 unwind label %20

19:                                               ; preds = %16
  invoke void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
          to label %74 unwind label %24

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  tail call void @__cxa_free_exception(ptr %17) #13
  br label %66

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = extractvalue { ptr, i32 } %25, 1
  br label %66

28:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_713XMLBigDecimal7cleanUpEv to i64), i64 0) #12
  %29 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %1) #12
  store i32 %29, ptr %8, align 4, !tbaa !82
  %30 = load ptr, ptr %11, align 8, !tbaa !83
  %31 = shl i32 %29, 1
  %32 = add i32 %31, 2
  %33 = zext i32 %32 to i64
  %34 = shl nuw nsw i64 %33, 1
  %35 = load ptr, ptr %30, align 8, !tbaa !84
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef %34) #12
          to label %39 unwind label %49

39:                                               ; preds = %28
  store ptr %38, ptr %9, align 8, !tbaa !79
  %40 = load i32, ptr %8, align 4, !tbaa !82
  %41 = zext i32 %40 to i64
  %42 = shl nuw nsw i64 %41, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %38, ptr nonnull align 2 %1, i64 %42, i1 false)
  %43 = load ptr, ptr %9, align 8, !tbaa !79
  %44 = load i32, ptr %8, align 4, !tbaa !82
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i16, ptr %43, i64 %45
  store i16 0, ptr %46, align 2, !tbaa !86
  %47 = getelementptr inbounds i16, ptr %46, i64 1
  store ptr %47, ptr %10, align 8, !tbaa !80
  %48 = load ptr, ptr %11, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef nonnull %47, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef %48) #12
          to label %62 unwind label %49

49:                                               ; preds = %39, %28
  %50 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %51 = extractvalue { ptr, i32 } %50, 0
  %52 = extractvalue { ptr, i32 } %50, 1
  %53 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #13
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = call ptr @__cxa_begin_catch(ptr %51) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  invoke void @__cxa_rethrow() #14
          to label %74 unwind label %57

57:                                               ; preds = %55
  %58 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %59 unwind label %71

59:                                               ; preds = %57
  %60 = extractvalue { ptr, i32 } %58, 1
  %61 = extractvalue { ptr, i32 } %58, 0
  br label %63

62:                                               ; preds = %39
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void

63:                                               ; preds = %59, %49
  %64 = phi i32 [ %60, %59 ], [ %52, %49 ]
  %65 = phi ptr [ %61, %59 ], [ %51, %49 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %66

66:                                               ; preds = %63, %24, %20
  %67 = phi i32 [ %64, %63 ], [ %27, %24 ], [ %23, %20 ]
  %68 = phi ptr [ %65, %63 ], [ %26, %24 ], [ %22, %20 ]
  call void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %69 = insertvalue { ptr, i32 } poison, ptr %68, 0
  %70 = insertvalue { ptr, i32 } %69, i32 %67, 1
  resume { ptr, i32 } %70

71:                                               ; preds = %57
  %72 = landingpad { ptr, i32 }
          catch ptr null
  %73 = extractvalue { ptr, i32 } %72, 0
  call void @__clang_call_terminate(ptr %73) #15
  unreachable

74:                                               ; preds = %55, %19
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimal7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) #2 align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !91

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #12
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #0 comdat align 2 !prof !90 {
  store ptr %1, ptr %0, align 8, !tbaa !92
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !95 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !96

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !86
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !97

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !86
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !98, !llvm.loop !99

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4, ptr noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  store i16 0, ptr %1, align 2, !tbaa !86
  store i32 0, ptr %3, align 4, !tbaa !101
  store i32 0, ptr %4, align 4, !tbaa !101
  br label %7

7:                                                ; preds = %7, %6
  %8 = phi ptr [ %0, %6 ], [ %11, %7 ]
  %9 = load i16, ptr %8, align 2, !tbaa !86
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %9) #12
  %11 = getelementptr inbounds i16, ptr %8, i64 1
  br i1 %10, label %7, label %12, !prof !91, !llvm.loop !102

12:                                               ; preds = %7
  %13 = load i16, ptr %8, align 2, !tbaa !86
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %20, !prof !91

15:                                               ; preds = %12
  %16 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 262, ptr noundef %5) #12
          to label %17 unwind label %18

17:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %104

20:                                               ; preds = %12
  %21 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #12
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i16, ptr %0, i64 %22
  br label %24

24:                                               ; preds = %24, %20
  %25 = phi ptr [ %23, %20 ], [ %26, %24 ]
  %26 = getelementptr inbounds i16, ptr %25, i64 -1
  %27 = load i16, ptr %26, align 2, !tbaa !86
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %27) #12
  br i1 %28, label %24, label %29, !prof !91, !llvm.loop !103

29:                                               ; preds = %24
  store i32 1, ptr %2, align 4, !tbaa !101
  %30 = load i16, ptr %8, align 2, !tbaa !86
  switch i16 %30, label %33 [
    i16 45, label %31
    i16 43, label %32
  ], !prof !104

31:                                               ; preds = %29
  store i32 -1, ptr %2, align 4, !tbaa !101
  br label %33

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %29, %32, %31
  %34 = phi ptr [ %8, %29 ], [ %11, %32 ], [ %11, %31 ]
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi ptr [ %39, %35 ], [ %34, %33 ]
  %37 = load i16, ptr %36, align 2, !tbaa !86
  %38 = icmp eq i16 %37, 48
  %39 = getelementptr inbounds i16, ptr %36, i64 1
  br i1 %38, label %35, label %40, !prof !105, !llvm.loop !106

40:                                               ; preds = %35
  %41 = icmp ult ptr %36, %25
  br i1 %41, label %42, label %44, !prof !107

42:                                               ; preds = %40
  %43 = ptrtoint ptr %25 to i64
  br label %85

44:                                               ; preds = %40
  store i32 0, ptr %2, align 4, !tbaa !101
  br label %103

45:                                               ; preds = %79
  %46 = load i32, ptr %4, align 4, !tbaa !101
  br label %47

47:                                               ; preds = %58, %45
  %48 = phi i32 [ %46, %45 ], [ %63, %58 ]
  %49 = phi ptr [ %81, %45 ], [ %87, %58 ]
  %50 = icmp sgt i32 %48, 0
  br i1 %50, label %89, label %101, !prof !108

51:                                               ; preds = %85, %58
  %52 = phi i8 [ %86, %85 ], [ 1, %58 ]
  %53 = phi ptr [ %88, %85 ], [ %64, %58 ]
  %54 = load i16, ptr %53, align 2, !tbaa !86
  %55 = icmp eq i16 %54, 46
  br i1 %55, label %56, label %71, !prof !109

56:                                               ; preds = %51
  %57 = icmp eq i8 %52, 0
  br i1 %57, label %58, label %66, !prof !110

58:                                               ; preds = %56
  %59 = ptrtoint ptr %53 to i64
  %60 = sub i64 %43, %59
  %61 = lshr exact i64 %60, 1
  %62 = trunc i64 %61 to i32
  %63 = add i32 %62, -1
  store i32 %63, ptr %4, align 4, !tbaa !101
  %64 = getelementptr inbounds i16, ptr %53, i64 1
  %65 = icmp ult ptr %64, %25
  br i1 %65, label %51, label %47, !prof !111, !llvm.loop !112

66:                                               ; preds = %56
  %67 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %67, ptr noundef nonnull @.str, i32 noundef 268, i32 noundef 263, ptr noundef %5) #12
          to label %68 unwind label %69

68:                                               ; preds = %66
  tail call void @__cxa_throw(ptr nonnull %67, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

69:                                               ; preds = %66
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %104

71:                                               ; preds = %51
  %72 = add i16 %54, -58
  %73 = icmp ult i16 %72, -10
  br i1 %73, label %74, label %79, !prof !113

74:                                               ; preds = %71
  %75 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %75, ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 264, ptr noundef %5) #12
          to label %76 unwind label %77

76:                                               ; preds = %74
  tail call void @__cxa_throw(ptr nonnull %75, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

77:                                               ; preds = %74
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %104

79:                                               ; preds = %71
  %80 = getelementptr inbounds i16, ptr %53, i64 1
  %81 = getelementptr inbounds i16, ptr %87, i64 1
  store i16 %54, ptr %87, align 2, !tbaa !86
  %82 = load i32, ptr %3, align 4, !tbaa !101
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %3, align 4, !tbaa !101
  %84 = icmp ult ptr %80, %25
  br i1 %84, label %85, label %45, !prof !114, !llvm.loop !112

85:                                               ; preds = %42, %79
  %86 = phi i8 [ 0, %42 ], [ %52, %79 ]
  %87 = phi ptr [ %1, %42 ], [ %81, %79 ]
  %88 = phi ptr [ %36, %42 ], [ %80, %79 ]
  br label %51

89:                                               ; preds = %47, %95
  %90 = phi i32 [ %99, %95 ], [ %48, %47 ]
  %91 = phi ptr [ %92, %95 ], [ %49, %47 ]
  %92 = getelementptr inbounds i16, ptr %91, i64 -1
  %93 = load i16, ptr %92, align 2, !tbaa !86
  %94 = icmp eq i16 %93, 48
  br i1 %94, label %95, label %101, !prof !115

95:                                               ; preds = %89
  %96 = add nsw i32 %90, -1
  store i32 %96, ptr %4, align 4, !tbaa !101
  %97 = load i32, ptr %3, align 4, !tbaa !101
  %98 = add nsw i32 %97, -1
  store i32 %98, ptr %3, align 4, !tbaa !101
  %99 = load i32, ptr %4, align 4, !tbaa !101
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %89, label %101, !prof !116, !llvm.loop !117

101:                                              ; preds = %89, %95, %47
  %102 = phi ptr [ %49, %47 ], [ %92, %95 ], [ %91, %89 ]
  store i16 0, ptr %102, align 2, !tbaa !86
  br label %103

103:                                              ; preds = %101, %44
  ret void

104:                                              ; preds = %69, %77, %18
  %105 = phi ptr [ %67, %69 ], [ %75, %77 ], [ %16, %18 ]
  %106 = phi { ptr, i32 } [ %70, %69 ], [ %78, %77 ], [ %19, %18 ]
  tail call void @__cxa_free_exception(ptr %105) #13
  resume { ptr, i32 } %106
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !90 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %2 = load ptr, ptr %0, align 8, !tbaa !92
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !118

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !94
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !94
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !84
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !119
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(48) %11) #12
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #15
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !68 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgNumberFormatException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !68 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimalD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLBigDecimalE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_713XMLBigDecimal7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimal15setDecimalValueEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !77
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !78
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #12
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !82
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  br label %29

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = load ptr, ptr %14, align 8, !tbaa !84
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %16) #12
  %20 = load ptr, ptr %13, align 8, !tbaa !83
  %21 = shl i32 %5, 1
  %22 = add i32 %21, 4
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 1
  %25 = load ptr, ptr %20, align 8, !tbaa !84
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef %24) #12
  store ptr %28, ptr %15, align 8, !tbaa !79
  br label %29

29:                                               ; preds = %9, %12
  %30 = phi ptr [ %11, %9 ], [ %28, %12 ]
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 5
  %32 = zext i32 %5 to i64
  %33 = shl nuw nsw i64 %32, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %30, ptr align 2 %1, i64 %33, i1 false)
  %34 = load ptr, ptr %31, align 8, !tbaa !79
  %35 = getelementptr inbounds i16, ptr %34, i64 %32
  store i16 0, ptr %35, align 2, !tbaa !86
  store i32 %5, ptr %6, align 4, !tbaa !82
  %36 = getelementptr inbounds i16, ptr %35, i64 1
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 6
  store ptr %36, ptr %37, align 8, !tbaa !80
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 1
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE(ptr noundef %1, ptr noundef nonnull %36, ptr noundef nonnull align 4 dereferenceable(4) %38, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef %40) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713XMLBigDecimal26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #12
  %8 = add i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 1
  %11 = load ptr, ptr %1, align 8, !tbaa !84
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %10) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %14, ptr noundef nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  invoke void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE(ptr noundef %0, ptr noundef %14, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull %1) #12
          to label %25 unwind label %15

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  %17 = extractvalue { ptr, i32 } %16, 1
  %18 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #13
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %91

20:                                               ; preds = %15
  %21 = extractvalue { ptr, i32 } %16, 0
  %22 = call ptr @__cxa_begin_catch(ptr %21) #13
  invoke void @__cxa_end_catch()
          to label %89 unwind label %23

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %91

25:                                               ; preds = %2
  %26 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %14) #12
  %27 = add nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 1
  %30 = load ptr, ptr %1, align 8, !tbaa !84
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %29) #12
          to label %34 unwind label %44

34:                                               ; preds = %25
  %35 = load i32, ptr %4, align 4, !tbaa !101
  %36 = icmp eq i32 %35, 0
  %37 = load i32, ptr %5, align 4
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  store i16 48, ptr %33, align 2, !tbaa !86
  %41 = getelementptr inbounds i16, ptr %33, i64 1
  store i16 46, ptr %41, align 2, !tbaa !86
  %42 = getelementptr inbounds i16, ptr %33, i64 2
  store i16 48, ptr %42, align 2, !tbaa !86
  %43 = getelementptr inbounds i16, ptr %33, i64 3
  br label %87

44:                                               ; preds = %25
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %91

46:                                               ; preds = %34
  %47 = icmp eq i32 %35, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = getelementptr inbounds i16, ptr %33, i64 1
  store i16 45, ptr %33, align 2, !tbaa !86
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %49, %48 ], [ %33, %46 ]
  %52 = load i32, ptr %6, align 4, !tbaa !101
  %53 = icmp eq i32 %52, %37
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = getelementptr inbounds i16, ptr %51, i64 1
  store i16 48, ptr %51, align 2, !tbaa !86
  %56 = getelementptr inbounds i16, ptr %51, i64 2
  store i16 46, ptr %55, align 2, !tbaa !86
  %57 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef nonnull %56, ptr noundef %14, i32 noundef %26) #12
          to label %58 unwind label %61

58:                                               ; preds = %54
  %59 = sext i32 %26 to i64
  %60 = getelementptr inbounds i16, ptr %56, i64 %59
  br label %87

61:                                               ; preds = %65, %54
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %91

63:                                               ; preds = %50
  %64 = icmp eq i32 %52, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %63
  %66 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %51, ptr noundef %14, i32 noundef %26) #12
          to label %67 unwind label %61

67:                                               ; preds = %65
  %68 = sext i32 %26 to i64
  %69 = getelementptr inbounds i16, ptr %51, i64 %68
  %70 = getelementptr inbounds i16, ptr %69, i64 1
  store i16 46, ptr %69, align 2, !tbaa !86
  %71 = getelementptr inbounds i16, ptr %69, i64 2
  store i16 48, ptr %70, align 2, !tbaa !86
  br label %87

72:                                               ; preds = %63
  %73 = sub nsw i32 %37, %52
  %74 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %51, ptr noundef %14, i32 noundef %73) #12
          to label %75 unwind label %85

75:                                               ; preds = %72
  %76 = sext i32 %73 to i64
  %77 = getelementptr inbounds i16, ptr %51, i64 %76
  %78 = getelementptr inbounds i16, ptr %77, i64 1
  store i16 46, ptr %77, align 2, !tbaa !86
  %79 = getelementptr inbounds i16, ptr %14, i64 %76
  %80 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef nonnull %78, ptr noundef %79, i32 noundef %52) #12
          to label %81 unwind label %85

81:                                               ; preds = %75
  %82 = load i32, ptr %6, align 4, !tbaa !101
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i16, ptr %78, i64 %83
  br label %87

85:                                               ; preds = %75, %72
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %91

87:                                               ; preds = %58, %81, %67, %40
  %88 = phi ptr [ %43, %40 ], [ %71, %67 ], [ %84, %81 ], [ %60, %58 ]
  store i16 0, ptr %88, align 2, !tbaa !86
  br label %89

89:                                               ; preds = %87, %20
  %90 = phi ptr [ null, %20 ], [ %33, %87 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret ptr %90

91:                                               ; preds = %44, %85, %61, %23, %15
  %92 = phi { ptr, i32 } [ %24, %23 ], [ %16, %15 ], [ %45, %44 ], [ %62, %61 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  resume { ptr, i32 } %92
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !123 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !124
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !126
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !128 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !127 {
  %3 = load ptr, ptr %0, align 8, !tbaa !124
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !129

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !130

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !84
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #12
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !124
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !126
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %0) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %2 = zext i16 %0 to i64
  %3 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !132
  %5 = icmp slt i8 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %3 ]
  %5 = load i16, ptr %4, align 2, !tbaa !86
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %5) #12
  %7 = getelementptr inbounds i16, ptr %4, i64 1
  br i1 %6, label %3, label %8, !llvm.loop !133

8:                                                ; preds = %3
  %9 = load i16, ptr %4, align 2, !tbaa !86
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 311, i32 noundef 262, ptr noundef %1) #12
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %66

16:                                               ; preds = %8
  %17 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #12
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i16, ptr %0, i64 %18
  br label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %19, %16 ], [ %22, %20 ]
  %22 = getelementptr inbounds i16, ptr %21, i64 -1
  %23 = load i16, ptr %22, align 2, !tbaa !86
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %23) #12
  br i1 %24, label %20, label %25, !llvm.loop !134

25:                                               ; preds = %20
  %26 = load i16, ptr %4, align 2, !tbaa !86
  switch i16 %26, label %29 [
    i16 45, label %27
    i16 43, label %28
  ]

27:                                               ; preds = %25
  br label %29

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %25, %28, %27
  %30 = phi ptr [ %4, %25 ], [ %7, %28 ], [ %7, %27 ]
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi ptr [ %35, %31 ], [ %30, %29 ]
  %33 = load i16, ptr %32, align 2, !tbaa !86
  %34 = icmp eq i16 %33, 48
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  br i1 %34, label %31, label %36, !llvm.loop !135

36:                                               ; preds = %31
  %37 = icmp ult ptr %32, %21
  br i1 %37, label %41, label %65

38:                                               ; preds = %48
  %39 = getelementptr inbounds i16, ptr %45, i64 1
  %40 = icmp ult ptr %39, %21
  br i1 %40, label %41, label %65, !llvm.loop !136

41:                                               ; preds = %36, %38
  %42 = phi i1 [ false, %38 ], [ true, %36 ]
  %43 = phi ptr [ %39, %38 ], [ %32, %36 ]
  br label %44

44:                                               ; preds = %41, %62
  %45 = phi ptr [ %43, %41 ], [ %63, %62 ]
  %46 = load i16, ptr %45, align 2, !tbaa !86
  %47 = icmp eq i16 %46, 46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  br i1 %42, label %38, label %49

49:                                               ; preds = %48
  %50 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %50, ptr noundef nonnull @.str, i32 noundef 354, i32 noundef 263, ptr noundef %1) #12
          to label %51 unwind label %52

51:                                               ; preds = %49
  tail call void @__cxa_throw(ptr nonnull %50, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

52:                                               ; preds = %49
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %66

54:                                               ; preds = %44
  %55 = add i16 %46, -58
  %56 = icmp ult i16 %55, -10
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef nonnull @.str, i32 noundef 359, i32 noundef 264, ptr noundef %1) #12
          to label %59 unwind label %60

59:                                               ; preds = %57
  tail call void @__cxa_throw(ptr nonnull %58, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

60:                                               ; preds = %57
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %66

62:                                               ; preds = %54
  %63 = getelementptr inbounds i16, ptr %45, i64 1
  %64 = icmp ult ptr %63, %21
  br i1 %64, label %44, label %65, !llvm.loop !136

65:                                               ; preds = %38, %62, %36
  ret void

66:                                               ; preds = %52, %60, %14
  %67 = phi ptr [ %50, %52 ], [ %58, %60 ], [ %12, %14 ]
  %68 = phi { ptr, i32 } [ %53, %52 ], [ %61, %60 ], [ %15, %14 ]
  tail call void @__cxa_free_exception(ptr %67) #13
  resume { ptr, i32 } %68
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !137 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %12, label %7, !prof !138

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 373, i32 noundef 265, ptr noundef %2) #12
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %11

12:                                               ; preds = %3
  %13 = tail call noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal9toCompareERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  ret i32 %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal9toCompareERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 align 2 !prof !137 {
  %3 = load ptr, ptr %0, align 8, !tbaa !84
  %4 = getelementptr inbounds ptr, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  %7 = load ptr, ptr %1, align 8, !tbaa !84
  %8 = getelementptr inbounds ptr, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %19, label %12, !prof !139

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 8, !tbaa !84
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  %17 = icmp sgt i32 %6, %16
  %18 = select i1 %17, i32 1, i32 -1
  br label %42

19:                                               ; preds = %2
  %20 = icmp eq i32 %6, 0
  br i1 %20, label %42, label %21, !prof !140

21:                                               ; preds = %19
  %22 = tail call noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal13getTotalDigitEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  %23 = tail call noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal8getScaleEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  %24 = sub i32 %22, %23
  %25 = tail call noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal13getTotalDigitEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  %26 = tail call noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal8getScaleEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  %27 = sub i32 %25, %26
  %28 = icmp ugt i32 %24, %27
  br i1 %28, label %42, label %29, !prof !141

29:                                               ; preds = %21
  %30 = icmp ult i32 %24, %27
  br i1 %30, label %31, label %33, !prof !142

31:                                               ; preds = %29
  %32 = sub nsw i32 0, %6
  br label %42

33:                                               ; preds = %29
  %34 = tail call noundef ptr @_ZNK11xercesc_2_713XMLBigDecimal8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  %35 = tail call noundef ptr @_ZNK11xercesc_2_713XMLBigDecimal8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  %36 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %34, ptr noundef %35) #12
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %42, label %38, !prof !143

38:                                               ; preds = %33
  %39 = icmp slt i32 %36, 0
  br i1 %39, label %40, label %42, !prof !144

40:                                               ; preds = %38
  %41 = sub nsw i32 0, %6
  br label %42

42:                                               ; preds = %31, %21, %38, %33, %40, %19, %12
  %43 = phi i32 [ %18, %12 ], [ 0, %19 ], [ %32, %31 ], [ %6, %21 ], [ %41, %40 ], [ %6, %33 ], [ 0, %38 ]
  ret i32 %43
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal13getTotalDigitEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !145 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !77
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal8getScaleEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !78
  ret i32 %3
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLBigDecimal8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713XMLBigDecimal12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %0) #12
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %0) #12
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #11
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigDecimalC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !68 {
  tail call void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLBigDecimalE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !83
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLNumber9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #0 comdat align 2 !prof !68 {
  %2 = load i16, ptr %0, align 8, !tbaa !148
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !68 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_716XSerializeEngine16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!67}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!36 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLNumberC2Ev, i64 91750}
!37 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 2}
!38 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2}
!39 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE, ptr @__cxa_throw, i64 1}
!40 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE, ptr @__cxa_free_exception, i64 1}
!41 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEEC2EPS1_MS1_FvvE, i64 91748}
!42 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 91748}
!43 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE, i64 91748}
!44 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEE7releaseEv, i64 91748}
!45 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEED2Ev, i64 91748}
!46 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLNumberD2Ev, i64 2}
!47 = !{ptr @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt, i64 183501}
!48 = !{ptr @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 19}
!49 = !{ptr @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 19}
!50 = !{ptr @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 91749}
!51 = !{ptr @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE, ptr @__cxa_throw, i64 9}
!52 = !{ptr @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE, ptr @__cxa_free_exception, i64 9}
!53 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalD2Ev, ptr @_ZN11xercesc_2_713XMLBigDecimal7cleanUpEv, i64 91750}
!54 = !{ptr @_ZN11xercesc_2_713XMLBigDecimalD2Ev, ptr @_ZN11xercesc_2_79XMLNumberD2Ev, i64 91750}
!55 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!56 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!57 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!58 = !{ptr @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 2}
!59 = !{ptr @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2}
!60 = !{ptr @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE, ptr @__cxa_throw, i64 1}
!61 = !{ptr @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE, ptr @__cxa_free_exception, i64 1}
!62 = !{ptr @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_713XMLBigDecimal9toCompareERKS0_, i64 24976}
!63 = !{ptr @_ZNK11xercesc_2_713XMLBigDecimal9toCompareERKS0_, ptr @_ZNK11xercesc_2_713XMLBigDecimal13getTotalDigitEv, i64 49858}
!64 = !{ptr @_ZNK11xercesc_2_713XMLBigDecimal9toCompareERKS0_, ptr @_ZNK11xercesc_2_713XMLBigDecimal8getScaleEv, i64 49858}
!65 = !{ptr @_ZNK11xercesc_2_713XMLBigDecimal9toCompareERKS0_, ptr @_ZNK11xercesc_2_713XMLBigDecimal8getValueEv, i64 43494}
!66 = !{ptr @_ZNK11xercesc_2_713XMLBigDecimal9toCompareERKS0_, ptr @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_, i64 21747}
!67 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!68 = !{!"function_entry_count", i64 0}
!69 = !{!70, !73, i64 8}
!70 = !{!"_ZTSN11xercesc_2_713XMLBigDecimalE", !71, i64 0, !73, i64 8, !73, i64 12, !73, i64 16, !73, i64 20, !76, i64 24, !76, i64 32, !76, i64 40}
!71 = !{!"_ZTSN11xercesc_2_79XMLNumberE", !72, i64 0}
!72 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!73 = !{!"int", !74, i64 0}
!74 = !{!"omnipotent char", !75, i64 0}
!75 = !{!"Simple C++ TBAA"}
!76 = !{!"any pointer", !74, i64 0}
!77 = !{!70, !73, i64 12}
!78 = !{!70, !73, i64 16}
!79 = !{!70, !76, i64 24}
!80 = !{!70, !76, i64 32}
!81 = !{!76, !76, i64 0}
!82 = !{!70, !73, i64 20}
!83 = !{!70, !76, i64 40}
!84 = !{!85, !85, i64 0}
!85 = !{!"vtable pointer", !75, i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"short", !74, i64 0}
!88 = !{!"function_entry_count", i64 16}
!89 = !{!"function_entry_count", i64 49986}
!90 = !{!"function_entry_count", i64 91750}
!91 = !{!"branch_weights", i32 1, i32 91751}
!92 = !{!93, !76, i64 0}
!93 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_13XMLBigDecimalEEE", !76, i64 0, !74, i64 8}
!94 = !{!93, !74, i64 8}
!95 = !{!"function_entry_count", i64 2453164456}
!96 = !{!"branch_weights", i32 1, i32 -1841802839}
!97 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!98 = !{!"branch_weights", i32 408669070, i32 -279908792}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!73, !73, i64 0}
!102 = distinct !{!102, !100}
!103 = distinct !{!103, !100}
!104 = !{!"branch_weights", i32 -86761756, i32 504581, i32 45870}
!105 = !{!"branch_weights", i32 156, i32 91751}
!106 = distinct !{!106, !100}
!107 = !{!"branch_weights", i32 91730, i32 22}
!108 = !{!"branch_weights", i32 51247, i32 1}
!109 = !{!"branch_weights", i32 55912, i32 277962}
!110 = !{!"branch_weights", i32 55912, i32 1}
!111 = !{!"branch_weights", i32 242144, i32 91729}
!112 = distinct !{!112, !100}
!113 = !{!"branch_weights", i32 17372, i32 -1880502501}
!114 = !{!"branch_weights", i32 91728, i32 1}
!115 = !{!"branch_weights", i32 48578, i32 91730}
!116 = !{!"branch_weights", i32 37813, i32 51247}
!117 = distinct !{!117, !100}
!118 = !{!"branch_weights", i32 91751, i32 1}
!119 = !{}
!120 = !{!121, !76, i64 40}
!121 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !122, i64 8, !76, i64 16, !73, i64 24, !76, i64 32, !76, i64 40}
!122 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !74, i64 0}
!123 = !{!"function_entry_count", i64 52059}
!124 = !{!125, !76, i64 0}
!125 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !76, i64 0, !76, i64 8}
!126 = !{!125, !76, i64 8}
!127 = !{!"function_entry_count", i64 243874}
!128 = !{!"function_entry_count", i64 5836268}
!129 = !{!"branch_weights", i32 191816, i32 52060}
!130 = !{!"branch_weights", i32 1, i32 52060}
!131 = !{!"function_entry_count", i64 196710}
!132 = !{!74, !74, i64 0}
!133 = distinct !{!133, !100}
!134 = distinct !{!134, !100}
!135 = distinct !{!135, !100}
!136 = distinct !{!136, !100}
!137 = !{!"function_entry_count", i64 24978}
!138 = !{!"branch_weights", i32 623950441, i32 49959}
!139 = !{!"branch_weights", i32 24949, i32 31}
!140 = !{!"branch_weights", i32 18, i32 24932}
!141 = !{!"branch_weights", i32 3164, i32 21769}
!142 = !{!"branch_weights", i32 19, i32 21751}
!143 = !{!"branch_weights", i32 1728, i32 20024}
!144 = !{!"branch_weights", i32 1, i32 20024}
!145 = !{!"function_entry_count", i64 49862}
!146 = !{!"function_entry_count", i64 141596}
!147 = !{!"function_entry_count", i64 43500}
!148 = !{!149, !87, i64 0}
!149 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !87, i64 0, !87, i64 2, !76, i64 8, !76, i64 16, !76, i64 24, !150, i64 32, !150, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72, !76, i64 80, !76, i64 88, !73, i64 96}
!150 = !{!"long", !74, i64 0}
