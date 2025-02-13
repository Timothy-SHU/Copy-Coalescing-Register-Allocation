; ModuleID = 'XMLElementDecl.cpp'
source_filename = "XMLElementDecl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_5QNameE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_17SchemaElementDeclE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_14DTDElementDeclE = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = dso_local local_unnamed_addr constant i32 -2, align 4
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = dso_local local_unnamed_addr constant i32 -1, align 4
@_ZN11xercesc_2_714XMLElementDecl16fgPCDataElemNameE = dso_local local_unnamed_addr constant [8 x i16] [i16 35, i16 80, i16 67, i16 68, i16 65, i16 84, i16 65, i16 0], align 16
@_ZTVN11xercesc_2_714XMLElementDeclE = dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714XMLElementDeclE, ptr @_ZN11xercesc_2_714XMLElementDeclD2Ev, ptr @_ZN11xercesc_2_714XMLElementDeclD0Ev, ptr @_ZNK11xercesc_2_714XMLElementDecl14isSerializableEv, ptr @_ZN11xercesc_2_714XMLElementDecl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_714XMLElementDecl12getProtoTypeEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@.str = private unnamed_addr constant [15 x i8] c"XMLElementDecl\00", align 1
@_ZN11xercesc_2_714XMLElementDecl19classXMLElementDeclE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_714XMLElementDecl12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_714XMLElementDeclE = dso_local constant [32 x i8] c"N11xercesc_2_714XMLElementDeclE\00", align 1
@_ZTIN11xercesc_2_714XMLElementDeclE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714XMLElementDeclE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_75QName10classQNameE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_717SchemaElementDecl22classSchemaElementDeclE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_714DTDElementDecl19classDTDElementDeclE = external global %"class.xercesc_2_7::XProtoType", align 8

@_ZN11xercesc_2_714XMLElementDeclD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714XMLElementDeclD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #1 align 2 !prof !45 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_714XMLElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !46
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #8
  br label %9

9:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_714XMLElementDeclD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 {
  tail call void @llvm.trap() #9
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKtS2_i(ptr nocapture noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !58

8:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1, ptr noundef %2, i32 noundef %3) #10
  br label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %11) #10
  %13 = load ptr, ptr %10, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %13) #10
          to label %14 unwind label %15

14:                                               ; preds = %9
  store ptr %12, ptr %5, align 8, !tbaa !49
  br label %17

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #8
  resume { ptr, i32 } %16

17:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti(ptr nocapture noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !61

7:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %1, i32 noundef %2) #10
  br label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %10) #10
  %12 = load ptr, ptr %9, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_75QNameC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef %1, i32 noundef %2, ptr noundef %12) #10
          to label %13 unwind label %14

13:                                               ; preds = %8
  store ptr %11, ptr %4, align 8, !tbaa !49
  br label %16

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #8
  resume { ptr, i32 } %15

16:                                               ; preds = %13, %7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKNS_5QNameE(ptr nocapture noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_75QName9setValuesERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %1) #10
  br label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %9) #10
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %1) #10
          to label %11 unwind label %12

11:                                               ; preds = %7
  store ptr %10, ptr %3, align 8, !tbaa !49
  br label %14

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #8
  resume { ptr, i32 } %13

14:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName9setValuesERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_714XMLElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !59
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  store i32 -2, ptr %6, align 4, !tbaa !64
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 5
  store i8 0, ptr %7, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !66 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_714XMLElementDecl12createObjectEPNS_13MemoryManagerE(ptr nocapture readnone %0) #6 align 2 !prof !62 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !62 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_714XMLElementDecl12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !62 {
  ret ptr @_ZN11xercesc_2_714XMLElementDecl19classXMLElementDeclE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLElementDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !62 {
  %3 = alloca i32, align 4
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #10
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 5
  br i1 %4, label %7, label %19

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !49
  %9 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %8) #10
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !63
  %12 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %11) #10
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !64
  %15 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %14) #10
  %16 = load i8, ptr %6, align 8, !tbaa !65, !range !68, !noundef !69
  %17 = icmp ne i8 %16, 0
  %18 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %17) #10
  br label %27

19:                                               ; preds = %2
  %20 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %21 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #10
  %22 = load i32, ptr %3, align 4, !tbaa !70
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  store i32 %22, ptr %23, align 8, !tbaa !63
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  %25 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %24) #10
  %26 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %27

27:                                               ; preds = %19, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #1 comdat align 2 !prof !62 {
  %2 = load i16, ptr %0, align 8, !tbaa !71
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !62 {
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) #10
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !62 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_75QName10classQNameE) #10
  store ptr %3, ptr %1, align 8, !tbaa !75
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLElementDecl16storeElementDeclERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !62 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 18
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(33) %1) #10
  %9 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %8) #10
  %10 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %1) #10
  br label %13

11:                                               ; preds = %2
  %12 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef 2) #10
  br label %13

13:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl15loadElementDeclERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #3 align 2 !prof !62 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %5 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 4 dereferenceable(4) %2) #10
  %6 = load i32, ptr %2, align 4, !tbaa !70
  switch i32 %6, label %13 [
    i32 0, label %7
    i32 1, label %10
  ]

7:                                                ; preds = %1
  %8 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_17SchemaElementDeclE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %9 = load ptr, ptr %3, align 8, !tbaa !75
  br label %13

10:                                               ; preds = %1
  %11 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %12 = load ptr, ptr %4, align 8, !tbaa !75
  br label %13

13:                                               ; preds = %1, %10, %7
  %14 = phi ptr [ %12, %10 ], [ %9, %7 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_17SchemaElementDeclE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !62 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_717SchemaElementDecl22classSchemaElementDeclE) #10
  store ptr %3, ptr %1, align 8, !tbaa !75
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !62 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_714DTDElementDecl19classDTDElementDeclE) #10
  store ptr %3, ptr %1, align 8, !tbaa !75
  ret ptr %0
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !76 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #9
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind }

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
!35 = !{ptr @_ZN11xercesc_2_714XMLElementDeclD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 126}
!36 = !{ptr @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKtS2_i, ptr @_ZN11xercesc_2_75QName7setNameEPKtS2_j, i64 1}
!37 = !{ptr @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKtS2_i, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 78}
!38 = !{ptr @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKtS2_i, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 78}
!39 = !{ptr @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti, ptr @_ZN11xercesc_2_75QName7setNameEPKtj, i64 1}
!40 = !{ptr @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 46}
!41 = !{ptr @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti, ptr @_ZN11xercesc_2_75QNameC1EPKtjPNS_13MemoryManagerE, i64 46}
!42 = !{ptr @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 126}
!43 = !{ptr @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 126}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 126}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!50, !52, i64 16}
!50 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !51, i64 0, !52, i64 8, !52, i64 16, !54, i64 24, !55, i64 28, !56, i64 32}
!51 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !48, i64 0}
!54 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !53, i64 0}
!55 = !{!"int", !53, i64 0}
!56 = !{!"bool", !53, i64 0}
!57 = !{!"function_entry_count", i64 79}
!58 = !{!"branch_weights", i32 80, i32 1}
!59 = !{!50, !52, i64 8}
!60 = !{!"function_entry_count", i64 47}
!61 = !{!"branch_weights", i32 48, i32 1}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!50, !54, i64 24}
!64 = !{!50, !55, i64 28}
!65 = !{!50, !56, i64 32}
!66 = !{!"function_entry_count", i64 1068727}
!67 = !{!"function_entry_count", i64 5836268}
!68 = !{i8 0, i8 2}
!69 = !{}
!70 = !{!55, !55, i64 0}
!71 = !{!72, !73, i64 0}
!72 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !73, i64 0, !73, i64 2, !52, i64 8, !52, i64 16, !52, i64 24, !74, i64 32, !74, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !55, i64 96}
!73 = !{!"short", !53, i64 0}
!74 = !{!"long", !53, i64 0}
!75 = !{!52, !52, i64 0}
!76 = !{!"function_entry_count", i64 1069174}
