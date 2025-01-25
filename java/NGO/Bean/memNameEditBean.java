package NGO.Bean;
import java.io.Serializable;
public class memNameEditBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private String name ,oldname;
	public void setNewName(String name) {
		this.name = name;
	}
	public String getNewName() {
		return this.name;
	}
	
	public void setOldName(String oldname) {
		this.oldname = oldname;
	}
	public String getOldName() {
		return this.oldname;
	}
}
