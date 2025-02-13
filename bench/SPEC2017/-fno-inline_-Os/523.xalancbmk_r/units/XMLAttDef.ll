; ModuleID = 'XMLAttDef.cpp'
source_filename = "XMLAttDef.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9XMLAttDefEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9XMLAttDefEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9XMLAttDefEED2Ev = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_716XSerializeEngine10readStringERPt = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

@_ZN11xercesc_2_79XMLAttDef15fgInvalidAttrIdE = dso_local local_unnamed_addr constant i32 -2, align 4
@.str = private unnamed_addr constant [14 x i8] c"XMLAttDef.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_7L15gAttTypeStringsE = internal unnamed_addr constant [14 x ptr] [ptr @_ZN11xercesc_2_76XMLUni13fgCDATAStringE, ptr @_ZN11xercesc_2_76XMLUni10fgIDStringE, ptr @_ZN11xercesc_2_76XMLUni13fgIDRefStringE, ptr @_ZN11xercesc_2_76XMLUni14fgIDRefsStringE, ptr @_ZN11xercesc_2_76XMLUni14fgEntityStringE, ptr @_ZN11xercesc_2_76XMLUni16fgEntitiesStringE, ptr @_ZN11xercesc_2_76XMLUni15fgNmTokenStringE, ptr @_ZN11xercesc_2_76XMLUni16fgNmTokensStringE, ptr @_ZN11xercesc_2_76XMLUni16fgNotationStringE, ptr @_ZN11xercesc_2_76XMLUni19fgEnumerationStringE, ptr @_ZN11xercesc_2_76XMLUni13fgCDATAStringE, ptr @_ZN11xercesc_2_76XMLUni13fgCDATAStringE, ptr @_ZN11xercesc_2_76XMLUni13fgCDATAStringE, ptr @_ZN11xercesc_2_76XMLUni13fgCDATAStringE], align 16
@_ZN11xercesc_2_7L18gDefAttTypeStringsE = internal unnamed_addr constant [9 x ptr] [ptr @_ZN11xercesc_2_76XMLUni15fgDefaultStringE, ptr @_ZN11xercesc_2_76XMLUni13fgFixedStringE, ptr @_ZN11xercesc_2_76XMLUni16fgRequiredStringE, ptr @_ZN11xercesc_2_76XMLUni15fgImpliedStringE, ptr @_ZN11xercesc_2_76XMLUni15fgImpliedStringE, ptr @_ZN11xercesc_2_76XMLUni15fgImpliedStringE, ptr @_ZN11xercesc_2_76XMLUni15fgImpliedStringE, ptr @_ZN11xercesc_2_76XMLUni15fgImpliedStringE, ptr @_ZN11xercesc_2_76XMLUni15fgImpliedStringE], align 16
@_ZTVN11xercesc_2_79XMLAttDefE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_79XMLAttDefE, ptr @_ZN11xercesc_2_79XMLAttDefD2Ev, ptr @_ZN11xercesc_2_79XMLAttDefD0Ev, ptr @_ZNK11xercesc_2_79XMLAttDef14isSerializableEv, ptr @_ZN11xercesc_2_79XMLAttDef9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_79XMLAttDef12getProtoTypeEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"XMLAttDef\00", align 1
@_ZN11xercesc_2_79XMLAttDef14classXMLAttDefE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_79XMLAttDef12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_79XMLAttDefE = dso_local constant [26 x i8] c"N11xercesc_2_79XMLAttDefE\00", align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTIN11xercesc_2_79XMLAttDefE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_79XMLAttDefE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgCDATAStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni10fgIDStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgIDRefStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgIDRefsStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgEntityStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgEntitiesStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgNmTokenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgNmTokensStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgNotationStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni19fgEnumerationStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgDefaultStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgFixedStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgRequiredStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgImpliedStringE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN11xercesc_2_79XMLAttDefD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79XMLAttDefD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = icmp ugt i32 %0, 13
  br i1 %3, label %4, label %9, !prof !46

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef %1) #13
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %8

9:                                                ; preds = %2
  %10 = zext nneg i32 %0 to i64
  %11 = getelementptr inbounds [14 x ptr], ptr @_ZN11xercesc_2_7L15gAttTypeStringsE, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  ret ptr %12
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79XMLAttDef19getDefAttTypeStringENS0_11DefAttTypesEPNS_13MemoryManagerE(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %3 = icmp ugt i32 %0, 8
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 10, ptr noundef %1) #13
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %8

9:                                                ; preds = %2
  %10 = zext nneg i32 %0 to i64
  %11 = getelementptr inbounds [9 x ptr], ptr @_ZN11xercesc_2_7L18gDefAttTypeStringsE, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_79XMLAttDefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_79XMLAttDef7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLAttDef7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) #0 align 2 !prof !54 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !63

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !66

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull %13) #13
  br label %21

21:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_79XMLAttDefD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_79XMLAttDefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  store i32 %2, ptr %5, align 8, !tbaa !67
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  store i32 %1, ptr %6, align 4, !tbaa !68
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !69
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 4
  store i8 0, ptr %8, align 4, !tbaa !70
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 5
  store i8 0, ptr %9, align 1, !tbaa !71
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 6
  store i32 -2, ptr %10, align 8, !tbaa !72
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store ptr %3, ptr %12, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !73 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !74 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLAttDefC2EPKtNS0_8AttTypesENS0_11DefAttTypesES2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %7 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_79XMLAttDefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  store i32 %3, ptr %8, align 8, !tbaa !67
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  store i32 %2, ptr %9, align 4, !tbaa !68
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 3
  store i32 0, ptr %10, align 8, !tbaa !69
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 4
  store i8 0, ptr %11, align 4, !tbaa !70
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 5
  store i8 0, ptr %12, align 1, !tbaa !71
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 6
  store i32 -2, ptr %13, align 8, !tbaa !72
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store ptr %5, ptr %15, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9XMLAttDefEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_79XMLAttDef7cleanUpEv to i64), i64 0) #13
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %16) #13
          to label %18 unwind label %23

18:                                               ; preds = %6
  store ptr %17, ptr %14, align 8, !tbaa !65
  %19 = load ptr, ptr %15, align 8, !tbaa !64
  %20 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %19) #13
          to label %21 unwind label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 8
  store ptr %20, ptr %22, align 8, !tbaa !55
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9XMLAttDefEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  ret void

23:                                               ; preds = %18, %6
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %25 = extractvalue { ptr, i32 } %24, 1
  %26 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #12
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = extractvalue { ptr, i32 } %24, 0
  %30 = call ptr @__cxa_begin_catch(ptr %29) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9XMLAttDefEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  invoke void @__cxa_rethrow() #14
          to label %38 unwind label %31

31:                                               ; preds = %28
  %32 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %33 unwind label %35

33:                                               ; preds = %31, %23
  %34 = phi { ptr, i32 } [ %24, %23 ], [ %32, %31 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %34

35:                                               ; preds = %31
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  call void @__clang_call_terminate(ptr %37) #16
  unreachable

38:                                               ; preds = %28
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9XMLAttDefEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #2 comdat align 2 !prof !51 {
  store ptr %1, ptr %0, align 8, !tbaa !75
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !78 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !79

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !52
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9XMLAttDefEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !51 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !77
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !77
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !52
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !80
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(56) %11) #13
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #16
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_79XMLAttDef12createObjectEPNS_13MemoryManagerE(ptr nocapture readnone %0) #8 align 2 !prof !51 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLAttDef14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !51 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_79XMLAttDef12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !51 {
  ret ptr @_ZN11xercesc_2_79XMLAttDef14classXMLAttDefE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLAttDef9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !51 {
  %3 = alloca i32, align 4
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 6
  br i1 %4, label %6, label %30

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !67
  %9 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %8) #13
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !68
  %12 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %11) #13
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !69
  %15 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %14) #13
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 4
  %17 = load i8, ptr %16, align 4, !tbaa !70, !range !81, !noundef !80
  %18 = icmp ne i8 %17, 0
  %19 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %18) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 5
  %21 = load i8, ptr %20, align 1, !tbaa !71, !range !81, !noundef !80
  %22 = icmp ne i8 %21, 0
  %23 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %22) #13
  %24 = load i32, ptr %5, align 8, !tbaa !72
  %25 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %24) #13
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !65
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %27, i32 noundef 0, i1 noundef zeroext false) #13
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %29, i32 noundef 0, i1 noundef zeroext false) #13
  br label %47

30:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %31 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %32 = load i32, ptr %3, align 4, !tbaa !82
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  store i32 %32, ptr %33, align 8, !tbaa !67
  %34 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %35 = load i32, ptr %3, align 4, !tbaa !82
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  store i32 %35, ptr %36, align 4, !tbaa !68
  %37 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %38 = load i32, ptr %3, align 4, !tbaa !82
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 3
  store i32 %38, ptr %39, align 8, !tbaa !69
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 4
  %41 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %40) #13
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 5
  %43 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %42) #13
  %44 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %5) #13
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %45) #13
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 8
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %46) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %47

47:                                               ; preds = %30, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 comdat align 2 !prof !51 {
  %2 = load i16, ptr %0, align 8, !tbaa !83
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #9

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !51 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #9

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !51 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !51 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !90 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #2 comdat align 2 !prof !91 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !92

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !93
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !94

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !93
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !95, !llvm.loop !96

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { optsize }
attributes #14 = { noreturn }
attributes #15 = { nounwind optsize }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!44}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 2}
!36 = !{ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2}
!37 = !{ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE, ptr @__cxa_throw, i64 1}
!38 = !{ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE, ptr @__cxa_free_exception, i64 1}
!39 = !{ptr @_ZN11xercesc_2_79XMLAttDefD2Ev, ptr @_ZN11xercesc_2_79XMLAttDef7cleanUpEv, i64 13}
!40 = !{ptr @_ZN11xercesc_2_79XMLAttDefD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 13}
!41 = !{ptr @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 13}
!42 = !{ptr @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 13}
!43 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 200913}
!46 = !{!"branch_weights", i32 25114, i32 -1772065084}
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!"function_entry_count", i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !50, i64 0}
!54 = !{!"function_entry_count", i64 13}
!55 = !{!56, !48, i64 40}
!56 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !57, i64 0, !58, i64 8, !59, i64 12, !60, i64 16, !61, i64 20, !61, i64 21, !62, i64 24, !48, i64 32, !48, i64 40, !48, i64 48}
!57 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!58 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !49, i64 0}
!59 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !49, i64 0}
!60 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !49, i64 0}
!61 = !{!"bool", !49, i64 0}
!62 = !{!"int", !49, i64 0}
!63 = !{!"branch_weights", i32 14, i32 1}
!64 = !{!56, !48, i64 48}
!65 = !{!56, !48, i64 32}
!66 = !{!"branch_weights", i32 13, i32 2}
!67 = !{!56, !58, i64 8}
!68 = !{!56, !59, i64 12}
!69 = !{!56, !60, i64 16}
!70 = !{!56, !61, i64 20}
!71 = !{!56, !61, i64 21}
!72 = !{!56, !62, i64 24}
!73 = !{!"function_entry_count", i64 1068727}
!74 = !{!"function_entry_count", i64 5836268}
!75 = !{!76, !48, i64 0}
!76 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_9XMLAttDefEEE", !48, i64 0, !49, i64 8}
!77 = !{!76, !49, i64 8}
!78 = !{!"function_entry_count", i64 558789}
!79 = !{!"branch_weights", i32 158605, i32 400186}
!80 = !{}
!81 = !{i8 0, i8 2}
!82 = !{!62, !62, i64 0}
!83 = !{!84, !85, i64 0}
!84 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !85, i64 0, !85, i64 2, !48, i64 8, !48, i64 16, !48, i64 24, !86, i64 32, !86, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !62, i64 96}
!85 = !{!"short", !49, i64 0}
!86 = !{!"long", !49, i64 0}
!87 = !{!88, !48, i64 40}
!88 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !89, i64 8, !48, i64 16, !62, i64 24, !48, i64 32, !48, i64 40}
!89 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !49, i64 0}
!90 = !{!"function_entry_count", i64 1069174}
!91 = !{!"function_entry_count", i64 2453164456}
!92 = !{!"branch_weights", i32 1, i32 -1841802839}
!93 = !{!85, !85, i64 0}
!94 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!95 = !{!"branch_weights", i32 408669070, i32 -279908794}
!96 = distinct !{!96, !97}
!97 = !{!"llvm.loop.mustprogress"}
