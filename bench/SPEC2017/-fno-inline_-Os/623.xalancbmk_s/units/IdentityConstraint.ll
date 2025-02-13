; ModuleID = 'IdentityConstraint.cpp'
source_filename = "IdentityConstraint.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::IdentityConstraint" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEED2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE = comdat any

$_ZN11xercesc_2_716XSerializeEngine10readStringERPt = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_11IC_SelectorE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_9IC_UniqueE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_6IC_KeyE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_9IC_KeyRefE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_718IdentityConstraintE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718IdentityConstraintE, ptr @_ZN11xercesc_2_718IdentityConstraintD2Ev, ptr @_ZN11xercesc_2_718IdentityConstraintD0Ev, ptr @_ZNK11xercesc_2_718IdentityConstraint14isSerializableEv, ptr @_ZN11xercesc_2_718IdentityConstraint9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_718IdentityConstraint12getProtoTypeEv, ptr @__cxa_pure_virtual] }, align 8
@_ZTSN11xercesc_2_718IdentityConstraintE = dso_local constant [36 x i8] c"N11xercesc_2_718IdentityConstraintE\00", align 1
@_ZTIN11xercesc_2_718IdentityConstraintE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718IdentityConstraintE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_718IdentityConstraint23classIdentityConstraintE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_718IdentityConstraint12createObjectEPNS_13MemoryManagerE }, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"IdentityConstraint\00", align 1
@_ZN11xercesc_2_711IC_Selector16classIC_SelectorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_79IC_Unique14classIC_UniqueE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_76IC_Key11classIC_KeyE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_79IC_KeyRef14classIC_KeyRefE = external global %"class.xercesc_2_7::XProtoType", align 8

@_ZN11xercesc_2_718IdentityConstraintD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718IdentityConstraintD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_718IdentityConstraintD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718IdentityConstraint14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !50 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718IdentityConstraint9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !50 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %4 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 1
  br i1 %3, label %5, label %17

5:                                                ; preds = %2
  %6 = load ptr, ptr %4, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %6, i32 noundef 0, i1 noundef zeroext false) #13
  %7 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %8, i32 noundef 0, i1 noundef zeroext false) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %10) #13
  %12 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !60
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %13) #13
  %15 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_8IC_FieldEEERNS_16XSerializeEngineE(ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  br label %24

17:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %18 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %18) #13
  %19 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 3
  %20 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_11IC_SelectorE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %19) #13
  %21 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 6
  %22 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %21) #13
  %23 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_8IC_FieldEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %23, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  br label %24

24:                                               ; preds = %17, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_718IdentityConstraint12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !50 {
  ret ptr @_ZN11xercesc_2_718IdentityConstraint23classIdentityConstraintE
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718IdentityConstraintC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_718IdentityConstraintE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %6 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store ptr %3, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 6
  store i32 -1, ptr %8, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_718IdentityConstraint7cleanUpEv to i64), i64 0) #13
  %9 = load ptr, ptr %7, align 8, !tbaa !65
  %10 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %9) #13
          to label %11 unwind label %16

11:                                               ; preds = %4
  store ptr %10, ptr %6, align 8, !tbaa !51
  %12 = load ptr, ptr %7, align 8, !tbaa !65
  %13 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %12) #13
          to label %14 unwind label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 2
  store ptr %13, ptr %15, align 8, !tbaa !58
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void

16:                                               ; preds = %11, %4
  %17 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %18 = extractvalue { ptr, i32 } %17, 1
  %19 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = extractvalue { ptr, i32 } %17, 0
  %23 = call ptr @__cxa_begin_catch(ptr %22) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  invoke void @__cxa_rethrow() #16
          to label %31 unwind label %24

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %26 unwind label %28

26:                                               ; preds = %24, %16
  %27 = phi { ptr, i32 } [ %17, %16 ], [ %25, %24 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %27

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @__clang_call_terminate(ptr %30) #12
  unreachable

31:                                               ; preds = %21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !66 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718IdentityConstraint7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(52) %0) #2 align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = load ptr, ptr %3, align 8, !tbaa !63
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
  %9 = load ptr, ptr %2, align 8, !tbaa !65
  %10 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = load ptr, ptr %9, align 8, !tbaa !63
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #13
  %15 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %16, align 8, !tbaa !63
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(40) %16) #15
  br label %22

22:                                               ; preds = %18, %1
  %23 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !63
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(24) %24) #15
  br label %30

30:                                               ; preds = %26, %22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #7 comdat align 2 !prof !62 {
  store ptr %1, ptr %0, align 8, !tbaa !68
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !71 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !72

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !63
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
declare i32 @llvm.eh.typeid.for(ptr) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #7 comdat align 2 !prof !62 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !73

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !70
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !63
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !74
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(52) %11) #13
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !75 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #7 comdat align 2 !prof !76 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !77

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !78
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !80

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !78
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !81, !llvm.loop !82

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718IdentityConstraintD2Ev(ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_718IdentityConstraintE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_718IdentityConstraint7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(52) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718IdentityConstrainteqERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %1) local_unnamed_addr #2 align 2 !prof !50 {
  %3 = load ptr, ptr %0, align 8, !tbaa !63
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef signext i16 %5(ptr noundef nonnull align 8 dereferenceable(52) %0) #13
  %7 = load ptr, ptr %1, align 8, !tbaa !63
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(52) %1) #13
  %11 = icmp eq i16 %6, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %14, ptr noundef %16) #13
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711IC_SelectorneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %22) #13
  br i1 %23, label %46, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  %27 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %26) #13
  %28 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %1, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !61
  %30 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %29) #13
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %24
  %33 = icmp eq i32 %27, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %34, %32
  %35 = phi i32 [ 0, %32 ], [ %41, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !61
  %37 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %36, i32 noundef %35) #13
  %38 = load ptr, ptr %28, align 8, !tbaa !61
  %39 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %38, i32 noundef %35) #13
  %40 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78IC_FieldneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %39) #13
  %41 = add nuw i32 %35, 1
  %42 = icmp eq i32 %41, %27
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %44, label %34, !llvm.loop !84

44:                                               ; preds = %34
  %45 = xor i1 %40, true
  br label %46

46:                                               ; preds = %44, %32, %24, %18, %12, %2
  %47 = phi i1 [ false, %2 ], [ false, %12 ], [ false, %18 ], [ false, %24 ], [ true, %32 ], [ %45, %44 ]
  ret i1 %47
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !85 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !86

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !78
  %8 = load i16, ptr %1, align 2, !tbaa !78
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !87

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !88

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !78
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !89

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !90

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !78
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !91

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !92

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !78
  %28 = load i16, ptr %26, align 2, !tbaa !78
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !93, !llvm.loop !94

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711IC_SelectorneERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 comdat align 2 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !96
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !96
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !100

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !103
  ret ptr %18
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78IC_FieldneERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
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

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #10

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !50 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !104
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

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !50 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718IdentityConstraintneERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %1) local_unnamed_addr #2 align 2 !prof !50 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_718IdentityConstrainteqERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %1) #13
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718IdentityConstraint11setSelectorEPNS_11IC_SelectorE(ptr nocapture noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %1) local_unnamed_addr #7 align 2 !prof !62 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !73

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !63
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  br label %10

10:                                               ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_718IdentityConstraint12createObjectEPNS_13MemoryManagerE(ptr nocapture readnone %0) #1 align 2 !prof !50 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #7 comdat align 2 !prof !50 {
  %2 = load i16, ptr %0, align 8, !tbaa !107
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !50 {
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) #13
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_8IC_FieldEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !50 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_11IC_SelectorE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !50 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_711IC_Selector16classIC_SelectorE) #13
  store ptr %3, ptr %1, align 8, !tbaa !103
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #10

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_8IC_FieldEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #10

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #10

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718IdentityConstraint7storeICERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !50 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !63
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef signext i16 %7(ptr noundef nonnull align 8 dereferenceable(52) %1) #13
  %9 = sext i16 %8 to i32
  %10 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %9) #13
  %11 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %1) #13
  br label %14

12:                                               ; preds = %2
  %13 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef 3) #13
  br label %14

14:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718IdentityConstraint6loadICERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 !prof !50 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  %6 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 4 dereferenceable(4) %2) #13
  %7 = load i32, ptr %2, align 4, !tbaa !110
  switch i32 %7, label %17 [
    i32 0, label %8
    i32 1, label %11
    i32 2, label %14
  ]

8:                                                ; preds = %1
  %9 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_9IC_UniqueE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %10 = load ptr, ptr %3, align 8, !tbaa !103
  br label %17

11:                                               ; preds = %1
  %12 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_6IC_KeyE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %13 = load ptr, ptr %4, align 8, !tbaa !103
  br label %17

14:                                               ; preds = %1
  %15 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_9IC_KeyRefE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %16 = load ptr, ptr %5, align 8, !tbaa !103
  br label %17

17:                                               ; preds = %1, %14, %11, %8
  %18 = phi ptr [ %16, %14 ], [ %13, %11 ], [ %10, %8 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_9IC_UniqueE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !50 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_79IC_Unique14classIC_UniqueE) #13
  store ptr %3, ptr %1, align 8, !tbaa !103
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_6IC_KeyE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !50 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_76IC_Key11classIC_KeyE) #13
  store ptr %3, ptr %1, align 8, !tbaa !103
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_9IC_KeyRefE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !50 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_79IC_KeyRef14classIC_KeyRefE) #13
  store ptr %3, ptr %1, align 8, !tbaa !103
  ret ptr %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!49}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!36 = !{ptr @_ZN11xercesc_2_718IdentityConstraintC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 16}
!37 = !{ptr @_ZN11xercesc_2_718IdentityConstraintC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 16}
!38 = !{ptr @_ZN11xercesc_2_718IdentityConstraintC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEEC2EPS1_MS1_FvvE, i64 16}
!39 = !{ptr @_ZN11xercesc_2_718IdentityConstraintC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 32}
!40 = !{ptr @_ZN11xercesc_2_718IdentityConstraintC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEE7releaseEv, i64 16}
!41 = !{ptr @_ZN11xercesc_2_718IdentityConstraintC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEED2Ev, i64 16}
!42 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!43 = !{ptr @_ZN11xercesc_2_718IdentityConstraintD2Ev, ptr @_ZN11xercesc_2_718IdentityConstraint7cleanUpEv, i64 16}
!44 = !{ptr @_ZN11xercesc_2_718IdentityConstraintD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 16}
!45 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!46 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!47 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_throw, i64 1}
!48 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !54, i64 8}
!52 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !53, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !57, i64 48}
!53 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!"int", !55, i64 0}
!58 = !{!52, !54, i64 16}
!59 = !{!52, !54, i64 24}
!60 = !{!52, !57, i64 48}
!61 = !{!52, !54, i64 32}
!62 = !{!"function_entry_count", i64 16}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !56, i64 0}
!65 = !{!52, !54, i64 40}
!66 = !{!"function_entry_count", i64 1068727}
!67 = !{!"function_entry_count", i64 5836268}
!68 = !{!69, !54, i64 0}
!69 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_18IdentityConstraintEEE", !54, i64 0, !55, i64 8}
!70 = !{!69, !55, i64 8}
!71 = !{!"function_entry_count", i64 558789}
!72 = !{!"branch_weights", i32 158605, i32 400186}
!73 = !{!"branch_weights", i32 17, i32 1}
!74 = !{}
!75 = !{!"function_entry_count", i64 1069174}
!76 = !{!"function_entry_count", i64 2453164456}
!77 = !{!"branch_weights", i32 1, i32 -1841802839}
!78 = !{!79, !79, i64 0}
!79 = !{!"short", !55, i64 0}
!80 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!81 = !{!"branch_weights", i32 408669070, i32 -279908792}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = distinct !{!84, !83}
!85 = !{!"function_entry_count", i64 1231717351}
!86 = !{!"branch_weights", i32 621, i32 -1469098093}
!87 = !{!"branch_weights", i32 408901017, i32 1}
!88 = !{!"branch_weights", i32 267, i32 4}
!89 = !{!"branch_weights", i32 1, i32 4}
!90 = !{!"branch_weights", i32 156, i32 112}
!91 = !{!"branch_weights", i32 1, i32 112}
!92 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!93 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!94 = distinct !{!94, !83}
!95 = !{!"function_entry_count", i64 634412}
!96 = !{!97, !57, i64 12}
!97 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEEE", !98, i64 8, !57, i64 12, !57, i64 16, !54, i64 24, !54, i64 32}
!98 = !{!"bool", !55, i64 0}
!99 = !{!"function_entry_count", i64 475779}
!100 = !{!"branch_weights", i32 475780, i32 1}
!101 = !{!97, !54, i64 32}
!102 = !{!97, !54, i64 24}
!103 = !{!54, !54, i64 0}
!104 = !{!105, !54, i64 40}
!105 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !106, i64 8, !54, i64 16, !57, i64 24, !54, i64 32, !54, i64 40}
!106 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !55, i64 0}
!107 = !{!108, !79, i64 0}
!108 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !79, i64 0, !79, i64 2, !54, i64 8, !54, i64 16, !54, i64 24, !109, i64 32, !109, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !57, i64 96}
!109 = !{!"long", !55, i64 0}
!110 = !{!57, !57, i64 0}
