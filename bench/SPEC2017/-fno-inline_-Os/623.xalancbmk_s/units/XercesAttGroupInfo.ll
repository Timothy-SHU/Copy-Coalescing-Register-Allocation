; ModuleID = 'XercesAttGroupInfo.cpp'
source_filename = "XercesAttGroupInfo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XercesAttGroupInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj = comdat any

$_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

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
@_ZTVN11xercesc_2_718XercesAttGroupInfoE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718XercesAttGroupInfoE, ptr @_ZN11xercesc_2_718XercesAttGroupInfoD2Ev, ptr @_ZN11xercesc_2_718XercesAttGroupInfoD0Ev, ptr @_ZNK11xercesc_2_718XercesAttGroupInfo14isSerializableEv, ptr @_ZN11xercesc_2_718XercesAttGroupInfo9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_718XercesAttGroupInfo12getProtoTypeEv] }, align 8
@_ZTSN11xercesc_2_718XercesAttGroupInfoE = dso_local constant [36 x i8] c"N11xercesc_2_718XercesAttGroupInfoE\00", align 1
@_ZTIN11xercesc_2_718XercesAttGroupInfoE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718XercesAttGroupInfoE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_718XercesAttGroupInfo23classXercesAttGroupInfoE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_718XercesAttGroupInfo12createObjectEPNS_13MemoryManagerE }, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"XercesAttGroupInfo\00", align 1
@_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE = external global %"class.xercesc_2_7::XProtoType", align 8

@_ZN11xercesc_2_718XercesAttGroupInfoC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_718XercesAttGroupInfoC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_718XercesAttGroupInfoC1EjjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_718XercesAttGroupInfoC2EjjPNS_13MemoryManagerE
@_ZN11xercesc_2_718XercesAttGroupInfoD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718XercesAttGroupInfoD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_718XercesAttGroupInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718XercesAttGroupInfo14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !35 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfo9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 1
  br i1 %3, label %5, label %22

5:                                                ; preds = %2
  %6 = load i8, ptr %4, align 8, !tbaa !36, !range !44, !noundef !45
  %7 = icmp ne i8 %6, 0
  %8 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %7) #8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !46
  %11 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %10) #8
  %12 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %13) #8
  %15 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(100) %1) #8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef %18, ptr noundef nonnull align 8 dereferenceable(100) %1) #8
  %19 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %20) #8
  br label %32

22:                                               ; preds = %2
  %23 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #8
  %24 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 2
  %25 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %24) #8
  %26 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 3
  %27 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %26) #8
  %28 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %28, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #8
  %29 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %29, i32 noundef 2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #8
  %30 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 6
  %31 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %30) #8
  br label %32

32:                                               ; preds = %22, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_718XercesAttGroupInfo12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !35 {
  ret ptr @_ZN11xercesc_2_718XercesAttGroupInfo23classXercesAttGroupInfoE
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfoC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesAttGroupInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 4, !tbaa !46
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %1, ptr %7, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !54 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !55 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !56 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #9
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfoC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesAttGroupInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 1
  store i8 0, ptr %5, align 8, !tbaa !36
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 2
  store i32 %1, ptr %6, align 4, !tbaa !46
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 3
  store i32 %2, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store ptr %3, ptr %9, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesAttGroupInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !51
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #7
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !51
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(40) %11) #7
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !51
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(120) %19) #7
  br label %25

25:                                               ; preds = %21, %17
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_718XercesAttGroupInfo17containsAttributeEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !35 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %7, %20
  %11 = phi i32 [ %21, %20 ], [ 0, %7 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !48
  %13 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %11) #8
  %14 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %13) #8
  %15 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #8
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #8
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %18, ptr noundef %1) #8
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %10
  %21 = add nuw i32 %11, 1
  %22 = icmp eq i32 %21, %8
  br i1 %22, label %23, label %10, !llvm.loop !57

23:                                               ; preds = %20, %17, %7, %3
  %24 = phi i1 [ false, %3 ], [ false, %7 ], [ false, %20 ], [ true, %17 ]
  ret i1 %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !59
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !59
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #8
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !75
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !77 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !78

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !79
  %8 = load i16, ptr %1, align 2, !tbaa !79
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !81

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !82

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !79
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !83

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !84

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !79
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !85

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !86

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !79
  %28 = load i16, ptr %26, align 2, !tbaa !79
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !87, !llvm.loop !88

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  ret ptr %3
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #8
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #8
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #8
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_718XercesAttGroupInfo9getAttDefEPKti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !35 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %7, %20
  %11 = phi i32 [ %21, %20 ], [ 0, %7 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !48
  %13 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %11) #8
  %14 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %13) #8
  %15 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #8
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #8
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %18) #8
  br i1 %19, label %23, label %20

20:                                               ; preds = %10, %17
  %21 = add nuw i32 %11, 1
  %22 = icmp eq i32 %21, %8
  br i1 %22, label %23, label %10, !llvm.loop !94

23:                                               ; preds = %17, %20, %7, %3
  %24 = phi ptr [ null, %3 ], [ null, %7 ], [ %13, %17 ], [ null, %20 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718XercesAttGroupInfo12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %0) #8
  tail call void @_ZN11xercesc_2_718XercesAttGroupInfoC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %0) #8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = load i16, ptr %0, align 8, !tbaa !95
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !35 {
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) #8
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !35 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE) #8
  store ptr %3, ptr %1, align 8, !tbaa !63
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

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
!36 = !{!37, !39, i64 8}
!37 = !{!"_ZTSN11xercesc_2_718XercesAttGroupInfoE", !38, i64 0, !39, i64 8, !42, i64 12, !42, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!38 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!39 = !{!"bool", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!"any pointer", !40, i64 0}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = !{!37, !42, i64 12}
!47 = !{!37, !42, i64 16}
!48 = !{!37, !43, i64 24}
!49 = !{!37, !43, i64 32}
!50 = !{!37, !43, i64 40}
!51 = !{!52, !52, i64 0}
!52 = !{!"vtable pointer", !41, i64 0}
!53 = !{!37, !43, i64 48}
!54 = !{!"function_entry_count", i64 1068727}
!55 = !{!"function_entry_count", i64 5836268}
!56 = !{!"function_entry_count", i64 1069174}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!60, !42, i64 12}
!60 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEEE", !39, i64 8, !42, i64 12, !42, i64 16, !43, i64 24, !43, i64 32}
!61 = !{!60, !43, i64 32}
!62 = !{!60, !43, i64 24}
!63 = !{!43, !43, i64 0}
!64 = !{!"function_entry_count", i64 9774}
!65 = !{!66, !43, i64 72}
!66 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !67, i64 0, !42, i64 56, !71, i64 60, !72, i64 64, !73, i64 68, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112}
!67 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !38, i64 0, !68, i64 8, !69, i64 12, !70, i64 16, !39, i64 20, !39, i64 21, !42, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!68 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !40, i64 0}
!69 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !40, i64 0}
!70 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !40, i64 0}
!71 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !40, i64 0}
!72 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !40, i64 0}
!73 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !40, i64 0}
!74 = !{!"function_entry_count", i64 6553673}
!75 = !{!76, !42, i64 20}
!76 = !{!"_ZTSN11xercesc_2_75QNameE", !38, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!77 = !{!"function_entry_count", i64 1231717351}
!78 = !{!"branch_weights", i32 621, i32 -1469098093}
!79 = !{!80, !80, i64 0}
!80 = !{!"short", !40, i64 0}
!81 = !{!"branch_weights", i32 408901017, i32 1}
!82 = !{!"branch_weights", i32 267, i32 4}
!83 = !{!"branch_weights", i32 1, i32 4}
!84 = !{!"branch_weights", i32 156, i32 112}
!85 = !{!"branch_weights", i32 1, i32 112}
!86 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!87 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!88 = distinct !{!88, !58}
!89 = !{!"function_entry_count", i64 2192223}
!90 = !{!76, !43, i64 32}
!91 = !{!92, !43, i64 40}
!92 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !93, i64 8, !43, i64 16, !42, i64 24, !43, i64 32, !43, i64 40}
!93 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !40, i64 0}
!94 = distinct !{!94, !58}
!95 = !{!96, !80, i64 0}
!96 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !80, i64 0, !80, i64 2, !43, i64 8, !43, i64 16, !43, i64 24, !97, i64 32, !97, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !42, i64 96}
!97 = !{!"long", !40, i64 0}
