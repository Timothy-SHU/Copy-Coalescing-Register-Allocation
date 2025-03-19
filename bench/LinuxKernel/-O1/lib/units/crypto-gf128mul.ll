; ModuleID = 'lib/crypto/gf128mul.c'
source_filename = "lib/crypto/gf128mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gf128mul_x8_ble: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gf128mul_x8_ble ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gf128mul_lle: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gf128mul_lle ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gf128mul_bbe: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gf128mul_bbe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gf128mul_init_64k_bbe: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gf128mul_init_64k_bbe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gf128mul_free_64k: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gf128mul_free_64k ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gf128mul_64k_bbe: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gf128mul_64k_bbe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gf128mul_init_4k_lle: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gf128mul_init_4k_lle ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gf128mul_init_4k_bbe: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gf128mul_init_4k_bbe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gf128mul_4k_lle: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gf128mul_4k_lle ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_gf128mul_4k_bbe: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad gf128mul_4k_bbe ; .previous"

%struct.le128 = type { i64, i64 }
%struct.be128 = type { i64, i64 }
%struct.gf128mul_64k = type { [16 x ptr] }
%struct.gf128mul_4k = type { [256 x %struct.be128] }

@gf128mul_table_be = internal constant [256 x i16] [i16 0, i16 135, i16 270, i16 393, i16 540, i16 667, i16 786, i16 917, i16 1080, i16 1215, i16 1334, i16 1457, i16 1572, i16 1699, i16 1834, i16 1965, i16 2160, i16 2295, i16 2430, i16 2553, i16 2668, i16 2795, i16 2914, i16 3045, i16 3144, i16 3279, i16 3398, i16 3521, i16 3668, i16 3795, i16 3930, i16 4061, i16 4320, i16 4199, i16 4590, i16 4457, i16 4860, i16 4731, i16 5106, i16 4981, i16 5336, i16 5215, i16 5590, i16 5457, i16 5828, i16 5699, i16 6090, i16 5965, i16 6288, i16 6167, i16 6558, i16 6425, i16 6796, i16 6667, i16 7042, i16 6917, i16 7336, i16 7215, i16 7590, i16 7457, i16 7860, i16 7731, i16 8122, i16 7997, i16 8640, i16 8519, i16 8398, i16 8265, i16 9180, i16 9051, i16 8914, i16 8789, i16 9720, i16 9599, i16 9462, i16 9329, i16 10212, i16 10083, i16 9962, i16 9837, i16 10672, i16 10551, i16 10430, i16 10297, i16 11180, i16 11051, i16 10914, i16 10789, i16 11656, i16 11535, i16 11398, i16 11265, i16 12180, i16 12051, i16 11930, i16 11805, i16 12576, i16 12711, i16 12334, i16 12457, i16 13116, i16 13243, i16 12850, i16 12981, i16 13592, i16 13727, i16 13334, i16 13457, i16 14084, i16 14211, i16 13834, i16 13965, i16 14672, i16 14807, i16 14430, i16 14553, i16 15180, i16 15307, i16 14914, i16 15045, i16 15720, i16 15855, i16 15462, i16 15585, i16 16244, i16 16371, i16 15994, i16 16125, i16 17280, i16 17159, i16 17038, i16 16905, i16 16796, i16 16667, i16 16530, i16 16405, i16 18360, i16 18239, i16 18102, i16 17969, i16 17828, i16 17699, i16 17578, i16 17453, i16 19440, i16 19319, i16 19198, i16 19065, i16 18924, i16 18795, i16 18658, i16 18533, i16 20424, i16 20303, i16 20166, i16 20033, i16 19924, i16 19795, i16 19674, i16 19549, i16 21344, i16 21479, i16 21102, i16 21225, i16 20860, i16 20987, i16 20594, i16 20725, i16 22360, i16 22495, i16 22102, i16 22225, i16 21828, i16 21955, i16 21578, i16 21709, i16 23312, i16 23447, i16 23070, i16 23193, i16 22796, i16 22923, i16 22530, i16 22661, i16 24360, i16 24495, i16 24102, i16 24225, i16 23860, i16 23987, i16 23610, i16 23741, i16 25152, i16 25287, i16 25422, i16 25545, i16 24668, i16 24795, i16 24914, i16 25045, i16 26232, i16 26367, i16 26486, i16 26609, i16 25700, i16 25827, i16 25962, i16 26093, i16 27184, i16 27319, i16 27454, i16 27577, i16 26668, i16 26795, i16 26914, i16 27045, i16 28168, i16 28303, i16 28422, i16 28545, i16 27668, i16 27795, i16 27930, i16 28061, i16 29344, i16 29223, i16 29614, i16 29481, i16 28860, i16 28731, i16 29106, i16 28981, i16 30360, i16 30239, i16 30614, i16 30481, i16 29828, i16 29699, i16 30090, i16 29965, i16 31440, i16 31319, i16 31710, i16 31577, i16 30924, i16 30795, i16 31170, i16 31045, i16 32488, i16 32367, i16 32742, i16 32609, i16 31988, i16 31859, i16 32250, i16 32125], align 16, !dbg !0
@__UNIQUE_ID___addressable_gf128mul_x8_ble197 = internal global ptr @gf128mul_x8_ble, section ".discard.addressable", align 8, !dbg !49
@__UNIQUE_ID___addressable_gf128mul_lle198 = internal global ptr @gf128mul_lle, section ".discard.addressable", align 8, !dbg !51
@__UNIQUE_ID___addressable_gf128mul_bbe199 = internal global ptr @gf128mul_bbe, section ".discard.addressable", align 8, !dbg !53
@__UNIQUE_ID___addressable_gf128mul_init_64k_bbe200 = internal global ptr @gf128mul_init_64k_bbe, section ".discard.addressable", align 8, !dbg !55
@__UNIQUE_ID___addressable_gf128mul_free_64k201 = internal global ptr @gf128mul_free_64k, section ".discard.addressable", align 8, !dbg !57
@__UNIQUE_ID___addressable_gf128mul_64k_bbe202 = internal global ptr @gf128mul_64k_bbe, section ".discard.addressable", align 8, !dbg !59
@__UNIQUE_ID___addressable_gf128mul_init_4k_lle203 = internal global ptr @gf128mul_init_4k_lle, section ".discard.addressable", align 8, !dbg !61
@__UNIQUE_ID___addressable_gf128mul_init_4k_bbe204 = internal global ptr @gf128mul_init_4k_bbe, section ".discard.addressable", align 8, !dbg !63
@__UNIQUE_ID___addressable_gf128mul_4k_lle205 = internal global ptr @gf128mul_4k_lle, section ".discard.addressable", align 8, !dbg !65
@__UNIQUE_ID___addressable_gf128mul_4k_bbe206 = internal global ptr @gf128mul_4k_bbe, section ".discard.addressable", align 8, !dbg !67
@__UNIQUE_ID_file207 = internal constant [34 x i8] c"gf128mul.file=lib/crypto/gf128mul\00", section ".modinfo", align 1, !dbg !69
@__UNIQUE_ID_license208 = internal constant [21 x i8] c"gf128mul.license=GPL\00", section ".modinfo", align 1, !dbg !76
@__UNIQUE_ID_description209 = internal constant [69 x i8] c"gf128mul.description=Functions for multiplying elements of GF(2^128)\00", section ".modinfo", align 1, !dbg !81
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !86
@gf128mul_table_le = internal constant [256 x i16] [i16 0, i16 450, i16 900, i16 582, i16 1800, i16 1738, i16 1164, i16 1358, i16 3600, i16 4050, i16 3476, i16 3158, i16 2328, i16 2266, i16 2716, i16 2910, i16 7200, i16 7650, i16 8100, i16 7782, i16 6952, i16 6890, i16 6316, i16 6510, i16 4656, i16 5106, i16 4532, i16 4214, i16 5432, i16 5370, i16 5820, i16 6014, i16 14400, i16 14722, i16 15300, i16 14854, i16 16200, i16 16010, i16 15564, i16 15630, i16 13904, i16 14226, i16 13780, i16 13334, i16 12632, i16 12442, i16 13020, i16 13086, i16 9312, i16 9634, i16 10212, i16 9766, i16 9064, i16 8874, i16 8428, i16 8494, i16 10864, i16 11186, i16 10740, i16 10294, i16 11640, i16 11450, i16 12028, i16 12094, i16 28800, i16 28994, i16 29444, i16 29382, i16 30600, i16 30282, i16 29708, i16 30158, i16 32400, i16 32594, i16 32020, i16 31958, i16 31128, i16 30810, i16 31260, i16 31710, i16 27808, i16 28002, i16 28452, i16 28390, i16 27560, i16 27242, i16 26668, i16 27118, i16 25264, i16 25458, i16 24884, i16 24822, i16 26040, i16 25722, i16 26172, i16 26622, i16 18624, i16 18690, i16 19268, i16 19078, i16 20424, i16 19978, i16 19532, i16 19854, i16 18128, i16 18194, i16 17748, i16 17558, i16 16856, i16 16410, i16 16988, i16 17310, i16 21728, i16 21794, i16 22372, i16 22182, i16 21480, i16 21034, i16 20588, i16 20910, i16 23280, i16 23346, i16 22900, i16 22710, i16 24056, i16 23610, i16 24188, i16 24510, i16 -7936, i16 -7998, i16 -7548, i16 -7354, i16 -6648, i16 -6198, i16 -6772, i16 -7090, i16 -4336, i16 -4398, i16 -4972, i16 -4778, i16 -6120, i16 -5670, i16 -5220, i16 -5538, i16 -736, i16 -798, i16 -348, i16 -154, i16 -1496, i16 -1046, i16 -1620, i16 -1938, i16 -3280, i16 -3342, i16 -3916, i16 -3722, i16 -3016, i16 -2566, i16 -2116, i16 -2434, i16 -9920, i16 -10110, i16 -9532, i16 -9466, i16 -8632, i16 -8310, i16 -8756, i16 -9202, i16 -10416, i16 -10606, i16 -11052, i16 -10986, i16 -12200, i16 -11878, i16 -11300, i16 -11746, i16 -15008, i16 -15198, i16 -14620, i16 -14554, i16 -15768, i16 -15446, i16 -15892, i16 -16338, i16 -13456, i16 -13646, i16 -14092, i16 -14026, i16 -13192, i16 -12870, i16 -12292, i16 -12738, i16 -28288, i16 -28606, i16 -28156, i16 -27706, i16 -27000, i16 -26806, i16 -27380, i16 -27442, i16 -24688, i16 -25006, i16 -25580, i16 -25130, i16 -26472, i16 -26278, i16 -25828, i16 -25890, i16 -29280, i16 -29598, i16 -29148, i16 -28698, i16 -30040, i16 -29846, i16 -30420, i16 -30482, i16 -31824, i16 -32142, i16 -32716, i16 -32266, i16 -31560, i16 -31366, i16 -30916, i16 -30978, i16 -22080, i16 -22526, i16 -21948, i16 -21626, i16 -20792, i16 -20726, i16 -21172, i16 -21362, i16 -22576, i16 -23022, i16 -23468, i16 -23146, i16 -24360, i16 -24294, i16 -23716, i16 -23906, i16 -18976, i16 -19422, i16 -18844, i16 -18522, i16 -19736, i16 -19670, i16 -20116, i16 -20306, i16 -17424, i16 -17870, i16 -18316, i16 -17994, i16 -17160, i16 -17094, i16 -16516, i16 -16706], align 16, !dbg !89
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID___addressable_gf128mul_x8_ble197, ptr @__UNIQUE_ID___addressable_gf128mul_lle198, ptr @__UNIQUE_ID___addressable_gf128mul_bbe199, ptr @__UNIQUE_ID___addressable_gf128mul_init_64k_bbe200, ptr @__UNIQUE_ID___addressable_gf128mul_free_64k201, ptr @__UNIQUE_ID___addressable_gf128mul_64k_bbe202, ptr @__UNIQUE_ID___addressable_gf128mul_init_4k_lle203, ptr @__UNIQUE_ID___addressable_gf128mul_init_4k_bbe204, ptr @__UNIQUE_ID___addressable_gf128mul_4k_lle205, ptr @__UNIQUE_ID___addressable_gf128mul_4k_bbe206, ptr @__UNIQUE_ID_file207, ptr @__UNIQUE_ID_license208, ptr @__UNIQUE_ID_description209], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @gf128mul_x8_ble(ptr noundef %r, ptr noundef %x) #0 align 16 !dbg !107 {
entry:
  %r.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %_tt = alloca i64, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !119, metadata !DIExpression()), !dbg !124
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !120, metadata !DIExpression()), !dbg !125
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %a, metadata !121, metadata !DIExpression()), !dbg !127
  %0 = load ptr, ptr %x.addr, align 8, !dbg !128
  %a1 = getelementptr inbounds %struct.le128, ptr %0, i32 0, i32 1, !dbg !128
  %1 = load i64, ptr %a1, align 8, !dbg !128
  store i64 %1, ptr %a, align 8, !dbg !127
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #15, !dbg !129
  call void @llvm.dbg.declare(metadata ptr %b, metadata !122, metadata !DIExpression()), !dbg !130
  %2 = load ptr, ptr %x.addr, align 8, !dbg !131
  %b2 = getelementptr inbounds %struct.le128, ptr %2, i32 0, i32 0, !dbg !131
  %3 = load i64, ptr %b2, align 8, !dbg !131
  store i64 %3, ptr %b, align 8, !dbg !130
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tt) #15, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %_tt, metadata !123, metadata !DIExpression()), !dbg !133
  %4 = load i64, ptr %a, align 8, !dbg !134
  %shr = lshr i64 %4, 56, !dbg !135
  %arrayidx = getelementptr [256 x i16], ptr @gf128mul_table_be, i64 0, i64 %shr, !dbg !136
  %5 = load i16, ptr %arrayidx, align 2, !dbg !136
  %conv = zext i16 %5 to i64, !dbg !136
  store i64 %conv, ptr %_tt, align 8, !dbg !133
  %6 = load i64, ptr %a, align 8, !dbg !137
  %shl = shl i64 %6, 8, !dbg !137
  %7 = load i64, ptr %b, align 8, !dbg !137
  %shr3 = lshr i64 %7, 56, !dbg !137
  %or = or i64 %shl, %shr3, !dbg !137
  %8 = load ptr, ptr %r.addr, align 8, !dbg !138
  %a4 = getelementptr inbounds %struct.le128, ptr %8, i32 0, i32 1, !dbg !139
  store i64 %or, ptr %a4, align 8, !dbg !140
  %9 = load i64, ptr %b, align 8, !dbg !141
  %shl5 = shl i64 %9, 8, !dbg !141
  %10 = load i64, ptr %_tt, align 8, !dbg !141
  %xor = xor i64 %shl5, %10, !dbg !141
  %11 = load ptr, ptr %r.addr, align 8, !dbg !142
  %b6 = getelementptr inbounds %struct.le128, ptr %11, i32 0, i32 0, !dbg !143
  store i64 %xor, ptr %b6, align 8, !dbg !144
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tt) #15, !dbg !145
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #15, !dbg !145
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15, !dbg !145
  ret void, !dbg !145
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @gf128mul_lle(ptr noundef %r, ptr noundef %b) #0 align 16 !dbg !146 {
entry:
  %r.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %array = alloca [19 x %struct.be128], align 16
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %ch = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !152, metadata !DIExpression()), !dbg !165
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !153, metadata !DIExpression()), !dbg !166
  call void @llvm.lifetime.start.p0(i64 304, ptr %array) #15, !dbg !167
  call void @llvm.dbg.declare(metadata ptr %array, metadata !154, metadata !DIExpression()), !dbg !168
  call void @llvm.memset.p0.i64(ptr align 16 %array, i8 0, i64 304, i1 false), !dbg !168
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %p, metadata !158, metadata !DIExpression()), !dbg !170
  %arrayidx = getelementptr [19 x %struct.be128], ptr %array, i64 0, i64 0, !dbg !171
  %0 = ptrtoint ptr %arrayidx to i64, !dbg !171
  %add = add i64 %0, 31, !dbg !171
  %and = and i64 %add, -32, !dbg !171
  %1 = inttoptr i64 %and to ptr, !dbg !171
  store ptr %1, ptr %p, align 8, !dbg !170
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !172
  call void @llvm.dbg.declare(metadata ptr %i, metadata !159, metadata !DIExpression()), !dbg !173
  %2 = load ptr, ptr %p, align 8, !dbg !174
  %arrayidx1 = getelementptr %struct.be128, ptr %2, i64 0, !dbg !174
  %3 = load ptr, ptr %r.addr, align 8, !dbg !175
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1, ptr align 8 %3, i64 16, i1 false), !dbg !176
  store i32 0, ptr %i, align 4, !dbg !177
  br label %for.cond, !dbg !179

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !180
  %cmp = icmp slt i32 %4, 7, !dbg !182
  br i1 %cmp, label %for.body, label %for.end, !dbg !183

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %p, align 8, !dbg !184
  %6 = load i32, ptr %i, align 4, !dbg !185
  %mul = mul i32 2, %6, !dbg !186
  %add2 = add i32 %mul, 2, !dbg !187
  %idxprom = sext i32 %add2 to i64, !dbg !184
  %arrayidx3 = getelementptr %struct.be128, ptr %5, i64 %idxprom, !dbg !184
  %7 = load ptr, ptr %p, align 8, !dbg !188
  %8 = load i32, ptr %i, align 4, !dbg !189
  %mul4 = mul i32 2, %8, !dbg !190
  %idxprom5 = sext i32 %mul4 to i64, !dbg !188
  %arrayidx6 = getelementptr %struct.be128, ptr %7, i64 %idxprom5, !dbg !188
  call void @gf128mul_x_lle(ptr noundef %arrayidx3, ptr noundef %arrayidx6) #16, !dbg !191
  br label %for.inc, !dbg !191

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !192
  %inc = add i32 %9, 1, !dbg !192
  store i32 %inc, ptr %i, align 4, !dbg !192
  br label %for.cond, !dbg !193, !llvm.loop !194

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %r.addr, align 8, !dbg !198
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 16, i1 false), !dbg !199
  store i32 0, ptr %i, align 4, !dbg !200
  br label %for.cond7, !dbg !201

for.cond7:                                        ; preds = %cleanup.cont, %for.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #15, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %ch, metadata !161, metadata !DIExpression()), !dbg !203
  %11 = load ptr, ptr %b.addr, align 8, !dbg !204
  %12 = load i32, ptr %i, align 4, !dbg !205
  %sub = sub i32 15, %12, !dbg !206
  %idxprom8 = sext i32 %sub to i64, !dbg !207
  %arrayidx9 = getelementptr i8, ptr %11, i64 %idxprom8, !dbg !207
  %13 = load i8, ptr %arrayidx9, align 1, !dbg !207
  store i8 %13, ptr %ch, align 1, !dbg !203
  %14 = load ptr, ptr %r.addr, align 8, !dbg !208
  %15 = load ptr, ptr %r.addr, align 8, !dbg !209
  %16 = load ptr, ptr %p, align 8, !dbg !210
  %17 = load i8, ptr %ch, align 1, !dbg !211
  %conv = zext i8 %17 to i32, !dbg !211
  %and10 = and i32 %conv, 128, !dbg !212
  %tobool = icmp ne i32 %and10, 0, !dbg !213
  %lnot = xor i1 %tobool, true, !dbg !213
  %lnot.ext = zext i1 %lnot to i32, !dbg !213
  %add11 = add i32 0, %lnot.ext, !dbg !214
  %idxprom12 = sext i32 %add11 to i64, !dbg !210
  %arrayidx13 = getelementptr %struct.be128, ptr %16, i64 %idxprom12, !dbg !210
  call void @be128_xor(ptr noundef %14, ptr noundef %15, ptr noundef %arrayidx13) #16, !dbg !215
  %18 = load ptr, ptr %r.addr, align 8, !dbg !216
  %19 = load ptr, ptr %r.addr, align 8, !dbg !217
  %20 = load ptr, ptr %p, align 8, !dbg !218
  %21 = load i8, ptr %ch, align 1, !dbg !219
  %conv14 = zext i8 %21 to i32, !dbg !219
  %and15 = and i32 %conv14, 64, !dbg !220
  %tobool16 = icmp ne i32 %and15, 0, !dbg !221
  %lnot17 = xor i1 %tobool16, true, !dbg !221
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !221
  %add19 = add i32 2, %lnot.ext18, !dbg !222
  %idxprom20 = sext i32 %add19 to i64, !dbg !218
  %arrayidx21 = getelementptr %struct.be128, ptr %20, i64 %idxprom20, !dbg !218
  call void @be128_xor(ptr noundef %18, ptr noundef %19, ptr noundef %arrayidx21) #16, !dbg !223
  %22 = load ptr, ptr %r.addr, align 8, !dbg !224
  %23 = load ptr, ptr %r.addr, align 8, !dbg !225
  %24 = load ptr, ptr %p, align 8, !dbg !226
  %25 = load i8, ptr %ch, align 1, !dbg !227
  %conv22 = zext i8 %25 to i32, !dbg !227
  %and23 = and i32 %conv22, 32, !dbg !228
  %tobool24 = icmp ne i32 %and23, 0, !dbg !229
  %lnot25 = xor i1 %tobool24, true, !dbg !229
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !229
  %add27 = add i32 4, %lnot.ext26, !dbg !230
  %idxprom28 = sext i32 %add27 to i64, !dbg !226
  %arrayidx29 = getelementptr %struct.be128, ptr %24, i64 %idxprom28, !dbg !226
  call void @be128_xor(ptr noundef %22, ptr noundef %23, ptr noundef %arrayidx29) #16, !dbg !231
  %26 = load ptr, ptr %r.addr, align 8, !dbg !232
  %27 = load ptr, ptr %r.addr, align 8, !dbg !233
  %28 = load ptr, ptr %p, align 8, !dbg !234
  %29 = load i8, ptr %ch, align 1, !dbg !235
  %conv30 = zext i8 %29 to i32, !dbg !235
  %and31 = and i32 %conv30, 16, !dbg !236
  %tobool32 = icmp ne i32 %and31, 0, !dbg !237
  %lnot33 = xor i1 %tobool32, true, !dbg !237
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !237
  %add35 = add i32 6, %lnot.ext34, !dbg !238
  %idxprom36 = sext i32 %add35 to i64, !dbg !234
  %arrayidx37 = getelementptr %struct.be128, ptr %28, i64 %idxprom36, !dbg !234
  call void @be128_xor(ptr noundef %26, ptr noundef %27, ptr noundef %arrayidx37) #16, !dbg !239
  %30 = load ptr, ptr %r.addr, align 8, !dbg !240
  %31 = load ptr, ptr %r.addr, align 8, !dbg !241
  %32 = load ptr, ptr %p, align 8, !dbg !242
  %33 = load i8, ptr %ch, align 1, !dbg !243
  %conv38 = zext i8 %33 to i32, !dbg !243
  %and39 = and i32 %conv38, 8, !dbg !244
  %tobool40 = icmp ne i32 %and39, 0, !dbg !245
  %lnot41 = xor i1 %tobool40, true, !dbg !245
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !245
  %add43 = add i32 8, %lnot.ext42, !dbg !246
  %idxprom44 = sext i32 %add43 to i64, !dbg !242
  %arrayidx45 = getelementptr %struct.be128, ptr %32, i64 %idxprom44, !dbg !242
  call void @be128_xor(ptr noundef %30, ptr noundef %31, ptr noundef %arrayidx45) #16, !dbg !247
  %34 = load ptr, ptr %r.addr, align 8, !dbg !248
  %35 = load ptr, ptr %r.addr, align 8, !dbg !249
  %36 = load ptr, ptr %p, align 8, !dbg !250
  %37 = load i8, ptr %ch, align 1, !dbg !251
  %conv46 = zext i8 %37 to i32, !dbg !251
  %and47 = and i32 %conv46, 4, !dbg !252
  %tobool48 = icmp ne i32 %and47, 0, !dbg !253
  %lnot49 = xor i1 %tobool48, true, !dbg !253
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !253
  %add51 = add i32 10, %lnot.ext50, !dbg !254
  %idxprom52 = sext i32 %add51 to i64, !dbg !250
  %arrayidx53 = getelementptr %struct.be128, ptr %36, i64 %idxprom52, !dbg !250
  call void @be128_xor(ptr noundef %34, ptr noundef %35, ptr noundef %arrayidx53) #16, !dbg !255
  %38 = load ptr, ptr %r.addr, align 8, !dbg !256
  %39 = load ptr, ptr %r.addr, align 8, !dbg !257
  %40 = load ptr, ptr %p, align 8, !dbg !258
  %41 = load i8, ptr %ch, align 1, !dbg !259
  %conv54 = zext i8 %41 to i32, !dbg !259
  %and55 = and i32 %conv54, 2, !dbg !260
  %tobool56 = icmp ne i32 %and55, 0, !dbg !261
  %lnot57 = xor i1 %tobool56, true, !dbg !261
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !261
  %add59 = add i32 12, %lnot.ext58, !dbg !262
  %idxprom60 = sext i32 %add59 to i64, !dbg !258
  %arrayidx61 = getelementptr %struct.be128, ptr %40, i64 %idxprom60, !dbg !258
  call void @be128_xor(ptr noundef %38, ptr noundef %39, ptr noundef %arrayidx61) #16, !dbg !263
  %42 = load ptr, ptr %r.addr, align 8, !dbg !264
  %43 = load ptr, ptr %r.addr, align 8, !dbg !265
  %44 = load ptr, ptr %p, align 8, !dbg !266
  %45 = load i8, ptr %ch, align 1, !dbg !267
  %conv62 = zext i8 %45 to i32, !dbg !267
  %and63 = and i32 %conv62, 1, !dbg !268
  %tobool64 = icmp ne i32 %and63, 0, !dbg !269
  %lnot65 = xor i1 %tobool64, true, !dbg !269
  %lnot.ext66 = zext i1 %lnot65 to i32, !dbg !269
  %add67 = add i32 14, %lnot.ext66, !dbg !270
  %idxprom68 = sext i32 %add67 to i64, !dbg !266
  %arrayidx69 = getelementptr %struct.be128, ptr %44, i64 %idxprom68, !dbg !266
  call void @be128_xor(ptr noundef %42, ptr noundef %43, ptr noundef %arrayidx69) #16, !dbg !271
  %46 = load i32, ptr %i, align 4, !dbg !272
  %inc70 = add i32 %46, 1, !dbg !272
  store i32 %inc70, ptr %i, align 4, !dbg !272
  %cmp71 = icmp sge i32 %inc70, 16, !dbg !274
  br i1 %cmp71, label %if.then, label %if.end, !dbg !275

if.then:                                          ; preds = %for.cond7
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !276

if.end:                                           ; preds = %for.cond7
  %47 = load ptr, ptr %r.addr, align 8, !dbg !277
  call void @gf128mul_x8_lle_ti(ptr noundef %47) #16, !dbg !278
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !279
  br label %cleanup, !dbg !279

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #15, !dbg !279
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.end73
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond7, !dbg !280, !llvm.loop !281

for.end73:                                        ; preds = %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !284
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !284
  call void @llvm.lifetime.end.p0(i64 304, ptr %array) #15, !dbg !284
  ret void, !dbg !284

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gf128mul_x_lle(ptr noundef %r, ptr noundef %x) #5 align 16 !dbg !285 {
entry:
  %r.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %_tt = alloca i64, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !288, metadata !DIExpression()), !dbg !293
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !289, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %a, metadata !290, metadata !DIExpression()), !dbg !296
  %0 = load ptr, ptr %x.addr, align 8, !dbg !297
  %a1 = getelementptr inbounds %struct.be128, ptr %0, i32 0, i32 0, !dbg !297
  %1 = load i64, ptr %a1, align 8, !dbg !297
  %2 = call i64 @llvm.bswap.i64(i64 %1), !dbg !297
  store i64 %2, ptr %a, align 8, !dbg !296
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #15, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %b, metadata !291, metadata !DIExpression()), !dbg !299
  %3 = load ptr, ptr %x.addr, align 8, !dbg !300
  %b2 = getelementptr inbounds %struct.be128, ptr %3, i32 0, i32 1, !dbg !300
  %4 = load i64, ptr %b2, align 8, !dbg !300
  %5 = call i64 @llvm.bswap.i64(i64 %4), !dbg !300
  store i64 %5, ptr %b, align 8, !dbg !299
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tt) #15, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %_tt, metadata !292, metadata !DIExpression()), !dbg !302
  %6 = load i64, ptr %b, align 8, !dbg !303
  %call = call i64 @gf128mul_mask_from_bit(i64 noundef %6, i32 noundef 0) #16, !dbg !304
  %and = and i64 %call, -2233785415175766016, !dbg !305
  store i64 %and, ptr %_tt, align 8, !dbg !302
  %7 = load i64, ptr %b, align 8, !dbg !306
  %shr = lshr i64 %7, 1, !dbg !306
  %8 = load i64, ptr %a, align 8, !dbg !306
  %shl = shl i64 %8, 63, !dbg !306
  %or = or i64 %shr, %shl, !dbg !306
  %9 = call i64 @llvm.bswap.i64(i64 %or), !dbg !306
  %10 = load ptr, ptr %r.addr, align 8, !dbg !307
  %b3 = getelementptr inbounds %struct.be128, ptr %10, i32 0, i32 1, !dbg !308
  store i64 %9, ptr %b3, align 8, !dbg !309
  %11 = load i64, ptr %a, align 8, !dbg !310
  %shr4 = lshr i64 %11, 1, !dbg !310
  %12 = load i64, ptr %_tt, align 8, !dbg !310
  %xor = xor i64 %shr4, %12, !dbg !310
  %13 = call i64 @llvm.bswap.i64(i64 %xor), !dbg !310
  %14 = load ptr, ptr %r.addr, align 8, !dbg !311
  %a5 = getelementptr inbounds %struct.be128, ptr %14, i32 0, i32 0, !dbg !312
  store i64 %13, ptr %a5, align 8, !dbg !313
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tt) #15, !dbg !314
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #15, !dbg !314
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15, !dbg !314
  ret void, !dbg !314
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @be128_xor(ptr noundef %r, ptr noundef %p, ptr noundef %q) #5 align 16 !dbg !315 {
entry:
  %r.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !319, metadata !DIExpression()), !dbg !322
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !320, metadata !DIExpression()), !dbg !323
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !321, metadata !DIExpression()), !dbg !324
  %0 = load ptr, ptr %p.addr, align 8, !dbg !325
  %a = getelementptr inbounds %struct.be128, ptr %0, i32 0, i32 0, !dbg !326
  %1 = load i64, ptr %a, align 8, !dbg !326
  %2 = load ptr, ptr %q.addr, align 8, !dbg !327
  %a1 = getelementptr inbounds %struct.be128, ptr %2, i32 0, i32 0, !dbg !328
  %3 = load i64, ptr %a1, align 8, !dbg !328
  %xor = xor i64 %1, %3, !dbg !329
  %4 = load ptr, ptr %r.addr, align 8, !dbg !330
  %a2 = getelementptr inbounds %struct.be128, ptr %4, i32 0, i32 0, !dbg !331
  store i64 %xor, ptr %a2, align 8, !dbg !332
  %5 = load ptr, ptr %p.addr, align 8, !dbg !333
  %b = getelementptr inbounds %struct.be128, ptr %5, i32 0, i32 1, !dbg !334
  %6 = load i64, ptr %b, align 8, !dbg !334
  %7 = load ptr, ptr %q.addr, align 8, !dbg !335
  %b3 = getelementptr inbounds %struct.be128, ptr %7, i32 0, i32 1, !dbg !336
  %8 = load i64, ptr %b3, align 8, !dbg !336
  %xor4 = xor i64 %6, %8, !dbg !337
  %9 = load ptr, ptr %r.addr, align 8, !dbg !338
  %b5 = getelementptr inbounds %struct.be128, ptr %9, i32 0, i32 1, !dbg !339
  store i64 %xor4, ptr %b5, align 8, !dbg !340
  ret void, !dbg !341
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gf128mul_x8_lle_ti(ptr noundef %x) #0 align 16 !dbg !342 {
entry:
  %x.addr = alloca ptr, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %_tt = alloca i64, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !346, metadata !DIExpression()), !dbg !350
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15, !dbg !351
  call void @llvm.dbg.declare(metadata ptr %a, metadata !347, metadata !DIExpression()), !dbg !352
  %0 = load ptr, ptr %x.addr, align 8, !dbg !353
  %a1 = getelementptr inbounds %struct.be128, ptr %0, i32 0, i32 0, !dbg !353
  %1 = load i64, ptr %a1, align 8, !dbg !353
  %2 = call i64 @llvm.bswap.i64(i64 %1), !dbg !353
  store i64 %2, ptr %a, align 8, !dbg !352
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #15, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %b, metadata !348, metadata !DIExpression()), !dbg !355
  %3 = load ptr, ptr %x.addr, align 8, !dbg !356
  %b2 = getelementptr inbounds %struct.be128, ptr %3, i32 0, i32 1, !dbg !356
  %4 = load i64, ptr %b2, align 8, !dbg !356
  %5 = call i64 @llvm.bswap.i64(i64 %4), !dbg !356
  store i64 %5, ptr %b, align 8, !dbg !355
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tt) #15, !dbg !357
  call void @llvm.dbg.declare(metadata ptr %_tt, metadata !349, metadata !DIExpression()), !dbg !358
  %6 = load i64, ptr %b, align 8, !dbg !359
  %and = and i64 %6, 255, !dbg !359
  %and3 = and i64 %and, 128, !dbg !359
  %tobool = icmp ne i64 %and3, 0, !dbg !359
  %7 = zext i1 %tobool to i64, !dbg !359
  %cond = select i1 %tobool, i32 57600, i32 0, !dbg !359
  %8 = load i64, ptr %b, align 8, !dbg !359
  %and4 = and i64 %8, 255, !dbg !359
  %and5 = and i64 %and4, 64, !dbg !359
  %tobool6 = icmp ne i64 %and5, 0, !dbg !359
  %9 = zext i1 %tobool6 to i64, !dbg !359
  %cond7 = select i1 %tobool6, i32 28800, i32 0, !dbg !359
  %xor = xor i32 %cond, %cond7, !dbg !359
  %10 = load i64, ptr %b, align 8, !dbg !359
  %and8 = and i64 %10, 255, !dbg !359
  %and9 = and i64 %and8, 32, !dbg !359
  %tobool10 = icmp ne i64 %and9, 0, !dbg !359
  %11 = zext i1 %tobool10 to i64, !dbg !359
  %cond11 = select i1 %tobool10, i32 14400, i32 0, !dbg !359
  %xor12 = xor i32 %xor, %cond11, !dbg !359
  %12 = load i64, ptr %b, align 8, !dbg !359
  %and13 = and i64 %12, 255, !dbg !359
  %and14 = and i64 %and13, 16, !dbg !359
  %tobool15 = icmp ne i64 %and14, 0, !dbg !359
  %13 = zext i1 %tobool15 to i64, !dbg !359
  %cond16 = select i1 %tobool15, i32 7200, i32 0, !dbg !359
  %xor17 = xor i32 %xor12, %cond16, !dbg !359
  %14 = load i64, ptr %b, align 8, !dbg !359
  %and18 = and i64 %14, 255, !dbg !359
  %and19 = and i64 %and18, 8, !dbg !359
  %tobool20 = icmp ne i64 %and19, 0, !dbg !359
  %15 = zext i1 %tobool20 to i64, !dbg !359
  %cond21 = select i1 %tobool20, i32 3600, i32 0, !dbg !359
  %xor22 = xor i32 %xor17, %cond21, !dbg !359
  %16 = load i64, ptr %b, align 8, !dbg !359
  %and23 = and i64 %16, 255, !dbg !359
  %and24 = and i64 %and23, 4, !dbg !359
  %tobool25 = icmp ne i64 %and24, 0, !dbg !359
  %17 = zext i1 %tobool25 to i64, !dbg !359
  %cond26 = select i1 %tobool25, i32 1800, i32 0, !dbg !359
  %xor27 = xor i32 %xor22, %cond26, !dbg !359
  %18 = load i64, ptr %b, align 8, !dbg !359
  %and28 = and i64 %18, 255, !dbg !359
  %and29 = and i64 %and28, 2, !dbg !359
  %tobool30 = icmp ne i64 %and29, 0, !dbg !359
  %19 = zext i1 %tobool30 to i64, !dbg !359
  %cond31 = select i1 %tobool30, i32 900, i32 0, !dbg !359
  %xor32 = xor i32 %xor27, %cond31, !dbg !359
  %20 = load i64, ptr %b, align 8, !dbg !359
  %and33 = and i64 %20, 255, !dbg !359
  %and34 = and i64 %and33, 1, !dbg !359
  %tobool35 = icmp ne i64 %and34, 0, !dbg !359
  %21 = zext i1 %tobool35 to i64, !dbg !359
  %cond36 = select i1 %tobool35, i32 450, i32 0, !dbg !359
  %xor37 = xor i32 %xor32, %cond36, !dbg !359
  %conv = sext i32 %xor37 to i64, !dbg !359
  store i64 %conv, ptr %_tt, align 8, !dbg !358
  %22 = load i64, ptr %b, align 8, !dbg !360
  %shr = lshr i64 %22, 8, !dbg !360
  %23 = load i64, ptr %a, align 8, !dbg !360
  %shl = shl i64 %23, 56, !dbg !360
  %or = or i64 %shr, %shl, !dbg !360
  %24 = call i64 @llvm.bswap.i64(i64 %or), !dbg !360
  %25 = load ptr, ptr %x.addr, align 8, !dbg !361
  %b38 = getelementptr inbounds %struct.be128, ptr %25, i32 0, i32 1, !dbg !362
  store i64 %24, ptr %b38, align 8, !dbg !363
  %26 = load i64, ptr %a, align 8, !dbg !364
  %shr39 = lshr i64 %26, 8, !dbg !364
  %27 = load i64, ptr %_tt, align 8, !dbg !364
  %shl40 = shl i64 %27, 48, !dbg !364
  %xor41 = xor i64 %shr39, %shl40, !dbg !364
  %28 = call i64 @llvm.bswap.i64(i64 %xor41), !dbg !364
  %29 = load ptr, ptr %x.addr, align 8, !dbg !365
  %a42 = getelementptr inbounds %struct.be128, ptr %29, i32 0, i32 0, !dbg !366
  store i64 %28, ptr %a42, align 8, !dbg !367
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tt) #15, !dbg !368
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #15, !dbg !368
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15, !dbg !368
  ret void, !dbg !368
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @gf128mul_bbe(ptr noundef %r, ptr noundef %b) #0 align 16 !dbg !369 {
entry:
  %r.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %p = alloca [8 x %struct.be128], align 16
  %i = alloca i32, align 4
  %ch = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !371, metadata !DIExpression()), !dbg !382
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !372, metadata !DIExpression()), !dbg !383
  call void @llvm.lifetime.start.p0(i64 128, ptr %p) #15, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %p, metadata !373, metadata !DIExpression()), !dbg !385
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !386
  call void @llvm.dbg.declare(metadata ptr %i, metadata !377, metadata !DIExpression()), !dbg !387
  %arrayidx = getelementptr [8 x %struct.be128], ptr %p, i64 0, i64 0, !dbg !388
  %0 = load ptr, ptr %r.addr, align 8, !dbg !389
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx, ptr align 8 %0, i64 16, i1 false), !dbg !390
  store i32 0, ptr %i, align 4, !dbg !391
  br label %for.cond, !dbg !393

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !394
  %cmp = icmp slt i32 %1, 7, !dbg !396
  br i1 %cmp, label %for.body, label %for.end, !dbg !397

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !398
  %add = add i32 %2, 1, !dbg !399
  %idxprom = sext i32 %add to i64, !dbg !400
  %arrayidx1 = getelementptr [8 x %struct.be128], ptr %p, i64 0, i64 %idxprom, !dbg !400
  %3 = load i32, ptr %i, align 4, !dbg !401
  %idxprom2 = sext i32 %3 to i64, !dbg !402
  %arrayidx3 = getelementptr [8 x %struct.be128], ptr %p, i64 0, i64 %idxprom2, !dbg !402
  call void @gf128mul_x_bbe(ptr noundef %arrayidx1, ptr noundef %arrayidx3) #16, !dbg !403
  br label %for.inc, !dbg !403

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !404
  %inc = add i32 %4, 1, !dbg !404
  store i32 %inc, ptr %i, align 4, !dbg !404
  br label %for.cond, !dbg !405, !llvm.loop !406

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %r.addr, align 8, !dbg !408
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 16, i1 false), !dbg !409
  store i32 0, ptr %i, align 4, !dbg !410
  br label %for.cond4, !dbg !411

for.cond4:                                        ; preds = %cleanup.cont, %for.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #15, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %ch, metadata !378, metadata !DIExpression()), !dbg !413
  %6 = load ptr, ptr %b.addr, align 8, !dbg !414
  %7 = load i32, ptr %i, align 4, !dbg !415
  %idxprom5 = sext i32 %7 to i64, !dbg !416
  %arrayidx6 = getelementptr i8, ptr %6, i64 %idxprom5, !dbg !416
  %8 = load i8, ptr %arrayidx6, align 1, !dbg !416
  store i8 %8, ptr %ch, align 1, !dbg !413
  %9 = load i8, ptr %ch, align 1, !dbg !417
  %conv = zext i8 %9 to i32, !dbg !417
  %and = and i32 %conv, 128, !dbg !419
  %tobool = icmp ne i32 %and, 0, !dbg !419
  br i1 %tobool, label %if.then, label %if.end, !dbg !420

if.then:                                          ; preds = %for.cond4
  %10 = load ptr, ptr %r.addr, align 8, !dbg !421
  %11 = load ptr, ptr %r.addr, align 8, !dbg !422
  %arrayidx7 = getelementptr [8 x %struct.be128], ptr %p, i64 0, i64 7, !dbg !423
  call void @be128_xor(ptr noundef %10, ptr noundef %11, ptr noundef %arrayidx7) #16, !dbg !424
  br label %if.end, !dbg !424

if.end:                                           ; preds = %if.then, %for.cond4
  %12 = load i8, ptr %ch, align 1, !dbg !425
  %conv8 = zext i8 %12 to i32, !dbg !425
  %and9 = and i32 %conv8, 64, !dbg !427
  %tobool10 = icmp ne i32 %and9, 0, !dbg !427
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !428

if.then11:                                        ; preds = %if.end
  %13 = load ptr, ptr %r.addr, align 8, !dbg !429
  %14 = load ptr, ptr %r.addr, align 8, !dbg !430
  %arrayidx12 = getelementptr [8 x %struct.be128], ptr %p, i64 0, i64 6, !dbg !431
  call void @be128_xor(ptr noundef %13, ptr noundef %14, ptr noundef %arrayidx12) #16, !dbg !432
  br label %if.end13, !dbg !432

if.end13:                                         ; preds = %if.then11, %if.end
  %15 = load i8, ptr %ch, align 1, !dbg !433
  %conv14 = zext i8 %15 to i32, !dbg !433
  %and15 = and i32 %conv14, 32, !dbg !435
  %tobool16 = icmp ne i32 %and15, 0, !dbg !435
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !436

if.then17:                                        ; preds = %if.end13
  %16 = load ptr, ptr %r.addr, align 8, !dbg !437
  %17 = load ptr, ptr %r.addr, align 8, !dbg !438
  %arrayidx18 = getelementptr [8 x %struct.be128], ptr %p, i64 0, i64 5, !dbg !439
  call void @be128_xor(ptr noundef %16, ptr noundef %17, ptr noundef %arrayidx18) #16, !dbg !440
  br label %if.end19, !dbg !440

if.end19:                                         ; preds = %if.then17, %if.end13
  %18 = load i8, ptr %ch, align 1, !dbg !441
  %conv20 = zext i8 %18 to i32, !dbg !441
  %and21 = and i32 %conv20, 16, !dbg !443
  %tobool22 = icmp ne i32 %and21, 0, !dbg !443
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !444

if.then23:                                        ; preds = %if.end19
  %19 = load ptr, ptr %r.addr, align 8, !dbg !445
  %20 = load ptr, ptr %r.addr, align 8, !dbg !446
  %arrayidx24 = getelementptr [8 x %struct.be128], ptr %p, i64 0, i64 4, !dbg !447
  call void @be128_xor(ptr noundef %19, ptr noundef %20, ptr noundef %arrayidx24) #16, !dbg !448
  br label %if.end25, !dbg !448

if.end25:                                         ; preds = %if.then23, %if.end19
  %21 = load i8, ptr %ch, align 1, !dbg !449
  %conv26 = zext i8 %21 to i32, !dbg !449
  %and27 = and i32 %conv26, 8, !dbg !451
  %tobool28 = icmp ne i32 %and27, 0, !dbg !451
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !452

if.then29:                                        ; preds = %if.end25
  %22 = load ptr, ptr %r.addr, align 8, !dbg !453
  %23 = load ptr, ptr %r.addr, align 8, !dbg !454
  %arrayidx30 = getelementptr [8 x %struct.be128], ptr %p, i64 0, i64 3, !dbg !455
  call void @be128_xor(ptr noundef %22, ptr noundef %23, ptr noundef %arrayidx30) #16, !dbg !456
  br label %if.end31, !dbg !456

if.end31:                                         ; preds = %if.then29, %if.end25
  %24 = load i8, ptr %ch, align 1, !dbg !457
  %conv32 = zext i8 %24 to i32, !dbg !457
  %and33 = and i32 %conv32, 4, !dbg !459
  %tobool34 = icmp ne i32 %and33, 0, !dbg !459
  br i1 %tobool34, label %if.then35, label %if.end37, !dbg !460

if.then35:                                        ; preds = %if.end31
  %25 = load ptr, ptr %r.addr, align 8, !dbg !461
  %26 = load ptr, ptr %r.addr, align 8, !dbg !462
  %arrayidx36 = getelementptr [8 x %struct.be128], ptr %p, i64 0, i64 2, !dbg !463
  call void @be128_xor(ptr noundef %25, ptr noundef %26, ptr noundef %arrayidx36) #16, !dbg !464
  br label %if.end37, !dbg !464

if.end37:                                         ; preds = %if.then35, %if.end31
  %27 = load i8, ptr %ch, align 1, !dbg !465
  %conv38 = zext i8 %27 to i32, !dbg !465
  %and39 = and i32 %conv38, 2, !dbg !467
  %tobool40 = icmp ne i32 %and39, 0, !dbg !467
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !468

if.then41:                                        ; preds = %if.end37
  %28 = load ptr, ptr %r.addr, align 8, !dbg !469
  %29 = load ptr, ptr %r.addr, align 8, !dbg !470
  %arrayidx42 = getelementptr [8 x %struct.be128], ptr %p, i64 0, i64 1, !dbg !471
  call void @be128_xor(ptr noundef %28, ptr noundef %29, ptr noundef %arrayidx42) #16, !dbg !472
  br label %if.end43, !dbg !472

if.end43:                                         ; preds = %if.then41, %if.end37
  %30 = load i8, ptr %ch, align 1, !dbg !473
  %conv44 = zext i8 %30 to i32, !dbg !473
  %and45 = and i32 %conv44, 1, !dbg !475
  %tobool46 = icmp ne i32 %and45, 0, !dbg !475
  br i1 %tobool46, label %if.then47, label %if.end49, !dbg !476

if.then47:                                        ; preds = %if.end43
  %31 = load ptr, ptr %r.addr, align 8, !dbg !477
  %32 = load ptr, ptr %r.addr, align 8, !dbg !478
  %arrayidx48 = getelementptr [8 x %struct.be128], ptr %p, i64 0, i64 0, !dbg !479
  call void @be128_xor(ptr noundef %31, ptr noundef %32, ptr noundef %arrayidx48) #16, !dbg !480
  br label %if.end49, !dbg !480

if.end49:                                         ; preds = %if.then47, %if.end43
  %33 = load i32, ptr %i, align 4, !dbg !481
  %inc50 = add i32 %33, 1, !dbg !481
  store i32 %inc50, ptr %i, align 4, !dbg !481
  %cmp51 = icmp sge i32 %inc50, 16, !dbg !483
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !484

if.then53:                                        ; preds = %if.end49
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !485

if.end54:                                         ; preds = %if.end49
  %34 = load ptr, ptr %r.addr, align 8, !dbg !486
  call void @gf128mul_x8_bbe(ptr noundef %34) #16, !dbg !487
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !488
  br label %cleanup, !dbg !488

cleanup:                                          ; preds = %if.end54, %if.then53
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #15, !dbg !488
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.end55
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond4, !dbg !489, !llvm.loop !490

for.end55:                                        ; preds = %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !493
  call void @llvm.lifetime.end.p0(i64 128, ptr %p) #15, !dbg !493
  ret void, !dbg !493

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gf128mul_x_bbe(ptr noundef %r, ptr noundef %x) #5 align 16 !dbg !494 {
entry:
  %r.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %_tt = alloca i64, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !496, metadata !DIExpression()), !dbg !501
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !497, metadata !DIExpression()), !dbg !502
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15, !dbg !503
  call void @llvm.dbg.declare(metadata ptr %a, metadata !498, metadata !DIExpression()), !dbg !504
  %0 = load ptr, ptr %x.addr, align 8, !dbg !505
  %a1 = getelementptr inbounds %struct.be128, ptr %0, i32 0, i32 0, !dbg !505
  %1 = load i64, ptr %a1, align 8, !dbg !505
  %2 = call i64 @llvm.bswap.i64(i64 %1), !dbg !505
  store i64 %2, ptr %a, align 8, !dbg !504
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #15, !dbg !506
  call void @llvm.dbg.declare(metadata ptr %b, metadata !499, metadata !DIExpression()), !dbg !507
  %3 = load ptr, ptr %x.addr, align 8, !dbg !508
  %b2 = getelementptr inbounds %struct.be128, ptr %3, i32 0, i32 1, !dbg !508
  %4 = load i64, ptr %b2, align 8, !dbg !508
  %5 = call i64 @llvm.bswap.i64(i64 %4), !dbg !508
  store i64 %5, ptr %b, align 8, !dbg !507
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tt) #15, !dbg !509
  call void @llvm.dbg.declare(metadata ptr %_tt, metadata !500, metadata !DIExpression()), !dbg !510
  %6 = load i64, ptr %a, align 8, !dbg !511
  %call = call i64 @gf128mul_mask_from_bit(i64 noundef %6, i32 noundef 63) #16, !dbg !512
  %and = and i64 %call, 135, !dbg !513
  store i64 %and, ptr %_tt, align 8, !dbg !510
  %7 = load i64, ptr %a, align 8, !dbg !514
  %shl = shl i64 %7, 1, !dbg !514
  %8 = load i64, ptr %b, align 8, !dbg !514
  %shr = lshr i64 %8, 63, !dbg !514
  %or = or i64 %shl, %shr, !dbg !514
  %9 = call i64 @llvm.bswap.i64(i64 %or), !dbg !514
  %10 = load ptr, ptr %r.addr, align 8, !dbg !515
  %a3 = getelementptr inbounds %struct.be128, ptr %10, i32 0, i32 0, !dbg !516
  store i64 %9, ptr %a3, align 8, !dbg !517
  %11 = load i64, ptr %b, align 8, !dbg !518
  %shl4 = shl i64 %11, 1, !dbg !518
  %12 = load i64, ptr %_tt, align 8, !dbg !518
  %xor = xor i64 %shl4, %12, !dbg !518
  %13 = call i64 @llvm.bswap.i64(i64 %xor), !dbg !518
  %14 = load ptr, ptr %r.addr, align 8, !dbg !519
  %b5 = getelementptr inbounds %struct.be128, ptr %14, i32 0, i32 1, !dbg !520
  store i64 %13, ptr %b5, align 8, !dbg !521
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tt) #15, !dbg !522
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #15, !dbg !522
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15, !dbg !522
  ret void, !dbg !522
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gf128mul_x8_bbe(ptr noundef %x) #0 align 16 !dbg !523 {
entry:
  %x.addr = alloca ptr, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %_tt = alloca i64, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !525, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %a, metadata !526, metadata !DIExpression()), !dbg !531
  %0 = load ptr, ptr %x.addr, align 8, !dbg !532
  %a1 = getelementptr inbounds %struct.be128, ptr %0, i32 0, i32 0, !dbg !532
  %1 = load i64, ptr %a1, align 8, !dbg !532
  %2 = call i64 @llvm.bswap.i64(i64 %1), !dbg !532
  store i64 %2, ptr %a, align 8, !dbg !531
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #15, !dbg !533
  call void @llvm.dbg.declare(metadata ptr %b, metadata !527, metadata !DIExpression()), !dbg !534
  %3 = load ptr, ptr %x.addr, align 8, !dbg !535
  %b2 = getelementptr inbounds %struct.be128, ptr %3, i32 0, i32 1, !dbg !535
  %4 = load i64, ptr %b2, align 8, !dbg !535
  %5 = call i64 @llvm.bswap.i64(i64 %4), !dbg !535
  store i64 %5, ptr %b, align 8, !dbg !534
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tt) #15, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %_tt, metadata !528, metadata !DIExpression()), !dbg !537
  %6 = load i64, ptr %a, align 8, !dbg !538
  %shr = lshr i64 %6, 56, !dbg !539
  %arrayidx = getelementptr [256 x i16], ptr @gf128mul_table_be, i64 0, i64 %shr, !dbg !540
  %7 = load i16, ptr %arrayidx, align 2, !dbg !540
  %conv = zext i16 %7 to i64, !dbg !540
  store i64 %conv, ptr %_tt, align 8, !dbg !537
  %8 = load i64, ptr %a, align 8, !dbg !541
  %shl = shl i64 %8, 8, !dbg !541
  %9 = load i64, ptr %b, align 8, !dbg !541
  %shr3 = lshr i64 %9, 56, !dbg !541
  %or = or i64 %shl, %shr3, !dbg !541
  %10 = call i64 @llvm.bswap.i64(i64 %or), !dbg !541
  %11 = load ptr, ptr %x.addr, align 8, !dbg !542
  %a4 = getelementptr inbounds %struct.be128, ptr %11, i32 0, i32 0, !dbg !543
  store i64 %10, ptr %a4, align 8, !dbg !544
  %12 = load i64, ptr %b, align 8, !dbg !545
  %shl5 = shl i64 %12, 8, !dbg !545
  %13 = load i64, ptr %_tt, align 8, !dbg !545
  %xor = xor i64 %shl5, %13, !dbg !545
  %14 = call i64 @llvm.bswap.i64(i64 %xor), !dbg !545
  %15 = load ptr, ptr %x.addr, align 8, !dbg !546
  %b6 = getelementptr inbounds %struct.be128, ptr %15, i32 0, i32 1, !dbg !547
  store i64 %14, ptr %b6, align 8, !dbg !548
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tt) #15, !dbg !549
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #15, !dbg !549
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15, !dbg !549
  ret void, !dbg !549
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @gf128mul_init_64k_bbe(ptr noundef %g) #0 align 16 !dbg !550 {
entry:
  %g.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %g.addr, metadata !566, metadata !DIExpression()), !dbg !572
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #15, !dbg !573
  call void @llvm.dbg.declare(metadata ptr %t, metadata !567, metadata !DIExpression()), !dbg !574
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !575
  call void @llvm.dbg.declare(metadata ptr %i, metadata !568, metadata !DIExpression()), !dbg !576
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !575
  call void @llvm.dbg.declare(metadata ptr %j, metadata !569, metadata !DIExpression()), !dbg !577
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #15, !dbg !575
  call void @llvm.dbg.declare(metadata ptr %k, metadata !570, metadata !DIExpression()), !dbg !578
  %call = call noalias ptr @kzalloc(i64 noundef 128, i32 noundef 3264) #17, !dbg !579
  store ptr %call, ptr %t, align 8, !dbg !580
  %0 = load ptr, ptr %t, align 8, !dbg !581
  %tobool = icmp ne ptr %0, null, !dbg !581
  br i1 %tobool, label %if.end, label %if.then, !dbg !583

if.then:                                          ; preds = %entry
  br label %out, !dbg !584

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !585
  br label %for.cond, !dbg !587

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !588
  %cmp = icmp slt i32 %1, 16, !dbg !590
  br i1 %cmp, label %for.body, label %for.end, !dbg !591

for.body:                                         ; preds = %for.cond
  %call1 = call noalias ptr @kzalloc(i64 noundef 4096, i32 noundef 3264) #17, !dbg !592
  %2 = load ptr, ptr %t, align 8, !dbg !594
  %t2 = getelementptr inbounds %struct.gf128mul_64k, ptr %2, i32 0, i32 0, !dbg !595
  %3 = load i32, ptr %i, align 4, !dbg !596
  %idxprom = sext i32 %3 to i64, !dbg !594
  %arrayidx = getelementptr [16 x ptr], ptr %t2, i64 0, i64 %idxprom, !dbg !594
  store ptr %call1, ptr %arrayidx, align 8, !dbg !597
  %4 = load ptr, ptr %t, align 8, !dbg !598
  %t3 = getelementptr inbounds %struct.gf128mul_64k, ptr %4, i32 0, i32 0, !dbg !600
  %5 = load i32, ptr %i, align 4, !dbg !601
  %idxprom4 = sext i32 %5 to i64, !dbg !598
  %arrayidx5 = getelementptr [16 x ptr], ptr %t3, i64 0, i64 %idxprom4, !dbg !598
  %6 = load ptr, ptr %arrayidx5, align 8, !dbg !598
  %tobool6 = icmp ne ptr %6, null, !dbg !598
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !602

if.then7:                                         ; preds = %for.body
  %7 = load ptr, ptr %t, align 8, !dbg !603
  call void @gf128mul_free_64k(ptr noundef %7) #16, !dbg !605
  store ptr null, ptr %t, align 8, !dbg !606
  br label %out, !dbg !607

if.end8:                                          ; preds = %for.body
  br label %for.inc, !dbg !608

for.inc:                                          ; preds = %if.end8
  %8 = load i32, ptr %i, align 4, !dbg !609
  %inc = add i32 %8, 1, !dbg !609
  store i32 %inc, ptr %i, align 4, !dbg !609
  br label %for.cond, !dbg !610, !llvm.loop !611

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %t, align 8, !dbg !613
  %t9 = getelementptr inbounds %struct.gf128mul_64k, ptr %9, i32 0, i32 0, !dbg !614
  %arrayidx10 = getelementptr [16 x ptr], ptr %t9, i64 0, i64 0, !dbg !613
  %10 = load ptr, ptr %arrayidx10, align 8, !dbg !613
  %t11 = getelementptr inbounds %struct.gf128mul_4k, ptr %10, i32 0, i32 0, !dbg !615
  %arrayidx12 = getelementptr [256 x %struct.be128], ptr %t11, i64 0, i64 1, !dbg !613
  %11 = load ptr, ptr %g.addr, align 8, !dbg !616
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx12, ptr align 8 %11, i64 16, i1 false), !dbg !617
  store i32 1, ptr %j, align 4, !dbg !618
  br label %for.cond13, !dbg !620

for.cond13:                                       ; preds = %for.inc26, %for.end
  %12 = load i32, ptr %j, align 4, !dbg !621
  %cmp14 = icmp sle i32 %12, 64, !dbg !623
  br i1 %cmp14, label %for.body15, label %for.end27, !dbg !624

for.body15:                                       ; preds = %for.cond13
  %13 = load ptr, ptr %t, align 8, !dbg !625
  %t16 = getelementptr inbounds %struct.gf128mul_64k, ptr %13, i32 0, i32 0, !dbg !626
  %arrayidx17 = getelementptr [16 x ptr], ptr %t16, i64 0, i64 0, !dbg !625
  %14 = load ptr, ptr %arrayidx17, align 8, !dbg !625
  %t18 = getelementptr inbounds %struct.gf128mul_4k, ptr %14, i32 0, i32 0, !dbg !627
  %15 = load i32, ptr %j, align 4, !dbg !628
  %16 = load i32, ptr %j, align 4, !dbg !629
  %add = add i32 %15, %16, !dbg !630
  %idxprom19 = sext i32 %add to i64, !dbg !625
  %arrayidx20 = getelementptr [256 x %struct.be128], ptr %t18, i64 0, i64 %idxprom19, !dbg !625
  %17 = load ptr, ptr %t, align 8, !dbg !631
  %t21 = getelementptr inbounds %struct.gf128mul_64k, ptr %17, i32 0, i32 0, !dbg !632
  %arrayidx22 = getelementptr [16 x ptr], ptr %t21, i64 0, i64 0, !dbg !631
  %18 = load ptr, ptr %arrayidx22, align 8, !dbg !631
  %t23 = getelementptr inbounds %struct.gf128mul_4k, ptr %18, i32 0, i32 0, !dbg !633
  %19 = load i32, ptr %j, align 4, !dbg !634
  %idxprom24 = sext i32 %19 to i64, !dbg !631
  %arrayidx25 = getelementptr [256 x %struct.be128], ptr %t23, i64 0, i64 %idxprom24, !dbg !631
  call void @gf128mul_x_bbe(ptr noundef %arrayidx20, ptr noundef %arrayidx25) #16, !dbg !635
  br label %for.inc26, !dbg !635

for.inc26:                                        ; preds = %for.body15
  %20 = load i32, ptr %j, align 4, !dbg !636
  %shl = shl i32 %20, 1, !dbg !636
  store i32 %shl, ptr %j, align 4, !dbg !636
  br label %for.cond13, !dbg !637, !llvm.loop !638

for.end27:                                        ; preds = %for.cond13
  store i32 0, ptr %i, align 4, !dbg !640
  br label %for.cond28, !dbg !642

for.cond28:                                       ; preds = %for.end86, %for.end27
  store i32 2, ptr %j, align 4, !dbg !643
  br label %for.cond29, !dbg !647

for.cond29:                                       ; preds = %for.inc57, %for.cond28
  %21 = load i32, ptr %j, align 4, !dbg !648
  %cmp30 = icmp slt i32 %21, 256, !dbg !650
  br i1 %cmp30, label %for.body31, label %for.end59, !dbg !651

for.body31:                                       ; preds = %for.cond29
  store i32 1, ptr %k, align 4, !dbg !652
  br label %for.cond32, !dbg !654

for.cond32:                                       ; preds = %for.inc54, %for.body31
  %22 = load i32, ptr %k, align 4, !dbg !655
  %23 = load i32, ptr %j, align 4, !dbg !657
  %cmp33 = icmp slt i32 %22, %23, !dbg !658
  br i1 %cmp33, label %for.body34, label %for.end56, !dbg !659

for.body34:                                       ; preds = %for.cond32
  %24 = load ptr, ptr %t, align 8, !dbg !660
  %t35 = getelementptr inbounds %struct.gf128mul_64k, ptr %24, i32 0, i32 0, !dbg !661
  %25 = load i32, ptr %i, align 4, !dbg !662
  %idxprom36 = sext i32 %25 to i64, !dbg !660
  %arrayidx37 = getelementptr [16 x ptr], ptr %t35, i64 0, i64 %idxprom36, !dbg !660
  %26 = load ptr, ptr %arrayidx37, align 8, !dbg !660
  %t38 = getelementptr inbounds %struct.gf128mul_4k, ptr %26, i32 0, i32 0, !dbg !663
  %27 = load i32, ptr %j, align 4, !dbg !664
  %28 = load i32, ptr %k, align 4, !dbg !665
  %add39 = add i32 %27, %28, !dbg !666
  %idxprom40 = sext i32 %add39 to i64, !dbg !660
  %arrayidx41 = getelementptr [256 x %struct.be128], ptr %t38, i64 0, i64 %idxprom40, !dbg !660
  %29 = load ptr, ptr %t, align 8, !dbg !667
  %t42 = getelementptr inbounds %struct.gf128mul_64k, ptr %29, i32 0, i32 0, !dbg !668
  %30 = load i32, ptr %i, align 4, !dbg !669
  %idxprom43 = sext i32 %30 to i64, !dbg !667
  %arrayidx44 = getelementptr [16 x ptr], ptr %t42, i64 0, i64 %idxprom43, !dbg !667
  %31 = load ptr, ptr %arrayidx44, align 8, !dbg !667
  %t45 = getelementptr inbounds %struct.gf128mul_4k, ptr %31, i32 0, i32 0, !dbg !670
  %32 = load i32, ptr %j, align 4, !dbg !671
  %idxprom46 = sext i32 %32 to i64, !dbg !667
  %arrayidx47 = getelementptr [256 x %struct.be128], ptr %t45, i64 0, i64 %idxprom46, !dbg !667
  %33 = load ptr, ptr %t, align 8, !dbg !672
  %t48 = getelementptr inbounds %struct.gf128mul_64k, ptr %33, i32 0, i32 0, !dbg !673
  %34 = load i32, ptr %i, align 4, !dbg !674
  %idxprom49 = sext i32 %34 to i64, !dbg !672
  %arrayidx50 = getelementptr [16 x ptr], ptr %t48, i64 0, i64 %idxprom49, !dbg !672
  %35 = load ptr, ptr %arrayidx50, align 8, !dbg !672
  %t51 = getelementptr inbounds %struct.gf128mul_4k, ptr %35, i32 0, i32 0, !dbg !675
  %36 = load i32, ptr %k, align 4, !dbg !676
  %idxprom52 = sext i32 %36 to i64, !dbg !672
  %arrayidx53 = getelementptr [256 x %struct.be128], ptr %t51, i64 0, i64 %idxprom52, !dbg !672
  call void @be128_xor(ptr noundef %arrayidx41, ptr noundef %arrayidx47, ptr noundef %arrayidx53) #16, !dbg !677
  br label %for.inc54, !dbg !677

for.inc54:                                        ; preds = %for.body34
  %37 = load i32, ptr %k, align 4, !dbg !678
  %inc55 = add i32 %37, 1, !dbg !678
  store i32 %inc55, ptr %k, align 4, !dbg !678
  br label %for.cond32, !dbg !679, !llvm.loop !680

for.end56:                                        ; preds = %for.cond32
  br label %for.inc57, !dbg !681

for.inc57:                                        ; preds = %for.end56
  %38 = load i32, ptr %j, align 4, !dbg !682
  %39 = load i32, ptr %j, align 4, !dbg !683
  %add58 = add i32 %39, %38, !dbg !683
  store i32 %add58, ptr %j, align 4, !dbg !683
  br label %for.cond29, !dbg !684, !llvm.loop !685

for.end59:                                        ; preds = %for.cond29
  %40 = load i32, ptr %i, align 4, !dbg !687
  %inc60 = add i32 %40, 1, !dbg !687
  store i32 %inc60, ptr %i, align 4, !dbg !687
  %cmp61 = icmp sge i32 %inc60, 16, !dbg !689
  br i1 %cmp61, label %if.then62, label %if.end63, !dbg !690

if.then62:                                        ; preds = %for.end59
  br label %for.end87, !dbg !691

if.end63:                                         ; preds = %for.end59
  store i32 128, ptr %j, align 4, !dbg !692
  br label %for.cond64, !dbg !694

for.cond64:                                       ; preds = %for.inc85, %if.end63
  %41 = load i32, ptr %j, align 4, !dbg !695
  %cmp65 = icmp sgt i32 %41, 0, !dbg !697
  br i1 %cmp65, label %for.body66, label %for.end86, !dbg !698

for.body66:                                       ; preds = %for.cond64
  %42 = load ptr, ptr %t, align 8, !dbg !699
  %t67 = getelementptr inbounds %struct.gf128mul_64k, ptr %42, i32 0, i32 0, !dbg !701
  %43 = load i32, ptr %i, align 4, !dbg !702
  %idxprom68 = sext i32 %43 to i64, !dbg !699
  %arrayidx69 = getelementptr [16 x ptr], ptr %t67, i64 0, i64 %idxprom68, !dbg !699
  %44 = load ptr, ptr %arrayidx69, align 8, !dbg !699
  %t70 = getelementptr inbounds %struct.gf128mul_4k, ptr %44, i32 0, i32 0, !dbg !703
  %45 = load i32, ptr %j, align 4, !dbg !704
  %idxprom71 = sext i32 %45 to i64, !dbg !699
  %arrayidx72 = getelementptr [256 x %struct.be128], ptr %t70, i64 0, i64 %idxprom71, !dbg !699
  %46 = load ptr, ptr %t, align 8, !dbg !705
  %t73 = getelementptr inbounds %struct.gf128mul_64k, ptr %46, i32 0, i32 0, !dbg !706
  %47 = load i32, ptr %i, align 4, !dbg !707
  %sub = sub i32 %47, 1, !dbg !708
  %idxprom74 = sext i32 %sub to i64, !dbg !705
  %arrayidx75 = getelementptr [16 x ptr], ptr %t73, i64 0, i64 %idxprom74, !dbg !705
  %48 = load ptr, ptr %arrayidx75, align 8, !dbg !705
  %t76 = getelementptr inbounds %struct.gf128mul_4k, ptr %48, i32 0, i32 0, !dbg !709
  %49 = load i32, ptr %j, align 4, !dbg !710
  %idxprom77 = sext i32 %49 to i64, !dbg !705
  %arrayidx78 = getelementptr [256 x %struct.be128], ptr %t76, i64 0, i64 %idxprom77, !dbg !705
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx72, ptr align 8 %arrayidx78, i64 16, i1 false), !dbg !705
  %50 = load ptr, ptr %t, align 8, !dbg !711
  %t79 = getelementptr inbounds %struct.gf128mul_64k, ptr %50, i32 0, i32 0, !dbg !712
  %51 = load i32, ptr %i, align 4, !dbg !713
  %idxprom80 = sext i32 %51 to i64, !dbg !711
  %arrayidx81 = getelementptr [16 x ptr], ptr %t79, i64 0, i64 %idxprom80, !dbg !711
  %52 = load ptr, ptr %arrayidx81, align 8, !dbg !711
  %t82 = getelementptr inbounds %struct.gf128mul_4k, ptr %52, i32 0, i32 0, !dbg !714
  %53 = load i32, ptr %j, align 4, !dbg !715
  %idxprom83 = sext i32 %53 to i64, !dbg !711
  %arrayidx84 = getelementptr [256 x %struct.be128], ptr %t82, i64 0, i64 %idxprom83, !dbg !711
  call void @gf128mul_x8_bbe(ptr noundef %arrayidx84) #16, !dbg !716
  br label %for.inc85, !dbg !717

for.inc85:                                        ; preds = %for.body66
  %54 = load i32, ptr %j, align 4, !dbg !718
  %shr = ashr i32 %54, 1, !dbg !718
  store i32 %shr, ptr %j, align 4, !dbg !718
  br label %for.cond64, !dbg !719, !llvm.loop !720

for.end86:                                        ; preds = %for.cond64
  br label %for.cond28, !dbg !722, !llvm.loop !723

for.end87:                                        ; preds = %if.then62
  br label %out, !dbg !725

out:                                              ; preds = %for.end87, %if.then7, %if.then
  call void @llvm.dbg.label(metadata !571), !dbg !726
  %55 = load ptr, ptr %t, align 8, !dbg !727
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #15, !dbg !728
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !728
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !728
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #15, !dbg !728
  ret ptr %55, !dbg !729
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !730 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !738, metadata !DIExpression()), !dbg !740
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !739, metadata !DIExpression()), !dbg !741
  %0 = load i64, ptr %size.addr, align 8, !dbg !742
  %1 = load i32, ptr %flags.addr, align 4, !dbg !743
  %or = or i32 %1, 256, !dbg !744
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !745
  ret ptr %call, !dbg !746
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @gf128mul_free_64k(ptr noundef %t) #0 align 16 !dbg !747 {
entry:
  %t.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !751, metadata !DIExpression()), !dbg !753
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !754
  call void @llvm.dbg.declare(metadata ptr %i, metadata !752, metadata !DIExpression()), !dbg !755
  store i32 0, ptr %i, align 4, !dbg !756
  br label %for.cond, !dbg !758

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !759
  %cmp = icmp slt i32 %0, 16, !dbg !761
  br i1 %cmp, label %for.body, label %for.end, !dbg !762

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %t.addr, align 8, !dbg !763
  %t1 = getelementptr inbounds %struct.gf128mul_64k, ptr %1, i32 0, i32 0, !dbg !764
  %2 = load i32, ptr %i, align 4, !dbg !765
  %idxprom = sext i32 %2 to i64, !dbg !763
  %arrayidx = getelementptr [16 x ptr], ptr %t1, i64 0, i64 %idxprom, !dbg !763
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !763
  call void @kfree_sensitive(ptr noundef %3) #16, !dbg !766
  br label %for.inc, !dbg !766

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !767
  %inc = add i32 %4, 1, !dbg !767
  store i32 %inc, ptr %i, align 4, !dbg !767
  br label %for.cond, !dbg !768, !llvm.loop !769

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %t.addr, align 8, !dbg !771
  call void @kfree_sensitive(ptr noundef %5) #16, !dbg !772
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !773
  ret void, !dbg !773
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !774 dso_local void @kfree_sensitive(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @gf128mul_64k_bbe(ptr noundef %a, ptr noundef %t) #0 align 16 !dbg !779 {
entry:
  %a.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %r = alloca [1 x %struct.be128], align 16
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !785, metadata !DIExpression()), !dbg !793
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !786, metadata !DIExpression()), !dbg !794
  call void @llvm.lifetime.start.p0(i64 8, ptr %ap) #15, !dbg !795
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !787, metadata !DIExpression()), !dbg !796
  %0 = load ptr, ptr %a.addr, align 8, !dbg !797
  store ptr %0, ptr %ap, align 8, !dbg !796
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %r, metadata !788, metadata !DIExpression()), !dbg !799
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !800
  call void @llvm.dbg.declare(metadata ptr %i, metadata !792, metadata !DIExpression()), !dbg !801
  %arraydecay = getelementptr inbounds [1 x %struct.be128], ptr %r, i64 0, i64 0, !dbg !802
  %1 = load ptr, ptr %t.addr, align 8, !dbg !803
  %t1 = getelementptr inbounds %struct.gf128mul_64k, ptr %1, i32 0, i32 0, !dbg !804
  %arrayidx = getelementptr [16 x ptr], ptr %t1, i64 0, i64 0, !dbg !803
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !803
  %t2 = getelementptr inbounds %struct.gf128mul_4k, ptr %2, i32 0, i32 0, !dbg !805
  %3 = load ptr, ptr %ap, align 8, !dbg !806
  %arrayidx3 = getelementptr i8, ptr %3, i64 15, !dbg !806
  %4 = load i8, ptr %arrayidx3, align 1, !dbg !806
  %idxprom = zext i8 %4 to i64, !dbg !803
  %arrayidx4 = getelementptr [256 x %struct.be128], ptr %t2, i64 0, i64 %idxprom, !dbg !803
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 8 %arrayidx4, i64 16, i1 false), !dbg !803
  store i32 1, ptr %i, align 4, !dbg !807
  br label %for.cond, !dbg !809

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !dbg !810
  %cmp = icmp slt i32 %5, 16, !dbg !812
  br i1 %cmp, label %for.body, label %for.end, !dbg !813

for.body:                                         ; preds = %for.cond
  %arraydecay5 = getelementptr inbounds [1 x %struct.be128], ptr %r, i64 0, i64 0, !dbg !814
  %arraydecay6 = getelementptr inbounds [1 x %struct.be128], ptr %r, i64 0, i64 0, !dbg !815
  %6 = load ptr, ptr %t.addr, align 8, !dbg !816
  %t7 = getelementptr inbounds %struct.gf128mul_64k, ptr %6, i32 0, i32 0, !dbg !817
  %7 = load i32, ptr %i, align 4, !dbg !818
  %idxprom8 = sext i32 %7 to i64, !dbg !816
  %arrayidx9 = getelementptr [16 x ptr], ptr %t7, i64 0, i64 %idxprom8, !dbg !816
  %8 = load ptr, ptr %arrayidx9, align 8, !dbg !816
  %t10 = getelementptr inbounds %struct.gf128mul_4k, ptr %8, i32 0, i32 0, !dbg !819
  %9 = load ptr, ptr %ap, align 8, !dbg !820
  %10 = load i32, ptr %i, align 4, !dbg !821
  %sub = sub i32 15, %10, !dbg !822
  %idxprom11 = sext i32 %sub to i64, !dbg !820
  %arrayidx12 = getelementptr i8, ptr %9, i64 %idxprom11, !dbg !820
  %11 = load i8, ptr %arrayidx12, align 1, !dbg !820
  %idxprom13 = zext i8 %11 to i64, !dbg !816
  %arrayidx14 = getelementptr [256 x %struct.be128], ptr %t10, i64 0, i64 %idxprom13, !dbg !816
  call void @be128_xor(ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %arrayidx14) #16, !dbg !823
  br label %for.inc, !dbg !823

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !824
  %inc = add i32 %12, 1, !dbg !824
  store i32 %inc, ptr %i, align 4, !dbg !824
  br label %for.cond, !dbg !825, !llvm.loop !826

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %a.addr, align 8, !dbg !828
  %arraydecay15 = getelementptr inbounds [1 x %struct.be128], ptr %r, i64 0, i64 0, !dbg !829
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 16 %arraydecay15, i64 16, i1 false), !dbg !829
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !830
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15, !dbg !830
  call void @llvm.lifetime.end.p0(i64 8, ptr %ap) #15, !dbg !830
  ret void, !dbg !830
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @gf128mul_init_4k_lle(ptr noundef %g) #0 align 16 !dbg !831 {
entry:
  %g.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %g.addr, metadata !835, metadata !DIExpression()), !dbg !840
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #15, !dbg !841
  call void @llvm.dbg.declare(metadata ptr %t, metadata !836, metadata !DIExpression()), !dbg !842
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %j, metadata !837, metadata !DIExpression()), !dbg !844
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #15, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %k, metadata !838, metadata !DIExpression()), !dbg !845
  %call = call noalias ptr @kzalloc(i64 noundef 4096, i32 noundef 3264) #17, !dbg !846
  store ptr %call, ptr %t, align 8, !dbg !847
  %0 = load ptr, ptr %t, align 8, !dbg !848
  %tobool = icmp ne ptr %0, null, !dbg !848
  br i1 %tobool, label %if.end, label %if.then, !dbg !850

if.then:                                          ; preds = %entry
  br label %out, !dbg !851

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %t, align 8, !dbg !852
  %t1 = getelementptr inbounds %struct.gf128mul_4k, ptr %1, i32 0, i32 0, !dbg !853
  %arrayidx = getelementptr [256 x %struct.be128], ptr %t1, i64 0, i64 128, !dbg !852
  %2 = load ptr, ptr %g.addr, align 8, !dbg !854
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %2, i64 16, i1 false), !dbg !855
  store i32 64, ptr %j, align 4, !dbg !856
  br label %for.cond, !dbg !858

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %j, align 4, !dbg !859
  %cmp = icmp sgt i32 %3, 0, !dbg !861
  br i1 %cmp, label %for.body, label %for.end, !dbg !862

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %t, align 8, !dbg !863
  %t2 = getelementptr inbounds %struct.gf128mul_4k, ptr %4, i32 0, i32 0, !dbg !864
  %5 = load i32, ptr %j, align 4, !dbg !865
  %idxprom = sext i32 %5 to i64, !dbg !863
  %arrayidx3 = getelementptr [256 x %struct.be128], ptr %t2, i64 0, i64 %idxprom, !dbg !863
  %6 = load ptr, ptr %t, align 8, !dbg !866
  %t4 = getelementptr inbounds %struct.gf128mul_4k, ptr %6, i32 0, i32 0, !dbg !867
  %7 = load i32, ptr %j, align 4, !dbg !868
  %8 = load i32, ptr %j, align 4, !dbg !869
  %add = add i32 %7, %8, !dbg !870
  %idxprom5 = sext i32 %add to i64, !dbg !866
  %arrayidx6 = getelementptr [256 x %struct.be128], ptr %t4, i64 0, i64 %idxprom5, !dbg !866
  call void @gf128mul_x_lle(ptr noundef %arrayidx3, ptr noundef %arrayidx6) #16, !dbg !871
  br label %for.inc, !dbg !871

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %j, align 4, !dbg !872
  %shr = ashr i32 %9, 1, !dbg !872
  store i32 %shr, ptr %j, align 4, !dbg !872
  br label %for.cond, !dbg !873, !llvm.loop !874

for.end:                                          ; preds = %for.cond
  store i32 2, ptr %j, align 4, !dbg !876
  br label %for.cond7, !dbg !878

for.cond7:                                        ; preds = %for.inc25, %for.end
  %10 = load i32, ptr %j, align 4, !dbg !879
  %cmp8 = icmp slt i32 %10, 256, !dbg !881
  br i1 %cmp8, label %for.body9, label %for.end27, !dbg !882

for.body9:                                        ; preds = %for.cond7
  store i32 1, ptr %k, align 4, !dbg !883
  br label %for.cond10, !dbg !885

for.cond10:                                       ; preds = %for.inc23, %for.body9
  %11 = load i32, ptr %k, align 4, !dbg !886
  %12 = load i32, ptr %j, align 4, !dbg !888
  %cmp11 = icmp slt i32 %11, %12, !dbg !889
  br i1 %cmp11, label %for.body12, label %for.end24, !dbg !890

for.body12:                                       ; preds = %for.cond10
  %13 = load ptr, ptr %t, align 8, !dbg !891
  %t13 = getelementptr inbounds %struct.gf128mul_4k, ptr %13, i32 0, i32 0, !dbg !892
  %14 = load i32, ptr %j, align 4, !dbg !893
  %15 = load i32, ptr %k, align 4, !dbg !894
  %add14 = add i32 %14, %15, !dbg !895
  %idxprom15 = sext i32 %add14 to i64, !dbg !891
  %arrayidx16 = getelementptr [256 x %struct.be128], ptr %t13, i64 0, i64 %idxprom15, !dbg !891
  %16 = load ptr, ptr %t, align 8, !dbg !896
  %t17 = getelementptr inbounds %struct.gf128mul_4k, ptr %16, i32 0, i32 0, !dbg !897
  %17 = load i32, ptr %j, align 4, !dbg !898
  %idxprom18 = sext i32 %17 to i64, !dbg !896
  %arrayidx19 = getelementptr [256 x %struct.be128], ptr %t17, i64 0, i64 %idxprom18, !dbg !896
  %18 = load ptr, ptr %t, align 8, !dbg !899
  %t20 = getelementptr inbounds %struct.gf128mul_4k, ptr %18, i32 0, i32 0, !dbg !900
  %19 = load i32, ptr %k, align 4, !dbg !901
  %idxprom21 = sext i32 %19 to i64, !dbg !899
  %arrayidx22 = getelementptr [256 x %struct.be128], ptr %t20, i64 0, i64 %idxprom21, !dbg !899
  call void @be128_xor(ptr noundef %arrayidx16, ptr noundef %arrayidx19, ptr noundef %arrayidx22) #16, !dbg !902
  br label %for.inc23, !dbg !902

for.inc23:                                        ; preds = %for.body12
  %20 = load i32, ptr %k, align 4, !dbg !903
  %inc = add i32 %20, 1, !dbg !903
  store i32 %inc, ptr %k, align 4, !dbg !903
  br label %for.cond10, !dbg !904, !llvm.loop !905

for.end24:                                        ; preds = %for.cond10
  br label %for.inc25, !dbg !906

for.inc25:                                        ; preds = %for.end24
  %21 = load i32, ptr %j, align 4, !dbg !907
  %22 = load i32, ptr %j, align 4, !dbg !908
  %add26 = add i32 %22, %21, !dbg !908
  store i32 %add26, ptr %j, align 4, !dbg !908
  br label %for.cond7, !dbg !909, !llvm.loop !910

for.end27:                                        ; preds = %for.cond7
  br label %out, !dbg !911

out:                                              ; preds = %for.end27, %if.then
  call void @llvm.dbg.label(metadata !839), !dbg !912
  %23 = load ptr, ptr %t, align 8, !dbg !913
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #15, !dbg !914
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !914
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #15, !dbg !914
  ret ptr %23, !dbg !915
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @gf128mul_init_4k_bbe(ptr noundef %g) #0 align 16 !dbg !916 {
entry:
  %g.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %g.addr, metadata !918, metadata !DIExpression()), !dbg !923
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #15, !dbg !924
  call void @llvm.dbg.declare(metadata ptr %t, metadata !919, metadata !DIExpression()), !dbg !925
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !926
  call void @llvm.dbg.declare(metadata ptr %j, metadata !920, metadata !DIExpression()), !dbg !927
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #15, !dbg !926
  call void @llvm.dbg.declare(metadata ptr %k, metadata !921, metadata !DIExpression()), !dbg !928
  %call = call noalias ptr @kzalloc(i64 noundef 4096, i32 noundef 3264) #17, !dbg !929
  store ptr %call, ptr %t, align 8, !dbg !930
  %0 = load ptr, ptr %t, align 8, !dbg !931
  %tobool = icmp ne ptr %0, null, !dbg !931
  br i1 %tobool, label %if.end, label %if.then, !dbg !933

if.then:                                          ; preds = %entry
  br label %out, !dbg !934

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %t, align 8, !dbg !935
  %t1 = getelementptr inbounds %struct.gf128mul_4k, ptr %1, i32 0, i32 0, !dbg !936
  %arrayidx = getelementptr [256 x %struct.be128], ptr %t1, i64 0, i64 1, !dbg !935
  %2 = load ptr, ptr %g.addr, align 8, !dbg !937
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %2, i64 16, i1 false), !dbg !938
  store i32 1, ptr %j, align 4, !dbg !939
  br label %for.cond, !dbg !941

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %j, align 4, !dbg !942
  %cmp = icmp sle i32 %3, 64, !dbg !944
  br i1 %cmp, label %for.body, label %for.end, !dbg !945

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %t, align 8, !dbg !946
  %t2 = getelementptr inbounds %struct.gf128mul_4k, ptr %4, i32 0, i32 0, !dbg !947
  %5 = load i32, ptr %j, align 4, !dbg !948
  %6 = load i32, ptr %j, align 4, !dbg !949
  %add = add i32 %5, %6, !dbg !950
  %idxprom = sext i32 %add to i64, !dbg !946
  %arrayidx3 = getelementptr [256 x %struct.be128], ptr %t2, i64 0, i64 %idxprom, !dbg !946
  %7 = load ptr, ptr %t, align 8, !dbg !951
  %t4 = getelementptr inbounds %struct.gf128mul_4k, ptr %7, i32 0, i32 0, !dbg !952
  %8 = load i32, ptr %j, align 4, !dbg !953
  %idxprom5 = sext i32 %8 to i64, !dbg !951
  %arrayidx6 = getelementptr [256 x %struct.be128], ptr %t4, i64 0, i64 %idxprom5, !dbg !951
  call void @gf128mul_x_bbe(ptr noundef %arrayidx3, ptr noundef %arrayidx6) #16, !dbg !954
  br label %for.inc, !dbg !954

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %j, align 4, !dbg !955
  %shl = shl i32 %9, 1, !dbg !955
  store i32 %shl, ptr %j, align 4, !dbg !955
  br label %for.cond, !dbg !956, !llvm.loop !957

for.end:                                          ; preds = %for.cond
  store i32 2, ptr %j, align 4, !dbg !959
  br label %for.cond7, !dbg !961

for.cond7:                                        ; preds = %for.inc25, %for.end
  %10 = load i32, ptr %j, align 4, !dbg !962
  %cmp8 = icmp slt i32 %10, 256, !dbg !964
  br i1 %cmp8, label %for.body9, label %for.end27, !dbg !965

for.body9:                                        ; preds = %for.cond7
  store i32 1, ptr %k, align 4, !dbg !966
  br label %for.cond10, !dbg !968

for.cond10:                                       ; preds = %for.inc23, %for.body9
  %11 = load i32, ptr %k, align 4, !dbg !969
  %12 = load i32, ptr %j, align 4, !dbg !971
  %cmp11 = icmp slt i32 %11, %12, !dbg !972
  br i1 %cmp11, label %for.body12, label %for.end24, !dbg !973

for.body12:                                       ; preds = %for.cond10
  %13 = load ptr, ptr %t, align 8, !dbg !974
  %t13 = getelementptr inbounds %struct.gf128mul_4k, ptr %13, i32 0, i32 0, !dbg !975
  %14 = load i32, ptr %j, align 4, !dbg !976
  %15 = load i32, ptr %k, align 4, !dbg !977
  %add14 = add i32 %14, %15, !dbg !978
  %idxprom15 = sext i32 %add14 to i64, !dbg !974
  %arrayidx16 = getelementptr [256 x %struct.be128], ptr %t13, i64 0, i64 %idxprom15, !dbg !974
  %16 = load ptr, ptr %t, align 8, !dbg !979
  %t17 = getelementptr inbounds %struct.gf128mul_4k, ptr %16, i32 0, i32 0, !dbg !980
  %17 = load i32, ptr %j, align 4, !dbg !981
  %idxprom18 = sext i32 %17 to i64, !dbg !979
  %arrayidx19 = getelementptr [256 x %struct.be128], ptr %t17, i64 0, i64 %idxprom18, !dbg !979
  %18 = load ptr, ptr %t, align 8, !dbg !982
  %t20 = getelementptr inbounds %struct.gf128mul_4k, ptr %18, i32 0, i32 0, !dbg !983
  %19 = load i32, ptr %k, align 4, !dbg !984
  %idxprom21 = sext i32 %19 to i64, !dbg !982
  %arrayidx22 = getelementptr [256 x %struct.be128], ptr %t20, i64 0, i64 %idxprom21, !dbg !982
  call void @be128_xor(ptr noundef %arrayidx16, ptr noundef %arrayidx19, ptr noundef %arrayidx22) #16, !dbg !985
  br label %for.inc23, !dbg !985

for.inc23:                                        ; preds = %for.body12
  %20 = load i32, ptr %k, align 4, !dbg !986
  %inc = add i32 %20, 1, !dbg !986
  store i32 %inc, ptr %k, align 4, !dbg !986
  br label %for.cond10, !dbg !987, !llvm.loop !988

for.end24:                                        ; preds = %for.cond10
  br label %for.inc25, !dbg !989

for.inc25:                                        ; preds = %for.end24
  %21 = load i32, ptr %j, align 4, !dbg !990
  %22 = load i32, ptr %j, align 4, !dbg !991
  %add26 = add i32 %22, %21, !dbg !991
  store i32 %add26, ptr %j, align 4, !dbg !991
  br label %for.cond7, !dbg !992, !llvm.loop !993

for.end27:                                        ; preds = %for.cond7
  br label %out, !dbg !994

out:                                              ; preds = %for.end27, %if.then
  call void @llvm.dbg.label(metadata !922), !dbg !995
  %23 = load ptr, ptr %t, align 8, !dbg !996
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #15, !dbg !997
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !997
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #15, !dbg !997
  ret ptr %23, !dbg !998
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @gf128mul_4k_lle(ptr noundef %a, ptr noundef %t) #0 align 16 !dbg !999 {
entry:
  %a.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %r = alloca [1 x %struct.be128], align 16
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1005, metadata !DIExpression()), !dbg !1010
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1006, metadata !DIExpression()), !dbg !1011
  call void @llvm.lifetime.start.p0(i64 8, ptr %ap) #15, !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !1007, metadata !DIExpression()), !dbg !1013
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1014
  store ptr %0, ptr %ap, align 8, !dbg !1013
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15, !dbg !1015
  call void @llvm.dbg.declare(metadata ptr %r, metadata !1008, metadata !DIExpression()), !dbg !1016
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1009, metadata !DIExpression()), !dbg !1018
  store i32 15, ptr %i, align 4, !dbg !1018
  %arraydecay = getelementptr inbounds [1 x %struct.be128], ptr %r, i64 0, i64 0, !dbg !1019
  %1 = load ptr, ptr %t.addr, align 8, !dbg !1020
  %t1 = getelementptr inbounds %struct.gf128mul_4k, ptr %1, i32 0, i32 0, !dbg !1021
  %2 = load ptr, ptr %ap, align 8, !dbg !1022
  %arrayidx = getelementptr i8, ptr %2, i64 15, !dbg !1022
  %3 = load i8, ptr %arrayidx, align 1, !dbg !1022
  %idxprom = zext i8 %3 to i64, !dbg !1020
  %arrayidx2 = getelementptr [256 x %struct.be128], ptr %t1, i64 0, i64 %idxprom, !dbg !1020
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 8 %arrayidx2, i64 16, i1 false), !dbg !1020
  br label %while.cond, !dbg !1023

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i32, ptr %i, align 4, !dbg !1024
  %dec = add i32 %4, -1, !dbg !1024
  store i32 %dec, ptr %i, align 4, !dbg !1024
  %tobool = icmp ne i32 %4, 0, !dbg !1023
  br i1 %tobool, label %while.body, label %while.end, !dbg !1023

while.body:                                       ; preds = %while.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.be128], ptr %r, i64 0, i64 0, !dbg !1025
  call void @gf128mul_x8_lle(ptr noundef %arraydecay3) #16, !dbg !1027
  %arraydecay4 = getelementptr inbounds [1 x %struct.be128], ptr %r, i64 0, i64 0, !dbg !1028
  %arraydecay5 = getelementptr inbounds [1 x %struct.be128], ptr %r, i64 0, i64 0, !dbg !1029
  %5 = load ptr, ptr %t.addr, align 8, !dbg !1030
  %t6 = getelementptr inbounds %struct.gf128mul_4k, ptr %5, i32 0, i32 0, !dbg !1031
  %6 = load ptr, ptr %ap, align 8, !dbg !1032
  %7 = load i32, ptr %i, align 4, !dbg !1033
  %idxprom7 = sext i32 %7 to i64, !dbg !1032
  %arrayidx8 = getelementptr i8, ptr %6, i64 %idxprom7, !dbg !1032
  %8 = load i8, ptr %arrayidx8, align 1, !dbg !1032
  %idxprom9 = zext i8 %8 to i64, !dbg !1030
  %arrayidx10 = getelementptr [256 x %struct.be128], ptr %t6, i64 0, i64 %idxprom9, !dbg !1030
  call void @be128_xor(ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %arrayidx10) #16, !dbg !1034
  br label %while.cond, !dbg !1023, !llvm.loop !1035

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %a.addr, align 8, !dbg !1037
  %arraydecay11 = getelementptr inbounds [1 x %struct.be128], ptr %r, i64 0, i64 0, !dbg !1038
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 16 %arraydecay11, i64 16, i1 false), !dbg !1038
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !1039
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15, !dbg !1039
  call void @llvm.lifetime.end.p0(i64 8, ptr %ap) #15, !dbg !1039
  ret void, !dbg !1039
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gf128mul_x8_lle(ptr noundef %x) #0 align 16 !dbg !1040 {
entry:
  %x.addr = alloca ptr, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %_tt = alloca i64, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1042, metadata !DIExpression()), !dbg !1046
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15, !dbg !1047
  call void @llvm.dbg.declare(metadata ptr %a, metadata !1043, metadata !DIExpression()), !dbg !1048
  %0 = load ptr, ptr %x.addr, align 8, !dbg !1049
  %a1 = getelementptr inbounds %struct.be128, ptr %0, i32 0, i32 0, !dbg !1049
  %1 = load i64, ptr %a1, align 8, !dbg !1049
  %2 = call i64 @llvm.bswap.i64(i64 %1), !dbg !1049
  store i64 %2, ptr %a, align 8, !dbg !1048
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #15, !dbg !1050
  call void @llvm.dbg.declare(metadata ptr %b, metadata !1044, metadata !DIExpression()), !dbg !1051
  %3 = load ptr, ptr %x.addr, align 8, !dbg !1052
  %b2 = getelementptr inbounds %struct.be128, ptr %3, i32 0, i32 1, !dbg !1052
  %4 = load i64, ptr %b2, align 8, !dbg !1052
  %5 = call i64 @llvm.bswap.i64(i64 %4), !dbg !1052
  store i64 %5, ptr %b, align 8, !dbg !1051
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tt) #15, !dbg !1053
  call void @llvm.dbg.declare(metadata ptr %_tt, metadata !1045, metadata !DIExpression()), !dbg !1054
  %6 = load i64, ptr %b, align 8, !dbg !1055
  %and = and i64 %6, 255, !dbg !1056
  %arrayidx = getelementptr [256 x i16], ptr @gf128mul_table_le, i64 0, i64 %and, !dbg !1057
  %7 = load i16, ptr %arrayidx, align 2, !dbg !1057
  %conv = zext i16 %7 to i64, !dbg !1057
  store i64 %conv, ptr %_tt, align 8, !dbg !1054
  %8 = load i64, ptr %b, align 8, !dbg !1058
  %shr = lshr i64 %8, 8, !dbg !1058
  %9 = load i64, ptr %a, align 8, !dbg !1058
  %shl = shl i64 %9, 56, !dbg !1058
  %or = or i64 %shr, %shl, !dbg !1058
  %10 = call i64 @llvm.bswap.i64(i64 %or), !dbg !1058
  %11 = load ptr, ptr %x.addr, align 8, !dbg !1059
  %b3 = getelementptr inbounds %struct.be128, ptr %11, i32 0, i32 1, !dbg !1060
  store i64 %10, ptr %b3, align 8, !dbg !1061
  %12 = load i64, ptr %a, align 8, !dbg !1062
  %shr4 = lshr i64 %12, 8, !dbg !1062
  %13 = load i64, ptr %_tt, align 8, !dbg !1062
  %shl5 = shl i64 %13, 48, !dbg !1062
  %xor = xor i64 %shr4, %shl5, !dbg !1062
  %14 = call i64 @llvm.bswap.i64(i64 %xor), !dbg !1062
  %15 = load ptr, ptr %x.addr, align 8, !dbg !1063
  %a6 = getelementptr inbounds %struct.be128, ptr %15, i32 0, i32 0, !dbg !1064
  store i64 %14, ptr %a6, align 8, !dbg !1065
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tt) #15, !dbg !1066
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #15, !dbg !1066
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15, !dbg !1066
  ret void, !dbg !1066
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @gf128mul_4k_bbe(ptr noundef %a, ptr noundef %t) #0 align 16 !dbg !1067 {
entry:
  %a.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %r = alloca [1 x %struct.be128], align 16
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1069, metadata !DIExpression()), !dbg !1074
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1070, metadata !DIExpression()), !dbg !1075
  call void @llvm.lifetime.start.p0(i64 8, ptr %ap) #15, !dbg !1076
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !1071, metadata !DIExpression()), !dbg !1077
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1078
  store ptr %0, ptr %ap, align 8, !dbg !1077
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15, !dbg !1079
  call void @llvm.dbg.declare(metadata ptr %r, metadata !1072, metadata !DIExpression()), !dbg !1080
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1073, metadata !DIExpression()), !dbg !1082
  store i32 0, ptr %i, align 4, !dbg !1082
  %arraydecay = getelementptr inbounds [1 x %struct.be128], ptr %r, i64 0, i64 0, !dbg !1083
  %1 = load ptr, ptr %t.addr, align 8, !dbg !1084
  %t1 = getelementptr inbounds %struct.gf128mul_4k, ptr %1, i32 0, i32 0, !dbg !1085
  %2 = load ptr, ptr %ap, align 8, !dbg !1086
  %arrayidx = getelementptr i8, ptr %2, i64 0, !dbg !1086
  %3 = load i8, ptr %arrayidx, align 1, !dbg !1086
  %idxprom = zext i8 %3 to i64, !dbg !1084
  %arrayidx2 = getelementptr [256 x %struct.be128], ptr %t1, i64 0, i64 %idxprom, !dbg !1084
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 8 %arrayidx2, i64 16, i1 false), !dbg !1084
  br label %while.cond, !dbg !1087

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i32, ptr %i, align 4, !dbg !1088
  %inc = add i32 %4, 1, !dbg !1088
  store i32 %inc, ptr %i, align 4, !dbg !1088
  %cmp = icmp slt i32 %inc, 16, !dbg !1089
  br i1 %cmp, label %while.body, label %while.end, !dbg !1087

while.body:                                       ; preds = %while.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.be128], ptr %r, i64 0, i64 0, !dbg !1090
  call void @gf128mul_x8_bbe(ptr noundef %arraydecay3) #16, !dbg !1092
  %arraydecay4 = getelementptr inbounds [1 x %struct.be128], ptr %r, i64 0, i64 0, !dbg !1093
  %arraydecay5 = getelementptr inbounds [1 x %struct.be128], ptr %r, i64 0, i64 0, !dbg !1094
  %5 = load ptr, ptr %t.addr, align 8, !dbg !1095
  %t6 = getelementptr inbounds %struct.gf128mul_4k, ptr %5, i32 0, i32 0, !dbg !1096
  %6 = load ptr, ptr %ap, align 8, !dbg !1097
  %7 = load i32, ptr %i, align 4, !dbg !1098
  %idxprom7 = sext i32 %7 to i64, !dbg !1097
  %arrayidx8 = getelementptr i8, ptr %6, i64 %idxprom7, !dbg !1097
  %8 = load i8, ptr %arrayidx8, align 1, !dbg !1097
  %idxprom9 = zext i8 %8 to i64, !dbg !1095
  %arrayidx10 = getelementptr [256 x %struct.be128], ptr %t6, i64 0, i64 %idxprom9, !dbg !1095
  call void @be128_xor(ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %arrayidx10) #16, !dbg !1099
  br label %while.cond, !dbg !1087, !llvm.loop !1100

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %a.addr, align 8, !dbg !1102
  %arraydecay11 = getelementptr inbounds [1 x %struct.be128], ptr %r, i64 0, i64 0, !dbg !1103
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 16 %arraydecay11, i64 16, i1 false), !dbg !1103
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 8, ptr %ap) #15, !dbg !1104
  ret void, !dbg !1104
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @gf128mul_mask_from_bit(i64 noundef %x, i32 noundef %which) #5 align 16 !dbg !1105 {
entry:
  %x.addr = alloca i64, align 8
  %which.addr = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1109, metadata !DIExpression()), !dbg !1111
  store i32 %which, ptr %which.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !1110, metadata !DIExpression()), !dbg !1112
  %0 = load i64, ptr %x.addr, align 8, !dbg !1113
  %1 = load i32, ptr %which.addr, align 4, !dbg !1114
  %sub = sub i32 63, %1, !dbg !1115
  %sh_prom = zext i32 %sub to i64, !dbg !1116
  %shl = shl i64 %0, %sh_prom, !dbg !1116
  %shr = ashr i64 %shl, 63, !dbg !1117
  ret i64 %shr, !dbg !1118
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !1119 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1121, metadata !DIExpression()), !dbg !1126
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1122, metadata !DIExpression()), !dbg !1127
  %0 = load i64, ptr %size.addr, align 8, !dbg !1128
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1129
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1130

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1131
  %tobool = icmp ne i64 %2, 0, !dbg !1131
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1132

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !1133
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1123, metadata !DIExpression()), !dbg !1134
  %3 = load i64, ptr %size.addr, align 8, !dbg !1135
  %cmp = icmp ugt i64 %3, 8192, !dbg !1137
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1138

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1139
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1140
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !1141
  store ptr %call, ptr %retval, align 8, !dbg !1142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1142

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1143
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !1143
  store i32 %call2, ptr %index, align 4, !dbg !1144
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1145
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1146
  %9 = ptrtoint ptr %8 to i64, !dbg !1146
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !1147
  %idxprom = zext i32 %call3 to i64, !dbg !1148
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1148
  %10 = load i32, ptr %index, align 4, !dbg !1149
  %idxprom4 = zext i32 %10 to i64, !dbg !1148
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1148
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1148
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1150
  %13 = load i64, ptr %size.addr, align 8, !dbg !1151
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !1152
  store ptr %call6, ptr %retval, align 8, !dbg !1153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1153

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !1154
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1155
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1156
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !1157
  store ptr %call8, ptr %retval, align 8, !dbg !1158
  br label %return, !dbg !1158

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1159
  ret ptr %16, !dbg !1159
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1160 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !1161 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1167, metadata !DIExpression()), !dbg !1169
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1168, metadata !DIExpression()), !dbg !1170
  %0 = load i64, ptr %size.addr, align 8, !dbg !1171
  %tobool = icmp ne i64 %0, 0, !dbg !1171
  br i1 %tobool, label %if.end, label %if.then, !dbg !1173

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1174
  br label %return, !dbg !1174

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1175
  %cmp = icmp ule i64 %1, 8, !dbg !1177
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1178

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1179
  br label %return, !dbg !1179

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1180
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1182
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1183

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1184
  %cmp4 = icmp ule i64 %3, 96, !dbg !1185
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1186

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1187
  br label %return, !dbg !1187

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1188
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1190
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1191

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1192
  %cmp9 = icmp ule i64 %5, 192, !dbg !1193
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1194

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1195
  br label %return, !dbg !1195

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1196
  %cmp12 = icmp ule i64 %6, 8, !dbg !1198
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1199

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1200
  br label %return, !dbg !1200

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1201
  %cmp15 = icmp ule i64 %7, 16, !dbg !1203
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1204

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1205
  br label %return, !dbg !1205

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1206
  %cmp18 = icmp ule i64 %8, 32, !dbg !1208
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1209

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1210
  br label %return, !dbg !1210

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1211
  %cmp21 = icmp ule i64 %9, 64, !dbg !1213
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1214

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1215
  br label %return, !dbg !1215

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1216
  %cmp24 = icmp ule i64 %10, 128, !dbg !1218
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1219

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1220
  br label %return, !dbg !1220

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1221
  %cmp27 = icmp ule i64 %11, 256, !dbg !1223
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1224

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1225
  br label %return, !dbg !1225

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1226
  %cmp30 = icmp ule i64 %12, 512, !dbg !1228
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1229

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1230
  br label %return, !dbg !1230

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1231
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1233
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1234

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1235
  br label %return, !dbg !1235

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1236
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1238
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1239

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1240
  br label %return, !dbg !1240

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1241
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1243
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1244

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1245
  br label %return, !dbg !1245

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1246
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1248
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1249

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1250
  br label %return, !dbg !1250

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1251
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1253
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1254

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1255
  br label %return, !dbg !1255

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1256
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1258
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1259

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1260
  br label %return, !dbg !1260

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1261
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1263
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1264

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1265
  br label %return, !dbg !1265

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1266
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1268
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1269

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1270
  br label %return, !dbg !1270

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1271
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1273
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1274

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1275
  br label %return, !dbg !1275

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1276
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1278
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1279

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1280
  br label %return, !dbg !1280

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1281
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1283
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1284

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1285
  br label %return, !dbg !1285

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1286
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1288
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1289

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1290
  br label %return, !dbg !1290

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1291, !range !1293, !noundef !1294
  %tobool69 = trunc i8 %25 to i1, !dbg !1291
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1295

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1296

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #19, !dbg !1297, !srcloc !1300
  unreachable, !dbg !1297

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1301

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1302

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1303

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1305

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1303

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #15, !dbg !1307, !srcloc !1309
  br label %do.end75, !dbg !1307

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1303

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1310
  br label %return, !dbg !1310

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1311
  ret i32 %26, !dbg !1311
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1312 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !1318 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1322, metadata !DIExpression()), !dbg !1324
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1323, metadata !DIExpression()), !dbg !1325
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1326
  %and = and i32 %0, 17, !dbg !1326
  %cmp = icmp eq i32 %and, 0, !dbg !1326
  %lnot = xor i1 %cmp, true, !dbg !1326
  %lnot1 = xor i1 %lnot, true, !dbg !1326
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1326
  %conv = sext i32 %lnot.ext to i64, !dbg !1326
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1326
  %tobool = icmp ne i64 %expval, 0, !dbg !1326
  br i1 %tobool, label %if.then, label %if.end, !dbg !1328

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1329
  br label %return, !dbg !1329

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1330
  %and2 = and i32 %1, 1, !dbg !1332
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1332
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1333

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1334
  br label %return, !dbg !1334

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1335
  br label %return, !dbg !1335

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1337
  ret i32 %2, !dbg !1337
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1338 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1339 dso_local void @__compiletime_assert_117() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gf128mul_table_be", scope: !2, file: !3, line: 130, type: !91, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/.gf128mul.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/gf128mul\22 -D KBUILD_BASENAME=\22gf128mul\22 -D KBUILD_MODNAME=\22gf128mul\22 -D __KBUILD_MODNAME=kmod_gf128mul -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/gf128mul.ll lib/crypto/gf128mul.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !48, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/gf128mul.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ac70655d51a85ff0b4137b60e56e065")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !{!22, !25, !27, !28, !36, !37, !42, !34, !44, !45}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !24)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !26, line: 40, baseType: !22)
!26 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "be128", file: !30, line: 54, baseType: !31)
!30 = !DIFile(filename: "./include/crypto/b128ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "739149518c36fa39a58d9aab36e127ad")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 52, size: 128, elements: !32)
!32 = !{!33, !35}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !31, file: !30, line: 53, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !26, line: 41, baseType: !22)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !31, file: !30, line: 53, baseType: !34, size: 64, offset: 64)
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !39, line: 17, baseType: !40)
!39 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !41)
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !43, line: 154, baseType: !7)
!43 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !39, line: 23, baseType: !22)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !39, line: 22, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !23, line: 30, baseType: !47)
!47 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!48 = !{!49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !76, !81, !0, !86, !89}
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gf128mul_x8_ble197", scope: !2, file: !3, line: 179, type: !27, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gf128mul_lle198", scope: !2, file: !3, line: 226, type: !27, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gf128mul_bbe199", scope: !2, file: !3, line: 264, type: !27, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gf128mul_init_64k_bbe200", scope: !2, file: !3, line: 320, type: !27, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gf128mul_free_64k201", scope: !2, file: !3, line: 330, type: !27, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gf128mul_64k_bbe202", scope: !2, file: !3, line: 343, type: !27, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gf128mul_init_4k_lle203", scope: !2, file: !3, line: 381, type: !27, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gf128mul_init_4k_bbe204", scope: !2, file: !3, line: 403, type: !27, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gf128mul_4k_lle205", scope: !2, file: !3, line: 418, type: !27, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gf128mul_4k_bbe206", scope: !2, file: !3, line: 433, type: !27, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file207", scope: !2, file: !3, line: 435, type: !71, isLocal: true, isDefinition: true, align: 8)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 272, elements: !74)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !{!75}
!75 = !DISubrange(count: 34)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license208", scope: !2, file: !3, line: 435, type: !78, isLocal: true, isDefinition: true, align: 8)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 168, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 21)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description209", scope: !2, file: !3, line: 436, type: !83, isLocal: true, isDefinition: true, align: 8)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 552, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 69)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 168, elements: !79)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "gf128mul_table_le", scope: !2, file: !3, line: 129, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 4096, elements: !96)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !39, line: 19, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !95)
!95 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!96 = !{!97}
!97 = !DISubrange(count: 256)
!98 = !{i32 7, !"Dwarf Version", i32 5}
!99 = !{i32 2, !"Debug Info Version", i32 3}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 8, !"cf-protection-branch", i32 1}
!102 = !{i32 4, !"function_return_thunk_extern", i32 1}
!103 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!104 = !{i32 1, !"Code Model", i32 2}
!105 = !{i32 1, !"override-stack-alignment", i32 8}
!106 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!107 = distinct !DISubprogram(name: "gf128mul_x8_ble", scope: !3, file: !3, line: 170, type: !108, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !110, !116}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "le128", file: !30, line: 58, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 56, size: 128, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !112, file: !30, line: 57, baseType: !25, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !112, file: !30, line: 57, baseType: !25, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!118 = !{!119, !120, !121, !122, !123}
!119 = !DILocalVariable(name: "r", arg: 1, scope: !107, file: !3, line: 170, type: !110)
!120 = !DILocalVariable(name: "x", arg: 2, scope: !107, file: !3, line: 170, type: !116)
!121 = !DILocalVariable(name: "a", scope: !107, file: !3, line: 172, type: !44)
!122 = !DILocalVariable(name: "b", scope: !107, file: !3, line: 173, type: !44)
!123 = !DILocalVariable(name: "_tt", scope: !107, file: !3, line: 174, type: !44)
!124 = !DILocation(line: 170, column: 29, scope: !107)
!125 = !DILocation(line: 170, column: 45, scope: !107)
!126 = !DILocation(line: 172, column: 2, scope: !107)
!127 = !DILocation(line: 172, column: 6, scope: !107)
!128 = !DILocation(line: 172, column: 10, scope: !107)
!129 = !DILocation(line: 173, column: 2, scope: !107)
!130 = !DILocation(line: 173, column: 6, scope: !107)
!131 = !DILocation(line: 173, column: 10, scope: !107)
!132 = !DILocation(line: 174, column: 2, scope: !107)
!133 = !DILocation(line: 174, column: 6, scope: !107)
!134 = !DILocation(line: 174, column: 30, scope: !107)
!135 = !DILocation(line: 174, column: 32, scope: !107)
!136 = !DILocation(line: 174, column: 12, scope: !107)
!137 = !DILocation(line: 176, column: 9, scope: !107)
!138 = !DILocation(line: 176, column: 2, scope: !107)
!139 = !DILocation(line: 176, column: 5, scope: !107)
!140 = !DILocation(line: 176, column: 7, scope: !107)
!141 = !DILocation(line: 177, column: 9, scope: !107)
!142 = !DILocation(line: 177, column: 2, scope: !107)
!143 = !DILocation(line: 177, column: 5, scope: !107)
!144 = !DILocation(line: 177, column: 7, scope: !107)
!145 = !DILocation(line: 178, column: 1, scope: !107)
!146 = distinct !DISubprogram(name: "gf128mul_lle", scope: !3, file: !3, line: 181, type: !147, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !151)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !28, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!151 = !{!152, !153, !154, !158, !159, !161}
!152 = !DILocalVariable(name: "r", arg: 1, scope: !146, file: !3, line: 181, type: !28)
!153 = !DILocalVariable(name: "b", arg: 2, scope: !146, file: !3, line: 181, type: !149)
!154 = !DILocalVariable(name: "array", scope: !146, file: !3, line: 199, type: !155)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2432, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 19)
!158 = !DILocalVariable(name: "p", scope: !146, file: !3, line: 200, type: !28)
!159 = !DILocalVariable(name: "i", scope: !146, file: !3, line: 201, type: !160)
!160 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!161 = !DILocalVariable(name: "ch", scope: !162, file: !3, line: 209, type: !38)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 208, column: 16)
!163 = distinct !DILexicalBlock(scope: !164, file: !3, line: 208, column: 2)
!164 = distinct !DILexicalBlock(scope: !146, file: !3, line: 208, column: 2)
!165 = !DILocation(line: 181, column: 26, scope: !146)
!166 = !DILocation(line: 181, column: 42, scope: !146)
!167 = !DILocation(line: 199, column: 2, scope: !146)
!168 = !DILocation(line: 199, column: 8, scope: !146)
!169 = !DILocation(line: 200, column: 2, scope: !146)
!170 = !DILocation(line: 200, column: 9, scope: !146)
!171 = !DILocation(line: 200, column: 13, scope: !146)
!172 = !DILocation(line: 201, column: 2, scope: !146)
!173 = !DILocation(line: 201, column: 6, scope: !146)
!174 = !DILocation(line: 203, column: 2, scope: !146)
!175 = !DILocation(line: 203, column: 10, scope: !146)
!176 = !DILocation(line: 203, column: 9, scope: !146)
!177 = !DILocation(line: 204, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !146, file: !3, line: 204, column: 2)
!179 = !DILocation(line: 204, column: 7, scope: !178)
!180 = !DILocation(line: 204, column: 14, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !3, line: 204, column: 2)
!182 = !DILocation(line: 204, column: 16, scope: !181)
!183 = !DILocation(line: 204, column: 2, scope: !178)
!184 = !DILocation(line: 205, column: 19, scope: !181)
!185 = !DILocation(line: 205, column: 25, scope: !181)
!186 = !DILocation(line: 205, column: 23, scope: !181)
!187 = !DILocation(line: 205, column: 27, scope: !181)
!188 = !DILocation(line: 205, column: 34, scope: !181)
!189 = !DILocation(line: 205, column: 40, scope: !181)
!190 = !DILocation(line: 205, column: 38, scope: !181)
!191 = !DILocation(line: 205, column: 3, scope: !181)
!192 = !DILocation(line: 204, column: 21, scope: !181)
!193 = !DILocation(line: 204, column: 2, scope: !181)
!194 = distinct !{!194, !183, !195, !196, !197}
!195 = !DILocation(line: 205, column: 42, scope: !178)
!196 = !{!"llvm.loop.mustprogress"}
!197 = !{!"llvm.loop.unroll.disable"}
!198 = !DILocation(line: 207, column: 9, scope: !146)
!199 = !DILocation(line: 207, column: 2, scope: !146)
!200 = !DILocation(line: 208, column: 9, scope: !164)
!201 = !DILocation(line: 208, column: 7, scope: !164)
!202 = !DILocation(line: 209, column: 3, scope: !162)
!203 = !DILocation(line: 209, column: 6, scope: !162)
!204 = !DILocation(line: 209, column: 18, scope: !162)
!205 = !DILocation(line: 209, column: 26, scope: !162)
!206 = !DILocation(line: 209, column: 24, scope: !162)
!207 = !DILocation(line: 209, column: 11, scope: !162)
!208 = !DILocation(line: 211, column: 13, scope: !162)
!209 = !DILocation(line: 211, column: 16, scope: !162)
!210 = !DILocation(line: 211, column: 20, scope: !162)
!211 = !DILocation(line: 211, column: 29, scope: !162)
!212 = !DILocation(line: 211, column: 32, scope: !162)
!213 = !DILocation(line: 211, column: 27, scope: !162)
!214 = !DILocation(line: 211, column: 25, scope: !162)
!215 = !DILocation(line: 211, column: 3, scope: !162)
!216 = !DILocation(line: 212, column: 13, scope: !162)
!217 = !DILocation(line: 212, column: 16, scope: !162)
!218 = !DILocation(line: 212, column: 20, scope: !162)
!219 = !DILocation(line: 212, column: 29, scope: !162)
!220 = !DILocation(line: 212, column: 32, scope: !162)
!221 = !DILocation(line: 212, column: 27, scope: !162)
!222 = !DILocation(line: 212, column: 25, scope: !162)
!223 = !DILocation(line: 212, column: 3, scope: !162)
!224 = !DILocation(line: 213, column: 13, scope: !162)
!225 = !DILocation(line: 213, column: 16, scope: !162)
!226 = !DILocation(line: 213, column: 20, scope: !162)
!227 = !DILocation(line: 213, column: 29, scope: !162)
!228 = !DILocation(line: 213, column: 32, scope: !162)
!229 = !DILocation(line: 213, column: 27, scope: !162)
!230 = !DILocation(line: 213, column: 25, scope: !162)
!231 = !DILocation(line: 213, column: 3, scope: !162)
!232 = !DILocation(line: 214, column: 13, scope: !162)
!233 = !DILocation(line: 214, column: 16, scope: !162)
!234 = !DILocation(line: 214, column: 20, scope: !162)
!235 = !DILocation(line: 214, column: 29, scope: !162)
!236 = !DILocation(line: 214, column: 32, scope: !162)
!237 = !DILocation(line: 214, column: 27, scope: !162)
!238 = !DILocation(line: 214, column: 25, scope: !162)
!239 = !DILocation(line: 214, column: 3, scope: !162)
!240 = !DILocation(line: 215, column: 13, scope: !162)
!241 = !DILocation(line: 215, column: 16, scope: !162)
!242 = !DILocation(line: 215, column: 20, scope: !162)
!243 = !DILocation(line: 215, column: 29, scope: !162)
!244 = !DILocation(line: 215, column: 32, scope: !162)
!245 = !DILocation(line: 215, column: 27, scope: !162)
!246 = !DILocation(line: 215, column: 25, scope: !162)
!247 = !DILocation(line: 215, column: 3, scope: !162)
!248 = !DILocation(line: 216, column: 13, scope: !162)
!249 = !DILocation(line: 216, column: 16, scope: !162)
!250 = !DILocation(line: 216, column: 20, scope: !162)
!251 = !DILocation(line: 216, column: 29, scope: !162)
!252 = !DILocation(line: 216, column: 32, scope: !162)
!253 = !DILocation(line: 216, column: 27, scope: !162)
!254 = !DILocation(line: 216, column: 25, scope: !162)
!255 = !DILocation(line: 216, column: 3, scope: !162)
!256 = !DILocation(line: 217, column: 13, scope: !162)
!257 = !DILocation(line: 217, column: 16, scope: !162)
!258 = !DILocation(line: 217, column: 20, scope: !162)
!259 = !DILocation(line: 217, column: 29, scope: !162)
!260 = !DILocation(line: 217, column: 32, scope: !162)
!261 = !DILocation(line: 217, column: 27, scope: !162)
!262 = !DILocation(line: 217, column: 25, scope: !162)
!263 = !DILocation(line: 217, column: 3, scope: !162)
!264 = !DILocation(line: 218, column: 13, scope: !162)
!265 = !DILocation(line: 218, column: 16, scope: !162)
!266 = !DILocation(line: 218, column: 20, scope: !162)
!267 = !DILocation(line: 218, column: 29, scope: !162)
!268 = !DILocation(line: 218, column: 32, scope: !162)
!269 = !DILocation(line: 218, column: 27, scope: !162)
!270 = !DILocation(line: 218, column: 25, scope: !162)
!271 = !DILocation(line: 218, column: 3, scope: !162)
!272 = !DILocation(line: 220, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !162, file: !3, line: 220, column: 7)
!274 = !DILocation(line: 220, column: 11, scope: !273)
!275 = !DILocation(line: 220, column: 7, scope: !162)
!276 = !DILocation(line: 221, column: 4, scope: !273)
!277 = !DILocation(line: 223, column: 22, scope: !162)
!278 = !DILocation(line: 223, column: 3, scope: !162)
!279 = !DILocation(line: 224, column: 2, scope: !163)
!280 = !DILocation(line: 208, column: 2, scope: !163)
!281 = distinct !{!281, !282, !283, !197}
!282 = !DILocation(line: 208, column: 2, scope: !164)
!283 = !DILocation(line: 224, column: 2, scope: !164)
!284 = !DILocation(line: 225, column: 1, scope: !146)
!285 = distinct !DISubprogram(name: "gf128mul_x_lle", scope: !286, file: !286, line: 182, type: !147, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!286 = !DIFile(filename: "./include/crypto/gf128mul.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbe146c8ba0c303f0d146b8c9a1a7461")
!287 = !{!288, !289, !290, !291, !292}
!288 = !DILocalVariable(name: "r", arg: 1, scope: !285, file: !286, line: 182, type: !28)
!289 = !DILocalVariable(name: "x", arg: 2, scope: !285, file: !286, line: 182, type: !149)
!290 = !DILocalVariable(name: "a", scope: !285, file: !286, line: 184, type: !44)
!291 = !DILocalVariable(name: "b", scope: !285, file: !286, line: 185, type: !44)
!292 = !DILocalVariable(name: "_tt", scope: !285, file: !286, line: 189, type: !44)
!293 = !DILocation(line: 182, column: 42, scope: !285)
!294 = !DILocation(line: 182, column: 58, scope: !285)
!295 = !DILocation(line: 184, column: 2, scope: !285)
!296 = !DILocation(line: 184, column: 6, scope: !285)
!297 = !DILocation(line: 184, column: 10, scope: !285)
!298 = !DILocation(line: 185, column: 2, scope: !285)
!299 = !DILocation(line: 185, column: 6, scope: !285)
!300 = !DILocation(line: 185, column: 10, scope: !285)
!301 = !DILocation(line: 189, column: 2, scope: !285)
!302 = !DILocation(line: 189, column: 6, scope: !285)
!303 = !DILocation(line: 189, column: 35, scope: !285)
!304 = !DILocation(line: 189, column: 12, scope: !285)
!305 = !DILocation(line: 189, column: 41, scope: !285)
!306 = !DILocation(line: 191, column: 9, scope: !285)
!307 = !DILocation(line: 191, column: 2, scope: !285)
!308 = !DILocation(line: 191, column: 5, scope: !285)
!309 = !DILocation(line: 191, column: 7, scope: !285)
!310 = !DILocation(line: 192, column: 9, scope: !285)
!311 = !DILocation(line: 192, column: 2, scope: !285)
!312 = !DILocation(line: 192, column: 5, scope: !285)
!313 = !DILocation(line: 192, column: 7, scope: !285)
!314 = !DILocation(line: 193, column: 1, scope: !285)
!315 = distinct !DISubprogram(name: "be128_xor", scope: !30, file: !30, line: 60, type: !316, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !318)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !28, !149, !149}
!318 = !{!319, !320, !321}
!319 = !DILocalVariable(name: "r", arg: 1, scope: !315, file: !30, line: 60, type: !28)
!320 = !DILocalVariable(name: "p", arg: 2, scope: !315, file: !30, line: 60, type: !149)
!321 = !DILocalVariable(name: "q", arg: 3, scope: !315, file: !30, line: 60, type: !149)
!322 = !DILocation(line: 60, column: 37, scope: !315)
!323 = !DILocation(line: 60, column: 53, scope: !315)
!324 = !DILocation(line: 60, column: 69, scope: !315)
!325 = !DILocation(line: 62, column: 9, scope: !315)
!326 = !DILocation(line: 62, column: 12, scope: !315)
!327 = !DILocation(line: 62, column: 16, scope: !315)
!328 = !DILocation(line: 62, column: 19, scope: !315)
!329 = !DILocation(line: 62, column: 14, scope: !315)
!330 = !DILocation(line: 62, column: 2, scope: !315)
!331 = !DILocation(line: 62, column: 5, scope: !315)
!332 = !DILocation(line: 62, column: 7, scope: !315)
!333 = !DILocation(line: 63, column: 9, scope: !315)
!334 = !DILocation(line: 63, column: 12, scope: !315)
!335 = !DILocation(line: 63, column: 16, scope: !315)
!336 = !DILocation(line: 63, column: 19, scope: !315)
!337 = !DILocation(line: 63, column: 14, scope: !315)
!338 = !DILocation(line: 63, column: 2, scope: !315)
!339 = !DILocation(line: 63, column: 5, scope: !315)
!340 = !DILocation(line: 63, column: 7, scope: !315)
!341 = !DILocation(line: 64, column: 1, scope: !315)
!342 = distinct !DISubprogram(name: "gf128mul_x8_lle_ti", scope: !3, file: !3, line: 150, type: !343, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !28}
!345 = !{!346, !347, !348, !349}
!346 = !DILocalVariable(name: "x", arg: 1, scope: !342, file: !3, line: 150, type: !28)
!347 = !DILocalVariable(name: "a", scope: !342, file: !3, line: 152, type: !44)
!348 = !DILocalVariable(name: "b", scope: !342, file: !3, line: 153, type: !44)
!349 = !DILocalVariable(name: "_tt", scope: !342, file: !3, line: 154, type: !44)
!350 = !DILocation(line: 150, column: 39, scope: !342)
!351 = !DILocation(line: 152, column: 2, scope: !342)
!352 = !DILocation(line: 152, column: 6, scope: !342)
!353 = !DILocation(line: 152, column: 10, scope: !342)
!354 = !DILocation(line: 153, column: 2, scope: !342)
!355 = !DILocation(line: 153, column: 6, scope: !342)
!356 = !DILocation(line: 153, column: 10, scope: !342)
!357 = !DILocation(line: 154, column: 2, scope: !342)
!358 = !DILocation(line: 154, column: 6, scope: !342)
!359 = !DILocation(line: 154, column: 12, scope: !342)
!360 = !DILocation(line: 156, column: 9, scope: !342)
!361 = !DILocation(line: 156, column: 2, scope: !342)
!362 = !DILocation(line: 156, column: 5, scope: !342)
!363 = !DILocation(line: 156, column: 7, scope: !342)
!364 = !DILocation(line: 157, column: 9, scope: !342)
!365 = !DILocation(line: 157, column: 2, scope: !342)
!366 = !DILocation(line: 157, column: 5, scope: !342)
!367 = !DILocation(line: 157, column: 7, scope: !342)
!368 = !DILocation(line: 158, column: 1, scope: !342)
!369 = distinct !DISubprogram(name: "gf128mul_bbe", scope: !3, file: !3, line: 228, type: !147, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !370)
!370 = !{!371, !372, !373, !377, !378}
!371 = !DILocalVariable(name: "r", arg: 1, scope: !369, file: !3, line: 228, type: !28)
!372 = !DILocalVariable(name: "b", arg: 2, scope: !369, file: !3, line: 228, type: !149)
!373 = !DILocalVariable(name: "p", scope: !369, file: !3, line: 230, type: !374)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1024, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 8)
!377 = !DILocalVariable(name: "i", scope: !369, file: !3, line: 231, type: !160)
!378 = !DILocalVariable(name: "ch", scope: !379, file: !3, line: 239, type: !38)
!379 = distinct !DILexicalBlock(scope: !380, file: !3, line: 238, column: 16)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 238, column: 2)
!381 = distinct !DILexicalBlock(scope: !369, file: !3, line: 238, column: 2)
!382 = !DILocation(line: 228, column: 26, scope: !369)
!383 = !DILocation(line: 228, column: 42, scope: !369)
!384 = !DILocation(line: 230, column: 2, scope: !369)
!385 = !DILocation(line: 230, column: 8, scope: !369)
!386 = !DILocation(line: 231, column: 2, scope: !369)
!387 = !DILocation(line: 231, column: 6, scope: !369)
!388 = !DILocation(line: 233, column: 2, scope: !369)
!389 = !DILocation(line: 233, column: 10, scope: !369)
!390 = !DILocation(line: 233, column: 9, scope: !369)
!391 = !DILocation(line: 234, column: 9, scope: !392)
!392 = distinct !DILexicalBlock(scope: !369, file: !3, line: 234, column: 2)
!393 = !DILocation(line: 234, column: 7, scope: !392)
!394 = !DILocation(line: 234, column: 14, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !3, line: 234, column: 2)
!396 = !DILocation(line: 234, column: 16, scope: !395)
!397 = !DILocation(line: 234, column: 2, scope: !392)
!398 = !DILocation(line: 235, column: 21, scope: !395)
!399 = !DILocation(line: 235, column: 23, scope: !395)
!400 = !DILocation(line: 235, column: 19, scope: !395)
!401 = !DILocation(line: 235, column: 32, scope: !395)
!402 = !DILocation(line: 235, column: 30, scope: !395)
!403 = !DILocation(line: 235, column: 3, scope: !395)
!404 = !DILocation(line: 234, column: 21, scope: !395)
!405 = !DILocation(line: 234, column: 2, scope: !395)
!406 = distinct !{!406, !397, !407, !196, !197}
!407 = !DILocation(line: 235, column: 34, scope: !392)
!408 = !DILocation(line: 237, column: 9, scope: !369)
!409 = !DILocation(line: 237, column: 2, scope: !369)
!410 = !DILocation(line: 238, column: 9, scope: !381)
!411 = !DILocation(line: 238, column: 7, scope: !381)
!412 = !DILocation(line: 239, column: 3, scope: !379)
!413 = !DILocation(line: 239, column: 6, scope: !379)
!414 = !DILocation(line: 239, column: 18, scope: !379)
!415 = !DILocation(line: 239, column: 21, scope: !379)
!416 = !DILocation(line: 239, column: 11, scope: !379)
!417 = !DILocation(line: 241, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !379, file: !3, line: 241, column: 7)
!419 = !DILocation(line: 241, column: 10, scope: !418)
!420 = !DILocation(line: 241, column: 7, scope: !379)
!421 = !DILocation(line: 242, column: 14, scope: !418)
!422 = !DILocation(line: 242, column: 17, scope: !418)
!423 = !DILocation(line: 242, column: 21, scope: !418)
!424 = !DILocation(line: 242, column: 4, scope: !418)
!425 = !DILocation(line: 243, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !379, file: !3, line: 243, column: 7)
!427 = !DILocation(line: 243, column: 10, scope: !426)
!428 = !DILocation(line: 243, column: 7, scope: !379)
!429 = !DILocation(line: 244, column: 14, scope: !426)
!430 = !DILocation(line: 244, column: 17, scope: !426)
!431 = !DILocation(line: 244, column: 21, scope: !426)
!432 = !DILocation(line: 244, column: 4, scope: !426)
!433 = !DILocation(line: 245, column: 7, scope: !434)
!434 = distinct !DILexicalBlock(scope: !379, file: !3, line: 245, column: 7)
!435 = !DILocation(line: 245, column: 10, scope: !434)
!436 = !DILocation(line: 245, column: 7, scope: !379)
!437 = !DILocation(line: 246, column: 14, scope: !434)
!438 = !DILocation(line: 246, column: 17, scope: !434)
!439 = !DILocation(line: 246, column: 21, scope: !434)
!440 = !DILocation(line: 246, column: 4, scope: !434)
!441 = !DILocation(line: 247, column: 7, scope: !442)
!442 = distinct !DILexicalBlock(scope: !379, file: !3, line: 247, column: 7)
!443 = !DILocation(line: 247, column: 10, scope: !442)
!444 = !DILocation(line: 247, column: 7, scope: !379)
!445 = !DILocation(line: 248, column: 14, scope: !442)
!446 = !DILocation(line: 248, column: 17, scope: !442)
!447 = !DILocation(line: 248, column: 21, scope: !442)
!448 = !DILocation(line: 248, column: 4, scope: !442)
!449 = !DILocation(line: 249, column: 7, scope: !450)
!450 = distinct !DILexicalBlock(scope: !379, file: !3, line: 249, column: 7)
!451 = !DILocation(line: 249, column: 10, scope: !450)
!452 = !DILocation(line: 249, column: 7, scope: !379)
!453 = !DILocation(line: 250, column: 14, scope: !450)
!454 = !DILocation(line: 250, column: 17, scope: !450)
!455 = !DILocation(line: 250, column: 21, scope: !450)
!456 = !DILocation(line: 250, column: 4, scope: !450)
!457 = !DILocation(line: 251, column: 7, scope: !458)
!458 = distinct !DILexicalBlock(scope: !379, file: !3, line: 251, column: 7)
!459 = !DILocation(line: 251, column: 10, scope: !458)
!460 = !DILocation(line: 251, column: 7, scope: !379)
!461 = !DILocation(line: 252, column: 14, scope: !458)
!462 = !DILocation(line: 252, column: 17, scope: !458)
!463 = !DILocation(line: 252, column: 21, scope: !458)
!464 = !DILocation(line: 252, column: 4, scope: !458)
!465 = !DILocation(line: 253, column: 7, scope: !466)
!466 = distinct !DILexicalBlock(scope: !379, file: !3, line: 253, column: 7)
!467 = !DILocation(line: 253, column: 10, scope: !466)
!468 = !DILocation(line: 253, column: 7, scope: !379)
!469 = !DILocation(line: 254, column: 14, scope: !466)
!470 = !DILocation(line: 254, column: 17, scope: !466)
!471 = !DILocation(line: 254, column: 21, scope: !466)
!472 = !DILocation(line: 254, column: 4, scope: !466)
!473 = !DILocation(line: 255, column: 7, scope: !474)
!474 = distinct !DILexicalBlock(scope: !379, file: !3, line: 255, column: 7)
!475 = !DILocation(line: 255, column: 10, scope: !474)
!476 = !DILocation(line: 255, column: 7, scope: !379)
!477 = !DILocation(line: 256, column: 14, scope: !474)
!478 = !DILocation(line: 256, column: 17, scope: !474)
!479 = !DILocation(line: 256, column: 21, scope: !474)
!480 = !DILocation(line: 256, column: 4, scope: !474)
!481 = !DILocation(line: 258, column: 7, scope: !482)
!482 = distinct !DILexicalBlock(scope: !379, file: !3, line: 258, column: 7)
!483 = !DILocation(line: 258, column: 11, scope: !482)
!484 = !DILocation(line: 258, column: 7, scope: !379)
!485 = !DILocation(line: 259, column: 4, scope: !482)
!486 = !DILocation(line: 261, column: 19, scope: !379)
!487 = !DILocation(line: 261, column: 3, scope: !379)
!488 = !DILocation(line: 262, column: 2, scope: !380)
!489 = !DILocation(line: 238, column: 2, scope: !380)
!490 = distinct !{!490, !491, !492, !197}
!491 = !DILocation(line: 238, column: 2, scope: !381)
!492 = !DILocation(line: 262, column: 2, scope: !381)
!493 = !DILocation(line: 263, column: 1, scope: !369)
!494 = distinct !DISubprogram(name: "gf128mul_x_bbe", scope: !286, file: !286, line: 195, type: !147, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !495)
!495 = !{!496, !497, !498, !499, !500}
!496 = !DILocalVariable(name: "r", arg: 1, scope: !494, file: !286, line: 195, type: !28)
!497 = !DILocalVariable(name: "x", arg: 2, scope: !494, file: !286, line: 195, type: !149)
!498 = !DILocalVariable(name: "a", scope: !494, file: !286, line: 197, type: !44)
!499 = !DILocalVariable(name: "b", scope: !494, file: !286, line: 198, type: !44)
!500 = !DILocalVariable(name: "_tt", scope: !494, file: !286, line: 201, type: !44)
!501 = !DILocation(line: 195, column: 42, scope: !494)
!502 = !DILocation(line: 195, column: 58, scope: !494)
!503 = !DILocation(line: 197, column: 2, scope: !494)
!504 = !DILocation(line: 197, column: 6, scope: !494)
!505 = !DILocation(line: 197, column: 10, scope: !494)
!506 = !DILocation(line: 198, column: 2, scope: !494)
!507 = !DILocation(line: 198, column: 6, scope: !494)
!508 = !DILocation(line: 198, column: 10, scope: !494)
!509 = !DILocation(line: 201, column: 2, scope: !494)
!510 = !DILocation(line: 201, column: 6, scope: !494)
!511 = !DILocation(line: 201, column: 35, scope: !494)
!512 = !DILocation(line: 201, column: 12, scope: !494)
!513 = !DILocation(line: 201, column: 42, scope: !494)
!514 = !DILocation(line: 203, column: 9, scope: !494)
!515 = !DILocation(line: 203, column: 2, scope: !494)
!516 = !DILocation(line: 203, column: 5, scope: !494)
!517 = !DILocation(line: 203, column: 7, scope: !494)
!518 = !DILocation(line: 204, column: 9, scope: !494)
!519 = !DILocation(line: 204, column: 2, scope: !494)
!520 = !DILocation(line: 204, column: 5, scope: !494)
!521 = !DILocation(line: 204, column: 7, scope: !494)
!522 = !DILocation(line: 205, column: 1, scope: !494)
!523 = distinct !DISubprogram(name: "gf128mul_x8_bbe", scope: !3, file: !3, line: 160, type: !343, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !524)
!524 = !{!525, !526, !527, !528}
!525 = !DILocalVariable(name: "x", arg: 1, scope: !523, file: !3, line: 160, type: !28)
!526 = !DILocalVariable(name: "a", scope: !523, file: !3, line: 162, type: !44)
!527 = !DILocalVariable(name: "b", scope: !523, file: !3, line: 163, type: !44)
!528 = !DILocalVariable(name: "_tt", scope: !523, file: !3, line: 164, type: !44)
!529 = !DILocation(line: 160, column: 36, scope: !523)
!530 = !DILocation(line: 162, column: 2, scope: !523)
!531 = !DILocation(line: 162, column: 6, scope: !523)
!532 = !DILocation(line: 162, column: 10, scope: !523)
!533 = !DILocation(line: 163, column: 2, scope: !523)
!534 = !DILocation(line: 163, column: 6, scope: !523)
!535 = !DILocation(line: 163, column: 10, scope: !523)
!536 = !DILocation(line: 164, column: 2, scope: !523)
!537 = !DILocation(line: 164, column: 6, scope: !523)
!538 = !DILocation(line: 164, column: 30, scope: !523)
!539 = !DILocation(line: 164, column: 32, scope: !523)
!540 = !DILocation(line: 164, column: 12, scope: !523)
!541 = !DILocation(line: 166, column: 9, scope: !523)
!542 = !DILocation(line: 166, column: 2, scope: !523)
!543 = !DILocation(line: 166, column: 5, scope: !523)
!544 = !DILocation(line: 166, column: 7, scope: !523)
!545 = !DILocation(line: 167, column: 9, scope: !523)
!546 = !DILocation(line: 167, column: 2, scope: !523)
!547 = !DILocation(line: 167, column: 5, scope: !523)
!548 = !DILocation(line: 167, column: 7, scope: !523)
!549 = !DILocation(line: 168, column: 1, scope: !523)
!550 = distinct !DISubprogram(name: "gf128mul_init_64k_bbe", scope: !3, file: !3, line: 280, type: !551, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !565)
!551 = !DISubroutineType(types: !552)
!552 = !{!553, !149}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gf128mul_64k", file: !286, line: 239, size: 1024, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !554, file: !286, line: 240, baseType: !557, size: 1024)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 1024, elements: !563)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gf128mul_4k", file: !286, line: 222, size: 32768, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !559, file: !286, line: 223, baseType: !562, size: 32768)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32768, elements: !96)
!563 = !{!564}
!564 = !DISubrange(count: 16)
!565 = !{!566, !567, !568, !569, !570, !571}
!566 = !DILocalVariable(name: "g", arg: 1, scope: !550, file: !3, line: 280, type: !149)
!567 = !DILocalVariable(name: "t", scope: !550, file: !3, line: 282, type: !553)
!568 = !DILocalVariable(name: "i", scope: !550, file: !3, line: 283, type: !160)
!569 = !DILocalVariable(name: "j", scope: !550, file: !3, line: 283, type: !160)
!570 = !DILocalVariable(name: "k", scope: !550, file: !3, line: 283, type: !160)
!571 = !DILabel(scope: !550, name: "out", file: !3, line: 317)
!572 = !DILocation(line: 280, column: 57, scope: !550)
!573 = !DILocation(line: 282, column: 2, scope: !550)
!574 = !DILocation(line: 282, column: 23, scope: !550)
!575 = !DILocation(line: 283, column: 2, scope: !550)
!576 = !DILocation(line: 283, column: 6, scope: !550)
!577 = !DILocation(line: 283, column: 9, scope: !550)
!578 = !DILocation(line: 283, column: 12, scope: !550)
!579 = !DILocation(line: 285, column: 6, scope: !550)
!580 = !DILocation(line: 285, column: 4, scope: !550)
!581 = !DILocation(line: 286, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !550, file: !3, line: 286, column: 6)
!583 = !DILocation(line: 286, column: 6, scope: !550)
!584 = !DILocation(line: 287, column: 3, scope: !582)
!585 = !DILocation(line: 289, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !550, file: !3, line: 289, column: 2)
!587 = !DILocation(line: 289, column: 7, scope: !586)
!588 = !DILocation(line: 289, column: 14, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !3, line: 289, column: 2)
!590 = !DILocation(line: 289, column: 16, scope: !589)
!591 = !DILocation(line: 289, column: 2, scope: !586)
!592 = !DILocation(line: 290, column: 13, scope: !593)
!593 = distinct !DILexicalBlock(scope: !589, file: !3, line: 289, column: 27)
!594 = !DILocation(line: 290, column: 3, scope: !593)
!595 = !DILocation(line: 290, column: 6, scope: !593)
!596 = !DILocation(line: 290, column: 8, scope: !593)
!597 = !DILocation(line: 290, column: 11, scope: !593)
!598 = !DILocation(line: 291, column: 8, scope: !599)
!599 = distinct !DILexicalBlock(scope: !593, file: !3, line: 291, column: 7)
!600 = !DILocation(line: 291, column: 11, scope: !599)
!601 = !DILocation(line: 291, column: 13, scope: !599)
!602 = !DILocation(line: 291, column: 7, scope: !593)
!603 = !DILocation(line: 292, column: 22, scope: !604)
!604 = distinct !DILexicalBlock(scope: !599, file: !3, line: 291, column: 17)
!605 = !DILocation(line: 292, column: 4, scope: !604)
!606 = !DILocation(line: 293, column: 6, scope: !604)
!607 = !DILocation(line: 294, column: 4, scope: !604)
!608 = !DILocation(line: 296, column: 2, scope: !593)
!609 = !DILocation(line: 289, column: 23, scope: !589)
!610 = !DILocation(line: 289, column: 2, scope: !589)
!611 = distinct !{!611, !591, !612, !196, !197}
!612 = !DILocation(line: 296, column: 2, scope: !586)
!613 = !DILocation(line: 298, column: 2, scope: !550)
!614 = !DILocation(line: 298, column: 5, scope: !550)
!615 = !DILocation(line: 298, column: 11, scope: !550)
!616 = !DILocation(line: 298, column: 19, scope: !550)
!617 = !DILocation(line: 298, column: 18, scope: !550)
!618 = !DILocation(line: 299, column: 9, scope: !619)
!619 = distinct !DILexicalBlock(scope: !550, file: !3, line: 299, column: 2)
!620 = !DILocation(line: 299, column: 7, scope: !619)
!621 = !DILocation(line: 299, column: 14, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !3, line: 299, column: 2)
!623 = !DILocation(line: 299, column: 16, scope: !622)
!624 = !DILocation(line: 299, column: 2, scope: !619)
!625 = !DILocation(line: 300, column: 19, scope: !622)
!626 = !DILocation(line: 300, column: 22, scope: !622)
!627 = !DILocation(line: 300, column: 28, scope: !622)
!628 = !DILocation(line: 300, column: 30, scope: !622)
!629 = !DILocation(line: 300, column: 34, scope: !622)
!630 = !DILocation(line: 300, column: 32, scope: !622)
!631 = !DILocation(line: 300, column: 39, scope: !622)
!632 = !DILocation(line: 300, column: 42, scope: !622)
!633 = !DILocation(line: 300, column: 48, scope: !622)
!634 = !DILocation(line: 300, column: 50, scope: !622)
!635 = !DILocation(line: 300, column: 3, scope: !622)
!636 = !DILocation(line: 299, column: 25, scope: !622)
!637 = !DILocation(line: 299, column: 2, scope: !622)
!638 = distinct !{!638, !624, !639, !196, !197}
!639 = !DILocation(line: 300, column: 52, scope: !619)
!640 = !DILocation(line: 302, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !550, file: !3, line: 302, column: 2)
!642 = !DILocation(line: 302, column: 7, scope: !641)
!643 = !DILocation(line: 303, column: 10, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 303, column: 3)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 302, column: 16)
!646 = distinct !DILexicalBlock(scope: !641, file: !3, line: 302, column: 2)
!647 = !DILocation(line: 303, column: 8, scope: !644)
!648 = !DILocation(line: 303, column: 15, scope: !649)
!649 = distinct !DILexicalBlock(scope: !644, file: !3, line: 303, column: 3)
!650 = !DILocation(line: 303, column: 17, scope: !649)
!651 = !DILocation(line: 303, column: 3, scope: !644)
!652 = !DILocation(line: 304, column: 11, scope: !653)
!653 = distinct !DILexicalBlock(scope: !649, file: !3, line: 304, column: 4)
!654 = !DILocation(line: 304, column: 9, scope: !653)
!655 = !DILocation(line: 304, column: 16, scope: !656)
!656 = distinct !DILexicalBlock(scope: !653, file: !3, line: 304, column: 4)
!657 = !DILocation(line: 304, column: 20, scope: !656)
!658 = !DILocation(line: 304, column: 18, scope: !656)
!659 = !DILocation(line: 304, column: 4, scope: !653)
!660 = !DILocation(line: 305, column: 16, scope: !656)
!661 = !DILocation(line: 305, column: 19, scope: !656)
!662 = !DILocation(line: 305, column: 21, scope: !656)
!663 = !DILocation(line: 305, column: 25, scope: !656)
!664 = !DILocation(line: 305, column: 27, scope: !656)
!665 = !DILocation(line: 305, column: 31, scope: !656)
!666 = !DILocation(line: 305, column: 29, scope: !656)
!667 = !DILocation(line: 306, column: 9, scope: !656)
!668 = !DILocation(line: 306, column: 12, scope: !656)
!669 = !DILocation(line: 306, column: 14, scope: !656)
!670 = !DILocation(line: 306, column: 18, scope: !656)
!671 = !DILocation(line: 306, column: 20, scope: !656)
!672 = !DILocation(line: 306, column: 25, scope: !656)
!673 = !DILocation(line: 306, column: 28, scope: !656)
!674 = !DILocation(line: 306, column: 30, scope: !656)
!675 = !DILocation(line: 306, column: 34, scope: !656)
!676 = !DILocation(line: 306, column: 36, scope: !656)
!677 = !DILocation(line: 305, column: 5, scope: !656)
!678 = !DILocation(line: 304, column: 23, scope: !656)
!679 = !DILocation(line: 304, column: 4, scope: !656)
!680 = distinct !{!680, !659, !681, !196, !197}
!681 = !DILocation(line: 306, column: 38, scope: !653)
!682 = !DILocation(line: 303, column: 29, scope: !649)
!683 = !DILocation(line: 303, column: 26, scope: !649)
!684 = !DILocation(line: 303, column: 3, scope: !649)
!685 = distinct !{!685, !651, !686, !196, !197}
!686 = !DILocation(line: 306, column: 38, scope: !644)
!687 = !DILocation(line: 308, column: 7, scope: !688)
!688 = distinct !DILexicalBlock(scope: !645, file: !3, line: 308, column: 7)
!689 = !DILocation(line: 308, column: 11, scope: !688)
!690 = !DILocation(line: 308, column: 7, scope: !645)
!691 = !DILocation(line: 309, column: 4, scope: !688)
!692 = !DILocation(line: 311, column: 10, scope: !693)
!693 = distinct !DILexicalBlock(scope: !645, file: !3, line: 311, column: 3)
!694 = !DILocation(line: 311, column: 8, scope: !693)
!695 = !DILocation(line: 311, column: 17, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !3, line: 311, column: 3)
!697 = !DILocation(line: 311, column: 19, scope: !696)
!698 = !DILocation(line: 311, column: 3, scope: !693)
!699 = !DILocation(line: 312, column: 4, scope: !700)
!700 = distinct !DILexicalBlock(scope: !696, file: !3, line: 311, column: 33)
!701 = !DILocation(line: 312, column: 7, scope: !700)
!702 = !DILocation(line: 312, column: 9, scope: !700)
!703 = !DILocation(line: 312, column: 13, scope: !700)
!704 = !DILocation(line: 312, column: 15, scope: !700)
!705 = !DILocation(line: 312, column: 20, scope: !700)
!706 = !DILocation(line: 312, column: 23, scope: !700)
!707 = !DILocation(line: 312, column: 25, scope: !700)
!708 = !DILocation(line: 312, column: 27, scope: !700)
!709 = !DILocation(line: 312, column: 33, scope: !700)
!710 = !DILocation(line: 312, column: 35, scope: !700)
!711 = !DILocation(line: 313, column: 21, scope: !700)
!712 = !DILocation(line: 313, column: 24, scope: !700)
!713 = !DILocation(line: 313, column: 26, scope: !700)
!714 = !DILocation(line: 313, column: 30, scope: !700)
!715 = !DILocation(line: 313, column: 32, scope: !700)
!716 = !DILocation(line: 313, column: 4, scope: !700)
!717 = !DILocation(line: 314, column: 3, scope: !700)
!718 = !DILocation(line: 311, column: 26, scope: !696)
!719 = !DILocation(line: 311, column: 3, scope: !696)
!720 = distinct !{!720, !698, !721, !196, !197}
!721 = !DILocation(line: 314, column: 3, scope: !693)
!722 = !DILocation(line: 302, column: 2, scope: !646)
!723 = distinct !{!723, !724, !725, !197}
!724 = !DILocation(line: 302, column: 2, scope: !641)
!725 = !DILocation(line: 315, column: 2, scope: !641)
!726 = !DILocation(line: 317, column: 1, scope: !550)
!727 = !DILocation(line: 318, column: 9, scope: !550)
!728 = !DILocation(line: 319, column: 1, scope: !550)
!729 = !DILocation(line: 318, column: 2, scope: !550)
!730 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !731, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !737)
!731 = !DISubroutineType(types: !732)
!732 = !{!27, !733, !42}
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 61, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !735, line: 72, baseType: !736)
!735 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !735, line: 16, baseType: !36)
!737 = !{!738, !739}
!738 = !DILocalVariable(name: "size", arg: 1, scope: !730, file: !12, line: 719, type: !733)
!739 = !DILocalVariable(name: "flags", arg: 2, scope: !730, file: !12, line: 719, type: !42)
!740 = !DILocation(line: 719, column: 52, scope: !730)
!741 = !DILocation(line: 719, column: 64, scope: !730)
!742 = !DILocation(line: 721, column: 17, scope: !730)
!743 = !DILocation(line: 721, column: 23, scope: !730)
!744 = !DILocation(line: 721, column: 29, scope: !730)
!745 = !DILocation(line: 721, column: 9, scope: !730)
!746 = !DILocation(line: 721, column: 2, scope: !730)
!747 = distinct !DISubprogram(name: "gf128mul_free_64k", scope: !3, file: !3, line: 322, type: !748, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !553}
!750 = !{!751, !752}
!751 = !DILocalVariable(name: "t", arg: 1, scope: !747, file: !3, line: 322, type: !553)
!752 = !DILocalVariable(name: "i", scope: !747, file: !3, line: 324, type: !160)
!753 = !DILocation(line: 322, column: 45, scope: !747)
!754 = !DILocation(line: 324, column: 2, scope: !747)
!755 = !DILocation(line: 324, column: 6, scope: !747)
!756 = !DILocation(line: 326, column: 9, scope: !757)
!757 = distinct !DILexicalBlock(scope: !747, file: !3, line: 326, column: 2)
!758 = !DILocation(line: 326, column: 7, scope: !757)
!759 = !DILocation(line: 326, column: 14, scope: !760)
!760 = distinct !DILexicalBlock(scope: !757, file: !3, line: 326, column: 2)
!761 = !DILocation(line: 326, column: 16, scope: !760)
!762 = !DILocation(line: 326, column: 2, scope: !757)
!763 = !DILocation(line: 327, column: 19, scope: !760)
!764 = !DILocation(line: 327, column: 22, scope: !760)
!765 = !DILocation(line: 327, column: 24, scope: !760)
!766 = !DILocation(line: 327, column: 3, scope: !760)
!767 = !DILocation(line: 326, column: 23, scope: !760)
!768 = !DILocation(line: 326, column: 2, scope: !760)
!769 = distinct !{!769, !762, !770, !196, !197}
!770 = !DILocation(line: 327, column: 26, scope: !757)
!771 = !DILocation(line: 328, column: 18, scope: !747)
!772 = !DILocation(line: 328, column: 2, scope: !747)
!773 = !DILocation(line: 329, column: 1, scope: !747)
!774 = !DISubprogram(name: "kfree_sensitive", scope: !12, file: !12, line: 228, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !777}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!779 = distinct !DISubprogram(name: "gf128mul_64k_bbe", scope: !3, file: !3, line: 332, type: !780, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !784)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !28, !782}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!784 = !{!785, !786, !787, !788, !792}
!785 = !DILocalVariable(name: "a", arg: 1, scope: !779, file: !3, line: 332, type: !28)
!786 = !DILocalVariable(name: "t", arg: 2, scope: !779, file: !3, line: 332, type: !782)
!787 = !DILocalVariable(name: "ap", scope: !779, file: !3, line: 334, type: !37)
!788 = !DILocalVariable(name: "r", scope: !779, file: !3, line: 335, type: !789)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 1)
!792 = !DILocalVariable(name: "i", scope: !779, file: !3, line: 336, type: !160)
!793 = !DILocation(line: 332, column: 30, scope: !779)
!794 = !DILocation(line: 332, column: 60, scope: !779)
!795 = !DILocation(line: 334, column: 2, scope: !779)
!796 = !DILocation(line: 334, column: 6, scope: !779)
!797 = !DILocation(line: 334, column: 17, scope: !779)
!798 = !DILocation(line: 335, column: 2, scope: !779)
!799 = !DILocation(line: 335, column: 8, scope: !779)
!800 = !DILocation(line: 336, column: 2, scope: !779)
!801 = !DILocation(line: 336, column: 6, scope: !779)
!802 = !DILocation(line: 338, column: 2, scope: !779)
!803 = !DILocation(line: 338, column: 7, scope: !779)
!804 = !DILocation(line: 338, column: 10, scope: !779)
!805 = !DILocation(line: 338, column: 16, scope: !779)
!806 = !DILocation(line: 338, column: 18, scope: !779)
!807 = !DILocation(line: 339, column: 9, scope: !808)
!808 = distinct !DILexicalBlock(scope: !779, file: !3, line: 339, column: 2)
!809 = !DILocation(line: 339, column: 7, scope: !808)
!810 = !DILocation(line: 339, column: 14, scope: !811)
!811 = distinct !DILexicalBlock(scope: !808, file: !3, line: 339, column: 2)
!812 = !DILocation(line: 339, column: 16, scope: !811)
!813 = !DILocation(line: 339, column: 2, scope: !808)
!814 = !DILocation(line: 340, column: 13, scope: !811)
!815 = !DILocation(line: 340, column: 16, scope: !811)
!816 = !DILocation(line: 340, column: 20, scope: !811)
!817 = !DILocation(line: 340, column: 23, scope: !811)
!818 = !DILocation(line: 340, column: 25, scope: !811)
!819 = !DILocation(line: 340, column: 29, scope: !811)
!820 = !DILocation(line: 340, column: 31, scope: !811)
!821 = !DILocation(line: 340, column: 39, scope: !811)
!822 = !DILocation(line: 340, column: 37, scope: !811)
!823 = !DILocation(line: 340, column: 3, scope: !811)
!824 = !DILocation(line: 339, column: 22, scope: !811)
!825 = !DILocation(line: 339, column: 2, scope: !811)
!826 = distinct !{!826, !813, !827, !196, !197}
!827 = !DILocation(line: 340, column: 42, scope: !808)
!828 = !DILocation(line: 341, column: 3, scope: !779)
!829 = !DILocation(line: 341, column: 7, scope: !779)
!830 = !DILocation(line: 342, column: 1, scope: !779)
!831 = distinct !DISubprogram(name: "gf128mul_init_4k_lle", scope: !3, file: !3, line: 361, type: !832, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !834)
!832 = !DISubroutineType(types: !833)
!833 = !{!558, !149}
!834 = !{!835, !836, !837, !838, !839}
!835 = !DILocalVariable(name: "g", arg: 1, scope: !831, file: !3, line: 361, type: !149)
!836 = !DILocalVariable(name: "t", scope: !831, file: !3, line: 363, type: !558)
!837 = !DILocalVariable(name: "j", scope: !831, file: !3, line: 364, type: !160)
!838 = !DILocalVariable(name: "k", scope: !831, file: !3, line: 364, type: !160)
!839 = !DILabel(scope: !831, name: "out", file: !3, line: 378)
!840 = !DILocation(line: 361, column: 55, scope: !831)
!841 = !DILocation(line: 363, column: 2, scope: !831)
!842 = !DILocation(line: 363, column: 22, scope: !831)
!843 = !DILocation(line: 364, column: 2, scope: !831)
!844 = !DILocation(line: 364, column: 6, scope: !831)
!845 = !DILocation(line: 364, column: 9, scope: !831)
!846 = !DILocation(line: 366, column: 6, scope: !831)
!847 = !DILocation(line: 366, column: 4, scope: !831)
!848 = !DILocation(line: 367, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !831, file: !3, line: 367, column: 6)
!850 = !DILocation(line: 367, column: 6, scope: !831)
!851 = !DILocation(line: 368, column: 3, scope: !849)
!852 = !DILocation(line: 370, column: 2, scope: !831)
!853 = !DILocation(line: 370, column: 5, scope: !831)
!854 = !DILocation(line: 370, column: 15, scope: !831)
!855 = !DILocation(line: 370, column: 14, scope: !831)
!856 = !DILocation(line: 371, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !831, file: !3, line: 371, column: 2)
!858 = !DILocation(line: 371, column: 7, scope: !857)
!859 = !DILocation(line: 371, column: 15, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !3, line: 371, column: 2)
!861 = !DILocation(line: 371, column: 17, scope: !860)
!862 = !DILocation(line: 371, column: 2, scope: !857)
!863 = !DILocation(line: 372, column: 19, scope: !860)
!864 = !DILocation(line: 372, column: 22, scope: !860)
!865 = !DILocation(line: 372, column: 24, scope: !860)
!866 = !DILocation(line: 372, column: 29, scope: !860)
!867 = !DILocation(line: 372, column: 32, scope: !860)
!868 = !DILocation(line: 372, column: 34, scope: !860)
!869 = !DILocation(line: 372, column: 36, scope: !860)
!870 = !DILocation(line: 372, column: 35, scope: !860)
!871 = !DILocation(line: 372, column: 3, scope: !860)
!872 = !DILocation(line: 371, column: 24, scope: !860)
!873 = !DILocation(line: 371, column: 2, scope: !860)
!874 = distinct !{!874, !862, !875, !196, !197}
!875 = !DILocation(line: 372, column: 38, scope: !857)
!876 = !DILocation(line: 374, column: 9, scope: !877)
!877 = distinct !DILexicalBlock(scope: !831, file: !3, line: 374, column: 2)
!878 = !DILocation(line: 374, column: 7, scope: !877)
!879 = !DILocation(line: 374, column: 14, scope: !880)
!880 = distinct !DILexicalBlock(scope: !877, file: !3, line: 374, column: 2)
!881 = !DILocation(line: 374, column: 16, scope: !880)
!882 = !DILocation(line: 374, column: 2, scope: !877)
!883 = !DILocation(line: 375, column: 10, scope: !884)
!884 = distinct !DILexicalBlock(scope: !880, file: !3, line: 375, column: 3)
!885 = !DILocation(line: 375, column: 8, scope: !884)
!886 = !DILocation(line: 375, column: 15, scope: !887)
!887 = distinct !DILexicalBlock(scope: !884, file: !3, line: 375, column: 3)
!888 = !DILocation(line: 375, column: 19, scope: !887)
!889 = !DILocation(line: 375, column: 17, scope: !887)
!890 = !DILocation(line: 375, column: 3, scope: !884)
!891 = !DILocation(line: 376, column: 15, scope: !887)
!892 = !DILocation(line: 376, column: 18, scope: !887)
!893 = !DILocation(line: 376, column: 20, scope: !887)
!894 = !DILocation(line: 376, column: 24, scope: !887)
!895 = !DILocation(line: 376, column: 22, scope: !887)
!896 = !DILocation(line: 376, column: 29, scope: !887)
!897 = !DILocation(line: 376, column: 32, scope: !887)
!898 = !DILocation(line: 376, column: 34, scope: !887)
!899 = !DILocation(line: 376, column: 39, scope: !887)
!900 = !DILocation(line: 376, column: 42, scope: !887)
!901 = !DILocation(line: 376, column: 44, scope: !887)
!902 = !DILocation(line: 376, column: 4, scope: !887)
!903 = !DILocation(line: 375, column: 22, scope: !887)
!904 = !DILocation(line: 375, column: 3, scope: !887)
!905 = distinct !{!905, !890, !906, !196, !197}
!906 = !DILocation(line: 376, column: 46, scope: !884)
!907 = !DILocation(line: 374, column: 28, scope: !880)
!908 = !DILocation(line: 374, column: 25, scope: !880)
!909 = !DILocation(line: 374, column: 2, scope: !880)
!910 = distinct !{!910, !882, !911, !196, !197}
!911 = !DILocation(line: 376, column: 46, scope: !877)
!912 = !DILocation(line: 378, column: 1, scope: !831)
!913 = !DILocation(line: 379, column: 9, scope: !831)
!914 = !DILocation(line: 380, column: 1, scope: !831)
!915 = !DILocation(line: 379, column: 2, scope: !831)
!916 = distinct !DISubprogram(name: "gf128mul_init_4k_bbe", scope: !3, file: !3, line: 383, type: !832, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !917)
!917 = !{!918, !919, !920, !921, !922}
!918 = !DILocalVariable(name: "g", arg: 1, scope: !916, file: !3, line: 383, type: !149)
!919 = !DILocalVariable(name: "t", scope: !916, file: !3, line: 385, type: !558)
!920 = !DILocalVariable(name: "j", scope: !916, file: !3, line: 386, type: !160)
!921 = !DILocalVariable(name: "k", scope: !916, file: !3, line: 386, type: !160)
!922 = !DILabel(scope: !916, name: "out", file: !3, line: 400)
!923 = !DILocation(line: 383, column: 55, scope: !916)
!924 = !DILocation(line: 385, column: 2, scope: !916)
!925 = !DILocation(line: 385, column: 22, scope: !916)
!926 = !DILocation(line: 386, column: 2, scope: !916)
!927 = !DILocation(line: 386, column: 6, scope: !916)
!928 = !DILocation(line: 386, column: 9, scope: !916)
!929 = !DILocation(line: 388, column: 6, scope: !916)
!930 = !DILocation(line: 388, column: 4, scope: !916)
!931 = !DILocation(line: 389, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !916, file: !3, line: 389, column: 6)
!933 = !DILocation(line: 389, column: 6, scope: !916)
!934 = !DILocation(line: 390, column: 3, scope: !932)
!935 = !DILocation(line: 392, column: 2, scope: !916)
!936 = !DILocation(line: 392, column: 5, scope: !916)
!937 = !DILocation(line: 392, column: 13, scope: !916)
!938 = !DILocation(line: 392, column: 12, scope: !916)
!939 = !DILocation(line: 393, column: 9, scope: !940)
!940 = distinct !DILexicalBlock(scope: !916, file: !3, line: 393, column: 2)
!941 = !DILocation(line: 393, column: 7, scope: !940)
!942 = !DILocation(line: 393, column: 14, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !3, line: 393, column: 2)
!944 = !DILocation(line: 393, column: 16, scope: !943)
!945 = !DILocation(line: 393, column: 2, scope: !940)
!946 = !DILocation(line: 394, column: 19, scope: !943)
!947 = !DILocation(line: 394, column: 22, scope: !943)
!948 = !DILocation(line: 394, column: 24, scope: !943)
!949 = !DILocation(line: 394, column: 28, scope: !943)
!950 = !DILocation(line: 394, column: 26, scope: !943)
!951 = !DILocation(line: 394, column: 33, scope: !943)
!952 = !DILocation(line: 394, column: 36, scope: !943)
!953 = !DILocation(line: 394, column: 38, scope: !943)
!954 = !DILocation(line: 394, column: 3, scope: !943)
!955 = !DILocation(line: 393, column: 25, scope: !943)
!956 = !DILocation(line: 393, column: 2, scope: !943)
!957 = distinct !{!957, !945, !958, !196, !197}
!958 = !DILocation(line: 394, column: 40, scope: !940)
!959 = !DILocation(line: 396, column: 9, scope: !960)
!960 = distinct !DILexicalBlock(scope: !916, file: !3, line: 396, column: 2)
!961 = !DILocation(line: 396, column: 7, scope: !960)
!962 = !DILocation(line: 396, column: 14, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !3, line: 396, column: 2)
!964 = !DILocation(line: 396, column: 16, scope: !963)
!965 = !DILocation(line: 396, column: 2, scope: !960)
!966 = !DILocation(line: 397, column: 10, scope: !967)
!967 = distinct !DILexicalBlock(scope: !963, file: !3, line: 397, column: 3)
!968 = !DILocation(line: 397, column: 8, scope: !967)
!969 = !DILocation(line: 397, column: 15, scope: !970)
!970 = distinct !DILexicalBlock(scope: !967, file: !3, line: 397, column: 3)
!971 = !DILocation(line: 397, column: 19, scope: !970)
!972 = !DILocation(line: 397, column: 17, scope: !970)
!973 = !DILocation(line: 397, column: 3, scope: !967)
!974 = !DILocation(line: 398, column: 15, scope: !970)
!975 = !DILocation(line: 398, column: 18, scope: !970)
!976 = !DILocation(line: 398, column: 20, scope: !970)
!977 = !DILocation(line: 398, column: 24, scope: !970)
!978 = !DILocation(line: 398, column: 22, scope: !970)
!979 = !DILocation(line: 398, column: 29, scope: !970)
!980 = !DILocation(line: 398, column: 32, scope: !970)
!981 = !DILocation(line: 398, column: 34, scope: !970)
!982 = !DILocation(line: 398, column: 39, scope: !970)
!983 = !DILocation(line: 398, column: 42, scope: !970)
!984 = !DILocation(line: 398, column: 44, scope: !970)
!985 = !DILocation(line: 398, column: 4, scope: !970)
!986 = !DILocation(line: 397, column: 22, scope: !970)
!987 = !DILocation(line: 397, column: 3, scope: !970)
!988 = distinct !{!988, !973, !989, !196, !197}
!989 = !DILocation(line: 398, column: 46, scope: !967)
!990 = !DILocation(line: 396, column: 28, scope: !963)
!991 = !DILocation(line: 396, column: 25, scope: !963)
!992 = !DILocation(line: 396, column: 2, scope: !963)
!993 = distinct !{!993, !965, !994, !196, !197}
!994 = !DILocation(line: 398, column: 46, scope: !960)
!995 = !DILocation(line: 400, column: 1, scope: !916)
!996 = !DILocation(line: 401, column: 9, scope: !916)
!997 = !DILocation(line: 402, column: 1, scope: !916)
!998 = !DILocation(line: 401, column: 2, scope: !916)
!999 = distinct !DISubprogram(name: "gf128mul_4k_lle", scope: !3, file: !3, line: 405, type: !1000, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1004)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !28, !1002}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!1004 = !{!1005, !1006, !1007, !1008, !1009}
!1005 = !DILocalVariable(name: "a", arg: 1, scope: !999, file: !3, line: 405, type: !28)
!1006 = !DILocalVariable(name: "t", arg: 2, scope: !999, file: !3, line: 405, type: !1002)
!1007 = !DILocalVariable(name: "ap", scope: !999, file: !3, line: 407, type: !37)
!1008 = !DILocalVariable(name: "r", scope: !999, file: !3, line: 408, type: !789)
!1009 = !DILocalVariable(name: "i", scope: !999, file: !3, line: 409, type: !160)
!1010 = !DILocation(line: 405, column: 29, scope: !999)
!1011 = !DILocation(line: 405, column: 58, scope: !999)
!1012 = !DILocation(line: 407, column: 2, scope: !999)
!1013 = !DILocation(line: 407, column: 6, scope: !999)
!1014 = !DILocation(line: 407, column: 17, scope: !999)
!1015 = !DILocation(line: 408, column: 2, scope: !999)
!1016 = !DILocation(line: 408, column: 8, scope: !999)
!1017 = !DILocation(line: 409, column: 2, scope: !999)
!1018 = !DILocation(line: 409, column: 6, scope: !999)
!1019 = !DILocation(line: 411, column: 2, scope: !999)
!1020 = !DILocation(line: 411, column: 7, scope: !999)
!1021 = !DILocation(line: 411, column: 10, scope: !999)
!1022 = !DILocation(line: 411, column: 12, scope: !999)
!1023 = !DILocation(line: 412, column: 2, scope: !999)
!1024 = !DILocation(line: 412, column: 10, scope: !999)
!1025 = !DILocation(line: 413, column: 19, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !999, file: !3, line: 412, column: 14)
!1027 = !DILocation(line: 413, column: 3, scope: !1026)
!1028 = !DILocation(line: 414, column: 13, scope: !1026)
!1029 = !DILocation(line: 414, column: 16, scope: !1026)
!1030 = !DILocation(line: 414, column: 20, scope: !1026)
!1031 = !DILocation(line: 414, column: 23, scope: !1026)
!1032 = !DILocation(line: 414, column: 25, scope: !1026)
!1033 = !DILocation(line: 414, column: 28, scope: !1026)
!1034 = !DILocation(line: 414, column: 3, scope: !1026)
!1035 = distinct !{!1035, !1023, !1036, !196, !197}
!1036 = !DILocation(line: 415, column: 2, scope: !999)
!1037 = !DILocation(line: 416, column: 3, scope: !999)
!1038 = !DILocation(line: 416, column: 7, scope: !999)
!1039 = !DILocation(line: 417, column: 1, scope: !999)
!1040 = distinct !DISubprogram(name: "gf128mul_x8_lle", scope: !3, file: !3, line: 139, type: !343, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1041)
!1041 = !{!1042, !1043, !1044, !1045}
!1042 = !DILocalVariable(name: "x", arg: 1, scope: !1040, file: !3, line: 139, type: !28)
!1043 = !DILocalVariable(name: "a", scope: !1040, file: !3, line: 141, type: !44)
!1044 = !DILocalVariable(name: "b", scope: !1040, file: !3, line: 142, type: !44)
!1045 = !DILocalVariable(name: "_tt", scope: !1040, file: !3, line: 143, type: !44)
!1046 = !DILocation(line: 139, column: 36, scope: !1040)
!1047 = !DILocation(line: 141, column: 2, scope: !1040)
!1048 = !DILocation(line: 141, column: 6, scope: !1040)
!1049 = !DILocation(line: 141, column: 10, scope: !1040)
!1050 = !DILocation(line: 142, column: 2, scope: !1040)
!1051 = !DILocation(line: 142, column: 6, scope: !1040)
!1052 = !DILocation(line: 142, column: 10, scope: !1040)
!1053 = !DILocation(line: 143, column: 2, scope: !1040)
!1054 = !DILocation(line: 143, column: 6, scope: !1040)
!1055 = !DILocation(line: 143, column: 30, scope: !1040)
!1056 = !DILocation(line: 143, column: 32, scope: !1040)
!1057 = !DILocation(line: 143, column: 12, scope: !1040)
!1058 = !DILocation(line: 145, column: 9, scope: !1040)
!1059 = !DILocation(line: 145, column: 2, scope: !1040)
!1060 = !DILocation(line: 145, column: 5, scope: !1040)
!1061 = !DILocation(line: 145, column: 7, scope: !1040)
!1062 = !DILocation(line: 146, column: 9, scope: !1040)
!1063 = !DILocation(line: 146, column: 2, scope: !1040)
!1064 = !DILocation(line: 146, column: 5, scope: !1040)
!1065 = !DILocation(line: 146, column: 7, scope: !1040)
!1066 = !DILocation(line: 147, column: 1, scope: !1040)
!1067 = distinct !DISubprogram(name: "gf128mul_4k_bbe", scope: !3, file: !3, line: 420, type: !1000, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073}
!1069 = !DILocalVariable(name: "a", arg: 1, scope: !1067, file: !3, line: 420, type: !28)
!1070 = !DILocalVariable(name: "t", arg: 2, scope: !1067, file: !3, line: 420, type: !1002)
!1071 = !DILocalVariable(name: "ap", scope: !1067, file: !3, line: 422, type: !37)
!1072 = !DILocalVariable(name: "r", scope: !1067, file: !3, line: 423, type: !789)
!1073 = !DILocalVariable(name: "i", scope: !1067, file: !3, line: 424, type: !160)
!1074 = !DILocation(line: 420, column: 29, scope: !1067)
!1075 = !DILocation(line: 420, column: 58, scope: !1067)
!1076 = !DILocation(line: 422, column: 2, scope: !1067)
!1077 = !DILocation(line: 422, column: 6, scope: !1067)
!1078 = !DILocation(line: 422, column: 17, scope: !1067)
!1079 = !DILocation(line: 423, column: 2, scope: !1067)
!1080 = !DILocation(line: 423, column: 8, scope: !1067)
!1081 = !DILocation(line: 424, column: 2, scope: !1067)
!1082 = !DILocation(line: 424, column: 6, scope: !1067)
!1083 = !DILocation(line: 426, column: 2, scope: !1067)
!1084 = !DILocation(line: 426, column: 7, scope: !1067)
!1085 = !DILocation(line: 426, column: 10, scope: !1067)
!1086 = !DILocation(line: 426, column: 12, scope: !1067)
!1087 = !DILocation(line: 427, column: 2, scope: !1067)
!1088 = !DILocation(line: 427, column: 9, scope: !1067)
!1089 = !DILocation(line: 427, column: 13, scope: !1067)
!1090 = !DILocation(line: 428, column: 19, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 427, column: 19)
!1092 = !DILocation(line: 428, column: 3, scope: !1091)
!1093 = !DILocation(line: 429, column: 13, scope: !1091)
!1094 = !DILocation(line: 429, column: 16, scope: !1091)
!1095 = !DILocation(line: 429, column: 20, scope: !1091)
!1096 = !DILocation(line: 429, column: 23, scope: !1091)
!1097 = !DILocation(line: 429, column: 25, scope: !1091)
!1098 = !DILocation(line: 429, column: 28, scope: !1091)
!1099 = !DILocation(line: 429, column: 3, scope: !1091)
!1100 = distinct !{!1100, !1087, !1101, !196, !197}
!1101 = !DILocation(line: 430, column: 2, scope: !1067)
!1102 = !DILocation(line: 431, column: 3, scope: !1067)
!1103 = !DILocation(line: 431, column: 7, scope: !1067)
!1104 = !DILocation(line: 432, column: 1, scope: !1067)
!1105 = distinct !DISubprogram(name: "gf128mul_mask_from_bit", scope: !286, file: !286, line: 176, type: !1106, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1108)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!44, !44, !160}
!1108 = !{!1109, !1110}
!1109 = !DILocalVariable(name: "x", arg: 1, scope: !1105, file: !286, line: 176, type: !44)
!1110 = !DILocalVariable(name: "which", arg: 2, scope: !1105, file: !286, line: 176, type: !160)
!1111 = !DILocation(line: 176, column: 46, scope: !1105)
!1112 = !DILocation(line: 176, column: 53, scope: !1105)
!1113 = !DILocation(line: 179, column: 16, scope: !1105)
!1114 = !DILocation(line: 179, column: 27, scope: !1105)
!1115 = !DILocation(line: 179, column: 25, scope: !1105)
!1116 = !DILocation(line: 179, column: 18, scope: !1105)
!1117 = !DILocation(line: 179, column: 35, scope: !1105)
!1118 = !DILocation(line: 179, column: 2, scope: !1105)
!1119 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !731, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1120)
!1120 = !{!1121, !1122, !1123}
!1121 = !DILocalVariable(name: "size", arg: 1, scope: !1119, file: !12, line: 591, type: !733)
!1122 = !DILocalVariable(name: "flags", arg: 2, scope: !1119, file: !12, line: 591, type: !42)
!1123 = !DILocalVariable(name: "index", scope: !1124, file: !12, line: 594, type: !7)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !12, line: 593, column: 42)
!1125 = distinct !DILexicalBlock(scope: !1119, file: !12, line: 593, column: 6)
!1126 = !DILocation(line: 591, column: 61, scope: !1119)
!1127 = !DILocation(line: 591, column: 73, scope: !1119)
!1128 = !DILocation(line: 593, column: 27, scope: !1125)
!1129 = !DILocation(line: 593, column: 6, scope: !1125)
!1130 = !DILocation(line: 593, column: 33, scope: !1125)
!1131 = !DILocation(line: 593, column: 36, scope: !1125)
!1132 = !DILocation(line: 593, column: 6, scope: !1119)
!1133 = !DILocation(line: 594, column: 3, scope: !1124)
!1134 = !DILocation(line: 594, column: 16, scope: !1124)
!1135 = !DILocation(line: 596, column: 7, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1124, file: !12, line: 596, column: 7)
!1137 = !DILocation(line: 596, column: 12, scope: !1136)
!1138 = !DILocation(line: 596, column: 7, scope: !1124)
!1139 = !DILocation(line: 597, column: 25, scope: !1136)
!1140 = !DILocation(line: 597, column: 31, scope: !1136)
!1141 = !DILocation(line: 597, column: 11, scope: !1136)
!1142 = !DILocation(line: 597, column: 4, scope: !1136)
!1143 = !DILocation(line: 599, column: 11, scope: !1124)
!1144 = !DILocation(line: 599, column: 9, scope: !1124)
!1145 = !DILocation(line: 601, column: 33, scope: !1124)
!1146 = !DILocation(line: 601, column: 40, scope: !1124)
!1147 = !DILocation(line: 601, column: 20, scope: !1124)
!1148 = !DILocation(line: 601, column: 5, scope: !1124)
!1149 = !DILocation(line: 601, column: 51, scope: !1124)
!1150 = !DILocation(line: 602, column: 5, scope: !1124)
!1151 = !DILocation(line: 602, column: 12, scope: !1124)
!1152 = !DILocation(line: 600, column: 10, scope: !1124)
!1153 = !DILocation(line: 600, column: 3, scope: !1124)
!1154 = !DILocation(line: 603, column: 2, scope: !1125)
!1155 = !DILocation(line: 604, column: 19, scope: !1119)
!1156 = !DILocation(line: 604, column: 25, scope: !1119)
!1157 = !DILocation(line: 604, column: 9, scope: !1119)
!1158 = !DILocation(line: 604, column: 2, scope: !1119)
!1159 = !DILocation(line: 605, column: 1, scope: !1119)
!1160 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1161 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1162, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1166)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!7, !733, !1164}
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !43, line: 35, baseType: !1165)
!1165 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1166 = !{!1167, !1168}
!1167 = !DILocalVariable(name: "size", arg: 1, scope: !1161, file: !12, line: 444, type: !733)
!1168 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1161, file: !12, line: 445, type: !1164)
!1169 = !DILocation(line: 444, column: 60, scope: !1161)
!1170 = !DILocation(line: 445, column: 16, scope: !1161)
!1171 = !DILocation(line: 447, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 447, column: 6)
!1173 = !DILocation(line: 447, column: 6, scope: !1161)
!1174 = !DILocation(line: 448, column: 3, scope: !1172)
!1175 = !DILocation(line: 450, column: 6, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 450, column: 6)
!1177 = !DILocation(line: 450, column: 11, scope: !1176)
!1178 = !DILocation(line: 450, column: 6, scope: !1161)
!1179 = !DILocation(line: 451, column: 3, scope: !1176)
!1180 = !DILocation(line: 453, column: 32, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 453, column: 6)
!1182 = !DILocation(line: 453, column: 37, scope: !1181)
!1183 = !DILocation(line: 453, column: 42, scope: !1181)
!1184 = !DILocation(line: 453, column: 45, scope: !1181)
!1185 = !DILocation(line: 453, column: 50, scope: !1181)
!1186 = !DILocation(line: 453, column: 6, scope: !1161)
!1187 = !DILocation(line: 454, column: 3, scope: !1181)
!1188 = !DILocation(line: 455, column: 32, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 455, column: 6)
!1190 = !DILocation(line: 455, column: 37, scope: !1189)
!1191 = !DILocation(line: 455, column: 43, scope: !1189)
!1192 = !DILocation(line: 455, column: 46, scope: !1189)
!1193 = !DILocation(line: 455, column: 51, scope: !1189)
!1194 = !DILocation(line: 455, column: 6, scope: !1161)
!1195 = !DILocation(line: 456, column: 3, scope: !1189)
!1196 = !DILocation(line: 457, column: 6, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 457, column: 6)
!1198 = !DILocation(line: 457, column: 11, scope: !1197)
!1199 = !DILocation(line: 457, column: 6, scope: !1161)
!1200 = !DILocation(line: 457, column: 26, scope: !1197)
!1201 = !DILocation(line: 458, column: 6, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 458, column: 6)
!1203 = !DILocation(line: 458, column: 11, scope: !1202)
!1204 = !DILocation(line: 458, column: 6, scope: !1161)
!1205 = !DILocation(line: 458, column: 26, scope: !1202)
!1206 = !DILocation(line: 459, column: 6, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 459, column: 6)
!1208 = !DILocation(line: 459, column: 11, scope: !1207)
!1209 = !DILocation(line: 459, column: 6, scope: !1161)
!1210 = !DILocation(line: 459, column: 26, scope: !1207)
!1211 = !DILocation(line: 460, column: 6, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 460, column: 6)
!1213 = !DILocation(line: 460, column: 11, scope: !1212)
!1214 = !DILocation(line: 460, column: 6, scope: !1161)
!1215 = !DILocation(line: 460, column: 26, scope: !1212)
!1216 = !DILocation(line: 461, column: 6, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 461, column: 6)
!1218 = !DILocation(line: 461, column: 11, scope: !1217)
!1219 = !DILocation(line: 461, column: 6, scope: !1161)
!1220 = !DILocation(line: 461, column: 26, scope: !1217)
!1221 = !DILocation(line: 462, column: 6, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 462, column: 6)
!1223 = !DILocation(line: 462, column: 11, scope: !1222)
!1224 = !DILocation(line: 462, column: 6, scope: !1161)
!1225 = !DILocation(line: 462, column: 26, scope: !1222)
!1226 = !DILocation(line: 463, column: 6, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 463, column: 6)
!1228 = !DILocation(line: 463, column: 11, scope: !1227)
!1229 = !DILocation(line: 463, column: 6, scope: !1161)
!1230 = !DILocation(line: 463, column: 26, scope: !1227)
!1231 = !DILocation(line: 464, column: 6, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 464, column: 6)
!1233 = !DILocation(line: 464, column: 11, scope: !1232)
!1234 = !DILocation(line: 464, column: 6, scope: !1161)
!1235 = !DILocation(line: 464, column: 26, scope: !1232)
!1236 = !DILocation(line: 465, column: 6, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 465, column: 6)
!1238 = !DILocation(line: 465, column: 11, scope: !1237)
!1239 = !DILocation(line: 465, column: 6, scope: !1161)
!1240 = !DILocation(line: 465, column: 26, scope: !1237)
!1241 = !DILocation(line: 466, column: 6, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 466, column: 6)
!1243 = !DILocation(line: 466, column: 11, scope: !1242)
!1244 = !DILocation(line: 466, column: 6, scope: !1161)
!1245 = !DILocation(line: 466, column: 26, scope: !1242)
!1246 = !DILocation(line: 467, column: 6, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 467, column: 6)
!1248 = !DILocation(line: 467, column: 11, scope: !1247)
!1249 = !DILocation(line: 467, column: 6, scope: !1161)
!1250 = !DILocation(line: 467, column: 26, scope: !1247)
!1251 = !DILocation(line: 468, column: 6, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 468, column: 6)
!1253 = !DILocation(line: 468, column: 11, scope: !1252)
!1254 = !DILocation(line: 468, column: 6, scope: !1161)
!1255 = !DILocation(line: 468, column: 26, scope: !1252)
!1256 = !DILocation(line: 469, column: 6, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 469, column: 6)
!1258 = !DILocation(line: 469, column: 11, scope: !1257)
!1259 = !DILocation(line: 469, column: 6, scope: !1161)
!1260 = !DILocation(line: 469, column: 26, scope: !1257)
!1261 = !DILocation(line: 470, column: 6, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 470, column: 6)
!1263 = !DILocation(line: 470, column: 11, scope: !1262)
!1264 = !DILocation(line: 470, column: 6, scope: !1161)
!1265 = !DILocation(line: 470, column: 26, scope: !1262)
!1266 = !DILocation(line: 471, column: 6, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 471, column: 6)
!1268 = !DILocation(line: 471, column: 11, scope: !1267)
!1269 = !DILocation(line: 471, column: 6, scope: !1161)
!1270 = !DILocation(line: 471, column: 26, scope: !1267)
!1271 = !DILocation(line: 472, column: 6, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 472, column: 6)
!1273 = !DILocation(line: 472, column: 11, scope: !1272)
!1274 = !DILocation(line: 472, column: 6, scope: !1161)
!1275 = !DILocation(line: 472, column: 26, scope: !1272)
!1276 = !DILocation(line: 473, column: 6, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 473, column: 6)
!1278 = !DILocation(line: 473, column: 11, scope: !1277)
!1279 = !DILocation(line: 473, column: 6, scope: !1161)
!1280 = !DILocation(line: 473, column: 26, scope: !1277)
!1281 = !DILocation(line: 474, column: 6, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 474, column: 6)
!1283 = !DILocation(line: 474, column: 11, scope: !1282)
!1284 = !DILocation(line: 474, column: 6, scope: !1161)
!1285 = !DILocation(line: 474, column: 27, scope: !1282)
!1286 = !DILocation(line: 475, column: 6, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 475, column: 6)
!1288 = !DILocation(line: 475, column: 11, scope: !1287)
!1289 = !DILocation(line: 475, column: 6, scope: !1161)
!1290 = !DILocation(line: 475, column: 32, scope: !1287)
!1291 = !DILocation(line: 477, column: 50, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1161, file: !12, line: 477, column: 6)
!1293 = !{i8 0, i8 2}
!1294 = !{}
!1295 = !DILocation(line: 477, column: 6, scope: !1161)
!1296 = !DILocation(line: 478, column: 3, scope: !1292)
!1297 = !DILocation(line: 478, column: 3, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !12, line: 478, column: 3)
!1299 = distinct !DILexicalBlock(scope: !1292, file: !12, line: 478, column: 3)
!1300 = !{i32 -2143536717}
!1301 = !DILocation(line: 478, column: 3, scope: !1299)
!1302 = !DILocation(line: 480, column: 3, scope: !1292)
!1303 = !DILocation(line: 480, column: 3, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1292, file: !12, line: 480, column: 3)
!1305 = !DILocation(line: 480, column: 3, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1304, file: !12, line: 480, column: 3)
!1307 = !DILocation(line: 480, column: 3, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !12, line: 480, column: 3)
!1309 = !{i64 2151430782, i64 2151430811, i64 2151430857, i64 2151430915, i64 2151430969, i64 2151431023, i64 2151431078, i64 2151431109}
!1310 = !DILocation(line: 483, column: 2, scope: !1161)
!1311 = !DILocation(line: 484, column: 1, scope: !1161)
!1312 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!27, !1315, !42, !733}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1317, line: 11, flags: DIFlagFwdDecl)
!1317 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1318 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1319, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1321)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!11, !42, !36}
!1321 = !{!1322, !1323}
!1322 = !DILocalVariable(name: "flags", arg: 1, scope: !1318, file: !12, line: 401, type: !42)
!1323 = !DILocalVariable(name: "caller", arg: 2, scope: !1318, file: !12, line: 401, type: !36)
!1324 = !DILocation(line: 401, column: 67, scope: !1318)
!1325 = !DILocation(line: 401, column: 88, scope: !1318)
!1326 = !DILocation(line: 407, column: 6, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1318, file: !12, line: 407, column: 6)
!1328 = !DILocation(line: 407, column: 6, scope: !1318)
!1329 = !DILocation(line: 413, column: 3, scope: !1327)
!1330 = !DILocation(line: 423, column: 38, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1318, file: !12, line: 423, column: 6)
!1332 = !DILocation(line: 423, column: 44, scope: !1331)
!1333 = !DILocation(line: 423, column: 6, scope: !1318)
!1334 = !DILocation(line: 424, column: 3, scope: !1331)
!1335 = !DILocation(line: 426, column: 3, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1318, file: !12, line: 425, column: 6)
!1337 = !DILocation(line: 429, column: 1, scope: !1318)
!1338 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1339 = !DISubprogram(name: "__compiletime_assert_117", scope: !12, file: !12, line: 478, type: !1340, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{null}
