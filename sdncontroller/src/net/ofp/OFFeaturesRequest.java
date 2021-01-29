package net.ofp;

public class OFFeaturesRequest {
	private byte version;
	private byte type;
	private short longth;
	private int xid;
	
	public byte getVersion() {
		return version;
	}
	public void setVersion(byte version) {
		this.version = version;
	}
	public byte getType() {
		return type;
	}
	public void setType(byte type) {
		this.type = type;
	}
	public short getLongth() {
		return longth;
	}
	public void setLongth(short longth) {
		this.longth = longth;
	}
	public int getXid() {
		return xid;
	}
	public void setXid(int xid) {
		this.xid = xid;
	}
}
